#!/usr/bin/env python
# Check a Molpro output file of atomic SO-CI
#    check that casscf values of <L**2> are integers 
#    check that casscf values of <L**2> are valid
#    check that casscf energy degeneracies are consistent with <L**2>
#    check that the HLSDIAG degeneracies (from mrci) agree with casscf

import sys, re
import numpy as np
import pandas as pd

# Values of <L**2> and (2L + 1) and symbol
LSQ = [0, 2, 6, 12, 20, 30, 42, 56, 72]
LDEGEN = [1, 3, 5, 7, 9, 11, 13, 15, 17]
LSYMB = 'SPDFGHIKL'  # they don't use J

# Energy tolerance for checking degeneracies
CASTOL = 1.0e-5  # for CASSCF energies
CITOL = 3.0e-5    # for HLSDIAG (MRCI+Q) energies

if len(sys.argv) < 2:
    sys.exit( 'Usage:  check_atomic_terms.py <Molpro output file>' )

# Read the data file
argv = list(sys.argv[1:])  # a disposable copy of just the args
fpro = argv.pop(0)

# <L**2> values are in a table with columns ENERGY and LL
re_ll = re.compile(r'\s*ENERGY\s+LL\b')
re_blank = re.compile('^\s*$')
inLL = False
# HLSDIAG values are in a table with column HLSDIAG
re_hls = re.compile(r'\s*HLSDIAG\b')
inHLS = False
with open(fpro, 'r') as F:
    for line in F:
        if inLL:
            if re_blank.match(line):
                # End of a table of CASSCF energies and <L**2>
                inLL = False
                print('--- CASSCF checking and analysis ---')
                nstate = len(ecas)
                print(f'    {nstate} states')
                dfcas = pd.DataFrame({'Ecas': ecas, 'LL': llcas})
                # check for non-integer LL values
                llnint = np.rint(llcas)
                ldif = llcas - llnint
                if ldif.any():
                    print('    ** Non-integer values of <L**2>')
                    print(dfcas)
                else:
                    print('    LL values are integers')
                if np.any([x not in LSQ for x in llnint]):
                    print('    ** Illegal values of <L**2>')
                    print(dfcas)
                else:
                    print('    LL values are all legal')
                # compare degeneracies with LL values
                eterm = []
                lsym = []
                tdegen = []
                # go through states in the order reported
                i = 0
                while i < nstate:
                    ll = dfcas.at[i, 'LL']
                    lval = LSQ.index(ll)
                    degen = LDEGEN[lval]
                    tsym = LSYMB[lval]
                    j = i + degen - 1
                    #print(ll, lval, degen, tsym, i, j)
                    subdf = dfcas.loc[i:j]
                    if len(subdf) != degen:
                        print('    ** Wrong number of <L**2> values')
                        print(f'        degeneracy should be {degen} for L**2 = {lval}')
                        print(subdf)
                    else:
                        print(f'    correct degeneracy for LL = {lval}')
                    emean = subdf.Ecas.mean()
                    if (abs(subdf.Ecas - emean) > CASTOL).any():
                        print(f'    ** Energies not degenerate to tolerance {CASTOL}')
                        print(subdf)
                    else:
                        print(f'        energies are within {CASTOL} of mean')
                    eterm.append(emean)
                    lsym.append(LSYMB[lval])
                    tdegen.append(degen)
                    i += degen
                dfterm = pd.DataFrame({'Term energy': eterm, 'Degen': tdegen, 'Symbol': lsym})
                print(dfterm.to_string(index=False))
                print()
                continue
            # energy/LL data line
            words = line.split()
            ecas.append(float(words[0]))
            llcas.append(float(words[1]))
        if inHLS:
            if re_blank.match(line):
                # End of a table of MRCI+Q (HLSDIAG) energies
                inHLS = False
                print(f'--- HLSDIAG checking using CITOL = {CITOL} ---')
                hlsdiag = np.array(hlsdiag)
                nstate = len(hlsdiag)
                print(f'    {nstate} states')
                if (hlsdiag >= 0).any():
                    print('    ** There are {:d} zero values in HLSDIAG'.format((hlsdiag == 0).sum()))
                else:
                    print('    all energies are negative')
                eterm = []
                lsym = []
                tdegen = []
                i = 0
                while i < nstate:
                    # compare hlsdiag[i] with later values
                    j = 1
                    while (i + j) < nstate:
                        diff = abs(hlsdiag[i+j] - hlsdiag[i])
                        if diff > CITOL:
                            break
                        j += 1
                    # now hlsdiag[i+j] is the first energy != hlsdiag[i]
                    degen = j
                    if degen not in LDEGEN:
                        print(f'    ** illegal degeneracy of {degen} for elements {i} through {i+j-1}')
                    lval = LDEGEN.index(degen)
                    eterm.append(hlsdiag[i:i+j].mean())
                    tdegen.append(degen)
                    lsym.append(LSYMB[lval])
                    i += j
                dfhlsdiag = pd.DataFrame({'HLSDIAG': eterm, 'Degen': tdegen, 'Symbol': lsym})
                # Compare with the CASSCF terms
                # We have no spin info here, so go by state ordering
                dfhlsdiag['E_correl'] = np.nan
                icaslist = list(dfterm.index)  # list of row numbers in dfterm
                for ici in dfhlsdiag.index:
                    # 'ici' is row in dfhlsdiag
                    matched = False
                    for i in range(len(icaslist)):
                        icas = icaslist[i]
                        # 'icas' is row in dfterm
                        if dfhlsdiag.at[ici, 'Symbol'] == dfterm.at[icas, 'Symbol']:
                            # this is a match
                            dfhlsdiag.at[ici, 'E_correl'] = dfhlsdiag.at[ici, 'HLSDIAG'] - \
                                dfterm.at[icas, 'Term energy']
                            icaslist.pop(i)
                            matched = True
                            break
                    if not matched:
                        print('    ** Failed to match CI term with CASSCF term')
                        print(dfhlsdiag.loc[[ici]])
                    else:
                        # move on to the next CI term
                        continue
                if not dfhlsdiag.E_correl.isna().any():
                    print('    all CI terms matched to CASSCF terms')
                print('    "E_correl" is correlation energy')
                print(dfhlsdiag.to_string(index=False))
                print()
            else:
                hlsdiag.append(float(line))
        if re_ll.search(line):
            inLL = True
            ecas = []
            llcas = []
        if re_hls.match(line):
            inHLS = True
            hlsdiag = []
