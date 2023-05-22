# routines for use with MOLPRO 2012 files
# 5/28/2020 KKI start
# slowly update for MOLPRO 2021
#
import re, sys
import pandas as pd
import numpy as np
from collections import Counter
from sklearn.cluster import KMeans
#sys.path.insert(1, r'C:\Users\irikura\Documents\GitHub\bin3dev')
import chem_subs as chem
##
SPINMULT = {0: 'Singlet', 1: 'Triplet', 0.5: 'Doublet', 1.5: 'Quartet', 2: 'Quintet'}
MULTSPIN = {v: k for k, v in SPINMULT.items()}
LAMBDA = {0: 'Sigma', 1: 'Pi   ', 2: 'Delta', 3: 'Phi  ', 4: 'Gamma'}
LSYMB = ['S', 'P', 'D', 'F', 'G', 'H']
OMEGA = '\N{GREEK CAPITAL LETTER OMEGA}'
LAMDA = '\N{GREEK CAPITAL LETTER LAMDA}'
SIGMA = '\N{GREEK CAPITAL LETTER SIGMA}'
PI = '\N{GREEK CAPITAL LETTER PI}'
DELTA = '\N{GREEK CAPITAL LETTER DELTA}'
PHI = '\N{GREEK CAPITAL LETTER PHI}'
GAMMA = '\N{GREEK CAPITAL LETTER GAMMA}'
ETA = 'H'  # easier for typists
GLAMBDA = {0: SIGMA, 1: PI, 2: DELTA, 3: PHI, 4: GAMMA, 5: ETA}
##
##
class MULTI:
    # A list of lines of MCSCF output from "MULTI"
    # also some results of parsing those lines
    # 'PG' is name of computational point group (optional)
    # 'parity' is to use irrep to assign parity of Sigma states
    # 'atom' is a flag affecting L**2 treatment
    def __init__(self, linebuf, PG=None, parity=True, atom=False):
        self.lines = linebuf
        self.PG = PG
        self.nfrozen = self.nfrozen()
        self.norb = self.nactorb()
        self.groups = self.parseGroups()
        self.results = self.parseResults(atom=atom)
        self.termLabels(parity=parity)
        self.NOs = self.natorb_info()
        self.civec = self.parseMULTIcivec()
    def print(self):
        print('{:d} closed-shell orbitals'.format(self.nfrozen))
        print('{:d} active orbitals'.format(self.norb))
        print('Groups:')
        for g in self.groups:
            print(g)
    def printlines(self):
        # print the lines from MOLPRO output
        print('\n'.join(self.lines))
        return
    def nfrozen(self):
        # the number of frozen-core aka closed-shell orbitals
        # If it's zero, that is not stated in the MOLPRO output
        rx = re.compile(r' Number of closed-shell orbitals:\s+(\d+) ')
        for line in self.lines:
            m = rx.match(line)
            if m:
                return int(m.group(1))
        return 0
    def nactorb(self, irreps=False):
        # the number of active orbitals
        # if irreps==True, instead of an integer return the irrep list
        rx = re.compile(r' Number of active  orbitals:\s+(\d+) ')
        rx_irr = re.compile(r'\((\s+\d)+\s*\)')
        for line in self.lines:
            m = rx.match(line)
            if m:
                if irreps:
                    m = rx_irr.search(line)
                    words = m.group(0).split()
                    return [int(n) for n in words[1:-1]]
                else:
                    return int(m.group(1))
        return None
    def nactel(self):
        # return number of active electrons (first value found)
        rx = re.compile(r'\s*Number of active electrons:\s*(\d+)')
        for line in self.lines:
            m = rx.match(line)
            if m:
                return int(m.group(1))
    def parseGroups(self):
        # A "group" here is labeled "State symmetry" in the output,
        # because that name is too confusing without context.
        # Return a list of dicts with basic parameters
        glist = []
        rx_g = re.compile(r' State symmetry\s*(\d+)\s*$')
        rx_end = re.compile(r' orbitals read from record| Orbital guess generated')
        rx_nelec = re.compile(r' Number of (?:active )?electrons:\s+(\d+)\s+Spin symmetry=(\w+)\s+Space symmetry=(\d)')
        rx_nstates = re.compile(r' Number of states:\s+(\d+)')
        ingroup = False
        parms = {}
        for line in self.lines:
            if ingroup:
                if rx_end.search(line):
                    # all done
                    glist.append(parms.copy())
                    break
                m = rx_nelec.match(line)
                if m:
                    parms['nElec'] = int(m.group(1))
                    parms['spinLabel'] = m.group(2)
                    parms['irrep'] = int(m.group(3))
                m = rx_nstates.match(line)
                if m:
                    parms['nStates'] = int(m.group(1))
            m = rx_g.match(line)
            if m:
                ingroup = True
                gnum = int(m.group(1))  # the "State symmetry" number
                if gnum > 1:
                    # remember the previous group
                    glist.append(parms)
                # start new group
                parms = {'gNum': gnum}
        return glist
    def parseResults(self, atom=False):
        # Return a DataFrame with state information
        gnum = []
        size = []
        spin = []
        irrep = []
        for g in self.groups:
            gnum.extend([g['gNum']] * g['nStates'])
            spin.extend([g['spinLabel']] * g['nStates'])
            irrep.extend([g['irrep']] * g['nStates'])
            size.extend(['{:d}/{:d}'.format(g['nElec'], self.norb)] * g['nStates'])
        # get state labels and energies
        rx_e = re.compile(r' !MCSCF STATE\s*(\d+\.\d) (?:\S+ )?Energy\s+([-]?\d+\.\d+)')
        rx_dip = re.compile(r' !MCSCF STATE\s*(\d+\.\d) (?:\S+ )?Dipole moment\s+')
        lbl = []
        energy = []
        dipx = []
        dipy = []
        dipz = []
        # some or all of the angular momentum expectation values (below) may be absent
        rx_expec = re.compile(r' !MCSCF expec\s+<(\d+\.\d)(?: \S+)?\|(L...)?\|(\d+\.\d)(?: \S+)?>\s+([-]?\d+\.\d+)')
        lexpec = {'LXLX': [], 'LYLY': [], 'LZLZ': [], 'L**2': []}
        for line in self.lines:
            m = rx_e.match(line)
            if m:
                # state energy
                lbl.append(m.group(1))
                energy.append(float(m.group(2)))
            m = rx_dip.match(line)
            if m:
                # dipole moment in a.u.
                if m.group(1) != lbl[-1]:
                    # state label is different than it was for preceding energy!
                    print('*** Error: Dipole label is {:s} but should be {:s}'.format(m.group(1), lbl[-1]))
                    sys.exit(0)
                words = line.split()
                dipx.append(float(words[-3]))
                dipy.append(float(words[-2]))
                dipz.append(float(words[-1]))
            m = rx_expec.match(line)
            if m:
                if m.group(1) != m.group(3):
                    # ignore off-diagonal values
                    continue
                n = len(lexpec[m.group(2)])
                if lbl[n] != m.group(1):
                    print('*** Error: expected label {:s} for this line:'.format(lbl[n]))
                    print(line)
                    sys.exit(0)
                lexpec[m.group(2)].append(float(m.group(4)))
        try:
            df = pd.DataFrame({'Group': gnum, 'Size': size, 'Spin': spin, 'Irrep': irrep,
                          'Label': lbl, 'Energy': energy, 'dipX': dipx, 'dipY': dipy,
                          'dipZ': dipz})
        except ValueError:
            # probably a regx problem
            print('>>>list lengths:')
            print('>>>gnum', len(gnum))
            print('>>>size', len(size))
            print('>>>spin', len(spin))
            print('>>>irrep', len(irrep))
            print('>>>lbl', len(lbl))
            print('>>>energy', len(energy))
            print('>>>dipx', len(dipx))
            print('>>>dipy', len(dipy))
            print('>>>dipz', len(dipz))
            chem.print_err('','Parsing error')
        df['Dipole'] = np.sqrt(df.dipX ** 2 + df.dipY ** 2 + df.dipZ ** 2)
        if lexpec['LXLX']:
            df['LxLx'] = lexpec['LXLX']
        if lexpec['LYLY']:
            df['LyLy'] = lexpec['LYLY']
        if lexpec['LZLZ']:
            df['LzLz'] = lexpec['LZLZ']
        if lexpec['L**2']:
            df['L**2'] = lexpec['L**2']
        #if atom:
        #    # drop the cartesian components of L**2
        #    df.drop(columns=['LxLx', 'LyLy', 'LzLz'], inplace=True)
        return df
    def termLabels(self, greek=True, hyphen=False, quiet=False, parity=True):
        try:
            self.results = termLabels(self.results, greek=greek, hyphen=hyphen, 
                                      PG=self.PG, parity=parity)
        except:
            if not quiet:
                chem.print_err('', 'Unable to assign term symbol', halt=False)
        return
    def natorb_info(self):
        # return a DataFrame describing the natural orbitals
        rx_NO = re.compile('\s+NATURAL ORBITALS')
        rx_end = re.compile('Total charge:')
        rx_data = re.compile('\s+\d+\.\d\s+[-]?\d\.\d+')
        cols = ['Orb', 'Occ', 'Active', 'E', 'Compos', 'Terse']
        orb = []  # orbital label, e.g. '3.1'
        occ = []  # occupation 
        e = []    # energy
        comp = []  # composition as list of tuples: (center, type#, type, coeff)
        terse = [] # concise description
        irrep = []  # irrep number
        inNO = False
        for line in self.lines:
            if inNO:
                if rx_data.match(line):
                    # extract the data
                    words = line.split()
                    orb.append(words.pop(0))
                    irrep.append(int(orb[-1].split('.')[-1]))
                    occ.append(float(words.pop(0)))
                    e.append(float(words.pop(0)))
                    # compositions remain
                    c = []
                    while words:
                        if len(words) % 4:
                            # number of fields does not make sense
                            chem.print_err('', 'Composition fields not a multiple of 4: {:d}'.format(len(words)))
                        c.append((int(words[0]), int(words[1]), words[2], float(words[3])))
                        words = words[4:]
                    comp.append(c)
                    # create concise description of this orbital
                    ac = np.array([abs(x[3]) for x in c])
                    cmax = ac.max()
                    idx = np.flip(np.argsort(ac))
                    descr = ''
                    s = ''
                    for i in idx:
                        x = c[i]
                        if abs(x[3]) > cmax * 2/3:
                            # include in the description
                            if len(descr):
                                # include the sign relative to the leading component
                                if x[3] * c[idx[0]][3] > 0:
                                    s = '+'
                                else:
                                    s = '-'
                            descr += '{:s}{:d}.{:d}.{:s}'.format(s, x[0], x[1], x[2])
                    terse.append(descr)
                if rx_end.search(line):
                    inNO = False
            if rx_NO.match(line):
                inNO = True
        # mark active orbitals starting from the end
        vocc = self.nactorb(irreps=True)
        activ = [False] * len(orb)
        for i in reversed(range(len(irrep))):
            j = irrep[i] - 1
            if vocc[j] > 0:
                activ[i] = True
                vocc[j] -= 1
                if occ[i] == 2.00000:
                    chem.print_err('', f'NO #{orb[i]} is active and doubly occupied', halt=False)
        if np.array(vocc).any():
            vocc = self.nactorb(irreps=True)
            nirrep = np.unique(irrep, return_counts=True)[1]  # np.unique returns two arrays
            chem.print_err('', f'Number of active orbitals {vocc} exceeds number of NOs {nirrep}; try "gprint,orbitals,civector"')
        data = {k: v for k, v in zip(cols, [orb, occ, activ, e, comp, terse])}
        df = pd.DataFrame(data)
        if len(df):
            return df
        else:
            return None
    def parseMULTIcivec(self, thresh=0.1):
        # For each MCSCF state, assign a list of configurations and
        #   corresponding list of coefficients (must exceed 'thresh')
        rx_hdr = re.compile(r'CI (?:vector for state|Coefficients of) symmetry\s*(\d+)')
        rx_end = re.compile('TOTAL ENERGIES|Energy: ')
        rx_data = re.compile('(\s+[20ab]+)+(\s+[-]?\d\.\d+)+')
        rx_occ = re.compile('([20ab]+\s+)+')
        rx_float = re.compile('[-]?\d+\.\d+')
        rx_block = re.compile('State:(\s+\d+)+')
        indata = False
        civec = []  # list of DataFrames; index specifies state
        # new 2021 format does not list group numbers--assume they are in order
        grp = nstate = 0
        for line in self.lines:
            if indata:
                if rx_block.search(line):
                    # If there are > 7 states, output will be divided into blocks
                    # read the list of CI states in this block
                    iblock = [int(w)-1 for w in line.split()[1:]]
                m = rx_data.match(line)
                if m:
                    # parse a line of data
                    words = line.split()
                    # occupation numbers are lumped together by irrep
                    # remove the spaces to make it as in MRCI
                    v = ''.join(rx_occ.search(line).group(0).split())
                    c = [float(w) for w in rx_float.findall(line)]
                    for k, i in enumerate(iblock):
                        if abs(c[k]) > thresh:
                            coeffs[i].append(c[k])
                            vecs[i].append(v)
                if rx_end.search(line) and (len(vecs[nstate-1]) > 0):
                    # save the data
                    for i in range(nstate):
                        df = pd.DataFrame({'coeff': coeffs[i], 'occup': vecs[i]})
                        self.comment_occup(df)
                        civec.append(df)
                    indata = False
            m = rx_hdr.search(line)
            if m:
                grp += 1
                group = self.groups[grp - 1]
                #if grp != group['gNum']:
                #    chem.print_err('', 'Found group {:d} but expected {:d}'.format(grp, group['gNum']))
                nstate = group['nStates']
                vecs = [[] for n in range(nstate)] 
                coeffs = [[] for n in range(nstate)] 
                iblock = list(range(nstate))  # CI states to be read
                indata = True
        return civec
    def assign_sigma_parity(self, displ=False):
        # assign '+' or '-' to any Sigma states
        # this may fail with more than two opens
        # This function seems to give the same results as the easy way 
        #    (irrep 4 = "-" and irrep 1 = "+") but the method here seems 
        #   more rigorous (?)
        rx = re.compile(r'(alpha|beta)\S+([123][-+]|p[xy]).*(alpha|beta)\S+([123][-+]|p[xy])')
        lval = {'x': 1, 'y': -1, '1-': -1, '1+': 1, '2-': -2, '2+': 2, '3-': -3, '3+': 3}
        dfcas = self.results
        civec = self.civec
        for i, row in dfcas.iterrows():
            if SIGMA in row.Term:
                if displ:
                    chem.displayDF(dfcas.iloc[i].to_frame().T)
                    chem.displayDF(civec[i])
                    #print(civec[i].comment.values)
                parity = '+'  # for closed-shell
                for j, crow in civec[i].iterrows():
                    m = rx.search(crow.comment)
                    if m:
                        l1 = lval[m.group(2)]
                        l2 = lval[m.group(4)]
                        if displ:
                            chem.displayDF(crow.to_frame().T)
                            print([m.group(i) for i in range(1,5)])
                            print('l1, l2 =', l1, l2)
                        if (l1 + l2) == 0:
                            # an opposing pair of angular momenta
                            if m.group(1) == m.group(3):
                                # triplet-coupled (triplet is symmetric to interchange)
                                parity = '-'
                            else:
                                # singlet is antisymmetric
                                parity = '+'
                            # open-shell parity determined
                            break
                dfcas.at[i, 'Term'] += parity
        return
    def comment_occup(self, df):
        # generate comments describing occupation vectors
        # add a column 'comment' to the DataFrame argument
        if 'comment' in df:
            # there is already a comment; do nothing
            return
        comment = []
        # occupation vector only refers to active orbitals
        dfNO = self.NOs[self.NOs.Active]
        patts = df.occup.values  # occupation strings
        imax = np.argmax(np.abs(df.coeff.values))
        domin = df.iloc[imax].occup  # 'patt' for the dominant configuration
        for patt in patts:
            comm = []
            if patt != domin:
                # non-dominant configuration; compare spins with dominant
                ab = sum([1 for (a,b) in zip(domin,patt) if (a != b) and (b in 'ab')])
            else:
                ab =  ('a' in domin) or ('b' in domin)
            if (patt == domin) or ab:
                if not ab:
                    # dominant is closed shell; just note that it's dominant
                        comm.append('dominant')
                else:
                    # look for unpaired electrons
                    for i, ch in enumerate(patt):
                        if ch == 'a':
                            comm.append('alpha({:s})'.format(dfNO.iloc[i].Terse))
                        if ch == 'b':
                            comm.append('beta({:s})'.format(dfNO.iloc[i].Terse))
            else:
                # comment on pair changes from leading configuration
                lost = []   # '2' became '0'
                gained = [] # '0' became '2'
                for i, (a, b) in enumerate(zip(domin, patt)):
                    if a != b:
                        if a == '2':
                            lost.append(i)
                        else:
                            gained.append(i)
                if len(lost):
                    c = 'lose('
                    for i in lost:
                        c += dfNO.iloc[i].Terse
                    c += ')'
                    comm.append(c)
                if len(gained):
                    c = 'gain('
                    for i in gained:
                        c += dfNO.iloc[i].Terse
                    c += ')'
                    comm.append(c)
            comment.append(' '.join(comm))
        df['comment'] = comment
        return
    def combine_atomic_terms(self, etol=1.e-6):
        # assuming clean energy degeneracies, combine term sublevels together
        # return a DataFrame with unique term symbols
        degen = {l*(l+1): 2*l+1 for l in range(6)}  # map of <L**2> onto degeneracy
        dfterm = pd.DataFrame(columns=['Size', 'Spin', 'Energy', 'spread', 
                                       'L**2', 'g', 'Term'])
        indices = []  # indices in self.results that belong to each term
        for lbl, grp in self.results.groupby('Term'):
            lsq = np.round(grp['L**2'].values[0], 3).astype(int)
            g = degen[lsq]
            df = grp.sort_values('Energy').reset_index()
            # divide into individual terms
            for i in range(len(df) // g):
                idx = np.arange(g).astype(int) + g * i  # indices for one term
                emean = df.loc[idx].Energy.mean()
                spread = np.ptp(df.loc[idx].Energy)
                row = [df.Size.values[0], df.Spin.values[0], emean, spread, lsq, g, lbl]
                dfterm.loc[len(dfterm)] = row
                indices.append(df.loc[idx]['index'].values)
            dfterm = dfterm.fillna(0) # stdev is NaN for S states
        dfterm['uTerm'] = chem.enumerative_prefix(dfterm.Term)
        # copy the new labels into self.results
        self.results['uTerm'] = self.results.Term
        for idx, label in zip(indices, dfterm.uTerm):
            self.results.loc[idx, 'uTerm'] = label
        return dfterm
##
class MRCI:
    # A list of lines of MRCI output 
    # also some results of parsing those lines
    def __init__(self, linebuf):
        self.lines = linebuf
        x = self.basics()
        self.irrep = x[0]
        self.spinLabel = x[1]
        self.ncore = x[2]
        #self.nact = x[3]
        self.results = self.properties()
        self.configs = self.config_coeffs()
    def printlines(self):
        print('\n'.join(self.lines))
    def basics(self):
        # get irrep, spin and electron counts
        rx_sym = re.compile(r' Reference symmetry:\s+(\d)\s+(\w+)')
        rx_ncore = re.compile(r' Number of core orbitals:\s+(\d+)')
        #rx_nact = re.compile(r' Number of active\s+orbitals:\s+(\d+)')
        ncore = 0  # may not be stated when ncore == 0
        for line in self.lines:
            m = rx_sym.match(line)
            if m:
                irrep = int(m.group(1))
                spinLabel = m.group(2)
            m = rx_ncore.match(line)
            if m:
                ncore = int(m.group(1))
            #m = rx_nact.match(line)
            #if m:
            #    nact = int(m.group(1))
        #return irrep, spinLabel, ncore, nact
        return irrep, spinLabel, ncore
    def config_coeffs(self):
        # return a DataFrame of the reference coefficients > 0.05
        # not orthornormal because of the 0.05 cutoff
        rx_coeff = re.compile(r' Reference coefficients greater than 0.0500000')
        rx_end = re.compile(r'(singly external|fixed reference|RESULTS FOR STATE)')  # end marker
        rx_data = re.compile(r' [20/\\]+(\s+[-]?0\.\d+)+')
        rx_continue = re.compile(r'(\s+[-]?\d\.\d+)+')
        incoef = False
        df = pd.DataFrame()
        allc = []
        config = 'ugh'
        for line in self.lines:
            if incoef:
                if rx_end.search(line):
                    # add column to the DataFrame for the last config
                    df[config] = allc
                    incoef = False
                    allc = []
                    break
                ishdr = rx_data.match(line)  # configuration + coeffs
                isdat = rx_continue.match(line)  # just coeffs
                if ishdr:
                    if len(allc):
                        # add column to the DataFrame for previous config
                        df[config] = allc                        
                    allc = []  # list of all coeffs for this config, across lines
                    # read the coefficients and configuration
                    words = line.replace('\\', 'b').replace('/', 'a').split()
                    config = words[0]
                    coeffs = [float(x) for x in words[1:]]
                    allc.extend(coeffs)
                if isdat:
                    # read coefficients only
                    coeffs = [float(x) for x in line.split()]
                    allc.extend(coeffs)
            if rx_coeff.match(line):
                incoef = True
        return df.T
    def properties(self):
        # return a DataFrame of interesting properties
        rx_energy = re.compile(r' !MRCI STATE\s*(\d+\.\d) Energy\s+([-]?\d+\.\d+)')
        rx_dip = re.compile(r' !MRCI STATE\s*(\d+\.\d) Dipole moment')
        # if there is only one state, "rotated" (below) does not occur
        # "rotated" is after "relaxed" in the output file
        rx_dav = re.compile(r' Cluster corrected energies\s+([-]?\d+\.\d+) \(Davidson, (relaxed|rotated) reference\)')
        energy = []
        edav = []
        lbl = []
        dipx = []
        dipy = []
        dipz = []
        rx_ref = re.compile(r' RESULTS FOR STATE\s*(\d+\.\d)')
        rx_ovl = re.compile(r' Maximum overlap with reference state\s+\d+')
        rx_c0 = re.compile(r' Coefficient of reference function:   C\(0\) =')
        # read reference energies from list at beginning of output
        #rx_eref = re.compile(r' Reference energy\s+([-]?\d+\.\d+)')  # this can be a mysterious energy
        rx_eref = re.compile(r' State     Reference Energy')
        rx_erefdat = re.compile(r'^\s+\d+\s+[-]?\d+\.\d+\s*$')
        ref = []  # label for CASSCF state with largest overlap
        c0 = []   # coefficient of ref state
        eref = [] # energy of actual CASSCF reference state
        ereflist = []  # list of reference energies
        ireflist = []  # list of reference state numbers
        iref = []  # list of indices of actual reference states
        reflbl = None
        inref = False
        for line in self.lines:
            m = rx_energy.match(line)
            if m:
                # state energy
                energy.append(float(m.group(2)))
                lbl.append(m.group(1))
            m = rx_dip.match(line)
            if m:
                # dipole moment in a.u.
                if m.group(1) != lbl[-1]:
                    # state label is different than it was for preceding energy!
                    print('*** Error: Dipole label is {:s} but should be {:s}'.format(m.group(1), lbl[-1]))
                    sys.exit(0)
                words = line.split()
                dipx.append(float(words[-3]))
                dipy.append(float(words[-2]))
                dipz.append(float(words[-1]))
            m = rx_dav.match(line)
            if m:
                # want the "energd4" option
                n = len(energy)
                dave = float(m.group(1))
                try:
                    # overwrite earlier value
                    edav[n-1] = dave
                except:
                    # not yet created
                    edav.append(dave)
            m = rx_ref.match(line)
            if m:
                reflbl = m.group(1)
                iref.append(len(iref))
            if rx_ovl.match(line):
                words = line.split()
                # replace the first number in the label with this one
                # (keep the second number, which specifies the irrep)
                #print(line.rstrip())
                #print(f'>>>changing reflabel from {reflbl}', end='')
                k = int(words[-1]) - 1
                reflbl = re.sub('\d+\.', ireflist[k] + '.', reflbl)
                #print(f' to {reflbl}')
                iref[-1] = k
                #print('>>>iref[] =', iref)
                if len(iref) != len(set(iref)):
                    print(f'Warning: more than one MRCI state claims the same CASSCF reference {reflbl}')
                        
            if rx_c0.match(line):
                words = line.split()
                c0.append(float(words[-2]))  # choose the "rotated" value
                ref.append(reflbl)
            if inref:
                # read a casscf reference energy
                if rx_erefdat.match(line):
                    words = line.split()
                    ireflist.append(words[0])  # leave as string (not int)
                    ereflist.append(float(words[1]))
                else:
                    # done with the list of reference energies
                    inref = False
            m = rx_eref.match(line)
            if m:
                inref = True
                #eref.append(float(m.group(1)))
        # put the reference energies in the correct order
        eref = [ereflist[i] for i in iref]
        # create the DataFrame
        df = pd.DataFrame({'Spin': self.spinLabel, 'Irrep': self.irrep, 
                           'Label': lbl, 'Energy': energy, 'Edav': edav, 
                           'Ncore': self.ncore, 'dipX': dipx, 'dipY': dipy, 
                           'dipZ': dipz, 'Eref': eref})
        df['Dipole'] = np.sqrt(df.dipX**2 + df.dipY**2 + df.dipZ**2)
        df['Ref'] = ref
        df['C0'] = c0
        # Add a column with dict of leading configuration coefficients
        df['Configs'] = None
        dfconfig = self.config_coeffs()
        for i in df.index:
            df.at[i, 'Configs'] = dfconfig[i].to_dict()
        return df
    def transfer_lz(self, dfcas, etol=1.e-6, atom=False):
        # assign Lz values to MRCI states from Lz values of dominant MCSCF states
        # dfcas is from MULTI().results
        # 'etol' is the energy-matching requirement for the MCSCF energy and the MRCI "reference" energy
        # No return value: self.results is modified
        # If 'atom', also transfer 'L**2'
        strlzlz = 'LzLz'
        strlz = 'Lz'            
        strll = 'L**2'
        strl = 'L'
        if 'uTerm' in dfcas.columns:
            # with enumerative label
            cterm = 'uTerm'
        else:
            cterm = 'Term'
        spin = self.results.loc[0, 'Spin']
        irrep = self.results.loc[0, 'Irrep']
        subdf = dfcas[(dfcas.Spin == spin) & (dfcas.Irrep == irrep)].copy()
        lz = []
        Llist = []  # used for atoms
        term = []
        r = []
        hasR = 'R' in dfcas  # whether bond length is present
        for i, row in self.results.iterrows():
            crow = subdf[(subdf.Label == row.Ref)]
            if hasR:
                r.append(crow.R.values[0])
            if abs(row.Eref - crow.Energy.values[0]) < etol:
                lzz = crow[strlzlz].values[0]
                lz.append(np.sqrt(abs(lzz)))
                if atom:
                    lsq = crow[strll].values[0]
                    # convert L(L+1) to just L
                    L = (-1 + np.sqrt(1 + 4 * lsq))/2
                    Llist.append(L)
                term.append(crow[cterm].values[0])
            else:
                s = '*** Error: wrong reference energy: CAS = {:.5f} buf Eref = {:.5f}'
                print(s.format(crow.Energy.values[0], row.Eref))
                print(row.to_frame().T)
                print(crow)
                print()
                lz.append(np.nan)
                Llist.append(np.nan)
                term.append(np.nan)
        self.results[strlz] = lz
        if atom:
            self.results[strl] = L
        self.results['Term'] = term
        if hasR:
            self.results['R'] = r
        return    
    def print(self, reset=False):
        # print the DataFrame of results (may have been externally modified)
        if reset:
            # replace the existing self.results
            self.results = self.properties()
        print(self.results)
        return
##
class SOenergy:
    # A list of the energy-related lines of SO-CI output 
    # also some results of parsing those lines
    def __init__(self, linebuf, E0):
        self.lines = linebuf
        self.E0 = E0
        self.energies = self.get_energies()
        self.results = self.energies  # a synonym to be more consistent with other classes
    def get_energies(self):
        # return a DataFrame of state energies
        re_data = re.compile(r'\s+\d+\s+\d(\s+[-]?\d+\.\d+){6}')
        re_alt = re.compile(r'\s+\d+(\s+[-]?\d+\.\d+){6}')
        Nr = []
        Sym = []
        E = []
        cm = []
        excit = []
        for line in self.lines:
            if re_data.match(line):
                words = line.split()
                Nr.append(int(words[0]))
                Sym.append(int(words[1]))
                E.append(float(words[2]))
                cm.append(float(words[4]))  # E-E0
                excit.append(float(words[6]))  # E-E(1) in cm-1
            if re_alt.match(line):
                words = line.split()
                Nr.append(int(words[0]))
                Sym.append(0)  # not present in half-integer output, say irrep=0
                E.append(float(words[1]))
                cm.append(float(words[3]))
                excit.append(float(words[5]))
        df = pd.DataFrame({'Nr': Nr, 'Irrep': Sym, 'E': E, 'Eshift': cm,
                           'Erel': excit})
        # sort by energy
        return df.sort_values(by='E').reset_index(drop=True)
    def printlines(self):
        print('\n'.join(self.lines))
        return
    def recalc_wavenumbers(self):
        # Recompute 'Eshift' and 'Erel' to get precision better than
        # the MOLPRO-output 0.01 cm-1
        self.energies['Eshift'] = chem.AU2CM * (self.energies.E - self.E0)
        self.energies['Erel'] = self.energies.Eshift - self.energies.Eshift.min()
        return
    def collect_degenerate(self, cmtol=1.):
        # return a DataFrame with degenerate levels averaged and counted
        # levels are "degenerate" when their differences <= 'cmtol', in cm-1 units
        #    "degenerate" is transitive, so differences may exceed the tolerance
        # Re-calculate wavenumber quantities to increase their precision
        self.recalc_wavenumbers()
        return collect_degenerate(self.energies, cmtol=cmtol)
    def ground_energy(self):
        # return the energy (hartree) of the lowest level
        emin = self.energies.E.min()
        return emin
##
class SOcompos:
    # A list of composition-related lines of SO-CI output
    # also some results of parsing those lines
    def __init__(self, linebuf):
        self.lines = linebuf
        self.basis = self.get_basis()
        self.pct = self.get_pct()
    def nbasis(self):
        # return number of basis functions
        return len(self.basis)
    def state(self, Nr, ciDF=None):
        # Return the non-zero contributors to the SO state labeled 'Nr',
        # sorted by decreasing contribution.
        # the SO state 'Nr' is the column with index = Nr - 1
        # If 'ciDF' is provided, use it to obtain the term symbols
        # for the CI states.
        if Nr < 1:
            print('*** Error: SO state Nr must be >0')
            sys.exit(0)
        j = Nr - 1
        comp = self.basis.copy()
        comp['Pct'] = self.pct[:, j]
        grp = comp[comp.Pct > 0].groupby(['Spin', 'CI lbl'])
        ci = []
        p = []
        for lbl, g in grp:
            if ciDF is None:
                ci.append(lbl)
            else:
                # look for a term symbol
                symb = ciDF[(ciDF.Spin == lbl[0]) & (ciDF.Label == lbl[1])]['Term'].values[0]
                ci.append((lbl[0], lbl[1], symb))
            p.append(g['Pct'].sum())
        df = pd.DataFrame({'CI state': ci, 'Pct': p})
        return df.sort_values(by='Pct', ascending=False)
    def state_by_term(self, Nr, ciDF):
        # return the non-zero CI terms that contribute to SO state 'Nr'
        # sorted by decreasing contribution
        # relies upon term symbols being unique
        df = self.state(Nr, ciDF)
        # add column with term symbol
        terms = [row['CI state'][2] for i, row in df.iterrows()]
        df['Term'] = terms
        grp = df.groupby('Term').sum()
        return grp.sort_values(by='Pct', ascending=False)
    def relabel_basis(self, labels):
        # sometimes the SO basis is wrong in the MOLPRO file
        # fix it here by replacing the basis labels
        # label repair done by parse_SOmatrix(...ciorder)
        if len(self.basis) != len(labels):
            s = 'expected {:d} labels but {:d} labels were supplied'.format(
                len(self.basis), len(labels))
            chem.print_err('', s)
        mz = []
        cilbl = []
        mult = []
        for tup in labels:
            cilbl.append(tup[0])
            mult.append(SPINMULT[tup[1]])
            mz.append(tup[2])
        self.basis['CI lbl'] = cilbl
        self.basis['Spin'] = mult
        self.basis['Sz'] = mz
        return
    def get_basis(self):
        # extract the descriptors for the basis states
        rx_data = re.compile(r'(\s+\d+){4}')
        rx_int = re.compile(r'\d+')
        # different formatting for half-integer spin
        rx_alt = re.compile(r'\s+\d+(\s+\d+\.\d){2}\s*[-]?\d+\.\d')
        Nr = []
        mz = []
        cilbl = []
        mult = []
        for line in self.lines:
            if rx_data.match(line):
                words = line.split()
                n = int(words[0])
                if Nr and (n < max(Nr)):
                    # no new basis functions
                    break
                Nr.append(n)
                cilbl.append('.'.join(words[2:4]))
                # S is just a numerical part of the ket symbol
                s = rx_int.search(words[4]).group(0)
                mult.append(SPINMULT[float(s)])
                # Sz is more complicated
                m = int(rx_int.search(words[5]).group(0))
                if '-' in words[5]:
                    m = -m
                mz.append(m)
            if rx_alt.match(line):
                words = line.split()
                n = int(words[0])
                if Nr and (n < max(Nr)):
                    # no new basis functions
                    break
                Nr.append(n)
                cilbl.append(words[1])
                mult.append(SPINMULT[float(words[2])])
                mz.append(float(words[3]))
        # construct the descriptors (DataFrame)
        df = pd.DataFrame({'Nr': Nr, 'CI lbl': cilbl, 'Spin': mult, 'Sz': mz})
        return df.set_index('Nr')
    def get_pct(self):
        # return an array of the composition percentages
        # column = SO state
        # row = basis state
        # regex are different for integer and half-integer cases
        rx_hdr = re.compile(r' Nr Sym  State Sym Spin')  # integer 
        rx_alt = re.compile(r'\s+Nr\s+State\s+S\s+Sz ')  # half-integer 
        rx_data = re.compile(r'(\s+\d+){4}') # integer
        matr = np.zeros((self.nbasis(), self.nbasis()))
        cols = []
        for line in self.lines:
            if rx_hdr.match(line):
                cols = line.split()[7:]
                ip = 6
            if rx_alt.match(line):
                rx_data = re.compile(r'\s+\d+(\s+\d+\.\d){2}\s*[-]?\d+\.\d')
                cols = line.split()[4:]
                ip = 4
            if rx_data.match(line):
                # remove the '%' symbols
                line = line.replace('%', '')
                words = line.split()
                for j, pct in zip(cols, words[ip:]):
                    k = int(j) - 1 # column index
                    i = int(words[0]) - 1  # row index
                    matr[i,k] = float(pct)
        return matr
    def sum_term_compos(self, idx, ciDF):
        # 'idx' is a list of state indices (starting with 0)
        # 'ciDF' is a DataFrame from MRCI().results
        # Return a DataFrame of terms and their percentages (normalized) summed over the 
        #   listed states
        dfavg = pd.DataFrame()
        for i in idx:
            i1 = i + 1
            df = self.state_by_term(i1, ciDF)
            for term, row in df.iterrows():
                # 'term' is the index of df
                try:
                    dfavg.loc[term, 'Pct'] += row.Pct
                except:
                    dfavg.loc[term, 'Pct'] = row.Pct
        # normalize to 100%
        dfavg.Pct *= 100 / dfavg.Pct.sum()
        return dfavg
    def bases_of_term(self, term, ciDF):
        # Return the indices of the basis states that belong to 'term'
        # 'ciDF' is a DF from MRCI.results()
        subdf = ciDF[ciDF.Term == term]
        spin = set(subdf.Spin)
        if len(spin) != 1:
            print('>>>term =', term, 'ciDF =')
            chem.displayDF(ciDF)
            chem.print_err('', 'Term should have exactly one spin: {}'.format(spin))
        spin = spin.pop()
        lbl = subdf.Label
        subdf = self.basis[(self.basis.Spin == spin) & (self.basis['CI lbl'].isin(lbl))]
        return subdf.index
    def term_distrib(self, term, ciDF, nozeros=True):
        # Return a DataFrame of the microstates to which 'term' contributes, 
        #   with percentages
        # 'ciDF' is a DF from MRCI.results()
        # Max values may exceed 100% because of rounding errors
        idx = self.bases_of_term(term, ciDF) # indices of SO-CI basis states
        idx -= 1  # to use as array index
        pct = self.pct[idx, :].sum(axis=0)
        if nozeros:
            # restrict to nonzero
            inz = np.argwhere(pct)
            pcts = pct[inz].flatten()
            dfret = pd.DataFrame({'Nr': (inz+1).flatten(), 'Pct': pcts})
        else:
            inr = np.arange(pct.shape[0]) + 1
            dfret = pd.DataFrame({'Nr': inr, 'Pct': pct})
        return dfret
    def printlines(self):
        print('\n'.join(self.lines))
##
class CASSCFstate():
    def __init__(self, mresult):
        # argument is one row (pd.Series) of a MULTI.results DataFrame
        self.label = mresult['Label']
        self.energy = mresult['Energy']
        words = self.label.split('.')
        self.number = int(words[0])
        self.irrep = int(words[1])
        try:
            # angular momentum 
            self.Lz = np.sqrt(abs(mresult['LzLz']))
        except:
            try:
                self.Lz = mresult['Lz']
            except:
                self.Lz = np.nan
        self.spin = MULTSPIN[mresult['Spin'].title()]  # number of unpaired electrons
        try:
            self.Term = mresult['Term']
        except:
            self.Term = ''
    def set_lzlz(self, lzlz):
        # lzlz is a string
        lzlz = np.abs(float(lzlz))
        lz = np.sqrt(lzlz)
        self.Lz = int(round(lz))
        return
    def set_lz(self, lz):
        # lz may be a string
        lz = float(lz)
        self.Lz = int(round(lz))
        return
    def print(self, file=sys.stdout):
        L = LAMBDA[self.Lz]
        mult = SPINMULT[self.spin]
        if self.Term:
            # print the term symbol instead of words
            print('CAS state {:s}: E = {:.6f}   {:s}'.format(self.label,
                    self.energy, self.Term))
        else:
            print('CAS state {:s}: E = {:.6f}   {:s} {:s}'.format(self.label,
                    self.energy, mult, L))
        return
    def equals(self, other):
        # does the other CASSCF/MRCI state have the same label and spin?
        retval = (self.label == other.label) and (self.spin == other.spin)
        return retval
    def descriptor(self):
        # a string that shows label, spin, and Lambda
        spinstr = halves(self.spin)
        retval = '({:s}, {:s}, {:s})'.format(self.label, spinstr, LAMBDA[self.Lz])
        return retval
    def omega_range(self, rounding=True):
        # return list of possible Omega values
        return omega_range(self.Lz, self.spin, rounding=rounding)
    def has_omega(self, omega):
        # Is Omega = 'omega' possible for this state?
        return omega in self.omega_range()
    def term_label(self, greek=False):
        # return label like '2-Delta' or (Greek) '2<Delta>'
        j = chem.round_half_int(self.Lz)
        if greek:
            L = GLAMBDA[j]
        else:
            L = LAMBDA[j].rstrip()
        mult = int(round(2 * self.spin + 1))
        return str(mult) + L
##
class MRCIstate(CASSCFstate):
    def __init__(self, mresult):
        # argument is one row of an MRCI.properties DataFrame
        CASSCFstate.__init__(self, mresult)
        self.reflabel = mresult['Ref']  # label for CAS state with max overlap
        self.dav = mresult['Edav']      # Davidson-corrected energy
        self.c0 = mresult['C0']         # coefficient of leading reference
        self.eref = mresult['Eref']     # energy of CAS reference
        self.Term = mresult['Term']
        self.configs = mresult['Configs']
    def set_reflabel(self, ovl):
        # set reference label to  state #ovl (same irrep)
        self.build_reflabel(int(ovl), self.irrep)
    def build_reflabel(self, state, irrep):
        self.reflabel = '{:d}.{:d}'.format(state, irrep)
    def config_dist(self, other, ignore_spin=True):
        # return JSDM distance from other's config vector**2, ignoring spin
        # this is NOT overlap (dot product of vectors)
        if ignore_spin:
            selfsq = {k.replace('b', 'a'): v**2 for k, v in self.configs.items()}
            othersq = {k.replace('b', 'a'): v**2 for k, v in other.configs.items()}
        else:
            selfsq = {k: v**2 for k, v in self.configs.items()}
            othersq = {k: v**2 for k, v in other.configs.items()}
        jsdm, msg = chem.JSdm(selfsq, othersq)
        return jsdm
    def print(self, file=sys.stdout):
        pstr = 'MRCI state ({:s}, {:s}): E = {:.6f}   Lz = {:.3f}  reflabel = {:s}'
        pstr = pstr.format(self.label, halves(self.spin), self.energy, self.Lz, self.reflabel)
        pstr += '   Dav = {:.6f}   C0 = {:.2f}'.format(self.dav, self.c0)
        if self.Term:
            # add the term symbol 
            pstr += '  {:s}'.format(self.Term)
        print(pstr)
##
class SOCI:
    # spin-orbit CI calculation in C2v (might work for other point groups)
    # March 2022
    def __init__(self, linebuf):
        # as excerpted by read_SOmat_SymmBlocks()
        self.irrep, self.E0, self.eigvals, self.somat, self.sobas, self.eigvecs = \
            parse_SOmat_SymmBlock(linebuf)
        self.dimen = len(self.eigvals)
        # the flag 'hybrid' indicates whether matrix diagonals have been modified
        # if so, 'eigvals' and 'eigvecs' are superseded originals
        self.hybrid = False
        # 'newterm' stores new term energies (for hybrid SO-CI)
        # 'hybrid_descr' describes origin of each new term energy
        self.newterm = {}
        self.hybrid_descr = {}
        return
    def set_point_group(self, grp):
        # lowercase string such as 'c2v'
        self.PG = str(grp).lower()
        return
    def assign_MRCI_basis(self, cilist, verbose=False):
        # 'cilist' is a list of MRCI objects from readMRCI()
        # each SO basis state will be assigned an MRCI parent described as (state.irrep, S, termlabel)
        # also store DataFrames describing the associated MRCI states and terms
        if verbose:
            print('There are {:d} SO basis states in irrep {}'.format(self.dimen, self.irrep))
        # collect, average and store the MRCI term info
        dfci = pd.concat([ci.results for ci in cilist], ignore_index=True)  # collect
        # add values of S
        S = [chem.round_half_int((chem.spinname(spinmult)-1) / 2) for spinmult in dfci.Spin]
        dfci['S'] = S
        # add values of Omega
        omegas = [omega_range(row.Lz, row.S) for row in dfci.itertuples()]
        dfci['omegas'] = omegas
        # now average the term components across irreps
        cols = ['Term', 'dipZ', 'Energy', 'Edav', 'idx']  # keep only these columns
        be_close = ['Energy', 'Edav', 'dipZ', 'Eref', 'C0', 'Lz']
        target = [1.e-5, 1.e-5, 1.e-4, 1.e-4, 1.e-4, 1.e-4]
        dfterm = averageTermsApprox(dfci, be_close=be_close, target=target, quiet=not verbose)
        dfterm = dfterm.sort_values('Edav')[cols].reset_index(drop=True)
        dfterm['Term'] = chem.enumerative_prefix(dfterm.Term, always=False)  # add identifying prefixes as needed
        dfterm['ecm'] = np.round((dfterm.Edav - dfterm.Edav.min()) * chem.AU2CM, 1)
        # copy the modified term symbols back into 'dfci'
        for term, idx in zip(dfterm.Term, dfterm.idx):
            for i in idx:
                dfci.loc[i, 'Term'] = term
        self.dfci = dfci
        self.dfterm = dfterm
        if not self.hybrid:
            # determine which is the reference term, and whether reference energy
            #   is MRCI or MRCI+Dav
            etol = 1.e-6
            if abs(self.E0 - dfterm.Energy.min()) < etol:
                # MRCI energy
                self.refE = 'Energy'
            elif abs(self.E0 - dfterm.Edav.min()) < etol:
                # MRCI+Dav energy
                self.refE = 'Edav'
            else:
                self.refE = 'unk'
            if self.refE in ['Energy', 'Edav']:
                imin = np.argmin(dfterm[self.refE])
                self.refterm = dfterm.Term.values[imin]
            else:
                self.refterm = None
        # 'cibas' is the list of MRCI states corresponding to SO basis states
        #   each MRCI state is specified as (index, state.irrep, S), where 'index' is in self.dfci
        cibas = [None] * self.dimen  
        for i, sob in enumerate(self.sobas):
            irrep = int(sob[0].split('.')[1])
            S = sob[1]
            subdf = dfci[(dfci.S == S) & (dfci.Irrep == irrep)]
            # match this SO basis state to the first unused MRCI state
            #   this relies upon consistent ordering in the MRCI and SO-CI calculations
            for row in subdf.itertuples():
                S = chem.round_half_int((chem.spinname(row.Spin)-1) / 2)
                lbl = (row.Label, S, row.Index)
                if lbl not in cibas:
                    # make the assignment
                    cibas[i] = lbl
                    break
        self.cibas = cibas
        # 'termbas' is the list of terms (averaged) in 'dfterm' that correspond
        # to SO basis states.  they are specified only by index into 'dfterm'
        termbas = []
        for ciba in cibas:
            ici = ciba[2]
            mask = dfterm.idx.apply(lambda x: ici in x)
            iterm = dfterm[mask].index[0]  # should be exactly one match
            termbas.append(iterm)
        self.termbas = termbas
        return
    def rediagonalize(self, silent=True, warn=0.1):
        # re-diagonalize matrix; also compare eigenvalues with original values
        # return new eigenvalues and squared eigenvectors
        # 'warn' is a warning threshold in cm-1
        vals, vecsq = get_SOeigs(self.somat)
        energcm = (self.eigvals - self.E0) * chem.AU2CM  # relative energies in cm-1
        maxdiff = compare_MOLPRO_SOvals(energcm, vals, silent=silent)
        if (not self.hybrid) and (abs(maxdiff) > warn):
            s = 'Largest change upon re-diagonalization = {:.2f} cm-1 for irrep {:d}'
            print(s.format(maxdiff, self.irrep))
        return vals, vecsq
    def set_diagonal_elements(self, ilist, ecm):
        # change specified diagonal elements of SO matrix to value 'ecm'
        # 'ilist' is a list of indices
        # 'ecm' is the new energy (scalar; cm-1 relative to the ground term)
        for i in ilist:
            self.somat[i, i] = ecm
        self.hybrid = True
        return
    def change_E0(self, Enew, silent=False):
        # change the absolute energy for the reference term
        # if Enew is 'None', reset to the value from self.dfterm
        # only change self.E0; no other adjustments
        Eold = self.E0
        if Enew is None:
            # get from self.dfterm
            Enew = self.dfterm.loc[self.dfterm.Term == self.refterm, self.refE]
            s = 'Reference E0 [{:s}] reset from {:.6f} to {:.6f} for irrep {:d}'
        else:
            s = 'Reference E0 [{:s}] changed from {:.6f} to {:.6f} for irrep {:d}'
        self.E0 = Enew  # hartree
        if not silent:
            print(s.format(self.refterm, Eold, Enew, self.irrep))
    def set_term_diagonals(self, term, ecm, descr='input'):
        '''
        Use the specified relative term energy 'ecm' to set the diagonal 
          elements of the SO matrix that derive from 'term'
        'descr' describes the origin of the energy, e.g. 'CCSD(T)/CBS'
        Do not modify self.dfterm
        If 'ecm' is None, modify nothing and return a list of the 
          corresponding diagonal energies (cm-1)
        '''
        # record the new term energy (cm-1, relative)
        self.newterm[term] = ecm
        self.hybrid_descr[term] = descr
        if term == self.refterm:
            s = 'Changing relative energy of reference but not E0 for irrep {:d}'
            chem.print_err('', s.format(self.irrep), halt=False)
        subdf = self.dfterm[self.dfterm.Term == term]  # should have only one row
        n = len(subdf)
        if n != 1:
            chem.print_err('', f'Should have 1 match for term {term} but there are {n}')
        iterm = subdf.idx.iloc[0]  # numpy array of indices into self.dfci
        idiag = []  # indices of diagonal elements to modify
        # find SO basis states that derive from these MRCI states
        for ibas, sob in enumerate(self.cibas):
            if sob[2] in iterm:
                idiag.append(ibas)
        if ecm is not None:
            self.set_diagonal_elements(idiag, ecm)
            return
        else:
            # components of one term may have slightly different energies; return a list
            ecm = [self.somat[i,i].real for i in idiag]  # all diagonal energies should be real
            return ecm
    def term_weights(self):
        # compute weight of each term (and MRCI state)
        # store a list of arrays as attribute self.termwt
        #   ordered as in self.dfterm
        # also store self.ciwt for the individual MRCI states
        # return a list of leading terms and a list of their weights
        vals, vecsq = self.rediagonalize()  # 'vals' are in cm-1
        # each column of 'vecsq' is for one SO state
        # rows are for SO basis states
        termwt = []  # list of arrays
        ciwt = []    # list of arrays
        for iso in range(self.dimen):
            wt = vecsq[:, iso]  # weights of SO basis states
            cwt = np.zeros(len(self.dfci))  # weight of each CI state
            twt = np.zeros(len(self.dfterm))  # weight of each term
            for ciba, w in zip(self.cibas, wt):
                ici = ciba[2]  # the index in self.dfci
                cwt[ici] += w
            for iterm, w in zip(self.termbas, wt):
                twt[iterm] += w
            ciwt.append(cwt)
            termwt.append(twt)
        self.ciwt = ciwt
        self.termwt = termwt
        # identify leading terms
        leadwt = []
        leadterm = []
        terms = self.dfterm.Term.values
        for iso in range(self.dimen):
            imax = np.argmax(termwt[iso])
            leadwt.append(termwt[iso][imax])
            leadterm.append(terms[imax])
        return leadterm, leadwt
    def omega_counts(self):
        # return a dict of the count of Omega values spanned by the SO basis
        #   (therefore restricted to self.irrep)
        # also store in attribute self.omcount
        omcount = {}
        for ibas, sob in enumerate(self.sobas):
            Sz = sob[2]
            cib = self.cibas[ibas]
            ici = cib[2]
            Lz = self.dfci.loc[ici, 'Lz']
            omset = omega_Sz_Lz(Sz, Lz)
            wt = 1 / len(omset)
            for om in omset:
                try:
                    omcount[om] += wt
                except KeyError:
                    omcount[om] = wt
        # round to nearest integers
        for k, v in omcount.items():
            omcount[k] = round(v)
        self.omcount = omcount
        return omcount
    def assign_omega(self, csq_thresh=0.001, silent=False, debug=False):
        # assign a value of omega for each state
        # composition is determined by rediagonalizing 
        # return a list of omega values (scalar if assigned, set if not)
        # also store in attribute self.omegas
        # March 2022
        omneeded = self.omega_counts()
        Omega = [set(omneeded.keys())] * self.dimen   # assigned values of omega
        parenterm, leadwt = self.term_weights()
        self.parenterm = parenterm
        self.leadwt = leadwt
        vals, vecsq = self.rediagonalize()  # 'vals' in cm-1
        idx = np.argsort(-vecsq, axis=0) # each column of 'vecsq' is for one SO state
        if debug:
            print('irrep =', self.irrep, 'dimen =', self.dimen)
            print('required omega counts:')
            chem.print_dict(omneeded)
        # examine weights in increasing detail until assignments are complete
        for iwt in range(self.dimen):
            if debug:
                print('iwt =', iwt)
                print('\tneeded:', omneeded)
            for iso in range(self.dimen):
                # 'iso' is the SO state index
                if len(Omega[iso]) < 2:
                    # nothing more to do for this state
                    continue
                if debug:
                    print('\tiso =', iso)
                ibas = idx[iwt, iso]
                # 'ibas' is the index in self.sobas (and self.cibas and self.termbas)
                #    as ordered by decreasing weight
                wt = vecsq[ibas, iso]
                # exclude MRCI states that contribute less than 'csq_thresh'
                if wt < csq_thresh:
                    # weight is too small; stop looking
                    continue
                Sz = self.sobas[ibas][2]
                ici = self.cibas[ibas][2]  # 'ici' is the index in self.dfci
                Lz = self.dfci.loc[ici, 'Lz']
                if debug:
                    print('\t\tibas =', ibas, self.sobas[ibas], 'Sz =', Sz,
                          'ici =', ici, 'Lz =', Lz,
                          'wt = {:.4f}'.format(wt), 'Omega = ', end='')
                # form intersection with existing possibilities
                Omega[iso] = Omega[iso].intersection(omega_Sz_Lz(Sz, Lz))
                if debug:
                    print(Omega[iso])
                if len(Omega[iso]) < 1:
                    chem.print_err('', 'No remaining Omega possibilities for SO state {:d}'.format(iso))
                if len(Omega[iso]) == 1:
                    # we just made an assignment 
                    om = next(iter(Omega[iso]))  # get the value
                    omneeded[om] -= 1
            # before checking the next depth of weights, apply global info
            for om in omneeded:
                # count the unassigned states for which 'om' is possible
                if omneeded[om] < 1:
                    continue
                n = 0
                for omset in Omega:
                    if (len(omset) > 1) and (om in omset):
                        # count it
                        n += 1
                if n == omneeded[om]:
                    # exact match, so these can all be assigned
                    for iso, omset in enumerate(Omega):
                        if (len(omset) > 1) and (om in omset):
                            # assign it
                            Omega[iso] = set([om])
                    omneeded[om] = 0
                    if debug:
                        print(f'\tassigned {n} states to omega = {om} by exact count')
            for om, n in omneeded.items():
                if n < 0:
                    chem.print_err('', f'Overcounting for omega = {om}')
                if n == 0:
                    # this omega fully assigned
                    for iso, omset in enumerate(Omega):
                        if len(omset) > 1:
                            # eliminate if present
                            Omega[iso].discard(om)
                            if len(Omega[iso]) == 1:
                                # make an assignment
                                omneeded[next(iter(Omega[iso]))] -= 1
                                if debug:
                                    print(f'\tomega = {om} by elimination')
            # are we done?
            n = sum([n for om, n in omneeded.items()])
            if n < 1:
                break
        # convert single-element sets to scalars
        print('>>> Omega =', Omega)
        for i in range(self.dimen):
            if len(Omega[i]) == 1:
                Omega[i] = Omega[i].pop()
        self.omegas = Omega
        return Omega
    def summarize(self, rediag=True, E0=None):
        # create a descriptive DataFrame and store it in self.dfsoci
        # return the DataFrame and the reference energy E0
        # if 'rediag' is True, obtain energies from self.somat instead
        #   of self.eigvals
        # specifying E0 will use that value as the zero of energy
        if E0 is None:
            # default is to use existing reference energy
            E0 = self.E0
        if rediag:
            vals, vecsq = self.rediagonalize()  # 'vals' in cm-1
        else:
            vals = (self.eigvals - self.E0) * chem.AU2CM
            if self.hybrid:
                chem.print_err('', 'using original SO eigenvalues', halt=False)
        E = E0 + vals / chem.AU2CM  # absolute energies in hartree
        g = np.ones(self.dimen, dtype=int)  # degeneracy = 1 for all
        olbl = []  # labels in the format <term>_<omega>
        for iso, om in enumerate(self.Omega):
            lbl = self.parenterm[iso] + '_{:s}'.format(om)
            olbl.append(lbl)
        # round cm-1 values to nearest 0.1
        vals = np.round(vals, 1)
        df = pd.DataFrame({'cm-1': vals, 'E': E,
                           OMEGA: self.Omega, 'g': g, 
                           'lead': self.parenterm, 'termwts': self.termwt,
                           'Olbl': olbl})
        self.dfsoci = df
        return df, E0
##
class fullmatSOCI:
    '''
    Spin-orbit CI calculation using the full matrix (not symmetry blocks)
    For hybrid SO-CI, read values of HLSDIAG from the Molpro file,
       i.e., in this version there is no modification of the SO matrix
    For a single-geometry, single-SOCI calculation
    Also read CASSCF and MRCI results, but without checks
    SO-CI should be run with printing options "vls=0,hls=0"
    May 2022
    '''
    def __init__(self, fpro, hybrid=False, quiet=False, sortval=False,
                 atom=False):
        # 'fpro' is the name of Molpro SO-CI output file
        # if 'hybrid' is True, replace MRCI+Q energies by 
        #   the HLSDIAG() array
        # if 'sortval', sort eigen* by eigenvalues
        # 'atom' is a flag that affects treatment of L**2
        PG = read_point_group(fpro)
        print('Computational group = {:s}'.format(PG))
        # read CASSCF
        caslist, lineno_cas = readMULTI(fpro, PG=PG, linenum=True, atom=atom)
        CAS = caslist[-1]   # assume the last CASSCF to be the relevant one
        CAS.results = relabel_CAS_by_energy(CAS.results)
        print('CASSCF states:')
        for spin, grp in CAS.results.groupby('Spin'):
            print('   {:3d} {:s}'.format(len(grp), spin))
        # read MRCI
        cilist, lineno_ci = readMRCI(fpro, linenum=True)   # probably many
        # 'cilist' is a list of MRCI() objects
        for m in cilist:
            m.transfer_lz(CAS.results, atom=atom)
        mrci = [MRCIstate(row) for m in cilist for (irow, row) in m.results.iterrows()]
        if hybrid:
            # read HLSDIAG vector from file
            print('Replacing MRCI+Q energies by HLSDIAG values')
            hlsdiag = read_hlsdiag(fpro, len(mrci))
            # replace 'dav' values (possibly by themselves)
            for i, ci in enumerate(mrci):
                if not np.isnan(hlsdiag[i]):
                    # a replacement value is available
                    ci.dav = hlsdiag[i]
        # read SO-CI
        soE, lineno_so = readSOenergy(fpro, linenum=True)
        # 'soE' is a list of SOenergy() objects
        dimen = len(soE.results)
        somatbuf, lineno_somat = readSOmatrixBlocks(fpro)
        somatbuf = somatbuf[-1]  # somatbuf starts as list of lists
        SOmat, SObas, basisOK = parse_SOmatrix(somatbuf, dimen)
        # 'SOmat' is a list of complex arrays
        # 'SObas' is a list of triples describing SO basis states
        sovecbuf, lineno_evec = readSOvectorBlocks(fpro)
        # 'sovecbuf' is a list of SOCI text buffers, or complex arrays
        sovecbuf = sovecbuf[-1]  # sovecbuf starts as list of lists
        self.PG = PG  # computational point group
        self.dimen = dimen  # number of states
        self.is_hybrid = hybrid
        # does SObas require repair?
        if len(set(SObas)) != self.dimen:
            #s = '\t{:d} SO states but only {:d} unique basis states'
            #print(s.format(self.dimen, len(set(SObas))))
            SObas = fix_SObasis(SObas, SOmat, mrci)
        self.SOe = soE  # an SOenergy() object
        self.matrix = SOmat  # the matrix
        self.basis = SObas  # the basis: list of tuples ('n.irr', S, Sz)
        # parse out the eigenvectors (although I haven't yet found a use for them)
        if type(sovecbuf) != np.ndarray:
            # parse a text buffer
            self.SOvec = parse_SOvectors(sovecbuf, self.dimen)
        self.cas = CAS  # a MULTI() object
        self.mrci = mrci  # list of MRCIstate() objects
        self.dfci = combineMRCI(cilist)
        # get eigens that correspond to the matrix
        self.map_basis_to_CI()
        self.diagonalize(store=True, vectors=True, sortval=sortval)
        self.props = readSOprops(fpro)
    def diagonalize(self, store=False, vectors=False, sortval=True):
        # compute squared eigenvectors and eigenvalues
        # if 'store' == False, return (vals, vecsq, ciwt) and do not modify attributes
        # if 'store' == True, modify attributes and return nothing
        # if 'vectors' == True, also return (or modify) eigenvectors
        # if 'sortval' = True, sort by real part of eigenvalues
        # also return/store eigenvectors if 'vectors' == True
        eigvals, eigvecs = np.linalg.eigh(self.matrix)
        vals = eigvals.real  # any imaginary part is wrong anyway
        vecsq = np.abs(eigvecs) ** 2  # (c**2)
        if sortval:
            # sort by increasing energy
            idx = np.argsort(vals)
            vals = vals[idx]
            vecsq = vecsq[:, idx]
            vec = eigvecs[:, idx]  # complex-valued
        else:
            vec = eigvecs
        # assign weights to CI states
        ciwt = self.ci_weights(vecsq)
        if store:
            self.vals = vals
            self.vecsq = vecsq
            self.ciwt = ciwt
            if vectors:
                self.vec = vec
            return
        else:
            if vectors:
                return vals, vecsq, ciwt, vec
            else:
                return vals, vecsq, ciwt
    def fill_diagonal(self, ecm):
        # Replace diagonal elements of SO matrix by list 'ecm'
        # 'ecm' should be in cm-1 relative to the ground term
        np.fill_diagonal(self.matrix, ecm)
        return
    def ci_weights(self, vecsq):
        # assign weights to CI states (not SO basis states)
        ciwt = np.zeros([len(self.dfci), self.dimen])  # weights for CI states (not SO basis states)
        for iso, ici in enumerate(self.sob_ici):
            ciwt[ici, :] += vecsq[iso, :]
        return ciwt
    def map_basis_to_CI(self):
        # Determine which MRCI (spatial) state goes with each SO basis (spin) state
        sob_ici = []  # MRCI parent (index into mrci[]) of each SO basis state
        ci_iso = [[] for m in self.mrci]  # SO basis states derived from an MRCI state
        for iso, b in enumerate(self.basis):
            lbl = b[0]  # e.g., '3.1'
            S = b[1]    # spin
            ici = match_spin_label(lbl, S, self.mrci)
            if len(ici) != 1:
                s = f'**** Ambiguous or missing MRCI assignment for SO basis state: {b} {ici}'
                chem.print_err('', s)
            ici = ici[0]
            sob_ici.append(ici)
            try:
                ci_iso[ici].append(iso)
            except:
                # create element (a list)
                ci_iso[ici] = [iso]
        self.sob_ici = sob_ici
        self.ci_iso = ci_iso
        return
    def average_terms(self, cols = ['Term', 'dipZ', 'Edav', 'idx'], 
                      be_close=None, quiet=False, atom=False, always=False):
        # Average pairs of MRCI states into terms, keeping only columns 'cols'
        # Also map basis states to terms
        # Also compute term weights
        dfterm = averageTermsApprox(self.dfci, be_close=be_close, atom=atom,
                quiet=quiet).sort_values('Edav')[cols].reset_index(drop=True)
        dfterm['ecm'] = np.round(((dfterm.Edav - dfterm.Edav.min()) * chem.AU2CM).astype(float), 1)
        # add identifying prefixes to term labels as needed
        dfterm['Term'] = chem.enumerative_prefix(dfterm.Term, always=always)
        self.dfterm = dfterm
        self.nterm = len(dfterm)
        # establish correspondence between terms and SO basis states
        sob_iterm = [None] * self.dimen # Term parent for each SO basis state
        term_iso = []   # SO basis states derived from each term
        for iterm, row in dfterm.iterrows():
            sobl = []
            for ici in row.idx:
                for isob in self.ci_iso[ici]:
                    sobl.append(isob)
                    sob_iterm[isob] = iterm
            term_iso.append(sobl)
        self.sob_iterm = sob_iterm
        self.term_iso = term_iso
        # compute term weight in each state
        self.compute_term_weights()
        # copy modified term labels back into self.dfci
        for irow, row in dfterm.iterrows():
            for ici in row.idx:
                self.dfci.loc[ici, 'Term'] = row.Term
                self.mrci[ici].Term = row.Term
        return dfterm
    def compute_term_weights(self):
        # compute term weights in each state
        termwt = np.zeros([len(self.dfterm), self.dimen])
        for iso, iterm in enumerate(self.sob_iterm):
            termwt[iterm, :] += self.vecsq[iso, :]
        self.termwt = termwt
        return
    def composition_of_state(self, iso, thr=1e-4):
        # return DataFrames showing CI states or terms that contribute at least 'thr' to microstate 'iso'
        ciwt = self.ciwt
        vals = self.vals
        termwt = self.termwt
        dfci = self.dfci.copy()
        dfterm = self.dfterm.copy()
        print('Eso[{:d}] = {:.1f} cm-1'.format(iso, vals[iso]))
        hdr = 'wt_{:02d}'.format(iso)
        dfci[hdr] = ciwt[:, iso]
        dfterm[hdr] = termwt[:, iso]
        dfci = dfci[dfci[hdr] >= thr]
        dfterm = dfterm[dfterm[hdr] >= thr]
        return dfci, dfterm
    def termlabel_index(self, termref):
        # 'termref' can be an index (into self.dfterm) or a value (str)
        # return (term, index) relevent to self.dfterm
        if isinstance(termref, str):
            term = termref
            try:
                iterm = self.dfterm.index[self.dfterm.Term == termref][0]
            except IndexError:
                chem.print_err('', f'Term {termref} not found in list')
        else:
            # assume integer
            term = self.dfterm.loc[termref, 'Term']
            iterm = termref
        return term, iterm
    def state_contributions_from_term(self, termlabel, thr=1.e-4):
        # return DataFrame showing microstates to which specified term contributes at least 'thr'
        # 'termlabel' can be an index (into self.dfterm) or a value (str)
        termwt = self.termwt
        term, iterm = self.termlabel_index(termlabel)
        wts = termwt[iterm, :]
        df = self.SOe.energies.copy()
        df[term] = wts
        df = df[df[term] >= thr]
        return df
    def assign_omega(self, csq_thresh=0.0001, silent=False, ordering='up', 
                     failure='crash', debug=False, props=['<i|z|i>']):
        # if failure=='OK', continue despite failure in Omega assignments
        # include listed properties as available in DataFrame self.props
        dfstates, ok = SO_assign_omega(self.mrci, self.basis, self.SOe, self.vecsq,
                    csq_thresh=csq_thresh, silent=silent, ordering=ordering, 
                    failure=failure, debug=debug)
        # 'dfstates' lists each microstate (there are self.dimen of them)
        # possibly add properties
        for prop in props:
            try:
                propl = []
                for nr in dfstates.Nr:
                    p = self.props.loc[self.props.Nr == nr, prop].values[0]
                    propl.append(p)
                dfstates[prop] = propl
            except:
                pass
        # Average them into (possibly) degenerate levels
        df = average_SO_levels(dfstates, be_same=['Ω'])
        df['Olbl'] = chem.enumerative_prefix([s.split('_')[1] for s in df.label])
        print('SO level (state) counts:')
        solbls = [s.split('_')[1] for s in df.label]
        socounts = Counter(solbls)
        sotot = 0
        for lbl in sorted(socounts):
            v = socounts[lbl]
            if '0' in lbl:
                n = v
            else:
                n = 2 * v
            print(f'\t{lbl}\t{v}\t({n})')
            sotot += n
        nlev = sum([v for k, v in socounts.items()])
        print('{:d} states'.format(sotot))
        print('{:d} levels'.format(nlev))
        if sotot != self.dimen:
            print('**** ERROR: there should be {:d} states, not {:d} ****'.format(self.dimen, sotot))
        # save an explicit mapping of SO states to SO levels
        ilvl = [] # 'ilvl[i]' is the level that includes state 'i'
        for irow, row in df.iterrows():
            for i in range(row.g):
                ilvl.append(irow)
        self.ilvl = ilvl
        # now it can be re-indexed
        #df = df.reset_index(drop=True)
        self.dfmicro = dfstates
        self.dfso = df
        #return df
        return ok
    def index_of_Olbl(self, olbl):
        # return the index of state 'olbl' in self.dfso
        il = self.dfso[self.dfso.Olbl == olbl].index.tolist()
        if len(il) > 1:
            s = '{:d} states share label {:s}'.format(len(il), olbl)
            chem.print_err('', s)
        elif len(il) < 1:
            chem.print_err('', 'no states with label {:s}'.format(olbl))
        else:
            return il[0]
    def composition_of_level(self, ilevel, thr=1.e-4, normalize=False,
                             silent=False):
        # return DataFrames showing CI states or terms that contribute at least 'thr' to level 'ilevel'
        if ilevel not in self.dfso.index:
            chem.print_err('', f'ilevel = {ilevel} is not an index value in the DataFrame \'dfso\'')
        dfci = self.dfci.copy()
        dfterm = self.dfterm.copy()
        ciwt = self.ciwt
        termwt = self.termwt
        eso = self.dfso.loc[ilevel, 'cm-1']
        if not silent:
            print('Eso[{:d}] = {:.1f} cm-1'.format(ilevel, eso))
        hdr = 'wt_{:02d}'.format(ilevel)
        dfci[hdr] = 0
        dfterm[hdr] = 0
        for ist, il in enumerate(self.ilvl):
            if il == ilevel:
                dfci[hdr] += ciwt[:, ist]
                dfterm[hdr] += termwt[:, ist]
        if normalize:
            # make weights sum to 1
            dfci[hdr] /= dfci[hdr].sum()
            dfterm[hdr] /= dfterm[hdr].sum()
        dfci = dfci[dfci[hdr] >= thr]
        dfterm = dfterm[dfterm[hdr] >= thr]
        return dfci, dfterm
    def level_contributions_from_term(self, termlabel, thr=1.e-4, normalize=False):
        # return DataFrame showing levels to which specified term contributes at least 'thr'
        # 'termlabel' can be an index (into self.dfterm) or a value (str)
        dfstate = self.state_contributions_from_term(termlabel=termlabel, thr=-np.inf)
        cols = ['E', 'cm-1', 'Ω', 'label', 'exc', 'g', 'Olbl']
        df = self.dfso[cols].copy()
        term = dfstate.columns.tolist()[-1]
        #iterm = self.dfterm.index[self.dfterm.Term == term][0]
        df[term] = 0
        for ist, il in enumerate(self.ilvl):
            df.loc[il, term] += dfstate.loc[ist, term]
        if normalize:
            # normalize term's contributsion to levels
            df[term] = df[term] / df[term].sum()
        df = df[df[term] >= thr]
        return df
    def ground_term(self):
        # return the label and Edav for the ground term 
        imin = np.argmin(self.dfterm.Edav)
        e = self.dfterm.Edav.iloc[imin]
        label = self.dfterm.Term.iloc[imin]
        return label, e
    def term_energy(self, term, relative=False):
        # given a term label or index, return the averaged MRCI+Q energy
        # if 'relative', use the cm-1 value instead of Edav
        # MRCI+Q energy (or its replacement)
        term, iterm = self.termlabel_index(term)
        e = self.dfterm.Edav.iloc[iterm]
        if relative:
            # convert to cm-1 relative to the ground term
            gterm, e0 = self.ground_term()
            e = (e - e0) * chem.AU2CM
        return e
    def term_counts(self):
        # report the counts of various term symbols (return a DataFrame)
        spins = sorted([chem.spinname(s) for s in set(self.dfci.Spin)])
        cols = ['Σ+', 'Σ-', 'Π', 'Δ', 'Φ', 'Γ', 'H']
        df = pd.DataFrame(columns=['S']+cols)
        df.S = spins
        df.set_index('S', drop=True, inplace=True)
        for S in spins:
            for t in cols:
                s = f'{S}' + t
                subdf = self.dfterm[self.dfterm.Term.str.contains(s, regex=False)]
                if len(subdf):
                    df.loc[S, t] = len(subdf)
        df.dropna(axis=1, how='all', inplace=True)
        df.fillna(0, inplace=True)
        df['all'] = df.sum(axis=1)
        return df
    def assign_atomic_J(self, csq_thresh=0.01, quiet=False):
        '''
        Assume the CASSCF degeneracies are good
        Assume the MRCI degeneracies are damaged
        Assign values of J
        'prefix' will distinguish like term symbols
        Return a DataFrame of SO levels
        This version uses Kmeans clustering based upon energy and
          term composition
        '''
        self.average_terms(quiet=quiet, atom=True)
        self.compute_term_weights()  # assign self.termwt based on self.vecsq
        #dfsoci = self.SOe.results.sort_values('Erel').reset_index(drop=True)  # why was I doing this?
        #dfsoci = self.SOe.results.copy()
        dfsoci = pd.DataFrame({'Nr': range(1,self.dimen+1), 'Eshift': self.vals,
                               'Erel': self.vals - self.vals.min()})
        # For absolute energy, use Molpro value of E0
        dfsoci['E'] = self.SOe.E0 + self.vals / chem.AU2CM
        dfsoci['termwt'] = list(self.termwt.T)
        # Find leading term for each state
        # Also find possible J values based up (L, S);
        #   use intersection of sets from terms heavier than csq_thresh
        leadl = []   # list of leading term for each state
        Jpossl = []  # list of sets
        for iso in range(self.termwt.shape[1]):
            # loop over SO-CI states
            jposs = None
            imax = np.argmax(self.termwt[:, iso])
            leadl.append(self.dfterm.at[imax, 'Term'])
            for iterm in range(self.termwt.shape[0]):
                # loop over averaged terms
                c = self.termwt[iterm, iso]
                if c > csq_thresh:
                    # find possible J values for this term
                    jvals = chem.possible_J_from_term(self.dfterm.loc[iterm, 'Term'])
                    if jposs is None:
                        jposs = set(jvals)
                    else:
                        jposs = jposs.intersection(set(jvals))
            Jpossl.append(frozenset(jposs))
        dfsoci['Lead'] = leadl
        dfsoci['Jposs'] = Jpossl
        dfsoci['J'] = np.nan
        # get list of J values needed
        Jlist = []
        for term in self.dfterm.Term:
            Jvec = chem.possible_J_from_term(term)
            Jlist.extend(Jvec)
        nlevel = len(Jlist)
        nstate = (np.array(Jlist)*2 + 1).sum().astype(int)
        if nstate != len(dfsoci):
            chem.print_err('', 'Expect {:d} SO-CI states but this is room for {:d}'.format(nstate, len(dfsoci)))
        # Create the array to send to the SciKit clustering routine
        # Clusters are based upon energy (mapped onto the interval [0, 1]) and
        #   upon term weights
        X = np.transpose(self.termwt).copy() # term weights within each microstate
        # add another column for relative energy re-scaled to [0, 1] to match the term weights
        xe = dfsoci.Erel.values / dfsoci.Erel.max()
        xe = xe.reshape((-1,1))
        X = np.hstack((X, xe))
        if not quiet:
            print(f'Assigning J using {nlevel} clusters/levels')
        Kmean = KMeans(n_clusters=nlevel)
        Kmean.fit(X)
        Kmean.cluster_centers_
        xmeans = [x[-1] for x in Kmean.cluster_centers_]
        Emeans = np.array(xmeans) * dfsoci.Erel.max()
        dfsoci['ilev'] = Kmean.labels_
        dfsoci['Elev'] = [Emeans[i] for i in Kmean.labels_]
        Jfound = []
        for ilev, grp in dfsoci.groupby('ilev'):
            g = len(grp)
            J = np.round((g-1)/2, 1)
            dfsoci.loc[dfsoci.ilev == ilev, 'J'] = J
            Jfound.append(J)
        # Error checking of assignments
        if Counter(Jfound) != Counter(Jlist):
            print('J values found are not J values expected!')
            print('Expected:', sorted(Counter(Jlist).items()))
            print('Found   :', sorted(Counter(Jfound).items()))
        for irow, row in dfsoci.iterrows():
            if row.J not in row.Jposs:
                print(f'Nr {row.Nr} has J = {row.J} but that is not among possibilities {sorted(row.Jposs)}')
        # Create new DataFrame for levels
        Nr = []  # list of lists
        E_mean = []
        Eshift_mean = []
        Lead = []  # leading term
        J = []
        termwt = []  # list of array
        compos = []  # list of dict
        for ilev, grp in dfsoci.groupby('ilev'):
            Nr.append(sorted(grp.Nr))    
            # use mean energy
            E_mean.append(grp.E.mean())
            Eshift_mean.append(grp.Eshift.mean())
            lterm = set(grp.Lead)
            if len(lterm) > 1:
                chem.print_err('', 'More than one leading term for level {ilev}!', halt=False)
                Lead.append(sorted(lterm))
            else:
                Lead.append(lterm.pop())
            jval = set(grp.J).pop()
            J.append(jval)
            avgwt = grp.termwt.values.mean()  # term weights averaged within the level
            # convert avgwt to dict, using csq_thresh
            dt = {}
            for t, w in zip(self.dfterm.Term, avgwt):
                if w > csq_thresh:
                    dt[t] = chem.round_to_tol(w, csq_thresh)
            termwt.append(avgwt)
            compos.append(dt)
        # create J-including term symbols
        Jlbl = chem.enumerative_prefix([f'{t}_{chem.halves(j)}' for t, j in zip(Lead, J)])
        dflev = pd.DataFrame({'Lead': Lead, 'J': J, 'Jlbl': Jlbl, 'Eshift': Eshift_mean, 'E': E_mean,
                              'Nr': Nr, 'termwt': termwt})
        dflev.insert(3, 'Erel',dflev.Eshift - dflev.Eshift.min())
        dflev.insert(5, 'Composition', compos)
        dflev = dflev.sort_values('Erel').reset_index(drop=True)
        self.dfmicro = dfsoci
        self.dfso = dflev
        return dflev
    def assign_atomic_J_old(self, csq_thresh, quiet=False):
        '''
        Assume the CASSCF degeneracies are good
        Assume the MRCI degeneracies are damaged
        Assign values of J 
        Return a DataFrame of SO levels
        '''
        self.average_terms(quiet=quiet, atom=True)
        self.compute_term_weights()
        dfsoci = self.SOe.results.sort_values('Erel').reset_index(drop=True)
        Jpossl = []  # list of sets
        leadl = []   # list of leading term for each state
        # find leading term for each state
        # Also find possible J values, by set intersection
        for iso in range(self.termwt.shape[1]):
            # loop over SO-CI states
            jposs = None
            imax = np.argmax(self.termwt[:, iso])
            leadl.append(self.dfterm.at[imax, 'Term'])
            for iterm in range(self.termwt.shape[0]):
                # loop over averaged terms
                c = self.termwt[iterm, iso]
                if c > csq_thresh:
                    # find possible J values for this term
                    jvals = chem.possible_J_from_term(self.dfterm.loc[iterm, 'Term'])
                    if jposs is None:
                        jposs = set(jvals)
                    else:
                        jposs = jposs.intersection(set(jvals))
            Jpossl.append(frozenset(jposs))
        dfsoci['Lead'] = leadl
        dfsoci['Jposs'] = Jpossl
        dfsoci['J'] = np.nan
        #display(dfsoci)
        # get list of J values needed
        Jlist = []
        for term in self.dfterm.Term:
            Jvec = chem.possible_J_from_term(term)
            Jlist.extend(Jvec)
        nstate = (np.array(Jlist)*2 + 1).sum().astype(int)
        if nstate != len(dfsoci):
            chem.print_err('', 'Expect {:d} SO-CI states but this is room for {:d}'.format(nstate, len(dfsoci)))
        #print('>>>Jlist =', Jlist)
        
        # First assign J where there is only one possibility
        for i, row in dfsoci.iterrows():
            if len(row.Jposs) == 1:
                dfsoci.at[i, 'J'] = set(row.Jposs).pop()
        #display(dfsoci)
        # delete assigned values from Jlist
        for J, grp in dfsoci.groupby('J'):
            n = np.round(len(grp) / (2*J+1), 1).astype(int) # number of occurences of this J
            for i in range(n):
                Jlist.remove(J)
    
        # assign remaining rows based upon energy, composition similarity and equal Jposs
        k = 0
        while Jlist:
            #print('Still to assign:', Jlist)
            etol = 100 # cm-1
            dtol = 0.1 # JSDM distance
            for jposs, grp in dfsoci.groupby('Jposs'):
                if len(jposs) == 1:
                    # already assigned
                    continue
                #print(jposs)
                df = grp[grp.J.isnull()].copy()
                if not len(df):
                    continue
                # add column for JSDM distance to first termwt vector
                iref = df.index[0]
                eref = df.at[iref, 'Erel']
                dist = [chem.JSdm(self.termwt[:,iref], self.termwt[:,i])[0] for i in df.index]
                df['edif'] = df.Erel - eref
                df['dist'] = dist
                #display(df)
                dfclose = df[(df.edif < etol) & (df.dist < dtol)]
                nclose = len(dfclose)
                J = int(round((nclose-1)/2))
                if J in Jlist:
                    # assign to J
                    dfsoci.loc[dfclose.index, 'J'] = J
                    Jlist.remove(J)
            k += 1
            if k > 5:
                print('Failed to assign all states after 5 attempts')
                break
        nfail = len(dfsoci[dfsoci.J.isnull()])
        if nfail:
            print(f'*** Failed to assign J to {nfail} states ***')
        else:
            print('All states assigned J')
            
        # average into levels
        dflevel = pd.DataFrame(columns=['E', 'Eshift', 'Erel', 'spread_cm-1', 'Lead', 'J', 'Tsymb', 'Jlbl'])
        for lbl, grp in dfsoci.groupby(['Lead', 'J']):
            (term, J) = lbl
            df = grp.sort_values('Erel')
            g = round(2*J + 1)
            for ilev in range( round(len(df)/g) ):
                j = ilev * g
                row = list(df.iloc[j:j+g][['E', 'Eshift', 'Erel']].mean(axis=0))
                spread = np.ptp(df.iloc[j:j+g]['Erel'])
                lead = df['Lead'].iat[j]
                if g % 1:
                    # J is half-integer
                    jlbl = '{:.1f}'.format(J)
                else:
                    # J is integer
                    jlbl = '{:d}'.format(round(J))
                tsymb = '_'.join([lead, jlbl])
                row.extend([spread, lead, J, tsymb, jlbl])
                dflevel.loc[len(dflevel)] = row
        # round some columns to nearest 0.1 cm-1
        for col in ['Eshift', 'Erel', 'spread_cm-1']:
            dflevel[col] = np.round(dflevel[col], 1)
        dflevel['Ecm'] = np.round((dflevel.E - dflevel.E.min()) * chem.AU2CM)
        return dfsoci, dflevel
    def atomic_level_contrib_from_term(self, termlabel, normalize=False):
        # Return a DataFrame showing levels to which specified term contributes
        # 'termlabel' can be an index (into self.dfterm) or a value (str)
        df = self.dfso[['Lead', 'J', 'Jlbl', 'Erel']].copy()
        # find index in self.dfterm
        idx = self.dfterm[self.dfterm.Term == termlabel].index[0]
        weights = []
        for irow, row in self.dfso.iterrows():
            weights.append(row.termwt[idx])
        if normalize:
            weights /= sum(weights)
        df['g'] = (2 * df.J + 1).astype(int)
        df[termlabel] = weights
        return df
    def simp_config_weights(self, nround=4):
        # simplified configuration weights (for use by hybrid_term_energies())
        # sum the squared configuration coefficients for all MRCI states within each term
        # put results into self.dfterm
        # alpha and beta spin are not distinguished
        # values are rounded to 'nround' digits; zeros discarded
        occsimp = {term: {} for term in self.dfterm.Term}
        for term, grp in self.dfci.groupby('Term'):
            # each row is a single MRCI state
            # column "Configs" holds a dict {occvec: coeffs}
            for cdict in grp.Configs:
                for occ, coef in cdict.items():
                    # replace 'a' and 'b' by '1' to ignore spin value
                    occ = occ.replace('a', '1').replace('b', '1')
                    csq = coef**2
                    try:
                        occsimp[term][occ] += csq
                    except KeyError:
                        occsimp[term][occ] = csq
        # sort, round, and remove zeros
        ocol = []
        for term in self.dfterm.Term:
            wts = {}
            for k, v in occsimp[term].items():
                w = np.round(v, nround)
                if w > 0:
                    wts[k] = v
            ocol.append(wts)
        # add to the DataFrame
        self.dfterm['config_wts'] = ocol
        return
    def hybrid_term_energies(self, eccin, version='B', refterm=None):
        '''
        Given a dict 'eccin' of term energies/hartree [probably from CCSD(T)],
          return a DataFrame of old (MRCI+Q) and new term energies
        The new energy of the ground term must be in 'ecc'
        'refterm' is the default anchoring term (ground term if None)
        Version 1: Only replace energies for terms in 'ecc'. Other terms
          are diplaced by the change in ground term, i.e., they are 
          anchored to the ground term.
        Version 2: Replace energies of non-CC terms as weighted average.
          Weights are (1-D**2), where D is the distance to a CC term, viz.,
          one that is defined in 'ecc'.  Distance is the JSDM distance (base 4)
          between the squared occupation coefficients of terms. The
          occupation coefficients are from the MRCI, with spin direction 
          (alpha/beta) ignored and summed over all MRCI states within a term. 
        Version B:  Non-CC terms are anchored to the lowest term of the
          same spin multiplicity. 'refterm' is a dict instead of a scalar.
        '''
        # always convert refterm to a dict, for simplicity below
        if refterm is None:
            if version in [1, 2]:
                # use the ground term (MRCI+Q) as the default anchor
                refterm = self.dfterm.sort_values('Edav').iloc[0]['Term']
                refterm = {'all': refterm}
            if version == 'B':
                # use the lowest term of each spin mult as default anchor
                refterm = {}
                for spinm, grp in self.dfci.groupby('Spin'):
                    elow = grp.sort_values('Edav').iloc[0]['Edav']
                    refterm[chem.spinname(spinm)] = elow
        dfnew = self.dfterm[['Term', 'Edav']].sort_values('Edav').copy()
        if version == 'B': 
            # 'refterm' should be a dict {spinmult: term}
            if not isinstance(refterm, dict):
                chem.print_err('', f'refterm should be dict but = {refterm}')
            # add numerical spin multiplicity as a column in dfnew
            dfnew['spinm'] = dfnew.Term.apply(lambda t: int(chem.SL_from_term(t)[0]*2 + 1))
        if version in [1, 2]:
            # convert refterm to dict
            refterm = {'all': refterm}
        dfnew['Enew'] = np.nan
        dfnew['anchor'] = ''
        termlist = list(dfnew.Term)
        ccterms = []  # list of input terms
        # Term labels may need prefix '(1)'
        ecc = {}  # in case term labels are modified
        for lbl, energy in eccin.items():
            if lbl in termlist:
                k = lbl
            else:
                k = '(1)' + lbl
                if k not in termlist:
                    s = 'CC reference term labels {:s} and {:s} not found'
                    chem.print_err('', s.format(lbl, k))
            ecc[k] = energy
            dfnew.at[dfnew.Term == k, 'Enew'] = energy
            dfnew.at[dfnew.Term == k, 'anchor'] = 'input'
            ccterms.append(k)
            # if needed, adjust name of reference term(s) to match dfnew.Term
            for key in refterm.keys():
                if lbl == refterm[key]:
                    refterm[key] = k
        # energy for the reference term(s) must be supplied
        etransl = {}
        for key, tref in refterm.items():
            iref = dfnew.index[dfnew.Term == tref].tolist()[0]
            if np.isnan(dfnew.at[iref, 'Enew']):
                s = 'Must supply energy for reference term {:s}'
                chem.print_err('', s.format(tref))
            etransl[key] = dfnew.at[iref, 'Enew'] - dfnew.loc[iref, 'Edav']

        if version in [1, 2]:
            etransl = etransl['all']  # convert to scalar
            refterm = refterm['all']
        if version == 1:
            # translate non-input energies by the new energy of the reference term
            for i in dfnew.index:
                if dfnew.at[i, 'anchor'] != 'input':
                    dfnew.at[i, 'Enew'] = dfnew.at[i, 'Edav'] + etransl
                    dfnew.at[i, 'anchor'] = f'shifted with {refterm}'
            # all done
            return dfnew

        if version == 'B':
            # translate non-input energies by new energy of approp. reference term
            for i, row in dfnew.iterrows():
                if row['anchor'] != 'input':
                    spinm = row['spinm']
                    dfnew.at[i, 'Enew'] = dfnew.at[i, 'Edav'] + etransl[spinm]
                    dfnew.at[i, 'anchor'] = f'shifted with {refterm[spinm]}'
            # all done
            return dfnew
            
        # put simplified configuration weights into self.dfterm
        self.simp_config_weights()
        # compute JSDM distances and generate weights (rounded)
        weight = lambda D: np.round((1-D)**2, 4)
        for i, row in self.dfterm.iterrows():
            term = row.Term
            if term in ccterms:
                continue
            # compute distances to CC (input) terms
            wdict = {}
            vec = row.config_wts
            enew = 0
            wsum = 0
            edav = row.Edav
            for tinp in ccterms:
                tvec = self.dfterm[self.dfterm.Term == tinp]['config_wts'].values[0]
                d = chem.JSdm(vec, tvec)[0]  # element [1] is comments
                # convert distance to weight
                w = weight(d)
                if w == 0:
                    continue
                wdict[tinp] = w
                # relative MRCI+Q energy
                eref = dfnew[dfnew.Term == tinp]['Edav'].values[0]
                erel = edav - eref
                # convert to absolute energy by adding reference input energy
                epart = erel + ecc[tinp]
                enew += w * epart
                wsum += w
            if wsum > 0:
                enew /= wsum
                dfnew.at[i, 'anchor'] = wdict
            else:
                # just shift according to reference term
                dfnew.at[i, 'anchor'] = f'shifted with {refterm}'
                enew = edav + etransl
            dfnew.at[i, 'Enew'] = enew
        return dfnew
##
class fullmatSOCI_old:
    '''
    Spin-orbit CI calculation using the full matrix (not symmetry blocks)
    Allows for hybrid and non-hybrid as distinct options
    '''
    def __init__(self, SOe, SOmat, SObas, SOvecbuf, cilist):
        # 'SOe' is a list of SOenergy() objects
        # 'SOmat' is a list of complex arrays
        # 'SObas' is a list of triples describing SO basis states
        # 'SOvecbuf' is a list of SOCI text buffers, or complex arrays
        # 'cilist' is a list of MRCI() objects
        self.dimen = len(SOe.results)  # number of states
        mrci = [MRCIstate(row) for m in cilist for (irow, row) in m.results.iterrows()]
        # does SObas require repair?
        if len(set(SObas)) != self.dimen:
            s = '\t{:d} SO states but only {:d} unique basis states'
            print(s.format(self.dimen, len(set(SObas))))
            SObas = fix_SObasis(SObas, SOmat, mrci)
        self.SOe = SOe  # an SOenergy() object
        self.matrix = SOmat  # the matrix
        self.basis = SObas  # the basis: list of tuples ('n.irr', S, Sz)
        # parse out the eigenvectors (although I haven't yet found a use for them)
        if type(SOvecbuf) != np.ndarray:
            # parse a text buffer
            self.SOvec = parse_SOvectors(SOvecbuf, self.dimen)
        self.mrci = mrci  # list of MRCIstate() objects
        self.dfci = combineMRCI(cilist)
        self.is_hybrid = False
        # get eigens that correspond to the matrix
        self.map_basis_to_CI()
        self.diagonalize(store=True, vectors=True)
    def diagonalize(self, store=False, vectors=False):
        # compute squared eigenvectors and eigenvalues
        # if 'store' == False, return (vals, vecsq, ciwt) and do not modify attributes
        # if 'store' == True, return nothing
        # also return/store eigenvectors if 'vectors' == True
        eigvals, eigvecs = np.linalg.eigh(self.matrix)
        vals = eigvals.real  # any imaginary part is wrong anyway
        vecsq = np.abs(eigvecs) ** 2  # (c**2)
        # sort by increasing energy
        idx = np.argsort(vals)
        vals = vals[idx]
        vecsq = vecsq[:, idx]
        vec = eigvecs[:, idx]  # complex-valued
        # assign weights to CI states
        ciwt = self.ci_weights(vecsq)
        if store:
            self.vals = vals
            self.vecsq = vecsq
            self.ciwt = ciwt
            if vectors:
                self.vec = vec
            return
        else:
            if vectors:
                return vals, vecsq, ciwt, vec
            else:
                return vals, vecsq, ciwt
    def ci_weights(self, vecsq):
        # assign weights to CI states (not SO basis states)
        ciwt = np.zeros([len(self.dfci), self.dimen])  # weights for CI states (not SO basis states)
        for iso, ici in enumerate(self.sob_ici):
            ciwt[ici, :] += vecsq[iso, :]
        return ciwt
    def map_basis_to_CI(self):
        # Determine which MRCI (spatial) state goes with each SO basis (spin) state
        sob_ici = []  # MRCI parent (index into mrci[]) of each SO basis state
        ci_iso = [[] for m in self.mrci]  # SO basis states derived from an MRCI state
        for iso, b in enumerate(self.basis):
            lbl = b[0]  # e.g., '3.1'
            S = b[1]    # spin
            ici = match_spin_label(lbl, S, self.mrci)
            if len(ici) != 1:
                s = f'**** Ambiguous or missing MRCI assignment for SO basis state: {b} {ici}'
                chem.print_err('', s)
            ici = ici[0]
            sob_ici.append(ici)
            try:
                ci_iso[ici].append(iso)
            except:
                # create element (a list)
                ci_iso[ici] = [iso]
        self.sob_ici = sob_ici
        self.ci_iso = ci_iso
        return
    def compute_term_weights(self, hybrid=True):
        # compute term weights in each state
        # If 'hybrid'==False, use plain SO-CI results 
        if hybrid and self.is_hybrid:
            vecsq = self.Bvecsq
        else:
            vecsq = self.vecsq
            hybrid = False
        termwt = np.zeros([len(self.dfterm), self.dimen])
        for iso, iterm in enumerate(self.sob_iterm):
            termwt[iterm, :] += vecsq[iso, :]
        if hybrid:
            self.Btermwt = termwt
        else:
            self.termwt = termwt
        return
    def average_terms(self, cols = ['Term', 'dipZ', 'Edav', 'idx']):
        # Average pairs of MRCI states into terms, keeping only columns 'cols'
        # Also map basis states to terms
        # Also compute term weights
        dfterm = averageTermsApprox(self.dfci).sort_values('Edav')[cols].reset_index(drop=True)
        dfterm['Term'] = chem.enumerative_prefix(dfterm.Term, always=False)  # add identifying prefixes as needed
        dfterm['ecm'] = np.round((dfterm.Edav - dfterm.Edav.min()) * chem.AU2CM, 1)
        self.dfterm = dfterm
        # establish correspondence between terms and SO basis states
        sob_iterm = [None] * self.dimen # Term parent for each SO basis state
        term_iso = []   # SO basis states derived from each term
        for iterm, row in dfterm.iterrows():
            sobl = []
            for ici in row.idx:
                for isob in self.ci_iso[ici]:
                    sobl.append(isob)
                    sob_iterm[isob] = iterm
            term_iso.append(sobl)
        self.sob_iterm =sob_iterm
        self.term_iso = term_iso
        # compute term weight in each state
        self.compute_term_weights()
        # copy modified term labels back into self.dfci
        for irow, row in dfterm.iterrows():
            for ici in row.idx:
                self.dfci.loc[ici, 'Term'] = row.Term
                self.mrci[ici].Term = row.Term
        return dfterm
    def composition_of_state(self, iso, thr=1e-4, hybrid=True):
        # return DataFrames showing CI states or terms that contribute at least 'thr' to microstate 'iso'
        if hybrid and self.is_hybrid:
            ciwt = self.Bciwt
            vals = self.Bvals
            termwt = self.Btermwt
        else:
            ciwt = self.ciwt
            vals = self.vals
            termwt = self.termwt
        dfci = self.dfci.copy()
        dfterm = self.dfterm.copy()
        print('Eso[{:d}] = {:.1f} cm-1'.format(iso, vals[iso]))
        hdr = 'wt_{:02d}'.format(iso)
        dfci[hdr] = ciwt[:, iso]
        dfterm[hdr] = termwt[:, iso]
        dfci = dfci[dfci[hdr] >= thr]
        dfterm = dfterm[dfterm[hdr] >= thr]
        return dfci, dfterm
    def termlabel_index(self, termref):
        # 'termref' can be an index (into self.dfterm) or a value (str)
        # return (term, index) relevent to self.dfterm
        if isinstance(termref, str):
            term = termref
            try:
                iterm = self.dfterm.index[self.dfterm.Term == termref][0]
            except IndexError:
                chem.print_err('', f'Term {termref} not found in list')
        else:
            # assume integer
            term = self.dfterm.loc[termref, 'Term']
            iterm = termref
        return term, iterm
    def state_contributions_from_term(self, termlabel, thr=1.e-4, hybrid=True):
        # return DataFrame showing microstates to which specified term contributes at least 'thr'
        # 'termlabel' can be an index (into self.dfterm) or a value (str)
        if hybrid and self.is_hybrid:
            termwt = self.Btermwt
        else:
            termwt = self.termwt
        term, iterm = self.termlabel_index(termlabel)
        wts = termwt[iterm, :]
        df = self.SOe.energies.copy()
        df[term] = wts
        df = df[df[term] >= thr]
        return df
    def assign_omega(self, csq_thresh=0.0001, silent=False, debug=False):
        dfstates = SO_assign_omega(self.mrci, self.basis, self.SOe, self.vecsq, csq_thresh=csq_thresh,
                           silent=silent, debug=debug)
        # 'dfstates' lists each microstate (there are self.dimen of them)
        # Average them into (possibly) degenerate levels
        # This function is for Molpro (i.e., non-hybrid) results
        df = average_SO_levels(dfstates, be_same=['Ω'])
        df['Olbl'] = chem.enumerative_prefix([s.split('_')[1] for s in df.label])
        print('SO level (state) counts:')
        solbls = [s.split('_')[1] for s in df.label]
        socounts = Counter(solbls)
        sotot = 0
        for lbl in sorted(socounts):
            v = socounts[lbl]
            if '0' in lbl:
                n = v
            else:
                n = 2 * v
            print(f'\t{lbl}\t{v}\t({n})')
            sotot += n
        nlev = sum([v for k, v in socounts.items()])
        print('{:d} states'.format(sotot))
        print('{:d} levels'.format(nlev))
        if sotot != self.dimen:
            print('**** ERROR: there should be {:d} states ****'.format(self.dimen))
        # save an explicit mapping of SO states to SO levels
        ilvl = [] # 'ilvl[i]' is the level that includes state 'i'
        for irow, row in df.iterrows():
            for i in range(row.g):
                ilvl.append(irow)
        self.ilvl = ilvl
        # now it can be re-indexed
        #df = df.reset_index(drop=True)
        self.dfmicro = dfstates
        self.dfso = df
        return df
    def index_of_Olbl(self, olbl):
        # return the index of state 'olbl' in self.dfso
        il = self.dfso[self.dfso.Olbl == olbl].index.tolist()
        if len(il) > 1:
            s = '{:d} states share label {:s}'.format(len(il), olbl)
            chem.print_err('', s)
        elif len(il) < 1:
            chem.print_err('', 'no states with label {:s}'.format(olbl))
        else:
            return il[0]
    def composition_of_level(self, ilevel, thr=1.e-4, hybrid=True,
                             normalize=False):
        # return DataFrames showing CI states or terms that contribute at least 'thr' to level 'ilevel'
        if ilevel not in self.dfso.index:
            chem.print_err('', f'ilevel = {ilevel} is not an index value in the DataFrame \'dfso\'')
        dfci = self.dfci.copy()
        dfterm = self.dfterm.copy()
        if hybrid and self.is_hybrid:
            ciwt = self.Bciwt
            termwt = self.Btermwt
            eso = self.dfso.loc[ilevel, 'hybrid']
        else:
            ciwt = self.ciwt
            termwt = self.termwt
            eso = self.dfso.loc[ilevel, 'cm-1']
        print('Eso[{:d}] = {:.1f} cm-1'.format(ilevel, eso))
        hdr = 'wt_{:02d}'.format(ilevel)
        dfci[hdr] = 0
        dfterm[hdr] = 0
        for ist, il in enumerate(self.ilvl):
            if il == ilevel:
                dfci[hdr] += ciwt[:, ist]
                dfterm[hdr] += termwt[:, ist]
        if normalize:
            # make weights sum to 1
            dfci[hdr] /= dfci[hdr].sum()
            dfterm[hdr] /= dfterm[hdr].sum()
        dfci = dfci[dfci[hdr] >= thr]
        dfterm = dfterm[dfterm[hdr] >= thr]
        return dfci, dfterm
    def level_contributions_from_term(self, termlabel, thr=1.e-4, hybrid=True):
        # return DataFrame showing levels to which specified term contributes at least 'thr'
        # 'termlabel' can be an index (into self.dfterm) or a value (str)
        dfstate = self.state_contributions_from_term(termlabel=termlabel, thr=-np.inf, hybrid=hybrid)
        if hybrid and self.is_hybrid:
            cols = ['Ω', 'label', 'hybrid', 'g', 'Olbl']
        else:
            cols = ['E', 'cm-1', 'Ω', 'label', 'exc', 'g', 'Olbl']
        df = self.dfso[cols].copy()
        term = dfstate.columns.tolist()[-1]
        #iterm = self.dfterm.index[self.dfterm.Term == term][0]
        df[term] = 0
        for ist, il in enumerate(self.ilvl):
            df.loc[il, term] += dfstate.loc[ist, term]
        df = df[df[term] >= thr]
        return df
    def ground_term(self, hybrid=True):
        # return the label and Edav for the ground term 
        if hybrid and self.is_hybrid:
            # use hybrid diagonal energies instead of MRCI+Q
            tlist = list(self.hybrid_diag.keys())
            elist = list(self.hybrid_diag.values())
            e = min(elist)
            label = tlist[elist.index(e)]
        else:
            imin = np.argmin(self.dfterm.Edav)
            e = self.dfterm.Edav.iloc[imin]
            label = self.dfterm.Term.iloc[imin]
        return label, e
    def term_energy(self, term, hybrid=True, relative=False):
        # given a term label or index, return the averaged MRCI+Q energy
        # if 'relative', use the cm-1 value instead of Edav
        if hybrid and self.is_hybrid and term in self.hybrid_diag.keys():
            # return the hybrid (i.e., coupled-cluster) energy
            e = self.hybrid_diag[term]
        else:
            # MRCI+Q energy
            term, iterm = self.termlabel_index(term)
            e = self.dfterm.Edav.iloc[iterm]
        if relative:
            # convert to cm-1 relative to the ground term
            gterm, e0 = self.ground_term(hybrid=hybrid)
            e = (e - e0) * chem.AU2CM
        return e
    def replace_term_diagonals(self, edict, hartree=True):
        '''
        'edict' is a dict of new term energies {term_label: Enew}
        If 'hartree' == True, replace self.SOe.E0 with the energy
          of the lowest term provided, then convert the new
          energies to relative values in cm-1.
          Also replace the absolute energies
        If 'hartree' == False, the input term energies should be
          in cm-1 units, and the smallest new energy should be 0
        If the ground term changes, adjust the whole diagonal
        Store 'edict' as self.hybrid_diag
        '''
        gterm = self.ground_term()[0]
        tlist = list(edict.keys())
        if gterm not in tlist:
            chem.print_err('', f'an energy for the ground term {gterm} is required')
        elist = list(edict.values())
        emin = min(elist)
        tmin = tlist[elist.index(emin)]
        diag = self.matrix.diagonal().copy()
        if tmin != gterm:
            print(f'Changing ground term from {gterm} to {tmin}')
            # whole diagonal must be raised by the new energy of the former ground term
            eshift = edict[gterm] - emin
            if hartree:
                eshift *= chem.AU2CM
            diag += eshift
        if hartree:
            self.SOe.E0 = emin
            elist = [(v - emin) * chem.AU2CM for v in edict.values()]
        elif emin != 0:
            chem.print_err('', f'the ground term {tmin} must be specified at 0 cm-1')
        # display changes in term energies
        df = pd.DataFrame(columns=['Term', 'old', 'new', 'Esort'])
        for term, e in zip(tlist, elist):
            row = [term, self.term_energy(term, relative=True), e,
                   self.term_energy(term, relative=False)]
            df.loc[len(df)] = row
        df['change'] = np.round(df.new - df.old, 1)
        df.old = np.round(df.old, 1)
        df.new = np.round(df.new, 1)
        print('Modifications to relative term energies:')
        # sort by old energies, then remove those energies
        df = df.sort_values('Esort').drop(columns=['Esort'])
        chem.displayDF(df)
        # at last, actually change the appropriate diagonal elements
        for k in edict:
            term, iterm = self.termlabel_index(k)
            ilist = self.term_iso[iterm]
            diag[ilist] = elist.pop(0)
        # install the modified diagonal
        np.fill_diagonal(self.matrix, diag)
        # save the input term energies
        self.hybrid_diag = edict
        self.is_hybrid = True
        return df
    def assign_hybrid_states(self):
        '''
        Using weights and energy information, transfer original assignments
            to corresponding new levels (after modifying diagonal)
            Uses JSDM distance to match old and new (eigvec**2)
            Avoid duplication/omission
        Add results to self.dfmicro and self.dfso
        Also store the new state energies in self.Bvals
        Return: 
            list of indices that sorts the new states into the old order
        '''
        vals, vecsq, ciwt = self.diagonalize(store=False)
        # compute JSDM distances between old and new eigenvectors**2
        jsdist = np.zeros((self.dimen, self.dimen))
        # compute energy differences, too
        ediff = np.zeros((self.dimen, self.dimen))
        for iold in range(self.dimen):
            oldwt = self.vecsq[:, iold]
            for jnew in range(self.dimen):
                newwt = vecsq[:, jnew]
                jsdist[iold, jnew] = chem.JSdm(oldwt, newwt)[0]
                ediff[iold, jnew] = vals[jnew] - self.vals[iold]
        idx = np.argmin(jsdist, axis=0).tolist()  # within each column, index of smallest value
        lost = list(set(range(self.dimen)) - set(idx))
        iloop = 0
        while lost and (iloop < 4):
            # some states were not assigned
            print('*** I lost {:d} states'.format(len(lost)), lost)
            duplicated = list(set([i for i in idx if idx.count(i) > 1]))
            print('duplicated assignments:', duplicated)
            for iold in duplicated:
                jdx = np.argwhere(np.array(idx) == iold).flatten()
                print('i = {:d} assigned to j = '.format(iold), jdx, 'with dist =', 
                      np.round(jsdist[iold, jdx], 3), 'and ediff =', np.round(ediff[iold, jdx], 0))
                kworst = np.argmax(jsdist[iold, jdx])  # worse/worst assignment
                jworst = jdx[kworst]
                print(f'\tworst is {jworst}')
                # jworst is the worst alternative to assign to iold
                ibetter = lost[np.argmin(jsdist[lost, jworst])]
                print('reassigning i = {:d} to j = {:d} with dist = {:.3f} and ediff = {:.0f}'.format(ibetter,
                                    jworst, jsdist[ibetter, jworst], ediff[ibetter, jworst]))
                idx[jworst] = ibetter
                lost.remove(ibetter)
            iloop += 1
            if not lost:
                break
        if lost:
            print('*** still have unassigned states ***', lost)
            return idx

        enew = np.zeros(self.dimen)
        for iold, jmin in enumerate(idx):
            enew[iold] = vals[jmin]
        self.Bvals = enew
        self.dfmicro['hybrid'] = enew
        self.dfmicro['change'] = np.round(enew - self.dfmicro['cm-1'], 1)
        # add to self.dfso
        self.dfso['hybrid'] = 0
        for ist, ilv in enumerate(self.ilvl):
            self.dfso.loc[ilv, 'hybrid'] += self.dfmicro.loc[ist, 'hybrid']
        self.dfso.hybrid /= self.dfso.g
        self.dfso['change'] = np.round(self.dfso.hybrid - self.dfso['cm-1'], 1)
        # adjust the absolute energies to match the installed diagonal
        self.dfso['E'] = self.SOe.E0 + self.dfso.hybrid / chem.AU2CM
        for col in ['hybrid', 'cm-1', 'exc']:
            self.dfso[col] = np.round(self.dfso[col], 1)
        return idx
    def assign_hybrid_states_old(self):
        '''
        Using weights information, transfer original assignments to
            corresponding new levels (after modifying diagonal)
            Uses JSDM distance to match old and new (eigvec**2)
            Avoid duplication/omission
        Add results to self.dfmicro and self.dfso
        Also store the new state energies in self.Bvals
        Return: 
            list of indices that sorts the new states into the old order
        '''
        vals, vecsq, ciwt = self.diagonalize(store=False)
        idx = []
        enew = np.zeros(self.dimen)
        for iold in range(self.dimen):
            oldwt = self.vecsq[:, iold]
            jmin = iold
            dmin = np.inf
            for jnew in range(self.dimen):
                dist = chem.JSdm(oldwt, vecsq[:, jnew])[0]
                if dist < dmin:
                    dmin = dist
                    jmin = jnew
            idx.append(jmin)
        lost = set(range(self.dimen)) - set(idx)
        if lost:
            # some states were not assigned
            print('*** I lost {:d} states'.format(len(lost)), lost)
            for i in set(idx):
                if idx.count(i) > 1:
                    pos = [j for j, x in enumerate(idx) if x == i]
                    print(f'\tidx = {i} at positions', pos, end=' ')
                    deltas = np.round([vals[j]-self.vals[i] for j in pos],1)
                    print('with deltas =', deltas)
                    jsort = np.argsort(-np.abs(deltas)) # largest energy difference first
                    for j in jsort:
                        k = pos[j]
                        if k in lost:
                            # assign this (index unchanged from original)
                            idx[k] = k
                            lost.remove(k)
                            break
            if len(lost) == 1:
                # one state still unassigned
                # assign it to the duplicate with the bigger energy change
                k = pos[0]
                idx[k] = lost.pop()
            if lost:
                print('*** still have unassigned states', lost)
        for iold, jmin in enumerate(idx):
            enew[iold] = vals[jmin]
        self.Bvals = enew
        self.dfmicro['hybrid'] = enew
        self.dfmicro['change'] = np.round(enew - self.dfmicro['cm-1'], 1)
        # add to self.dfso
        self.dfso['hybrid'] = 0
        for ist, ilv in enumerate(self.ilvl):
            self.dfso.loc[ilv, 'hybrid'] += self.dfmicro.loc[ist, 'hybrid']
        self.dfso.hybrid /= self.dfso.g
        self.dfso['change'] = np.round(self.dfso.hybrid - self.dfso['cm-1'], 1)
        # adjust the absolute energies to match the installed diagonal
        self.dfso['E'] = self.SOe.E0 + self.dfso.hybrid / chem.AU2CM
        for col in ['hybrid', 'cm-1', 'exc']:
            self.dfso[col] = np.round(self.dfso[col], 1)
        return idx
    def hybrid_weights(self, idx):
        '''
        Argument 'idx' is from assign_hybrid_states() and sorts new states
        Create new attributes with weights that are consistent with
            current matrix but sorted into the old order:
            self.Bvecsq, self.Bciwt
        '''
        if not self.is_hybrid:
            chem.print_err('', 'no hybride data--do nothing')
            return
        vals, vecsq, ciwt = self.diagonalize(store=False)
        Bvecsq = np.zeros_like(vecsq)
        for i, j in enumerate(idx):
            Bvecsq[:, i] = vecsq[:, j]
        self.Bvecsq = Bvecsq
        self.Bciwt = self.ci_weights(Bvecsq)
        self.compute_term_weights()
        return
    def term_counts(self):
        # report the counts of various term symbols (return a DataFrame)
        spins = sorted([chem.spinname(s) for s in set(self.dfci.Spin)])
        cols = ['Σ+', 'Σ-', 'Π', 'Δ', 'Φ', 'Γ', 'H']
        df = pd.DataFrame(columns=['S']+cols)
        df.S = spins
        df.set_index('S', drop=True, inplace=True)
        for S in spins:
            for t in cols:
                s = f'{S}' + t
                subdf = self.dfterm[self.dfterm.Term.str.contains(s, regex=False)]
                if len(subdf):
                    df.loc[S, t] = len(subdf)
        df.dropna(axis=1, how='all', inplace=True)
        df.fillna(0, inplace=True)
        df['all'] = df.sum(axis=1)
        return df
##
##
def molpro_version(fpro):
    # read output file; return a string describing the version of Molpro
    rx = re.compile('^\s+Version (.*) linked')
    vers = 'unknown'
    with open(fpro) as F:
        for line in F:
            m = rx.match(line)
            if m:
                vers = m.group(1)
    return vers
##
def read_hlsdiag(fpro, nci):
    # return array with values of HLSDIAG (for SO-CI)
    hlsdiag = np.zeros(nci) + np.nan
    #rx_hls = re.compile('\s*SETTING HLSDIAG\((\d+)\)\s+=\s+([-]\d+\.\d+)')
    rx_hls = re.compile('\s*SETTING HLSDIAG\((\d+)\)\s+=\s+')
    with open(fpro) as F:
        for line in F:
            m = rx_hls.match(line)
            if m:
                i = int(m.group(1))
                #e = float(m.group(2))
                e = float(line.split()[3].replace('D', 'E'))
                hlsdiag[i-1] = e
    return hlsdiag
##
def soci_recalculate(socis, cilist, combine=False, debug=False):
    # 'socis' is a list of SOCI() objects (different irreps)
    # 'cilist' is a list of associated MRCI() objects
    # recalculate energies (e.g., after modifying diagonals)
    # return a DataFrame including all irreps
    # if 'combine' is True, average degenerate pairs
    # March 2022
    nfail = assign_omegas(socis, cilist, debug=debug)
    if nfail > 0:
        chem.print_err('', '{:d} SO states remain unassigned'.format(nfail),
                       halt=False)
    dflist = []
    for soci in socis:
        df, E0 = soci.summarize()
        df['irrep'] = soci.irrep
        dflist.append(df)
    dfall = pd.concat(dflist, ignore_index=True)
    # add a new column for excitation energies
    dfall['exc'] = (dfall.E - dfall.E.min()) * chem.AU2CM
    # round to nearest 0.1 cm-1
    dfall.exc = np.round(dfall.exc, 1)
    if combine:
        dfavg = soci_combine_levels(dfall)
        return dfavg
    else:
        return dfall
##
def soci_combine_levels(dfsoci, tol=1.e-5):
    # combine pairs of (nearly) degenerate SO states into levels
    # 'etol' is energy tolerance for sameness
    # 'dfsoci' as created by soci_recalculate()
    # Omega is a string (not int)
    # return a DataFrame with the combined levels
    # March 2022
    dfret = pd.DataFrame(columns = dfsoci.columns)
    grps = dfsoci.sort_values('E').groupby('Ω')
    to_avg = ['cm-1', 'exc', 'E']  # columns to be averaged within each pair of states
    to_add = ['termwts'] # sum instead of average
    to_join = ['irrep']  # keep both values in pair
    to_merge = ['lead', 'Olbl']  # keep both values only if different
    for lbl, grp in grps:
        if '0' in lbl:
            # omega = 0+ or 0- is non-degenerate
            dfret = pd.concat([dfret, grp])
            continue
        # group into consecutive pair
        for i in range(len(grp) // 2):
            subdf = grp.iloc[2*i:]
            d = subdf.iloc[:2].copy()  # one pair
            d['g'] = 2  # degeneracy
            row = d.iloc[0].copy()
            for col in to_avg:
                row[col] = d[col].mean()
            diff = np.ptp(d['E'])
            if diff > tol:
                s = 'Energy difference of {:.1e} exceeds tolerance of {:.1e} for this pair:'
                print(s.format(diff, tol))
                print(d)
            for col in to_add:
                row[col] = d[col].sum()
            for col in to_join:
                row[col] = d[col].values
            for col in to_merge:
                row[col] = set(d[col].values)
                if len(row[col]) == 1:
                    row[col] = row[col].pop()
            dfret = dfret.append(row)    
    return dfret
##
def assign_omegas(socis, cilist, silent=False, debug=False):
    # given a list of SOCI() objects, and a list of associated MRCI() objects,
    #   assign values of omega using information about all irreps
    #   results are stored in SOCI().Omega attribute as list of str (change from int)
    #     but unassigned states have set instead of str
    # return the number of unassigned states
    # March 2022
    for soci in socis:
        # consider composition alone
        soci.assign_MRCI_basis(cilist)
        omtarget = soci.assign_omega(debug=debug)  # 'omtarget' is across all irreps
    if not silent:
        print('Required omega counts:')
        chem.print_dict(omtarget, sort=True)
    # count actuals (so far)
    omtally = {k: 0 for k in omtarget.keys()}
    for soci in socis:
        for omset in soci.Omega:
            if len(omset) == 1:
                # clear assignment
                omtally[next(iter(omset))] += 1
    # subtract assignments already completed
    omneeded = {}
    for k in omtarget.keys():
        omneeded[k] = omtarget[k] - omtally[k]
    if debug:
        print('Remaining:')
        chem.print_dict(omneeded, sort=True)
    nneed = 0
    for k, v in omneeded.items():
        if v < 0:
            chem.print_err('', f'Overcounting for omega = {k}: {omtally[k]} exceeds {omtarget[k]}')
        if v == 0:
            # fully counted; eliminate this omega as a further possibility
            if debug:
                print(f'Omega = {k} is fully assigned; eliminate as further possibility')
            for soci in socis:
                for omset in soci.Omega:
                    if (len(omset) > 1) and (k in omset):
                        omset.discard(k)
                        if debug:
                            print(f'\teliminating {k} leaves {omset}')
                        if len(omset) == 1:
                            # another assignment
                            a = next(iter(omset))
                            omneeded[a] -= 1
                            if debug:
                                print(f'\tdecrementing omneeded[{a}] to value {omneeded[a]}')
        if omneeded[k] < 0:
            chem.print_err('', f'Overcounting for omega = {k}')
    nneed = 0
    for k, v in omneeded.items():
        nneed += v
    if debug:
        print('Needed after elimination:')
        chem.print_dict(omneeded, sort=True)
    if not silent:
        if nneed == 0:
            print('Omega assignments complete')
        else:
            print(f'** {nneed} states remain unassigned **')
    # add +/- parity to 0 states based upon irrep (1: +, 4: -) assuming C2v
    for soci in socis:
        if (soci.PG == 'c2v'):
            lbls = {1: '0+', 2: '0?', 3: '0?', 4: '0-'}  # labels for omega=0
            lbl0 = lbls[soci.irrep]
            for istate, omset in enumerate(soci.Omega):
                newlbls = []
                for om in omset:
                    if om == 0:
                        newlbls.append(lbl0)
                    else:
                        newlbls.append(f'{om}')
                if len(newlbls) > 1:
                    # unassigned; store as set
                    soci.Omega[istate] = set(newlbls)
                else:
                    # assigned; store as str
                    soci.Omega[istate] = newlbls[0]
        elif not silent:
            print(f'Cannot assign 0-parity in point group {soci.PG}')
        soci.summarize()  # create summary DataFrame
    return nneed
##
def report_SOC(socis, target_states, tol=1.e-5, nround=0):
    # 'target_states' is a list of symbols ('Olbl') for states of interest
    # return a DataFrame with differences relative to parent terms
    # 'nround' is the rounding desired for cm-1 values
    # March 2022
    e_state = {state: [] for state in target_states}
    for soci in socis:
        subdf = soci.dfsoci[soci.dfsoci.Olbl.isin(target_states)]
        if len(subdf):
            # one match at most
            state = subdf.Olbl.iloc[0]
            e_state[state].append(subdf.E.iloc[0])
    for s, e in e_state.items():
        # check for inconsistent energies; average
        diff = np.ptp(e)
        if abs(diff) > tol:
            print('Difference of {:.1e} exceeds tolerance {:.1e} for {:s}'.format(diff, tol, s))
        e_state[s] = np.mean(e)
    # terms
    target_terms = [s.split('_')[0] for s in target_states]
    descr = {t: soci.refE for t in target_terms}
    e_term = {}
    for t in target_terms:
        subdf = soci.dfterm[soci.dfterm.Term == t]
        if len(subdf):
            # one match at most
            e_term[t] = subdf[descr[t]].iloc[0]
    # check for superseding hybrid energies
    if soci.hybrid:
        for t in target_terms:
            if t in soci.newterm.keys():
                # replace the term energy
                e_term[t] = soci.E0 + soci.newterm[t] / chem.AU2CM
                descr[t] = soci.hybrid_descr[t]
    # prepare the table (cm-1, rounded)
    df = pd.DataFrame(columns=target_terms, index=['descr'] + target_states)
    df.loc['descr'] = [descr[t] for t in target_terms]
    for state in target_states:
        df.loc[state] = np.round([(e_state[state] - e_term[t]) * chem.AU2CM for t in target_terms], nround)
    return df
##
def read_coordinates(fname, linenum=False):
    # return a DataFrame of coordinates
    # return a list of DF if there are multiple coordinates
    # If linenum == True, also return a list of corresponding line numbers
    rx_coord = re.compile('ATOMIC COORDINATES')
    rx_data = re.compile(r'^\s*\d+\s+[A-Z]+\s+\d+\.\d\d\s+[-]?\d+\.\d+\s+[-]?\d+\.\d+\s+[-]?\d+\.\d+')
    rx_blank = re.compile('^\s*$')
    dflist = []
    lineno = []
    cols = ['Z', 'x', 'y', 'z']
    incoord = False
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            if incoord:
                if (rx_blank.match(line) and (len(df) > 0)):
                    incoord = False
                    dflist.append(df)
                if rx_data.match(line):
                    w = line.split()
                    row = [w[1], float(w[3]), float(w[4]), float(w[5])]
                    df.loc[len(df)] = row
            else:
                if rx_coord.search(line):
                    incoord = True
                    df = pd.DataFrame(columns=cols)
                    lineno.append(lno)
    if len(dflist) == 1:
        if linenum:
            return dflist[0], lineno[0]
        else:
            return dflist[0]
    else:
        if linenum:
            return dflist, lineno
        else:
            return dflist
##
def read_compgroup(fpro):
    regex = re.compile(' Point group\s+\S+')
    # return the first match
    # This is the computational point group;
    #   the actual molecular point group may be higher
    with open(fpro, 'r') as F:
        for line in F:
            if regex.match(line):
                pg = line.split()[-1]
                return pg
##
def read_rotational(fname, linenum=False):
    # return rotational constants (GHz; using avg atomic masses)
    # return a list of list if there are multiple coordinates
    # If linenum == True, also return a list of corresponding line numbers
    rx_rot = re.compile(r' Rotational constants:  ')
    llist = []
    lineno = []
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            if rx_rot.match(line):
                ghz = [float(x) for x in line.split()[2:5]]
                llist.append(ghz)
                lineno.append(lno)
    if len(llist) < 2:
        # return simple list / scalar linenumber
        llist = llist[0]
        lineno = lineno[0]
    if linenum:
        return llist, lineno
    else:
        return llist
##
def read_harmonic_freqs(fname):
    '''
    Returns:
        modenums:  (list) mode numbers, except zero/low nums are negated
        irreps:  (list) labels as printed
        intenss:  (list) intensities in km/mol
        vecs:  (np.array) mode vectors; vecs[i,:] for i_th mode
    '''
    re_normode = re.compile(r' Normal Modes\s*$')
    # include the "low/zero" frequencies
    re_endnm = re.compile(r' Frequencies dumped| Zero point energy')
    re_irreps = re.compile(r'\s+(\d+\s+\S*)+')
    re_vecs = re.compile(r'\s+[A-Z]+[X-Z]\d+\s+[-]?\d+\.\d+')
    modenums = []
    irreps = []
    wavenums = []
    intenss = []  # km/mol
    vecs = {}  # vector components; key is coordinate description
    cdescr = []  # the coordinates descriptions (list to preserve order)
    in_NM = False
    with open(fname, 'r') as FPRO:
        for line in FPRO:
            if re_endnm.match(line):
                in_NM = False
            if in_NM:
                # read data
                words = line.split()
                m = re_irreps.match(line)
                if m:
                    for i, w in enumerate(words):
                        if re.match('\d+', w):
                            # plain number
                            modenums.append(int(w))
                        else:
                            # irrep label
                            irreps.append(w)
                elif 'Wavenumbers' in line:
                    wavenums += [float(x) for x in words[2:]]
                elif 'km/mol' in line:
                    intenss += [float(x) for x in words[2:]]
                elif re_vecs.match(line):
                    descr = words[0]
                    if descr not in cdescr:
                        cdescr.append(descr)
                    vecs[descr] = vecs.get(descr, []) + words[1:]
            if re_normode.match(line):
                in_NM = True
    # low/zero-freq modes are numbered starting from 1: change sign of their numbers
    modenums = np.array(modenums)
    nz = len(modenums) - len(irreps)
    modenums[-nz:] *= -1
    # low/zero-freq modes lack irrep labels
    irreps += [''] * nz
    # convert vectors to floats and reshape: vecs[i,:] is for i_th normal mode
    vecs = [vecs[descr] for descr in cdescr]
    vecs = np.array(vecs, dtype='float').T
    return modenums, irreps, intenss, vecs
##
def readMULTI(fname, linenum=False, PG=None, parity=True, atom=False):
    # return a list of MULTI objects from a MOLPRO output file
    # If linenum == True, also return a list of line numbers
    # 'PG' is the name of the point group (optional)
    # 'atom' is a flag
    rx_multi = re.compile(r'[ 1]PROGRAM \* MULTI \(Direct Multiconfiguration SCF\)')
    rx_end = re.compile(r' [*]{80}')
    retval = []
    casbuf = []
    lineno = []
    inMULTI = False
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            if inMULTI:
                casbuf.append(line.rstrip())
                if rx_end.match(line):
                    inMULTI = False
                    # create the MULTI object
                    retval.append(MULTI(casbuf, PG=PG, parity=parity, atom=atom))
            if rx_multi.match(line):
                inMULTI = True
                casbuf = [line.rstrip()]
                lineno.append(lno)
    if linenum:
        return retval, lineno
    else:
        return retval
##
def relabel_CAS_by_energy(casdf):
    # re-label CASSCF states to be ordered by energy
    # this is needed when the states are in some other order, such as following
    #   an LQUANT vector
    tdf = casdf.copy()
    for (spinmult, irrep), grp in tdf.groupby(['Spin', 'Irrep']):
        gdf = grp.copy().sort_values('Energy')
        for k, i in enumerate(gdf.index):
            tdf.at[i, 'Label'] = '{:d}.{:d}'.format(k+1, irrep)
    return tdf
##
def readMRCI(fname, linenum=False):
    # return a list of MRCI objects
    # If linenum==True, also return a list of line numbers
    rx_ci = re.compile(r'[ 1]PROGRAM \* CI \(Multireference internally contracted CI\)')
    rx_so = re.compile(r'\*\*\* Spin-orbit calculation \*\*\*')
    rx_end = re.compile(r' [*]{80}')
    inci = False
    retval = []
    cibuf = []
    lineno = []
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            if inci:
                cibuf.append(line.rstrip())
                if rx_so.search(line):
                    # This is SO-CI, a different case
                    inci = False
                    cibuf = []
                    lineno.pop()
                if rx_end.match(line):
                    inci = False
                    # create the MRCI object
                    retval.append(MRCI(cibuf))
            if rx_ci.match(line):
                inci = True
                cibuf = [line.rstrip()]
                lineno.append(lno)
    if linenum:
        return retval, lineno
    else:
        return retval
##
def combineMRCI(MRCIlist):
    # given a list of MRCI objects, return a DataFrame with all their info
    dtemp = []
    for i, ci in enumerate(MRCIlist):
        d = ci.results.copy()
        d.insert(0, 'Group', i+1)
        dtemp.append(d)
    df = pd.concat(dtemp, ignore_index=True)
    return df
##
def average_SO_levels(dfdups, be_close='E', tol=1.e-5, be_same=['Ω', 'term', 'label'],
                        to_avg = ['E', 'cm-1', 'exc']):
    '''
    Identify degenerate spin-orbit levels (differences in column 'be_close' less than 'tol')
    Return a DataFrame without duplications and including degeneracies (column 'g')
    Average columns listed in 'to_avg'
    Columns in 'be_same' must be identical to be considered as degenerate
    '''
    if 'Ω' not in be_same:
        print('"Ω" is a required column in this routine.  Calling "xxxaverage_SO_levels" instead!')
        df = xxxaverage_SO_levels(dfdups, be_close=be_close, tol=tol, be_same=be_same, to_avg=to_avg)
        #return df
    df = pd.DataFrame(index=list(dfdups.columns)+['g']).T
    if 'Nr' in df.columns:
        df.Nr = df.Nr.astype(object)
    grps = dfdups.sort_values(be_close).groupby(be_same)
    for lbl, grp in grps:
        om = set(grp.Ω).pop()  # there should be only one value
        if om < 0.1:
            # Omega = 0 is non-degenerate; just add it to the return DataFrame
            d = grp.copy()
            d['g'] = 1  # degeneracy = 1
            if 'Nr' in d.columns:
                d.Nr.iloc[0] = [list(d.Nr)]
            df = pd.concat([df, d], ignore_index=False)
        else:
            # doubly degenerate; group into pairs
            npair = len(grp) // 2
            for i in range(npair):
                subdf = grp.iloc[2*i:]
                d = subdf.iloc[:2].copy()
                d['g'] = 2  # degeneracy = 2
                row = d.iloc[[0]].copy()
                if 'Nr' in d.columns:
                    row['Nr'] = [list(d.Nr)]
                for col in to_avg:
                    row[col] = d[col].mean()
                diff = np.ptp(d[be_close])
                if diff > tol:
                    s = 'Difference in {:s} of {:.1e} exceeds desired tolerance of {:.1e} for this pair:'
                    print(s.format(be_close, diff, tol))
                    print(d)
                #df.loc[len(df)] = row
                df = pd.concat([df, row])
    df['g'] = df.g.astype(int)
    df = df.sort_values(be_close)
    return df
##
def xxxaverage_SO_levels(dfdups, be_close='E', tol=1.e-5, be_same=['Ω', 'term', 'label'],
                        to_avg = ['E', 'cm-1', 'exc']):
    '''
    Identify degenerate spin-orbit levels (differences in column 'be_close' less than 'tol')
    Return a DataFrame without duplications and including degeneracies (column 'g')
    Average columns listed in 'to_avg'
    Columns in 'be_same' must be identical to be considered as degenerate
    CAN FAIL WHEN TOLERANCE IS EXCEEDED
    '''
    dfdups["Ediff"] = dfdups.sort_values(be_close)\
                         .groupby(be_same)[be_close]\
                         .diff()\
                         .gt(tol)\
                         .cumsum()
    df = pd.DataFrame(index=dfdups.columns).T
    for g, d in dfdups.groupby(be_same + ['Ediff']):
        row = d.iloc[0].copy()
        for col in to_avg:
            row[col] = d[col].mean()
        row['g'] = len(d)  # degeneracy
        df = df.append(row)
    df.sort_values(be_close, inplace=True)
    df = df.drop(columns='Ediff').reset_index(drop=True)
    return df
##
def averageTerms(dfci, be_close=None, target=None, be_same=None, quiet=False):
    '''
    Given a DataFrame of MULTI or MRCI results, identify and average
      degenerate levels.
    Return a smaller DataFrame with (term) averages
    'be_close' is a list of quantities that must agree to 'target'
    'target' is desire for how close 'be_close' items agree
    'be_same' is a list of quantities that must be equal
    The alternative 'averageTermsApprox()' may be better
    '''
    if be_close is None:
        # defaults appropriate for MRCI or MCSCF with term labels already assigned
        be_close = ['Energy', 'Edav', 'Dipole', 'LzLz', 'dipX', 'dipY', 'dipZ', 'Eref', 'C0']
        target =   [ 1.e-5,    1.e-5,  1.e-4,    1.e-4,  1.e-4,  1.e-4,  1.e-4,  1.e-4,  1.e-4]
    criteria = zip(be_close, target)
    if be_same is None:
        be_same = ['Spin', 'Term']
    dfret = pd.DataFrame(columns=dfci.columns)
    badcol = []  # list of columns to delete from the return DF
    for g, d in dfci.groupby(be_same):
        ds = d.sort_values(be_close[0])
        rowlist = [row for (i, row) in ds.iterrows()]
        while len(rowlist) > 0:
            n = len(rowlist)
            # compare all other rows with the first row
            used = [0]
            for j in range(1,n):
                ok = True
                for col, targ in criteria:
                    try:
                        diff = abs(rowlist[j][col] - rowlist[0][col])
                        if diff > targ:
                            # not a match
                            ok = False
                            continue
                        if diff > targ:
                            if not quiet:
                                chem.print_err('Marginal agreement on {:s}'.format(col), halt=False)
                    except:
                        # probably missing column
                        pass
                    if not ok:
                        # stop checking 
                        break
                if ok:
                    # this row is a match
                    # mark any mismatching columns for deletion
                    for k, v in rowlist[0].iteritems():
                        if (k in be_close) or (k in be_same):
                            continue
                        if v != rowlist[j][k]:
                            badcol.append(k)
                    used.append(j)
            # average values
            for col in be_close:
                try:
                    rowlist[0][col] = np.mean([rowlist[j][col] for j in used])
                except:
                    # missing quantity
                    pass
            dfret = dfret.append(rowlist[0], ignore_index=True)
            # remove used rows from list
            for j in reversed(used):
                del rowlist[j]
        # remove bad columns
        dfret.drop(badcol, axis=1, inplace=True)
    return dfret
##
def averageTermsApprox(dfci, be_close=None, target=None, be_same=None, 
                       quiet=False, atom=False):
    '''
    Given a DataFrame of MULTI or MRCI results, identify and average
      degenerate levels. Crude degeneracies are noted unless 'quiet'. 
    Return a smaller DataFrame with (term) averages
    'be_close' is a list of quantities that should be close
    'target' is the wish for how close 'be_close' items would agree
    'be_same' is a list of quantities that must be equal
    '''
    if be_close is None:
        # defaults appropriate for MRCI or MCSCF with term labels already assigned
        #be_close = ['Energy', 'Edav', 'Dipole', 'LzLz', 'dipX', 'dipY', 'dipZ', 'Eref', 'C0']
        be_close = ['Energy', 'Edav', 'Dipole', 'Lz', 'dipX', 'dipY', 'dipZ', 'Eref', 'C0']
        target =   [ 1.e-5,    1.e-5,  1.e-4,    1.e-4,  1.e-4,  1.e-4,  1.e-4,  1.e-4,  1.e-4]
        if atom:
            # don't consider Lz in deciding degeneracy
            target[3] = np.inf
    #wishes = zip(be_close, target)
    wishes = pd.Series(target, be_close)
    degen = {'Σ': 1, 'Π': 2, 'Δ': 2, 'Φ': 2, 'Γ': 2,  # linear molecules; 'H' will be annoying
             'S': 1, 'P': 3, 'D': 5, 'F': 7, 'G': 9, 'H': 11}  # atoms
    if be_same is None:
        be_same = ['Spin', 'Term']
    try:
        iterm = be_same.index('Term')
    except ValueError:
        chem.print_err('', '"Term" must be includeded in "be_close"')
    dfret = pd.DataFrame(columns=be_same + be_close + ['idx'])
    for grp, gdf in dfci.groupby(be_same):
        ds = gdf.sort_values(be_close[iterm])
        for k, v in degen.items():
            if k in grp[1]:
                g = v  # expected degeneracy 
        if len(gdf) % g != 0:
            print('*** There are {:d} states but degeneracy should be {:d} for {}'.format(len(gdf), g, grp))
        # force degeneracies based upon consecutive energy
        for iavg in range(len(gdf) // g):
            j = g * iavg
            subdf = ds.iloc[j:j+g].copy()  # will be degenerated
             # delete irrelevant columns
            subdf = subdf[be_same + be_close]
            idx = subdf.index.values  # the indices of the MRCI states being averaged
            rowavg = subdf[be_close].mean()
            rowdiff = subdf[be_close].max() - subdf[be_close].min()
            exceeds = (rowdiff > wishes)
            if exceeds.any() and not quiet:
                for col in be_same:
                    rowdiff[col] = '--'
                subdf = pd.concat([subdf, rowdiff.to_frame().T], ignore_index=True)
                #subdf = subdf.append(rowdiff, ignore_index=True)
                print('large non-degeneracies in term energies:')
                chem.displayDF(subdf)
            newrow = pd.concat((subdf.iloc[0][be_same], rowavg, pd.Series({'idx': idx})))
            dfret.loc[len(dfret)] = newrow
    return dfret
##
def readSOenergy(fname, recalc=False, linenum=False):
    # return an SOenergy object, or a list of them
    # if recalc==True, then re-calculate the wavenumber quantities from
    #    the hartree energies 
    # If linenum == True, also return line number(s)
    # Probably need "hls=0" in the SO-CI print parameters to have E0 printed
    re_vals = re.compile(r' Eigenvalues of the spin-orbit matrix| Spin-orbit eigenstates')
    re_end = re.compile(r' E0 =\s+([-]?\d+\.\d+) is the energy of the lowest zeroth-order state')
    re_e0alt = re.compile(r' Lowest unperturbed energy E0=\s+([-]?\d+\.\d+)')
    re_endalt = re.compile(r' Eigenvectors of spin-orbit ')
    sobuf = []
    retlist = []
    lineno = []
    inso = False
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            # output looks different depending upon J integer or half-integer
            m = re_e0alt.match(line)
            if m:
                E0 = float(m.group(1))
            if inso:
                sobuf.append(line.rstrip())
                m = re_end.match(line)
                if m:
                    E0 = float(m.group(1))
                    inso = False
                    retlist.append(SOenergy(sobuf, E0))
                    sobuf = []
                if re_endalt.match(line):
                    inso = False
                    retlist.append(SOenergy(sobuf, E0))
                    sobuf = []
            if re_vals.match(line):
                inso = True
                sobuf = [line.rstrip()]
                lineno.append(lno)
    if recalc:
        for so in retlist:
            so.recalc_wavenumbers()
    if len(retlist) == 1:
        if linenum:
            return retlist[0], lineno[0]
        else:
            return retlist[0]
    else:
        if linenum:
            return retlist, lineno
        else:
            return retlist
##
def readSOprops(fname, linenum=False):
    # Return a DataFrame (or list thereof) of dipole properties of SO states
    retlist = []
    lineno = []
    dip = {'x': -1, 'y': -1, 'z': -1}  # diagonal dipole
    tdipR = {'x': -1, 'y': -1, 'z': -1} # transition dipole from ground state (real component)
    tdipI = {'x': -1, 'y': -1, 'z': -1} # transition dipole from ground state (imag component)
    re_start = re.compile(' Property matrices transformed in SO basis')
    re_end = re.compile(' \*{25}')
    re_eltype = re.compile(r'<i\|DM([XYZ])\|([i1])>')  # type of element
    re_dipnr = re.compile(' STATE:(\s+\d+)+')
    re_dip = re.compile(r' VALUE: (\s+[-]?\d+\.\d+)+')
    re_real = re.compile(r' REAL PART  \(a\.u\.\):(\s+[-]?\d+\.\d+)+')
    re_imag = re.compile(r' IMAG PART  \(a\.u\.\):(\s+[-]?\d+\.\d+)+')
    re_tdipnr = re.compile(r'^(\s+\d+)+$')
    inblock = False
    el = dfret = None
    with open(fname, 'r', errors='replace') as F:
        for lno, line in enumerate(F):
            if inblock:
                if re_end.match(line):
                    inblock = False
                    # save results for this block
                    dfret = pd.DataFrame({'Nr': np.array(nr).astype(int)})
                    for el, val in dip.items():
                        if val is not None:
                            dfret[f'<i|{el}|i>'] = np.array(val).astype(float)
                    for el in ['x', 'y', 'z']:
                        valR = np.array(tdipR[el]).astype(float)
                        valI = np.array(tdipI[el]).astype(float)
                        cdip = valR + 1j * valI
                        dfret[f'<i|{el}|1>'] = cdip
                    retlist.append(dfret)
                    continue
                m = re_eltype.search(line)
                if m:
                     # some kind of dipole
                    el = m.group(1).lower()  # component [XYZ]
                    if m.group(2) == 'i':
                        # dipole component
                        if 'No matrix element' in line:
                            dip[el] = None
                            el = None
                        else:
                            dip[el] = []
                            nr = []  # state numbers
                    elif m.group(2) == '1':
                        # transition dipole component
                        tdipR[el] = []  # real component
                        tdipI[el] = []  # imag component
                        nr = []
                    else:
                        # should never get here
                        print('group2 = ', m.group(2))
                if re_real.match(line):
                    tdipR[el] = tdipR[el] + line.split()[3:]
                if re_imag.match(line):
                    tdipI[el] = tdipI[el] + line.split()[3:]
                if re_tdipnr.match(line):
                    nr = nr + line.split()
                if re_dipnr.match(line):
                    nr = nr + line.split()[1:]
                if re_dip.match(line):
                    dip[el] = dip[el] + line.split()[1:]
            if re_start.match(line):
                inblock = True
                lineno.append(lno)
    if linenum:
        if len(retlist) == 1:
            return retlist[0], lineno[0]
        else:
            return retlist, lineno
    else:
        if len(retlist) == 1:
            return retlist[0]
        else:
            return retlist
##
'''
def readSOcompos(fname):
    # return an SOcompos object
    # assume there is only one SO-CI calculation
    rx_socomp = re.compile(r' Composition of spin-orbit eigenvectors')
    rx_end = re.compile(r' [*]{80}|  Expectation values | Property matrices transformed')
    buf = []
    incomp = False
    with open(fname, 'r', errors='replace') as F:
        for line in F:
            if incomp:
                buf.append(line.rstrip())
                if rx_end.match(line):
                    incomp = False
                    break
            if rx_socomp.match(line):
                incomp = True
                buf = [line.rstrip()]
    return SOcompos(buf)
##
'''
def readSOcompos(fname):
    # return a list of SOcompos objects
    # also a list of line numbers
    rx_socomp = re.compile(r' Composition of spin-orbit eigenvectors')
    rx_end = re.compile(r' [*]{80}|  Expectation values | Property matrices transformed')
    retval = []
    lineno = []
    incomp = False
    with open(fname, 'r', errors='replace') as F:
        buf = []
        for lno, line in enumerate(F):
            if incomp:
                buf.append(line.rstrip())
                if rx_end.match(line):
                    incomp = False
                    retval.append(SOcompos(buf))
            if rx_socomp.match(line):
                incomp = True
                buf = [line.rstrip()]
                lineno.append(lno)
    return retval, lineno
##
def readSOmatrixBlocks(fname):
    # return a list of line buffers (each a list of lines) 
    # also a list of line numbers for the start of each block
    rx_energ = re.compile(r' Spin-orbit eigenstates ')
    rx_somat = re.compile(r' Spin-Orbit Matrix \(CM-1\)')
    rx_symm_ad = re.compile(r'Spin-orbit calculation in the basis of symmetry adapted')
    retval = []
    lineno = []
    with open(fname, 'r', errors='replace') as F:
        somatbuf = []
        in_somat = False
        for lno, line in enumerate(F):
            if in_somat:
                if rx_energ.match(line) or rx_symm_ad.search(line):
                    # end of block
                    retval.append(somatbuf)
                    in_somat = False
                    somatbuf = []
                    continue
                somatbuf.append(line)
            if rx_somat.match(line):
                in_somat = True
                lineno.append(lno)
    return retval, lineno
##
def parse_SOmatrix(buf, dimen):
    '''
    Return values:
        (1) the S-O matrix (cm-1) as a numpy array
        (2) a list of state labels for the basis states
        (3) a boolean indicating whether Molpro state labels are OK
    State labels are tuples (State, S, Sz) as in the MOLRPO file
    State labels may be wrong and require correction elsewhere
    '''
    rx_header = re.compile(r'\s+Nr\s+State\s+S\s+S[Zz](\s+\d+)+')
    rx_real = re.compile(r'^\s+\d+\s+\d+\.\d\s+\d+\.\d\s+[-]?\d+\.\d(\s+[-]?\d+\.\d+)+$')
    rx_imag = re.compile(r'^(\s+[-]?\d+\.\d+)+$')
    #
    basis = []  # tuples describing the basis states (str, float, float), e.g. ('1.4', 0.5, -0.5)
    mat = np.zeros((dimen, dimen), dtype=complex)
    ibas = 0
    for line in buf:
        if rx_header.match(line):
            words = line.split()
            cols = [int(x)-1 for x in words[4:]]
        if rx_real.match(line):
            words = line.split()
            irow = int(words[0]) - 1
            if irow == ibas:
                tup = (words[1], float(words[2]), float(words[3]))
                basis.append(tup)
            ibas += 1
            for icol, elem in zip(cols, words[4:]):
                mat[irow, icol] = float(elem)
        if rx_imag.match(line):
            words = line.split()
            for icol, elem in zip(cols, words):
                mat[irow, icol] += float(elem) * 1j
    # check the basis for labeling errors in MOLPRO
    basisOK = (len(set(basis)) == dimen)
    if not basisOK:
        # there is a labeling error
        s = '{:d} SO states but only {:d} unique basis states'.format(dimen,len(set(basis)))
        chem.print_err('', s, halt=False)
    return mat, basis, basisOK
##
def fix_SObasis(sobas, somat, mrci, etol=0.1):
    # fix basis-state labels in Molpro spin-orbit matrix
    # 'mrci' is a list of MRCIstate objects
    # return the re-labeled SO basis
    # 'etol' is energy tolerance in cm-1
    ediag = np.array([np.absolute(e) for e in somat.diagonal()])
    eci = np.array([m.dav for m in mrci])  # MRCI+Q energies are what I usually use
    eci = (eci - eci.min()) * chem.AU2CM   # cm-1 to match SO matrix units
    newlbl = []
    for lbl, e in zip(sobas, ediag):
        # find matching MRCI state
        irrep = lbl[0].split('.')[1]
        for m, ecm in zip(mrci, eci):
            irrepm = m.label.split('.')[1]
            if (m.spin == lbl[1]) and (irrep == irrepm):
                # could match, now check energy
                if abs(e - ecm) < etol:
                    # a match
                    newlbl.append((m.label, lbl[1], lbl[2]))
                    break
        else:
            # no match was found
            chem.print_err('', 'No match found for SO basis {} with E = {:.1f}'.format(lbl, e))
    return newlbl
##
def read_SOmat_SymmBlocks(fname):
    # return a list of line buffers (each a list of lines)
    # also a list of line numbers that start each block
    # this differs from readSOmatrixBlocks() by reading 
    #    individual irrep sections, instead of the whole matrix
    rx_sosym = re.compile('\s+Spin-orbit calculation in the basis of symmetry adapted wave functions')
    rx_irrep = re.compile(r'\s+Results for symmetry\s+(\d)')
    rx_end = re.compile('\s+Summary of SO results')
    retval = []
    lineno = []
    with open(fname, 'r', errors='replace') as F:
        sobuf = []  # includes matrix, eigenvalues and eigenvectors
        inSO = inbuf = False
        for lno, line in enumerate(F):
            if inSO:
                if rx_end.match(line):
                    # end of entire SO calculation
                    inSO = inbuf = False
                    retval.append(sobuf)
                    sobuf = []
                    continue
                if rx_irrep.match(line):
                    # an irrep section starts
                    inbuf = True
                    lineno.append(lno)
                    if sobuf:
                        # save preceding section
                        retval.append(sobuf)
                    sobuf = [line]
                    continue
                if inbuf:
                    sobuf.append(line)
            if rx_sosym.match(line):
                # start looking for irrep sections
                inSO = True
    return retval, lineno
##
def parse_SOmat_SymmBlock(sobuf):
    '''
    Given a section of text from the Molpro output file (SO-CI results for one irrep), return:
        irrep
        reference energy (E0)
        eigenvalues (hartree)
        SO matrix (cm-1)
        basis state labels (state.irrep, S, Sz)  (may not be unique!)
        eigenvectors 
    '''
    e0 = irrep = dimen = 0
    cols = []  # numerical column headings, decremented by 1
    sobas = []
    rx_irr = re.compile('\s+Results for symmetry\s+(\d)')
    rx_mat = re.compile(r'\s+=> Spin-Orbit Matrixblock \(CM-1\)  \(dimension:\s+(\d+)\)')
    rx_e0 = re.compile('\s+The diagonal matrixelements are shifted by\s+(-\d+\.\d+)')
    rx_eig = re.compile(r'\s+=> Eigenvalues of spin-orbit matrix in ascending order')
    rx_invec = re.compile(r'\s+=> Eigenvectors of spin-orbit matrix columnwise and ')
    rx_val = re.compile(r'\s+(\d+)\s+(-\d+\.\d+)(\s+[-]?\d+\.\d+){5}')
    rx_cols = re.compile(r'\s*State Sym Spin\s+/ Nr.(\s+\d+)+')
    rx_real = re.compile(r'\s+(\d+)\s+(\d)\s+\|(\d) (\d)>([-+ ])(\s+[-]?\d+\.\d+)+')
    rx_imag = re.compile(r'(\s+[-]?\d+\.\d+)+')
    ineig = invec = inmat = False
    for line in sobuf:
        if not irrep:
            m = rx_irr.match(line)
            if m:
                irrep = int(m.group(1))
        if not e0:
            m = rx_e0.match(line)
            if m:
                e0 = float(m.group(1))
        if inmat or invec:
            if rx_cols.match(line):
                # read column indices and reset row counter
                cols = [int(icol)-1 for icol in line.split()[5:]]
                irow = 0
            m = rx_real.match(line)
            if m:
                # store basis-state label if not already done
                if len(sobas) < dimen:
                    state = m.group(1) + '.' + m.group(2)
                    S = float(m.group(3))
                    Sz = float(m.group(4))
                    if m.group(5) == '-':
                        Sz = -Sz
                    sobas.append( (state, S, Sz) )
                # read real parts
                for icol, x in zip(cols, line.split()[4:]):
                    if inmat:
                        # SO matrix 
                        somat[irow, icol] += float(x)
                    if invec:
                        # eigenvector
                        eigvecs[irow, icol] += float(x)
            m = rx_imag.match(line)
            if m:
                # read imaginary parts
                for icol, x in zip(cols, line.split()):
                    if inmat:
                        somat[irow, icol] += float(x) * 1j
                    if invec:
                        eigvecs[irow, icol] += float(x) * 1j
                irow += 1
        if not inmat:
            m = rx_mat.match(line)
            if m:
                inmat = True
                dimen = int(m.group(1))
                # allocate arrays
                somat = np.zeros((dimen, dimen), dtype=complex)
                eigvals = np.zeros(dimen)
                eigvecs = np.zeros((dimen, dimen), dtype=complex)
        if ineig:
            # in list of eigenvalues
            if rx_invec.match(line):
                ineig = False
                invec = True
                continue
            m = rx_val.match(line)
            if m:
                i = int(m.group(1)) - 1
                eigvals[i] = float(m.group(2))
        else:
            if rx_eig.match(line):
                ineig = True
                inmat = False
    return irrep, e0, eigvals, somat, sobas, eigvecs
##
def readSOvectorBlocks(fname):
    # return a list of line buffers (each a list of lines) 
    # also a list of line numbers for the start of each block
    rx_eigvec = re.compile(r' Eigenvectors of spin-orbit matrix| Spin-orbit eigenvectors')
    rx_end = re.compile(r' Composition of spin-orbit eigenvectors')
    retval = []
    lineno = []
    with open(fname, 'r', errors='replace') as F:
        vecbuf = []
        in_vecs = False
        for lno, line in enumerate(F):
            if in_vecs:
                if rx_end.match(line):
                    # end of block
                    retval.append(vecbuf)
                    in_vecs = False
                    vecbuf = []
                    continue
                vecbuf.append(line)
            if rx_eigvec.match(line):
                in_vecs = True
                lineno.append(lno)
    return retval, lineno
##
def parse_SOvectors(buf, dimen):
    # return the S-O eigenvectors as a complex numpy array
    # each eigenvector is a column
    # ignore basis labels--they will be taken from parse_SOmatrix
    rx_header = re.compile(r'\s+Nr\s+State\s+S\s+S[Zz](\s+\d+)+')  # odd electron count
    rx_headeralt = re.compile(r' Nr Sym  State Sym Spin / Nr\.(\s+\d+)+')  # even electron count
    rx_real = re.compile(r'^\s+\d+\s+\d+\.\d\s+\d+\.\d\s+[-]?\d+\.\d(\s+[-]?\d+\.\d+)+$')
    rx_realalt = re.compile(r'^\s+\d+\s+\d\s+\d+\s+\d\s+\|\d+\s+\d+\>[-+]?(\s+[-]?\d+\.\d+)+$')
    rx_imag = re.compile(r'^(\s+[-]?\d+\.\d+)+$')
    #
    vecs = np.empty((dimen, dimen), dtype=complex)
    for line in buf:
        if rx_header.match(line):
            idx1 = 4
            words = line.split()
            cols = [int(x)-1 for x in words[idx1:]]
        if rx_headeralt.match(line):
            idx1 = 6
            words = line.split()
            cols = [int(x)-1 for x in words[idx1+1:]]
        if rx_real.match(line) or rx_realalt.match(line):
            words = line.split()
            irow = int(words[0]) - 1
            for icol, elem in zip(cols, words[idx1:]):
                vecs[irow, icol] = float(elem)
        if rx_imag.match(line):
            words = line.split()
            for icol, elem in zip(cols, words):
                vecs[irow, icol] += float(elem) * 1j
    return vecs
##
def readSOmatrix(fname, dimen, assist=None, silent=False):
    # return the S-O matrix and the list of basis states
    # if there is more than one SO-CI calculation, return a list
    # 'assist' may be a list of lists (for multiple SO-CI calcs)
    # 'dimen' is assumed equal for all SO-CI calcs in one file
    rx_energ = re.compile(r' Spin-orbit eigenstates ')
    rx_somat = re.compile(r' Spin-Orbit Matrix \(CM-1\)')
    rx_symm_ad = re.compile(r'Spin-orbit calculation in the basis of symmetry adapted')
    somatbuf = []
    in_somat = False
    retval = []
    with open(fname, 'r', errors='replace') as F:
        for line in F:
            if in_somat:
                if rx_energ.match(line) or rx_symm_ad.search(line):
                    in_somat = False
                    if isinstance(assist[0], list):
                        retval.append(parse_SOmatrix(somatbuf, dimen, assist=assist.pop(0), silent=silent))
                    else:
                        retval.append(parse_SOmatrix(somatbuf, dimen, assist=assist, silent=silent))
                    somatbuf = []
                    continue
                somatbuf.append(line)
            if rx_somat.match(line):
                in_somat = True
    if len(retval) == 1:
        # do not return a list
        return retval[0]
    else:
        return retval
##
def read_SOCI_scan_file(fsoc):
    # return coordinates, CASSCF, MRCI, SO-CI data, SO-matrix text blocks
    #   MOLPRO file 'fsoc' may contain many geometries
    # For diatomic molecules
    PG = read_point_group(fsoc)
    if PG != 'C2v':
        print('Your calculation is in point group', PG)
    caslist, lineno_cas = readMULTI(fsoc, PG=PG, linenum=True)
    cisection, lineno_ci = readMRCI(fsoc, linenum=True)
    soE, lineno_so = readSOenergy(fsoc, linenum=True)
    crd, lineno_crd = read_coordinates(fsoc, linenum=True)
    somatbuf, lineno_somat = readSOmatrixBlocks(fsoc)
    sovecbuf, lineno_evec = readSOvectorBlocks(fsoc)
    # ensure that all return values are lists
    caslist = chem.ensure_is_list(caslist)
    cisection = chem.ensure_is_list(cisection)
    soE = chem.ensure_is_list(soE)
    crd = chem.ensure_is_list(crd)
    lineno_cas = chem.ensure_is_list(lineno_cas)
    lineno_ci = chem.ensure_is_list(lineno_ci)
    lineno_so = chem.ensure_is_list(lineno_so)
    lineno_crd = chem.ensure_is_list(lineno_crd)
    lineno_evec = chem.ensure_is_list(lineno_evec)
    # convert list of geometries to list of (diatomic) bond lengths
    rlist = []
    for df in crd:
        G = chem.Geometry(df, intype='DataFrame', units='bohr')
        G.toAngstrom()
        rlist.append(G.distance(0, 1))
    data = [rlist, caslist, cisection, soE, somatbuf]
    linenos = [lineno_crd, lineno_cas, lineno_ci, lineno_so, lineno_somat]
    return data, linenos
##
def collect_corresponding_SOCI_results(fsoc, atom=False):
    # collect related geometry, CASSCF, MRCI and SO-CI data from a MOLPRO output file
    # return a dict of lists, where the indices match for matching calculations
    # if there is more than one SO-CI, assume that they have the same dimension (number of states)
    # Return a dict
    data, linenos = read_SOCI_scan_file(fsoc)
    [rlist, caslist, cisection, soE, somatbuf] = data
    [lineno_r, lineno_cas, lineno_ci, lineno_so, lineno_somat] = linenos
    # group the data into sets of [CASSCF, MRCI, SO-CI] calculations
    #   use the SO-CI calculations to anchor the sets
    data_sets = {'R': [], 'cas': [], 'ci_sect': [], 'soci': soE, 'somat': [], 'sobas': [],
                 'dfci': [], 'dfterms': [], 'mrci': [], 'sovec': []}
    for iso, lno_so in enumerate(lineno_so):
        # find the latest bond length that precedes this SO-CI
        ir = chem.match_lineno(lno_so, lineno_r)
        data_sets['R'].append(rlist[ir])
        # find the latest CASSCF calculation that precedes this SO-CI
        icas = chem.match_lineno(lno_so, lineno_cas)
        lcas = lineno_cas[icas]
        CAS = caslist[icas]
        CAS.results = relabel_CAS_by_energy(CAS.results)
        data_sets['cas'].append(CAS)
        # find the list of MRCI object line numbers between the CASSCF and SO-CI
        lno_ci = [lno for lno in lineno_ci if (lno < lno_so) and (lno > lcas)]
        # 'cil' is the list of MRCI objects associated with this set of SO-CI calcs
        cil = [cisection[lineno_ci.index(lno)] for lno in lno_ci]
        data_sets['ci_sect'].append(cil)
    # assume there is exactly one SO matrix for each set of SO energies
    npt = len(soE)
    #print(f'>>> npt = {npt}')
    sovecbuf, lineno_evec = readSOvectorBlocks(fsoc)
    for i in range(npt):
        dimen = len(data_sets['soci'][i].results)
        cilist = data_sets['ci_sect'][i]  # list of MRCI calculations for this geometry
        for m in cilist:
            m.transfer_lz(data_sets['cas'][i].results, atom=atom)
        dfci = combineMRCI(cilist)
        dfterms = averageTermsApprox(dfci)
        dfterms['Ecm'] = np.round(chem.AU2CM * (dfterms.Edav - dfterms.Edav.min()), 1)
        data_sets['dfci'].append(dfci)
        data_sets['dfterms'].append(dfterms)
        mrci = [MRCIstate(row) for m in cilist for (irow, row) in m.results.iterrows()]
        data_sets['mrci'].append(mrci)
        ciorder = [(m.label, m.spin) for m in mrci]
        #SOmatrix, SObasis = mpr.parse_SOmatrix(somatbuf[i], dimen, ciorder=ciorder, silent=False)
        #SOmatrix, SObasis = parse_SOmatrix(somatbuf[i], dimen, ciorder=ciorder, silent=False)
        SOmatrix, SObasis, basisOK = parse_SOmatrix(somatbuf[i], dimen)
        if not basisOK:
            # fix the SO basis-state labels
            print('\t---correcting SO basis labels')
            SObasis = fix_SObasis(SObasis, SOmatrix, mrci)
        data_sets['somat'].append(SOmatrix)
        data_sets['sobas'].append(SObasis)
        SOvecs = parse_SOvectors(sovecbuf[i], dimen)
        data_sets['sovec'].append(SOvecs)
    return data_sets
##


def get_SOeigs(SOmatrix):
    # Diagonalize and sort by increasing energy
    # ensure that eigenvalues are real
    # Return eigenvalues and squares of eigenvector elements
    # In array vecsq, the first index is the basis state and the 
    #   second index is the eigenvalue
    eigvals, eigvecs = np.linalg.eigh(SOmatrix)
    for eig in eigvals:
        if abs(eig.imag) > 0.01:
            print('** eigenvalue has imaginary component: {:.2f} +'.format(eig.real),
                  'i*', eig.imag)
    vals = eigvals.real  # discard imaginary parts, which should be zero
    vecsq = np.abs(eigvecs) ** 2 # squares of eigenvector elements (c**2)
    # sort by increasing energy
    idx = np.argsort(vals)
    vals = vals[idx]
    vecsq = vecsq[:, idx]
    return vals, vecsq
##
def applied_field(fname):
    # return the applied electric field vector (atomic units)
    rx_field = re.compile(' Field strength:(\s+[-]?\d+\.\d+){3}')
    field = np.zeros(3)
    with open(fname, 'r', errors='replace') as F:
        for line in F:
            if rx_field.match(line):
                words = line.split()
                field = np.array(words[2:], dtype=float)
                break
    return field
##
def collect_degenerate(df, cmtol=1.):
    # for use with SOenergy().energies DataFrames
    # return a DataFrame with degenerate levels averaged and counted
    # levels are "degenerate" when their differences <= 'cmtol', in cm-1 units
    #    "degenerate" is transitive, so differences may exceed the tolerance
    lE = []      # list of energies 'E' (hartree)
    lshift = []  # list of energies 'Eshift' (cm-1)
    lrel = []    # list of relative energies 'Erel' (cm-1)
    count = []   # multiplicity of each grouping
    idxlist = [] # list of lists of indices for energy groupings
    irrep = []   # list of tuples of length 1 or 2
    e = None
    for irow, row in df.sort_values('E').iterrows():
        if e is None:
            # initialize a grouping
            e = row['Erel']
            #idx = [row.name]
            idx = [irow]
            continue
        de = row['Erel'] - e  # non-negative because 'df' has been sorted
        if de <= cmtol:
            # add to current grouping
            #idx.append(row.name)
            idx.append(irow)
            e = row['Erel']   # for transitivity
        else:
            # close out the grouping
            lE.append(df.loc[idx]['E'].mean())
            lshift.append(df.loc[idx]['Eshift'].mean())
            lrel.append(df.loc[idx]['Erel'].mean())
            count.append(len(idx))
            idxlist.append(idx)
            ids = df.loc[idx]['Irrep'].values
            irrep.append(ids)
            # start a new grouping
            e = row['Erel']
            #idx = [row.name]
            idx = [irow]
    # close out the last grouping
    lE.append(df.loc[idx]['E'].mean())
    lshift.append(df.loc[idx]['Eshift'].mean())
    lrel.append(df.loc[idx]['Erel'].mean())
    count.append(len(idx))
    idxlist.append(idx)
    ids = df.loc[idx]['Irrep'].values
    irrep.append(ids)
    # summarize in new DataFrame
    cols = ['degen', 'Irrep', 'E', 'Eshift', 'Erel', 'index']
    data = zip(count, irrep, lE, lshift, lrel, idxlist)
    dfcoll = pd.DataFrame(data=data, columns=cols)
    return dfcoll
##
def combine_degenerate_labeled_pairs(dfinp, col, tol, lbl):
    # Given a DataFrame, return a similar DF with pairs of 
    # degenerate rows combined.  Use the lower value of 'col'
    # for each combined pair. 'lbl' must match exactly. 
    df = dfinp.sort_values(col)
    try:
        ircol = list(df.columns).index('Irrep')
    except ValueError:
        # 'Irrep' is not a column
        ircol = None
    keep = []
    irr = []  # possibly modified irrep numbers
    degen = [] # degeneracies
    rowprev = None
    n = len(df)
    g = 1
    for i in range(n):
        row = df.iloc[i]
        if ircol is not None:
            ir = chem.ensure_is_list(row['Irrep'])
        # 'save' is flag on whether to keep the current row
        save = (i == 0)  # always save the first row (lowest energy)
        if i > 0:
            # compare with the previous row; save it if it's different
            rowprev = df.iloc[i-1]
            save = (row[lbl] != rowprev[lbl]) or (abs(row[col] - rowprev[col]) > tol)
            if (not save):
                # this matches the previous
                if i == 1:
                    # fix the degneracy for row 0
                    degen[0] = 2
                if (ircol is not None):
                    # combine irreps if different
                    irprev = chem.ensure_is_list(rowprev['Irrep'])
                    if chem.ensure_is_list(row['Irrep']) != chem.ensure_is_list(rowprev['Irrep']):
                        irprev += ir
                        # replace the previous irrep numbers
                        irr[-1] = np.array(irprev)
                g = 2
        if save:
            keep.append(row)
            if ircol is not None:
                irr.append(np.array(ir))
            degen.append(g)
            g = 1
    dfret = pd.concat(keep, axis=1, keys=[s.name for s in keep]).transpose()
    if ircol is not None:
        dfret.Irrep = irr
    # if there is a column called 'Olbl' (Omega state label),
    #   insert the ordinal prefix
    if 'Olbl' in dfret:
        ord = {s: 1 for s in set(dfret.Olbl)}
        for i, row in dfret.iterrows():
            s = row['Olbl']
            dfret.loc[i, 'Olbl'] = '({:d})'.format(ord[s]) + s
            ord[s] += 1
    dfret['g'] = degen
    return dfret
##
def termLabels(casDF, greek=True, hyphen=False, PG=None, parity=True):
    '''
    Given a DataFrame with a column labeld 'Spin' and a column 
      labeled either 'L**2' (for an atom) or 'LzLz' (for a linear
      molecule), return another DataFrame with an added column
      'Term'.
    If greek=False, Greek letters (for linear molecules) will
      be replaced by words.  E.g. 'Delta' instead of the character.
    If hyphen==True, put a hyphen between the spin and the L label.
    If parity==True, assign Sigma parity simply based upon irrep
    ''' 
    dfnew = casDF.copy()
    isatom = 'L**2' in dfnew.columns
    lbl = []
    if isatom:
        for lsq in casDF['L**2']:
            x = np.sqrt(4*lsq + 1) - 1
            Lval = int(np.round(x/2))
            lbl.append(LSYMB[Lval])
    else:
        # linear molecule
        for irow, lzsq in enumerate(casDF['LzLz']):
            Lval = int(np.round(np.sqrt(lzsq)))
            if greek:
                lbl.append(GLAMBDA[Lval])
            else:
                lbl.append(LAMBDA[Lval])
            if parity:
                # use irrep to assign parity of Sigma states
                if Lval == 0:
                    # Sigma state: '+' or '-' ?
                    par = ''
                    #print(f'>>>irrep = {casDF.iloc[irow].Irrep}, spin = {casDF.iloc[irow].Spin}')
                    if PG.lower() == 'c2v':
                        # assign '+' to irrep #1
                        if casDF.iloc[irow].Irrep == 1:
                            par = '+'
                        else:
                            # it should be irrep #4 (a2)
                            # is it an open-shell singlet?
                            par = '-'
                    lbl[-1] += par
                    #print(f'\tpar = {par}, lbl[-1] = {lbl[-1]}')
    # lbl[] describes the orbital angular momenta
    # prepend the spin multiplicities
    symb = []
    for spin, orb in zip(casDF['Spin'], lbl):
        # Expect either value of S (a multiple of 0.5) or
        # a string like 'Singlet'
        try:
            mult = 2*spin + 1.0
        except:
            # convert string to number
            x = MULTSPIN[spin]
            mult = 2*x + 1.0
        if hyphen:
            symb.append('{:.0f}-{:s}'.format(mult, orb))
        else:
            symb.append('{:.0f}{:s}'.format(mult, orb))
    dfnew['Term'] = symb
    # assign ordinal prefixes
    for ecol in ['Edav', 'Ecm', 'Energy']:
        if ecol in dfnew:
            break
    else:
        # no energy column identified; skip ordinals
        return dfnew
    return dfnew
##
def readTable(fname, title):
    # return a DataFrame of the contents of a MOLPRO table
    # table must have a title (2nd argument here)
    # the 'title' should be the complete title and work inside a regular expression
    rx_title = re.compile('^\s*{:s}\s*$'.format(title))
    rx_blank = re.compile(r'^\s*$')
    in_tbl = Ffalse
    buf = []
    with open(fname, 'r', errors='replace') as F:
        for line in F:
            if in_tbl:
                buf.append(line.rstrip())
            if rx_blank.match(line) and (len(buf) > 4):
                # done reading this table
                break
            if rx_title.match(line):
                buf = [line.rstrip()]
                # expect one blank line to follow
                in_tbl = True
    # parse the table
    cols = []
    for i in range(2, len(buf)-1):
        if not cols:
            # read the column headings
            cols = buf[i].split()
            data = [[] for col in cols]  # list of lists
        else:
            # read a line of data, attempt to convert to float
            words = buf[i].split()
            for i, word in enumerate(words):
                try:
                    data[i].append(float(word))
                except:
                    data[i].append(word)
    try:
        df = pd.DataFrame({col: vec for col, vec in zip(cols, data)})
    except:
        # probably did not find the table
        df = pd.DataFrame()
    return df
##
##
def halves(spin):
    # n = 2*spin is rounded to the nearest integer
    # return a string that looks like n/2 when
    #   n is odd and just the integer n/2 when even
    # E.g. 3 -> '3/2' and 4 -> '2'
    n = int(round(2*spin))
    if n % 2:
        # spin is odd
        spinstr = '{:d}/2'.format(n)
    else:
        spinstr = '{:d}'.format(n // 2)
    return spinstr
##
def omega_range(L, spin, rounding=True):
    # return the list of possible omega values for this Lambda, Sigma
    S = spin
    lo = L - S
    hi = L + S
    vals = np.append(np.arange(lo, hi), hi)
    vals = np.abs(vals)
    if rounding:
        # round to nearest half-integer
        vals = chem.round_half_int(vals)
    return vals
##
def omega_Sz_Lz(Sz, Lz):
    # return a set of one or two possible omega values (unsigned)
    oms = [abs(Sz + Lz), abs(Sz - Lz)]
    return set(oms)
def omega_counts(cas, silent=False, rounding=True):
    # Return a dict of Omega values spanned by the CASSCF or MRCI states
    omlist = []
    for c in cas:
        omlist.extend(c.omega_range(rounding=rounding))
    omegavals = chem.list_counts(omlist)
    if not silent:
        print('Omega counts from CASSCF/MRCI:')
        print('{:s}\t#'.format(OMEGA))
        ocount = 0
        for k in sorted(omegavals.keys()):
            print('{:.1f}\t{:d}'.format(k, omegavals[k]))
            ocount += omegavals[k]
        print('Total of {:d} states'.format(ocount))
    return omegavals
##
def read_point_group(fname):
    # get the computational point group
    rx_PG = re.compile(r' Point group\s+(\S+)\s*$')
    with open(fname, 'r') as F:
        for line in F:
            m = rx_PG.match(line)
            if m:
                PG = m.group(1)
                return PG
    # found nothing
    return None
##
def irreps(PG, dataframe=False):
    # Given the name of a point group, return two lists taken from the
    #   Molpro manual (index = irrep # and starts from 1)
    # If 'dataframe' == True, return a DataFrame instead
    if PG is None:
        return [None], [None]
    pg = PG.lower()
    if pg == 'c1':
        name = [None, 'A']
        function = [None, ('s', 'x', 'y', 'z', 'xy', 'xz', 'yz')]
    elif pg == 'cs':
        name = [None, 'A\'', 'A"']
        function = [None, ('s', 'x', 'y','xy'), ('z', 'xz', 'yz')]
    elif pg == 'c2':
        name = [None, 'A', 'B']
        function = [None, ('s', 'z', 'xy'), ('x', 'y', 'xz', 'yz')]
    elif pg == 'ci':
        name = [None, 'Ag', 'Au']
        function = [None, ('s', 'xy', 'xz', 'yz'), ('x', 'y', 'z')]
    elif pg == 'c2v':
        name = [None, 'A1', 'B1', 'B2', 'A2']
        function = [None, ('s','z'), ('x','xz'), ('y','yz'), ('xy',)]
    elif pg == 'c2h':
        name = [None, 'Ag', 'Au', 'Bu', 'Bg']
        function = [None, ('s','xy'), ('z',), ('x','y'), ('xz', 'yz')]
    elif pg == 'd2':
        name = [None, 'A', 'B3', 'B2', 'B1']
        function = [None, ('s',), ('x','yz'), ('y','xz'), ('xy',)]
    elif pg == 'd2h':
        name = [None, 'Ag', 'B3u', 'B2u', 'B1g', 'B1u', 'B2g', 'B3g', 'Au']
        function = [None, ('s',), ('x',), ('y',), ('xy',), ('z',),
                    ('xz',), ('yz',), ('xyz',)]
    else:
        chem.printerr('', 'Unknown point group {:s}'.format(PG))
    if dataframe:
        df = pd.DataFrame({'Nr': np.arange(len(name)-1)+1})
        df['irrep'] = name[1:]
        df['shape'] = [s[0] for s in function[1:]]
        df.set_index('Nr', inplace=True)
        return df
    else:
        return name, function
##
def irreps_from_orbital_shape_occupation(PG, occup):
    # Given a point group and orbital-shape occupations, return irreps
    #   'occup' is a dict of occupation by shape, e.g.
    #   {'s': 2, 'xy': 1, 'xz': 1, 'yz': 2}
    
    # concatenate shapes into one string
    ostr = ''
    for shape, nr in occup.items():
        ostr += shape * nr
    # sort the string
    ostr = ''.join(sorted(ostr))
    # remove all repeats (pairs)
    rx = re.compile(r'(.)\1')  # any doubled character
    m = True
    while m:
        m = rx.search(ostr)
        if m:
            ostr = rx.sub('', ostr)
    if len(ostr) < 1:
        # empty is totally symmetric
        ostr = 's'
    df = irreps(PG, dataframe=True)
    df = df[df['shape'] == ostr]
    return df
##
def match_spin_label(lbl, S, mrci):
    '''
    Given a label (like '3.1') and a spin (multiple of 0.5),
    and a list of CASSCFstate() objects, return a list of indices into
    that list for state that match both label and spin. 
    '''
    idx = []
    for i, m in enumerate(mrci):
        if (m.label == lbl) and (m.spin == S):
            idx.append(i)
    return idx
##
def compare_MOLPRO_SOvals(energcm, vals, silent=False):
    # Compare my energies ('vals'), from diagonalizing the SO matrix,
    # with those reported by Molpro ('energcm')
    # if silent==True, print nothing
    # Return the largest difference
    maxdiff = 0
    if not silent:
        print('Eigenvalues from MOLPRO and here:')
        print('{:3s}  {:>8s}  {:>8s}  {:>8s}'.format('#', 'MOLPRO', 'here', 'diff'))
    eigs = vals.tolist()
    for mpro, eig in zip(energcm, eigs):
        diff = eig - mpro
        if abs(diff) > abs(maxdiff):
            maxdiff = diff
        if not silent:
            print('{:3d}  {:8.2f}  {:8.2f}  {:8.2f}'.format(eigs.index(eig), mpro, eig, diff))
    if not silent:
        if abs(maxdiff) > 0.1:
            print('Biggest diff = {:.2f}'.format(maxdiff))
        else:
            print('Biggest diff = {:.1e}'.format(maxdiff))            
    return maxdiff
##
def link_MRCI_SObasis(mrci, SObasis):
    '''
    connect SO basis states with their MRCI parents
    'mrci' is a list of MRCIstate objects
    'SObasis' is a list of tuples that label SO basis states (CI_lbl, S, M_S)
    return two lists:  
      sob_ici (index into mrci[] for each SO basis state)
      ci_sob (list of basis states derived from each mrci state)
    '''
    sob_ici = [] 
    ci_sob = [[] for m in mrci] 
    for iso, b in enumerate(SObasis):
        lbl = b[0]  # e.g., '3.1'
        S = b[1]    # spin
        ici = match_spin_label(lbl, S, mrci)
        if len(ici) != 1:
            errstr = '**** Ambiguous or missing MRCI assignment for SO basis state:\n'
            errstr += str(b, ici)
            chem.printerr('', errstr)
        ici = ici[0]
        sob_ici.append(ici)
        try:
            ci_sob[ici].append(iso)
        except:
            # create element (a list)
            ci_sob[ici] = [iso]
    for i, c in enumerate(ci_sob):
        if len(c) == 0:
            mrci[i].print()
            s = f'CI state {i} is not represented in the SO basis\n'
            s += 'check your Molpro file for duplicate state numbering in the SO basis'
            chem.print_err('', s)
    return sob_ici, ci_sob
##
def assign_omega_possibilities(mrci, SObasis, vecsq, csq_thresh=0.0001, silent=True):
    '''
    Assign possible Omega values to spin-orbit states
    Return: a list of sets of possible Omega values
            an array of c**2 values for MRCI states (sum over component SO basis states)
    'mrci' is a list of MRCIstate()
    'SObasis' is a list of tuples describing SO basis states (CI-lbl, S, MS)
    'vecsq' is SO-CI eigenvector magnitude
    'csq_thresh' is the threshold for ignoring contributions
    '''
    sob_ici, ci_sob = link_MRCI_SObasis(mrci, SObasis)
    om_possible = []  # list of sets of possible Omega values
    dimen = vecsq.shape[1]
    if not silent:
        print('--- Find possible {:s} values for each SO state ---'.format(OMEGA))
    for istate in range(dimen):
        if not silent:
            print(f'\tstate {istate}')
        idx = np.argwhere(vecsq[:,istate] > csq_thresh).flatten()
        poss = [] # list of sets
        for i in idx:
            ici = sob_ici[i]  # index of parent MRCI state
            m = mrci[ici]     # parent MRCIstate
            s = SObasis[i]
            spinOK = m.spin == s[1]
            #x = set(abs(o) for o in np.arange(s[2]-m.Lz, s[2]+m.Lz + 1))  # makes sense only for atoms
            x = set((np.round(abs(s[2]-m.Lz), 1), np.round(abs(s[2]+m.Lz), 1)))
            if spinOK:
                poss.append(x)
            else:
                print('*** Inconsistent spins! istate={:d}, ici={:d}, SO basis S = {:.1f}, CI S = {:.1f}'.format(istate,
                        ici, s[1], m.spin))
        possib = set.intersection(*poss)
        if not silent:
            print(f'\t\t{poss}')
            print(f'\t\treduces to {possib}')
        if len(possib) == 0:
            msg = f'*** No possible omega values for istate={istate}! Try increasing csq_thresh'
            print(msg)
        om_possible.append(possib)
    # sums within MRCI states
    ciwt = np.zeros((len(mrci), dimen))
    for i in range(len(mrci)):
        for j in ci_sob[i]:
            ciwt[i, :] = ciwt[i, :] + vecsq[j, :]
    return om_possible, ciwt
##
def SO_assign_omega(mrci, SObasis, soci, vecsq, csq_thresh=0.0001, silent=False,
                    ordering='up', failure='crash', debug=False):
    '''
    New attempt (Dec. 2021) to assign Omega to SO-CI states
    Works for PtH, quite often
    Usage for a distance scan:
        data_sets = collect_corresponding_SOCI_results(fsoc)
        mrci = data_sets['mrci'][i]  # 'i' specifies a geometry
        SObasis = data_sets['sobas'][i]
        soci = data_sets['soci'][i]
        vecsq = np.absolute(data_sets['sovec'][i]) ** 2
        try:
            dfdups = SO_assign_omega(mrci, SObasis, soci, vecsq, csq_thresh, silent=False)
        except ValueError:
            # increase the threshold to see if it helps
            print('\t** increasing csq_thresh 10-fold')
            dfdups = SO_assign_omega(mrci, SObasis, soci, vecsq, csq_thresh * 10., silent=False)
    Assign 0+/0- simply based upon irrep (if C2v)
    'ordering' determines which order Omega values are considered
        ('up', 'down', 'rare', 'common')
    'failure' == 'OK' will continue despite assignment failure
    Return a DataFrame
    '''
    sob_ici, ci_sob = link_MRCI_SObasis(mrci, SObasis)
    vals = soci.results.Eshift.values  # cm-1 energies relative to the reference
    Nrs = soci.results.Nr.values
    E = soci.results.E.values  # state energies in hartree
    nirrep = len(set(soci.results.Irrep))
    dimen = len(SObasis)
    SO_omega = [None] * dimen   # assigned values of Omega
    parenterm = [None] * dimen  # term label for dominant parent
    termlabel = []              # term label including omega
    leadwt = [0] * dimen        # weight of leading term
    # 
    # get list of required omega values
    omegavals = omega_counts(mrci, silent=True)
    if not silent:
        print('Target omega counts:', omegavals)
    #
    # determine the possible omega values for each SO basis state
    bas_omega = []  # possible omega values for SO basis 
    omall = set()   # possible omegas across whole SO basis 
    for ibas, bas in enumerate(SObasis):
        Sz = bas[2]
        Lz = mrci[sob_ici[ibas]].Lz
        lo = round(abs(Sz-Lz), 1)
        hi = round(abs(Sz+Lz), 1)
        omset = set((lo, hi))
        bas_omega.append(omset.copy())
        omall = omall.union(omset)
    #
    # look at decreasingly smaller contributions
    omposs = [omall.copy() for i in range(dimen)]  # possible omega values for SO states (list of sets)
    ncontrib = 0   # depth of contributions to consider
    changed = True
    above_thresh = True
    nleft = dimen  # number of unassigned SO states
    omegavalslist = list(omegavals.keys())
    if ordering == 'up':
        omegavalslist = sorted(omegavalslist)
    elif ordering == 'down':
        omegavalslist = sorted(omegavalslist, reverse=True)
    elif ordering == 'rare':
        omegavalslist = sorted(omegavalslist, key=lambda x: omegavals[x])
    elif ordering == 'common':
        omegavalslist = sorted(omegavalslist, key=lambda x: omegavals[x], reverse=True)
    else:
        chem.print_err('', f'Unknown ordering "{ordering}"')
    #print('>>>> omegavalslist =', omegavalslist)
    while (changed or above_thresh) and nleft:
        changed = False
        above_thresh = False
        # are there omega values for which number possible = number needed?
        #for om, need in omegavals.items():
        for om in omegavalslist:
            need = omegavals[om]
            iposs = []
            for iso, oms in enumerate(omposs):
                if (om in oms) and (SO_omega[iso] is None):
                    iposs.append(iso)
            if debug:
                s = 'for Ω = {:.1f}, need {:d} states, {:d} possibilities'
                print(s.format(om, need, len(iposs)))
            if (need > 0) and (len(iposs) == need):
                # assign these
                for iso in iposs:
                    SO_omega[iso] = om
                    omegavals[om] -= 1
                changed = True
                need = 0
                if debug:
                    print('\t--assigned')
            if need == 0:
                # don't assign any more states to this Omega
                for oms in omposs:
                    oms.discard(om)
                if debug and len(iposs):
                    print(f'\teliminating omega = {om} as a possibility')
        # consider the next smaller contribution to each SO state
        for iso in range(dimen):
            # loop over SO states, not basis functions
            if SO_omega[iso] is not None:
                # already assigned
                continue
            wt = vecsq[:, iso]
            if debug:
                print(f'Weight[{ncontrib}] in state {iso}')
            if ncontrib == 0:
                # get term symbol from MRCI state with largest total weight
                wmax = 0
                imax = 9999
                for ici, idx in enumerate(ci_sob):
                    wtot = sum([wt[i] for i in idx])
                    if wtot > wmax:
                        wmax = wtot
                        imax = ici
                parenterm[iso] = mrci[imax].Term
                leadwt[iso] = wmax
                if debug:
                    print('\tleading term is {:s} ({:s} = {:.0f})'.format(parenterm[iso], 
                                                                LAMDA, mrci[imax].Lz))
            # sort index of wt[]    
            idx = np.argsort(-wt)  # decreasing order
            ibas = idx[ncontrib]
            if wt[ibas] < csq_thresh:
                # done with significant weights
                continue
            else:
                above_thresh = True
            u = omposs[iso].intersection(bas_omega[ibas])
            if debug:
                #print(f'\tbasis function {SObasis[ibas]} with possibilities {bas_omega[ibas]}')
                print('\tweight {:.4f} for {} with parent {:s} and possibilities {}'.format(wt[ibas], 
                                            SObasis[ibas], mrci[sob_ici[ibas]].Term, bas_omega[ibas]))
            if len(u) == 0:
                # all possibilities eliminated! dismiss the last component as noise
                continue
            omposs[iso] = u.copy()
            if debug:
                print('\tpossible:', omposs[iso])
            if len(u) == 1:
                # only one omega remains; assign it
                om = u.pop()
                SO_omega[iso] = om
                omegavals[om] -= 1
                changed = True
                if debug:
                    print('\t--assigned')
        ncontrib += 1
        nleft = len([x for x in SO_omega if x is None])
    #
    # check for states missing assignments
    for i, om in enumerate(SO_omega):
        if om is None:
            # bad
            print('missing Ω for SO state {:d} with E = {:.1f} cm-1 and MRCI parent {:s} '.format(i, vals[i], parenterm[i]))
            print('\tpossibilities: ', omposs[i])
            # install the ambiguity in the list
            SO_omega[i] = repr(omposs[i])
    # check for excess and lacking omega counts
    ok = True
    for om, count in omegavals.items():
        if count < 0:
            s = f'Overcounting for Ω = {om}'
            chem.print_err('', s, halt=False)
            ok = False
            if failure != 'OK':
                raise ValueError(s)  # increasing the threshold may help
        if count > 0:
            chem.print_err('', f'Missing {count} states for Ω = {om}', halt=False)
            ok = False
    if not ok:
        print('*******************************')
        print('*** OMEGA ASSIGNMENTS FAILED***')
        print('*******************************')
        # set all Omega=0 to prevent pairing
        SO_omega = [0] * len(SO_omega)
    #
    # strip any unnecessary '(1)' specifiers from MRCI term labels
    just_one = set()
    rx = re.compile('\((\d+)\)(\S+)')
    for t in parenterm:
        m = rx.match(t)
        if m:
            if int(m.group(1)) == 1:
                just_one = just_one.union({m.group(2)})
            else:
                # prefix is higher than (1); keep prefixes for this term symbol
                just_one.discard(m.group(2))
    for symb in just_one:
        # remove leading (1)
        for i, t in enumerate(parenterm):
            if t == '(1)' + symb:
                parenterm[i] = symb
    # create state labels that include omega as a "subscript"
    for i, pt in enumerate(parenterm):
        try:
            olbl = halves(SO_omega[i])
        except TypeError:
            # omega assignment failed
            olbl = SO_omega[i]
        if (SO_omega[i] == 0) and (nirrep == 4):
            # assign parity based upon irrep (assuming C2v!)
            irr0 = soci.results.at[i, 'Irrep']
            if irr0 == 1:
                olbl = olbl + '+'
            elif irr0 == 4:
                olbl = olbl + '-'
            elif not silent:
                print('Omega = 0 but irrep = {:d}'.format(irr0))
        termlabel.append('_'.join([pt, olbl]))
    # return a DataFrame
    df = pd.DataFrame({'E': E, 'cm-1': vals, OMEGA: SO_omega, 'term': parenterm, 
                       'wt': leadwt, 'label': termlabel, 'Nr': Nrs})
    df['exc'] = df['cm-1'] - df['cm-1'].min()
    return df, ok
##
def assign_Omega_valuesXXX(mrci, SObasis, vals, vecsq, csq_thresh=0.0001, silent=False):
    '''
    replaced by SO_assign_omega()
    Assign values of Omega to SO-CI states
    'mrci' is a list of MRCIstate()
    'SObasis' is a list of tuples describing SO basis states (CI-lbl, S, MS)
    'vecsq' is from SO-CI eigenvectors
    'csq_thresh' is the threshold for ignoring contributions
    Return: DataFrame that includes energies, Omegas, term labels, etc.
    '''
    if not silent:
        print('*** Assign Omega values using weight threshold of', csq_thresh, '***')
    # casscf/mrci detrmines the Omega values
    omegavals = omega_counts(mrci, silent=silent)
    dimen = vecsq.shape[1]
    om_assigned = [np.nan] * dimen
    unassigned = omegavals.copy()
    omega_left = [m.omega_range().tolist() for m in mrci]  # possible remaining Omegas for each MRCI state
    nassigned = 0
    om_possible, ciwt = assign_omega_possibilities(mrci, SObasis, vecsq, csq_thresh=csq_thresh,
                                                   silent=silent)
    # find Omega possibilites for each MRCI state
    ciOm = [set(m.omega_range()) for m in mrci]

    def assign_state(istate, imrci, omega):
        # modify nonlocal vars
        nonlocal om_assigned, om_possible, omega_left, unassigned
        # if imrci == 'all', sweep this value of omega
        om_assigned[istate] = omega   # the actual assignment
        om_possible[istate] = set()   # no update is possible because the state is now assigned
        if imrci == 'all':
            #print('\t\tassigning {:s} = {} to state {:d} from unspecified MRCI'.format(mpr.OMEGA, omega, istate))
            unassigned[omega] = 0
            for left in omega_left:
                while omega in left:
                    left.remove(omega)
        else:
            #print('\t\tassigning {:s} = {} to state {:d} from MRCI {:d}'.format(mpr.OMEGA, omega, istate, imrci))
            unassigned[omega] -= 1
            omega_left[imrci].remove(omega)  # remove one instance of this omega value
        return

    def step1():
        # Find any MRCI states with only one possible Omega
        #   then assign that value of Omega by decreasing weight, not to exceed
        #   the maximum listed in omegavals{}
        nonlocal omegavals, ciOm, omega_left, mrci, ciwt, csq_thresh
        if not silent:
            print('Step 1 of assignments')
        n1 = 0
        for om, count in omegavals.items():
            # make list of MRCI states that allow only Omega = om
            cistates = []  # list of the MRCI states
            cilist = []    # similar but accounting for multiple occurences of 'om'
            for ici, allowed in enumerate(ciOm):
                if (om in allowed) and (len(allowed) == 1):
                    cistates.append(ici)
                    cilist.extend([ici] * len(omega_left[ici]))
                    if not silent:
                        print('\tMRCI state #{:d} ({:s}) must have {:s} = {}'.format(ici+1, 
                                            mrci[ici].term_label(greek=True), OMEGA, om))
            if len(cistates) > 0:
                # make a table of the weights from these states
                wts = np.zeros((len(cistates), dimen))
                for i, ici in enumerate(cistates):
                    wts[i, :] = ciwt[ici, :]
                # sum the weights across MRCI contributions
                wtsum = wts.sum(axis=0)
                idx = np.argsort(-wtsum)  # decreasing order
                # the number of states to assign is the lesser of:
                #   - the number allowed
                #   - the number of MRCI contributions
                n = min(omegavals[om], len(cilist))
                # truncate idx[] to the allowed length
                idx = idx[:n]
                #print('\tAssigning state(s) to {:s} = {}:'.format(OMEGA, om), idx)
                for i in idx:
                    # record the state assignments (Omega values)
                    if not np.isnan(om_assigned[i]):
                        chem.print_err('','*** Error: state {:d} is already assigned!'.format(i))
                    elif wtsum[i] > csq_thresh:
                        # assign Omega value to SO state
                        ici = cilist.pop()
                        assign_state(i, ici, om)
                        n1 += 1
                    else:
                        chem.print_err('','*** Error: required weight of {:.2e} is less than requested csq_thresh ({:.1e})'.format(wtsum[i],
                                csq_thresh))
        if not silent:
            print('\t{:d} states assigned'.format(n1))
        return n1
    
    def step2():
        # Is there an Omega for which the exact number of states match?
        nonlocal unassigned, om_possible
        if not silent:
            print('Step 2 of assignments')
        n2 = 0
        for om, count in unassigned.items():
            # how many states can have Omega == om?
            isposs = [(om in poss) for poss in om_possible]
            nposs = sum(isposs)
            if count > nposs:
                chem.print_err('',('For {:s} = {:.1f}, there are {:d} possible'
                          ' assignments but {:d} are needed').format(OMEGA,
                        om, nposs, count))
            if count == nposs:
                # Exact match; assign these states
                if not silent:
                    print('\tThe number of candidates for {:s} = {} equals the number needed'.format(OMEGA, om))
                    #print('\tAssigning state(s) to {:s} = {}:'.format(OMEGA, om), np.where(isposs)[0])
                for i, poss in enumerate(om_possible):
                    if om in poss:
                        assign_state(i, 'all', om)
                        n2 += 1
        if not silent:
            print('\t{:d} states assigned'.format(n2))
        return n2
    
    def step3():
        # Find states with only one possible assignment 
        nonlocal unassigned, om_possible, ciwt, omega_left
        if not silent:
            print('Step 3 of assignments')
        n3 = 0
        for om, count in unassigned.items():
            idx = []
            for i, poss in enumerate(om_possible):
                if (om in poss) and (len(poss) == 1):
                    # only this assignment is possible
                    idx.append(i)
            if idx:
                if not silent:
                    print('\tState(s) that can only have {:s} = {}:'.format(OMEGA, om), np.array(idx)+1)
                # for each MRCI state, sum its contributions to these states
                wtsum = ciwt[:, idx].sum(axis=1)
                for ici in np.argsort(-wtsum):
                    # decreasing total contribution
                    while len(idx) and (om in omega_left[ici]):
                        i = idx.pop(0)
                        assign_state(i, ici, om)
                        n3 += 1
                    if len(idx) == 0:
                        # all done here
                        break
                else:
                    # did not find a suitable MRCI parent
                    chem.print_err('','*** Error: no suitable parent MRCI found for {:s} = {:.1f}, state Nr {:d}'.format(OMEGA,
                            om, i+1))
            # is this Omega fully assigned?
            left = unassigned[om]
            if left == 0:
                # remove from sets of state possibilities
                for s in om_possible:
                    s.discard(om)
        if not silent:
            print('\t{:d} states assigned'.format(n3))
        return n3

    nassigned = step1()
    n2 = step2()
    nassigned += n2
    if not silent:
        print('Total of {:d} states assigned'.format(nassigned))
    while True:
        n3 = step3()
        nassigned += n3
        if not silent:
            print('Total of {:d} states assigned'.format(nassigned))
        if (nassigned == dimen) or (n3 == 0):
            break
    if (nassigned == dimen):
        if not silent:
            print('All states have been assigned!')
    else:
        # failure
        print('*** {:d} states remain unassigned!'.format(dimen - nassigned))
        chem.print_err('', 'Try more iterations of steps 1,2,3?')

    # prepare DF of state information; take term symbol from largest MRCI contributor
    term_assigned = []
    for j in range(dimen):
        ilead = np.argmax(ciwt[:, j])
        t = mrci[ilead].Term  # existing term symbol 
        if t:
            # copy the term symbol
            term_assigned.append(t)
        else:
            # create the term symbol (lacking Sigma parity)
            term_assigned.append(mrci[ilead].term_label(greek=True))
    # Prepare table for display
    labels = []
    for i in range(dimen):
        lbl = term_assigned[i] + '_' + halves(om_assigned[i])
        labels.append(lbl)
    dffinal = pd.DataFrame({'cm-1': np.round(vals, 1), OMEGA: om_assigned,
                            'term': term_assigned, 'label': labels,})
    dffinal['exc'] = dffinal['cm-1'] - min(dffinal['cm-1'])
    return dffinal
##
def total_charge(fpro):
    # MOLPRO does not report total charge; compute it here from atomic 
    # numbers and (last) electron count
    coord = read_coordinates(fpro)
    Geom = chem.Geometry(coord, intype='DataFrame')
    ztot = Geom.Ztot()
    # get the last report of total electron count
    rx_nelec = re.compile(r'^\s*Number of electrons:', re.IGNORECASE)
    with open(fpro) as F:
        for line in F:
            if rx_nelec.match(line):
                # may be followed by an integer, or by alpha and beta counts (e.g., 9+ 8-)
                words = line.split()[3:]
                if '+' in words[0]:
                    nelec = int(words[0][:-1]) + int(words[1][:-1])
                else:
                    nelec = int(words[0])
    Q = ztot - nelec            
    return Q
##
def stoichiometry(fpro, ones=False, charge=True):
    # return a stoichiometry string
    coord = read_coordinates(fpro)
    Geom = chem.Geometry(coord, intype='DataFrame')
    Geom.charge = total_charge(fpro)
    stoich = Geom.stoichiometry(ones=ones, charge=charge)
    return stoich
##
def nbfn(fpro, prim=False):
    # number of 1e basis functions (first number found in file)
    # if prim==True, return (#cGTO, #pCTO)
    rx_c = re.compile('^\s*NUMBER OF CONTRACTIONS:\s+(\d+)')
    rx_p = re.compile('^\s*NUMBER OF PRIMITIVE AOS:\s+(\d+)')
    with open(fpro) as F:
        for line in F:
            m = rx_c.match(line)
            if m:
                nc = int(m.group(1))
                break
            m = rx_p.match(line)
            if m:
                np = int(m.group(1))
    if prim:
        return (nc, np)
    else:
        return nc
##
def resources_used(fpro):
    # return a dict of total time, disk used (from end of MOLPRO output file)
    rx_cpu = re.compile(r'^\s*CPU TIMES\s+\*\s+(\d+\.\d+)')
    rx_wall = re.compile(r'^\s*REAL TIME\s+\*\s+(\d+\.\d+)')
    rx_disk = re.compile(r'^\s*DISK USED\s+\*\s+(\d+\.\d+)')
    retval = {}
    with open(fpro) as F:
        for line in F:
            m = rx_cpu.match(line)
            if m:
                retval['cpu'] = float(m.group(1))
            m = rx_wall.match(line)
            if m:
                retval['wall'] = float(m.group(1))
            if rx_disk.match(line):
                # 'local' and 'total' are listed separately
                words = line.split()
                retval['disk_local'] = (float(words[3]), words[4])
                retval['disk'] = (float(words[6]), words[7])
    return retval
