# routines for use with MOLPRO files
# New version, hopefully clearer/simpler!
# started 6/28/2024 for diatomic PtO
# KKI 

import re, sys
import pandas as pd
import numpy as np
from collections import Counter
from sklearn.cluster import KMeans
import chem_subs as chem
##
SPINMULT = {0: 'Singlet', 1: 'Triplet', 0.5: 'Doublet', 1.5: 'Quartet', 2: 'Quintet',
            2.5: 'Sextet', 3: 'Septet', 3.5: 'Octet', 4: 'Nonet', 4.5: 'Decet'}
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

COMP_GROUPS = ['C1', 'C2', 'C2h', 'C2v', 'Ci', 'Cs', 'D2', 'D2h']
IRREPS = {'D2h': ['', 'Ag', 'B3u', 'B2u', 'B1g', 'B1u', 'B2g', 'B3g', 'Au'],
          'C2v': ['', 'A1', 'B1', 'B2', 'A2'],
          'C2h': ['', 'Ag', 'Au', 'Bu', 'Bg'],
          'D2' : ['', 'A', 'B3', 'B2', 'B1'],
          'Cs' : ['', "A'", 'A"'],
          'C2' : ['', 'A', 'B'],
          'Ci' : ['', 'Ag', 'Au'],
          'C1' : ['', 'A']}
# For an atom, note which irreps must have odd parity, by index
ODD_IRREPS = {'Ci': [2], 'D2h': [2, 3, 5, 8]}
ASD_superscript = '°'
##

def irrep_lookup(PG, irrep):
    # Given a Molpro computational group 'PG' and an irrep number 'irrep',
    #   return the Schönflies string for the irrep
    #   or the reverse
    PG = PG.capitalize()
    if PG not in COMP_GROUPS:
        # error
        chem.print_err('', f'Group {PG} is not valid in Molpro', halt=False)
        return ''
    reps = IRREPS[PG]
    try:
        i = int(irrep)
        if i > len(reps):
            # error
            chem.print_err('', f'Group {PG} does not have an irrep number {i}', halt=False)
            return ''
        schon = reps[i]
        return schon
    except:
        # Try a reverse lookup
        s = irrep.capitalize()
        try:
            i = reps.index(s)
            return i
        except:
            # error
            chem.print_err('', f'Group {PG} does not have an irrep called {s}', halt=False)
            return ''

##
def number_after_string(sstring, linebuf):
    # Given a list of lines of text, search for a line that contains
    #   with string sstring and return the number that follows it
    #   (int or float)
    # Return None upon failure
    regex = re.compile(sstring)
    X = None
    for line in linebuf:
        if regex.search(line):
            # anywhere within the line
            w = line.split(sstring)
            wn = w[1].split()[0]
            try:
                if '.' in wn:
                    X = float(wn)
                else:
                    X = int(wn)
            except:
                X = None
    return X
##
##
def identify_sections(fpro):
    # Given a Molpro output file,
    # return a dict of major sections and a dict of corresponding line numbers
    #    dict values are lists

    sections = {}
    sec_line = {}
    sec_name = 'input'    
    linebuf = []
    lineno = 0
    
    def store_section():
        nonlocal linebuf, lineno, sec_name, iline
        if sec_name in sections.keys():
            # this type of section already listed
            sections[sec_name].append(linebuf)
            sec_line[sec_name].append(lineno)
        else:
            # new type of section
            sections[sec_name] = [linebuf]
            sec_line[sec_name] = [lineno]
        linebuf = []
        lineno = iline
        return
    
    re_top = re.compile('PROGRAM SYSTEM MOLPRO')
    re_intgrl = re.compile('PROGRAM \* SEWARD')
    re_rhf = re.compile('Program \* Restricted Hartree-Fock')
    re_multi = re.compile('PROGRAM \* MULTI')
    re_mrci = re.compile('PROGRAM \* CI')
    re_soint = re.compile('PROGRAM \* SEWLS')
    re_soci = re.compile('\* Spin-orbit calculation \*')
    
    with open(fpro, 'r') as F:
        for iline, line in enumerate(F):
            if re_top.search(line):
                # Molpro title message
                store_section()
                sec_name = 'header'
            if re_intgrl.search(line):
                # integrals
                store_section()
                sec_name = 'integrals'
            if re_rhf.search(line):
                # restricted HF
                store_section()
                sec_name = 'rhf'
            if re_multi.search(line):
                store_section()
                sec_name = 'multi'
            if re_mrci.search(line):
                # this hits spin-orbit CI, but won't store it as 'mrci'
                store_section()
                sec_name = 'mrci'
            if re_soint.search(line):
                store_section()
                sec_name = 'SOintegrals'
            if re_soci.search(line):
                sec_name = 'soci'
            linebuf.append(line)
        # store the final section
        store_section()
    return sections, sec_line
##
def multi_sections(inbuf):
    '''
    Given a list of lines of text from the MULTI part of the output file,
        as from identify_sections()['multi'],
    Return a dict of sub-sections
    '''
    sections = {}
    sec_name = 'top'    
    linebuf = []
    
    def store_section():
        nonlocal linebuf, sec_name, sections
        if sec_name in sections.keys():
            # this type of section already listed
            sections[sec_name].append(linebuf)
        else:
            # new type of section
            sections[sec_name] = [linebuf]
        linebuf = []
        return
    
    re_thresh = re.compile(r' Convergence thresholds\s+(\S+) \(gradient\)' +
                       r'\s+(\S+) \(energy\)')
                       #r'\s+(\S+) \(energy\)\s+(\S+) \(step length\)')
    re_results = re.compile(r' Results for state\s*\d+\.\d')
    re_trans = re.compile(r' !MCSCF trans\s+<|[eE]xpectation values')
    re_natorb = re.compile('\s+NATURAL ORBITALS')
    re_civec = re.compile(r' CI (vector|Coefficients) (of|for state) symmetry\s*\d+')
    re_stars = re.compile(r'[*]{40}')

    for line in inbuf:
        if re_thresh.match(line):
            # beginning of iterations section
            store_section()
            sec_name = 'iterations'
        if re_results.match(line):
            # after convergence; beginning of results
            store_section()
            sec_name = 'results'
        if re_trans.search(line):
            # beginning of expectation values
            if sec_name != 'trans':
                store_section()
                sec_name = 'trans'
        if re_natorb.match(line):
            store_section()
            sec_name = 'natorb'
        if re_civec.match(line):
            store_section()
            sec_name = 'civector'
        if re_stars.search(line):
            # everything that remains
            if sec_name != 'tail':
                store_section()
                sec_name = 'tail'
        linebuf.append(line)
    # store the final section
    store_section()
    return sections
##
def mrci_sections(inbuf):
    '''
    Given a list of lines of text from one MRCI part of the output file,
        as from identify_sections()['mrci'][0],
    Return a dict of sub-sections
    '''
    sections = {}
    sec_name = 'top'    
    linebuf = []
    
    def store_section():
        nonlocal linebuf, sec_name, sections
        if sec_name in sections.keys():
            # this type of section already listed
            sections[sec_name].append(linebuf)
        else:
            # new type of section
            sections[sec_name] = [linebuf]
        linebuf = []
        return
    
    re_iter = re.compile(r' Molecular orbitals read from record\s+\d+\.\d')
    re_civec = re.compile(r'  Reference coefficients greater than\s+\d\.\d+')
    #re_results = re.compile(r' RESULTS FOR STATE\s*(\d+\.\d)')
    re_results = re.compile(r' Reference coefficients greater than\s*\d\.\d+')
    re_stars = re.compile(r'[*]{40}')

    for line in inbuf:
        if re_iter.match(line):
            # beginning of iterations section
            store_section()
            sec_name = 'iterations'
        if re_civec.match(line):
            store_section()
            sec_name = 'civector'
        if re_results.match(line):
            store_section()
            sec_name = 'results'
        if re_stars.search(line):
            # everything that remains
            if sec_name != 'tail':
                store_section()
                sec_name = 'tail'
        linebuf.append(line)
    # store the final section
    store_section()
    return sections
##
def basisset_name(linebuf):
    # Given relevant lines, as from identify_sections()['header'][0], 
    # return the basis set assignment
    regex = re.compile(r' SETTING BASIS\s+=\s+(.*)')
    basis = ''
    for line in linebuf:
        m = regex.match(line)
        if m:
            basis = m.group(1)
    return basis
##
def point_group(linebuf):
    # Given relevant lines, as from identify_sections()['integrals'][0], 
    # return the (computational) point group
    regex = re.compile(r' Point group\s+(\S+)')
    PG = ''
    for line in linebuf:
        m = regex.match(line)
        if m:
            PG = m.group(1)
    return PG
##
def nuclear_charge_total(linebuf):
    # Given relevant lines, as from identify_sections()['integrals'][0], 
    # Return the total nuclear charge (may be less than Z-sum when there are ECPs)
    # Return None upon failure
    chrg = number_after_string('NUCLEAR CHARGE:', linebuf)
    return chrg
##
def nbf_primitive(linebuf):
    # Given relevant lines, as from identify_sections()['integrals'][0], 
    # Return the number of primitives in the basis set
    # Return None upon failure
    nprim = number_after_string('NUMBER OF PRIMITIVE AOS:', linebuf)
    return nprim
##
def nbf(linebuf):
    # Given relevant lines, as from identify_sections()['integrals'][0], 
    # Return the number of contracted functions in the basis set
    # Return None upon failure
    n = number_after_string('NUMBER OF CONTRACTIONS:', linebuf)
    return n
##
def get_dynfac(linebuf):
    # Given relevant lines, as from multi_sections()['top'][0],
    # Return the value assigned to DYNFAC (or zero)
    sstr = 'Dynamical weighting enabled. DYNFAC='
    dynfac = number_after_string(sstr, linebuf)
    if dynfac is None:
        dynfac = 0
    return dynfac
##
def orbital_spaces(linebuf):
    # Given relevant lines, as from multi_sections()['top'][0],
    # return the orbital space
    orbsp = {}  # key = space type, value = int or list
    regex = re.compile(r' Number of (frozen|closed-shell|active|external)\s+orbitals:')
    for line in linebuf:
        m = regex.match(line)
        if m:
            # orbital counts
            if '(' in line:
                # get irrep counts
                w = line.replace(')', '').split('(')
                nclosed = [int(n) for n in w[-1].split()]
            else:
                # irrep counts not present
                nclosed = int(line.split()[4])
            orbsp[m.group(1)] = nclosed
    return orbsp
##
def state_symmetry_groups(linebuf):
    # Given relevant lines, as from multi_sections()['top'][0],
    # return a list of dict describing the "state symmetry" groups in MULTI
    stsym = []
    regex = re.compile(r' State symmetry\s*(\d+)')
    re_nactel = re.compile(r' Number of active electrons:\s+(\d+)\s+Spin' +
                       ' symmetry=(\w+)\s+Space symmetry=(\d)')
    re_nstates = re.compile(r' Number of states:')

    for line in linebuf:
        m = regex.match(line)
        if m:
            # a "State symmetry" group
            stsym.append({'label': m.group(1)})
        m = re_nactel.match(line)
        if m:
            stsym[-1]['nelec'] = int(m.group(1))
            stsym[-1]['spin'] = m.group(2)
            stsym[-1]['irrep'] = int(m.group(3))
        if re_nstates.match(line):
            stsym[-1]['nstates'] = int(line.split()[-1])
    return stsym
##
def multi_convergence(linebuf):
    # Given relevant lines, as from multi_sections()['iterations'][0],
    # return whether MULTI converged, and the convergence thresholds
    regex = re.compile(' CONVERGENCE ')
    re_thresh = re.compile(r' Convergence thresholds\s+(\S+) \(gradient\)' +
                           r'\s+(\S+) \(energy\)')
                           #r'\s+(\S+) \(energy\)\s+(\S+) \(step length\)')
    retval = {}
    converged = False
    thresh = {}
    for line in linebuf:
        m = regex.search(line)
        if m:
            converged = ('CONVERGENCE REACHED' in line)
        m = re_thresh.match(line)
        if m:
            thresh = {'gradient': float(m.group(1)), 'energy': float(m.group(2))}
            try:
                thresh['step length'] = float(m.group(3))
            except IndexError:
                # not available
                pass
    retval['converged'] = converged
    retval['threshold'] = thresh
    return retval
##
def multi_weights(linebuf):
    # Given relevant lines, as from multi_sections()['iterations'][0],
    # return the state weights in state-averaged CASSCF (fixed weights)
    re_wt_ini = re.compile(r' Weight factors for state symmetry\s+(\d+):')
    re_floats = re.compile(r'(\s+\d+\.\d+)+\s*$') # line with all positive floats
    re_blank = re.compile(r'^\s*$')

    weightl = {}  # key = state symmetry group label, value = list
    isym = False
    for line in linebuf:
        m = re_wt_ini.match(line)
        if m:
            # read weights from first line of a set
            isym = m.group(1)
            weightl[isym] = [float(x) for x in line.split()[6:]]
        if isym:
            if re_floats.match(line):
                weightl[isym] += [float(x) for x in line.split()]
            if re_blank.match(line):
                isym = False
    return weightl
##
def unnormalize_cas_weights(weights):
    # given dict of state weights in state-averaged CASSCF,
    # Return a similar dict where the smallest weight = 1
    # Values are rounded to 'ndig' digits after the decimal
    minw = np.inf
    nw = {}
    for k, vl in weights.items():
        minw = min(minw, min(vl))
        nw[k] = np.array(vl)
    for k in nw.keys():
        nw[k] = nw[k] / minw
    return nw
##
def multi_iterations(linebuf):
    # Given relevant lines, as from multi_sections()['iterations'][0],
    # return a dataframe of the convergence progress
    re_iter = re.compile(r' ITER. MIC  NCI  NEG     ENERGY\(VAR\)     ENERGY\(PROJ\)')
    re_eiter = re.compile(r'(\s+\d+){4}(\s+[-]?\d+\.\d+)+')
  
    d = {}  # key = column heading, value = list
    for line in linebuf:
        if re_iter.match(line):
            # replace embedded space from header "ENERGY CHANGE" 
            d = {h: [] for h in line.replace('GY CH', 'GY_CH').split()}
        if re_eiter.match(line):
            eline = line.replace('D', 'E')
            w = eline.split()
            for k in d.keys():
                d[k].append(w.pop(0))
    dtypel = [int]*4 + [float]*8
    dtyped = {k: v for k, v in zip(d.keys(), dtypel)}
    df = pd.DataFrame(d).astype(dtyped)
    return df
##
def scf_result(scftype, linebuf):
    # Given relevant lines for one state, as from multi_sections()['results'][i],
    #   or identify_sections()['rhf'][0],
    # return a dict of the results
    # scftype must be in ['RHF', 'UHF', 'MCSCF']
    
    calc = scftype.upper()
    if calc not in ['RHF', 'UHF', 'MCSCF']:
        print(f'*** SCF type of {calc} is unknown ***')
        return {}
    
    # spin multiplicity label like "Quartet" might be present
    s = r' !' + calc + r' STATE\s*(\d+\.\d(?: [A-Z][a-z]+)?) (Energy|Dipole) '
    re_prop = re.compile(s)
    re_1e = re.compile(r'One[- ]electron')
    re_2e = re.compile(r'Two[- ]electron')
  
    cols = ['Label', 'E', 'Nuc', 'Kin', '1e', '2e', 'Vir', 'dipX',
           'dipY', 'dipZ', 'DebyeX', 'DebyeY', 'DebyeZ', 'irrep']
    d = {k: [] for k in cols}
    lbl = ''
    for line in linebuf:
        m = re_prop.match(line)
        if m:
            s = m.group(1).strip()
            if lbl and (lbl != s):
                print(f'*** Found {calc} state {s} but expected {lbl} ***')
            else:
                lbl = s
                d['Label'] = lbl
                if m.group(2) == 'Energy':
                    d['E'] = float(line.split()[-1])
                else:
                    # dipole moment has three components
                    dip = [float(x) for x in line.split()[-3:]]
                    [d['dipX'], d['dipY'], d['dipZ']] = dip
        if 'Nuclear' in line:
            d['Nuc'] = float(line.split()[-1])
        if 'Kinetic' in line:
            d['Kin'] = float(line.split()[-1])
        if re_1e.search(line):
            d['1e'] = float(line.split()[-1])
        if re_2e.search(line):
            d['2e'] = float(line.split()[-1])
        if 'Virial' in line:
            d['Vir'] = float(line.split()[-1])
        if 'Debye' in line:
            # dipole moment has three components
            dip = [float(x) for x in line.split()[-3:]]
            [d['DebyeX'], d['DebyeY'], d['DebyeZ']] = dip
    # extract irrep from label
    d['irrep'] = lbl.split()[0].split('.')[-1]
    return d
##
def multi_1result(linebuf):
    # Given relevant lines for one state, as from multi_sections()['results'][i],
    # return a dict of the results
    re_hdr = re.compile(r' Results for state(\s*\d+\.\d(?: [A-Z][a-z]+et)?)')
    lbl = ''
    for line in linebuf:
        m = re_hdr.match(line)
        if m:
            lbl = m.group(1).strip()
    d = scf_result('MCSCF', linebuf)
    if d['Label'] != lbl:
        print(f'*** Found state {d["Label"]} but expected {lbl} ***')
    return d
##
def multi_results(linebufs):
    # Given a list of lists of lines for multiple states,
    #    as from multi_sections()['results'] (without the next subscript)
    # return a dataframe of the results for all states
    cols = ['Label', 'E', 'Nuc', 'Kin', '1e', '2e', 'Vir', 'dipX',
           'dipY', 'dipZ', 'DebyeX', 'DebyeY', 'DebyeZ', 'irrep']
    d = {k: [] for k in cols}
    for linebuf in linebufs:
        oned = multi_1result(linebuf)
        for k in cols:
            d[k].append(oned[k])

    ncol = len(cols)
    dtypel = [str] + [float]*(ncol - 2) + [int]
    dtyped = {k: v for k, v in zip(d.keys(), dtypel)}
    df = pd.DataFrame(d).astype(dtyped)
    return df
##
def multi_expec(linebuf):
    # Given relevant lines, as from multi_sections()['trans'][0],
    # return a dataframe of expectation values
    regex = re.compile(r' \!MCSCF expec\s+<(\d+\.\d(?: [A-Z][a-z]+et)?)\|([A-Z2\*]+)\|\1')
    expecd = {}  # key = operator, value = {'Label': [], 'value': []}
    for line in linebuf:
        m = regex.match(line)
        if m:
            op = m.group(2)
            if op not in expecd.keys():
                expecd[op] = {'Label': [], 'value': []}
            lbl = m.group(1)
            expecd[op]['Label'].append(lbl)
            x = float(line.replace('D', 'E').split()[-1])
            expecd[op]['value'].append(x)
    # get labels from last operator
    labels = expecd[op]['Label']
    data = {'Label': labels}
    for op, subd in expecd.items():
        # check that labels are consistent across operators
        if (np.array(labels) != np.array(subd['Label'])).any():
            print('*** State labels not consistent across operators ***')
        else:
            data[op] = subd['value']
    df = pd.DataFrame(data)
    return df
##
def multi_transmom(linebuf):
    # Given relevant lines, as from multi_sections()['trans'][0],
    # return a dict of DataFrames of off-diagonal transition moments
    regex = re.compile(r' \!MCSCF trans\s+<(\d+\.\d)\|([A-Z]+)\|(\d+\.\d)')
    transmom = {}  # key = operator, value = {'bra': [], 'ket': [], 'value': []}
    for line in linebuf:
        m = regex.match(line)
        if m:
            op = m.group(2)
            if op not in transmom.keys():
                transmom[op] = {'bra': [], 'ket': [], 'value': []}
            bra = m.group(1)
            ket = m.group(3)
            transmom[op]['bra'].append(bra)
            transmom[op]['ket'].append(ket)
            x = float(line.replace('D', 'E').split()[3])
            transmom[op]['value'].append(x)
    retval = {}
    for op, vald in transmom.items():
        # convert to DataFrame
        df = pd.DataFrame(vald)
        retval[op] = df
    return retval
##
def parse_orbitals(linebuf):
    '''
    Given relevant lines, as from multi_sections()['natorb'][0],
        return a DataFrame of basic orbital description
    Each orbital has as many rows as AOs listed
    Also return the header string that contains 'ORBITALS'
    '''
    re_data = re.compile(r'\s+(\d+\.\d)\s+([-]?\d\.\d+)\s*([-]?\d+\.\d+)\s+\d+\s+\d+\s+[a-z]')
    orbl = []; occl = []; El = []; cenl = []; mul = []; typl = []; coeffl = []
    for line in linebuf:
        if 'ORBITAL' in line:
            title = line.strip()
        if re_data.match(line):
            w = line.split()
            orb = w.pop(0)
            occ = float(w.pop(0))
            E = float(w.pop(0))
            # the remainder of w[] should be 4-tuples (Cen, Mu, Typ, Coeff)
            while w:
                [cen, mu, typ, coeff] = w[:4]
                w = w[4:]
                orbl.append(orb); occl.append(occ); El.append(E)
                cenl.append(cen); mul.append(mu); typl.append(typ)
                coeffl.append(coeff)
    data = {'Orbital': orbl, 'Occ': occl, 'Energy': El, 'Cen': cenl}
    data.update({'Mu': mul, 'Typ': typl, 'Coeff': coeffl})
    df = pd.DataFrame(data)
    return title, df
##
def parse_multi_1civec(linebuf):
    '''
    Given relevant lines, as from multi_sections()['civector'][0]:
    Return a DataFrame, a list of state energies, and the "state symmetry" label
    Here I assume that states are few and fit on one line
    '''
    re_civec = re.compile(r' CI (?:vector|Coefficients) (?:for state|of) symmetry\s*(\d+(?: \([A-Z][a-z]+et\))?)')
    re_config = re.compile(r'(\s+[20ab]+)+')
    re_float = re.compile(r'[-]?\d+\.\d+')
    re_blank = re.compile(r'^\s*$')
    re_hdr = re.compile(r' State:(\s+\d+)+')  # sometimes missing; when nstate <= 7?
    
    configs = []  # list of list (per irrep) of orbital occup strings
    coeffs = []   # list of lists (per state), for one occup string
    energies = []
    colnos = []   # column numbers as printed (1-based)
    label = ''
    nirr = ncols = nstate = 0
    in_etot = False
    for line in linebuf:
        if re_hdr.match(line):
            cols = [int(n) for n in line.split()[1:]]
            colnos.extend(cols)
            for c in cols:
                coeffs.append([])
        if in_etot:
            # at the bottom; there may be additional lines
            try:
                energies += [float(x) for x in line.split()]
            except ValueError:
                # inappropriate line
                pass
            if re_blank.match(line):
                in_etot = False
        if 'TOTAL ENERGIES' in line:
            energies = [float(x) for x in line.split()[2:]]
            in_etot = True
        if ' Energy:  ' in line:
            # alternative output format
            energies.extend(([float(x) for x in line.split()[1:]]))
        if not label:
            m = re_civec.match(line)
            if m:
                label = m.group(1)
                #print(line.rstrip(), 'label =', label)
        m = re_config.match(line)
        if m:
            mfl = re_float.findall(line)
            coef = [float(x) for x in mfl]
            ncols = len(coef)
            w = line.split()
            # count(elements in 'w') = count(irreps) + count(state columns)
            nirr = len(w) - ncols
            conf = w[:nirr]
            if ncols >= len(colnos):
                # this is the first sub-table; record the configurations
                configs.append(conf)
            else:
                # not the first sub-table; do not record repeated configurations
                pass
            if ncols > len(colnos):
                # column headings are missing; compensate here
                colnos.extend([i+1 for i in range(ncols)])
                coeffs = [[] for i in range(ncols)]
            #coeffs.append(coef)
            for n in colnos[-ncols:]:
                i = n - 1
                coeffs[i].append(coef.pop(0))
    #nstate = len(colnos)
    # Organize into a DataFrame
    data = {}
    for i in range(nirr):
        k = f'irr {i+1}'
        v = [conf[i] for conf in configs]
        data[k] = v
    for n in colnos:
        k = f'state {n}'
        i = n - 1
        v = coeffs[i]
        data[k] = v
    df = pd.DataFrame(data)
    '''
    cols = [f'irr {i+1}' for i in range(nirr)]
    cols += [f'state {i+1}' for i in range(nstate)]
    df = pd.DataFrame(columns=cols)
    for irr, col in enumerate(cols[:nirr]):
        v = []
        for conf in configs:
            v.append(conf[irr])
        df[col] = v
    for ist, col in enumerate(cols[-nstate:]):
        v = []
        for coef in coeffs:
            v.append(coef[ist])
        df[col] = v
    for i in range(nirr):
        df[cols[i]] = [conf[i] for conf in configs]
    '''
        
    return df, energies, label
##
def multi_civecs(linebufs):
    '''
    "linebufs" is a list of lists of lines for multiple states,
        as from multi_sections()['civector'] (without the next subscript)
    # Return a dict of dataframes and a dict of energy lists 
        (key = "state symmetry" number label)
    '''
    ddf = {}
    dEl = {}
    for linebuf in linebufs:
        df, El, label = parse_multi_1civec(linebuf)
        ddf[label] = df
        dEl[label] = El
    return ddf, dEl
##
def mrci_info(linebuf):
    # Given relevant lines, as from mrci_sections()['top'][0],
    # return a dict of the basic parameters in the MRCI
    re_sym = re.compile(r' Reference symmetry:\s+(\d)\s+([A-Z][a-z]+et)')
    re_nelec = re.compile(r' Number of electrons:')
    re_spaces = re.compile(r' Number of ([a-z]+)\s+orbitals:')
    re_nstate = re.compile(r' Number of optimized states:\s*(\d+)')

    spaces = {}  # key = orbital space, value = number by irrep (or total)
    retval = {}
    for line in linebuf:
        m = re_nstate.match(line)
        if m:
            retval['nstates'] = int(m.group(1))
        m = re_sym.match(line)
        if m:
            retval['irrep'] = int(m.group(1))
            retval['smult'] = m.group(2)
        if re_nelec.match(line):
            retval['nelec'] = int(line.split()[-1])
        m = re_spaces.match(line)
        if m:
            sp = m.group(1)
            if '(' in line:
                # listed by irrep; get the numbers between parentheses
                w = line.split('(')[-1].split()[:-1]
            else:
                # only a total is available
                w = [line.split()[-1]]
            spaces[sp] = [int(n) for n in w]
    retval['spaces'] = spaces
    return retval
##
def mrci_iterations(linebuf):
    # Given relevant lines, as from mrci_sections()['iterations'][0],
    # return a dict 
    re_eref = re.compile(r' State     Reference Energy')
    re_hdr = re.compile(r'  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY')
    re_iter = re.compile(r'(\s+\d+)+(\s+[-]?\d+\.\d+)+')
    re_saverec = re.compile(r' Wavefunction saved on\s+(\d+\.\d)')
    re_blank = re.compile(r'^\s*$')

    retval = {}
    in_eref = in_iter = False
    iterdat = []  # list of rows
    for line in linebuf:
        if in_iter:
            if re_blank.match(line):
                in_iter = False
            elif re_iter.match(line):
                iterdat.append(line.replace('D', 'E').split())
        if re_hdr.match(line):
            in_iter = True
            # replace embedded spaces
            cols = line.replace('AL EN', 'AL_EN').replace('GY CH', 'GY_CH').split()
        if in_eref:
            w = line.split()
            if len(w) != 2:
                in_eref = False
                continue
            retval['init_ref'][int(w[0])] = float(w[1])
        if re_eref.match(line):
            in_eref = True
            retval['init_ref'] = {}
        m = re_saverec.match(line)
        if m:
            retval['saverec'] = m.group(1)
    dtypel = [int]*3 + [float]*8
    dtyped = {k: v for k, v in zip(cols, dtypel)}
    retval['iterations'] = pd.DataFrame(columns=cols, data=iterdat).astype(dtyped)
    return retval
##
def mrci_results(linebuf):
    # Given relevant lines, as from mrci_sections()['results'][0],
    # return a dict 
    re_blank = re.compile(r'^\s*$')
    re_cihdr = re.compile(r' Reference coefficients greater than\s*\d\.\d+')
    re_floats = re.compile(r'^(\s+[-]?\d+\.\d+)+$')
    re_civec = re.compile(r' [20/\\]+(\s+[-]?\d\.\d+)+')
    re_state = re.compile(r' RESULTS FOR STATE\s*(\d+\.\d)')
    re_c0 = re.compile(r'([-]?\d\.\d+) \(([a-z]+)\)')
    energy_types = {'ref E': re.compile(r' Reference energy\s+([-]?\d+\.\d+)'),
                   'nuc E': re.compile(r' Nuclear energy\s+([-]?\d+\.\d+)'),
                   'kin E': re.compile(r' Kinetic energy\s+([-]?\d+\.\d+)'),
                   '1e E': re.compile(r' One electron energy\s+([-]?\d+\.\d+)'),
                   '2e E': re.compile(r' Two electron energy\s+([-]?\d+\.\d+)'),
                   'correl E': re.compile(r' Correlation energy\s+([-]?\d+\.\d+)'),
                   'virial': re.compile(r' Virial quotient\s+([-]?\d+\.\d+)'),
                  }
    re_total = re.compile(r' !MRCI STATE\s*(\d+\.\d) (Energy|Dipole)')
    re_corrected = re.compile(r' Cluster corrected energies\s+([-]?\d+\.\d+) ' +
        r'\((Davidson|Pople), (fixed|relaxed|rotated) reference\)')
    re_trans = re.compile(r' !MRCI trans\s+<(\d+\.\d)\|([A-Z\d]+)\|(\d+\.\d)>' +
        r'\s+([-]?\d+\.\d+)')

    retval = {}
    in_civec = False
    vecdat = []  # list of rows
    nstate = 0
    label = ''
    state = {}  # key = state label, value = dict of info
    trans = []  # transition moments
    for line in linebuf:
        if in_civec:
            if re_blank.match(line):
                in_civec = False
            elif re_civec.match(line):
                w = line.replace('D', 'E').split()
                vecdat.append(w)
                nstate = len(w) - 1  # first field is the configuration
            elif re_floats.match(line):
                # continuation line
                w = line.replace('D', 'E').split()
                vecdat[-1].extend(w)
                nstate += len(w)
                
        if re_cihdr.match(line):
            in_civec = True
        m = re_state.match(line)
        if m:
            # new state
            label = m.group(1)
            state[label] = {'C0': {}, 'Energy': {'davidson': {}, 'pople': {}}}
        if ' Coefficient of reference function:   C(0) =' in line:
            m = re_c0.findall(line)
            for (c, v) in m:
                state[label]['C0'][v] = float(c)
        for typ, regex in energy_types.items():
            # specific energy sub-types
            m = regex.match(line)
            if m:
                state[label]['Energy'][typ] = float(m.group(1))
        m = re_total.match(line)
        if m:
            if m.group(1) != label:
                sys.exit(f'*** Label is {m.group(1)} but should be {label}')
            if m.group(2) == 'Energy':
                state[label]['Energy']['total'] = float(line.split()[-1])
            elif m.group(2) == 'Dipole':
                state[label]['Dipole'] = np.array(line.split()[-3:], dtype=float)
        m = re_corrected.match(line)
        if m:
            who = m.group(2).lower()
            variant = m.group(3)
            state[label]['Energy'][who][variant] = float(m.group(1))
        m = re_trans.match(line)
        if m:
            d = {'bra': m.group(1), 'op': m.group(2), 'ket': m.group(3),
                'value': float(m.group(4))}
            trans.append(d)
                
    # make the DataFrame of configurational coefficients
    cols = ['config'] + [str(n) for n in range(nstate)]
    dtypel = [str] + [float]*nstate
    dtyped = {k: v for k, v in zip(cols, dtypel)}
    retval['civec'] = pd.DataFrame(columns=cols, data=vecdat).astype(dtyped)
    retval['state'] = state
    retval['transmom'] = trans
    return retval
##
def SO_integrals(linebuf):
    # Given relevant lines, as from major_sections()['SOintegrals'][0],
    # return a dict 
    re_oper = re.compile('    Operator      Symmetry')
    re_intc = re.compile(' Integral cutoff: ')
    re_oper = re.compile('\s+(LS[XYZ])\s+(\d)')

    retval = {}
    op = {}
    in_oper = False
    for line in linebuf:
        if re_oper.match(line):
            in_oper = True
        if in_oper:
            m = re_oper.match(line)
            if m:
                op[m.group(1)] = int(m.group(2))
        if re_intc.match(line):
            retval['integral_cutoff'] = float(line.split()[-1].replace('D', 'E'))
            in_oper = False
            retval['SO_op_irreps'] = op
    return retval
##
def coordinates(linebuf):
    # Given relevant lines, as from identify_sections()['integrals'][0], 
    # return the atomic coordinates (Bohr) and nuclear charges
    #   may be less than Z when there are ECPs
    re_hdr = re.compile(' NR  ATOM    CHARGE       X')
    re_crd = re.compile(r'\s+\d+\s+[A-Z]+\s+\d+\.\d+(\s+[-]?\d+\.\d+){3}')
    
    crd = []  # list of dict
    in_crd = False
    for line in linebuf:
        if in_crd:
            if 'Bond lengths' in line:
                in_crd = False
                continue
            m = re_crd.match(line)
            if m:
                w = line.split()
                atc = {'nr': int(w[0]), 'el': w[1].capitalize(), 'Qnuc': float(w[2]),
                      'xyzBohr': [float(a) for a in w[3:]]}
                crd.append(atc)
        if re_hdr.match(line):
            in_crd = True
    return crd
##
def hf_occup(filebuf):
    # Given relevant lines, as from identify_sections()['rhf'][0], 
    # Return the final orbital occupations, by irrep
    re_occ = re.compile(r' Final (alpha|beta ) occupancy: ')
    retval = {}
    for line in filebuf:
        m = re_occ.match(line)
        if m:
            retval[m.group(1)] = [int(x) for x in line.split()[3:]]
    return retval
##
def soci_sections(inbuf):
    '''
    Given a list of lines of text from the spin-orbit-CI part of the output file,
        as from identify_sections()['soci'][0],
    Return a dict of sub-sections
    '''
    sections = {}
    sec_name = 'matel_comput'
    linebuf = []
    
    def store_section():
        nonlocal linebuf, sec_name, sections
        if sec_name in sections.keys():
            # this type of section already listed
            sections[sec_name].append(linebuf)
        else:
            # new type of section
            sections[sec_name] = [linebuf]
        linebuf = []
        return
    
    re_basprop = re.compile('Property matrices in the basis of the zeroth-order wave-functions')
    re_socalc = re.compile('Spin-orbit calculation in the basis of zeroth order wave functions')
    re_levels = re.compile(' Spin-orbit eigenstates|( =>)? Eigenvalues of( the)? spin-orbit matrix')
    re_vecs = re.compile('( =>)? Eigenvectors of spin-orbit matrix| Spin-orbit eigenvectors ')
    re_compos = re.compile(' Composition of spin-orbit eigenvectors')
    re_prop = re.compile(' Property matrices transformed in SO basis')
    re_stars = re.compile(r'\*{80}')
    
    for line in inbuf:
        if re_basprop.search(line):
            # beginnining of section about dipole elements between basis states
            store_section()
            sec_name = 'basis_prop'
        if re_socalc.search(line):
            store_section()
            sec_name = 'so_calc'
        if re_levels.match(line):
            store_section()
            sec_name = 'so_levels'
        if re_vecs.match(line):
            store_section()
            sec_name = 'so_vectors'
        if re_compos.match(line):
            store_section()
            sec_name = 'so_compos'
        if re_prop.match(line):
            store_section()
            sec_name = 'prop'
        if re_stars.search(line):
            if sec_name != 'tail':
                store_section()
                sec_name = 'tail'
        linebuf.append(line)
    # store the last section
    store_section()
    return sections
##
def soci_replacements(linebuf):
    # Read changes to diagonal elements HLSDIAG 
    # Return a dict with record number as key
    s =  r' Wavefunction restored from record\s+(\d+\.\d)\s+Symmetry=(\d)'
    s += r'\s+S=\s*([-]?\d+\.\d)\s+NSTATE=\s+(\d+)'
    re_rec = re.compile(s)
    re_floats = re.compile(r'^(\s+[-]?\d+\.\d+)+$')
    retval = {}
    sym = nst = recno = 0
    S = -99
    for line in linebuf:
        m = re_rec.match(line)
        if m:
            recno = m.group(1)
            sym = int(m.group(2))
            S = float(m.group(3))
            nst = int(m.group(4))
            retval[recno] = {'sym': sym, 'S': S, 'nstate': nst}
            block = ''  # will be either 'old' or 'new'
        if 'Original energies' in line:
            block = 'old'
            retval[recno][block] = [float(x) for x in line.split()[2:]]
        if 'Replaced energies' in line:
            block = 'new'
            retval[recno][block] = [float(x) for x in line.split()[2:]]
        if re_floats.match(line):
            retval[recno][block].extend([float(x) for x in line.split()])
    return retval
##
def soci_basis_prop(linebuf, nmrci):
    # Read (symmetric) dipole moment matrix for the SO basis states
    # Return a dict
    #    key = 'basis', for list of MRCI spatial basis states
    #    key = operator name, for corresponding matrix
    # 'linebuf' is a list of lines of text as from soci_section()['basis_prop'][0]
    # 'nmrci' is the matrix dimension = number of MRCI basis (spatial) states
    re_op = re.compile(r' Property matrix for the\s+([A-Z]+)\s+operator')
    re_hdr = re.compile(r'\s+Nr\s+Nr\'\s+State\s+S(\s+\d+)+')
    re_data = re.compile(r'\s+\d+\s+\d+\s+\d+\.\d\s*\d+\.\d(\s+[-]?\d+\.\d+)+')
    retval = {}
    basis = [{} for i in range(nmrci)]  # list of dict describing the basis states
    op = 'oops'
    cols = []
    for line in linebuf:
        m = re_op.match(line)
        if m:
            op = m.group(1)
            pmat = np.zeros((nmrci, nmrci))
            retval[op] = pmat
        if re_hdr.match(line):
            cols = [int(x) for x in line.split()[4:]]
        if re_data.match(line):
            w = line.split()
            nr = int(w.pop(0))
            ibas = nr - 1
            nrp = int(w.pop(0))
            st = w.pop(0)
            S = float(w.pop(0))
            basis[ibas] = {'Nr': nr, "Nr'": nrp, 'State': st, 'S': S}
            for ncol, x in zip(cols, w):
                icol = ncol - 1
                retval[op][ibas, icol] = float(x)
    retval['basis'] = basis
    return retval
##
def soci_matelems(linebuf):
    # Read SO matrix elements as they are reported one by one
    # Return a list of dict, one element for each group of reported elements
    # 'linebuf' is a list of lines of text as from soci_section()['matel_comp'][0]
    re_rec = re.compile(r' (Bra|Ket)-wavefunction restored from record\s+(\d+\.\d)')
    re_sym = re.compile(r' Symmetry of (bra|ket) wavefunction:\s+\d\s+S=\s*(\d+\.\d)\s+MS=\s*([-]?\d+\.\d)')
    re_optype = re.compile(r' Spin-orbit matrix elements .* operator')
    re_elem = re.compile(r' !MRCI trans\s+<(\d+\.\d)\|(LS[XYZ])\|(\d+\.\d)>\s+([-]?\d+\.\d+[i]?) au')
    
    retval = []
    for line in linebuf:
        m = re_rec.match(line)
        if m:
            if m.group(1) == 'Bra':
                # new group of elements
                d = {'bra': {'record': m.group(2)}}
                retval.append(d)
            else:
                d['ket'] = {'record': m.group(2)}
        m = re_sym.match(line)
        if m:
            d[m.group(1)]['S'] = m.group(2)
            d[m.group(1)]['MS'] = m.group(3)
        if re_optype.match(line):
            # matrix elements are listed for two variants of the LS operator
            if 'mean field' in line:
                op_type = 'MF'
            elif 'Breit-Pauli' in line:
                op_type = 'BP'
            else:
                op_type = '??'
            if 'elems' not in d.keys():
                d['elems'] = {op_type: []}
            else:
                # add to existing dict
                d['elems'][op_type] = []
        m = re_elem.match(line)
        if m:
            td = {'op': m.group(2), 'bra': m.group(1), 'ket': m.group(3)}
            # value of matrix element is in Hartree
            td['value'] = complex(m.group(4).replace('i', 'j'))
            d['elems'][op_type].append(td)
    return retval
##
def soci_E0(linebuf):
    # return the value of E0 (energy of lowest basis state)
    # 'linebuf' is a list of lines of text as from soci_section()['so_calc'][0]
    re_e0 = re.compile(r'E0\s*=\s+([-]?\d+\.\d+)')
    e0 = 0
    for line in linebuf:
        m = re_e0.search(line)
        if m:
            e0 = float(m.group(1))
    return e0
##
def soci_matrix(linebuf):
    # Read the spin-orbit matrix
    # Return a dict
    #    key = 'basis', for list of basis states
    #    key = 'matrix', for the matrix    
    # 'linebuf' is a list of lines of text as from soci_section()['so_calc'][0]
    re_hdr = re.compile(r'\s+Nr\s+State\s+S\s+Sz(\s+\d+)+')
    re_re = re.compile(r'\s+\d+\s+\d+\.\d\s+\d+\.\d\s*[-]?\d+\.\d(\s+[-]?\d+\.\d+)+')
    re_im = re.compile(r'(\s+[-]?\d+\.\d+)+')
    # first find the dimension of the matrix
    dimen = 0
    for line in linebuf:
        if re_hdr.match(line):
            dimen = int(line.split()[-1])
    
    basis = [{} for i in range(dimen)]
    somat = np.zeros((dimen, dimen), dtype=complex)
    retval = {'basis': basis, 'matrix': somat}
    for line in linebuf:
        if re_hdr.match(line):
            cols = [int(x) for x in line.split()[4:]]
        if re_re.match(line):
            w = line.split()
            nr = int(w.pop(0))
            st = w.pop(0)
            S = float(w.pop(0))
            sz = float(w.pop(0))
            ibas = nr - 1
            basis[ibas] = {'Nr': nr, 'State': st, 'S': S, 'Sz': sz}
            for n, x in zip(cols, w):
                icol = n - 1
                somat[ibas, icol] += float(x)
        if re_im.match(line):
            w = line.split()
            for n, x in zip(cols, w):
                icol = n - 1
                somat[ibas, icol] += float(x) * 1j
    return retval
##
def soci_vectors(linebuf):
    # Read the SO-CI eigenvectors
    # Return a dict
    #  key = 'basis', for list of basis states
    #  key = 'matrix', for vectors: first index is basis, second is eigenstate
    # 'linebuf' is a list of lines of text as from soci_section()['so_vectors'][0]
    
    retval = soci_matrix(linebuf)  # format is the same! 
    return retval
##
def soci_composition(linebuf):
    # Read the composition of the SO-CI eigenvectors (by basis state, IN PERCENT)
    # Return a dict
    #  key = 'basis', for list of basis states
    #  key = 'matrix', for vectors: first index is basis, second is eigenstate
    # 'linebuf' is a list of lines of text as from soci_section()['so_vectors'][0]
    
    # remove '%' symbols, then use existing function
    buf = [line.replace('%', '') for line in linebuf]
    retval = soci_matrix(buf)  # format is the same! 
    # except that composition is real-valued
    retval['matrix'] = np.real(retval['matrix'])
    return retval
##
def soci_energies(linebuf):
    # Read the SO-CI eigenvalues
    # Return a dict
    #  key = 'E', for list of energies in Hartree
    #  key = 'Erel', for energies in cm-1 relative to ground level
    #  key = 'Eshift' for energies in cm-1 relative to lowest basis state
    # 'linebuf' is a list of lines of text as from soci_section()['so_levels'][0]
    re_data = re.compile(r'\s+\d+(\s+[-]?\d+\.\d+)+')
    
    eabs = []
    eshift = []
    erel = []
    retval = {'E': eabs, 'Eshift': eshift, 'Erel': erel}
    iabs = irel = ishift = 9999
    for line in linebuf:
        if 'Nr' in line:
            # first header line
            w1 = line.split()[1:]
        elif 'au' in line:
            # second header line
            w2 = line.split()
            # identify columns of interest
            for i, a1 in enumerate(w1):
                a2 = w2[i]
                if (a1 == 'E') and ('au' in a2):
                    iabs = i
                if (a1 == 'E-E0') and ('cm' in a2):
                    ishift = i
                if (a1 == 'E-E(1)') and ('cm' in a2):
                    irel = i
        elif re_data.match(line):
            w = line.split()
            w.pop(0)  # discard the 'Nr'
            eabs.append(float(w[iabs]))
            erel.append(float(w[irel]))
            eshift.append(float(w[ishift]))
    return retval
##
def soci_propmats(linebuf, dimen):
    # Read SO-CI property (dipole) matrices
    # Return a dict with key = operator
    # 'linebuf' is a list of lines of text as from soci_section()['prop'][0]
    # 'dimen' is the number of states
    re_hdr = re.compile(r'(\s+\d+)+$')
    re_data = re.compile(r'\s*\d+(\s+[-]?\d+\.\d+)+')
    
    retval = {}
    cols = []
    op = ''
    pmat = np.zeros((dimen, dimen))
    for line in linebuf:
        if 'TRANSFORMED' in line:
            if op:
                # save previous operator
                retval[op] = pmat
            # get operator name and component
            w = line.replace(')', '').split()
            op = f'{w[0]}_{w[-1]}'
            pmat = np.zeros((dimen, dimen))
        if re_hdr.match(line):
            cols = [int(n) for n in line.split()]
        if re_data.match(line):
            w = line.split()
            irow = int(w.pop(0)) - 1
            for n, x in zip(cols, w):
                icol = n - 1
                pmat[irow, icol] = float(x)
    # save last operator
    retval[op] = pmat
    return retval
##
def soci_expec(linebuf, dimen):
    # Read SO-CI expectation values (when printed individually)
    # Return a dict with key = operator
    # 'linebuf' is a list of lines of text as from soci_section()['prop'][0]
    # 'dimen' is the number of states
    re_op = re.compile(r'<i\|([A-Z]+)\|i>')
    re_hdr = re.compile(r' STATE:(\s+\d+)+$')
    re_data = re.compile(r' VALUE:(\s+[-]?\d+\.\d+)+')
    
    retval = {}
    cols = []
    op = ''
    thresh = None  # printing threshold, might be printed
    vec = np.zeros(dimen)
    nr = list(range(1, dimen+1))  # list of expected state numbers
    for line in linebuf:
        m = re_op.search(line)
        if m:
            if op:
                # store previous operator
                retval[op] = vec
                if nr:
                    print(f'*** No values for <i|{op}|i> for state =', nr)
            op = m.group(1)
            vec = np.zeros(dimen)  # dipole moments are real-valued
            nr = list(range(1, dimen+1))
            if 'No matrix element' in line:
                # read printing threshold
                thresh = float(line.split()[-1].replace('D', 'E'))
                nr = []
        if re_hdr.match(line):
            w = line.split()
            cols = [int(x) for x in w[1:]]
        if re_data.match(line):
            w = line.split()
            for n, x in zip(cols, w[1:]):
                i = n - 1
                vec[i] = float(x)
            
    # store last operator
    retval[op] = vec
    if nr:
        print(f'*** No values for <i|{op}|i> for state =', nr)
    # store threshold if available
    if thresh is not None:
        retval['print_thr'] = thresh
    return retval
##
def soci_trans(linebuf, dimen):
    # Read SO-CI transition matrix elements with the ground level
    #    (when printed individually)
    # Return a dict with key = operator
    # 'linebuf' is a list of lines of text as from soci_section()['prop'][0]
    # 'dimen' is the number of states
    # Print a message if some elements are missing 
    re_op = re.compile(r'<i\|([A-Z]+)\|1>')
    re_hdr = re.compile(r'(\s+\d+)+$')
    re_real = re.compile(r' REAL PART  \(a\.u\.\):(\s+[-]?\d+\.\d+)+')
    re_imag = re.compile(r' IMAG PART  \(a\.u\.\):(\s+[-]?\d+\.\d+)+')
    
    retval = {}
    cols = []
    op = ''
    nr = list(range(1, dimen+1))  # list of expected bra numbers
    vec = np.zeros(dimen, dtype=complex)  # transition moments are complex
    for line in linebuf:
        m = re_op.search(line)
        if m:
            # store any previous operator
            if op:
                retval[op] = vec
                if nr:
                    print(f'*** No values for <i|{op}|1> for bra =', nr)
            op = m.group(1)
            vec = np.zeros(dimen, dtype=complex)
            nr = list(range(1, dimen+1))
        if re_hdr.match(line):
            cols = [int(x) for x in line.split()]
        if re_real.match(line):
            w = line.split()
            for n, x in zip(cols, w[3:]):
                i = n - 1
                vec[i] += float(x)
                nr.remove(n)
        if re_imag.match(line):
            w = line.split()
            for n, x in zip(cols, w[3:]):
                i = n - 1
                vec[i] += float(x) * 1j
    # store last operator
    retval[op] = vec
    if nr:
        print(f'*** No values for <i|{op}|1> for bra =', nr)
    return retval
##
def final_times(fname):
    # return final 'CPU' and 'REAL' times
    re_cpu = re.compile(' CPU TIMES\s+\*\s+(\d+\.\d+)')
    re_real = re.compile(' REAL TIME\s+\*\s+(\d+\.\d+)')
    cpu = real = -99
    with open(fname, 'r') as F:
        for line in F:
            m = re_cpu.match(line)
            if m:
                cpu = float(m.group(1))
            m = re_real.match(line)
            if m:
                real = float(m.group(1))
    return cpu, real
##
def pair_lambdas(dfraw, cols=['E', 'dipZ', 'Lz', 'spinM', 'S'], 
                 thr=[1.e-6, 1.e-5, 0, 0, 0]):
    # Identify degenerate pairs of diatomic (or linear) states
    #   collect them into terms and return a DataFrame
    # 'cols' are columns that must be identical to thresholds 'thr'
    # Other columns are returned as list of component values
    
    data = {'index': []}   # indices into dfraw
    data.update({k: [] for k in dfraw.columns})
    # sort by first required column (such as 'E')
    dfsort = dfraw.sort_values(cols[0]).copy().reset_index(drop=False)
    nrow = len(dfsort)
    included = []  # list of row numbers
    for irow in range(nrow - 1):
        if irow in included:
            continue
        # Does this row match the following?
        match = True
        for col, tol in zip(cols, thr):
            x1 = dfsort.at[irow, col]
            x2 = dfsort.at[irow + 1, col]
            if tol:
                match = match and (abs(x2 - x1) <= tol)           
            else:
                # tol = 0 means that items must be exactly equal
                match = match and (x1 == x2)
        if match:
            for col in data.keys():
                x1 = dfsort.at[irow, col]
                x2 = dfsort.at[irow + 1, col]
                if col in cols:
                    try:
                        # average the pair
                        x = (x1 + x2) / 2
                    except TypeError:
                        # probably string
                        if x1 != x2:
                            x = [x1, x2]
                        else:
                            x = x1
                else:
                    # create a list
                    x = [x1, x2]
                data[col].append(x)
            # two rows now included
            included += [irow, irow + 1]
        else:
            # non-degenerate state
            for col in data.keys():
                x1 = dfsort.at[irow, col]
                if col in cols:
                    x = x1
                else:
                    # present as a list of one
                    x = [x1]
                data[col].append(x)
            included.append(irow)
    df = pd.DataFrame(data)
    return df
##
def collect_atomic_terms(dfcas, Ecol='E'):
    # Given a DataFrame of CASSCF (or similar) states,
    # return a DF with states collected into terms
    colsmissing = []
    for col in ['term', Ecol, 'Label', 'irrep']:
        if col not in dfcas.columns:
            colsmissing.append(col)
    if colsmissing:
        chem.print_err('', f'Missing some required columns: {colsmissing}')
    idxl = []  # list of lists of indices of component states
    lbll = []  # list of lists of component labels (concise)
    irrl = []  # list of irreps
    Sl = []    # list of S values
    Ll = []    # list of L values
    tsym = []  # list of term symbols
    El = []    # list of term energies
    spread = []  # list of energy ranges among degenerate states
    orphans = False
    for trm, gdf in dfcas.groupby('term'):
        S, L = chem.SL_from_term(trm)
        degen = 2 * L + 1
        nst = len(gdf)
        if (nst % degen) != 0:
            print('   *** orphan states ***')
            print(f'Terms labeled "{trm}": S = {S}, L = {L}, g = {degen}, count = {nst}')
            orphans = True
            chem.displayDF(gdf)
        else:
            # number of states is reasonable
            for irow in range(0, nst, degen):
                subdf = gdf.iloc[irow:irow+degen]
                tsym.append(trm)
                El.append(subdf[Ecol].mean())
                idxl.append(list(subdf.index))
                lbll.append([x.split()[0] for x in subdf.Label])
                irrl.append(subdf.iloc[0]['irrep'])
                Sl.append(S)
                Ll.append(L)
                spread.append(subdf[Ecol].values.ptp())
    if orphans:
        return None
    spread = np.array(spread) * chem.AU2CM  # convert spreads to cm-1
    dfcasterm = pd.DataFrame({'term': tsym, Ecol: El, 'erange_cm': spread,
                              'irrep': irrl, 'L': Ll, 
                              'S': Sl, 'idx': idxl, 'Labels': lbll})
    erel = np.round(chem.AU2CM*(dfcasterm[Ecol] - dfcasterm[Ecol].min()), 1)
    dfcasterm.insert(2, 'Erel', erel)
    dfcasterm = dfcasterm.sort_values(Ecol).reset_index(drop=True)
    return dfcasterm
##
def omega_poss(Lz, S):
    # Given Lambda and Sigma, return a list of the Omega possibilities
    retval = []
    if Lz == 0:
        lrange = [0]
    else:
        lrange = [-Lz, Lz]
    for a in lrange:
        srange = np.arange(-S, S+0.1)
        if len(srange) == 0:
            # singlet
            srange = [0]
        for b in srange:
            om = a + b
            if om > -0.1:
                retval.append(chem.round_half_int(om))
    return retval
##
def Jposs_subdf(df, J):
    # Given a DataFrame with column "J_poss",
    #    return a subset (view) of those rows that contain "J"
    # For atomic calculations
    idx = []
    for iso, row in df.iterrows():
        if J in row.J_poss:
            idx.append(iso)
    return df.loc[idx]
##
def spreads_ETC(df):
    # Return the spread in Erel, the spread (vector) in term weights, and
    #    the maximum of the term-weights spread vector
    # For atomic calculations
    if len(df) < 1:
        # ptp() will give ValueError
        return None, None, None
    spr = df.Erel.values.ptp()
    a = np.array([b for b in df.term_comp.values])
    cspr = np.ptp(a, axis=0)
    maxcspr = cspr.max()
    return spr, cspr, maxcspr
##
def record_J_assignment(df_soE, J_left, idx, J):
    '''
    Mechanics of assigning selected levels; logic is elsewhere
    Return number of levels assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      idx    : list of indices into df_soE
      J      : value of J to assigne to those levels
    '''
    nlev = len(idx)
    degen = int(2*J + 1)
    if (nlev % degen) != 0:
        chem.print_err('', f'{nlev} levels is not a multiple of degeneracy for J = {J}')
    df_soE.loc[idx, 'J'] = J
    # decrement outstanding assignments
    J_left[J] -= degen
    if J_left[J] < 1:
        # no more of these are possible; remove from possibilities for unassigned levels
        dfunk = df_soE[df_soE.J.isnull()]
        for i, row in dfunk.iterrows():
            s = set(row['J_poss'])
            if J in s:
                df_soE.at[i, 'nposs'] -= 1
                s.discard(J)
                df_soE.at[i, 'J_poss'] = s
    # return the number of levels assigned
    return nlev
## 
def singletons_J(df_soE, J_left, thr_degen=5, thr_tcomp=3, verbose=False):
    '''
    Assign levels with only one possibility
    Return number of levels assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_degen :  expected slop in energy degeneracies (cm-1)
      thr_tcomp :  expected slop in term compos (%)
    '''
    if verbose:
        print('--- Look for levels with only one possible value of J ---')
    showcols = ['Erel', 'J_poss', 'term_comp']
    dfunk = df_soE[df_soE.J.isnull()]  # unassigned levels only
    df_singl = dfunk[dfunk.nposs == 1]
    nsingl = len(df_singl)
    if not nsingl:
        if verbose:
            print('    no candidates')
        return 0
    if verbose:
        print(f'There are {nsingl} levels with one possible J; assign them')
    jlist = [list(s).pop() for s in df_singl.J_poss]
    jcount = Counter(jlist)
    for J, n in jcount.items():
        if verbose:
            print('J =', J, 'count =', n)
        degen = int(2*J + 1)
        # check the multiplicity
        if (n % degen) != 0:
            chem.print_err('', f'J = {J}:  there are {n} levels, not a multiple of {degen}')
        else:
            # make the assignments
            subdf = df_singl[df_singl.J_poss == set([J])]
            ilo = 0
            for k in range(n // degen):
                ihi = ilo + degen
                dfk = subdf.iloc[ilo:ihi]
                if verbose:
                    chem.displayDF(dfk[showcols])
                spr, cspr, maxcspr = spreads_ETC(dfk)
                if verbose:
                    print(f'Energy spread = {spr:.1f} cm-1')
                    if spr > thr_degen:
                        print(f'    Note: this is larger than thr_degen = {thr_degen} cm-1')
                    print(f'Term composition spread = {cspr} %')
                    print(f'    max term comp spread = {maxcspr:.1f} %')
                    if maxcspr > thr_tcomp:
                        print(f'    Note: this is larger than thr_tcomp = {thr_tcomp} %')
                idx = dfk.index
                record_J_assignment(df_soE, J_left, idx, J)
                ilo = ihi
    return nsingl
##
def poss_count_just_right(df_soE, J_left, thr_degen=5, thr_tcomp=3,
                          verbose=False):
    '''
    Assign J where the number of possible levels = the number needed
    Return number of levels assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_degen :  expected slop in energy degeneracies (cm-1)
      thr_tcomp :  expected slop in term compos (%)
    '''
    if verbose:
        print('--- Look for values of J where #possibilities = #missing ---')
    showcols = ['Erel', 'J_poss', 'term_comp']
    subdf = df_soE[df_soE.J.isnull()]  # unassigned levels
    n_assigned = 0
    for J, nleft in J_left.items():
        dfJ = Jposs_subdf(subdf, J)
        nposs = len(dfJ)
        if verbose:
            print(f'For J = {J}, {nleft:2d} levels are needed and {nposs:2d} are possible')
        if nleft and (nleft == nposs):
            if verbose:
                print('   assigning them all')
            n_assigned += nleft
            degen = int(2*J + 1)
            ilo = 0
            for k in range(nposs // degen):
                ihi = ilo + degen
                dfk = dfJ.iloc[ilo:ihi]
                spr, cspr, maxcspr = spreads_ETC(dfk)
                if verbose:
                    chem.displayDF(dfk[showcols])
                    print(f'Energy spread = {spr:.1f} cm-1')
                    if spr > thr_degen:
                        print(f'    Note: this is larger than thr_degen = {thr_degen} cm-1')
                    print(f'Term composition spread = {cspr} %')
                    print(f'    max term comp spread = {maxcspr:.1f} %')
                    if maxcspr > thr_tcomp:
                        print(f'    Note: this is larger than thr_tcomp = {thr_tcomp} %')
                idx = dfk.index
                n_assigned = record_J_assignment(df_soE, J_left, idx, J)
                ilo = ihi
    return n_assigned
##
def clear_degen_sep(df_soE, J_left, thr_degen=5, thr_tcomp=3,
                    thr_big=500, thr_tcbig=15, verbose=False):
    '''
    Assign J for clearly degenerate levels that are well-separated from
      adjacent levels, considering both energy and term composition
    Return number of levels assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_degen :  expected slop in energy degeneracies (cm-1)
      thr_tcomp :  expected slop in term compos (%)
      thr_big   :  energy margin for being well-separated (cm-1)
      thr_tcbig :  term-composition margin for well-sep (%)
    '''
    showcols = ['Erel', 'J_poss', 'term_comp']
    tot_assigned = 0
    for Jsep in sorted(J_left.keys()):
        if J_left[Jsep] < 1:
            # this J is fully assigned; no levels to consider
            continue
        if verbose:
            print(f'--- Look for isolated sets of degenerate levels with J = {Jsep} ---')
        subdf = df_soE[df_soE.J.isnull()]  # unassigned levels
        n_assigned = 0
        seldf = Jposs_subdf(subdf, Jsep)
        #idxJ = list(seldf.index)
        nrows = len(seldf)
        ilo = ihi = -1
        degen = int(2*Jsep + 1)
        idx_ass = []
        while ihi < nrows:
            ilo += 1
            ihi = ilo + degen
            df = seldf.iloc[ilo:ihi]
            # consider energies
            spr, cspr, maxcspr = spreads_ETC(df)
            if spr > thr_degen:
                # not clearly degenerate
                continue
            # consider term compositions
            if maxcspr > thr_tcomp:
                # not clearly the same term composition
                continue
            # Get here when the levels appear to be degenerate
            # Are they well-separated from the previous level? 
            #   by either criterion, energy or term composition
            too_similar = True
            if ilo > 0:
                sp, a, b = spreads_ETC(seldf.iloc[ilo-1:ihi])
                if sp > thr_big:
                    too_similar = False
                if b > thr_tcbig:
                    too_similar = False
                if too_similar:
                    continue
            # Well-separated from following level?
            too_similar = True
            if ihi < nrows - 1:
                sp, a, b = spreads_ETC(seldf.iloc[ilo:ihi+1])
                if sp > thr_big:
                    too_similar = False
                if b > thr_tcbig:
                    too_similar = False
                if too_similar:
                    continue
            # We reach this point only is the set of levels is clearly degenerate and
            #    well-separated from adjacent levels
            # Assign them
            idx = df.index
            if verbose:
                print(f'    Well-separated set of levels: assigning {list(idx)} to J = {Jsep}')
            n_assigned = record_J_assignment(df_soE, J_left, idx, Jsep)
            idx_ass.extend(list(idx))
        if n_assigned and verbose:
            chem.displayDF(seldf[showcols].style.applymap(lambda _: "background-color: lightgreen", subset=(idx_ass,)))
        tot_assigned += n_assigned
    return tot_assigned
##
def elim_implausible_J(df_soE, J_left, thr_big=500, thr_tcbig=15, verbose=False):
    '''
    See if some possible J values can be eliminated for lack of enough similar levels
    Return number of levels assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_big   :  energy criterion for being dissimilar (cm-1)
      thr_tcbig :  term-composition dissimilarity criterion (%)
    '''
    showcols = ['Erel', 'J_poss', 'term_comp']
    if verbose:
        print('--- Eliminate implausible "possible" values of J ---')
    Jvals = sorted(J_left.keys(), reverse=True)  # start with highest degeneracy
    dfunk = df_soE[df_soE.J.isnull()]
    nelim = 0
    for J in Jvals:
        dfJ = Jposs_subdf(dfunk, J)
        if len(dfJ) < 1:
            continue
        if verbose:
            print('J = ', J)
        degen = int(2*J + 1)
        # rows are sorted by energy, so look at the first and last set of "degen" levels
        for iloop in [1, 0]:
            if iloop:
                dfa = dfJ.iloc[:degen].copy()
            else:
                dfa = dfJ.iloc[-degen:].copy()
            # examine successive difference in Erel and term_comp
            erel = dfa.Erel.values
            Eincr = np.array([0] + [erel[i] - erel[i-1] for i in range(1, degen)])
            tcomp = dfa.term_comp.values
            TCincr = np.array([0] + [abs(tcomp[i] - tcomp[i-1]).max() for i in range(1, degen)])
            if (Eincr.max() < thr_big) and (TCincr.max() < thr_tcbig):
                # differences are not suffiently dramatic
                continue
            dfa['Eincr'] = Eincr
            dfa['TCincr'] = TCincr
            if verbose:
                chem.displayDF(dfa[showcols + ['Eincr', 'TCincr']])
            # eliminate this value of J for levels up to the break
            ijump = np.argmax(Eincr + (thr_big/thr_tcbig) * TCincr)
            if iloop:
                # modify below 'icut'
                idx = dfa.index[:ijump]
            else:
                # modify at 'icut' and above
                idx = dfa.index[ijump:]
            if verbose:
                print(f'Eliminate J = {J} for rows {idx.values}')
            for irow in idx:
                df_soE.at[irow, 'J_poss'].remove(J)
            nelim += len(idx)
    return nelim
##
def big_ETC_jumps(df_soE, J_left, thr_big=500, thr_tcbig=15, verbose=False):
    '''
    See if there are big jumps in energy or term composition,
      as a way to identify degenerate sets of levels
    Return number of levels that could not be assigned
    For atomic calculations
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_big   :  energy criterion for being a big jump (cm-1)
      thr_tcbig :  term-composition criterion (%)
    '''
    showcols = ['Erel', 'J_poss', 'term_comp']
    if verbose:
        print('--- Look for big jumps in energy or term composition ---')
    idx_ass = []
    dfunk = df_soE[df_soE.J.isnull()].copy()
    nun = len(dfunk)  # number of unassigned levels
    if nun < 1:
        if verbose:
            print('    There are no unassigned levels')
        return 0
    idx_unk = list(dfunk.index)
    erel = dfunk.Erel.values
    estep = np.array([0] + [erel[i] - erel[i-1] for i in range(1, len(erel))])
    tcvec = dfunk.term_comp.values
    tcstep = np.array([0] + [np.abs((tcvec[i] - tcvec[i-1])).max() for i in range(1, len(erel))])
    # find big jumps in energy
    idxe = set(np.argwhere(estep > thr_big).flatten())
    idxc = set(np.argwhere(tcstep > thr_tcbig).flatten())
    if verbose:
        print(f'{len(idxe)} big jumps in energy (> {thr_big} cm-1)')
        print(f'{len(idxc)} big jumps in term composition (> {thr_tcbig} %)')
    idx = list(idxe.union(idxc))
    # examine the levels preceding jumps
    iprev = 0
    for ijump in sorted(idx + [nun]):
        dftest = dfunk.iloc[iprev:ijump]
        espr, cspr, csprmax = spreads_ETC(dftest)
        if espr is None:
            print('>> Null result for spreads')
            chem.displayDF(dftest)
            print(f'idx = {idx}')
            print(f'iprev = {iprev}, ijump = {ijump}')
            chem.displayDF(dfunk)
        if (espr < thr_big / 2) and (csprmax < thr_tcbig / 2):
            # possible (if sloppy) assignment
            # check for corresponding J being possible
            Jtest = round((len(dftest) - 1) / 2, 1)
            if verbose:
                print(f'Jtest = {Jtest}')
            dfJ = Jposs_subdf(dftest, Jtest)
            if len(dfJ) == len(dftest):
                # looks good
                if verbose:
                    print(f'Assigning levels {dftest.index.values} to J = {Jtest}')
                    print(f'    (E-spread = {espr:.0f} cm-1,' +
                          f' TC-spread = {csprmax:.1f} %)')
                record_J_assignment(df_soE, J_left, dftest.index, Jtest)
                idx_ass.extend(dftest.index)
        iprev = ijump
    seldf = df_soE.loc[idx_unk][showcols + ['J']]
    if verbose:
        chem.displayDF(seldf.style.applymap(lambda _: "background-color: lightgreen",
                                            subset=(idx_ass,)))
    # return the number of levels still unassigned
    dfunk = df_soE[df_soE.J.isnull()].copy()
    nun = len(dfunk)
    return nun    
##
def number_unassigned_J(J_left):
    '''
    Return the number of spin-orbit levels not yet assigned
    Arg:
      J_left : dict with key = J-value and value = count still to be assigned
    '''
    n = sum(J_left.values())
    return n
##
def assign_J_laboriously(df_soE, J_left, thr_degen=5, thr_big=500, 
                         thr_tcomp=3, thr_tcbig=15, verbose=False):
    '''
    Assign J for clearly degenerate levels that are well-separated from
      adjacent levels, considering both energy and term composition
    Return number of levels assigned
    For atomic calculations
    Loop over all tricks 
    Args: 
      df_soE : DataFrame of results from soci_energies()
      J_left : dict with key = J-value and value = count still to be assigned
      thr_degen :  expected slop in energy degeneracies (cm-1)
      thr_tcomp :  expected slop in term compos (%)
      thr_big   :  energy margin for being well-separated (cm-1)
      thr_tcbig :  term-composition margin for well-sep (%)
    '''
    iround = 0
    X = 1.  # factor by which to increase thresholds
    Xlim = 3. # max value for X
    while True:
        iround += 1
        n_assigned = 0
        if verbose and (X > 1):
            print(f'* Threshold inflation factor = {X} *')
        if verbose:
            print(f'*** Singletons, round {iround}')
        n_assigned += singletons_J(df_soE, J_left, thr_degen*X, thr_tcomp*X, verbose=verbose)
        if not number_unassigned_J(J_left):
            # success:  all levels assigned
            break
        if verbose:
            print(f'*** Equal needed and possible, round {iround}')
        n_assigned += poss_count_just_right(df_soE, J_left, thr_degen*X, thr_tcomp*X,
                                               verbose=verbose)
        if not number_unassigned_J(J_left):
            break
        if verbose:
            print(f'*** Clearly separated, round {iround}')
        n_assigned += clear_degen_sep(df_soE, J_left, thr_degen*X, thr_tcomp*X,
                                         thr_big, thr_tcbig, verbose=verbose)
        if not number_unassigned_J(J_left):
            break
        if verbose:
            print('*** Prune implausible "possible" values of J')
        elim_implausible_J(df_soE, J_left, thr_big, thr_tcbig, verbose=verbose)
        X = min(X + 1, Xlim)
        if (iround > Xlim + 1) and (n_assigned == 0):
            # possible failure
            break
    if number_unassigned_J(J_left):
        # some levels are still unassigned
        if verbose:
            print('*** Large jumps in energy or term composition')
        big_ETC_jumps(df_soE, J_left, thr_big=thr_big, 
                      thr_tcbig=thr_tcbig, verbose=verbose)
    nunk = number_unassigned_J(J_left)
    if verbose:
        if nunk:
            print(f'ASSIGNMENT FAILURE:  {nunk} levels still unassigned')
            print('Still to assign: ', J_left)
        else:
            print('ALL LEVELS ASSIGNED')
    return nunk
##
def collect_atomic_J_sets(df_soE, renumber=True):
    '''
    Given a DataFrame of atomic spin-orbit sublevels with J already assigned,
        collect them into J-levels
    Required column headings: 'J', 'Erel', 'term_comp'
    Return a DataFrame of (degenerate) levels
    If "renumber", then number the levels in the DF in order by energy
    '''
    cols = list(df_soE.columns)
    data = {}  # data for the final DataFrame
    idxl = []
    Erel_spr = []  # for energy range of each "degenerate" set
    TC_spr = []    # for term-composition range
    Jset = set(df_soE.J.values)
    for J in Jset:
        degen = int(2*J + 1)
        dfJ = df_soE[df_soE.J == J]  # all sublevels with this J
        nsub = len(dfJ)
        if (nsub % degen) != 0:
            print(f'*** Invalid number of sublevels: {nsub} for J = {J}')
        ilo = ihi = 0
        while ihi < len(dfJ):
            ihi = ilo + degen
            subdf = dfJ.iloc[ilo:ihi]
            idxl.append(list(subdf.index.values.flatten()))
            esp, csp, cmax = spreads_ETC(subdf)
            Erel_spr.append(esp)
            TC_spr.append(csp)
            for col in df_soE.columns:
                if col not in cols:
                    # ignored column
                    continue
                try:
                    x = subdf[col].mean()
                except TypeError:
                    cols.remove(col)
                    continue
                # got here only for a valid column
                try:
                    data[col].append(x)
                except KeyError:
                    data[col] = [x]
            ilo = ihi
    data['idx'] = idxl
    # round values in columns Erel, Erel_spread, TC_spread
    data['Erel'] = [np.round(x, 2) for x in data['Erel']]
    # Do not round term compositions because they are important for eq. (2) SOC
    data['term_comp'] = data['term_comp']
    data['Erel_spread'] = [np.round(x, 2) for x in Erel_spr]
    data['TC_spread'] = [np.round(cspr) for cspr in TC_spr]
    if 'Eshift' in data.keys():
        data['Eshift'] = [np.round(x, 2) for x in data['Eshift']]
    dflev = pd.DataFrame(data)
    dflev = dflev.sort_values('Erel')
    if renumber:
        dflev = dflev.reset_index(drop=True)
    return dflev
##