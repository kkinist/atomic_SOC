# Routines for general quantum chemistry (no particular software package)
# Python3 and pandas
# Karl Irikura 
#
import re, sys
#import string, copy
import copy
import numpy as np
import pandas as pd
import quaternion
import random
from scipy.spatial.distance import cdist
from scipy import interpolate
from scipy import optimize
import scipy.stats
import matplotlib.pyplot as plt
from urllib.request import urlopen
from urllib.parse import quote
#
# CODATA 2018 constants from physics.nist.gov, retrieved 7/13/2020
AVOGADRO = 6.02214076e23     # mol^-1 (exact, defined value)
BOLTZMANN = 1.380649e-23       # J/K (exact, defined value)
RGAS = AVOGADRO * BOLTZMANN      # J/mol/K (exact)
PLANCK = 6.62607015e-34    # J s (exact, defined value)
HBAR = PLANCK / (2 * np.pi)  # h / 2*pi
CLIGHT = 299792458.        # m/s (exact, defined value)
CM2KJ = PLANCK * AVOGADRO * CLIGHT / 10  # convert from cm^-1 to kJ/mol
CM2K = 100 * CLIGHT * PLANCK / BOLTZMANN   # convert from cm^-1 to Kelvin
AMU = 1.66053906660e-27     # kg/u
HARTREE = 4.3597447222071e-18 # J; uncertainty is 85 in last two digits
AU2S = HBAR / HARTREE      # atomic unit of time, in s
AU2CM = 2.1947463136320e05   # Hartree in cm^-1; unc. is 43 in last two digits
AU2KJMOL = HARTREE * AVOGADRO / 1000.  # Hartree in kJ/mol
AU2EV = 27.211386245988    # Hartree in eV; unc. is 53 in last two digits
CALORIE = 4.184            # multipy cal * CALORIE to get J
ATM2KPA = 101.325          # convert pressure in atm to kPa
EMASS = 9.1093837015e-31   # electron mass in kg; unc. is 28 in last two digits
BOHR = 0.529177210903      # Bohr radius in Angstrom; unc. is 80 in last two digits
AMU2AU = AMU / EMASS       # amu expressed in a.u. (viz., electron masses)
EV2CM = AU2CM / AU2EV      # eV expressed in cm^-1
EV2KJMOL = AU2KJMOL / AU2EV  # eV expressed in kJ/mol
KJMOL2CM = AU2CM / AU2KJMOL  # kJ/mol expressed in cm**-1
ECHARGE = 1.602176634e-19  # electron charge in C (exact)

DEBYE = 0.3934303  # Debye/e.a0 from a less reliable source

OMEGA = '\N{GREEK CAPITAL LETTER OMEGA}'
LAMDA = '\N{GREEK CAPITAL LETTER LAMDA}'
SIGMA = '\N{GREEK CAPITAL LETTER SIGMA}'
PPI = '\N{GREEK CAPITAL LETTER PI}'
DELTA = '\N{GREEK CAPITAL LETTER DELTA}'
PHI = '\N{GREEK CAPITAL LETTER PHI}'
GAMMA = '\N{GREEK CAPITAL LETTER GAMMA}'
ETA = 'H'  # easier for typists
GLAMBDA = [SIGMA, PPI, DELTA, PHI, GAMMA, ETA]
LAMBDA = ['Sigma', 'Pi', 'Delta', 'Phi', 'Gamma']
LSYMB = ['S', 'P', 'D', 'F', 'G', 'H']

SPINMULT = {0: 'Singlet', 0.5: 'Doublet', 1: 'Triplet', 1.5: 'Quartet', 
            2: 'Quintet', 2.5: 'Sextet', 3: 'Septet', 4.5: 'Octet'}
MULTSPIN = {v: k for k, v in SPINMULT.items()}
SPINLABEL = {2*k+1: v for k, v in SPINMULT.items()}
LABELSPIN = {v: k for k, v in SPINLABEL.items()}


EPS0 = 8.8541878128e-12  # vacuum permittivity in F/m
PI = np.pi
#
GOLD = (1 + np.sqrt(5))/2  # golden ratio
def isotopic_mass(atlabel):
    # Given a label like '1-H' or 'pt195', return the atomic mass
    # Data from from https://physics.nist.gov/cgi-bin/Compositions/stand_alone.pl
    if atlabel in ['reference', 'source', 'citation']:
        # return the URI of the data source 
        return 'https://www.nist.gov/pml/atomic-weights-and-isotopic-compositions-relative-atomic-masses'
    rxn = re.compile('\d+')
    rxsym = re.compile('[a-zA-Z]+')
    n = int(rxn.search(atlabel).group(0))
    sym = rxsym.search(atlabel).group(0)
    Z = elz(sym)
    # table of masses; major index = Z, minor = n
    mtable = {1: {1: 1.00782503223, 2: 2.01410177812, 3: 3.0160492779},
              2: {3: 3.0160293201, 4: 4.00260325413},
              3: {6: 6.0151228874, 7: 7.0160034366},
              4: {9: 9.012183065},
              5: {10: 10.01293695, 11: 11.00930536},
              6: {12: 12., 13: 13.00335483507, 14: 14.0032419884},
              7: {14: 14.00307400443, 15: 15.00010889888},
              8: {16: 15.99491461957, 17: 16.99913175650, 18: 17.99915961286},
              9: {19: 18.99840316273},
              13: {27: 26.98153853},
              16: {32: 31.9720711744, 33: 32.9714589098, 34: 33.967867004, 36: 35.96708071},
              17: {35: 34.968852682, 37: 36.965902602},
              35: {79: 78.9183376, 81: 80.9162897},
              53: {127: 126.9044719},
              78: {190: 189.9599297, 192: 191.9610387, 194: 193.9626809, 195: 194.9647917, 196: 195.96495209, 198: 197.9678949},
             }
    try:
        m = mtable[Z][n]
    except KeyError:
        # invalid or just not typed here yet
        m = np.nan
    return m
##
def dominant_isotope(el):
    # given element symbol or atomic number, 
    # return the mass of the most abundant isotope
    # source: https://www.chem.ualberta.ca/~massspec/atomic_mass_abund.pdf,
    #    which cites mass data from Audi & Wapstra, Nucl. Phys. A (1993 & 1995)
    #    and abundance data from 1997 IUPAC report [Rosman & Taylor,
    #    Pure Appl. Chem. (1999)]
    try:
        Z = int(el)
    except:
        Z = elz(el)
    mtable = [0, 1.007825, 4.002603, 7.016004, 9.012182, 11.009305, 12., # C
              14.003074, 15.994915, 18.998403, 19.992440, 22.989770,     # Na
              23.985042, 26.981538, 27.976927, 30.973762, 31.972071,     # S
              34.968853, 39.962383, 38.963707, 39.962591, 44.955910,     # Sc
              47.947947, 50.943964, 51.940512, 54.938050, 55.934942,     # Fe
              58.933200, 57.935348, 62.929601, 63.929147, 68.925581,     # Ga
              73.921178, 74.921596, 79.916522, 78.918338, 83.911507,     # Kr
              84.911789, 87.905614, 88.905848, 89.904704, 92.906378,     # Nb
              97.905408, 97.907216, 101.904350, 102.905504, 105.903483,  # Pd
              106.905093, 113.903358, 114.903878, 119.902197,            # Sn
              120.903818, 129.906223, 126.904468, 131.904154,            # Xe
              132.905447, 137.905241, 138.906348, 139.905434,            # Ce
              140.907648, 141.907719, 144.912744, 151.919728,            # Sm
              152.921226, 157.924101, 158.925343, 163.929171,            # Dy
              164.930319, 165.930290, 168.934211, 173.938858,            # Yb
              174.940768, 179.946549, 180.947996, 183.950933,            # W
              186.955751, 191.961479, 192.962924, 194.964774,            # Pt
              196.966552, 201.970626, 204.974412, 207.976636,            # Pb
              208.980383, 208.982416, 209.987131, 222.017570,            # Rn
              223.019731, 226.025403, 227.027747, 232.038050,            # Th
              231.035879, 238.050783, 237.048167, 244.064198]            # Pu
    return mtable[Z]
##
def max_valence(el):
    # Given element (Z or symbol), return its typical number of 
    #   covalent bonds. (This is less meaningful beyond the 2p block.)
    # Helpful for guessing bond order and maybe oxidation state. 
    # Values for d-block may be bad; consult binary hydrides/halides? 
    try:
        Z = int(el)
    except:
        Z = elz(el)
    valmax = [0, 1, 0,   # null, H, He
              1, 2, 3, 4, 3, 2, 1, 0,  # Li-Ne
              1, 2, 3, 4, 3, 2, 1, 0,  # Na-Ar
              1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 3, 2, 1, 0, # K-Kr
              1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 1, 2, 3, 4, 3, 2, 1, 0, # Rb-Xe
              ]
    if Z < len(valmax):
        return valmax[Z]
    else:
        return None
##
def often_hypervalent(el):
    # return True or False, whether the element is often hypervalent
    # main group only
    try:
        Z = int(el)
    except:
        Z = elz(el)
    often = [7, 15, 16, 17]  # N, P, S, Cl
    often.append([33, 34, 35])  # As, Se, Br
    often.append([51, 52, 53, 54])  # Sb, Te, I, Xe
    return (Z in often)
##
def Lz_from_greek(term_label):
    # given a diatomic greek term label such as (1)1Σ+, return the value of Lz
    # return None on failure
    rx_lam = re.compile('([ΣΠΔΦΓ])')
    Lz = {'Σ': 0, 'Π': 1, 'Δ': 2, 'Φ': 3, 'Γ': 4}
    m = rx_lam.search(term_label)
    if m:
        try:
            return Lz[m.group(1)]
        except KeyError:
            return None
    else:
        # did not find a matching greek letter
        return None
##
def empiricalSOC(A):
    # for atom or molecule with symbol 'A', return the empirical
    # ground-state spin-orbit correction, by lookup table
    # it is always non-positive
    # result is in wavenumber (cm-1)
    # atomic values from (2J+1)-averaging of NIST AEL data
    A = elz(A, choice='symbol')
    SOC = {'H': 0, 'He': 0, 'Li': 0, 'Be': 0, 'B': 10.19,
        'C': 29.59, 'N': 0, 'O': 77.97, 'F': 134.71, 'Ne': 0,
        'Na': 0, 'Mg': 0, 'Al': 74.7, 'Si': 149.68, 'P': 0,
        'S': 195.76, 'Cl': 294.12, 'Ar': 0, 'K': 0, 'Ca': 0,
        'NO': 59.9  # from CCCBDB
        }
    try:
        return -SOC[A]
    except:
        return None
##
def weighted_mean(values, weights, formula='Cochran', normalize=False):
    # weighted statistics (reliability weights)
    # return weighted mean and its standard error
    # Using three methods described by Gatz and Smith, Atmos. Env. 29, 1185 (1995)
    if weights is None:
        # use uniform weights
        weights = np.ones_like(values)
    w = np.array(weights)
    # check for negative weights
    if (w < 0).any():
        print_err('', 'Negative weights not allowed')
    n = len(values)
    if len(weights) != n:
        print_err('', '{:d} values but {:d} weights'.format(n, len(weights)))
    wsum = w.sum()
    if normalize:
        # normalize weights
        w = w / wsum
        wsum = 1
    wbar = w.mean()
    v = np.array(values)
    mu = (w * v).sum() / wsum
    if n > 1:
        A = n / (n-1) / wsum**2
    else:
        A = 0
    if formula == 'Cochran':
        # use my algebraic simplification of the formula in Gatz and Smith
        vdiff = v - mu
        S = ( (w * vdiff)**2 ).sum()
        SEMw = np.sqrt(A * S)
    elif formula == 'Cochran_raw':
        # use unsimplified expression from Gatz and Smith
        wvdiff = w * v - wbar * mu
        S1 = (wvdiff ** 2).sum()
        pdiff = w - wbar
        S2 = (pdiff * wvdiff).sum()
        S3 = (pdiff ** 2).sum()
        Stot = S1 - 2*mu*S2 + mu*mu*S3
        SEMw = np.sqrt(A * Stot)
    elif formula == 'Galloway':
        # formula from Gatz and Smith
        S1 = ((w * v)**2).sum()
        S2 = (w * v).sum()
        Stot = S1 - S2 * S2 / n
        SEMw = np.sqrt(A * Stot)
    elif formula == 'Miller':
        # formula from Gatz and Smith
        B = n * wsum
        vdiff2 = (v - mu) ** 2
        S = (w * vdiff2).sum()
        SEMw = np.sqrt(S / B)
    else:
        print_err('', 'Unrecognized formula = {:s}'.format(formula))
    if n < 2:
        SEMw = -1  # to flag meaningless stdev of one number
    return mu, SEMw
##
def relstdvar(data):
    # compute the variance and the variance of the variance
    # return the ratio (sqrt(varvar) / var) as estimate of the relative
    # standard deviation of the variance
    # see https://math.stackexchange.com/questions/72975/variance-of-sample-variance
    n = len(data)
    mu4 = scipy.stats.moment(data, 4)  # fourth moment
    var = np.var(data, ddof=1)
    varvar = mu4/n - var*var*(n-3)/n/(n-1)
    stdvar = np.sqrt(varvar)
    return stdvar/var
##
def convert_unit(quantity, target_unit):
    '''
    Unit conversion; 'quantity' is a dict with keys:
        - 'value' (or 'how_much') 
        - 'unit'
        - 'unc' (optional; negative values are not changed)
        any other keys in 'quantity' will be copied (simple copy, not deep)
    'target_unit' is a string in one of the lists below
    Return value: another dict with the new units
    '''
    try:
        v1 = quantity['value']
        vkey = 'value'
    except KeyError:
        v1 = quantity['how_much']
        vkey = 'how_much'
    except:
        print_err('', 'unable to convert units for quantity: ' + str(quantity))
    try:
        unc1 = quantity['unc']
        if unc1 < 0:
            # don't convert negative uncertainties because they have
            #   special meaning; preserve value
            unc2 = unc1
    except KeyError:
        unc1 = None
    u1 = quantity['unit'].lower()
    u2 = target_unit.lower()
    qconv = quantity.copy()
    if u1 == u2:
        # no conversion needed
        return qconv
    #
    # the order of the unit names and the regex's must be consistent below
    regxE = [re.compile(s) for s in \
             ['har',     'ev', 'kj',     'cm',   'kcal']]
    energy = ['hartree', 'ev', 'kj/mol', 'cm-1', 'kcal/mol']
    regxD = [re.compile(s) for s in ['ang',      'bohr']]
    distance =                      ['angstrom', 'bohr']
    # 'me' unit is electron mass (atomic unit of mass)
    regxM = [re.compile(s) for s in ['u',   'kg', 'me']]
    mass =                          ['amu', 'kg', 'me']
    # special treatment for mass unit 'amu'/'u'
    regxM[0] = re.compile(r'u\b')
    # construct boolean arrays of unit matching
    # need 'search' method for mass because of 'u'/'amu'
    bu1E = np.array([bool(regx.match(u1)) for regx in regxE])
    bu1D = np.array([bool(regx.match(u1)) for regx in regxD])
    bu1M = np.array([bool(regx.search(u1)) for regx in regxM])
    bu2E = np.array([bool(regx.match(u2)) for regx in regxE])
    bu2D = np.array([bool(regx.match(u2)) for regx in regxD])
    bu2M = np.array([bool(regx.search(u2)) for regx in regxM])
    # construct boolean lists of quantity type
    b1 = np.array([b.any() for b in [bu1E, bu1D, bu1M]])
    b2 = np.array([b.any() for b in [bu2E, bu2D, bu2M]])
    if (b1.any() and b2.any()) and \
        (np.argwhere(b1)[0][0] == np.argwhere(b2)[0][0]):
        # units are known and are compatible
        itype = np.argwhere(b1)[0][0]
    else:
        # units are problematic
        print_err('', 'Unable to convert ' +
            '{} to {}'.format(quantity['unit'], target_unit))
    # do the conversion
    # the multiplicative conversion constant is 'CONST'
    CONST = None
    if itype == 0:
        # energy units
        i1 = np.argwhere(bu1E)[0][0]
        i2 = np.argwhere(bu2E)[0][0]
        # change 'u1' and 'u2' to the full unit names
        u1 = energy[i1]
        u2 = energy[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'hartree':
            # converting to hartree
            if u1 == 'ev':
                CONST = 1 / AU2EV
            elif u1 == 'kj/mol':
                CONST = 1 / AU2KJMOL
            elif u1 == 'cm-1':
                CONST = 1 / AU2CM
            elif u1 == 'kcal/mol':
                CONST = CALORIE / AU2KJMOL
        elif u2 == 'ev':
            if u1 == 'hartree':
                CONST = AU2EV
            elif u1 == 'kj/mol':
                CONST = 1 / EV2KJMOL
            elif u1 == 'cm-1':
                CONST = 1 / EV2CM
            elif u1 == 'kcal/mol':
                CONST = CALORIE / EV2KJMOL
        elif u2 == 'kj/mol':
            if u1 == 'hartree':
                CONST = AU2KJMOL
            elif u1 == 'ev':
                CONST = EV2KJMOL
            elif u1 == 'cm-1':
                CONST = 1 / KJMOL2CM
            elif u1 == 'kcal/mol':
                CONST = CALORIE
        elif u2 == 'cm-1':
            if u1 == 'hartree':
                CONST = AU2CM
            elif u1 == 'ev':
                CONST = EV2CM
            elif u1 == 'kj/mol':
                CONST = KJMOL2CM
            elif u1 == 'kcal/mol':
                CONST = CALORIE * KJMOL2CM
        elif u2 == 'kcal/mol':
            if u1 == 'hartree':
                CONST = AU2KJMOL / CALORIE
            elif u1 == 'ev':
                CONST = EV2KJMOL / CALORIE
            elif u1 == 'kj/mol':
                CONST = 1 / CALORIE
            elif u1 == 'cm-1':
                CONST = 1 / KJMOL2CM / CALORIE
    elif itype == 1:
        # distance units
        i1 = np.argwhere(bu1D)[0][0]
        i2 = np.argwhere(bu2D)[0][0]
        u1 = distance[i1]
        u2 = distance[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'angstrom':
            if u1 == 'bohr':
                CONST = BOHR
        elif u2 == 'bohr':
            if u1 == 'angstrom':
                CONST = 1 / BOHR
    elif itype == 2:
        # mass units
        i1 = np.argwhere(bu1M)[0][0]
        i2 = np.argwhere(bu2M)[0][0]
        u1 = mass[i1]
        u2 = mass[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'amu':
            if u1 == 'kg':
                CONST = 1 / AMU
            elif u1 == 'me':
                CONST = 1 / AMU2AU
        elif u2 == 'kg':
            if u1 == 'amu':
                CONST = AMU
            elif u1 == 'me':
                CONST = 1 / AMU2AU * AMU
        elif u2 == 'me':
            if u1 == 'amu':
                CONST = AMU2AU
            elif u1 == 'kg':
                CONST = 1 / AMU * AMU2AU
    if CONST is None:
        # failure
        print_err('', 'unable to convert ({} {}) to {}'.format(v1, 
            quantity['unit'], target_unit))
    qconv['unit'] = u2
    v2 = v1 * CONST
    qconv[vkey] = v2
    if (unc1 is not None) and (unc1 >= 0):
        # convert the uncertainty, too
        unc2 = unc1 * CONST
        qconv['unc'] = unc2
    return qconv
##
def convert_unit_old(quantity, target_unit):
    '''
    Unit conversion; 'quantity' is a dict with keys:
        - 'value' (or 'how_much') 
        - 'unit'
        - 'unc' (optional; negative values are not changed)
        any other keys in 'quantity' will be copied (simple copy, not deep)
    'target_unit' is a string in one of the lists below
    Return value: another dict with the new units
    '''
    try:
        v1 = quantity['value']
        vkey = 'value'
    except KeyError:
        v1 = quantity['how_much']
        vkey = 'how_much'
    except:
        print_err('', 'unable to convert units for quantity: ' + str(quantity))
    try:
        unc1 = quantity['unc']
        if unc1 < 0:
            # don't convert negative uncertainties because they have
            #   special meaning
            unc1 = None
    except KeyError:
        unc1 = None
    u1 = quantity['unit'].lower()
    u2 = target_unit.lower()
    qconv = quantity.copy()
    if u1 == u2:
        # no conversion needed
        return qconv
    #
    # the order of the unit names and the regex's must be consistent below
    regxE = [re.compile(s) for s in \
             ['har',     'ev', 'kj',     'cm',   'kcal']]
    energy = ['hartree', 'ev', 'kj/mol', 'cm-1', 'kcal/mol']
    regxD = [re.compile(s) for s in ['ang',      'bohr']]
    distance =                      ['angstrom', 'bohr']
    # 'me' unit is electron mass (atomic unit of mass)
    regxM = [re.compile(s) for s in ['u',   'kg', 'me']]
    mass =                          ['amu', 'kg', 'me']
    # special treatment for mass unit 'amu'/'u'
    regxM[0] = re.compile(r'u\b')
    # construct boolean arrays of unit matching
    # need 'search' method for mass because of 'u'/'amu'
    bu1E = np.array([bool(regx.match(u1)) for regx in regxE])
    bu1D = np.array([bool(regx.match(u1)) for regx in regxD])
    bu1M = np.array([bool(regx.search(u1)) for regx in regxM])
    bu2E = np.array([bool(regx.match(u2)) for regx in regxE])
    bu2D = np.array([bool(regx.match(u2)) for regx in regxD])
    bu2M = np.array([bool(regx.search(u2)) for regx in regxM])
    # construct boolean lists of quantity type
    b1 = np.array([b.any() for b in [bu1E, bu1D, bu1M]])
    b2 = np.array([b.any() for b in [bu2E, bu2D, bu2M]])
    if (b1.any() and b2.any()) and \
        (np.argwhere(b1)[0][0] == np.argwhere(b2)[0][0]):
        # units are known and are compatible
        itype = np.argwhere(b1)[0][0]
    else:
        # units are problematic
        print_err('', 'Unable to convert ' +
            '{} to {}'.format(quantity['unit'], target_unit))
    # do the conversion
    if itype == 0:
        # energy units
        i1 = np.argwhere(bu1E)[0][0]
        i2 = np.argwhere(bu2E)[0][0]
        # change 'u1' and 'u2' to the full unit names
        u1 = energy[i1]
        u2 = energy[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'hartree':
            # converting to hartree
            if u1 == 'ev':
                v2 = v1 / AU2EV
            elif u1 == 'kj/mol':
                v2 = v1 / AU2KJMOL
            elif u1 == 'cm-1':
                v2 = v1 / AU2CM
            elif u1 == 'kcal/mol':
                v2 = v1 * CALORIE / AU2KJMOL
            else:
                # should never get here
                v2 = None
        elif u2 == 'ev':
            if u1 == 'hartree':
                v2 = v1 * AU2EV
            elif u1 == 'kj/mol':
                v2 = v1 / EV2KJMOL
            elif u1 == 'cm-1':
                v2 = v1 / EV2CM
            elif u1 == 'kcal/mol':
                v2 = v1 * CALORIE / EV2KJMOL
            else:
                v2 = None
        elif u2 == 'kj/mol':
            if u1 == 'hartree':
                v2 = v1 * AU2KJMOL
            elif u1 == 'ev':
                v2 = v1 * EV2KJMOL
            elif u1 == 'cm-1':
                v2 = v1 / KJMOL2CM
            elif u1 == 'kcal/mol':
                v2 = v1 * CALORIE
            else:
                v2 = None
        elif u2 == 'cm-1':
            if u1 == 'hartree':
                v2 = v1 * AU2CM
            elif u1 == 'ev':
                v2 = v1 * EV2CM
            elif u1 == 'kj/mol':
                v2 = v1 * KJMOL2CM
            elif u1 == 'kcal/mol':
                v2 = v1 * CALORIE * KJMOL2CM
            else:
                v2 = None
        elif u2 == 'kcal/mol':
            if u1 == 'hartree':
                v2 = v1 * AU2KJMOL / CALORIE
            elif u1 == 'ev':
                v2 = v1 * EV2KJMOL / CALORIE
            elif u1 == 'kj/mol':
                v2 = v1 / CALORIE
            elif u1 == 'cm-1':
                v2 = v1 / KJMOL2CM / CALORIE
            else:
                v2 = None
        else:
            # should never get here
            v2 = None
    elif itype == 1:
        # distance units
        i1 = np.argwhere(bu1D)[0][0]
        i2 = np.argwhere(bu2D)[0][0]
        u1 = distance[i1]
        u2 = distance[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'angstrom':
            if u1 == 'bohr':
                v2 = v1 * BOHR
            else:
                v2 = None
        elif u2 == 'bohr':
            if u1 == 'angstrom':
                v2 = v1 / BOHR
            else:
                v2 = None
        else:
            v2 = None
    elif itype == 2:
        # mass units
        i1 = np.argwhere(bu1M)[0][0]
        i2 = np.argwhere(bu2M)[0][0]
        u1 = mass[i1]
        u2 = mass[i2]
        if i1 == i2:
            # no conversion needed, but rename the unit
            qconv['unit'] = u2
            return qconv
        if u2 == 'amu':
            if u1 == 'kg':
                v2 = v1 / AMU
            elif u1 == 'me':
                v2 = v1 / AMU2AU
            else:
                v2 = None
        elif u2 == 'kg':
            if u1 == 'amu':
                v2 = v1 * AMU
            elif u1 == 'me':
                v2 = v1 / AMU2AU * AMU
            else:
                v2 = None
        elif u2 == 'me':
            if u1 == 'amu':
                v2 = v1 * AMU2AU
            elif u1 == 'kg':
                v2 = v1 / AMU * AMU2AU
            else:
                v2 = None
        else:
            v2 = None
    else:
        v2 = None
    if v2 is None:
        # failure
        print_err('', 'unable to convert ({} {}) to {}'.format(v1, 
            quantity['unit'], target_unit))
    qconv['unit'] = u2
    qconv[vkey] = v2
    if unc1 is not None:
        # convert the uncertainty, too
        qconv['unc'] = unc1 * v2 / v1
    return qconv
##
def RRHO_symmtop(freqs, Emax, binwidth, ABC_GHz, Bunit='GHz'):
    # RRHO with symmetric-top approximation.
    # Use Stein-Rabinovitch counting method (less roundoff error than 
    #   with Beyer-Swinehart)
    # ** Does not account for any symmetry **
    n = int(Emax/binwidth)  # number of bins
    nos = np.zeros(n)  # number of states in each bin
    nos[0] = 1  # the zero-point level
    for freq in freqs:
        Eladder = np.arange(freq, Emax+binwidth, freq)
        iladder = np.rint(Eladder / binwidth).astype(int)
        miyo = nos.copy()  # temporary copy of 'nos'
        # add each value in ladder to existing count in 'nos'
        for irung in iladder:
            for ibin in range(irung, n):
                miyo[ibin] += nos[ibin - irung]
        nos = miyo.copy()
    # Do similar thing for the rotational levels.
    E_rot, g_rot = rotational_levels_symmtop(ABC_GHz, Emax, Bunit=Bunit)
    ilist = np.rint(E_rot / binwidth).astype(int).reshape(-1)
    miyo = nos.copy()
    for idx in range(1, len(ilist)):
        # Loop over this index, instead of the 'iladder' values,
        #   to find the matching rotational degeneracies.
        # Start from 1 instead of 0 to skip the (non-degenerate) J=0
        irung = ilist[idx]
        degen = g_rot[idx]
        # vectorized version
        binrange = np.arange(irung, n).astype(int)
        miyo[binrange] = miyo[binrange] + nos[binrange - irung] * degen
    nos = miyo.copy()
    # find centers of energy bins
    centers = binwidth * (0.5 + np.arange(n))
    return nos, centers
##
def rotational_levels_symmtop(ABC, Emax, Bunit='cm-1'):
    # Rigid-rotor levels for a symmetric top
    # Return two arrays: energies (in cm^-1) and degeneracies
    # 'ABC' are the three rotational constants, either in GHz or cm^-1
    # 'Emax' is the upper bound on energy, in cm^-1
    ABC = np.array(ABC)
    ABC[::-1].sort()  # sort in descending order
    if Bunit.lower() == 'ghz':
        # convert ABC to cm^-1
        ABC *= 1.0e7 / CLIGHT
    if (ABC[0]-ABC[1] > ABC[1]-ABC[2]):
        # call it prolate
        B = np.sqrt(ABC[1]*ABC[2])  # geometric mean; "perpendicular"
        A = ABC[0]
        Jmax = int(-0.5 + 0.5 * np.sqrt(1 + 4*Emax/B))
    else:
        # call it oblate
        B = np.sqrt(ABC[1]*ABC[0])  # geometric mean; "perpendicular"
        A = ABC[2]
        Jmax = int( (-B + np.sqrt(B*B+4*A*Emax)) / (2*A) )
    J = np.arange(Jmax+1)  # all allowed values of J, including Jmax
    # K = 0 cases
    E = B * J * (J + 1)
    degen = 2*J + 1
    # K != 0 cases
    C = A-B
    for J in range(1,Jmax+1):
        # now J is a scalar
        K = np.arange(1, J+1)
        Kstack = B*J*(J+1) + C * K * K
        g = 2 * (2*J+1) * np.ones_like(K)
        E = np.concatenate((E, Kstack))
        degen = np.concatenate((degen, g))
    # sort by increasing energy
    idx = np.argsort(E)
    E = E[idx]
    degen = degen[idx]
    # filter out energies that exceed Emax
    idx = np.argwhere(E <= Emax)
    return E[idx], degen[idx]
##
def rotational_levels_spherical(B, Emax, Bunit='cm-1'):
    # Rigid-rotor levels for a spherical top
    # Return two arrays: energies (in cm^-1) and degeneracies
    # 'B' is the rotational constant, either in GHz or cm^-1
    # 'Emax' is the upper bound on energy, in cm^-1
    if Bunit.lower() == 'ghz':
        # convert B to cm^-1
        B *= 1.0e7 / CLIGHT
    Jmax = int(-0.5 + 0.5 * np.sqrt(1 + 4*Emax/B))
    J = np.arange(Jmax+1)  # all allowed values of J, including Jmax
    E = B * J * (J+1)
    degen = 2*J + 1
    degen *= degen  # this line is the only difference from the linear case
    return E, degen
##
def rotational_levels_linear(B, Emax, Bunit='cm-1'):
    # Rigid-rotor levels for a linear molecule
    # Return two arrays: energies (in cm^-1) and degeneracies
    # 'B' is the rotational constant, either in GHz or cm^-1
    # 'Emax' is the upper bound on energy, in cm^-1
    if Bunit.lower() == 'ghz':
        # convert B to cm^-1
        B *= 1.0e7 / CLIGHT
    Jmax = int(-0.5 + 0.5 * np.sqrt(1 + 4*Emax/B))
    J = np.arange(Jmax+1)  # all allowed values of J, including Jmax
    E = B * J * (J+1)
    degen = 2*J + 1
    return E, degen
##
def Beyer_Swinehart(freqs, Emax, binwidth):
    # Return a harmonic vibrational density of states (numpy array)
    #   whose index is the energy bin number.
    # Also return an array of the bin center energies.
    # Not vectorized
    n = int(Emax/binwidth)  # number of bins
    nos = np.zeros(n)  # number of states in each bin
    nos[0] = 1  # the zero-point level
    for freq in freqs:
        # outer loop in BS paper
        ifreq = np.rint(freq/binwidth).astype(int)
        for ibin in range(ifreq, n):
            # inner loop
            nos[ibin] += nos[ibin - ifreq]
    # find centers of energy bins
    centers = binwidth * (0.5 + np.arange(n))
    return nos, centers
##
def thermo_RRHO(T, freqs, symno, ABC_GHz, mass, pressure=1.0e5):
    # Return S, Cp, and [H(T)-H(0)] at the specified temperature
    if T == 0:
        return 0., 0., 0.,
    lnQ = lnQvrt(T, freqs, symno, ABC_GHz, mass, pressure=pressure)
    d = lnQvrt(T, freqs, symno, ABC_GHz, mass, pressure=pressure, deriv=1)  # derivative of lnQ
    deriv = T * d + lnQ  # derivative of TlnQ
    S = RGAS * (deriv - np.log(AVOGADRO) + 1)
    d2 = lnQvrt(T, freqs, symno, ABC_GHz, mass, pressure=pressure, deriv=2)  # 2nd derivative of lnQ
    deriv2 = 2 * d + T * d2  # 2nd derivative of TlnQ
    Cp = RGAS + RGAS * T * deriv2
    ddH = RGAS * T * (1 + T * d) / 1000
    return float(S), float(Cp), float(ddH)
##
def lnQvrt(T, freqs, symno, ABC_GHz, mass, pressure=1.0e5, deriv=0):
    # Return the total (vib + rot + transl) ln(Q) partition function
    #   or a derivative. RRHO approximation
    if len(freqs) == 0:
        # should be an atom
        lnQv = lnQr = 0
    else:
        lnQv = lnQvib(T, freqs, deriv=deriv)
        lnQr = lnQrot(T, symno, ABC_GHz, deriv=deriv)
    lnQt = lnQtrans(T, mass, pressure=pressure, deriv=deriv)
    lnQ = lnQv + lnQr + lnQt
    return lnQ
##
def lnQtrans(T, mass, pressure=1.0e5, deriv=0):
    # Given a temperature (in K), a molecular mass (in amu),
    #   and optionally a pressure (in Pa), return ln(Q), where
    #   Q is the ideal-gas translational partition function.
    # If deriv > 0, return a (1st or 2nd) derivative of TlnQ
    #   instead of lnQ.     
    Tbad = 4.31 * (mass ** -0.6)
    # this approx is bad unless T >> Tbad
    if T/Tbad < 10:
        s = 'T = {} is close to Tbad = {:.1f}'
        print_err('', s.format(T, Tbad), halt=False)
    if deriv == 1:
        # return (d/dT)lnQ = (3/2T)
        return (1.5 / T)
    if deriv == 2:
        # return (d2/dT2)lnQ = -(3/2T**2)
        return (-1.5 / (T*T))
    kT = BOLTZMANN * T  # in J
    m = mass * AMU   # in kg
    V = RGAS * T / pressure  # in m**3
    lnQ = 1.5 * np.log(2 * PI * m * kT)
    lnQ -= 3 * np.log(PLANCK)
    lnQ += np.log(V)
    return lnQ
##
def lnQrot(T, symno, ABC_GHz, deriv=0):
    # Given a temperature (in K), symmetry number, and list of
    #   rotational constants (in GHz), return ln(Q) or derivative, 
    #   where Q is the rigid-rotor partition function.
    n = len(ABC_GHz)
    if n == 0:
        # atom; no rotations possible
        return 0.
    elif symno < 1:
        print_err('', f'Invalid symmetry number = {symno}')
    if deriv == 1:
        # first derivative of lnQ depends only on temperature
        if n < 3:
            # linear case
            return (1/T)
        else:
            # non-linear
            return (1.5/T)
    if deriv == 2:
        # second derivative of lnQ 
        if n < 3:
            # linear case
            return (-1 / (T*T))
        else:
            # non-linear
            return (-1.5 / (T*T))
    ln_kTh = np.log(T) + np.log(BOLTZMANN) - np.log(PLANCK)  # ln(kT/h) expressed in ln(Hz)
    if n < 3:
        # linear molecule
        B = ABC_GHz[0] * 1.0e9  # convert to Hz
        lnQ = ln_kTh - np.log(symno * B)
    else:
        # polyatomic molecule with 3 constants
        lnQ = 1.5 * ln_kTh + 0.5 * np.log(PI) - np.log(symno)
        for c in ABC_GHz:
            B = c * 1.0e9 # convert to Hz
            lnQ -= 0.5 * np.log(B)
    return lnQ
##
def lnQvib(T, freqs, deriv=0):
    # Given a temperature (in K) and array of vibrational 
    #   frequencies (in cm^-1), return ln(Q) or derivative, 
    #   where Q is the harmonic-oscillator partition function.
    kTh = T * BOLTZMANN / PLANCK  # kT/h expressed in Hz
    lnQ = 0.
    nu = freqs * 100 # convert to m^-1 (as array)
    nu = nu * CLIGHT # convert to Hz
    fred = nu / kTh # reduced frequencies
    x = np.exp(-fred)  # exponentiated, reduced frequencies
    xm1 = 1 - x
    if deriv == 1:
        # derivative of lnQ
        term = nu * x / xm1
        d = term.sum()
        return (d / (kTh*T))
    if deriv == 2:
        # 2nd derivative of lnQ
        t1 = nu * (1/xm1 - 1)
        sum1 = -2 * t1.sum() / (kTh * T * T)
        t2 = nu * nu * x / (xm1 * xm1)
        sum2 = t2.sum() / (kTh * kTh * T * T)
        return (sum1 + sum2)
    # return lnQ itself
    lnq = np.log(xm1)
    lnQ = -1 * lnq.sum()
    return lnQ
##
def lnQlevels(T, energ, degen, deriv=0):
    # T = temperature / K
    # energy = list of energies / cm-1
    # degen  = list of degeneracies 
    #   energy[] and degen[] must have same length
    # deriv = desired derivative of lnQ
    # Return: ln(Q) where Q is the partition function
    #   or the requested derivative, if deriv > 0
    if len(energ) != len(degen):
        s = 'Length of energy is {:d} but length of degen is {:d}'
        print_err('', s.format(len(energ), len(degen)))
    # check for zeros in the degeneracy list
    g = np.array(degen)
    if (g == 0).any():
        # print a warning
        s = 'there are degeneracies = 0'
        print_err('', s, halt=False)
    kTh = T * BOLTZMANN / PLANCK  # kT/h expressed in Hz
    # convert cm-1 to m-1 and then to s-1
    ehz = np.array(energ) * 100 * CLIGHT
    v = ehz / kTh  # reduced energies
    x = np.exp(-v)
    Q = np.dot(g, x)
    if deriv > 0:
        # derivative of lnQ
        dQ = np.dot(g, v * x) / T  # dQ/dT
        dlnQ = dQ / Q
        if deriv == 1:
            # 1st derivative
            return dlnQ
        else:
            p = v * x * (v - 2)
            ddQ = np.dot(g, p) * T**-2  # d2Q/dT2
            ddlnQ = (ddQ / Q) - dlnQ**2
            if deriv == 2:
                # 2nd derivative
                return ddlnQ
            else:
                s = 'deriv = {:d} is not implemented'
                print_err('', s.format(deriv))
    else:
        # deriv = 0
        return np.log(Q)
##
def lnQlevels_t(T, energ, degen, mass, pressure=1.0e5, deriv=0):
    # Return the total (levels + transl) ln(Q) partition function
    #   or a derivative. 
    lnQt = lnQtrans(T, mass, pressure=pressure, deriv=deriv)
    lnQl = lnQlevels(T, energ, degen, deriv=deriv)
    lnQ = lnQt + lnQl
    return lnQ
##
def thermo_levels_t(T, energ, degen, mass, pressure=1.0e5):
    # Return S, Cp, and [H(T)-H(0)] at the specified temperature
    # For a species defined only by explicit levels and degeracies,
    #   plus translation (probably an atom or a diatomic molecule)
    if T == 0:
        return 0., 0., 0.,
    lnQ = lnQlevels_t(T, energ, degen, mass, pressure=pressure, deriv=0)
    d = lnQlevels_t(T, energ, degen, mass, pressure=pressure, deriv=1)
    deriv = T * d + lnQ  # derivative of TlnQ
    S = RGAS * (deriv - np.log(AVOGADRO) + 1)
    d2 = lnQlevels_t(T, energ, degen, mass, pressure=pressure, deriv=2)
    deriv2 = 2 * d + T * d2  # 2nd derivative of TlnQ
    Cp = RGAS + RGAS * T * deriv2
    ddH = RGAS * T * (1 + T * d) / 1000
    return float(S), float(Cp), float(ddH)
##

def typeCoord(crds):
    #   'Geometry' (a Geometry object)
    #   'cartesian' (a list of elements and list/array of cartesians)
    #   'ZMatrix' (a ZMatrix object)
    if isinstance(crds, Geometry):
        intype = 'Geometry'
    elif isinstance(crds, ZMatrix):
        intype = 'ZMatrix'
    elif isinstance(crds, list) and (len(crds) == 2) and (
        (len(crds[0]) == len(crds[1])) or (len(crds[0]) * 3 == len(crds[1])) ):
        # 'cartesian' is plausible
        intype = 'cartesian'
    else:
        print_err('autodetect')
    return intype
##
def parse_ZMatrix(zlist, unitR='angstrom', unitA='degree'):
    # Given a list of all the lines of a z-matrix, 
    # return a ZMatrix object 
    el = []
    refat = []
    var = []
    val = {}
    intop = True
    maxlen = 0  # keep track of max number of words in line, 
    #  because its decrease will signal the beginning of the
    #  second section of the z-matrix (if any)
    regexSplit = re.compile('[\s,=]+')
    for line in zlist:
        words = regexSplit.split(line)  # split on whitespace, comma, or equals
        nwords = len(words)
        if nwords < 1:
            continue  # ignore blank line
        maxlen = max(maxlen, nwords)
        if nwords < maxlen:
            intop = False
        if intop:
            # list of atoms and variable names (or floats)
            # add element symbol
            el.append(words[0])
            # add variable (str|float)'s
            var.append([])
            for i in range(2, nwords, 2):
                try:
                    var[-1].append(float(words[i]))
                except:
                    # symbolic z-matrix variable (str type)
                    var[-1].append(words[i])
            # add list of atoms to which variables refer
            refat.append([])
            for i in range(1, nwords, 2):
                refat[-1].append(int(words[i]) - 1)  # subtract one from user-viewed index
        else:
            # values of any z-matrix variables
            val[words[0]] = float(words[1])
    ZM = ZMatrix(el, refat, var, val, unitR=unitR, unitA=unitA)
    return ZM
##
class ZMatrix(object):
    # symbolic or numerical z-matrix
    # initialize empty and then add to it
    # indices are zero-based but user will be one-based
    def __init__(self, el=[], refat=[], var=[], val={}, vtype={}, unitR='angstrom', unitA='radian'):
        # this structure corresponds with the usual way of writing
        #   a z-matrix, with one atom defined per line
        self.el = el  # element symbols; should be in correct order
        self.refat = refat  # list of [list of ref. atoms that define position of this atom]
        self.var = var  # list of [list of z-matrix vars/constants that define this atom pos.]
        self.val = val  # dict of float values of any symbolic z-matrix variables
        self.vtype = vtype # dict of names of variable types ('distance', 'angle', 'dihedral')
        self.unitR = unitR # for distances
        self.unitA = unitA # for angles and dihedrals ('radian' or 'degree')
        self.coordtype = 'ZMatrix'
        self.charge = None      # optional
        self.spinmult = None    # optional
        if len(val) != len(vtype):
            # generate the vtype's automatically
            self.vtypeBuild()
    def vtypeBuild(self):
        # categorize the variables
        # this is important because they have different units
        category = ['distance', 'angle', 'dihedral']
        for iat in range(self.natom()):
            # loop over atoms
            for ivar in range(len(self.var[iat])):
                # loop over names of z-matrix variables for this atom
                # it's left-to-right, so vars are in the order in 'category'
                v = self.var[iat][ivar]  # name of a variable
                if ivar > 2:
                    self.vtype[v] = 'unknown'
                else:
                    self.vtype[v] = category[ivar]
        return
    def varMask(self, varlist):
        # given a list of z-matrix variable names, return a numpy array of Boolean
        #   showing which indices [from ZMatrix.fromVector()] correspond
        blist = []
        for var in sorted(self.val):
            blist.append(var in varlist)
        return np.array(blist)
    def canonical_angles(self):
        # shift all dihedral angles into the range (-pi, pi]
        for varname in self.val:
            if self.vtype[varname] == 'dihedral':
                self.val[varname] = angle_canon(self.val[varname], unit=self.unitA)
        return
    def cap_angles(self):
        # force all bond angles to be in the range (0, pi)
        for varname in self.val:
            if self.vtype[varname] == 'angle':
                if self.unitA == 'degree':
                    if self.val[varname] >= 180.:
                        self.val[varname] = 179.9
                    if self.val[varname] < 0.:
                        self.val[varname] = 0.1
                else:
                    # radian
                    if self.val[varname] >= PI:
                        self.val[varname] = PI - 0.0002
                    if self.val[varname] < 0.:
                        self.val[varname] = 0.0002
        return
    def adjust_dTau(self, dX):
        # given a vector of coordinate differences, move
        #   dihedral angle differences into the range (-pi, pi]
        i = 0
        for k in sorted(self.val):
            if self.vtype[k] == 'dihedral':
                dX[i] = angle_canon(dX[i], unit=self.unitA)
            i += 1
        return dX
    def toRadian(self):
        # make sure all angles/dihedrals are in radian
        if self.unitA == 'degree':
            for v in self.val:
                if self.vtype[v] in ['angle', 'dihedral']:
                    self.val[v] = np.deg2rad(self.val[v])
            self.unitA = 'radian'
        return
    def toDegree(self):
        # make sure all angles/dihedrals are in degree
        if self.unitA == 'radian':
            for v in self.val:
                if self.vtype[v] in ['angle', 'dihedral']:
                    self.val[v] = np.rad2deg(self.val[v])
            self.unitA = 'degree'
        return
    def toAngstrom(self):
        # make sure all distances are in angstrom
        if self.unitR == 'bohr':
            for v in self.val:
                if self.vtype[v] == 'distance':
                    self.val[v] *= BOHR
            self.unitR = 'angstrom'
        return
    def toBohr(self):
        # make sure all distances are in bohr
        if self.unitR == 'angstrom':
            for v in self.val:
                if self.vtype[v] == 'distance':
                    self.val[v] /= BOHR
            self.unitR = 'bohr'
        return
    def unitX(self):
        # return (tuple) of units
        return (self.unitR, self.unitA)
    def toUnits(self, unitS):
        # given (unitR, unitA), in either order, convert to those units
        if 'angstrom' in unitS:
            self.toAngstrom()
        if 'bohr' in unitS:
            self.toBohr()
        if 'degree' in unitS:
            self.toDegree()
        if 'radian' in unitS:
            self.toRadian()
        return
    def varlist(self):
        # return a list of the variable names in standard (sorted) order
        vlist = [k for k in sorted(self.val)]
        return vlist
    def toVector(self):
        # return a numpy array containing the values of the coordinates
        # they are sorted according to their names
        vec = [self.val[k] for k in sorted(self.val)]
        return np.array(vec)
    def dict2vector(self, dictin):
        # given a dict with keys that are the z-matrix variables,
        #   return a numpy array of the values (after sorting by name)
        #   there is no checking!
        vec = [dictin[k] for k in sorted(self.val)]
        return np.array(vec)
    def vector2dict(self, vecin):
        # given a vector, return a dict that has keys that
        #   are the z-matrix variables (sorted by name)
        #   No checking!
        i = 0
        dictout = {}
        for k in sorted(self.val):
            dictout[k] = vecin[i]
            i += 1
        return dictout
    def fromVector(self, vec, unitS, add=False):
        # replace current coordinates with those in 'vec' (list-like)
        # if 'add' is true, add to coordinates instead of replacing
        if unitS != self.unitX(): 
            # convert ZMatrix units, then convert back
            old_units = self.unitX()
            self.toUnits(unitS)
            unitS = False  # use as a flag
        i = 0
        for k in sorted(self.val):
            if add:
                self.val[k] += vec[i]
            else:
                self.val[k] = vec[i]
            i += 1
        if unitS == False:
            # convert units back
            self.toUnits(old_units)
        return
    def toGeometry(self):
        # generate Cartesian coordinates; return a Geometry object
        # assume that the z-matrix makes sense; no checking!
        newGeom = Geometry(units=self.unitR) # empty
        #newGeom.units = self.unitR   # angstrom or bohr
        for i in range(self.natom()):
            elem = self.el[i]
            if i == 0:
                # place first atom at the origin
                newGeom.addatom(Atom(elem, [0.,0.,0.]))
            elif i == 1:
                # place second atom on the z-axis
                zvar = self.var[i][0]
                z = self.val[zvar]
                newGeom.addatom(Atom(elem, [0.,0.,z]))
            elif i == 2:
                # place third atom in XZ plane
                zvar = self.var[i][0]  # distance
                r = self.val[zvar]
                rprev = [z, r]         # for later use
                zvar = self.var[i][1]  # angle
                theta = self.val[zvar]
                if self.unitA == 'degree':
                    theta = np.deg2rad(theta)
                z += -r * np.cos(theta) # displace from second atom
                x = r * np.sin(theta)
                newGeom.addatom(Atom(elem, [x,0.,z]))
            else:
                zvar = self.var[i][0]  # distance
                r = self.val[zvar]
                zvar = self.var[i][1]  # angle
                theta = self.val[zvar]
                zvar = self.var[i][2]  # dihedral
                phi = self.val[zvar]
                if self.unitA == 'degree':
                    theta = np.deg2rad(theta)
                    phi = np.deg2rad(phi)
                # find the three connected atoms (D-C-B-A) and get their coordinates
                C = self.refat[i][0]  # index of bonded atom
                B = self.refat[i][1]
                A = self.refat[i][2]
                C = newGeom.atom[C].xyz
                B = newGeom.atom[B].xyz
                A = newGeom.atom[A].xyz
                BC = C - B   # vector from B to C
                BA = A - B   # vector from B to A
                N = np.cross(BC, BA)    # normal to plane ABC
                # construct position for new atom 
                xp = normalize(np.cross(N, BC))  # unit vector toward A perp. to BC
                yp = normalize(N)
                dp = xp * np.cos(phi) + yp * np.sin(phi)  # within plane perp. to BC
                dp *= np.sin(theta)
                zp = normalize(BC)
                dp -= zp * np.cos(theta)
                D = normalize(dp, length=r) + C
                newGeom.addatom(Atom(elem, D))
        return newGeom
    def copy(self):
        return copy.deepcopy(self)
    def natom(self):
        # number of atoms
        return len(self.el)
    def nDOF(self):
        # number of degrees of freedom
        return len(self.val)
    def checkVals(self, verbose=True):
        # check that all variables are defined
        # print error message(s) if 'verbose' is True
        errcount = 0
        for v in [varname for varlist in self.var for varname in varlist]:
            # loop over all variable names
            if not v in self.val:
                # missing variable
                errcount += 1
                if verbose:
                    print('*** Missing value for variable {:s} in Z-matrix'.format(v))
        return errcount
    def printstr(self, unitR='angstrom', unitA='degree'):
        # print to a string, in specified units
        pstr = ''
        # first the list of atoms and variable names
        for i in range(self.natom()):
            pstr += self.el[i]   # element symbol
            for j in range(len(self.refat[i])):
                pstr += ' {:d}'.format(self.refat[i][j] + 1)  # +1 index offset for user viewing
                try:
                    pstr += ' {:f}'.format(self.var[i][j]).rstrip('0')  # omit trailing zeros
                except:
                    # not a float; should be str
                    pstr += ' {:s}'.format(self.var[i][j])
            pstr += '\n'
        # last the list of variable values in requested units
        pstr += '\n'  # blank line
        # find longest variable name, just to make the output pretty
        wlong = max([len(varname) for varname in self.val])
        for v in [varname for varlist in self.var for varname in varlist]:
            # loop over all variable names, in order by atom
            if v in self.val:
                value = self.val[v]
                if self.vtype[v] in ['angle', 'dihedral']:
                    if self.unitA != unitA:
                        # convert to requested unit for display
                        if unitA == 'degree':
                            value = np.rad2deg(value)
                        else:
                            value = np.deg2rad(value)
                else:
                    # distance variable
                    if self.unitR != unitR:
                        # convert unit
                        if unitR == 'angstrom':
                            value *= BOHR
                        else:
                            value /= BOHR
                pstr += '{:{width}s} {:f}'.format(v, value, width=wlong).rstrip('0') + '\n' # keep the decimal point
        return pstr
    def print(self):
        # print to stdout
        print(self.printstr())
        return
    def print_gradient(self, grad):
        # assuming alphabetical ordering of variable names, print gradient
        wlong = max([len(varname) for varname in self.val])
        ivar = 0
        for varname in sorted(self.val):
            print('{:{width}s}  {:f}'.format(varname, grad[ivar], width=wlong))
            ivar += 1
    def connection_table(self, tol=1.3):
        # return a connection table
        return self.toGeometry().connection_table(tol=tol)
    def extended_connection_table(self, tol=1.3):
        # return an extended connection table
        return self.toGeometry().extended_connection_table(tol=tol)
    def Coulomb_mat(self, select=0, bondtol=1.3):
        # return a (possibly restricted) Coulomb matrix
        return self.toGeometry().Coulomb_mat(select=select, bondtol=bondtol)
    def separateNonbonded(self, tol=1.3):
        # return a list of Geometry objects that are completely connected
        return self.toGeometry().separateNonbonded(tol=tol)
    def printXYZ(self, fname='', comment=''):
        # write an Xmol XYZ file
        self.toGeometry().printXYZ(fname, comment=comment)
        return
    def XmolXYZ(self, comment=''):
        # return a string in Xmol's XYZ format
        return self.toGeometry().XmolXYZ(comment)
##
def elz(ar, choice=''):
    # return atomic number given an elemental symbol, or
    # return elemental symbol given an atomic number 
    # If 'choice' is specified as 'symbol' or 'Z', return that.
    # if 'ar' is a list, then return a corresponding list
    symb = ['n',
        'H', 'He', 'Li', 'Be', 'B', 'C', 'N', 'O', 'F', 'Ne',
        'Na', 'Mg', 'Al', 'Si', 'P', 'S', 'Cl', 'Ar',
        'K', 'Ca', 'Sc', 'Ti', 'V', 'Cr', 'Mn', 'Fe', 'Co', 'Ni',
        'Cu', 'Zn', 'Ga', 'Ge', 'As', 'Se', 'Br', 'Kr',
        'Rb', 'Sr', 'Y', 'Zr', 'Nb', 'Mo', 'Tc', 'Ru', 'Rh', 'Pd',
        'Ag', 'Cd', 'In', 'Sn', 'Sb', 'Te', 'I', 'Xe',
        'Cs', 'Ba',
            'La', 'Ce', 'Pr', 'Nd', 'Pm', 'Sm', 'Eu', 'Gd', 'Tb',
                 'Dy', 'Ho', 'Er', 'Tm', 'Yb', 'Lu',
               'Hf', 'Ta', 'W', 'Re', 'Os', 'Ir', 'Pt',
                 'Au', 'Hg', 'Tl', 'Pb', 'Bi', 'Po', 'At', 'Rn',
        'Fr', 'Ra',
            'Ac', 'Th', 'Pa', 'U', 'Np', 'Pu', 'Am', 'Cm', 'Bk',
                 'Cf', 'Es', 'Fm', 'Md', 'No', 'Lr',
               'Rf', 'Db', 'Sg', 'Bh', 'Hs', 'Mt',
               'Ds', 'Rg', 'Cn', 'Nh', 'Fl', 'Mc', 'Lv', 'Ts', 'Og']
    if type(ar) == str and not re.match(r'^\d+$', ar):
        # this looks like an element symbol
        ar = ar.title()  # Title Case
        if choice == 'symbol':
            return ar
        else:
            if ar not in symb:
                print_err('', '{:s} is not an element symbol'.format(ar))
            else:
                return symb.index(ar)
    if type(ar) == list:
        # process a list of atoms
        vals = []
        for el in ar:
            vals.append(elz(el, choice))
        return vals
    # if we got here, the argument is an atomic number
    try:
        Z = int(ar)
    except:
        print('Error taking int of ar = in elz()', ar, type(ar))
        return None
    if choice == 'Z':
        return Z
    else:
        try:
            return symb[Z]
        except ValueError:
            print_err('', 'No element symbol for Z = {:d}'.format(Z))
##
def vpqn(z):
    # return valence principal quantum number (for neutral atom)
    # argument is nuclear charge Z
    if z <= 2:
        n = 1
    elif z <= 10:
        n = 2
    elif z <= 18:
        n = 3
    elif z <= 36:
        n = 4
    elif z <= 54:
        n = 5
    elif z <= 86:
        n = 6
    else:
        n = 7
    return n
##
def n_core(atno, code=''):
    # given Z value (or element symbol) return number of core electrons
    # if 'atno' is a stoichiometric dict of {'el' : number}, then return the sum for
    #   the whole molecule
    # if the optional argument, 'code', is specified, the number will be the default
    #   for that quantum chemistry code
    ncore = 0
    if type(atno) == str:
        # convert symbol to Z value
        atno = elz(atno)
    if type(atno) == dict:
        # a molecular formula
        for el, natom in atno.items():
            ncore += n_core(el) * natom
        return ncore
    if code == 'gaussian09':
        # default for Gaussian09 frozen-core calculations
        core = {
            # these are the minimum atomic numbers (Z) that have
            #   the given number of core elecrons (Z : ncore)
            3  :  2,
            11 : 10,
            19 : 18,
            37 : 36,
            55 : 54, # this is a guess
            87 : 86  # this is a guess
        }
    else:
        core = {
            # these are the minimum atomic numbers (Z) that have
            #   the given number of core elecrons (Z : ncore)
            3  :  2,
            11 : 10,
            19 : 18,
            31 : 28,
            37 : 36,
            49 : 46,
            55 : 54,
            81 : 78,
            87 : 86
        }
    for ki in sorted(core):
        if atno >= ki:
            ncore = core[ki]
    return ncore
##
def read_regex(regex, fhandl, idx=1):
    # Return something from a line matchine a regular expression.
    #   First arg is the regular expression; idx is the match-group
    #	to return.  Return a list of values from all matching lines. 
    try:
        fhandl.seek(0)
    except:
        fhandl = open(fhandl, 'r')
    matches = []
    regx = re.compile(regex)
    for line in fhandl:
        mch = regx.search(line)
        if mch:
            matches.append(mch.group(idx))
    return matches
##
def spinname(m):
    # given a spin multiplity (m = 2S+1), return the text name (or the reverse)
    name = [ 'spinless', 'singlet', 'doublet', 'triplet', 'quartet', 'quintet', 'sextet',
        'septet', 'octet', 'nonet', 'decet', 'undecet', 'duodecet' ]
    try:
        m = int(m)
        if m in range(12):
            return name[m]
        else:
            return str(m) + '-tet'
    except:
        # convert a string into the corresponding multiplicity
        return name.index(m.lower())
##
def max_not_exceed(bigser, target):
    # args are: (1) a pandas Series
    #           (2) a target value
    # return the largest value in 'bigser' that does not exceed 'target'
    # This is useful for matching up line numbers.
    smaller = bigser[bigser <= target]
    return smaller.max()
##
def min_to_exceed(bigser, target):
    # args are: (1) a pandas Series
    #           (2) a target value
    # return the smallest value in 'bigser' that exceeds 'target'
    # This is useful for matching up line numbers.
    larger = bigser[bigser >= target]
    return larger.min()
##
def match_lineno(targno, numlist):
    # return the index of the largest value in 'numlist' that does not exceed 'targno'
    # This is for matching up line numbers.
    a = np.array(numlist)
    idx = np.argwhere(a <= targno)
    i = idx.max()
    return i
##
def ensure_file_handle(fF):
    # return a file object whether 'fF' is already one, 
    # or is just the name of a file
    try:
        F = open(fF, 'r')
    except TypeError:
        # hopefully already a file object
        F = fF
    return F
##
def find_line_number(file, search_string, case=True):
    # return a list of line numbers for lines that include the search string
    F = ensure_file_handle(file)
    lineno = []
    for i, line in enumerate(F):
        if case:
            if search_string in line:
                lineno.append(i)
        else:
            # case-insensitive when case == False
            if search_string.lower() in line.lower():
                lineno.append(i)
    return lineno
##
def hartree_eV(energy, direction='to_eV', multiplier=1):
    # convert from hartree to eV or the reverse (if direction == 'from_eV')
    if direction == 'to_eV':
        return multiplier * energy * AU2EV
    elif direction == 'from_eV':
        return multiplier * energy / AU2EV
    else:
        # illegal direction
        return 'unrecognized direction = {:s} in routine hartree_eV'.format(direction)
##
def starting_n(Ltype, nppe=0):
    # given an orbital-angular momentum type ('s', 'p', etc.), 
    # return the lowest possible principal quantum number (1, 2, etc.)
    # The optional second argument is the number of electrons that have
    #   been replaced by an ECP/pseudopotential
    # This routine only handles the common cases
    nmin = {'s': 1, 'p': 2, 'd': 3, 'f': 4, 'g': 5, 'h': 6}
    cases = [2, 10, 18, 28, 36, 46, 54, 60, 68, 78, 92]
    if nppe > 0:
        # Some electrons have been replaced by ECP; adjust the explicit
        #   shell numbers accordingly
        if (not nppe in cases):
            print('*** Unhandled number of ECP-replaced electrons ***')
            print('\tnppe = {:d} in routine "starting_n"'.format(nppe))
            # But go ahead and apply the algorithm, anyway!
        # determine number of shells replaced
        rcore = {'s': 0, 'p': 0, 'd': 0, 'f':0}
        resid = nppe
        nf = (resid - 28) // 32 # number of f shells replaced
        if nf > 0:
            rcore['f'] = nf
            resid -= nf * 14
        nd = (resid - 10) // 18 # number of d shells replaced
        if nd > 0:
            rcore['d'] = nd
            resid -= nd * 10
        np = (resid - 2) // 8  # number of p shells replaced
        if np > 0:
            rcore['p'] = np
            resid -= np * 6
        ns = resid // 2  # number of s shells replaced
        rcore['s'] = ns
        resid -= ns * 2
        if resid != 0:
            print('*** Unexpected residual electrons in routine "starting_n" ***')
        for L in rcore:
            nmin[L] += rcore[L]
    return nmin[Ltype.lower()]
##
def L_degeneracy(Ltype):
    # given an orbital-angular momentum type ('s', 'p', etc.), 
    # return the degeneracy (1, 3, etc.)
    degen = {'s': 1, 'p': 3, 'd': 5, 'f': 7, 'g': 9, 'h': 11, 'i': 13}
    return degen[Ltype.lower()]
##
def J_from_degen(g):
    # given a degeneracy (2J+1), return the value of J
    j = int(np.rint(g - 1)) # round 2J to nearest integer
    if j % 2 == 0:
        return j // 2  # return an integer
    else:
        return np.round(j/2, 1)   # return float
##
def combine_MOspin(df, col1='Orbital', col2='Spin', colnew='MO'):
    # Given a pandas DataFrame, combine a numeric 'Orbital' field with
    #   a 'Spin' field ('alpha' or 'beta') to create a new 'MO' field
    #   that is a combination like '1a' or '5b'.
    # Return that new DataFrame.
    abbrev = {'alpha': 'a', 'beta': 'b', 'both': ''}
    dfret = df.copy()
    dfret[colnew] = df.apply(lambda x: str(x[col1])+abbrev[x[col2]], axis=1)
    return dfret
##
class Atom(object):
    # element symbol + cartesian coordinates + optional mass (default = 0)
    def __init__(self, el, xyz, mass=0):
        # 'el' : Element symbol or atomic number
        # 'xyz': cartesian coordinates as list or numpy array
        # 'mass':  atomic mass in amu
        self.el = elz(el, choice='symbol')
        self.xyz = np.array(xyz, dtype=np.float64)
        self.mass = mass
    def Z(self):
        # atomic number
        return elz(self.el, 'Z')
    def copy( self ):
        if type(self).__name__ == 'LabeledAtom':
            newatom = LabeledAtom(self.el, self.xyz, self.mass, self.label)
        else:
            # regular Atom object
            newatom = Atom(self.el, self.xyz, self.mass)
        return newatom
    def newxyz(self, triple):
        # replace current coordinates
        self.xyz = np.array(triple)
        return
    def addxyz(self, triple):
        # add to current coordinates with list or array
        self.xyz = self.xyz + triple
        return
    def rotate(self, Rmat):
        # multipy the coordinates by the specified matrix
        self.xyz = Rmat.dot(self.xyz)
        return
    def rotate_quat(self, Rquat):
        # quaternion rotation using 'Rquat'
        p = quaternion.from_vector_part(self.xyz)
        pp = Rquat * p * Rquat.conjugate()
        self.xyz = quaternion.as_vector_part(pp)
        return
    def rotate_sphangle(self, sphangle):
        # spherical angle that defines a quaternion rotation
        Rquat = quaternion.from_spherical_coords(sphangle)
        self.rotate_quat(Rquat)
        return
    def printstr( self ):
        # print to a string (exclude mass)
        return '{:s}\t{:9.5f}\t{:9.5f}\t{:9.5f}'.format(self.el, self.xyz[0], self.xyz[1], self.xyz[2])
    def set_mass(self, m): 
        # set atom mass: either a number (in amu) or an option string
        try:
            m = float(m)
            self.mass = m
        except:
            if m == 'atomic_weight':
                self.mass = atomic_weight(self.el)
            elif m == 'dominant':
                self.mass = dominant_isotope(self.el)
            else:
                print_err('', 'Unrecognized option, m = {:s}'.format(str(m)))
        return
    def distance_to(self, point):
        # return the distance to the point
        d = distance(self.xyz, point)
        return d
    def vdW_radius(self):
        # return the tabulated van der Waals radius
        iz = self.Z()
        return vdW_radius(iz)
    def print(self):
        # print to stdout (including mass)
        print(self.printstr())
        return
##
class LabeledAtom(Atom):
    # like an Atom, but carrying a label
    def __init__(self, el, xyz, mass=0, label='label'):
        Atom.__init__(self, el, xyz, mass)
        # label each atom simply with its ordinal number
        self.label = label
    def printstr(self):
        # print to a string (exclude mass)
        return '{:s}\t{:9.5f}\t{:9.5f}\t{:9.5f}\t{:s}'.format(self.el, self.xyz[0], self.xyz[1],
                                                              self.xyz[2], str(self.label))
    def print(self):
        # print to stdout (including mass)
        print(self.printstr())
        return
    def fromAtom(atom, label='label'):
        # create from unlabeled Atom
        newLA = LabeledAtom(atom.el, atom.xyz, atom.mass, label)
        return newLA
    def setLabel(self, label=''):
        # change the label
        self.label = label
        return
##
def distance(pos1, pos2):
    # return distance between two vectors (numpy)
    # return NaN if the vectors have different dimensionality
    if len(pos1) != len(pos2):
        print('Unequal vector dimensions in "distance": dim1 = {:d}, dim2 = {:d}'.format(len(pos1), len(pos2)))
        return np.nan 
    v = pos2 - pos1
    d = np.linalg.norm(v)
    return d
##
def structure_distance(Struct1, Struct2, align=True):
    # Return "distance" between two structure objects
    #   return Nan if they are incompatible
    # This is not RMSD, it is raw distance
    if Struct1.coordtype != Struct2.coordtype:
        # different types; distance does not make sense
        return np.nan
    if Struct1.natom() != Struct2.natom():
        # different atom counts; distance does not make sense
        return np.nan
    v1 = Struct1.toVector()
    if align:
        v2 = RMSD_align(Struct2, Struct1).toVector()
    else:
        v2 = Struct2.toVector()
    d = distance(v1, v2)  # cartesian distance
    return d
##
def angleabc(a, b, c, unit='radian'):
    # return the angle a-b-c, where all are numpy arrays
    v1 = a - b
    v2 = c - b
    s = np.dot( v1, v2 )
    s /= np.linalg.norm(v1)
    s /= np.linalg.norm(v2)
    theta = np.arccos(s)
    if unit == 'degree':
        # requested unit is degrees
        theta = np.rad2deg(theta)
    return theta
##
class Geometry(object):
    # a list of Atoms
    #   constructor does not accept masses
    def __init__(self, *args, intype='1list', units='angstrom'):
        # three input types are recognized:
        #   '2lists'    : a list of elements and a list of coordinate triples
        #   '1list'     : a list of [el, x, y, z] quadruples
        #   'atlist'    : a list of Atoms
        #   'DataFrame' : a pandas DataFrame with four columns (Z, x, y, z)
        self.coordtype = 'Geometry'
        self.atom = []
        self.units = units
        self.charge = None      # optional
        self.spinmult = None    # optional
        self.comment = ''       # optional
        self.bondlist = None    # filled by calls to self.bonded_list()
        if len(args) == 0:
            # return an empty Geometry
            return
        if intype == 'atlist':
            # argument is already a list of Atoms
            self.atom = list(args[0])
            return
        if intype == '1list':
            # argument is a list of quadruples, [el, x, y, z]
            for quad in args[0]:
                at = Atom(quad[0], quad[1:4])
                self.atom.append(at)
            return
        if intype == '2lists':
            # first argument is a list of elements
            # second argument is a list of triples
            nsymb = len(args[0])
            nxyz = len(args[1])
            if nsymb != nxyz:
                print('*** Inconsistent #symb = {:d} and #xyz = {:d} in Geometry initialization'.format(nsymb, nxyz))
                return  # empty 
            for iat in range(nsymb):
                at = Atom(args[0][iat], args[1][iat])
                self.atom.append(at)
            return
        if intype == 'DataFrame':
            # argument is a four-column pandas DataFrame (Z, x, y, z)
            for iat in range(len(args[0].index)):
                elxyz = args[0].iloc[iat]
                at = Atom(elxyz[0], elxyz[1:4].tolist())
                self.atom.append(at)
    def copy(self, elements=[], atoms=[]):
        # A restrictive list of elements XOR atom numbers may be provided
        newgeom = self.__class__()
        newgeom.units = self.units
        newgeom.coordtype = self.coordtype
        newgeom.charge = newgeom.spinmult = None
        newgeom.comment = ''
        if len(elements) > 0:
            # copy only specified elements
            for a in self.atom:
                if (a.el in elements):
                    newgeom.addatom(a.copy())
        elif len(atoms) > 0:
            # copy only specified atoms (by index)
            for i in atoms:
                newgeom.addatom(self.atom[i].copy())
        else:
            # copy all atoms
            for a in self.atom:
                newgeom.addatom(a.copy())
            # copy (charge, spin multiplicity, comment) only 
            # when we keep all the atoms
            newgeom.charge = self.charge
            newgeom.spinmult = self.spinmult
            newgeom.comment = self.comment
        # debugging
        #r = RMSD(self, newgeom)
        #if r > 1e-6:
        #    print('RMSD with copy = ', r)
        return newgeom
    def addatom(self, atom):
        self.atom.append(atom)
        return
    def append(self, geom2):
        # given another Geometry object, append its atoms here
        for at in geom2.atom:
            self.addatom(at)
        return
    def delatom(self, iatom):
        del self.atom[iatom]
        return
    def natom(self):
        return len(self.atom)
    def nDOF(self):
        # number of degrees of freedom
        return 3 * self.natom()
    def set_masses(self, mlist):
        # given a list of atom masses, assign these to the constituent Atoms
        # If 'mlist' is a string, get masses elsewhere
        if isinstance(mlist, str):
            # mlist is a string
            for i in range(self.natom()):
                self.atom[i].set_mass(mlist)
        else:
            try:
                if len(mlist) == self.natom():
                    for i in range(self.natom()):
                        self.atom[i].set_mass(mlist[i])
                else:
                    print('Expected {:d} atom masses but received only {:d} in Geometry.set_masses()'.format(self.natom(), len(mlist)))
            except:
                # 'mlist' is not a list; assume scalar 
                for i in range(self.natom()):
                    self.atom[i].set_mass(mlist)
        return
    def set_atomic_weights(self):
        # set each atom mass to its atomic weight
        for a in self.atom:
            a.set_mass('atomic_weight')
        return
    def set_atomic_isotope(self, el, massnum):
        # Set all occurence of atom 'el' to isotopic mass
        #   with mass number = 'massnum'  (an integer)
        # Return the number of atoms affected
        elem = elz(el, 'symbol')
        Z = elz(el, 'Z')
        m = isotopic_mass(f'{massnum}-{elem}')
        natom = 0
        for at in self.atom:
            if elz(at.el, 'Z') == Z:
                # set the mass
                at.set_mass(m)
                natom += 1
        return natom
    def set_spinmult(self, value):
        self.spinmult = value
        return
    def mass(self):
        # sum of masses of constituent atoms
        m = 0
        for a in self.atom:
            m += a.mass
        return m
    def translate(self, vector):
        # given a 3-vector, translate all atoms
        for i in range(self.natom()):
            self.atom[i].addxyz(vector)
        return
    def center(self, origin=np.zeros(3), use_masses=True):
        # translate molecule to set center of mass at 'origin'
        # if use_masses is False, the use geometric centroid instead of COM
        C = self.COM(use_masses=use_masses)
        vec = origin - C
        self.translate(vec)
        return
    def rotate(self, Rmat):
        # given a 3x3 rotation matrix, multiply all atomic coords
        for A in self.atom:
            A.rotate(Rmat)
        return
    def rotate_quat(self, Rquat):
        # given a rotational quaternion, rotate the molecule
        for A in self.atom:
            A.rotate_quat(Rquat)
        return
    def rotate_sphangle(self, sphangle):
        # spherical angle that defines a quaternion rotation
        Rquat = quaternion.from_spherical_coords(sphangle)
        self.rotate_quat(Rquat)
        return
    def invert(self):
        # invert all coordinates
        for A in self.atom:
            A.xyz *= -1
        return
    def reflect(self, normal=[0,0,1.]):
        # reflect through plane specified by its normal vector
        # default is the XY plane
        nrm = np.array(normal)
        nrm /= np.linalg.norm(nrm)
        for A in self.atom:
            xnew = A.xyz - 2 * np.dot(A.xyz, nrm) * nrm
            A.newxyz(xnew)
        return
    def scale(self, scale):
        # scale (multiply) all coordinates by the specified factor
        for at in self.atom:
            at.xyz *= scale
        return
    def COM(self, use_masses=True):
        # center of mass
        com = np.zeros(3)
        if self.mass == 0:
            # cannot use masses
            use_masses = False
        if use_masses:
            # ordinary center of mass
            for a in self.atom:
                com += a.xyz * a.mass
                if a.mass == 0:
                    print_err('', 'atom has zero mass', halt=False)
            com /= self.mass()
        else:
            # geometric center (no masses)
            for a in self.atom:
                com += a.xyz
            com /= self.natom()
        return com
    def copyxyz(self, Geom2):
        # copy the atomic coordinates from Geom2
        for at, at2 in zip(self.atom, Geom2.atom):
            if at.el != at2.el:
                print_err('', f'Different atoms {at.el} != {at2.el}')
            at.newxyz(at2.xyz)
        return
    def element_indices(self, elem):
        # return list of indices of atoms that match 'elem'
        el = elz(elem, choice='symbol')
        idx = []
        for i, at in enumerate(self.atom):
            if el == elz(at.el, choice='symbol'):
                idx.append(i)
        return idx
    def find_element(self, el):
        # old, redundant
        print('>>> this method (find_element) is old and redundant')
        return self.element_indices(el)
    def randomize_atom_numbering(self):
        # re-number atoms randomly; may be useful for software testing
        idx = np.random.permutation(self.natom())
        self.atom = [self.atom[i] for i in idx]
        return
    '''
    def renumber_closest_to(self, Gref):
        # renumber atoms (by element) to be closest to a reference Geometry
        # no error-checking here!
        idx = np.arange(Gref.natom(), dtype=int)
        elems = Gref.stoichiometry(asdict=True).keys()
        for el in elems:
            # for each element, find closest atom
            id0 = Gref.element_indices(el)
            Gel0 = Gref.subMolecules([id0])[0]  # sub-Geometry of element
            id = self.element_indices(el)
            Gel1 = self.subMolecules([id])[0]
            dmat = cdist(Gel0.separateXYZ()[1], Gel1.separateXYZ()[1])
            imin = np.argmin(dmat, axis=0)
            idx[id0] = np.array(id)[imin]
        # do the renumbering
        self.renumber_atoms(idx)
        return
    def distance_fit_to(self, Gref, index=False):
        # find smallest RMS distance to atoms of same elements (duplicate
        #    matches are not allowed))
        # return the sum of the distances
        # if 'index', also return the matching atom numbers
        elems = self.stoichiometry(asdict=True).keys()
        iused = []
        dsq = 0
        for el in elems:
            # for each element, find closest atom that has not already matched
            id0 = Gref.element_indices(el)
            Gel0 = Gref.subMolecules([id0])[0]  # sub-Geometry of element
            id = self.element_indices(el)
            Gel1 = self.subMolecules([id])[0]
            dmat = cdist(Gel0.separateXYZ()[1], Gel1.separateXYZ()[1])
            for icol in range(len(id)):
                jsort = np.argsort(dmat[:, icol])
                for j in jsort:
                    if id[j] not in iused:
                        # use this one
                        dsq += dmat[j, icol] ** 2
                        iused.append(id[j])  # don't use it again
                        break
        rms = np.sqrt(dsq / self.natom())
        if index:
            return rms, iused
        return rms
def minimize_RMSD_rotation(G, Gref):
    # Brute-force (Nelder-Mead) minimization of RMSD
    # return the minimized RMSD and the asociated
    # rotational quaternion
    # atom numbering must be consistent
    res = optimize.minimize(rotated_RMSD, [0, 0], args=(G, Gref), 
                              method='Nelder-Mead')
    rmsd = res.fun
    Rquat = quaternion.from_spherical_coords(res.x)
    return rmsd, Rquat
##    
    def distance_closest_match0(self, Gref, index=False):
        # find RMS distance to atoms of same elements (duplicate
        #    matches are not allowed))
        # return the sum of the distances
        # if 'index', also return the matching atom numbers
        if self.stoichiometry() != Gref.stoichiometry():
            print_err('', 'mismatching stoichiometries: self = {:s}, Gref = {:s}'.format(self.stoichiometry(),
                                                        Gref.stoichiometry()))
        elems = self.stoichiometry(asdict=True).keys()
        elem_order = Gref.separateXYZ()[0]
        iused = {el: [] for el in elems}
        dsq = 0
        for el in elems:
            # for each element, find closest atom that has not already matched
            id0 = Gref.element_indices(el)
            Gel0 = Gref.subMolecules([id0])[0]  # sub-Geometry of element
            id = self.element_indices(el)
            Gel1 = self.subMolecules([id])[0]
            dmat = cdist(Gel0.separateXYZ()[1], Gel1.separateXYZ()[1])
            for icol in range(len(id)):
                jsort = np.argsort(dmat[:, icol])
                for j in jsort:
                    if id[j] not in iused[el]:
                        # use this one
                        dsq += dmat[j, icol] ** 2
                        iused[el].append(id[j])  # don't use it again
                        break
        rms = np.sqrt(dsq / self.natom())
        # put the elements in the reference order
        idx = []
        for el in elem_order:
            idx.append(iused[el].pop(0))
        if index:
            return rms, idx
        return rms
    '''
    def distance_closest_match(self, Gref, index=False):
        # find RMS distance to atoms of same element with the same 
        #   bonding environment (duplicate matches not allowed)
        # return the RMS of the distances
        # if 'index', also return the matching atom numbers
        # this version less efficient but maybe will work
        if self.stoichiometry() != Gref.stoichiometry():
            print_err('', 'mismatching stoichiometries: self = {:s}, Gref = {:s}'.format(self.stoichiometry(),
                                                        Gref.stoichiometry()))
        neighb = self.connected_elems()[0]  # list of strings
        refneig = Gref.connected_elems()[0]
        if sorted(neighb) != sorted(refneig):
            print(self.comment)
            print(sorted(neighb))
            self.printXYZ('bad.xyz')
            print(Gref.comment)
            print(sorted(refneig))
            Gref.printXYZ('badref.xyz')
            print('units:', self.unitX(), Gref.unitX())
            print_err('', 'mismatching bonding environments')
        idx = []
        dsq = 0
        dmat = cdist(self.separateXYZ()[1], Gref.separateXYZ()[1])
        for icol, at in enumerate(Gref.atom):
            # find closest atom (of same element) that has not already matched
            jsort = np.argsort(dmat[:, icol])
            for j in jsort:
                jatom = self.atom[j]
                if (at.el == jatom.el) and (refneig[icol] == neighb[j]) and (j not in idx):
                    # use this one
                    dsq += dmat[j, icol] ** 2
                    idx.append(j)  # don't use it again
                    break
        natom = self.natom()
        rms = np.sqrt(dsq / natom)
        if len(idx) != natom:
            # not all atoms were assigned (failure)
            rms = np.inf
        if index:
            return rms, idx
        return rms
    def renumber_atoms(self, newnums):
        # re-number the atoms according to list 'newnums'
        nlen = len(newnums)
        nunique = len(set(newnums))
        if nlen != nunique:
            print_err('', 'Only {:d} unique atom numbers were requested'.format(nunique))
        if nlen != self.natom():
            print_err('', 'Only {:d} atom numbers were specified'.format(nlen))
        neworder = [self.atom[i] for i in newnums]
        self.atom = neworder
        return
    def inertia_tensor(self):
        # return 3x3 inertia tensor
        mvec = self.massVector()
        elem, triples = self.separateXYZ()
        inertia = inertia_tensor(mvec, triples)
        return inertia
    def rotational(self, mass=True, posdet=True):
        # return rotational constants (GHz), moments of inertia (kg.m^2),
        #    and principal axes (columns)
        # input units are assumed to be angstrom and amu
        ### around the center of mass ###
        # if mass == False, set all atomic masses equal before calculating
        # if posdet == True, require that the determinant of the eigenvector
        #   matrix be positive
        centered = self.copy()
        centered.toAngstrom()
        if not mass:
            # set all masses = 1
            centered.set_masses(1.)
        centered.center()
        imat = centered.inertia_tensor()
        moment, axes = np.linalg.eigh( imat )
        # convert moment to kg.m^2, assuming distances in angstrom and masses in u
        moment /= 1.0e20 * AVOGADRO * 1000.0
        with np.errstate(divide='ignore'):
            rotconst = PLANCK / ( 8 * PI * PI * CLIGHT * moment )   # now in units (1/m)
        # convert any 'inf' to 0
        rotconst[np.abs(rotconst) == np.inf] = 0.
        rotconst *= CLIGHT * 1.0e-9      # now in GHZ
        det = np.linalg.det(axes)
        if det < 0:
            # reverse the B axis
            axes[:,1] *= -1
        return rotconst, moment, axes
    def align_principal_axes(self, Gref, mass=True, mindet=0.9, quiet=False):
        # rotate so that principal axes align with those of 'Gref'
        # include masses unless 'mass' == False
        # return the rotation matrix
        C = self.copy()
        Cref = Gref.copy()
        if not mass:
            # set all atom masses = 1
            C.set_masses(1.)
            Cref.set_mass(1.)
        elif C.mass() * Cref.mass() == 0:
            # masses are needed but have not been set; assign atomic weights
            C.set_atomic_weights()
            Cref.set_atomic_weights()
        ctr = C.COM() # save the COM
        C.center()
        Cref.center()
        # inertial axes
        ABC0, I0, pax0 = Cref.rotational()
        ABC1, I1, pax1 = C.rotational()
        rmat = pax1 * np.linalg.inv(pax0)
        # check for singularity (or negative determinant)
        det = np.linalg.det(rmat)
        if det < mindet:
            if not quiet:
                print_err('', 'rotation aborted: rmat has bad det = {:.3f}'.format(det),
                      halt=False)
        else:
            # pax1 = rmat * pax0
            C.rotate(rmat)
            # rotate COM and add it back
            rctr = np.dot(ctr, rmat)
            C.translate(rctr)
            # transfer coordinates to self
            for atold, atnew in zip(self.atom, C.atom):
                atold.newxyz(atnew.xyz)
        return rmat
    def massVector(self, tripled=False):
        # return 1D vector of atomic masses
        # if 'tripled', repeat each mass three times (to match coordinates)
        n = 1
        if tripled:
            n = 3
        vmass = [[a.mass]*n for a in self.atom]
        vmass = np.array(vmass).flatten()
        return vmass
    def suppress_translation(self, direction):
        # given a displacement vector, remove net translation and return the adjusted vector
        # construct vector of masses
        vmass = self.massVector(tripled=True)
        if np.any(vmass <= 0.):
            print_err('', 'an atom has non-positive mass')
        transl = np.multiply(vmass, direction) / self.mass()
        transl = transl.reshape(-1, 3)
        center = transl.sum(axis=0)
        # subtract this 'center' from the input direction
        dnew = direction.reshape(-1,3) - center
        return dnew.flatten()
    def suppress_rotation(self, direction, thresh=0.001, maxiter=1000):
        # given a displacement vector, suppress net rotation and return the adjusted vector
        # crummy iterative method
        v = direction.reshape(-1,3)
        r = self.toVector().reshape(-1,3)  # atomic positions
        m = self.massVector()  # atomic masses
        I = ( (r*r).T * m ).T.sum()  # total moment of inertia
        iter = 0
        while True:
            L = angular_momentum(m, r, v)
            Lnorm = np.linalg.norm(L)
            #print('Lnorm = {:.4f} at iteration {:d}'.format(Lnorm, iter))
            if Lnorm < thresh:
                return v.flatten()
            w = L/I  # angular velocity
            u = np.cross(r, w)  # velocity adjustment
            v += u
            iter += 1
            if iter > maxiter:
                print('*** warning:  maxiter = {:d} exceeded in calm_rotation()'.format(maxiter))
    def toAngstrom(self):
        # ensure that units are angstrom
        if self.units == 'bohr':
            # multiply all coordinates by 'BOHR' constant 
            for a in self.atom:
                a.xyz *= BOHR
            self.units = 'angstrom'
        return
    def toBohr(self):
        # ensure that units are bohr
        if self.units == 'angstrom':
            # divide all coordinates by 'BOHR' constant 
            for a in self.atom:
                a.xyz /= BOHR
            self.units = 'bohr'
        return
    def toUnits(self, unitS):
        # given tuple of units, convert to those units
        if 'angstrom' in unitS:
            self.toAngstrom()
        if 'bohr' in unitS:
            self.toBohr()
        return
    def unitX(self):
        # return (tuple) of units
        return (self.units,)
    def to_dataframe(self):
        # return the coordinates in a DataFrame
        [els, xyz] = self.separateXYZ()
        df = pd.DataFrame({'el': els})
        df[['x', 'y', 'z']] = xyz
        return df
    def print(self, numbering=None):
        # printing routine
        # to number the atoms from N, set numbering=N
        if type(self).__name__ == 'LabeledGeometry':
            header = 'el\t     x\t\t     y\t\t     z\t\tlabel'
        else:
            # regular Geometry object
            header = 'el\t     x\t\t     y\t\t     z'
        if numbering is not None:
            header += '\t\t#'
        if self.units == 'bohr':
            header += '\t(units=bohr)'
        print(header)
        if numbering is None:
            for atom in self.atom:
                atom.print()
        else:
            # print with numerical labels starting from 'numbering'
            for iat, atom in enumerate(self.atom):
                lbl = '{:d}'.format(numbering + iat)
                LabeledAtom.fromAtom(atom, label=lbl).print()
        # print any charge and spin multiplicity
        try:
            print('charge = {:.1f}'.format(self.charge))
        except:
            # not a problem
            pass
        try:
            print('spinmult = {:.1f}'.format(self.spinmult))
        except:
            # not a problem
            pass
        return
    def XmolXYZ(self, comment='', coord_only=False):
        # return a string in Xmol's XYZ format
        # if coord_only==True, omit the first two lines (so not Xmol format anymore)
        if comment == '':
            # supply a default comment line
            comment = 'molecular composition is {:s}'.format(self.stoichiometry())
        if self.units == 'bohr':
            comment += '\t(units=bohr)'
        if not coord_only:
            xstr = '{:d}\n{:s}\n'.format(self.natom(), comment)
        else:
            xstr = ''
        for a in self.atom:
            xstr += '{:s}\t{:10.5f}\t{:10.5f}\t{:10.5f}\n'.format(a.el, a.xyz[0], a.xyz[1], a.xyz[2])
        return xstr
    def printXYZ(self, fname='', comment='', handle=False):
        # print a string in Xmol's XYZ format, to file or stdout
        if comment == '':
            comment = self.comment
        if handle:
            # 'fname' is a file pointer
            fname.write(self.XmolXYZ(comment=comment))
        else:
            # 'fname' is the name of a file or blank
            if len(fname) > 0:
                # print to specified file; over-write existing data
                with open(fname, 'w') as f:
                    f.write(self.XmolXYZ(comment=comment))
            else:
                # print to stdout
                print(self.XmolXYZ(comment=comment))
        return
    def printMOL(self, fname, title=''):
        # write an MDL MOL file
        molstr = self.to_MOL(title=title)
        with open(fname, 'w') as F:
            F.write(molstr)
        return
    def separateXYZ(self):
        # return a list with two elements: 
        #   [element symbols]; [array of cartesian triples]
        elem = []
        triples = []
        for a in self.atom:
            elem.append(a.el)
            triples.append(a.xyz)
        return [elem, np.array(triples)]
    def varlist(self):
        # return a list of (formal) variable names
        vlist = []
        for i in range(self.natom()):
            n = str(i)
            vlist += ['x_'+n, 'y_'+n, 'z_'+n]
        return vlist
    def toVector(self):
        # return a numpy array with all coordinates
        elem, triples = self.separateXYZ()
        return triples.flatten()
    def fromVector(self, vec, unitS, add=False):
        # given a flat vector of coordinates, replace the current coordinates
        # unitS[0] is the distance unit of the vector
        # if 'add' is True, then add to the current coordinates instead
        #   of replacing them
        if unitS[0] != self.units:
            # convert vector to Geometry units
            if self.units == 'angstrom':
                if unitS[0] == 'bohr':
                    vec *= BOHR
                else:
                    print('** unrecognized units: unitS[0] = {:s}'.format(unitS[0]))
            elif self.units == 'bohr':
                if unitS[0] == 'angstrom':
                    vec /= BOHR
                else:
                    print('** unrecognized units: unitS[0] = {:s}'.format(unitS[0]))
            else:
                print("** I don't recognize my own units! self.units = {:s}".format(self.units))                    
        triples = np.array(vec).reshape((-1,3))
        for i in range(self.natom()):
            if add:
                self.atom[i].addxyz(triples[i])
            else:
                self.atom[i].newxyz(triples[i])
        return
    def stoichiometry(self, ones=True, charge=False, asdict=False):
        # stoichiometry string
        # build hash of elements and their atom counts
        acount = {}
        for a in self.atom:
            try:
                acount[a.el] += 1
            except:
                acount[a.el] = 1
        if asdict:
            return acount
        stoich = stoichiometry(acount, ones=ones)
        if charge and self.charge:
            stoich += '{:+}'.format(self.charge)
        return stoich
    def distance(self, i, j, unit=''):
        # distance between atoms i and j
        # use unit if requested; default is not to change units
        try:
            d = distance(self.atom[i].xyz, self.atom[j].xyz)
        except IndexError:
            s = '*** Illegal atom number in Geometry.distance(): ' + \
                'i = {:d}, j = {:d}'.format(i, j)
            print(s)
            return np.nan
        if unit == 'angstrom' and self.units == 'bohr':
            d *= BOHR  # convert bohr to angstrom
        if unit == 'bohr' and self.units == 'angstrom':
            d /= BOHR  # convert angstrom to bohr
        return d
    def vec(self, i, j, norm=None):
        # return the vector pointing from atom i to atom j
        #   is 'norm' is not None, then normalize the vector
        #   length to 'norm'
        v = self.atom[j].xyz - self.atom[i].xyz
        if norm is None:
            return v
        else:
            # normalize to specified length
            return normalize(v, norm)
    def PGrotor(self, i, j):
        # return information relevant to the hindered rotor problem
        # following Pitzer and Gwinn 1942
        retval = {}
        rotax = self.vec(i, j, norm=1)
        # find the atoms connected to each end of the rotor axis
        bondl = self.bonded_list()
        # delete the bond between the axis atoms to create two pieces
        bondl[i] = bondl[i][bondl[i] != j]
        bondl[j] = bondl[j][bondl[j] != i]
        frags = self.find_fragments(bondedin=bondl)
        if len(frags) != 2:
            print_err('', 'need 2 fragments but found {:d} for i={:d} and j={:d}'.format(len(frags),i,j))
        retval['frags'] = frags
        # get mass of each piece without axis atoms
        fmass = []
        for frag in frags:
            m = sum([self.atom[k].mass for k in frag if k not in [i,j]])
            fmass.append(m)
        retval['fmass'] = fmass
        # the lighter piece will be called the top
        rfrag = frags[0]
        if fmass[1] < fmass[0]:
            rfrag = frags[1]
        retval['rfrag'] = rfrag
        # atom iax is the axis atom within the top; jax is the other one
        [iax, jax] = [i, j]
        if j in rfrag:
            [iax, jax] = [j, i]
        retval['iax'] = iax
        # moment of inertia of the top (A_m)
        Am = 0
        for iat in rfrag:
            if iat != iax:
                r = self.distance(iax, iat)  # hypotenuse
                a = self.angle(jax, iax, iat, 'radian')  # angle
                r = r * np.sin(a)  # vertical leg
                Am += self.atom[iat].mass * r * r
        retval['Am'] = Am
        # principal axes/moments of whole molecule
        Ii, paxes = self.rotational(units=False)[1:]
        retval['Ii'] = Ii
        # direction cosines, lambda_i
        # single-rotor reduced moment is 'Im', eq. (1a) in Pitzer/Gwinn
        lam = np.zeros(3)
        Im = 1
        for i in [0,1,2]:
            lam[i] = np.dot(paxes[i,:], rotax)
            Im -= Am * lam[i]**2 / Ii[i]
        retval['lambda'] = lam
        retval['Im'] = Am * Im
        return retval
    def PitzerGwinnIndices(self, n, V, T, rotordata):
        # Given torsional symmetry number 'n', 
        #   barrier height 'V' (dict with 'value' and 'unit'), 
        #   temperature 'T' (kelvin),
        #   and rotor data from self.PGrotor(),
        #   return (V/RT) and (1/Qf) for use in tables by
        #   Pitzer and Gwinn (1942).
        # Assume that self.units has not changed since 'rotordata'
        #   was computed. 
        vjoule = convert_unit(V, 'kj/mol')  # convert V to kJ/mol
        V = vjoule['value'] * 1000  # convert V to J/mol
        vort = V / (RGAS * T)  # V/RT value to return
        Im = rotordata['Im']
        # convert mass unit from u (amu) to kg
        Im = convert_unit({'value': Im, 'unit': 'u'}, 'kg')['value']
        # convert distance unit (which is squared) first to angstrom
        Im = convert_unit({'value': Im, 'unit': self.units}, 'ang')['value']
        Im = convert_unit({'value': Im, 'unit': self.units}, 'ang')['value']
        # convert ang**2 to m**2
        Im *= 1.e-20
        denom = 8 * np.pi**3 * Im * BOLTZMANN * T
        invQ = PLANCK * n / np.sqrt(denom)
        return vort, invQ
    def angle(self, i, j, k, unit='degree'):
        # bond (or other) angle defined by atoms i, j, k
        try:
            a = angleabc(self.atom[i].xyz, self.atom[j].xyz, self.atom[k].xyz, unit=unit)
            return a
        except IndexError:
            s = '*** Illegal atom number in Geometry.angle(): ' + \
                'i = {:d}, j = {:d}, k = {:d}'.format(i, j, k)
            print(s)
            return np.nan
    def dihedral(self, i, j, k, l, typ='linear', unit='radian'):
        # calculate dihedral angle in radians (optionally in 'degree')
        # typ='linear'   :  connectivity is i-j-k-l
        #   dihedral is between planes ijk and jkl
        # typ='branched' :  connectivity is i-j<kl (i, k and l all bonded to j)
        #   dihedral is between planes ijk and jkl (conforming with Avogadro)
        a = self.vec(j, i)
        b = self.vec(j, k)
        c = self.vec(k, l)
        if typ == 'branched':
            c = self.vec(j, l)
        b = normalize(b) 
        x = a - b * np.dot(a, b) # component of a normal to b
        z = c - b * np.dot(c, b)
        x = normalize(x)
        z = normalize(z)
        if ( np.linalg.norm(x) == 0.0) or ( np.linalg.norm(z) == 0.0):
            # something is linear; dihedral is undefined
            return np.nan
        xz = np.dot(x,z)
        # avoid mysterious, intermittent arccos() runtime warning
        xz = np.clip(xz, -1, 1)
        phi = np.arccos( xz )  # in range [0, pi]
        s = np.cross(x, z)  # vector cross-product to get sign of dihedral
        s = np.sign( np.dot(s,b) )  # parallel or antiparallel to b
        phi *= s        # include sign (right-handed definition)
        if s == 0:
            # x and z are parallel
            if np.dot(x, z) > 0:
                phi = 0
            else: 
                phi = PI
        if unit == 'degree':
            phi *= 180 / PI
        return phi
    def simple_dihedrals(self, bondtol=1.3, unit='radian'):
        # Return a list of all (redundant) linear dihedral angles. 
        #   Each list element is a tuple:
        #       ( (i,j,k,l), angle_value )
        xconn = self.extended_connection_table(bondtol)
        pairs14 = np.argwhere(xconn == 3)  # pairs of atoms 3 bonds apart
        aldihe = []
        for il in pairs14:
            [i, l] = il.tolist()
            if l < i:
                # list each dihedral only once
                continue
            j = np.intersect1d( (np.argwhere(xconn[i,:] == 1)), (np.argwhere(xconn[l,:] == 2)) ).min()
            k = np.intersect1d( (np.argwhere(xconn[i,:] == 2)), (np.argwhere(xconn[l,:] == 1)) ).tolist()
            blist = np.where(xconn[j,:] == 1)[0]
            k = np.intersect1d(k, blist).min()
            ang = self.dihedral(i, j, k, l, 'linear', unit)
            aldihe.append( ((i,j,k,l), ang) )
        return aldihe
    def find_methyls(self, bondtol=1.3):
        # return list of tuples of atom numbers (C, H, H, H)
        mlist = []
        conn = self.connection_table(bondtol)
        for i in range(self.natom()):
            if self.atom[i].Z() == 6:
                # a carbon atom
                h = np.argwhere(conn[i,:] == 1).flatten()
                if len(h) == 4:
                    # tetravalent carbon
                    hlist = []
                    for j in h:
                        if self.atom[j].Z() == 1:
                            # hydrogen atom
                            hlist.append(j)
                    if len(hlist) == 3:
                        # a methyl group; add to list
                        mlist.append( (i, *hlist) )
        return mlist
    def find_terminal_rotors(self, tol=1.3):
        '''
        return a list of rotor descriptions (including methyls)
        a rotor descrption is [j, i, [k1, k2,...] ], where
            j is the anchor atom
            i is the hub atom
            k1, k2,... are the terminal spoke atoms
        '''
        termin = self.assignTerminality(tol=tol)
        iterm = np.argwhere(termin == 0).flatten()  # terminal atoms
        # To be a terminal rotor, terminal atoms must be bonded to an
        #   atom with terminality==1 
        connex = self.connection_table(tol=tol)
        blist = np.nonzero(connex[iterm,:])[1]   # atoms bonded to terminal atoms
        bterm = termin[blist]  # terminality of those atoms
        i1 = np.nonzero(bterm == 1)  # indices of terminality==1 atoms in 'iterm'
        # create tuple for each terminal rotor; central atom first
        rotlist = []
        for iat in set(blist[i1]):
            ibond = np.nonzero(blist == iat)
            # which atom is the rotor's anchor (bonded to iat)?
            anch = set(np.argwhere(connex[iat]).flatten()) - set(iterm)  # should have only one element
            jat = anch.pop()
            trotor = [jat, iat, iterm[ibond].tolist()]
            rotlist.append(trotor)
        return rotlist
    def bonded(self, i, j, tol=1.3):
        # return True if bonded, else False (based on distance only) (3/2/10)
        # 'tol' tolerated amount of bond stretching
        r0 = r0_ref(self.atom[i].el, self.atom[j].el)
        if self.distance(i, j, unit='angstrom') < r0 * tol:
            return True
        return False
    def bonded_list(self, tol=1.3):
        # return a list of arrays of bonded atoms (by index)
        # also store it as an attribute
        natom = self.natom()
        connex = self.connection_table(tol=tol)
        bonded = [ np.argwhere(connex[i,:]).flatten() for i in range(natom) ]
        # save to attribute variable
        self.bondlist = bonded
        return bonded
    def list_bonds(self, tol=1.3, maxtry=None, warn=True):
        '''
        Return a non-redundant list of all bonds
        'maxtry' limits how many attempts
        Return a DataFrame with columns [iatom1, iatom2, elem1, elem2, distance, bond order, ring]
            'distance' is in current units
        '''
        natom = self.natom()
        '''
        dfatom = self.to_dataframe()
        dfatom['atord'] = self.atom_bond_order()  # guesses for bond order of atoms
        dfatom['blist'] = self.bonded_list()  # atoms withing bonding distance
        rings = self.rings(tol=tol)
        ring_atoms = [i for ring in rings for i in ring]
        dfatom['ring'] = [i in ring_atoms for i in range(natom)]
        #display(dfatom)
        '''
        # collect easy stuff
        rings = self.rings(tol=tol)
        ring_atoms = [i for ring in rings for i in ring]
        atord = self.atom_bond_order(tol=tol)  # guesses for bond order of atoms
        blist = self.bonded_list(tol=tol)
        dmat = self.distmat()
        pairs = []
        for i1 in range(natom):
            for i2 in blist[i1]:
                if i1 < i2:
                    # each bond appears twice; only list the copy with i1 < i2
                    pairs.append([i1, i2, self.atom[i1].el, self.atom[i2].el, dmat[i1, i2]])
        dfbond = pd.DataFrame(data=pairs, columns=['i1', 'i2', 'el1', 'el2', 'dist'])
        ringbond = [(pr[0] in ring_atoms) and (pr[1] in ring_atoms) for pr in pairs]
        dfbond['ring'] = ringbond
        
        # assume that all H's are singly bonded
        dfbond['order'] = 0
        for ibond, pr in enumerate(pairs):
            if (pr[2] == 'H') or (pr[3] == 'H'):
                dfbond.at[ibond, 'order'] = 1
        
        # examine bonding among the heavy atoms
        ihh = dfbond[dfbond.order == 0].index  # heavy-heavy bonds (index into 'dfbond')
        if maxtry is None:
            # default is number of heavy-heavy bonds, squared
            # (conjugated systems are challenging)
            maxtry = len(ihh) ** 2
        for itry in range(maxtry):
            dfbond.loc[ihh, 'order'] = 0
            ibondl = list(ihh) # make disposable copy of list of heavy-heavy bonds
            bord = np.array(atord)  # make disposable copy
            # consider connected pairs in random order, to avoid getting stuck with open valences
            random.shuffle(ibondl)
            for ib in ibondl:
                i1 = dfbond.loc[ib, 'i1']
                i2 = dfbond.loc[ib, 'i2']
                bmult = min(bord[i1], bord[i2])
                if bmult > 1:
                    # decrement unsaturated valences
                    bord[i1] -= bmult - 1
                    bord[i2] -= bmult - 1
                dfbond.loc[ib, 'order'] = bmult
            # do any unsatisfied valences remain?
            iunsat = np.nonzero(bord > 1)[0]
            if not len(iunsat):
                # all valences are satisfied
                break
            # yes, more work to do 
            for i1 in iunsat:
                # is it bonded to a potentially hypervalent atom?
                i2hyp = [i2 for i2 in blist[i1] if often_hypervalent(self.atom[i2].el)]
                if i2hyp:
                    # pick one at random
                    i2 = random.choice(i2hyp)
                    # add a double bond
                    ibd = dfbond[(dfbond.i1 == min(i1, i2)) & (dfbond.i2 == max(i1, i2))].index
                    dfbond.loc[ibd, 'order'] = 2
                    bord[i1] -= 1
                    bord[i2] -= 1
            # after allowing hypervalence, do any unsatisfied valences remain?
            iunsat = np.nonzero(bord > 1)[0]
            if not len(iunsat):
                # all good
                break
        else:
            # reached maximum number of attempts
            if warn:
                s = f'Did not satisfy all valencies in {maxtry} attempts'
                print_err('', s, halt=False)
        return dfbond
    def xxxlist_bonds(self, tol=1.3, maxtry=None, warn=True, Cpriority=False):
        '''
        Return a non-redundant list of all bonds
        Each bond is a list: [ (iatom1, iatom2), (elem1, elem2), distance, description ]
            where 'description' is a text string
            'distance' is in current units
        'maxtry' limits how many attempts
        'Cpriority' start with carbon atoms
        '''
        rings = self.rings(tol=tol)
        ring_atoms = [i for ring in rings for i in ring]
        atord = self.atom_bond_order(tol=tol)  # guesses for bond order of atoms
        blist = self.bonded_list(tol=tol)
        dmat = self.distmat()
        if maxtry is None:
            # default is number of multiple bonds, squared
            # (conjugated systems are challenging)
            nmult = sum(atord) - len(atord)
            maxtry = nmult * nmult
            maxtry = max(maxtry, 2)  # try at least twice
        for itry in range(maxtry):
            bord = atord.copy()
            retval = []
            # random ordering, to avoid getting stuck with open valences
            #   in conjugated molecules
            atlist = list(range(self.natom()))
            random.shuffle(atlist)
            if Cpriority:
                # move all carbon atoms to the front, preserving their order
                lcp = atlist.copy()
                clis = []
                nclis = []
                for iat in lcp:
                    if self.atom[iat].el == 'C':
                        clis.append(iat)
                    else:
                        nclis.append(iat)
                atlist = clis + nclis
            for iat1 in atlist:
                elem1 = self.atom[iat1].el
                inring1 = (iat1 in ring_atoms)
                at2l = list(blist[iat1])
                random.shuffle(at2l)
                for iat2 in at2l:
                    if iat2 < iat1:
                        # don't count bonds twice
                        continue
                    elem2 = self.atom[iat2].el
                    inring2 = (iat2 in ring_atoms)
                    r = dmat[iat1, iat2]  # bond length
                    descr = ''
                    if inring1 and inring2:
                        descr = 'ring'
                    if (bord[iat1] > 1) and (bord[iat2] > 1):
                        # multiple bond
                        bmult = min(bord[iat1], bord[iat2])
                        # decrement unsaturated valences
                        bord[iat1] -= bmult - 1
                        bord[iat2] -= bmult - 1
                        if descr:
                            # prepend to existing description
                            descr = '{:d}; '.format(bmult) + descr
                        else:
                            descr = '{:d}'.format(bmult)
                    retval.append([ (iat1, iat2), (elem1, elem2), r, descr ])
            # Are there any remaining unsatisfied valencies?
            nleft = sum(bord) - len(bord)
            if nleft <= 1:
                # 0 or 1 left, which is OK
                break
        if (nleft > 1):
            if not Cpriority:
                # try with Cpriority before announcing failure
                retval = self.list_bonds(tol=tol, maxtry=maxtry, warn=warn, Cpriority=True)
            else:
                if warn:
                    s = f'Did not satisfy all valencies in {maxtry} attempts'
                    print_err('', s, halt=False)
                retval = []
        return retval
    def BLC(self, A, a, tol=1.3):
        # Melius-type bond-length correction as simplified by me (2002)
        # A = [A11, A12, A22,...] and likewise for a (aka alpha)
        Amat = from_ltriangle(A)  # convert to symmetric matrix
        amat = from_ltriangle(a)
        blist = self.bonded_list(tol=tol)
        csum = 0
        for i, bl in enumerate(blist):
            ni = vpqn(self.atom[i].Z())  # valence princ. q. no. for atom i
            for j in bl:
                nj = vpqn(self.atom[j].Z())
                rij = self.distance(i, j)
                Aij = Amat[ni-1, nj-1]  # parameters depend upon val. princ. q.n.
                aij = amat[ni-1, nj-1]
                c = Aij * np.exp(-aij * rij)
                csum += c
        # each bond has been counted twice
        csum /= 2.
        return csum
    def Benson_atom_type(self, detail=1, tol=1.3, warn=True, asdict=False):
        # Assign an atom type to each atom (see Benson/Cohen chapter in my book)
        #   E.g., Cd is a double-bonded carbon, Cb is carbon in aromatic ring
        # 'detail' determines how hard we work here; '1' is default
        # Return a list unless 'asdict' 
        if detail not in [0, 1, 2]:
            print_err('', f'Level of detail = {detail} is not recognized')
        # 'dfbond' is a DataFrame with columns [i1, i2, el1, el2, dist, ring, order]
        dfbond = self.list_bonds(tol=tol, warn=warn)
        elems = [at.el for at in self.atom]  # element symbols
        bonded = self.bonded_list(tol=tol)  # bonding partners for each atom
        
        if detail < 1:
            # only element symbols for detail == 0
            if asdict:
                return list_counts(elems)
            else:
                return elems

        ### detail > 0 below ###
        # find max bond order for each atom and
        # append 'd' or 't' to element symbol
        bmult = [0] * self.natom()  # list of max bond orders
        for i, row in dfbond.iterrows():
            n = row.order  # nominal bond order
            bmult[row.i1] = max(n, bmult[row.i1])
            bmult[row.i2] = max(n, bmult[row.i2])
        btype = []
        for el, m in zip(elems, bmult):
            s = el
            if m == 2:
                s += 'd'
            elif m == 3:
                s += 't'
            btype.append(s)
        # benzene rings (6-membered ring, all atoms double-bonded)
        rings = self.rings(tol=tol, minimal=True)
        for ring in rings:
            if len(ring) != 6:
                continue
            alld = True
            for iat in ring:
                alld &= (btype[iat][-1] == 'd' or btype[iat][-1] == 'b')
            if alld:
                # this ring is aromatic
                for iat in ring:
                    btype[iat] = btype[iat].replace('d', 'b')
        if detail < 2:
            # that's enough for detail == 1
            if asdict:
                return list_counts(btype)
            else:
                return btype
        
        ### detail > 1 below ###
        # special moiety "atoms" (CO, CCO for carbonyl, ketene, etc)

        # first create those composed of two atoms
        for i, row in dfbond.iterrows():
            (iat1, iat2) = (row.i1, row.i2)
            # CO honorary atom (carbonyl)
            if sorted([btype[iat1], btype[iat2]]) == ['Cd', 'Od']:
                # label the carbon 'CO' and the oxygen '_CO'
                if btype[iat1] == 'Cd':
                    [i1, i2] = [iat1, iat2]
                else:
                    # the reverse order
                    [i1, i2] = [iat2, iat1]
                btype[i1] = 'CO'
                btype[i2] = '_CO'
            # NO honorary atom (nitrosyl)
            if sorted([btype[iat1], btype[iat2]]) == ['Nd', 'Od']:
                # label the nitrogen 'NO' and the oxygen '_NO'
                if btype[iat1] == 'Nd':
                    [i1, i2] = [iat1, iat2]
                else:
                    # the reverse order
                    [i1, i2] = [iat2, iat1]
                btype[i1] = 'NO'
                btype[i2] = '_NO'                
            # SO honorary atom (sulfoxide)
            if sorted([btype[iat1], btype[iat2]]) == ['Od', 'Sd']:
                # label the sulfur 'SO' and the oxygen '_SO'
                if btype[iat1] == 'Sd':
                    [i1, i2] = [iat1, iat2]
                else:
                    # the reverse order
                    [i1, i2] = [iat2, iat1]
                btype[i1] = 'SO'
                btype[i2] = '_SO'                
                
        # build upon the two-atom types to create the larger types
        for i, row in dfbond.iterrows():
            (iat1, iat2) = (row.i1, row.i2)          
            # CCO honorary atom (ketene)
            #   will be CO bonded to Cd and nothing else
            if sorted([btype[iat1], btype[iat2]]) == ['CO', 'Cd']:
                if btype[iat1] == 'Cd':
                    [i1, i2] = [iat1, iat2]
                else:
                    [i1, i2] = [iat2, iat1]
                # i1 is the anchor carbon, i2 is the CO carbon
                nbd = len(bonded[i2])
                if nbd != 2:
                    # the CO carbon must be bonded to exactly two atoms,
                    #   to eliminate compounds like acrolein
                    continue
                # label the anchor carbon 'CCO' and the CO carbon '_CCO'
                btype[i1] = 'CCO'
                btype[i2] = '_CCO'
                # Also relabel the bonded oxygen as '__CCO'; must find it
                binf2 = list(bonded[i2])
                binf2.remove(i1)
                i3 = binf2.pop()  # there should be only one left
                if btype[i3] == '_CO':
                    btype[i3] = '__CCO'
                else:
                    print_err('', f'Expected atom type _CO but found {btype[i3]}')
            # NO2 honorary atom (nitro)
            #   will be nitrosyl bonded to Od
            if sorted([btype[iat1], btype[iat2]]) == ['NO', 'Od']:
                if btype[iat1] == 'NO':
                    [i1, i2] = [iat1, iat2]
                else:
                    [i1, i2] = [iat2, iat1]
                # i1 is the nitrogen, i2 is a new oxygen
                # label the nitrogen 'NO2' and both oxygens '_NO2'
                btype[i1] = 'NO2'
                btype[i2] = '_NO2'
                # find the other oxygen
                binf2 = list(bonded[i1])
                binf2.remove(i2)
                for i3 in binf2:
                    if btype[i3] == '_NO':
                        btype[i3] = '_NO2'
            # SO2 honorary atom (sulfone)
            #   will be sulfoxide bonded to Od
            if sorted([btype[iat1], btype[iat2]]) == ['Od', 'SO']:
                if btype[iat1] == 'SO':
                    [i1, i2] = [iat1, iat2]
                else:
                    [i1, i2] = [iat2, iat1]
                # i1 is the sulfur, i2 is a new oxygen
                # label the sulfur 'SO2' and both oxygens '_SO2'
                btype[i1] = 'SO2'
                btype[i2] = '_SO2'
                # find the other oxygen
                binf2 = list(bonded[i1])
                binf2.remove(i2)
                for i3 in binf2:
                    if btype[i3] == '_SO':
                        btype[i3] = '_SO2'
        
        # Ph honorary atom (unsubstituted phenyl group)
        cbset = set([iat for iat, b in enumerate(btype) if b == 'Cb'])
        hset = set(self.element_indices('H'))
        for ring in rings:
            if len(ring) != 6:
                continue
            if not (set(ring) <= cbset):
                # not an aromatic ring
                continue
            n_unsub = 0
            for iat in ring:
                bset = set(bonded[iat]) # atoms bonded to this Cb
                if hset.intersection(bset):
                    n_unsub += 1  # bonded to H
                else:
                    icrux = iat   # possible bonding point
            if n_unsub < 5:
                # it's a substituted ring, not a phenyl group
                continue
            if n_unsub == 6:
                # this is benzene itself
                icrux = ring[0]  # arbitrary bonding point
            for iat in ring:
                if iat == icrux:
                    # label this 'Ph'
                    btype[iat] = 'Ph'
                else:
                    # label this '_Ph'
                    btype[iat] = '_Ph'
                    # label bonded H '__Ph'
                    for ih in hset.intersection(set(bonded[iat])):
                        btype[ih] = '__Ph'
                        
        # Cc cumulenic carbon (=C=) (my addition to the list)
        cdset = set([iat for iat, b in enumerate(btype) if b == 'Cd'])
        icc = []
        for iat in cdset:
            bset = set(bonded[iat]) # atoms bonded to this Cd
            if bset <= cdset:
                # this Cd is only bonded to other Cd's (cumulenic)
                icc.append(iat)
        # label them 'Cc'
        for iat in icc:
            btype[iat] = 'Cc'
            
        if asdict:
            return list_counts(btype)
        else:
            return btype
        
    def Benson_groups(self, detail=1, tol=1.3, asdict=False, warn=True):
        # Return a list of Benson-type groups and a list of the focal atoms
        # preserve atom order (but not index, since some atoms are not listed)
        # 'detail' is how fine-grained to categorize the ligands
        # If asdict == True, discard the atom numbering and return groups/counts
        slist, ilist = self.connected_elems(asdict=True, tol=tol)  # list of dict, list of arrays
        isel = []  # list of atom indices
        grps = []  # list of Benson groups
        # obtain the Benson atom types
        btype = self.Benson_atom_type(detail=detail, tol=tol, warn=warn)
        for iat, (stoich, atlis) in enumerate(zip(slist, ilist)):
            if btype[iat][0] == '_':
                # a peripheral moiety atom; do not list
                continue
            if len(atlis) > 1:
                # a non-terminal atom, to be listed
                # format the stoichiometry string in the Benson way
                bstr = f'{btype[iat]}-'
                for jat in atlis:
                    if btype[jat][0] == '_':
                        # a peripheral moiety atom; do not list
                        continue
                    bstr += f'({btype[jat]})'
                # combine duplicated ligands
                b2 = bstr.split('-')
                bstr = b2[0] + '-'
                s = b2[1].replace('(', ' ').replace(')', ' ').split()
                u = list_counts(s)  # a dict with counts
                for k in sorted(u.keys()):
                    if u[k] > 1:
                        bstr += f'({k}){u[k]}'
                    else:
                        bstr += f'({k})'
                grps.append(bstr)
                isel.append(iat)
        if asdict:
            # summarize groups and their counts; discard atom numbers
            aggreg = list_counts(grps)
            return aggreg
        return grps, isel
    def Benson_bonds(self, detail=1, tol=1.3, warn=True):
        # return a dict of types and numbers of bonds between Benson atoms
        lbond = []  # list of bonds (str)
        if detail == 0:
            # special case: count multiple bonds multiple times
            dfbond = self.list_bonds(warn=warn)
            for irow, row in dfbond.iterrows():
                els = [row.el1, row.el2]
                bstr = '-'.join(sorted(els))  # el-el string
                # get nominal bond order
                n = row.order
                for i in range(n):
                    lbond.append(bstr)
        else:
            # detail > 0
            atype = self.Benson_atom_type(detail=detail, tol=tol, warn=warn)
            blist = self.bonded_list(tol=tol)  # list of arrays of bonded atoms
            for i, jlis in enumerate(blist):
                A = atype[i]
                if A[0] == '_':
                    # ignore subordinated atoms
                    continue
                for j in jlis:
                    if j > i:
                        # don't cound bonds twice
                        continue
                    B = atype[j]
                    if B[0] == '_':
                        continue
                    lbond.append('-'.join(sorted([A, B])))
        # convert list to dict
        bcount = list_counts(lbond)
        return bcount
    def maxZ(self):
        # return the largest atomic number in the molecule
        zmax = 0
        for a in self.atom:
            zmax = max(zmax, a.Z())
        return zmax
    def distmat(self, unit='', variant='', verbose=False):
        # 2D array of interatomic distances (distance matrix )
        # use unit if specified
        # if variant = 'interfragment', zero out all distances
        #    within a bonded fragment 
        xyz = [a.xyz for a in self.atom]
        dmat = cdist(xyz, xyz, metric='euclidean')
        if (unit == 'angstrom') and (self.units == 'bohr'):
            dmat *= BOHR  # convert bohr to angstrom
            if verbose:
                print('>>> dmat from bohr to angstrom')
        if (unit == 'bohr') and (self.units == 'angstrom'):
            dmat /= BOHR  # convert angstrom to bohr
            if verbose:
                print('>>> dmat from angstrom to bohr')
        if variant == 'interfragment':
            # intended only for nonbonded complexes
            frags = self.find_fragments()
            nfrag = len(frags)
            if nfrag < 2:
                # there is only one fragment!
                return np.zeros_like(dmat)
            for frag in frags:
                for i in frag:
                    for j in frag:
                        dmat[i, j] = 0.
        return dmat
    def vdW_distmat(self, minbonds):
        # return symmetric matrix of interatomic van der Waals distances
        # zero between atoms that are separated by fewer than
        #   'minbonds' bonds (choose minbonds=1 to zero only diagonal)
        rvdw = [a.vdW_radius() for a in self.atom]
        rmat = np.add.outer(rvdw, rvdw)
        xconn = self.extended_connection_table()
        tooclose = np.nonzero(xconn < minbonds)
        rmat[tooclose] = 0.
        return rmat
    def steric_pseudoenergy(self, power=12, rscale=3., minbonds=3):
        # evaluate a pairwise pseudoenergy = 1 / (Rij/bohr/rscale)**power
        # atoms must be separated by at least 'minbonds' bonds to interact
        dmat = self.distmat(unit='bohr')
        dmat = dmat / rscale
        np.fill_diagonal(dmat, np.inf)
        xconn = self.extended_connection_table()
        tooclose = np.nonzero(xconn < minbonds)
        dmat[tooclose] = np.inf
        pmat = np.power(dmat, -power)
        pe = pmat.sum() / 2  # because all distances are included twice in dmat
        return pe
    def xxxsteric_pseudoenergy(self, khar=1, power=12):
        '''
        Evaluate a pairwise pseudoenergy:
            harmonic for Rij < vdW contact distance
            ~ R**-'power' for larger distance
        Atoms must be separated by at least 3 bonds to interact
        '''
        vdwmat = self.vdW_distmat(minbonds=0) # in angstrom, including diagonal
        dmat = self.distmat(unit='angstrom')
        dmat = dmat / vdwmat  # scale to vdW distance
        dmat = dmat - 1  # negative for < vdW
        pmat = np.zeros_like(dmat) # pairwise pseudoenergies
        short = np.nonzero(dmat < 0)
        pmat[short] = 1 + khar * dmat[short]**2  # harmonic
        long = np.nonzero(dmat >= 0)
        pmat[long] = (1 + dmat[long]) ** -power  # LJ-like
        # zero the unwanted (diagona and too close) interactions
        xconn = self.extended_connection_table()
        tooclose = np.nonzero(xconn < 3)
        pmat[tooclose] = 0
        pe = pmat.sum() / 2  # because all distances are included twice in dmat
        return pe
    def distances_to(self, point):
        # return list of atom distances to specified point in space
        # also the distance from COM to the point
        dcom = distance(self.COM(), point)
        dist = [a.distance_to(point) for a in self.atom]
        return dist, dcom
    def connection_table(self, tol=1.3, bondlength=False):
        # return a connection table:  a 2D array indicating bonded distances (= 0 or 1)
        # 'tol' is bond-stretch tolerance
        # if 'bondlength', instead of just '1', return the bond length (angstrom)
        dmat = self.distmat(unit='angstrom') / tol
        connex = np.zeros_like(dmat, dtype=int)
        for i in range(self.natom()):
            for j in range(i):
                # j < i
                if dmat[i][j] < r0_ref(self.atom[i].el, self.atom[j].el):
                    connex[i][j] = 1
                    connex[j][i] = 1
        if bondlength:
            # convert '1's to actual distance
            dmat *= tol
            connex = connex * dmat
        return connex
    def nbonds(self, tol=1.3):
        # number of bonds, as identified by distance
        n2 = self.connection_table(tol).sum()
        nbond = int(np.round(n2/2))
        return nbond
    def atom_bond_order(self, tol=1.3):
        # Guess which atoms have multiple bonding
        # Bonds are identified by distance
        # Returned codes: 1 = singly-bonded, 2=doubly, 3=triply
        # code < 1 indicates hypervalency
        conn = self.connection_table(tol=tol)
        nbond = conn.sum(axis=0)  # number of atoms bonded to each atom
        atlist = self.separateXYZ()[0]
        full = np.array([max_valence(el) for el in atlist])
        unsat = full - nbond  
        # 'unsat' is the number of bonds "missing"
        #   1 = doubly bonded, 2 = triply bonded
        if (unsat < 0).any():
            # hypervalent atoms
            for i, el in enumerate(atlist):
                if (unsat[i] < 0) and often_hypervalent(el):
                    # allow its valence to increase by a multiple of 2 (crude)
                    unsat[i] = (unsat[i] + 6) % 2
        bmult = [(n+1) for n in unsat]
        return bmult
    def to_MOL(self, title='', tol=1.3, warn=True):
        # return an MDL MOL representation, as a string
        # 'buf' is a list of lines
        # header block
        buf = [title, ' output from chem_subs.Geometry.to_MOL()', '']
        # counts line
        natom = self.natom()
        dfbond = self.list_bonds(warn=warn)
        nbond = len(dfbond)
        line = ('{:>3d}'*11 + ' V2000').format(natom, nbond, *[0]*8, 999)
        buf.append(line)
        # atoms block 
        [els, xyzs] = self.separateXYZ()
        fmt = '{:10.4f}'*3 + ' {:2s}' + '{:>3d}'*12
        for el, xyz in zip(els, xyzs):
            line = fmt.format(*xyz, el, *[0]*12)
            buf.append(line)
        # bonds block
        for i, row in dfbond.iterrows():
            bord = row.order  # bond order
            iat1 = row.i1 + 1  # MOL format counts from 1, not 0
            iat2 = row.i2 + 1
            line = ('{:>3d}'*7).format(iat1, iat2, bord, 0, 0, 0, 0)
            buf.append(line)
        buf.append('M  END')
        return '\n'.join(buf)
    def connected_elems(self, tol=1.3, asdict=False):
        # return a list of connected atoms formatted as stoichiometric string
        #   (alternatively, as a dict)
        # and a list of bonded atoms (by index) 
        connex = self.connection_table(tol=tol)
        slist = []
        ilist = []
        for i in range(connex.shape[0]):
            adict = {}
            jlist = np.argwhere(connex[i,:]).flatten()
            for j in jlist:
                try:
                    adict[self.atom[j].el] += 1
                except:
                    adict[self.atom[j].el] = 1
            if asdict:
                slist.append(adict)
            else:
                slist.append(stoichiometry(adict))
            ilist.append(jlist)
        return slist, ilist
    def extended_connection_table(self, tol=1.3, connex=None):
        # return a 2D array where A_ij is the number of bonded
        #   links to get from atom i to atom j
        # Zeros on the diagonal and for unconnected atom pairs
        # 'connex' is a plain connection table
        if connex is None:
            xconn = self.connection_table(tol)
        else:
            xconn = connex.copy()
        natom = xconn.shape[0] 
        changed = True
        nbond = 1
        while changed:
            changed = False
            for i in range(natom):
                for j in range(natom):
                    if xconn[i][j] == nbond:
                        # j is 'nbonds' from i
                        # find atoms k that are bonded to j
                        for k in range(natom):
                            if (k != i) and (k != j) and (xconn[j][k] == 1) and (xconn[i][k] == 0):
                                # record this distance
                                xconn[i][k] = xconn[k][i] = nbond + 1
                                changed = True
            nbond += 1
        return xconn
    def Coulomb_mat(self, select=0, bondtol=1.3):
        # return a Coulomb matrix (atomic units)
        # if 'select' != 0, then the matrix is zero
        #   except for atom pairs separated by 'select' number of bonds
        # when 'select' == 0, 'bondtol' is irrelevant
        zvals = [a.Z() for a in self.atom]
        zmat = np.outer(zvals, zvals)
        xconn = self.extended_connection_table()
        nat = xconn.shape[0]
        if select >= nat:
            print('Warning: select = {:d} exceeds atom limit in Coulomb_mat(); setting to zero'.format(select))
            select = 0
        dmat = self.distmat('bohr')
        if select > 0:
            # destroy values at wrong bonded distances
            dmat[np.where(xconn != select)] = np.inf
        else:
            # set only diagonal to inf (so that reciprocal will be zero)
            np.fill_diagonal(dmat, np.inf)
        return zmat/dmat
    def subMolecules(self, lolist, ltype='index'):
        '''
        return a list of sub-molecules
        arg 'lolist' is a list of lists
        'ltype' indicates meaning of lolist:
            'index' is a number 
            'label' only makes sense for LabeledGeometry
        '''
        geomlist = []
        for lol in lolist:
            # create an empty object for each list in lolist
            newG = self.__class__()
            newG.units = self.units
            if ltype == 'index':
                # sort indices to preserve atom ordering
                for i in sorted(lol):  
                    # 'i' is just the index in self.atom[]
                    newG.addatom(self.atom[i])
            elif (ltype == 'label') and (type(self).__name__ == 'LabeledGeometry'):
                for i in lol:
                    # 'i' is the label; add all matching atoms
                    m = False # flag
                    for at in self.atom:
                        if at.label == i:
                            newG.addatom(at)
                            m = True
                    if not m:
                        # no matching atom found
                        print('Found no atoms with label {:s} in LabeledGeometry.subMolecules()'.format(str(i)))
            else:
                print('Unrecognized ltype =', ltype, 'in LabeledGeometry.subMolecules()')
                return None
            geomlist.append(newG)
        return geomlist    
    def separateNonbonded(self, tol=1.3):
        # return a list of Geometry objects for all disconnected fragments
        fragments = self.find_fragments(tol=tol)
        # create the sub-molecules
        submols = self.subMolecules(fragments, ltype='index')
        return submols
    def paxes_dots(self, unsigned=True, tol=1.3):
        # dot products of first principal axes of nonbonded fragments 
        #  (first axis corresponds to the smallest moment/largest rot. constant)
        # if 'unsigned' == True, take absolute values
        # returns a list
        # may be useful in distinguishing cluster geometries
        Frags = self.separateNonbonded(tol=tol)
        pax = [Frag.rotational()[2] for Frag in Frags]
        dots = []
        nfrag = len(Frags)
        for i in range(nfrag):
            for j in range(i+1, nfrag):
                # only consider the first axis
                a = np.dot(pax[i][:,0], pax[j][:,0])
                if unsigned:
                    a = abs(a)
                dots.append(a)
        return dots
    def fragment_distances(self, loc='nearest', tol=1.3):
        # Identify non-bonded fragments, then
        #   return the matrix of inter-fragment distances and 
        #   another item (depending upon 'loc' value)
        #   loc == 'nearest' : minimal interatomic distance
        #   loc == 'center'  : between geometric centers (no masses)
        fragments = self.find_fragments(tol=tol)
        nfrag = len(fragments)
        sep = np.zeros((nfrag, nfrag))  # matrix of inter-fragment distances
        if nfrag == 1:
            # there is nothing to do (still return two values)
            return sep, sep.tolist()
        if loc == 'nearest':
            # find the nearest atoms between all pairs of fragments
            ijDist = self.distmat()
            ijNearest = np.zeros((nfrag, nfrag)).tolist()  # for storing the (i,j) atom numbers
            for ifrag in range(nfrag):
                mindist = np.inf
                minj = mini = -1
                for jfrag in range(ifrag):
                    for iat in fragments[ifrag]:
                        for jat in fragments[jfrag]:
                            if ijDist[iat][jat] < mindist:
                                # new closest pair
                                minj = jat
                                mini = iat
                                mindist = ijDist[iat][jat]
                    # record the closest atom pair for these two fragments
                    ijNearest[ifrag][jfrag] = (mini, minj)
                    ijNearest[jfrag][ifrag] = (minj, mini)
                    sep[ifrag][jfrag] = mindist
                    sep[jfrag][ifrag] = mindist
            return sep, ijNearest
        elif loc == 'center':
            # find the distance between geometric centers
            #   (without mass-weighting)
            cent = np.zeros((nfrag, 3))  # coordinates of fragment centers
            # compute fragment centers
            for ifrag in range(nfrag):
                for iat in fragments[ifrag]:
                    cent[ifrag] += self.atom[iat].xyz
                cent[ifrag] /= len(fragments[ifrag])
            # compute distances between centers
            for ifrag in range(nfrag):
                for jfrag in range(ifrag):
                    sep[ifrag][jfrag] = np.linalg.norm(cent[jfrag] - cent[ifrag])
                    sep[jfrag][ifrag] = sep[ifrag][jfrag]
            return sep, cent
        else:
            print_err('option', 'loc = {:s}'.format(loc))
    def spread_fragments(self, dist=5.0, tol=1.3):
        # displace fragments away from each other along
        #   closest inter-atom vectors, to distance 'dist'
        # Return value is the number of fragments detected
        sep, ijNearest = self.fragment_distances(loc='nearest', tol=tol)
        nfrag = sep.shape[0]
        if nfrag < 2:
            # nothing to do
            return nfrag
        # compute the translation vectors
        # each row in 'transl' is the translation to apply to all
        #   atoms in one fragment
        transl = np.zeros( (nfrag, 3) )
        for ifrag in range(nfrag):
            for jfrag in range(ifrag):
                (iat, jat) = ijNearest[ifrag][jfrag]
                v12 = (self.atom[iat].xyz - self.atom[jat].xyz)
                # adjust length of translation vector
                curlen = np.linalg.norm(v12)
                v12 = normalize(v12, (dist-curlen)/2)
                transl[ifrag] += v12  # move fragment i away from fragment j
                transl[jfrag] -= v12  # move fragment j away from fragment i
        # apply the translations
        fragments = self.find_fragments(tol=tol)
        for ifrag in range(nfrag):
            for iat in fragments[ifrag]: 
                self.atom[iat].addxyz(transl[ifrag])
        return nfrag
    def find_fragments(self, tol=1.3):
        # return a list of [list of atom numbers] that are connected
        natom = self.natom()
        bonded = self.bonded_list(tol=tol)
        # bonded[i] is the list of atoms that are connected to atom i (indices, not labels)
        bunch = []  # list of lists; atom "bunches" that are intact molecules
        remaining = list(range(natom))  # the indices of the atoms not yet assigned to a bunch
        moved = False  # a flag
        while(len(remaining)):
            if not moved:
                # no atoms were moved last round; start a new bunch
                seed = remaining.pop(0)
                bunch.append([seed])
                moved = True
            for i in bunch[-1]:
                moved = False
                for j in bonded[i]:
                    if not j in bunch[-1]:
                        # move this atom into the current bunch
                        bunch[-1].append(j)
                        remaining.remove(j)
                        moved = True
        return bunch
    def assignTerminality(self, tol=1.3):
        # assign a 'terminality' number to each atom;
        #  it's the number of iterations that the atom survives,
        #  where one iteration removes all terminal atoms
        # Return a list of terminality numbers
        # Atoms that can't be removed get terminality = -1
        natom = self.natom()
        terminality = np.zeros(natom, dtype=int)
        remaining = np.arange(natom)  # the indices of the atoms not yet removed
        round = 0  # counter
        while(len(remaining)):
            # find the terminal atoms
            buff = self.copy(atoms=remaining)
            # count bonds
            connex = buff.connection_table(tol=tol)
            numbond = connex.sum(axis=0)
            nonterminal = np.argwhere(numbond >= 2).flatten() # non-bonded is considered terminal
            remaining = remaining[nonterminal]
            terminality[remaining] += 1
            round += 1
            if len(remaining) == natom:
                # no atoms were eliminated; only rings and linkers remain
                terminality[remaining] = -1
                break
            else:
                natom = len(remaining)
        return terminality
    def rings(self, minimal=False, tol=1.3):
        # return a list of lists
        #   each sub-list is the indices of atoms in one ring
        #   rings are unique but may include other rings
        termy = self.assignTerminality(tol=tol)
        # 'nonterm' are atoms that terminus-removal cannot render terminal
        #   it includes all ring atoms and ring-ring linkages
        nonterm = np.where(termy == -1)[0].tolist()
        natom = len(nonterm)  # number of atoms to consider
        if natom < 3:
            # no rings are possible
            return []
        self.bonded_list(tol=tol)  # prepare self.bondlist using specified 'tol'
        # follow paths until all atoms in 'nonterm' have been considered
        paths = self.follow_paths(start=nonterm[0:1], restrict=nonterm)
        # eliminate duplicates
        rings = []
        ringsets = []
        for path in paths['ring']:
            # is this path already in rings[] ?
            pset = set(path)
            if pset not in ringsets:
                # add this to the list
                rings.append(path)
                ringsets.append(pset)
        # if requested, eliminated redundant rings
        if minimal:
            # eliminate redundant large rings
            ringsize = [len(ring) for ring in rings]
            smallrings = []
            ringatoms = set()
            for iring in np.argsort(ringsize):
                # loop over rings from smallest to largest
                rset = set(rings[iring])
                if not rset.issubset(ringatoms):
                    # some new atoms in this ring; add it
                    smallrings.append(rings[iring])
                    ringatoms = ringatoms.union(rset)
            rings = smallrings
        return rings
    def follow_paths(self, start=[0], restrict=None):
        # Start from last atom in path 'start' and walk through the atoms
        #   listed in 'restrict' until cycles or dead ends are reached.
        # Return lists of lists of atoms separated into three categories
        #   (as dict): 'ring', 'straight'
        # Recursive
        if restrict is None:
            # default: consider all atoms in the Geometry()
            restrict = list(range(self.natom()))
        if self.bondlist is None:
            # use default tolerance to construct self.bondlist[]
            print_err('', 'Creating bonded list using defaults', halt=False)
            self.bonded_list()
        if start[-1] not in restrict:
            print_err('', 'starting atom {:d} is not in restrict list'.format(start[-1]))
        paths = {'ring': [], 'straight': []}  # return value
        # find the next atoms to visit
        icurr = start[-1]  # the current atom
        if len(start) > 1:
            iprev = start[-2]  # the previous atom
        else:
            iprev = np.nan
        # create a new path for each following atom
        nextatoms = [iat for iat in self.bondlist[icurr] if (iat in restrict) and (iat != iprev)]
        if len(nextatoms) == 0:
            # current atom is a terminus; end of recursion
            paths['straight'].append(start)
            return paths
        # walk to following atom(s)
        for iat in nextatoms:
            # is this next atom already in the path?
            if iat in start:
                # yes; truncate the path to the ring and store it
                paths['ring'].append(start[start.index(iat):])
                continue
            # not (yet) a ring; extend the path with this new atom
            pathext = start + [iat]
            # here is the recursive part: add the rest of the path
            tails = self.follow_paths(pathext, restrict=restrict)
            paths['ring'].extend(tails['ring'])
            paths['straight'].extend(tails['straight'])
        return paths
    def torsions(self, tol=1.3):
        # find all bonds with correct connectivity for proper dihedrals
        connex = self.connection_table(tol=tol)
        term = self.assignTerminality()
        # find all bonds between non-terminal atoms
        nonterm = np.where(term)[0]
        subconn = np.transpose(connex[nonterm])[nonterm]
        #ntors = subconn.sum() // 2  # number of torsions
        #print('Found {:d} torsions'.format(ntors))
        # make list of central atom pairs
        pairs = []
        (ilist, jlist) = np.where(subconn)
        for i, j in zip(ilist, jlist):
            # these indices show a bond
            if i < j:
                # don't include a bond twice
                pairs.append([nonterm[i], nonterm[j]])
        #print('pairs:', pairs)
        return pairs
    def free_torsions(self, tol=1.3):
        '''
        Find all bonds that could be free torsions
        A bond that centers a proper dihedral angle and that
          disconnects the two atoms when severed
        Return a list of rotor descriptions
        Return a list of duples, where each
          duple[0] = [i, j] are the atoms in the bond
          duple[1] = [ [ilist], [jlist] ] are the lists of atoms
            connected to the i and to j (should be disjoint)
        '''
        tors = self.torsions(tol=tol)
        selem, ilem = self.connected_elems()  # list of connected atoms
        connex = self.connection_table()
        retval = []
        for t in tors:
            # delete the bond between these atoms
            conx = connex.copy()
            conx[t[0], t[1]] = 0
            conx[t[1], t[0]] = 0
            # are the two atoms still connected?
            xcon = self.extended_connection_table(connex=conx)
            if xcon[t[0], t[1]] != 0:
                # two atoms are still connected (rings)
                continue
            # the two atoms are not otherwise connected (good)
            conxlist = [np.argwhere(xcon[i,:]).flatten().tolist() for i in t]
            freet = (t, conxlist)
            retval.append(freet)
        return retval
    def bounding_sphere(self):
        # return the center and radius of a "smallest" sphere enclosing the nuclei
        xyz = self.separateXYZ()[1]
        return small_enclosing_sphere(xyz)
    def Ztot(self):
        # return the sum of atomic numbers
        ztot = 0
        for at in self.atom:
            ztot += at.Z()
        return ztot
##
class LabeledGeometry(Geometry):
    # like a Geometry, but composed of LabeledAtom instead of Atom
    def __init__(self, *args, intype='atlist', labels='', units='angstrom', istart=0):
        # specify labels = 'present' if the atoms are already labeled
        Geometry.__init__(self, *args, intype=intype, units=units)
        if labels == 'present':
            # atoms are already labeled
            pass
        else:
            natom = self.natom()
            for i in range(natom):
                # replace each Atom with a LabeledAtom
                if len(labels) >= natom:
                    # user-supplied list of atom labels
                    self.atom[i] = LabeledAtom.fromAtom(self.atom[i], labels[i])
                else:
                    # use the atom number (starting from 'istart') as the label
                    self.atom[i] = LabeledAtom.fromAtom(self.atom[i], i+istart)
    def setLabels(self, labels):
        # change the labels on the LabeledAtoms
        natom = self.natom()
        if len(labels) != natom:
            # this is not allowed; make no changes
            print('Expected {:d} but received {:d} labels in LabeledGeometry.setLabels()'.format(natom, len(labels)))
            return
        else:
            # change the labels
            for i in range(natom):
                self.atom[i].setLabel(labels[i])
            return
    def fromGeometry(geom, labels=''):
        # create from unlabeled Geometry
        Lmolec = LabeledGeometry(geom.atom, intype='atlist', labels=labels, units=geom.units)
        return Lmolec
    def getLabels(self):
        # return the atom labels as a list
        labels = [a.label for a in self.atom]
        return labels
    def sortByLabel(self):
        # order atoms by increasing value of label
        labels = self.getLabels()
        idx = np.argsort(labels)
        neworder = [self.atom[i] for i in idx]
        self.atom = neworder
        return
    def rotateTorsion(self, ispokes, ihub, iaxle, angle, unit='radian'):
        # rotate part of (atoms[ispokes]) about the center atom[ihub]
        # the rotational axis is atom[ihub]-atom[iaxle]
        # the rotational angle = angle (in 'unit' of radian or degree)
        # return a LabeledGeometry() object with atoms sorted by label
        if unit == 'degree':
            angle = np.radians(angle)
        elif unit != 'radian':
            print_err('', f'angle unit of "{unit}" is not allowed')
        ifixed = [i for i in range(self.natom()) if i not in ispokes]
        # translate a copy so that 'hub' is at the origin
        Gcopy = self.copy()
        Gcopy.translate(-self.atom[ihub].xyz)
        axis = Gcopy.vec(iaxle, ihub, norm=angle)  # length is desired angle
        Gpart = Gcopy.subMolecules([ifixed, ispokes])
        rquat = quaternion.from_rotation_vector(axis)
        Gpart[1].rotate_quat(rquat)
        # re-assemble the two parts and sort atoms by label
        Gpart[0].append(Gpart[1])
        Gpart[0].sortByLabel()
        # translate back to original position
        Gpart[0].translate(self.atom[ihub].xyz)
        return Gpart[0]
##
def PitzerGwinnTables(vort, invQ):
    # return interpolated values from Pitzer & Gwinn 1942, 
    #   tables III (entropy), V (enthalpy content) and VI (Cp)
    # also convert units:  S and Cp from cal to J, ddH from cal to kJ
    # Relies upon CSV files: PitzerGwinnTabx.csv (x = 3,5,6)
    # Only interpolates within rectangular blocks without NaN
    #   otherwise returns nan
    BIN_DIR = '/home/irikura/bin3dev/'
    BIN_DIR = './'  # does this work?
    retval = {}
    for t in [3, 5, 6]:
        # read the Table from disk
        df = pd.read_csv(BIN_DIR + 'PitzerGwinnTab{:d}.csv'.format(t), index_col=0).astype(float)
        df.columns = df.columns.astype(float)
        # first try dropping columns with nan
        df_defined = df.dropna(axis=0)
        x = df_defined.columns.values.astype(float)
        y = df_defined.index.values.astype(float)
        z = df_defined.values.astype(float)
        f = interpolate.interp2d(x, y, z, kind='cubic', bounds_error=True)
        try:
            znew = f(invQ, vort)[0]
        except ValueError:
            # out of bounds; try dropping columns with nan instead of rows
            df_defined = df.dropna(axis=1)
            x = df_defined.columns.values.astype(float)
            y = df_defined.index.values
            z = df_defined.values.astype(float)
            f = interpolate.interp2d(x, y, z, kind='cubic', bounds_error=True)
            try:
                znew = f(invQ, vort)[0]
            except ValueError:
                # out of bounds; give up unless you want to code something better
                znew = np.nan
        # convert cal to J
        retval['Tab{:d}'.format(t)] = znew * CALORIE
    return retval
##

class Cube(object):
    # for a density "cube file", as produced by Gaussian and other codes
    def __init__(self, cubefilename):
        # Read a cube file and create an object
        iline = 0
        comment = []  # list of two comment lines
        npt = []  # number of points along each edge
        edge = []  # rows are increment directions
        atno = []  # atomic numbers (Z)
        coord = []  # atomic coordinates (bohr)
        units = 'bohr'
        with open(cubefilename) as F:
            oneline = []  # buffer for a full line along Z direction
            for line in F:
                field = line.split()
                if iline < 2:
                    # comment lines
                    comment.append(line)
                elif iline == 2:
                    # read number of atoms and coordinate origin
                    natom = int(field[0])
                    origin = np.array([float(field[i]) for i in (1,2,3)])
                elif iline < 6:
                    # read edge count and direction
                    npt.append(int(field[0]))
                    edge.append(np.array([float(field[i]) for i in (1,2,3)]))
                    if len(npt) == 3:
                        # create array for density data
                        npt = np.array(npt)
                        if npt[0] < 0:
                            # units are angstrom
                            units = 'angstrom'
                            npt *= -1
                        cube = np.zeros(npt)
                        idx = [0,0]  # counters along X and Y
                elif iline < 6 + natom:
                    # read Z and position of an atom
                    atno.append(int(field[0]))
                    coord.append(np.array([float(field[i]) for i in (2,3,4)]))
                else:
                    # read density data
                    if len(field) + len(oneline) > npt[2]:
                        # starting a new line along Z
                        # save the old one
                        cube[idx[0], idx[1], :] = np.array(oneline, dtype=float)
                        oneline = field
                        # increment counters
                        idx = increm_two(idx, npt)
                    else:
                        # add to current line along Z
                        oneline.extend(field)
                iline += 1
            # save the last line along Z
            cube[idx[0], idx[1], :] = np.array(oneline, dtype=float)
        # create the Cube object
        self.file_lines = iline   # number of lines read from file
        self.npt = npt  # triple of number of points along each direction
        self.edge = np.array(edge)   # displacment vectors (one voxel)
        self.density = np.array(cube)
        self.molecule = Geometry(atno, coord, intype='2lists', units=units)
        self.unit = units
        self.origin = origin
        self.comment = comment
    def density_from_spheres(self, r):
        # given a list of atomic radii, replace the density with the sum
        # of hard spheres
        # 'r' is list of radii; length of 1 for all the same
        # lazy: no checking of distance units
        self.comment[1] = 'Generated from hard-sphere atoms\n'
        natom = self.molecule.natom()
        if len(r) != natom:
            # use same radius for all atoms
            rad = [r[0]] * natom
        else:
            rad = r
        # zero the density
        self.density = np.zeros_like(self.density)
        # squared lengths of basis vectors
        esq = np.einsum('ij,ij->i', self.edge, self.edge)
        # plain lengths
        elen = np.sqrt(esq)
        # get atomic positions in grid coordinates (not rounded)
        atijk = self.atoms_ijk(rounded=False)
        for iat in range(natom):
            # don't bother with radii less than zero
            if rad[iat] <= 0:
                continue
            aijk = atijk[iat]
            dmax = rad[iat] / elen  # displacement limits
            rad2 = rad[iat] ** 2
            for dx in np.arange(-dmax[0], dmax[0]):
                # find nearest grid value
                ix = np.rint(dx + aijk[0]).astype(int)
                xdist = abs(aijk[0] - ix)
                #print('xdist =', xdist, 'dmax[0] =', dmax[0])
                if xdist > dmax[0]:
                    # too far away already
                    continue
                # y direction must be closer
                xdist *= elen[0]  # convert from grid units to bohr
                yresid2 = rad2 - xdist ** 2
                dmax[1] = np.sqrt(yresid2) / elen[1]
                for dy in np.arange(-dmax[1], dmax[1]):
                    iy = np.rint(dy + aijk[1]).astype(int)
                    ydist = abs(aijk[1] - iy)
                    if ydist > dmax[1]:
                        # too far away already
                        continue
                    # z direction must be even closer
                    ydist *= elen[1]  # convert distance to real units
                    zresid2 = yresid2 - ydist ** 2
                    dmax[2] = np.sqrt(zresid2) / elen[2]
                    for dz in np.arange(-dmax[2], dmax[2]):
                        iz = np.rint(dz + aijk[2]).astype(int)
                        zdist = abs(aijk[2] - iz)
                        if zdist > dmax[2]:
                            # too far away
                            continue
                        # this point is good!
                        try:
                            self.density[ix,iy,iz] += 1
                        except IndexError as e:
                            pass
                            #print(str(e))
        # return the list of radii that were used
        return rad
    def write(self, filename, asMO=False):
        # create a new cube file
        fmt3 = '{:5d}{:12.6f}{:12.6f}{:12.6f}\n'
        fmt4 = '{:5d}{:12.6f}{:12.6f}{:12.6f}{:12.6f}\n'
        natom = self.molecule.natom()
        if asMO:
            # appropriate for signed data
            natom = -natom
        with open(filename, 'w') as F:
            for line in self.comment:
                F.write(line)
            F.write(fmt3.format(natom,*self.origin))
            for i in [0,1,2]:
                F.write(fmt3.format(self.npt[i],*self.edge[i,:]))
            for at in self.molecule.atom:
                F.write(fmt4.format(at.Z(), at.Z(), *at.xyz))
            if asMO:
                # pretend this is MO #1 of 1
                F.write('{:5d}{:5d}\n'.format(1, 1))
            for ix in range(self.npt[0]):
                for iy in range(self.npt[1]):
                    for iz in range(self.npt[2]):
                        if (iz > 0) and ((iz % 6) == 0):
                            F.write('\n')
                        F.write('{:13.5e}'.format(self.density[ix,iy,iz]))
                    F.write('\n')
        return
    def nvoxel(self):
        # return number of voxels (points) in the cube
        return np.prod(self.density.shape)
    def voxel_vol(self):
        # return volume of a single voxel
        return np.linalg.det(self.edge) 
    def volume(self):
        # return total volume of cube, with cubic units
        cubevol = self.nvoxel() * self.voxel_vol()
        return cubevol, '{:s}**3'.format(self.unit)
    def total_density(self):
        # return the total density
        tot = self.voxel_vol() * self.density.sum()
        return tot
    def vol_ge(self, thresh, return_npt=False):
        # return the volume where density >= thresh, with cubic units
        # count the number of points >= the threshold
        nhigh = (self.density >= thresh).sum()
        vol, u = self.volume()
        highvol = vol * (nhigh / self.nvoxel())
        if return_npt:
            # also return the number of points above threshold
            return highvol, u, nhigh
        else:
            return highvol, u
    def xyz2ijk(self, xyz, rounded=True):
        # given coordinate triple, return corresponding indices into grid
        # return floats if rounded==False
        grd = xyz - self.origin
        # squares of basis vectors
        esq = np.einsum('ij,ij->i', self.edge, self.edge)
        # dot products of xyz with basis vectors
        dotp = self.edge.dot(grd)
        retval = dotp / esq
        if rounded:
            retval = np.rint(retval).astype(int)
        return retval
    def atoms_ijk(self, rounded=True):
        # return list of coordinate triples for atom positions in grid
        # coordinates
        retval = []
        for at in self.molecule.atom:
            retval.append(self.xyz2ijk(at.xyz, rounded=rounded))
        return retval
    def atom_radii(self, thresh):
        # return list of atomic effective radii for the specified
        # density threshold
        # this algorithm requires a cubic grid
        radii = []
        if self.edge.sum() != np.trace(self.edge):
            print('*** atom_radii() requires a cubic grid with Cartesian basis directions')
            return np.zeros(self.molecule.natom())
        if self.edge.sum() != 3 * self.edge[0,0]:
            print('*** atom_radii() requires equal x,y,z displacements')
            return np.zeros(self.molecule.natom())
        # grid is satisfactory
        lowdens = (self.density < thresh)
        natom = self.molecule.natom()
        rmin = np.zeros(natom) + np.inf  # list of smallest distance of atom to a low point
        # find atom locations as nearest grid points
        atgrid = [self.xyz2ijk(at.xyz) for at in self.molecule.atom]
        # Find crude radius from searching an expanding cube
        for iat in range(natom):
            [i, j, k] = list(atgrid[iat])
            d = 1
            while True:
                idxsrch = np.argwhere(lowdens[i-d:i+d+1, j-d:j+d+1, k-d:k+d+1])
                print(idxsrch)
                if len(idxsrch) > 0:
                    # a low point has been found
                    print('found low point for atom', iat)
                    break
                d += 1
        return rmin
##
def PitzerGwinnCoupling(rotors):
    # argument is list of dict (one row for each rotor)
    # return an array of modified moments I_m from PG eqs. (1bc)
    nrotor = len(rotors)
    Im = np.zeros(nrotor)
    for i in range(nrotor):
        Inew = rotors[i]['Im']
        for j in range(nrotor):
            if j != i:
                # eq (1c) with (m, m') = (i, j)
                prefactor = rotors[i]['Am'] * rotors[j]['Am']
                v = rotors[i]['lambda'] * rotors[j]['lambda'] 
                v = v / rotors[i]['Ii']
                Lmmp = prefactor * v.sum()
                # eq (1b)
                b = Lmmp * Lmmp / rotors[j]['Im']
                Inew -= b/2
        Im[i] = Inew
    return Im
##
def increm_two(idx, npt):
    # increment two nested counters; return None if past the end
    # last index increments faster
    # npt[] gives the limits for the counters
    # return the updated counters idx[]
    idx[1] += 1
    if idx[1] >= npt[1]:
        idx[1] = 0
        idx[0] += 1
    if idx[0] >= npt[0]:
        return None
    return idx
##
def atomic_weight(iz):
    # return atomic weight given Z (3/21/2012) or elemental symbol (9/16/2014)
    # values are from the NIST 2003 periodic table
    # units are u (amu)
    wt = [ 0, 1.00794, 4.002602, 6.941, 9.012182, 10.811, 12.0107, 14.0067, 15.9994, 18.9984032, 20.1797,
        22.989770, 24.3050, 26.981538, 28.0855, 30.973761, 32.076, 35.453, 39.948,
        39.0983, 40.078, 44.955910, 47.867, 50.9415, 51.9961, 54.938049, 55.845, 58.933200, 58.6934,
        63.546, 65.409, 69.723, 72.64, 74.92160, 78.96, 79.904, 83.798,
        85.4678, 87.62, 88.90585, 91.224, 92.90638, 95.94, 98, 101.07, 102.90550, 106.42,
        107.8682, 112.411, 114.818, 118.710, 121.760, 127.60, 126.90447, 131.293,
        132.90545, 137.327,
        138.9055, 140.116, 140.90765, 144.24, 145, 150.36, 151.964, 157.25, 158.92534,
        162.500, 164.93032, 167.259, 168.93421, 173.04, 174.967,
        178.49, 180.9479, 183.84, 186.207, 190.23, 192.217, 195.078,
        196.96655, 200.59, 204.3833, 207.2, 208.98038, 209, 210, 222,
        223, 226,
        227, 232.0381, 231.03588, 238.02891, 237, 244, 243, 247, 247,
        251, 252, 257, 258, 259, 262,
        261, 262, 266, 264, 277, 268 ]
    if type( iz ) == int:
        return wt[iz]
    else:
        # probably an elemental symbol
        z = elz(iz)
        return wt[z]
##
def xyz2Atom(atno, xyz):
	# given Z value (or element symbol) and list [x, y, z], return an Atom
    if type(atno) == int:
        el = elz(atno)
    else:
        # we were probably given an element symbol, not an atomic number
        el = atno
        atno = elz(el)
    m = atomic_weight(atno)
    return Atom(el, xyz[0], xyz[1], xyz[2], m)
##
def xyz2Geometry(atnos, xyzs, units='angstrom'):
    # args: list of atomic numbers; list of coordinates [x1, y1, z1, x2, y2, z2,...]
    # return a Geometry
    # 9/16/2014
    #
    # check for compatible list lengths
    natom = len(atnos)
    nxyz = len(xyzs)
    if nxyz != 3 * natom:
        print('Incompatible numbers of atoms and of coordinates:')
        print('natom = {:d}, nxyz = {:d} in xyz2Geometry()'.format(natom, nxyz))
        return None
    # build Geometry one Atom at a time
    molecule = Geometry(units=units)
    for i in range(natom):
        atno = atnos[i]
        xyz = xyzs[3*i:3*i+3]
        atom = xyz2Atom(atno, xyz)
        molecule.addatom(atom)
    return molecule
##
def JSdm(P, Q, base=4):
    # Jensen-Shannon divergence metric; base=4 gives range = [0, 1]
    # P and Q are *discrete* PDFs (with same data type)
    # Allowed data types: tuple; list; dict; 1D numpy array
    # P and Q must be same length, except when dict
    # They will be L1-normalized here
    # Return:
    #   (1) metric (float) (distance)
    #   (2) messages (list of string)
    #
    message = []
    if type(P) != type(Q):
        print('*** P and Q must be same data type in routine JSdm() ***')
        return (None, None)
    if (type(P) == list) or (type(P) == tuple) or (type(P) == np.ndarray):
        P = np.array(P).astype(float)
        Q = np.array(Q).astype(float)
        allkeys = []   # length will be tested later, to infer input type
    elif type(P) == dict:
        # make a sorted list of all the keys
        allkeys = sorted(set(list(P.keys()) + list(Q.keys())))
        Plist = []
        Qlist = []
        for key in allkeys:
            try:
                Plist.append(P[key])
            except:
                # probably key is not present in this dict
                Plist.append(0)
            try:
                Qlist.append(Q[key])
            except:
                Qlist.append(0)
        if P.keys() != Q.keys():
            message.append('Different key lists merged for P and Q')
        # convert list to numpy array
        P = np.array(Plist).astype(float)
        Q = np.array(Qlist).astype(float)
    else:
        print('*** Unhandled data type in routine JSdm():', type(P))
        return (None, None)
    # No negative values are allowed
    if len(np.where(P < 0)[0]) or len(np.where(Q < 0)[0]):
        print('*** Negative values not allowed in routine JSdm() ***')
        return (None, None)
    # P and Q must have the same number of elements
    if len(P) != len(Q):
        print('*** P and Q must have same length in routine JSdm() ***')
        return (None, None)
    # Normalize both PDFs (L1-normalization)
    Plen = P.sum()
    Qlen = Q.sum()
    if (Plen == 0) or (Qlen == 0):
        print('*** P and Q may not be all zeros in routine JSdm() ***')
        return (None, None)
    P /= Plen
    Q /= Qlen
    pqsum = P + Q
    # find any zeros in (P+Q) and delete corresponding elements in P, Q, and P+Q
    nullidx = np.where(pqsum == 0)[0]
    if len(nullidx > 0):
        # delete the troublesome elements
        if len(allkeys) > 0:
            # input was dict
            message.append('Deleted null elements with indices ' + str([allkeys[i] for i in nullidx]))
        else:
            # input was list-like
            message.append('Deleted null elements with indices ' + str(nullidx))
        P = np.delete(P, nullidx)
        Q = np.delete(Q, nullidx)
        pqsum = np.delete(pqsum, nullidx)
    # compute the JSDM
    # P or Q may still contain zeros, so don't take straight logarithm
    #   instead, use x*ln(y) = ln(y**x) and convention 0**0 = 1
    s1 = 2 * P / pqsum
    s2 = 2 * Q / pqsum
    s1 = s1 ** P
    s2 = s2 ** Q
    s1 = np.log(s1) / np.log(base)
    s2 = np.log(s2) / np.log(base)
    dsq = (s1 + s2).sum()
    return np.sqrt(dsq), message
##
def AOpopdiffmats(df1, df2):
    # Compare two pandas DataFrames with Mulliken population data,
    #   as returned by routine 'read_AOpop_in_MOs()' in 'g09_subs.py'
    # Return two numpy 2D-arrays:
    #   (1) JSdm() differences in AO populations (Jensen-Shannon divergence metric)
    #   (2) (E2-E1) orbital energy differences
    # Also return two lists of MO numbers:
    #   (3) MO labels in df1 (rows of matrices)
    #   (4) MO labels in df2 (columns of matrics)
    MOlist1 = sorted(set(df1.MO))
    MOlist2 = sorted(set(df2.MO))
    nmo1 = len(MOlist1)
    nmo2 = len(MOlist2)
    dPmat = np.zeros((nmo1, nmo2))
    dEmat = np.zeros((nmo1, nmo2))
    for imo in MOlist1:
        # looping over MOs in first set
        idx = MOlist1.index(imo)  # row number in returned matrices
        orb1 = df1[df1.MO == imo]
        E1 = orb1.iloc[0]['Energy']
        # convert AO populations into a dict
        mulpop1 = {}
        # create a label for each AO that looks like '#5-p' for a p-orbital on atom #5
        for ao in orb1.index:
            s = '#{:d}-{:s}'.format(orb1.loc[ao]['Atom#'], orb1.loc[ao]['L'])
            c = orb1.loc[ao]['Contrib']
            if c < 0:
                # treat negative AO pop as a new variable (by changing its label)
                s += '-neg'
                c = abs(c)
            mulpop1[s] = c
        # loop over orbitals in second set
        for jmo in MOlist2:
            jdx = MOlist2.index(jmo)  # column number in returned matrices
            orb2 = df2[df2.MO == jmo]
            E2 = orb2.iloc[0]['Energy']
            dEmat[idx, jdx] = E2 - E1  # signed difference
            # construct dict of AO populations as above
            mulpop2 = {}
            for ao in orb2.index:
                s = '#{:d}-{:s}'.format(orb2.loc[ao]['Atom#'], orb2.loc[ao]['L'])
                c = orb2.loc[ao]['Contrib']
                if c < 0:
                    # negative AO pop
                    s += '-neg'
                    c = abs(c)
                mulpop2[s] = c
            # get JSdm distance between the two AO population vectors
            dist = JSdm(mulpop1, mulpop2)
            dPmat[idx, jdx] = dist[0]
    return dPmat, dEmat, MOlist1, MOlist2
##
def orbitalPopMatch(df1, df2, Eweight=0.1, diagBias=0.001):
    # Find which MOs correspond between two calculations. 
    # Note: Cannot distinguish degenerate orbitals! 
    # Compare two pandas DataFrames with Mulliken population data,
    #   as returned by routine 'read_AOpop_in_MOs()' in 'g09_subs.py'
    # Argument 'Eweight' is the weight to give to energy differences.
    # Argument 'diagBias' is the preference to give to the existing
    #   orbital numbering.
    # Return a dict of MO number correspondences. The dict only includes
    #   orbitals that appear to be mismatched. 
    #   Keys are MO labels in df2, values are MO labels in df1.
    # Do not mix alpha with beta orbitals.
    #
    momap = {}
    if (df1['Spin']  == 'alpha').any() & (df1['Spin'] == 'beta').any():
        # this is a UHF case; keep alpha and beta orbitals separate
        for sp in ['alpha', 'beta']:
            set1 = df1[df1['Spin'] == sp]
            set2 = df2[df2['Spin'] == sp]
            momap.update(orbitalPopMatch(set1, set2, Eweight=Eweight, diagBias=diagBias))
        return momap 
    # simple, single-spin case
    dPmat, dEmat, MOs1, MOs2 = AOpopdiffmats(df1, df2)
    # count the MOs in each orbital set
    norb1 = len(MOs1)
    norb2 = len(MOs2)
    nmo = min(norb1, norb2)
    # use unsigned energy differences
    diffmat = dPmat + Eweight * np.fabs(dEmat)
    # install the bias toward perserving the existing numbering
    # Note: Gaussian prints the populations only to 0.01 precision
    for i in range(norb1):
        imo = MOs1[i]
        try:
            j = MOs2.index(imo)
            diffmat[i, j] -= diagBias
        except:
            # probably an orbital missing from set 2
            pass
    # find closest distance for each row
    rowmin = diffmat.min(axis=1)
    # sort by increasing distance (i.e., best matches first)
    rowlist = rowmin.argsort()
    # truncate to smallest dimension
    rowlist = rowlist[0 : nmo]
    claimed = []  # list of orbitals in set2 as they are paired
    pairing = {}  # mapping between orbital indices (not MO numbers/labels)
    for iorb in rowlist:
        # loop over matrix rows, starting with those with best available matches
        for jorb in diffmat[iorb, :].argsort():
            # loop over columns, starting with best match
            if jorb in claimed:
                # this orbital already paired
                continue
            # this is a pairing
            claimed.append(jorb)
            pairing[iorb] = jorb
            break  # done with this first-set MO
    # convert into a mapping of MO numbers
    for i in pairing.keys():
        imo = MOs1[i]  # MO number from first set
        j = pairing[i]
        jmo = MOs2[j]  # MO number from second set
        if imo != jmo:
            # report only non-identity mappings
            momap[jmo] = imo  # key is the MO number in the 2nd set
    return momap 
##
def relabelOrbitals(df, momap):
    # re-label MOs based upon a mapping provided by 'orbitalPopMatch()'
    # Return value: the DataFrame with orbitals re-labeled
    #
    # loop once through the rows, changing MO labels
    for idx in df.index:
        imo = df.loc[idx, 'MO'] 
        if imo in momap.keys():
            # change this MO label
            df.loc[idx, 'MO'] = momap[imo]
    return df
##
def readXmol(fh, units='angstrom', handle=False):
    # Read an XYZ file (handle) and return (Geometry object, #atoms, comment)
    #   if 'handle' is True, expect a file handle instead of a file name
    # Return a three-tuple
    if not handle:
        fh = open(fh, 'r')
    try:
        natom = int( fh.readline() )
        comment = fh.readline().rstrip()
        df = pd.read_csv(fh, names=['El', 'X', 'Y', 'Z'], delim_whitespace=True)
        # check the number of atoms
        if natom != df.shape[0]:
            print('Expected {:d} atoms but found {:d}!'.format(natom, df.shape[0]))
            return None
    except:
        print('Unable to read XMol file')
        return None
    if not handle:
        fh.close()
    return Geometry(df, intype='DataFrame', units=units), natom, comment
##
def r0_ref( elem1, elem2 ):
    # return single-bonded distances between elements (Angstrom)
    # from b3lyp/6-31g* calculations on molecules specified (3/2/10)
    #   added covalent radii 3/21/2012
    if ( elem1 > elem2 ):
        # put the elements in ascending lexical order
        t = elem1
        elem1 = elem2
        elem2 = t
    if elem1 == 'C':
        if elem2 == 'C':
            # C-C bond from C2H6
            return 1.5306
        if elem2 == 'H':
            # C-H bond from CH4
            return 1.0936
        if elem2 == 'N':
            # C-N bond from CH3NH2
            return 1.4658
        if elem2 == 'O':
            # C-O bond from CH3OH
            return 1.4192
    if elem1 == 'H':
        if elem2 == 'H':
            # H-H bond from H2
            return 0.743
        if elem2 == 'N':
            # N-H bond from CH3NH2
            return 1.0189
        if elem2 == 'O':
            # O-H bond from CH3OH
            return 0.9691
    if elem1 == 'N':
        if elem2 == 'N':
            # N-N bond from N2H4
            #return 1.4374
            # N-N bond in ONNO is 1.9834; choose /1.25 here
            return 1.59
        if elem2 == 'O':
            # N-O bond from NH2OH
            return 1.4481
    if elem1 == 'O':
        if elem2 == 'O':
            # O-O bond from HOOH
            return 1.456
    # unknown case; estimate from rough covalent radii
    z1 = elz( elem1 )
    z2 = elz( elem2 )
    r1 = atomic_radius( z1 )
    r2 = atomic_radius( z2 )
    rsum = r1 + r2
    return rsum
##
def atomic_radius( iz ):
    # return covalent atomic radius given Z (3/21/2012) (Angstrom)
    # values are from Wikipedia (attributed to Slater 1964);
    #   I filled blanks with a guess (e.g., Z-1 value)
    r = [ 0, 0.25, 0.25, 1.45, 1.05, 0.85, 0.70, 0.65, 0.60, 0.50, 0.50,
             1.80, 1.50, 1.25, 1.10, 1.00, 1.00, 1.00, 1.00,
             2.20, 1.80, 1.60, 1.40, 1.35, 1.40, 1.40, 1.40, 1.35, 1.35,
             1.35, 1.35, 1.30, 1.25, 1.15, 1.15, 1.15, 1.15,
             2.35, 2.00, 1.80, 1.55, 1.45, 1.45, 1.35, 1.30, 1.35, 1.40,
             1.60, 1.55, 1.55, 1.45, 1.45, 1.40, 1.40, 1.40,
             2.60, 2.15,
             1.95, 1.85, 1.85, 1.85, 1.85, 1.85, 1.85, 1.80, 1.75,
             1.75, 1.75, 1.75, 1.75, 1.75, 1.75,
             1.55, 1.45, 1.35, 1.35, 1.30, 1.35, 1.35,
             1.35, 1.50, 1.90, 1.80, 1.60, 1.90, 1.90, 1.90,
             2.80, 2.15,
             1.95, 1.80, 1.80, 1.75, 1.75, 1.75, 1.75, 1.75, 1.75,
             1.75, 1.75, 1.75, 1.75, 1.75, 1.75,
             1.75, 1.75, 1.75, 1.75, 1.75, 1.75 ]
    if type(iz) == int:
        return r[ iz ]
    else:
        # convert symbol to nuclear charge
        z = elz( iz )
        return r[z]
##
def vdW_radius(iz):
    # return van der Waals radius given Z (11/20/20) (Angstrom)
    # values are from Wikipedia; only up to Ra (Z=88)
    # missing values filled by linear interpolation
    # for Z>88 just use 1.86 (value given for uranium)
    r = [0, 1.10, 1.40,
            1.82, 1.53, 1.92, 1.70, 1.55, 1.52, 1.47, 1.54,
            2.27, 1.73, 1.84, 2.10, 1.80, 1.80, 1.75, 1.88,
            2.75, 2.31, 0, 0, 0, 0, 0, 0, 0, 1.63, 1.40, 1.39,
                        1.87, 2.11, 1.85, 1.90, 1.85, 2.02,
            3.03, 2.49, 0, 0, 0, 0, 0, 0, 0, 1.63, 1.72, 1.58,
                        1.93, 2.17, 2.06, 2.06, 1.98, 2.16,
            3.43, 2.68] + [0] * 21 + [1.75, 1.66, 1.55,
                        1.96, 2.02, 2.07, 1.97, 2.02, 2.20,
            3.48, 2.83]
    if type(iz) != int:
        # convert symbol to Z
        iz = elz(iz)
    if iz > 88:
        vdw = 1.86  # a guess
    else:
        vdw = r[iz]
    if vdw == 0:
        # interpolate
        prev = iz-1
        post = iz+1
        while r[prev] == 0:
            prev -= 1
        while r[post] == 0:
            post += 1
        dz = post - prev
        delta = (r[post] - r[prev]) / dz
        vdw = r[prev] + (iz - prev) * delta
    # round to nearest 0.1 pm
    return round(vdw, 3)
def from_ltriangle(vec):
    # given a 1D numpy array that is a flattened lower-triangle,
    #   return the corresponding symmetric, square numpy array
    n = len(vec)
    dim = int(round(0.5 * (-1 + np.sqrt(1+8*n))))  # dimension of the square matrix
    idx = np.tril_indices(dim)
    mat = np.zeros((dim, dim))
    mat[idx] = vec
    # symmetrize
    mat = mat + np.triu(mat.T, 1)
    return mat
##
def inertia_tensor(masses, xyz):
    # moment-of-inertia tensor of point-masses
    #  m is a list of masses, xyz is a numpy array of Cartesian triples
    inertia = np.zeros((3,3))
    n = len(masses)
    if n != len(xyz):
        print('Argument inconsistency in inertia_tensor(): {:d} masses but {:d} positions'.format(n, len(xyz)))
        return None
    for i in range(n):
        m = masses[i]
        (x, y, z) = tuple(xyz[i])
        inertia[0][0] += m * (y*y + z*z)
        inertia[1][1] += m * (x*x + z*z)
        inertia[2][2] += m * (y*y + x*x)
        inertia[0][1] -= m * x * y
        inertia[0][2] -= m * x * z
        inertia[1][2] -= m * y * z
    inertia[1][0] = inertia[0][1]
    inertia[2][0] = inertia[0][2]
    inertia[2][1] = inertia[1][2]
    return inertia
##
def orthogonalize_rows(M, norm=0):
    # orthogonalize rows of numpy 2D array M
    #   normalize each row to length 'norm' if norm > 0
    for i in range(M.shape[0]-1):
        # project row 'i' from all later rows
        v = M[i] / np.linalg.norm(M[i])
        for j in range(i+1, M.shape[0]):
            p = np.dot(v, M[j])
            M[j] -= p * v
    if norm > 0:
        # normalize each row to specified length
        nrm = np.linalg.norm(M, axis=1)
        M = np.divide(M.T, nrm).T
    return M
##
def vib_harmonic(fc, mass, sayvetz=False, xyz=[]):
        # given numpy arrays of cartesian force constants and atomic masses,
        # return harmonic frequencies (cm^-1) and mode vectors
        # This function does not do Sayvetz projection unless requested
        #   the projection requires atomic coordinates (as flattened list)
        # Following Joe Ochterski's description 
        mwt = []   # mass-weighting vector
        for m in mass:
            mwt.extend( [1/np.sqrt(m)] * 3 )  #  same mass for (x,y,z) of an atom
        wmat = np.outer(mwt, mwt) # mass-weighting matrix
        # apply the mass-weighting matrix to the force constants
        wfc = np.multiply(fc, wmat)
        wfc /= AMU2AU  # mass-weighted force constant matrix in atomic units
        eigval, eigvec = np.linalg.eigh(wfc)
        esign = np.sign(eigval)   # save the sign of each eigenvalue
        eigval = np.fabs(eigval)      # all values are now positive
        eigval = np.sqrt(eigval)
        eigval = np.multiply(esign, eigval)      # imaginary frequencies are "negative"
        eigval *= AU2CM
        if not sayvetz:
            # no projections; return eigenvectors as rows
            return eigval, eigvec.T
        else:
            # Use Sayvetz conditions to project out external coordinates
            print('WARNING: SAYVETZ PROJECTION IS NOT WORKING!')
            natom = len(mass)
            dimen = 3 * natom
            if len(xyz) != dimen:
                print('Unable to do Sayvetz projects: {:d} masses but {:d} coordinates'.format(natom, len(xyz)))
                return eigval, eigvec.T
            # project out the translations and rotations
            xyz = xyz.reshape(-1, 3)  # each row of 'xyz' is now for one atom
            com = np.zeros(3)  # center of mass
            mtot = 0  # total mass
            for i in range(natom):
                mtot += mass[i]
                com += mass[i] * xyz[i]
            com /= mtot
            print('total mass = {:.3f}'.format(mtot))
            print('center of mass:', com)
            # translate COM to the origin
            for i in range(natom):
                xyz[i] -= com
            # get principal axes
            inert = inertia_tensor(mass, xyz)
            print('inertial tensor:\n', inert)
            inert_val, inert_vec = np.linalg.eigh(inert)
            print('inert_val:', inert_val)
            print('inert_vec:\n', inert_vec)
            # translation S vectors (called D1, D2, D3 by Ochterski)
            for i in range(natom):
                mat = np.eye(3) * np.sqrt(mass[i])
                try:
                    S = np.concatenate((S, mat), axis=1)
                except:
                    # probably haven't created S yet
                    S = mat.copy()
            # rotation S vectors (Ochterski's D4, D5, D6)
            if False:
                # following Ochterski
                print('*** Following Ochterski\'s white paper')
                for n in range(natom):
                    mat = np.zeros((3,3))
                    for i in [0, 1, 2]:
                        j = (i+1) % 3
                        k = (j+1) % 3
                        mat[i]  = np.dot(xyz[n], inert_vec[j]) * inert_vec[k]
                        mat[i] -= np.dot(xyz[n], inert_vec[k]) * inert_vec[j]
                        mat[i] /= np.sqrt(mass[n])
                    try:
                        Sr = np.concatenate((Sr, mat), axis=1)
                    except:
                        # probably haven't created Sr yet
                        Sr = mat.copy()
                S = np.concatenate((S, Sr), axis=0)
            else:
                # following G03 source code:  routine TRVect() in utilnz.F 
                print('*** Following G03 source code')
                for n in range(natom):
                    mat = np.zeros((3,3))
                    CP = np.dot(inert_vec, xyz[n])
                    mat[0,0] = CP[1]*inert_vec[2,0] - CP[2]*inert_vec[1,0]
                    mat[0,1] = CP[1]*inert_vec[2,1] - CP[2]*inert_vec[1,1]
                    mat[0,2] = CP[1]*inert_vec[2,2] - CP[2]*inert_vec[1,2]
                    mat[1,0] = CP[2]*inert_vec[0,0] - CP[0]*inert_vec[2,0]
                    mat[1,1] = CP[2]*inert_vec[0,1] - CP[0]*inert_vec[2,1]
                    mat[1,2] = CP[2]*inert_vec[0,2] - CP[0]*inert_vec[2,2]
                    mat[2,0] = CP[0]*inert_vec[1,0] - CP[1]*inert_vec[0,0]
                    mat[2,1] = CP[0]*inert_vec[1,1] - CP[1]*inert_vec[0,1]
                    mat[2,2] = CP[0]*inert_vec[1,2] - CP[1]*inert_vec[0,2]
                    mat *= np.sqrt(mass[n])
                    try:
                        Sr = np.concatenate((Sr, mat), axis=1)
                    except:
                        # probably haven't created Sr yet
                        Sr = mat.copy()
                S = np.concatenate((S, Sr), axis=0)
            print('combined S:\n', S)
            # remove any zero-vector rows
            nrm = np.linalg.norm(S, axis=1)
            print('nrm(S) =', nrm)
            for i in range(5, -1, -1):
                # loop over rows of S
                if nrm[i] < 1.0e-03:  # I picked this threshold arbitrarily! 
                    S = np.delete(S, (i), axis=0)
                    print('*** deleting row {:d} of S ***'.format(i))
                else:
                    S[i] /= nrm[i]  # normalize the row
            # orthogonalize rows and re-normalize (only needed when following Ochterski)
            S = orthogonalize_rows(S, norm=1)
            print('normalized S:\n', S)
            print('S dot S:\n', np.dot(S, S.T))
            # Start from a mass-weighted unit matrix and project out the rows of S
            #   also project out previous rows of growing D matrix
            D = np.eye(dimen, dimen)  # initialize D to the identity matrix
            for n in range(natom):
                for i in range(3*n, 3*n+3):
                    # apply mass-weighting
                    D[i] *= np.sqrt(mass[n])
            print('D before any projection:\n', D)
            for i in range(S.shape[0]):
                # project out each row of S from D
                p = np.dot(S[i], D.T)
                D -= np.outer(p, S[i])
                nrm = np.linalg.norm(D, axis=1)
            print('D after projecting out S:\n', D)
            # now orthogonalize the remaining basis vectors
            D = orthogonalize_rows(D, norm=0)  # do not renormalize after orthogonalization
            print('D after orthogonalization:\n', D)
            nrm = np.linalg.norm(D, axis=1)
            print('norm of D rows:\n', nrm)
            # Delete the zero rows
            zrow = np.where(nrm < 0.001)[0]  # I picked this threshold arbitrarily! 
            zrow = tuple(zrow)  # convert to tuple
            print('zrow =', zrow)
            if len(zrow) != S.shape[0]:
                # something is wrong
                print('*** Error: There are {:d} external coordinates but {:d} have been eliminated ***'.format(S.shape[0], len(zrow)))
                print('...continuing anyway!...')
            D = np.delete(D, zrow, axis=0)
            # re-normalize the rows of D
            nrm = np.linalg.norm(D, axis=1)
            print('shape of D =', D.shape)
            print('norm of D rows:\n', nrm)
            D = np.divide(D.T, nrm).T
            print('D after normalization:\n', D)
            # adjoin S to D
            D = np.concatenate((D, S), axis=0)
            print('new shape of D =', D.shape)
            nrm = np.linalg.norm(D, axis=1)
            print('norm of D rows:\n', nrm)
            # change basis for force constants
            fcint = np.dot(D, np.dot(fc, D.T))
            print('internal-coordinate force constants:\n', fcint)
            print('Frequencies before projection:\n', eigval)
            igval, igvec = np.linalg.eigh(fcint)
            esign = np.sign(igval)   # save the sign of each eigenvalue
            igval = np.fabs(igval)      # all values are now positive
            igval = np.sqrt(igval)
            igval = np.multiply(esign, igval)      # imaginary frequencies are "negative"
            igval *= AU2CM
            print('Frequencies after projection:\n', igval)
            print('Ratios:\n', np.divide(igval, eigval))
            return eigval, eigvec.T
##
def filename_root(filename):
    # remove any file suffix
    m = re.match(r'(.+)\.\w+$', filename)
    if m:
        return m.group(1)
    else:
        # no suffix
        return filename
##
def rotation_mat_angle(v, a, unit='radian'):
    # return a matrix that will rotation by angle a around axis v
    # method is from StackExchange.com
    if unit == 'degree':
        # convert to radians for trig functions
        a = np.deg2rad(a)
    # normalize vector
    u = v / np.linalg.norm(v)
    [x, y, z] = u.tolist()
    s = np.sin(a)
    s2 = np.sin(a/2)
    W = np.array([ [0.,-z,y], [z,0.,-x], [-y,x,0.] ])
    R = np.identity(3) + s*W + 2*s2*s2*np.dot(W,W)
    return R
##
def rotation_mat_align(A, B, scale=False):
    # given two numpy vectors (in R3), return the matrix that rotates A into B
    # method is from StackExchange.com
    # if scale is True, then also scale the magnitude to match
    if (len(A) != 3) or (len(B) != 3):
        print('**** must be vectors in R3! ****')
        return np.zeros((3,3))
    # normalize
    a = A / np.linalg.norm(A)
    b = B / np.linalg.norm(B)
    c = np.dot(a, b)  # angle cosine
    if np.isclose(c, 1.):
        # no rotation needed
        R = np.identity(3)
    elif np.isclose(c, -1.):
        # antiparallel; rotate by pi about a perpendicular axis
        p = np.cross(a, 1. - a)
        R = rotation_mat_angle(p, PI)
    else:
        # general case
        v = np.cross(a, b)
        [v1, v2, v3] = v.tolist()
        vx = np.array([ [0.,-v3,v2], [v3,0.,-v1], [-v2,v1,0] ])
        R = np.identity(3) + vx + np.dot(vx,vx)/(1+c)
    if scale:
        s = np.linalg.norm(B) / np.linalg.norm(A)  # scaling factor
        R *= s
    return R
##
def normalize(v, length=1.0):
    # given a vector, return it scaled to desired length
    try:
        n = np.linalg.norm(v)
        if n == 0:
            return np.zeros_like(v)
        else:
            return np.array(v) * length / n
    except:
        print('*** failure computing length in normalize()')
        print('typeof(v) = ', type(v))
        print('v = ', v)
        sys.exit(1)
##
def to_radian(angle, reverse=False):
    # given an angle in degrees, convert it to radians (or the reverse)
    if reverse:
        # convert from radians to degrees
        return angle * 180. / PI
    else:
        # convert from degrees to radians
        return angle * PI / 180.
##
def angular_momentum(m, r, v):
    # given atomic masses, positions, and velocities,
    #   return the total angular momentum
    rxv = np.cross(r,v)
    L = (rxv.T * m).T.sum(axis=0)
    return L
##
def angle_canon(a, unit='radian'):
    # given an angle (or numpy array of them), return the equivalent
    #   value in the interval (-pi, pi]
    if unit == 'degree':
        c = (-a + 180.) % 360. - 180.
    else:
        c = (-a + PI) % (2 * PI) - PI
    return -c
##
def in_bounds(x, target, tolerance):
    # is 'x' in the range 'target' +- 'tolerance' ?
    tolerance = np.abs(tolerance)
    return ( (x < target+tolerance) and (x > target-tolerance) )
##
def smoothing(x, y, x2, style='gau', width=-1, normalize=True):
    # return smoothed y values for (x,y) data series (numpy arrays)
	#   ouput is over the smoothed range defined by x2 (a numpy array)
    # no sorting necessary
    # styles: 'exp' for exponential; 'gau' for gaussian
    # width parameter (sigma) defaults to 1% of x-range
    if len(x) != len(y):
        # bad input data
        return None
    xlo = min(x)
    xhi = max(x)
    if (width <= 0):
        width = (xhi - xlo) * 0.01
    y2 = np.zeros_like(x2)
    for i in range(len(y)):
        dx = x2 - x[i]
        if style == 'gau':
            dx = (dx/width)**2
            t = np.exp(-dx)
        if style == 'exp':
            dx = abs(dx/width)
            t = np.exp(-dx)
        if normalize:
            t = t / t.sum()
        y2 = y2 + t * y[i]
    return y2
##
def joinGeometries(Glist):
    # Given a list of Geometry objects, return a single Geometry
    #   that includes all their atoms
    # if charges are specified, sum them
    atomlist = []
    q = 0
    for G in Glist:
        atomlist += G.atom
        try:
            q += G.charge
        except:
            q = None
    Gtot = Geometry(atomlist, intype='atlist')
    Gtot.charge = q
    return Gtot
##
def same_connectivity(Struct1, Struct2, tol=1.3):
    # compare connectivity tables 
    # return True if same, else False
    conn1 = Struct1.connection_table(tol)
    conn2 = Struct2.connection_table(tol)
    return np.array_equal(conn1, conn2)
##
def min_RMSD(Geom, refGeom, use_masses=False, inplace=False):
    # align Geom to refGeom and return the final RMSD
    G = RMSD_align(Geom, refGeom, use_masses=use_masses)
    if inplace:
        Geom.copyxyz(G)
    return RMSD(G, refGeom)
##
def RMSD_align(Geom, refGeom, use_masses=False):
    # translate and rotate Geometry object 'Geom' to minimize RMSD with 'refGeom'
    # return a new Geometry object
    G = Geom.copy()  # avoid damaging the input geometries
    refG = refGeom.copy()
    if not use_masses:
        # Use unit mass for every atom
        mvec = np.ones(G.natom())
        G.set_masses(mvec)
        refG.set_masses(mvec)
    transl = refG.COM()
    #print('::: initial RMSD = ', RMSD(G, refG), end='')
    G.center(use_masses=use_masses)
    refG.center(use_masses=use_masses)
    U = Kabsch(G, refG, use_masses=use_masses)
    G.rotate(U)
    #print('   after align = ', RMSD(G, refG))
    G.translate(transl)
    return G
##
'''def RMSD(Geom1, Geom2):
    # return the RMSD between two Geometry objects (no weights)
    v1 = Geom1.toVector()
    v2 = Geom2.toVector()
    if len(v1) != len(v2):
        print_err('', 'Inconsistent atom counts: {:d} for Geom1 and {:d} for Geom2'.format(Geom1.natom, Geom2.natom()))
    natom = len(v1) // 3
    rmsd = distance(v1, v2) / np.sqrt(natom)
    return rmsd
'''##
def RMSD(Geom1, Geom2):
    # return the RMSD between two Geometry objects (no weights)
    v1 = Geom1.toVector().reshape((-1, 3))
    v2 = Geom2.toVector().reshape((-1, 3))
    if v1.shape != v2.shape:
        print_err('', 'Inconsistent atom counts: {:d} for Geom1 and {:d} for Geom2'.format(Geom1.natom, Geom2.natom()))
    d = np.array([distance(v1[i], v2[i]) for i in range(v1.shape[0])])
    dsq = d**2
    rmsd = np.sqrt(dsq.mean())
    return rmsd
##
def Kabsch(Geom1, Geom2, use_masses=False):
    # return the rotation matrix that mimizes the unweighted RMSD (Wikipedia: "Kabsch algorithm")
    #   (tranform G1 toward G2)
    G1 = Geom1.copy()   # avoid damaging the input Geometry objects
    G2 = Geom2.copy()
    natom = G1.natom()
    if natom != G2.natom():
        print_err('', 'Inconsistent atom counts: {:d} for Geom1 and {:d} for Geom2'.format(natom, G2.natom()))
    # translate barycenters to origin
    if not use_masses:
        # Use unit mass for every atom
        mvec = np.ones(natom)
        G1.set_masses(mvec)
        G2.set_masses(mvec)
    G1.center(use_masses=use_masses)
    G2.center(use_masses=use_masses)
    elem, P = G2.separateXYZ()  # the reference
    elem, Q = G1.separateXYZ()
    A = np.dot(P.T, Q)
    V, s, W = np.linalg.svd(A)
    d = np.sign(np.linalg.det(np.dot(V,W)))
    D = np.diag([1., 1., d])
    U = np.dot(V, np.dot(D,W))
    return U
##
def average_structure(Struct1, Struct2, weight1=0.5, weight2=0.5):
    # given two compatible structures, return a similar structure
    #   with coordinates that are the weighted average of the
    #   input structures
    if (Struct1.coordtype != Struct2.coordtype) or (Struct1.natom() != Struct2.natom()):
        # structures are not compatible
        return None
    v1 = Struct1.toVector()
    v2 = Struct2.toVector()
    try:
        v3 = (weight1 * v1 + weight2 * v2) / (weight1 + weight2)
    except:
        # probably weights sum to zero
        return np.nan
    Result = Struct1.copy()
    unitS = Struct1.unitX()
    Result.fromVector(v3, unitS)
    return Result
##
def FGHcheck(x, y, count, acc=1.0e-6, abort=True):
    # for Fourier Grid Hamiltonian calculations
    # return True if arrays are OK, else False
    npt = len(x)
    if len(y) != npt:
        if abort:
            print_err('', 'x and y have different lengths')
        else:
            return False
    if (count == 'odd'):
        if (npt % 2 == 0):
            if abort:
                print_err('', 'number of points is even but should be odd')
            else:
                return False
    elif (count == 'even'):
        if (npt % 2 == 1):
            if abort:
                print_err('', 'number of points is odd but should be even')
            else:
                return False
    else:
        print_err('', "number of points must be 'even' or 'odd', not '{:s}' ".format(str(count)))
    # check for uniform intervals
    dx = np.ediff1d(x)
    ddx = np.ediff1d(dx) / x.max()
    if not np.allclose(ddx, np.zeros_like(ddx), atol=acc):
        print_err('', 'distance grid must be uniform to {} relative'.format(acc))
    return True
##
def FGHodd(x, V, mass):
    # atomic units!
    # given vectors of distance and energy, and mass,
    #   return eigenvalues and eigenvectors, sorted by increasing energy
    # ref: Marston & Balint-Kurti (1989)
    # eigenvectors are not renormalized using delta-x, so may be very small
    #   (if they are renormalized that way, they can be very big)
    if not FGHcheck(x, V, 'odd'):
        return None
    dx = x[1] - x[0]
    N = len(x)
    n = (N - 1) // 2
    L = N * dx
    # build the Hamiltonian
    H = np.diag(V)
    T = np.zeros_like(H)
    c = 2 * PI * PI / (mass * L * L)
    pn = 2 * PI / N
    # evaluate cosines in advance to avoid duplication
    cfunc = np.zeros(N)
    for dij in range(N):
        s = 0
        for l in range(1, n+1):
            s += np.cos(pn * l * dij) * l * l
        cfunc[dij] = s
    for i in range(N):
        for j in range(i+1):
            dij = i - j
            T[i,j] = cfunc[dij]
    c = c * 2 / N
    H = H + T * c
    # only need lower triangle of H
    vals, vecs = np.linalg.eigh(H)
    # sort by increasing energy
    idx = vals.argsort()
    vals = vals[idx]
    vecs = vecs[:, idx]
    return vals, vecs
##
def FGH(x, V, mass, edges=True, silent=False, xmin=None, xmax=None, npt=None,
        padwidth=0, interp='cubic', Rvec=False):
    # wrapper for FGHodd
    # input units should be atomic units (X, V, mass)
    # interpolate if needed to get odd number of equally spaced points
    # If edges == True, then return a third array that indicates the
    #   edge (periodic) artifact for each eigenvector
    # 'padwidth' extends the range by that factor on both left and right,
    #   using the terminal values to extrapolate (i.e., flat-top).  This
    #   can prevent the cyclic copies of the potential from interacting. 
    # If xmin or xmax is specified, use it to define a narrower interval
    # make sure the data are odd-numbered and equally spaced
    # 'interp' is method of interpolation: see make_potential_regular()
    # If 'Rvec', also return the array of bond distances
    xnew, Vnew = make_potential_regular(x, V, 'odd', silent=silent, xmin=xmin,
                                        xmax=xmax, npt=npt, interp=interp)
    # create the padded interval
    xpad, Vpad = pad_potential(xnew, Vnew, padwidth)
    vals, vecs = FGHodd(xpad, Vpad, mass)
    if edges:
        # compute an arbitrary measure of edge pathology
        #  (|phi_left| + |phi_right|) / |phi|_max
        fmax = np.abs(vecs).max(axis=0)
        fend = np.abs(vecs[0,:]) + np.abs(vecs[-1,:])
        ratio = fend / fmax
        if Rvec:
            return vals, vecs, ratio, xpad, Vpad, xpad
        else:
            return vals, vecs, ratio, xpad, Vpad
    else:
        if Rvec:
            return vals, vecs, xpad, Vpad, xpad
        else:
            return vals, vecs, xpad, Vpad
##
def compare_interpolation_with_linear(x, y):
    # look between the points; return differences from linear interpolation
    # methods: 'akima', 'cubic', 'quadratic'
    x = np.array(x)
    y = np.array(y)
    flin = interpolate.interp1d(x, y, kind='linear', bounds_error=True)
    fquad = interpolate.interp1d(x, y, kind='quadratic', bounds_error=True)
    fcub = interpolate.interp1d(x, y, kind='cubic', bounds_error=True)
    fakima = interpolate.Akima1DInterpolator(x, y)
    xmid = (x[:-1] + x[1:]) / 2
    ylin = flin(xmid)  # linear reference points
    dquad = fquad(xmid) - ylin
    dcub = fcub(xmid) - ylin
    dakima = fakima(xmid) - ylin
    return {'quadratic': dquad, 'cubic': dcub, 'akima': dakima}
##
def make_potential_regular(x, V, count='odd', silent=False, xmin=None, xmax=None,
                           npt=None, interp='cubic'):
    # helper function for FGH()
    # interpolate given potential to 'npt' regular grid points
    # if 'V' is callable, use it instead of interpolation
    # 'interp' is method of interpolation: 
    #          'cubic', 'quadratic', 'linear', 'akima'
    if callable(V):
        # do not interpolate; use the provided function V(x)
        finterp = V
    else:
        finterp = spline_fit(x, V, kind=interp)
        '''
        if interp == 'akima':
            finterp = interpolate.Akima1DInterpolator(x, V)
        else:
            finterp = interpolate.interp1d(x, V, kind=interp, bounds_error=True)
            '''
    if xmin is None:
        xmin = np.min(x)
    if xmax is None:
        xmax = np.max(x)
    if xmin < np.min(x):
        if not silent:
            print_err('', 'Requested short distance is below data', halt=False)
    if xmax > np.max(x):
        if not silent:
            print_err('', 'Requested long distance is above data', halt=False)
    # Space the points evenly
    if npt is None:
        npt = len(x)
    npt = int(npt)
    if (npt % 2 == 0) and count == 'odd':
        # add a point to make the count odd
        npt += 1
    if (npt % 2 == 1) and count == 'even':
        # add a point to make the count even
        npt += 1
    xnew = np.linspace(xmin, xmax, npt)
    Vnew = finterp(xnew)
    return xnew, Vnew
##    
def pad_potential(x, y, padwidth):
    # for use by FGH() to "extrapolate" a potential using flat tops 
    # return the modified potential
    # 'padwidth' is the factor by which to extend the input interval
    #   on both ends.
    #   If padwidth < 0, then pad with max(yleft, yright) on both ends
    # input data should be evenly spaced
    if padwidth == 0:
        # do nothing
        return x, y
    if padwidth > 0:
        # different pad on left and on right
        hileft = [y[0]]    # pad value on the left
        hiright = [y[-1]]  # pad value on the right
    else:
        # use the larger pad value on both ends
        hileft = hiright = [max(y[0], y[-1])]
        padwidth = abs(padwidth)
    wid = len(x) - 1  # number of intervals input
    nadd = int(wid * padwidth)  # number of points to add at each end
    dx = x[1] - x[0]
    xleft = x[0] - dx * np.flip(np.arange(1, nadd+1))
    xright = x[-1] + dx * np.arange(1, nadd+1)
    yleft = hileft * nadd
    yright = hiright * nadd
    xnew = np.concatenate((xleft, x, xright))
    ynew = np.concatenate((yleft, y, yright))
    return xnew, ynew
##
def parabfit(X, Y):
    # fit three points (exactly) to a parabola
    # Return the values of the fitting constants a,b,c
    #    y = a*x*x + b*x + c
    if (len(X) != 3) or (len(Y) != 3):
        print_err('', 'need exactly 3 points')
    x = np.array(X)
    y = np.array(Y)
    # check for problems
    if (x[0] == x[1]) or (x[0] == x[2]) or (x[1] == x[2]):
        print_err('', 'vertical points')
    m01 = (y[1] - y[0]) / (x[1] - x[0])
    m12 = (y[2] - y[1]) / (x[2] - x[1])
    a = (m12 - m01) / (x[2] - x[0])
    b = m01 - a * (x[1] + x[0])
    c = y[1] - a*x[1]*x[1] - b*x[1]
    return a, b, c
##
def parabmin(X, Y, params=False):
    # OBSOLETED by polymin() 
    # find the minimum by fitting the lowest points to a parabola
    # If params==True, return the values of the fitting constants a,b,c
    #    y = a*x*x + b*x + c
    if len(X) != len(Y):
        print_err('', 'X and Y are different lengths')
    x = np.array(X)
    y = np.array(Y)
    idx = y.argmin()
    if (idx == 0) or (idx == len(Y)-1):
        # the lowest point is an endpoint; error condition
        print_err('', 'lowest point is an endpoint')
    if False:
        (x0, x1, x2) = list(x[idx-1:idx+2])
        (y0, y1, y2) = list(y[idx-1:idx+2])
        # check for problems
        if (x0 == x1) or (x0 == x2) or (x1 == x2):
            print_err('', 'vertical points')
        m01 = (y1 - y0) / (x1 - x0)
        m12 = (y2 - y1) / (x2 - x1)
        a = (m12 - m01) / (x2 - x0)
        b = m01 - a * (x1 + x0)
        c = y1 - a*x1*x1 - b*x1
    a, b, c = parabfit(x[idx-1:idx+2], y[idx-1:idx+2])
    try:
        xmin = -b / (2*a)
        ymin = c - b*b/(4*a)
    except:
        # probably linear
        xmin = np.nan
        ymin = np.nan
    if params:
        return xmin, ymin, a,b,c
    else:
        return xmin, ymin
##
def polymin(X, Y, order=4, real=True):
    # Given (energy) points (e.g., from lowest_points(x,y,5)), 
    #   fit to an 'order'-order polynomial, then
    # find the minimum point(s) of the fitted polynomial. 
    # Return (xmin, ymin) at the minimum(s).
    #   Limit to real-valued xmin if 'real'==True.
    nppoly = np.polynomial.polynomial
    fit_poly = nppoly.Polynomial.fit(X, Y, order)
    deriv = fit_poly.deriv()
    deriv2 = fit_poly.deriv(2)
    roots = deriv.roots()  # stationary points
    if real:
        ireal = np.where(np.isreal(roots))
        xmin = roots[ireal].real  # convert to non-complex
    else:
        xmin = roots
    # 'xmin' is now all real-valued stationary points
    inside = np.where((xmin >= X.min()) & (xmin <= X.max()))
    xmin = xmin[inside]
    # 'xmin' is now within the range of the input data
    curv = deriv2.__call__(xmin)
    ipos = np.where(curv > 0)
    xmin = xmin[ipos]
    # 'xmin' is not all real-valued minima
    ymin = fit_poly.__call__(xmin)
    return xmin, ymin
##
def lowest_points(x, V, n):
    # Given points (x, V), return the 'n' points of lowest V.
    # 'V' may be a function or a list/array of energy values
    n = int(n)
    if not callable(V) and (len(x) != len(V)):
        print_err('', 'Unequal numbers of x and V values')
    if n > len(x):
        print_err('', '{:d} points requested but only {:d} available'.format(n, len(x)))
    # find the points of lowest energy
    X = np.array(x)
    if callable(V):
        Y = np.array([V(r) for r in X])
    else:
        Y = np.array(V)
    idx = np.argsort(Y)[:n]
    xp = X[idx].copy()
    Vp = Y[idx].copy()
    # sort them by increasing 'x'
    idx = np.argsort(xp)
    return xp[idx], Vp[idx]
##
def lowest_points_old(x, V, n):
    # Given points (x, V), return the 'n' points of lowest V.
    # 'V' may be a function or a list/array of energy values
    n = int(n)
    if not callable(V) and (len(x) != len(V)):
        print_err('', 'Unequal numbers of x and V values')
    if n > len(x):
        print_err('', '{:d} points requested but only {:d} available'.format(n, len(x)))
    # find the points of lowest energy
    if callable(V):
        y = np.array([V(r) for r in x])
        idx = np.argsort(y)[:n]
    else:
        idx = np.argsort(V)[:n]
    xp = x[idx].copy()
    if callable(V):
        Vp = y[idx].copy()
        #Vp = np.array([V(r) for r in xp])
    else:
        Vp = np.array(V)[idx].copy()
    # sort them by increasing 'x'
    print('>>>xp =', xp)
    print('>>>Vp =', Vp)
    idx = np.argsort(xp)
    return xp[idx], Vp[idx]
##
def fit_polynomial_coefficients(x, y, N):
    # Fit x, y to a polynomial of degree N
    # Return the fitted constants (a0, ..., aN)
    nppoly = np.polynomial.polynomial
    fit_poly = nppoly.Polynomial.fit(x, y, N)
    return fit_poly.convert().coef
##
def diatomic_rotational_constants(R, V, mass, omega=0, vmax=1, Nmax=5,
        psitol=1.e-6, silent=False, nfgh=51, padwidth=0, 
        interp='cubic', ref='phys'):
    '''
    Given a diatomic potential, compute rovibrational levels and determine
        the pure rotational constants for each value of v (vibrational q.n.)
    Return a DataFrame of constants
    Input in atomic units
    Output in cm-1, angstrom
    '''
    EvJ, Emin, Re = rovib_levels(R, V, mass, omega=omega, vmax=vmax, Nmax=Nmax, 
            psitol=psitol, silent=silent, nfgh=nfgh, padwidth=padwidth, 
            interp=interp, ref=ref)
    cols = ['T', 'B', '-D', 'H', 'L']
    if Nmax > 4:
        cols = cols + [f'X{i}' for i in range(5, Nmax+1)]
    else:
        cols = cols[:Nmax+1]
    Nvals = np.arange(Nmax+1)
    Jvals = Nvals + omega
    JJvals = Jvals * (Jvals + 1) - omega*omega
    constants = np.zeros((vmax+1, Nmax+1))
    for v in range(vmax+1):
        constants[v,:] = np.polynomial.polynomial.polyfit(JJvals, EvJ[v,:], Nmax)
    df = pd.DataFrame(columns=cols, data=constants)
    return df
##
def diatomic_spectr(R, V, mass, omega=0, psitol=1.e-6, silent=False, nfgh=51, padwidth=0, 
                    interp='cubic', ref='phys'):
    '''
    Given a diatomic potential, determine some spectroscopic constants using simplified fitting
    Input units are a.u.
    Output units are cm**-1, angstrom
    Return a dict of constants
    'E0' is variational and is inconsistent with (we, wexe)
    'w0' is returned but is redundant with (we, wexe)
    'psitol' is tolerance for FGH periodicity artifacts
    'padwidth' is how much to extend the left and right, using
        the endpoint V-value of the real data. This is to keep 
        the cyclic copies from interacting. padwidth=1 makes
        the range 3x wider. 
    'V' may be a callable function instead of a list/array
    we and wexe are determined from v=0,1,2 only
    '''
    if omega != 0:
        print_err('', 'Omega not zero--results may be meaningless', halt=False)    
    if not silent:
        print('Wavefunction tail convergence criterion = {:.1e}'.format(psitol))
    constants = {}
     
    EvJ, Emin, Re = rovib_levels(R, V, mass, omega, vmax=2, Nmax=2, 
            ref=ref, psitol=psitol, nfgh=nfgh, padwidth=padwidth, 
            interp=interp, silent=silent)
    '''
    fitorder = 4
    (xlow, ylow) = lowest_points(R, V, fitorder+1)
    if callable(V):
        # find the minimum by continuous means
        res = optimize.minimize_scalar(V, method='bounded', bounds=[xlow[0], xlow[-1]])
        Re = res.x
        Emin = res.fun
    else:
        # equilibrium distance from quartic fit to lowest five points
        (xmin, ymin) = polymin(xlow, ylow, order=fitorder)
        if len(ymin) > 1:
            print_err('', 'potential has more than one minimum')
        Re = xmin[0]
        Emin = ymin[0]
    '''
    constants['Re'] = Re * BOHR  # convert to Angstrom
    constants['Emin'] = Emin
    '''
    # make energies relative to minimum
    if callable(V):
        Vrel = lambda r : V(r) - Emin
    else:
        Vrel = V - Emin
    # compute low-lying levels E(v, J)
    EvJ = np.zeros((3, 3))
    for Nrot in range(3):
        J = Nrot + omega
        if callable(Vrel):
            centrifug = lambda r : Vrel(r) + (J*(J+1)-omega*omega)/(2*mass*r*r)
        else:
            centrifug = Vrel + (J*(J+1)-omega*omega)/(2*mass*R*R)
        cvals, cvecs, ratio, xwfn, ywfn = FGH(R, centrifug, mass, silent=silent,
                                  npt=nfgh, padwidth=padwidth, interp=interp)
        if np.any(ratio[:3] > psitol):
            # wavefunction is not good enough for lowest 3 states
            print(ratio[:3])
            print_err('', 'sloppy wfn for J = {:d}'.format(J))
        EvJ[:,Nrot] = cvals[:3]
    # convert energy levels to cm**-1
    EvJ *= AU2CM
    '''
    # vibrational levels
    constants['w0'] = EvJ[1,0] - EvJ[0,0]
    constants['E0'] = EvJ[0,0]
    a, b, c = parabfit([0.5, 1.5, 2.5], EvJ[:,0])
    constants['we'] = b
    constants['wexe'] = -a
    # rotational constants
    B = []
    D = []
    jvals = np.arange(3) + omega  # J = N + Ω
    jj = jvals * (jvals + 1) - omega*omega
    for v in range(3):
        a, b, c = parabfit(jj, EvJ[v,:])
        B.append(b)
        D.append(-a)
    constants['B0'] = B[0]
    constants['D0'] = D[0]
    a, b, c = parabfit([0.5, 1.5, 2.5], B)
    constants['alpha'] = -b
    constants['Be'] = c
    a, b, c = parabfit([0.5, 1.5, 2.5], D)
    constants['De'] = c
    return constants
##
def rovib_levels(R, V, mass, omega=0, vmax=2, Nmax=2, ref='phys',
                 psitol=1.e-6, silent=False, nfgh=51, padwidth=0, interp='cubic',
                 vectors=False, persist=False):
    '''
    Given a potential, return some diatomic rovibrational energies
    Input units are a.u.
    Output units are cm**-1 relative to the energy minimum 'ref'
    Allowed 'ref' values:
        'phys' = minimum in V_eff with J=omega
        'pot'  = minimum in V, without centrifugal term
        'J0'   = eigenvalue with J=0 (may be unphysical)
        'norot' = lowest eigenvalue without centrifugal term
    Return values:
        array of energies E(v, N)/cm-1, where J = N + omega
        Emin/hartree
        Rmin/bohr
    psitol' is tolerance for FGH periodicity artifacts
    'padwidth' is how much to extend the left and right, using
       the endpoint V-value of the real data. This is to keep 
       the cyclic copies from interacting. padwidth=1
       makes the range 3x wider. 
    'V' may be a callable function instead of a list/array
    If 'vectors' is True, also return the eigenvectors and the bond distances
    If 'persist' is True, instead of failing the wfn tail test, install
       NaN as the eigenvalue and keep going
    '''
    if not silent:
        print('Wavefunction tail convergence criterion = {:.1e}'.format(psitol))
    # compute low-lying levels E(v, J)
    nv = vmax + 1
    nN = Nmax + 1
    fitorder = 4
    (xlow, ylow) = lowest_points(R, V, fitorder+1)
    if callable(V):
        # find the (rotationless) minimum by continuous means
        res = optimize.minimize_scalar(V, bracket=[xlow[0], xlow[-1]])
        Epot = res.fun
        Rpot = res.x
    else:
        # quartic fit to lowest five points
        (xmin, ymin) = polymin(xlow, ylow, order=fitorder)
        if len(ymin) > 1:
            print_err('', 'potential has more than one minimum')
        Epot = ymin[0]
        Rpot = xmin[0]
    EvJ = np.zeros((nv, nN))
    eigvecs = np.zeros((nv, nN)).tolist()
    for Nrot in range(nN):
        J = Nrot + omega
        if callable(V):
            centrifug = lambda r : V(r) + (J*(J+1)-omega*omega)/(2*mass*r*r)
            if Nrot == 0:
                # find the physical minimum (J = omega)
                res = optimize.minimize_scalar(centrifug, bracket=[xlow[0], xlow[-1]])
                Ephys = res.fun
                Rphys = res.x
        else:
            centrifug = V + (J*(J+1)-omega*omega)/(2*mass*R*R)
            if Nrot == 0:
                # find the physical minimum
                (xlo, ylo) = lowest_points(R, centrifug, fitorder+1)
                (xmin, ymin) = polymin(xlo, ylo, order=fitorder)
                if len(ymin) > 1:
                    print_err('', 'potential has more than one minimum')
                Ephys = ymin[0]
                Rphys = xmin[0]
        cvals, cvecs, ratio, xwfn, ywfn, rvec = FGH(R, centrifug, mass, silent=silent,
                                  npt=nfgh, padwidth=padwidth, interp=interp,
                                  Rvec=True)
        if np.any(ratio[:nv] > psitol):
            # wavefunction is not good enough 
            if not persist:
                print('tail ratios:', ratio[:nv])
                print_err('', 'sloppy wfn for Nrot = {:d}'.format(Nrot))
            else:
                # install NaN's, keep going
                ibad = np.argwhere(ratio > psitol)
                cvals[ibad] = np.nan
        EvJ[:,Nrot] = cvals[:nv]
        for i in range(nv):
            eigvecs[i][Nrot] = cvecs[:, i]
    # convert energy levels to cm**-1
    if ref == 'phys':
        Emin = Ephys
        Rmin = Rphys
    if ref == 'pot':
        Emin = Epot
        Rmin = Rpot
    if ref == 'J0':
        # find energy of hypothetical (v=0, J=0) level 
        if callable(V):
            centrifug = lambda r : V(r) - omega*omega/(2*mass*r*r)
        else:
            centrifug = V - omega*omega/(2*mass*R*R)
        cvals, cvecs, ratio, xwfn, ywfn = FGH(R, centrifug, mass, silent=silent,
                                  npt=nfgh, padwidth=padwidth, interp=interp)
        Emin = cvals[0]
        Rmin = Rpot
    if ref == 'norot':
        # find v=0 level without the centrifugal term
        cvals, cvecs, ratio, xwfn, ywfn = FGH(R, V, mass, silent=silent,
                                  npt=nfgh, padwidth=padwidth, interp=interp)
        Emin = cvals[0]
        Rmin = Rpot

    EvJ = (EvJ - Emin) * AU2CM
    if vectors:
        return EvJ, Emin, Rmin, rvec, eigvecs
    else:
        return EvJ, Emin, Rmin
##
def turnover_limits_potential(R, V, Rmin, interp='cubic', tol=0.001):
    # given a diatomic potential V(R), and approx minimum Rmin,
    # check for large-R (and small-R) death plunge
    # return the range, not to exceed the range of R,
    #    over which the potential is single-minimum
    if callable(V):
        fn = V
    else:
        # use a spline to interpolate discrete data
        fn = spline_fit(R, V, kind=interp)
    fminz = lambda x : -fn(x)
    xbot = np.min(R)
    xtop = np.max(R)
    # check at large R
    res = optimize.minimize_scalar(fminz, bounds=(Rmin, xtop), method='bounded')
    if res.success:
        if xtop - res.x > tol:
            # new high end
            xtop = res.x
    # check at small R
    res = optimize.minimize_scalar(fminz, bounds=(xbot, Rmin), method='bounded')
    if res.success:
        if res.x - xbot > tol:
            # new low end
            xbot = res.x
    return xbot, xtop
##
def flat_truncate_function(xlo, xhi, f):
    # given limits and a function, return a function that equals f(x)
    # between the limits but is flat beyond them
    def ftrunc(x):
        if x < xlo:
            y = f(xlo)
        elif x > xhi:
            y = f(xhi)
        else:
            y = f(x)
        return y
    return np.vectorize(ftrunc)
##
def classical_turning_points(R, V, mass, omega=0, vmax=1, npt=51,
                             psitol=1.e-6, padwidth=0, interp='cubic'):
    # given a potential V(R) and a mass, return the classical
    # turning points for the vibrational levels up to v=vmax
    # also return the location of the minimum (R_e)
    vlev, emin, rmin = rovib_levels(R, V, mass, vmax=vmax, Nmax=0, nfgh=npt, 
                              psitol=psitol, interp=interp, padwidth=padwidth,
                              silent=True)
    # restore hartree values
    vlev = vlev.flatten() / AU2CM + emin
    # construct continuous function if needed
    if callable(V):
        fn = V
    else:
        fn = interpolate.Akima1DInterpolator(R, V)
    res = optimize.minimize_scalar(fn, bounds=(R[0], R[-1]), method='bounded')
    xe = res.x
    xturn = []  # list of turnig point pairs
    xprev = np.array([xe, xe])
    dx = np.array([-0.1, 0.1])
    for ivib, evib in enumerate(vlev[:vmax+1]):
        fturn = lambda x : fn(x) - evib
        root = optimize.fsolve(fturn, xprev + dx)
        xturn.append(root)
        xprev = root.copy()
    return xturn, xe
##
def diatomic_Dunham(R, V, mass, omega=0, vmax=2, Nmax=2, psitol=1.e-6, 
                    silent=False, nfgh=51, padwidth=0, interp='cubic',
                    ref='phys', display='conventional'):
    '''
    Given a potential and mass, return some diatomic Dunham constants
    Input units are a.u.
    Output units are cm**-1 relative to the energy minimum for J=omega
    Return values depend upon value of 'display':
        'conventional': as dict of equivalent conventional constants
        'dataframe': as dataframe of (k,l) and Y_kl
        anything else: 2D array of Dunham constants Y(k,l), where k is row/vib
    'psitol' is tolerance for FGH periodicity artifacts
    'padwidth' is how much to extend the left and right, using
        the endpoint V-value of the real data. This is to keep 
        the cyclic copies from interacting. padwidth=1 makes the
        range 3x wider. 
    'V' may be a callable function instead of a list/array
    Get constants by fitting energy levels, not from Dunham's equations
    If 'dataframe', return a DataFrame instead of an array
    '''
    #if omega != 0:
    #    print_err('', 'Omega not zero--results may be meaningless', halt=False)
    # compute required levels E(v, J)
    EvJ, Emin, Rmin = rovib_levels(R, V, mass, omega=omega, vmax=vmax,
            Nmax=Nmax, ref=ref, psitol=psitol, silent=silent, nfgh=nfgh, 
            padwidth=padwidth, interp=interp)
    vvals = np.arange(vmax + 1) + 0.5
    Nvals = np.arange(Nmax + 1)
    Jvals = Nvals + omega
    JJvals = Jvals * (Jvals + 1) - omega*omega
    X, Y = np.meshgrid(vvals, JJvals, copy=False)
    X = X.flatten()
    Y = Y.flatten()
    B = EvJ.T.flatten()
    A = np.array([X**k * Y**l for k in range(vmax+1) for l in range(Nmax+1)]).T
    kl = [(k, l) for k in range(vmax+1) for l in range(Nmax+1)]
    coeff, residsq, rank, s = np.linalg.lstsq(A, B, rcond=None)
    dfDunham = pd.DataFrame({'(k,l)': kl, 'Y_kl': coeff})
    # arrange into an array
    Y = np.zeros((vmax+1, Nmax+1)) + np.nan
    for k in range(vmax+1):
        for l in range(Nmax+1):
            Y[k,l] = dfDunham[dfDunham['(k,l)'] == (k,l)]['Y_kl'].values[0]
    if display == 'conventional':
        # create dict with traditional constants
        labels = [ ['Y00', 'we', '-wexe', 'weye', 'weze'], 
                   ['Be', '-alpha', 'gamma'], 
                   ['-De', '-beta', 'delta'],
                   ['Fe'],
                   ['He']
                 ]
        constants = {}
        for k in range(vmax+1):
            for l in range(Nmax+1):
                try:
                    lbl = labels[l][k]
                    if np.isnan(Y[k,l]):
                        continue
                    # check for negative sign
                    if '-' in lbl:
                        constants[lbl[1:]] = -Y[k,l]
                    else:
                        constants[lbl] = Y[k,l]
                except:
                    pass
        return constants
    elif display == 'dataframe':
        return dfDunham
    else:
        return Y
##
def Brot_to_R(B, mu, reverse=False):
    # convert diatomic rotational constant 'B' to its equivalent bond length
    # do the opposite if 'reverse'==True
    # expected units: B in cm-1, R in Angstrom, mu in amu
    mu *= AMU2AU  # convert from amu to atomic unit of mass
    if reverse:
        R = B
        R /= BOHR  # convert from angstrom to bohr
        B = 1/(2 * mu * R*R)
        B *= AU2CM  # convert to cm-1
        return B
    else:
        B /= AU2CM  # convert from cm-1 to hartree
        R = np.sqrt(1/(2 * mu * B))
        R *= BOHR  # convert to angstrom
        return R
##
def discrep_BR_VZ(spectr, mass):
    # Given the output from diatomic_spectr(), return the discrepancy
    #   between Re and Be (in angstrom) and the discrepancy between
    #   E0 and (we/2 - wexe/4) (in cm-1)
    # 'mass' in atomic units
    # Return values are (R_B - R_e) and (ZPE_vib - E0)
    zdiff = (spectr['we']/2 - spectr['wexe']/4) - spectr['E0']
    br_const = PLANCK / (8 * PI**2 * CLIGHT)  # h / (8 * pi^2 * c)
    m_kg = mass * EMASS  # convert a.u. to S.I.
    RB = np.sqrt(br_const / (m_kg * spectr['Be'] * 100)) * 1e10
    rdiff = RB - spectr['Re']
    return rdiff, zdiff
##
def spline_fit(x, y, kind='cubic', extrap=False):
    # given discrete (x,y) data, return an interpolating function
    # handle extrapolation by flat extension (unless extrap==True)
    # kind:  'akima', 'linear', 'quadratic', 'cubic', 'quartic', 'quintic', 'cubic2'
    #   'cubic2' is cubic but using UnivariateSpline instead of interp1d
    iknow = ['akima', 'linear', 'quadratic', 'cubic', 'quartic', 'quintic', 'cubic2']
    kind = kind.lower()
    if not kind in iknow:
        print_err('', 'Unknown interpolation requested: {:s}'.format(kind))
    if kind == 'akima':
        fspl = interpolate.Akima1DInterpolator(x, y)
    elif kind in ['quartic', 'quintic', 'cubic2']:
        degree = {'quartic': 4, 'quintic': 5, 'cubic2': 3}
        # must specify s=0 to go through all the points 
        fspl = interpolate.UnivariateSpline(x, y, k=degree[kind], s=0)
    else:
        fspl = interpolate.interp1d(x, y, kind=kind, bounds_error=True)
    # handle extrapolation
    if extrap:
        fx = interpolate.interp1d(x, y, fill_value='extrapolate')
    def fn(r):
        if r < np.min(x):
            if extrap:
                v = fx(r)
            else:
                v = fspl(np.min(x))
        elif r > np.max(x):
            if extrap:
                v = fx(r)
            else:
                v = fspl(np.max(x))
        else:
            v = fspl(r)
        return v
    return np.vectorize(fn)
##
def expec_value(Rquant, quant, Rwfn, wfn, npt=500):
    # Given a rovib wavefunction f(R),
    #   return <f(R)|quant(R)|f(R)> 
    # User is responsible for ensuring same units for Rquant and Rwfn
    f = spline_fit(Rwfn, wfn)  # continuous f(R)
    fq = spline_fit(Rquant, quant)  # continuous q(R)
    rgrid = np.linspace(Rquant.min(), Rquant.max(), num=npt)  # interpolation grid
    fsq = f(rgrid) ** 2  # f(R)**2 on the interpolation grid
    normsum = fsq.sum()
    qsum = np.dot(fq(rgrid), fsq)
    retval = qsum / normsum
    return retval
##
def spline_fit_old(x, y, kind='cubic'):
    # given discrete (x,y) data, return an interpolating function
    # handle extrapolation by flat extension
    # kind:  'akima', 'linear', 'quadratic', 'cubic', 'quartic', 'quintic', 'cubic2'
    #   'cubic2' is cubic but using UnivariateSpline instead of interp1d
    iknow = ['akima', 'linear', 'quadratic', 'cubic', 'quartic', 'quintic', 'cubic2']
    kind = kind.lower()
    if not kind in iknow:
        print_err('', 'Unknown interpolation requested: {:s}'.format(kind))
    if kind == 'akima':
        fspl = interpolate.Akima1DInterpolator(x, y)
    elif kind in ['quartic', 'quintic', 'cubic2']:
        degree = {'quartic': 4, 'quintic': 5, 'cubic2': 3}
        # must specify s=0 to go through all the points 
        fspl = interpolate.UnivariateSpline(x, y, k=degree[kind], s=0)
    else:
        fspl = interpolate.interp1d(x, y, kind=kind, bounds_error=True)
    # handle extrapolation
    def fn(r):
        if r < np.min(x):
            v = fspl(np.min(x))
        elif r > np.max(x):
            v = fspl(np.max(x))
        else:
            v = fspl(r)
        return v
    return np.vectorize(fn)
##
def Morse_potential(R, De, beta, Re):
    # Return U(R) for parameters De, beta, Re
    # Expect R to be scalar or numpy array
    a = -beta * (R - Re)
    x = (1 - np.exp(a)) ** 2
    return De * x
##
def fit_Morse(R, V):
    # given arrays/lists of distances and energies, return fitted Morse 
    #   parameters and the energy offset ('ymin' here)
    if len(R) < 3:
        print_err('', 'At least 3 points are needed to define a Morse potential')
    if len(R) != len(V):
        print_err('', 'There are {:d} distances but {:d} energies'.format(len(R), len(V)))
    y = np.array(V)
    # sort the points
    idx = np.argsort(R)
    x = np.array(R)[idx]
    y = np.array(V)[idx]
    # initial estimate for parameters
    xlo, ylo = lowest_points(x, y, 3)
    nppoly = np.polynomial.polynomial
    fit_quad = nppoly.Polynomial.fit(xlo, ylo, 2)
    coef = fit_quad.convert().coef
    Re = -coef[1] / (2 * coef[2])
    ymin = (coef[2] * Re**2 + coef[1] * Re + coef[0])
    # make y non-negative
    y = y - ymin
    De = y.max()
    beta = np.sqrt(coef[2] / De)
    # create the residuals function
    def fresid(x):
        yfit = Morse_potential(R, x[0], x[1], x[2])
        return yfit - y
    # minimize 
    res = optimize.least_squares(fresid, [De, beta, Re], bounds=(0,np.inf))
    # return the constants De, beta, Re and the energy offset
    return res.x, ymin
##
def fit_diatomic_potential(R, V, method='cubic', transf=None, wt=None, 
                           residuals=False):
    '''
    Given potential energy data points V(R), return a fitting function
    'method' can be: 
        'akima', 'cubic', 'quadratic', 'linear', 'quartic', or 'quintic' to do a spline
         an integer > 0 for a polynomial
    'transf' specifies a transformation of R prior to fitting: 
        None: no transformation
        'invexp': exp(-R)
        a number:  R**transf
    'wt' are optional weights to use in polynomial fitting only
    Set 'residuals' to True to return an array of residuals also
    '''
    if len(R) != len(V):
        print_err('', 'len(R) = {:d} and len(V) = {:d} are not equal'.format(len(R), len(V)))
    # possible transformation of independent variable
    def transform(r):
        if transf is None:
            s = r
        elif transf == 'invexp':
            s = np.exp(-r)
        elif re.match(r'^[-]?\d+[.]?\d*$', str(transf)):
            s = np.power(r, float(transf))
        else:
            print_err('', 'Unrecognized transformation {:s} requested'.format(str(transf)))
        return s
    x = np.array(R).astype('float')
    x = transform(x)
    y = np.array(V).astype('float')
    # sort 
    idx = np.argsort(x)
    x = x[idx]
    y = y[idx]
    # do the fitting
    if method in ['akima', 'cubic', 'quadratic', 'linear', 'quadratic', 'quintic']:
        fitspl = spline_fit(x, y, kind=method)
        fn = lambda r : fitspl(transform(r))
    elif re.match(r'^\d+$', str(method)):
        Npoly = int(method)
        if len(R) < Npoly + 1:
            print_err('', 'Polynomial of degree {:d} requires more than {:d} data'.format(Npoly, len(R)))
        poly_obj = np.polynomial.polynomial.Polynomial.fit(x, y, Npoly, w=wt)
        fn = lambda r : poly_obj.__call__(transform(r))
    else:
        print_err('', 'Unknown splining method \'{:s}\''.format(method))
    if residuals:
        # compute and return residuals
        yfit = fn(np.array(R)[idx])
        resid = yfit - y
        return fn, resid
    else:
        return fn
##
def find_Rmin(V, rlo, rhi):
    # given a potential V(R), look between rlo and rhi for a minimum
    # return Rmin, Vmin
    res = optimize.minimize_scalar(V, bounds=(rlo, rhi), method='bounded')
    Vmin = res.fun
    Rmin = res.x
    # scipy returns array; try to convert to scalar
    try:
        Vmin = float(Vmin)
        Rmin = float(Rmin)
    except:
        pass
    return Rmin, Vmin
##
def guided_fitting(xguide, yguide, xsparse, ysparse, method='cubic', 
                   transf=None, gmethod='cubic', wt=None, residuals=False,
                   plot=False, xord=2):
    '''
    Use 'gmethod' and 'transf' to get a function describing (xguide, yguide)
        (see fit_diatomic_potential() for their meanings)
    Generate differences ydiff = ysparse - fguide(xsparse)
    Fit (xsparse, ydiff) using 'method' and 'transf'
        When 'method' is a polynomial, then 'wt' are weights to use in fitting
    Return the function (ffit + fguide) to describe ysparse(x)
    If resid==True, also return the residuals from the fitting
    If plot==True, also display a plot of the differences and their fitted curve
        if plot=='trunc', restrict the plot to the sparse range of X 
    xord is order of polynomial used to extrapolate to R > xsparse
    Sparse data are assumed ordered by increasing xsparse
    '''
    # make into numpy arrays
    xcoarse = np.array(xsparse)
    ycoarse = np.array(ysparse)
    xg = np.array(xguide)
    if (xcoarse.min() < xg.min()) or (xcoarse.max() > xg.max()):
        print_err('', 'Range of xsparse must be within range of xguide')
    if callable(yguide):
        # 'yguide' is already a function
        yg = yguide(xg)
        fguide= yguide
    else:
        yg = np.array(yguide)
        fguide = fit_diatomic_potential(xg, yg, method=gmethod, transf=transf)
    ydiff = ycoarse - fguide(xcoarse)
    # fit the differences between the sparse and guiding potentials
    # ffit() is for R <= Rmax and ffitex() is for R > Rmax
    #   add fguide(R) to either to get the guided potential
    ffit = fit_diatomic_potential(xcoarse, ydiff, wt=wt, method=method, 
                                  transf=transf, residuals=residuals)
    if residuals:
        (ffit, resid) = ffit
    if xord > 0:
        ffitex = fit_diatomic_potential(xcoarse[-xord-1:], ydiff[-xord-1:], 
                    method=xord, transf=transf, residuals=False)
    else:
        # just a constant for xord=0
        ffitex = lambda x: ydiff[-1]
    def fguided(x):
        ulim = xcoarse.max()
        if np.ndim(x) == 0:
            # x is scalar
            if x > ulim:
                yfit = ffitex(x)  # extrapolate to large R
            else:
                yfit = ffit(x)  # this could extrapolate to small R
        else:
            # x is list, etc.
            xa = np.array(x)
            yfit = ffit(xa)     # without extrapolation
            idx = np.where(xa > ulim)[0]  # indices of x > Rmax
            if len(idx):
                # use some extrapolation
                yfit[idx] = ffitex(xa[idx])
        y = yfit + fguide(x)
        return y
    if plot:
        # plot the sparse differences along with the fitted curve
        plt.scatter(xcoarse, ydiff, alpha=0.3)
        plt.plot(xg, fguided(xg) - yg)
        plt.ylabel('ysparse - yguide')
        if plot == 'trunc':
            plt.xlim([xcoarse.min(), xcoarse.max()])
            plt.ylim([ydiff.min(), ydiff.max()])
        plt.title('Differences and their fitted curve')
        plt.show()
    if residuals:
        return fguided, resid
    else:
        return fguided
##
def XXXguided_fitting(xguide, yguide, xsparse, ysparse, Npoly=6, 
                   wt=None, plot=False, variant=None):
    # Use Akima interpolation to get a function describing (xguide, yguide)
    # Generate differences ydiff = ysparse - fguide(xsparse)
    # Fit (xsparse, ydiff) to a polynomial of order Npoly
    #    choose Npoly=0 to use an Akima spline instead of a polynomial
    #    'variant' is still obeyed when Npoly==0
    #    'wt' are weights to use in fitting the polynomial
    # Return the function (fpoly + fguide) to describe ysparse(x)
    # If plot==True, plot the sparse differences with the fitting polynomial
    # 'variant' may be a string representation of a float (e.g., '-1.'), 
    #    to make the polynominial in (R**variant) instead of just R
    # 'variant' be be 'invexp' to make the polynomial in exp(-R)
    x = np.array(xguide)
    y = np.array(yguide)
    xcoarse = np.array(xsparse)
    ycoarse = np.array(ysparse)
    if (xcoarse.min() < x.min()) or (xcoarse.max() > x.max()):
        print_err('', 'Range of xsparse must be within range of xguide')
    fguide = interpolate.Akima1DInterpolator(x, y)
    ydiff = ycoarse - fguide(xcoarse)
    if variant is None:
        xfit = xcoarse
    else:
        if variant == 'invexp':
            xfit = np.exp(-xcoarse)
        if '.' in variant:
            # assume this is a float
            xfit = np.power(xcoarse, float(variant))
    if Npoly == 0:
        # use Akima spline instead of polynomial
        spline = interpolate.Akima1DInterpolator(xfit, ydiff)
        # spline cannot extrapolate, so add constant values for extrapolation
        ilo = np.argmin(xfit)
        ihi = np.argmax(xfit)
        def splinecap(r):
            if r < xfit[ilo]:
                f = ydiff[ilo]
            elif r > xfit[ihi]:
                f = ydiff[ihi]
            else:
                f = spline(r)
            return f
        pcall = np.vectorize(splinecap)
    else:
        # use polynomial to fit differences
        poly_obj = np.polynomial.polynomial.Polynomial.fit(xfit, ydiff, Npoly, w=wt)
        pcall = poly_obj.__call__
    if variant is None:
        diffpoly = pcall
    else:
        if variant == 'invexp':
            diffpoly = lambda r : pcall(np.exp(-r))
        if '.' in variant:
            diffpoly = lambda r : pcall(np.power(r, float(variant)))
    if plot:
        if variant is None:
            print('Difference between sparse data and guide potential '
                  '(with {:d}-order polynomial fit)'.format(Npoly))
        else:
            print('Difference between sparse data and guide potential '
                  '({:d}-order polynomial fit to variant "{:s}")'.format(Npoly, variant))
        plt.plot(x, diffpoly(x), 'b')
        plt.scatter(xcoarse, ydiff, c='k')
        plt.show()
    fguided = lambda x: diffpoly(x) + fguide(x)
    return fguided
##
def sample_sphere(npoints, radius=1):
    # use Marsaglia's algorithm to generate points on the 3-sphere of specified radius
    nmore = npoints
    while True:
        # sample uniform distribution over [-1, 1)
        pair = np.random.uniform(low=-1.0, high=1.0, size=(2, nmore))
        sqrs = np.sum(pair**2, axis=0)
        ix = np.where(sqrs < 1)
        selpoints = pair[:,ix][:,0,:]
        if nmore < npoints:
            keep = np.concatenate( (keep, selpoints), axis=1 )
        else:
            keep = selpoints.copy()
        ngood = keep.shape[1]
        #print('ngood =', ngood)
        if ngood >= npoints:
            # we have enough good samples; convert to cartesian triples
            keep = keep[:,:npoints]
            s = np.sum(keep**2, axis=0)
            ssqrt = 2 * np.sqrt(np.ones(npoints) - s)
            keep = keep * ssqrt
            col3 = np.ones(npoints) - 2*s
            keep = np.append(keep, [col3], axis=0)
            break
        # we need more points
        nmore = npoints - ngood
    return keep * radius
##
def random_rotation_matrix():
    # return a random rotation matrix
    # method by J. Arvo (citation in Wikipedia)
    rng = np.random.default_rng()
    theta = 2 * PI * rng.random()  # random angle for z-rotation
    c = np.cos(theta)
    s = np.sin(theta)
    Rz = np.array([ [c, s, 0.], [-s, c, 0.], [0., 0., 1.] ])
    # choose a random point on the unit sphere
    p = sample_sphere(1)[:,0]
    # v is normalized vector between z and p
    v = normalize(np.array([0.,0.,1.]) - p)
    H = np.outer(v, v)
    H = np.eye(3) - 2 * H
    rotmat = -np.matmul(H, Rz)  # I had to change the sign!
    return rotmat
##
def random_rotation_quat(axis=None):
    # return a random rotation quaternion around specified axis
    rng = np.random.default_rng()
    theta = 2 * PI * rng.random()  # random azimuthal rotation
    if axis is None:
        # choose a random point on the sphere of radius theta
        p = sample_sphere(1, radius=theta)[:,0]
    else:
        p = normalize(axis, theta)
    q = quaternion.from_rotation_vector(p)
    return q
##
def rotated_RMSD(sphangle, G, Gref):
    # given [theta, phi] that define a rotation,
    # rotate G and return its RMSD with Gref
    # G and Gref are Geometry() objects
    # atom numbering must be consistent
    Rquat = quaternion.from_spherical_coords(sphangle)
    Gc = G.copy()
    Gc.rotate_quat(Rquat)
    d = RMSD(Gc, Gref)
    return d
##
def small_enclosing_sphere(points):
    # find a small sphere that encloses the points
    # return the center and radius of the sphere
    # random-walk method
    if len(points) < 2:
        return points[0], 0.
    c = points.mean(axis=0).reshape((1,3))  # mass center
    d = cdist(c, points)[0]
    r = d.max()  # initial radius
    dr0 = r / 1000  # initial step size
    drmin = dr0 / 1000  # smallest permissible step size
    maxfail = 100  # maximum consecutive failed steps
    dr = dr0
    nfail = 0
    rng = np.random.default_rng()
    while True:
        vec = normalize(rng.random(size=(3)))  # choose a random direction
        cnew = c + dr * vec
        dnew = cdist(cnew, points)[0]
        rnew = dnew.max()
        if rnew < r:
            # improvement
            r = rnew
            c = cnew
        else:
            # failed attempt
            nfail += 1
            if nfail >= maxfail:
                # try a smaller step
                dr /= 2
                if dr < drmin:
                    # give up
                    break
                else:
                    # keep trying
                    nfail = 0
    return c[0], r
##
def closest_contact(geom1, geom2):
    # return the smallest distance from geom1 to geom2 and
    #   the indices of the two atoms involved
    xyzA = geom1.separateXYZ()[1]
    xyzB = geom2.separateXYZ()[1]
    dmat = cdist(xyzA, xyzB)
    idx = np.unravel_index(np.argmin(dmat), dmat.shape)
    rmin = dmat[idx]
    (i, j) = idx
    return rmin, i, j
##
def Debye_Clausius_Mosotti(MW, rho, dipole, T, alpha=None, epsilon=None):
    # required args:
    #   molecular mass (MW) in g/mol
    #   density (rho) in g/cm3
    #   molecular dipole moment in Debye
    #   temperature in K
    # Then, given either polarizability (alpha/A3) or relative 
    #   dielectric constant (epsilon), return the other.
    
    # convert MW and density to atomic volume in Angstrom**3
    vol = MW / rho / AVOGADRO * 1.e24
    if (alpha is None) and (epsilon is None):
        print_err('', 'You must provide either alpha or epsilon')
    c = 3 * vol / (4 * PI)
    # convert Debye and energy to cgs/Angstrom units
    kT = BOLTZMANN * T
    kT *= 1.e7  # from Joule to erg
    b = dipole * dipole / (3 * kT)  # units of cm**3
    b *= 1.e-12  # convert from mixed units to to Ang**3
    print('*** b =', b, 'c =', c)
    
    if alpha is None:
        # solve for alpha
        alpha = c * (epsilon - 1) / (epsilon + 2) 
        # subtract the dipole part
        alpha -= b
        return alpha, 'alpha/A**3'
    else:
        # solve for epsilon
        x = (alpha + b) / c
        epsilon = (1 + 2*x) / (1 - x)
        return epsilon, 'epsilon'
##
def list_counts(alist, sortorder=False):
    # return a dict of list elements and their counts
    # if 'sortorder', put the keys in sorted() order
    ct = {}
    if sortorder:
        for elem in sorted(set(alist)):
            ct[elem] = alist.count(elem)
    else:
        for elem in set(alist):
            ct[elem] = alist.count(elem)
    return ct
##
def round_half_int(x, quiet=False, thresh=0.001):
    # round to nearest half-integer
    # issue a warning if change exceeds 'thresh', unless 'quiet'
    # integer values are returned as int instead of float
    y = np.atleast_1d(x)
    hf = np.round(np.round(2*y)/2, 1)
    diff = np.abs(hf - y)
    idx = np.where(diff > thresh)
    if len(y[idx]) and not quiet:
        s = str(y[idx])
        print_err('', 'half-integer rounding exceeds {:f} for {:s}'.format(thresh, s), halt=False)
    # if integers, convert to int
    if not (hf - np.round(hf, 0)).any():
        hf = hf.astype(int)
    # return a scalar if 'x' is scalar, otherwise a numpy array
    try:
        len(x)  # fails if 'x' is a scalar
        return hf
    except:
        # scalar
        return hf[0]
##
def round_to_tol(x, tol):
    # Round the value to the nearest multiple of 'tol'
    ndec = - int(np.floor(np.log10(tol)))
    try:
        y = []
        for a in x:
            y.append(round_to_tol(a, tol))
    except TypeError:
        n = np.rint(x/tol)
        y = n * tol
    return np.round(y, ndec)
##
def round_dict(d, ndig=3):
    # return a copy of 'd' with values rounded to 'ndig' 
    dr = {k: np.round(v, ndig) for k, v in d.items()}
    return dr
##
def halves(spin):
    # Convert decimal number like 2.5 to a fraction
    #   string like '5/2'
    n = int(round(2*float(spin)))
    if n % 2:
        # spin is odd
        spinstr = '{:d}/2'.format(n)
    else:
        spinstr = '{:d}'.format(n // 2)
    return spinstr
##
def ordinal_round_half_int(strx):
    # given a string like '(2)2.0' or '(1)0.5', return a string with
    #   decimal converted to nearest half-integer
    strx = str(strx)
    regex = re.compile(r'(?:\(\d+\))?(\d+\.?\d*)')
    m = regex.match(strx)
    sfrac = m.group(1)
    sfloat = strx.replace(sfrac, str(halves(sfrac)))
    return sfloat
##
def random_ligation(Molec, Ligand, nligand=1, rmin=1.5, ntry=100, site=[], rmax=4.):
    '''
    Molec and Ligand are Geometry() objects
    nligand copies of Ligand are placed randomly around Molec
    fragments may not be closer than 'rmin' distance units (nearest atoms)
    Return a combined Geometry()
    If 'site' is not empty, it specifies atoms within Molec;
        Ligand should be close to those atoms.
        Atoms are specied by index.
        This feature is intended for protonation (Ligand = H+) etc.
        'rmax' is the maximum allowed distance to a 'site' atom
    'ntry' is the maximum allowed number of successive failed placements,
        per ligand
    '''
    Cluster = Molec.copy()
    Lig = Ligand.copy()
    center1, radius1 = Cluster.bounding_sphere()  
    center2, radius2 = Lig.bounding_sphere()
    # 'radius' crudely describes each fragment (nuclei)
    # place centers of mass at the origin
    Cluster.translate(-center1)
    Lig.translate(-center2)
    for ilig in range(nligand):
        for itry in range(ntry):
            # add new ligand randomly 
            # on the sphere with R = (radius1 + radius2), with random orientation
            displ = sample_sphere(1, radius1 + radius2)[:,0]
            rmat = random_rotation_matrix()
            Newlig = Lig.copy()
            Newlig.rotate(rmat)
            Newlig.translate(displ)
            # check for being too close
            r, jA, jB = closest_contact(Cluster, Newlig)
            dpush = normalize(Newlig.atom[jB].xyz - Cluster.atom[jA].xyz)
            dpush *= (rmin - r)
            while r < rmin:
                # move Newlig away
                # do not change 'push' direction
                Newlig.translate(dpush)
                r, jA, jB = closest_contact(Cluster, Newlig)
            # check for proximity to 'site' target atoms
            if len(site):
                Sub = Cluster.subMolecules([site])[0]  # list of lists required; returns list
                r, jA, jB = closest_contact(Sub, Newlig)
                if r > rmax:
                    # it's too far; reject this geometry
                    continue
            # successful placement
            break
        else:
            # trial limit reached
            print_err('', f'Exceeded trial limit of {ntry} for ilig = {ilig}')
        Cluster.append(Newlig)
    return Cluster
##
def read_triangular_matrix(buf):
    # for parsing output files in general
    # the model for this is Gaussian's listing of NMR J-J couplings
    # return a list of raw indices and a symmetric square matrix (zero-indexed)
    re_hdr = re.compile('^(\s+\d+)+\s*$')  # column numbers and nothing else
    re_data = re.compile('^\s*\d+\s+[-]?\d+\.\d+')  # row number and a floatish
    cols = []
    for line in buf:
        # get all the column numbers
        if re_hdr.match(line):
            cols.extend(line.split())
    dimen = len(cols)
    mat = np.zeros((dimen, dimen))
    for line in buf:
        # get the current column numbers
        if re_hdr.match(line):
            curcols = line.split()
        if re_data.match(line):
            # replace 'D' with 'E' so it can be floated
            w = line.replace('D', 'E').split()
            row = w.pop(0)
            if row not in cols:
                print_err('', f'row {row} is missing from list of columns {cols}')
            x = [float(a) for a in w]
            for col, v in zip(curcols[:len(x)], x):
                i = cols.index(row)
                j = cols.index(col)
                mat[i,j] = v
                mat[j,i] = v
    return mat, cols
##
def lorentzian_func(x, x0, gamma):
    # compute y for given x
    a = gamma / (2 * np.pi)
    y = (x - x0)**2 + (gamma / 2)**2
    y = a / y
    return y
##
def gaussian_func(x, x0, sigma):
    # compute y for given x
    a = sigma * np.sqrt(2 * np.pi)
    w = ((x - x0) / sigma) ** 2
    y = np.exp(-w/2) / a
    return y
##
def consolidate_stick_spectrum(xstick, ystick, thresh):
    # combine peaks in stick spectrum none are closer than 'thresh'
    x = np.array(xstick)
    y = np.array(ystick)
    nprev = 0
    while len(x) != nprev:
        nprev = len(x)
        # order by increasing x
        idx = np.argsort(x)
        x = x[idx]
        y = y[idx]
        # compute distances
        dx = x[1:] - x[:-1]
        if (dx < 0).any():
            print_err('', 'negative increment in sorted array')
        x2 = []
        y2 = []
        i = 0
        while i < len(dx):
            if dx[i] < thresh:
                # combine this point with the next
                x2.append( (x[i] + x[i+1]) / 2 )
                y2.append( y[i] + y[i+1] )
                # don't count the next point again
                i += 1
            else:
                # just preserve the point as-is
                x2.append(x[i])
                y2.append(y[i])
            i += 1
        if i < nprev:
            # add the last point
            x2.append(x[i])
            y2.append(y[i])
        x = np.array(x2)
        y = np.array(y2)
    return x, y
##
def convolve_peakshape(xstick, ystick, fwhm, shape='gaussian', npt=1000, 
                       xmin=None, xmax=None, fcombine=20):
    # convolve a stick spectrum with a Gaussian or Lorentzian lineshape
    # return x and y for the convolved spectrum over the range [xmin, xmax]
    # default for xmin and xmax are the limits of xstick +- 10*width
    # y is scaled so its max equals that of ystick
    # larger values of 'fcombine' will allow closer-spaced sticks,
    #    i.e., will use more resources
    if fwhm <= 0:
        print_err('', 'FWHM must be positive')
    if len(xstick) != len(ystick):
        print_err('', f'xstick has length {len(xstick)} but ystick has {len(ystick)}')
    if shape.lower() == 'lorentzian':
        g = lorentzian_func
    elif shape.lower() == 'gaussian':
        g = gaussian_func
        # convert fwhm to sigma
        fwhm /= np.sqrt(8 * np.log(2))
    else:
        print_err('', f'Unknown convolving function {shape}')
    # done with error checking
    # to avoid memory overflow, combine sticks that are very close
    vclose = fwhm / fcombine
    x, y = consolidate_stick_spectrum(xstick, ystick, vclose)
    if xmin is None:
        xmin = x.min() - 10 * fwhm
    if xmax is None:
        xmax = x.max() + 10 * fwhm
    xc = np.linspace(xmin, xmax, npt)
    xij = np.subtract.outer(xc, x)
    gij = g(xij, 0, fwhm)
    yc = np.dot(gij, y)
    # scaling
    yc *= y.max() / yc.max()
    return xc, yc
##
def stoichiometry(elemdict, ones=True):
    # stoichiometry string in the order defined here
    # 'elemdict' key is element symbol, value is count
    # omit ones ('1') is ones==False
    order = ['C', 'H', 'N', 'O', 'F', 'Cl', 'S', 'P']
    stoich = ''
    for e in order:
        if e in elemdict:
            # ensure is integer
            n = int(np.round(elemdict[e]))
            if abs(elemdict[e] - n) > 1.e-5:
                print_err('', f'Element count must be integer {elemdict[e]}', halt=False)
                return ''
            elemdict[e] = n
            if (elemdict[e] != 1) or ones:
                stoich += '{:s}{:d}'.format(e, elemdict[e])
            else:
                stoich += '{:s}'.format(e)
    # alphabetical for elements not specified in 'order'
    others = []
    for e in elemdict.keys():
        if not e in order:
            others.append(e)
    if len(others):
        for e in sorted(others):
            if (elemdict[e] != 1) or ones:
                stoich += '{:s}{:d}'.format(e, elemdict[e])
            else:
                stoich += '{:s}'.format(e)
    return stoich
##
def read_xy_curve(fcsv, nonneg=True):
    # read x, y data from a CSV file, as from a digitized plot
    # if 'nonneg', adjust y values upward so that min >= 0
    df = pd.read_csv(fcsv)
    # for any repeated values of x use the largest of the y's
    # assume that the first column is 'x' and the second column is 'y'
    xcol = df.columns[0]
    ycol = df.columns[1]
    df = df.sort_values(by = [xcol, ycol])
    df.drop_duplicates(subset=xcol, keep='last', inplace=True, ignore_index=True)
    if nonneg:
        ymin = df[ycol].min()
        if ymin < 0:
            df[ycol] = df[ycol] - ymin
    return df
##
def rms(v):
    # return the root mean square of a list of numbers
    a = np.array(v)
    rms = np.sqrt( (a**2).mean() )
    return rms
##
def rms_difference(v1, v2):
    # return the rms difference between two vectors
    rmsd = distance(v1, v2) / np.sqrt(len(v1))
    return rmsd
##
def distmat_eigval_rmsdiff(Geom1, Geom2, variant='full'):
    # Given two Geometry() objects, compute the eigenvalues of their
    # respective distance matrices.  Return the RMS difference of the
    # eigenvalues (as ordered by the eigenvalue routine) 
    # Purpose is to distinguish conformations
    # allowed variants are 'nonbonded' and 'interfragment'
    if variant not in ['full', 'nonbonded', 'interfragment']:
        print_err('', f'unrecoginzed variant: {variant}')
    if variant == 'interfragment':
        # set distances within a bonded fragment to zero
        dmat1 = Geom1.distmat(variant=variant)
        dmat2 = Geom2.distmat(variant=variant)
    else:
        dmat1 = Geom1.distmat()
        dmat2 = Geom2.distmat()        
    if variant == 'nonbonded':
        # set bonded distances to zero
        connex1 = Geom1.connection_table()
        connex2 = Geom2.connection_table()
        idx1 = np.nonzero(connex1)
        idx2 = np.nonzero(connex2)
        dmat1[idx1] = 0.
        dmat2[idx2] = 0.
    eigs1 = np.linalg.eigvals(dmat1)
    eigs2 = np.linalg.eigvals(dmat2)
    return rms_difference(eigs1, eigs2)
##
def vectors_angle(v1, v2, unit='radian'):
    # return the angle between vector 'v1' and vector 'v2'
    n1 = v1 / np.linalg.norm(v1)
    n2 = v2 / np.linalg.norm(v2)
    dcos = np.dot(n1, n2)
    ang = np.arccos(dcos)
    if unit == 'degree':
        ang *= 180. / np.pi
    return ang
##
def closest_match_after_rotation(sphangle, G, Gref):
    # given [theta, phi] that define a rotation,
    # rotate (a copy of) G and return its rms distance to Gref
    # (distances to nearest atoms of same element)
    # G and Gref are Geometry() objects
    Rquat = quaternion.from_spherical_coords(sphangle)
    Gc = G.copy()
    Gc.rotate_quat(Rquat)
    drms = Gc.distance_closest_match(Gref)
    return drms
##
def Monte_Carlo_rotational_matching(G, Gref, thresh=0.5, nmax=5000):
    # randomly rotation G to match Gref
    # consistent atom numbering is NOT required
    # return the minimum rms distance and the corresponding
    #   spherical angle that defines the rotation
    sphangle = [0, 0]
    dlarge = 1.e6  # a large number less than np.inf
    dmin = dlarge
    rng = np.random.default_rng()
    for i in range(nmax):
        u = rng.random()   # range [0, 1]
        theta = np.arccos(1 - 2*u)  # for uniformity over sphere; range [0, pi]
        phi = 2 * np.pi * (rng.random() - 0.5)  # range [-pi, pi]
        d = closest_match_after_rotation([theta, phi], G, Gref)
        if d < dmin:
            dmin = d
            sphangle = [theta, phi]
        if d < thresh:
            break
    if dmin == dlarge:
        # all rotations failed
        sphangle = [0, 0]
    return dmin, sphangle
##
def Geom_same_order(G1, G2):
    # are the atoms (elements) in the same order?
    o1 = G1.separateXYZ()[0]
    o2 = G2.separateXYZ()[0]
    ok = (o1 == o2)
    if not ok:
        print(o1)
        print(o2)
    return ok
##
def MC_structure_match(G, Gref, thresh=0.1, nmax=5000):
    # costly Monte Carlo search to get G to coincide with Gref,
    # with renumbering of atoms
    # final tweaking by min-RMSD
    d, sphangle = Monte_Carlo_rotational_matching(G, Gref, nmax=nmax)
    G.rotate_sphangle(sphangle)
    d, idx = G.distance_closest_match(Gref, index=True)
    #print('\t\t{:.3f} closest_match'.format(d))
    G.renumber_atoms(idx)
    #print('\t\t{:.3f} after renumbering'.format(RMSD(G, Gref)))
    if not Geom_same_order(G, Gref):
        print('\tdifferent order!')
    # tweak using Kabsch
    d = min_RMSD(G, Gref, use_masses=True, inplace=True)
    #print('\t\t{:.3f}'.format(d))
    return d
##
def match_and_align(G, Gref, thresh=0.1):
    # try hard to make the atom numbering and orientation of G
    # coincide with Gref
    # Modify G as needed
    # return the lowest RMSD attained
    Gc = G.copy()
    d = RMSD(G, Gref)
    #print('initial d = {:.3f}'.format(d))
    dmin = d
    Gmin = Gc.copy()
    def update_min():
        nonlocal d, dmin, Gc, Gmin
        if d < dmin:
            dmin = d
            Gmin = Gc.copy()
        return 
    if d > thresh:
        # try RMSD alignment
        Gc = RMSD_align(Gc, Gref)
        d = RMSD(Gc, Gref)
        update_min()
        #print('\t\tafter Kabsch, d = {:.3f}, dmin = {:.3f}'.format(d, dmin))
    if d > thresh:
        # try aligning inertial axes and renumbering
        Gc = G.copy()
        #print('>>> before paxis alignment:', sorted(Gc.connected_elems()[0]))
        Gc.align_principal_axes(Gref, quiet=True)
        d, idx = Gc.distance_closest_match(Gref, index=True)
        if d < dmin:
            # might have succeeded
            Gc.renumber_atoms(idx)
            d = RMSD(Gc, Gref)
            update_min()
            #print('\t\tafter paxis alignment, d = {:.3f}, dmin = {:.3f}'.format(d, dmin))
    if d > thresh:
        # try Monte Carlo alignment with renumbering
        Gc = G.copy()
        d = MC_structure_match(Gc, Gref)
        update_min()
        #print('\t\tafter MC search, d = {:.3f}, dmin = {:.3f}'.format(d, dmin))
    return dmin, Gmin
##
def enumerative_prefix(labels, always=False, style='numeric'):
    # return a list of labels modified to include a counting (ordinal) prefix
    # e.g ['A', 'B', 'A'] returns ['(1)A', '(1)B', '(2)A']
    # if always==False, then skip the prefix for unique labels: returns ['(1)A', 'B', '(2)A']
    # It is assumed that labels[] is in the desired order (increasing energy)
    # If style == 'alpha', use ASD-style prefixes like "a 3P" 
    #    default style is like "(1)3P"
    az = 'abcdefghijklmnopqrstuvwxyz'
    retval = [''] * len(labels)
    lset = set(labels)
    for lbl in lset:
        n = list(labels).count(lbl) # number of occurrences
        add_count = (n > 1) or always
        i = 1
        for j, arg in enumerate(labels):
            if arg == lbl:
                if add_count:
                    if style == 'numeric':
                        pref = '({:d})'.format(i)
                    elif style == 'alpha':
                        pref = '{:s} '.format(az[i-1])
                else:
                    pref = ''
                retval[j] = pref + str(lbl)
                i += 1
    return retval
##
def strip_enumerative_prefix(label):
    # Given one label, return it with any enumerative prefixes removed
    # prefixes may be numeric or alpha
    rx = re.compile('(?:\(\d+\))?(\d+.+)')
    m = rx.match(label)
    if m:
        return m.group(1)
    else:
        print_err('', f'Failed to parse label "{label}"', halt=False)
        # return the label unchanged
        return label
    return None
##
def update_enumerative_prefix(labels, always=False, style='numeric'):
    #  Given a list of modified labels from enumerative_prefix(), update
    #    the prefixes to reflect a new ordering (as in 'labels')
    uniql = []  # unique elements of 'labels', in order
    for lbl in labels:
        if lbl not in uniql:
            uniql.append(lbl)
    # make corresponding list without prefixes
    plainl = [strip_enumerative_prefix(lbl) for lbl in uniql]
    newlbls = enumerative_prefix(plainl, always=always, style=style)
    # create the full list (with repeats)
    renum = []
    for old in labels:
        i = uniql.index(old)
        renum.append(newlbls[i])
    return renum
##
def renumber_water_cluster(G, Gref, dipvec, dipref, ang_thresh=0.02,
                           dip_thresh=0.03, dist_thresh=0.1):
    # renumber the atoms in G to match Gref
    # 'dipvec' and 'dipref' are the dipole vectors
    # it is assumed that the two structures are actually the same
    # 'ang_thresh' is in radian (dipole vectors' angle)
    # 'dip_thresh' is for total dipole moment 
    # 'dist_thresh' is to decide whether two atoms coincide
    # return the renumbered Geometry() 
    thr = dip_thresh / 3  # for individual dipole components
    ang = vectors_angle(dipvec, dipref)
    Gret = G.copy()
    msg = ''
    if ang > ang_thresh:
        # see if any coordinate inversions would help
        s = dipvec + dipref
        # find coordinates to multiply by -1
        cancels = (np.abs(s) < thr) & (np.abs(dipref) < thr)
        negate = -1 * cancels * np.ones(3) + ~cancels * np.ones(3)
        msg += f'negat = {negate} '
        el, c = G.separateXYZ()
        c = c * negate
        # install the new coordinates
        Gret = Geometry(el, c, intype='2lists')
    '''
    else:
        # dipoles are already parallel
        # see if reflection reduces RMSD
        rmsd0 = min_RMSD(Gret, Gref)
        # reflect through a plane that contains the dipole vector
        w = np.random.random(3)  # random vector
        nrm = np.cross(dipvec, w)
        Gtest = Gret.copy()
        Gtest.reflect(nrm)
        rmsd1 = min_RMSD(Gtest, Gref)
        if rmsd1 < rmsd0:
            Gret = Gtest
            msg += f'reflected perpendicular to dipole vector. '
    '''
    # find nearest atoms
    elref, cref = Gref.separateXYZ()
    el, c = Gret.separateXYZ()
    dmat = cdist(c, cref)
    idx = np.argwhere(dmat.T < dist_thresh)
    newnums = idx[:, 1].flatten()
    if len(newnums) != G.natom():
        msg += f'Error: only matched {len(newnums)} of {G.natom()} atoms. '
        msg += f'newnums = {newnums}'
        msg += f'\ndipvec = {np.round(dipvec, 3)}, dipref = {np.round(dipref, 3)}'
        #print('newnums = ', newnums)
    else:
        msg += f'new numbering = {newnums}'
        Gret.renumber_atoms(newnums)
    return Gret, msg
##
def BS_extrap_agg(Nlist, Etot, Ehf=None, type_hf=None, type_correl='n-3'):
    '''
    Basis-set extrapolation; return extrapolated total energy(s) and 
        distance of extrapolation(s)
        Return [[HF, dHF], [E, dE]] or just [E, dE]
    Arguments:
        Nlist: list of "n" values for basis sets (TZ=3, QZ=4 etc.)
            values must be consecutive
        Etot:  list of total energies corresponding to basis sets
        Ehf:   list of Hartree-Fock energies (optional)
        type_hf:  method for HF energy extrapolation. Choices are:
            'feller': 3-point exponential
            'kmj'   : 2-point parameterized (Karton & Martin after Jensen) [default]
            None    : extrapolate only the total energy
        type_correl : method for extrapolating the correlation energy.
            If only the total energy is being extrapolated, then this 
            is the method to use. Choices are:
            'feller': 3-point exponential
            'n-3'   : Helgaker 2-point n**-3 [default]
            'n+1-3' : (n+1)**-3 (Peterson et al.)
            floating-point number:  use this as the exponent for n**-x
    '''
    if type_hf is not None:
        type_hf = type_hf.lower()
    type_correl = type_correl.lower()
    hf_meth = [None, 'feller', 'kmj']
    corr_meth = ['feller', 'n-3', 'n+1-3']
    expon = None
    if type_hf not in hf_meth:
        print(f'** unrecognized HF extrapolation method: {type_hf}')
        print_err('', f'Try one of these: type_hf={hf_meth}')
    if type_correl not in corr_meth:
        try:
            expon = float(type_correl)
        except:
            print(f'** unrecognized correlation extrapolation method: {type_correl}')
            print_err('', f'Try one of these: type_correl={corr_meth}')
    for i in range(len(Nlist)-1):
        if (Nlist[i+1] - Nlist[i]) != 1:
            print_err('', f'Basis-set numbers must be consecutive: {Nlist}')
    # Hartree-Fock
    if type_hf is None:
        # do not extrapolate HF energies
        HF = None
    else:
        if Ehf is None:
            print_err('', 'HF extrapolation requested but no HF energies supplied')
        if len(Nlist) != len(Ehf):
            print_err('', f'There are {len(Nlist)} basis sets but {len(Ehf)} HF energies')
        if type_hf == 'feller':
            # E(n) = HF + A*exp(-B*n)
            if len(Nlist) < 3:
                print_err('', f'{len(Nlist)} basis sets but 3 needed for Feller extrapolation')
            # use only the largest three basis sets
            nlist = Nlist[-3:]
            ehf = Ehf[-3:]
            # solve for B
            x = (ehf[2] - ehf[1]) / (ehf[1] - ehf[0])  # x = exp(-B)
            # solve for A
            A = (ehf[2] - ehf[0]) / (x**3 * (x*x - 1))
            HF = ehf[2] - A * x**nlist[2]
            dHF = HF - ehf[2]  # distance of the extrapolation
            print('HF = {:.6f}, dHF = {:.6f}'.format(HF, dHF))
        if type_hf == 'kmj':
            # E(n) = HF + A(n+2)*exp(-9*sqrt(n+1))  # L in paper = n+1
            # use only the largest two basis sets
            nlist = Nlist[-2:]
            ehf = Ehf[-2:]
            L = nlist[1] + 1
            x = L * np.exp(9 * (np.sqrt(L) - np.sqrt(L-1))) / (L+1) - 1
            HF = ehf[1] + (ehf[1] - ehf[0]) / x
            dHF = HF - ehf[1]  # distance of the extrapolation
            retval = [ [HF, dHF] ]
    # correlation or total
    if HF is None:
        # extrapolate the total energy
        if len(Nlist) != len(Etot):
            print_err('', f'There are {len(Nlist)} basis sets but {len(Etot)} energies')
        ecorr = Etot
    else:
        # extrapolate only the correlation energy
        if len(Etot) != len(Ehf):
            print_err('', 'Number of HF ({len(Ehf)}) and total ({len(Etot)}) energies must be equal')
        ecorr = [(e-h) for e, h in zip(Etot, Ehf)]
    if type_correl == 'feller':
        # as above
        nlist = Nlist[-3:]
        ec = ecorr[-3:]
        # solve for B
        xc = (ec[2] - ec[1]) / (ec[1] - ec[0])
        # solve for A
        Ac = (ec[2] - ec[0]) / (xc**3 * (xc*xc - 1))
        Ec = ec[2] - Ac * xc**nlist[2]
        dEc = Ec - ec[2]
        print('Ec = {:.6f}, dEc = {:.6f}'.format(Ec, dEc))
    if (type_correl == 'n-3') or (type_correl == 'n+1-3'):
        # E(n) = E + A*n**-3  or E(n) = E + A*(n+1)**-3
        # use the two largest basis sets
        nlist = Nlist[-2:]
        ec = ecorr[-2:]
        if type_correl == 'n+1-3':
            # increment N
            nlist = [n+1 for n in nlist]
        a = nlist[1]**3 * ec[1] - nlist[0]**3 * ec[0]
        b = nlist[1]**3 - nlist[0]**3
        Ec = a/b
        dEc = Ec - ec[1]
    if expon is not None:
        # E(n) = E + A *n**-expon
        nlist = Nlist[-2:]
        ec = ecorr[-2:]
        a = nlist[1]**expon * ec[1] - nlist[0]**expon * ec[0]
        b = nlist[1]**expon - nlist[0]**expon
        Ec = a/b
        dEc = Ec - ec[1]
    if HF is None:
        return [Ec, dEc]  # these are total energies
    else:
        # add the HF and correlation energies
        E = HF + Ec
        dE = dHF + dEc
        retval.append( [E, dE] )
        return retval
##
def BS_extrap(Nlist, E, extype='n-3'):
    '''
    Simpler basis-set extrapolation; return extrapolated energy and 
        distance of extrapolation(s)
        Return [E, dE]
    Arguments:
        Nlist: list of "n" values for basis sets (TZ=3, QZ=4 etc.)
            values must be consecutive
        E:     list of energies corresponding to basis sets
        extype      : method for extrapolating the energy. Choices are:
            'feller': 3-point exponential (for HF)
            'kmj'   : 2-point parameterized (Karton & Martin after Jensen) (for HF)
            'n-3'   : Helgaker 2-point n**-3 (for correlation)
            'n+1-3' : (n+1)**-3 (Peterson et al.) (for correlation)
            floating-point number:  use this as the exponent for n**-x
                e.g. '2.48' for T-(T) and '3.38' for (Q)
    '''
    ex_meth = ['feller', 'kmj', 'n-3', 'n+1-3']
    expon = None
    if extype not in ex_meth:
        try:
            expon = float(extype)
        except:
            print(f'** unrecognized extrapolation method: {extype}')
            print_err('', f'Try one of these: type_correl={ex_meth}')
    for i in range(len(Nlist)-1):
        if (Nlist[i+1] - Nlist[i]) != 1:
            print_err('', f'Basis-set numbers must be consecutive: {Nlist}')
    if len(Nlist) != len(E):
        print_err('', f'There are {len(Nlist)} basis sets but {len(E)} energies')
    if extype == 'feller':
        nlist = Nlist[-3:]
        ec = E[-3:]
        # solve for B
        xc = (ec[2] - ec[1]) / (ec[1] - ec[0])
        # solve for A
        Ac = (ec[2] - ec[0]) / (xc**3 * (xc*xc - 1))
        Ec = ec[2] - Ac * xc**nlist[2]
        dEc = Ec - ec[2]
    if extype == 'kmj':
        # E(n) = HF + A(n+2)*exp(-9*sqrt(n+1))  # L in paper = n+1
        # use only the largest two basis sets
        nlist = Nlist[-2:]
        ec = E[-2:]
        L = nlist[1] + 1
        x = L * np.exp(9 * (np.sqrt(L) - np.sqrt(L-1))) / (L+1) - 1
        Ec = ec[1] + (ec[1] - ec[0]) / x
        dEc = Ec - ec[1]  # distance of the extrapolation
    if (extype == 'n-3') or (extype == 'n+1-3'):
        # E(n) = E + A*n**-3  or E(n) = E + A*(n+1)**-3
        # use the two largest basis sets
        nlist = Nlist[-2:]
        ec = E[-2:]
        if extype == 'n+1-3':
            # increment N
            nlist = [n+1 for n in nlist]
        a = nlist[1]**3 * ec[1] - nlist[0]**3 * ec[0]
        b = nlist[1]**3 - nlist[0]**3
        Ec = a/b
        dEc = Ec - ec[1]
    if expon is not None:
        # E(n) = E + A *n**-expon
        nlist = Nlist[-2:]
        ec = E[-2:]
        a = nlist[1]**expon * ec[1] - nlist[0]**expon * ec[0]
        b = nlist[1]**expon - nlist[0]**expon
        Ec = a/b
        dEc = Ec - ec[1]
    return [Ec, dEc]
##
def CIRconvert(ids, output):
    # from Stackoverflow
    # convert molecule name (or other identifier) to another form
    # e.g., 'smiles', 'cas', 'formula', 'iupac_name', 'stdinchi',
    #       'stdinchikey'
    try:
        url = 'http://cactus.nci.nih.gov/chemical/structure/' + \
            quote(ids) + '/' + output
        ans = urlopen(url).read().decode('utf8')
        return ans
    except:
        return 'Conversion failed'
##
def formula_to_atomlist(formula_in):
    # convert a chemical formula to a list of atoms
    # case sensitive
    # the only brackets supported are parentheses 
    atlist = []
    prevlen = -1
    re_num = re.compile(r'\d+')
    # add '1' after any ')' that is not followed by a number
    formula = re.sub('\)(?=\D)', ')1', formula_in)
    if formula.endswith(')'):
        formula = formula + '1'
    # split at numbers, parentheses, element symbols
    atlist = re.split(r'(\d+|[)(]|[A-Z][a-z]?)', formula)  # e.g., ['H', '2', 'O']
    atlist = [a for a in atlist if len(a) > 0]  # remove blanks
    # expand all subscripts
    while len(atlist) != prevlen:
        prevlen = len(atlist)
        newlist = []
        # expand one set of parentheses
        expanded = False
        nopen = 0
        ileft = []  # indices of left parentheses
        iright = -2 # index of closing right parenthesis
        for i, a in enumerate(atlist):
            newlist.append(a)
            if a == '(':
                nopen += 1
                ileft.append(i)
            elif a == ')':
                nopen -= 1
                if nopen < 0:
                    print_err('', f'Unmatched parenthesis in {formula}')
                if not expanded:
                    # match the most recent left parenthesis
                    paren = atlist[ileft[-1]+1:i]
                    iright = i
                    expanded = True
            elif i == iright + 1:
                # number to multiply parenthetical expression
                mult = int(a)
                # truncate to before the most recent left parenthesis
                newlist = atlist[:ileft[-1]]
                iright = -2
                newlist.extend(paren * mult)
        atlist = newlist
        if nopen != 0:
            print_err('', f'Unmatched parentheses in {formula}')
    # expand simple subscripts
    newlist = []
    for i, a in enumerate(atlist):
        if re_num.match(a):
            at = newlist.pop()
            newlist.extend([at] * int(a))
        else:
            newlist.append(a)
    return newlist
##
def formula(atlist, Hill=False):
    # given a list of element symbols, return a formula
    # optionally using Hill convention
    atcount = {}
    for at in atlist:
        try:
            atcount[at] += 1
        except KeyError:
            atcount[at] = 1
    elems = sorted(atcount.keys())
    if (not Hill) or ('C' in elems):
        # rearrange to put C, H in front
        for el in ['H', 'C']:
            if el in elems:
                elems.remove(el)
                elems = [el] + elems
    # create the formula string
    formula = ''
    for el in elems:
        if el in atcount:
            n = atcount[el]
            if n > 1:
                formula += '{:s}{:d}'.format(el, atcount[el])
            else:
                formula += el  # don't list "1" as a multiplier
            del atcount[el]
    return formula
##
def num_deriv(X, Y, method='central'):
    # numerical derivative
    # return arrays xp, yp where 'xp' are interval midpoints
    # 'method' can be 'central' or 'stepwise'
    x = np.array(X)
    y = np.array(Y)
    if method not in ['central', 'stepwise']:
        print_err('', f'Unknown method = {method}')
    if method == 'central':
        dx = x[2:] - x[:-2]
        dy = y[2:] - y[:-2]
        xp = (x[2:] + x[:-2]) / 2
    else:
        dx = x[1:] - x[:-1]
        dy = y[1:] - y[:-1]
        xp = (x[1:] + x[:-1]) / 2
    yp = dy / dx
    return xp, yp
##
def omega_possible_from_term(term):
    # for a diatomic molecule, given a term symbol, return a set of
    #   possible values for Omega: from |(Lambda - Sigma)| to (Lambda + Sigma)
    S, L, parity = SL_from_term(term)
    omposs = set(np.abs(np.arange(L-S, L+S+0.1)))
    return omposs
##
def possible_J_from_term(term):
    # given a term symbol like '(1)1D', return a list of
    # possible values of J
    S, L = SL_from_term(term)
    #jvals = [abs(L - ms) for ms in np.arange(-S, S+1)]   wrong!
    jvals = np.arange(abs(L - S), L+S+1)
    return np.round(jvals, 1)
##
def possible_J_from_ASD_label(lbl):
    # Given a standard term symbol or a symbol like '2[9/2]',
    #   return a list of possible values of J
    try:
        jvals = possible_J_from_term(lbl)
    except:
        # non-standard label
        jvals = []
        regex = re.compile('(\d)\[(\d+(?:/2))\]')
        m = regex.search(lbl)
        if m:
            smult = int(m.group(1))
            jpart = halves_to_float(m.group(2))
            s = (smult - 1)/2
            for m in np.arange(-s, s+0.1):
                jvals.append(jpart + m)
        else:
            print_err('', f'not recognized as an ASD term label: {lbl}')
    return jvals
##
def unique_labels_exptl_terms(dfexpt, newcol='uTerm', verbose=False,
                              always=False):
    '''
    Assign unique, enumerative labels to experimental terms
    
    'dfexpt' is a DataFrame ultimately from NIST ASD
     dfexpt must have columns "Configuration", "Term", "J"
        and an energy column labeled "Level (cm-1)"
     Return a new DataFrame with added column 'newcol'
     Accept both standard term symbols and symbols like "2[5/2]"
    '''
    dfret = dfexpt.copy()
    Ecol = "Level (cm-1)"
    # Get the unique combinations of (Configuration, Term), ordered by energy
    uniqlbl = []
    oldterm = []
    for i, row in dfexpt.sort_values(Ecol).iterrows():
        lbl = (row.Configuration, row.Term)
        if lbl not in uniqlbl:
            uniqlbl.append(lbl)
            oldterm.append(lbl[1])
    newsymb = enumerative_prefix(oldterm, always=always)
    smap = {lbl: new for lbl, new in zip(uniqlbl, newsymb)}
    dfret['uTerm'] = [smap[lbl] for lbl in zip(dfexpt.Configuration, dfexpt.Term)]
    return dfret
##
def SL_from_term(term):
    # given a term symbol like '(1)1D' or 'a 3D*', return the values of S and L
    # in diatomic (linear) case, return S and Lambda and parity
    rx = re.compile('(\d+)([SPDFGHIKLMNOQRTUV])')
    rx_grk = re.compile('(\d+)([{:s}])'.format(''.join(GLAMBDA)))
    diatom = False
    lsymb = 'SPDFGHIKLMNOQRTUV'
    m = rx.search(term)
    if not m:
        # not recognized as an atomic term symbol; try diatomic
        m = rx_grk.search(term)
        if m:
            diatom = True
        else:
            print_err('', 'not recognized as a term symbol: {:s}'.format(term))
    mult = int(m.group(1))
    symb = m.group(2)
    S = (mult - 1)/2
    if diatom:
        L = GLAMBDA.index(symb)  # actually Lambda, not L
        # look for reflection parity as trailing '+' or '-'
        parity = term[-1]
        if parity not in ['+', '-']:
            parity = ''
        return S, L, parity
    else:
        L = lsymb.index(symb)
        return S, L
##
def atomic_term_multip(term):
    # given an atomic term symbol like '5D', 
    # return its total multiplicity
    S, L = SL_from_term(term)
    smult = 2 * S + 1
    lmult = 2 * L + 1
    tmult = smult * lmult
    return tmult
##
def molec_term_to_greek(term):
    # given a term descriptor like (1)2Pi, return a
    # term symbol with the Greek letter replacing 'Pi'
    grk = term
    for i, lbl in enumerate(LAMBDA):
        if lbl.lower() in term.lower():
            # replace it
            grk = term.lower().replace(lbl.lower(), GLAMBDA[i])
    return grk
##
def term_degeneracy(term):
    # total (unsplit) term degeneracy, atom or linear molecule
    grk = molec_term_to_greek(term) # will not affect atomic symbols
    slp = SL_from_term(grk)  # S, L/lambda, and possible reflection parity
    S = slp[0]
    sdegen = 2*S + 1
    if len(slp) == 3:
        # linear molecule
        lz = Lz_from_greek(grk)
        ldegen = 2
        if lz == 0:
            ldegen = 1
    else:
        # atom
        L = slp[1]
        ldegen = 2*L + 1
    degen = int(np.round(sdegen * ldegen))
    return degen
##
def plot_broadened_IR(dfs, labels, xmin=None, xmax=None, fwhm=0,
                     stick_color='b', conv_color='red', 
                     conv_alpha=0.2, figsize=None,
                     xlbl = 0.05, ylbl = 0.8):
    '''
    Vertically stacked plots of IR spectra, each described in a DataFrame
        within DataFrame:  X = 'Freq', Y = 'IR inten'
    Args:
        dfs: list of DataFrame
        labels: list of text to label each spectrum
        xmin: lower limit to plot (cm-1)
        xmax: upper limit
        fwhm: for Gaussian convolution (cm-1)
    '''
    xcol = 'Freq'
    ycol = 'IR inten'
    # plot limits
    if xmin is None:
        xmin = min([df[xcol].min() for df in dfs]) - 3 * fwhm
    if xmax is None:
        xmax = max([df[xcol].max() for df in dfs]) + 3 * fwhm
    if fwhm == 0:
        # expand range so sticks are not hidden by vertical axes
        d = 0.03 * (xmax - xmin)
        xmax += d
        xmin -= d
    
    nplot = len(dfs)
    # figure size
    if figsize is None:
        figsize = (8, 4*nplot)
    fig, axs = plt.subplots(nplot, sharex=True, figsize=figsize)
    if nplot == 1:
        axs = [axs]
    axs[-1].set_xlabel('cm$^{-1}$')
    
    for ax, df, lbl in zip(axs, dfs, labels):
        #ax.tick_params(axis='y', which='both', labelleft=False)
        ax.set_ylabel('km mol$^{-1}$')
        subdf = df[(df.Freq >= xmin) & (df.Freq <= xmax)]
        X = subdf[xcol]
        Y = subdf[ycol]
        ax.stem(X, Y, linefmt=stick_color+'-', markerfmt=' ', basefmt=' ')
        ymax = Y.max()
        if fwhm:
            # convolve with a gaussian
            xc, yc = convolve_peakshape(X, Y, fwhm)
            ax.plot(xc, yc, color=conv_color, alpha=conv_alpha)
            ax.fill_between(xc, yc, color=conv_color, alpha=conv_alpha)
            ymax = yc.max()
        # place the text label
        xpos = xlbl * (xmax-xmin) + xmin
        ypos = ylbl * ymax
        ax.text(xpos, ypos, lbl)
    plt.xlim([xmin, xmax])
    plt.show()
    return
##
def plot_broadened_sticks(Xin, Yin, xlabel, ylabel, xmin=None, xmax=None, fwhm=0,
                     stick_color='b', conv_color='red',
                     conv_alpha=0.2, figsize=None,
                     xlbl = 0.05, ylbl = 0.8, title=''):
    '''
    Plot a stick spectrum along with Gaussian convolution
    Args:
        Xin, Yin: data
        xlabel, ylabel: axis labels
        xmin: lower limit to plot
        xmax: upper limit
        fwhm: for Gaussian convolution
    Return x, y from the convolution
    '''
    # make numpy arrays
    X = np.array(Xin)
    Y = np.array(Yin)
    # plot limits
    if xmin is None:
        xmin = min(X) - 3 * fwhm
    if xmax is None:
        xmax = max(X) + 3 * fwhm
    if fwhm == 0:
        # expand horizontal range so sticks are not hidden by vertical axes
        d = 0.03 * (xmax - xmin)
        xmax += d
        xmin -= d
    
    # figure size
    if figsize is None:
        figsize = (8, 4)
    fig, ax = plt.subplots(figsize=figsize)
    ax.set_xlabel(xlabel)
    ax.set_ylabel(ylabel)
    idx = np.argwhere( (X >= xmin) & (X <= xmax) )
    ax.stem(X[idx], Y[idx], linefmt=stick_color+'-', markerfmt=' ', basefmt=' ')
    if fwhm:
        # convolve with a gaussian
        xc, yc = convolve_peakshape(X, Y, fwhm)
        idx = np.argwhere( (xc >= xmin) & (xc <= xmax) )
        x = xc[idx].flatten()
        y = yc[idx].flatten()
        ax.plot(x, y, color=conv_color, alpha=conv_alpha)
        ax.fill_between(x, y, color=conv_color, alpha=conv_alpha)
    plt.xlim([xmin, xmax])
    plt.ylim(bottom=0)
    plt.title(title)
    plt.show()
    return xc, yc
##
def read_NIST_AEL_csv(file, simple_config=False, bare_term=False,
                      show_limit=False, max_termE=np.inf):
    '''
    Read and cleanup a CSV file exported from the NIST ASD Levels form.
    Expect only these columns: /Configuration/Term/J/Level (cm-1)/
      'simple_config' removes everything but orbital type and pop
      'bare_term' removes leading letter labels but keeps odd '*' marker
      'show_limit' retains the ionization limit
    '''
    df = pd.read_csv(file, sep=',', comment='#').reset_index().fillna(np.nan)
    df = df.drop(columns=df.columns[-1])
    # rename columns
    df.columns = ['Config', 'Term', 'J', 'E']
    # remove all '=' and '"'
    df = df.replace('[="]', '', regex=True)
    if not show_limit:
        # remove any row with 'Term' containing 'Limit'
        df = df[df.Term.str.contains('Limit')==False]
    
    # deal with problematic entries under 'J'
    dfbad = df[df.J.str.contains('or')]
    if len(dfbad):
        print('*** Ambigous J values (see below).  Arbitrarily accepting first one!')
        displayDF(dfbad)
        df.J = df.J.apply(lambda x: x.split('or')[0])
    rx_J = re.compile('^[ /\d]+$')  # legal values for 'J'
    dfbad = df[df.J.apply(lambda x: False if rx_J.match(x) else True)]
    if len(dfbad):
        print('Some bad J values')
        displayDF(dfbad)
    # convert fractions to float
    df['J'] = df.J.apply(lambda x: halves_to_float(x))

    # deal with problematic entries under 'E'
    rx_E = re.compile('^[- \.\d+]+$')
    dfbad = df[df.E.apply(lambda x: False if rx_E.match(x) else True)]
    if len(dfbad):
        print('Some non-numerical E values--erasing any question marks')
        displayDF(dfbad)
        # remove any '?' trailing energies
        df['E'] = df['E'].str.replace(r'[?]', '', regex=True)
    # remove any rows that lack numerals under 'E'
    rx_numer = re.compile('\d')
    df = df[df.E.apply(lambda x: True if rx_numer.search(x) else False)]
    
    df = df.astype({'J': float})
    df = df.astype({'E': float})
    if simple_config:
        # remove parenthetical sub-terms (non-greedy)
        df['Config'] = df['Config'].str.replace(r'\(.*?\)', '', regex=True)
        # remove principal quantum numbers
        df['Config'] = df['Config'].str.replace(r'^\d|\.\d', '', regex=True)
        # remove any remaining periods
        df['Config'] = df['Config'].str.replace(r'\.', '', regex=True)
    
    # Remove any term that lacks levels below 'max_termE'
    #   unfortunately, term labels are not always unique
    okterm = set(df[df.E <= max_termE].Term.values)
    nlev = sum([len(possible_J_from_term(term)) for term in okterm])
    df = df[df.Term.isin(okterm)]
    if len(df) > nlev:
        # repeated term labels; remove erroneous levels
        #print('*** there are {:d} levels too many ***'.format(len(df) - nlev))
        for term in okterm:
            jvals = possible_J_from_term(term)
            # discard all but the lowest-energy matching (term, J) level
            for J in jvals:
                subdf = df[(df.Term == term) & (df.J == J)].sort_values('E')
                idx = subdf.index
                idx = idx[1:]
                df = df.drop(index=idx)
    
    if bare_term:
        # keep only the last word in term names
        df['Term'] = df['Term'].apply(lambda x: x.split()[-1])
    # remove numerals appended to term symbol, e.g. change '3P2' to '3P'
    rx_t = re.compile('(\d+[A-Z])\d+')
    df['Term'] = df['Term'].apply(lambda x: rx_t.sub(r'\1', x))
    
    return df
##
def rot_consts_PtH_fitting(Jvec, Evec, omega, nrot=4):
    # fit (J, E) data to eq (1) in McCarthy et al. (1993),
    #   without the delta-G(1/2) or the parity
    #   (i.e., my eq. (2) in the PtH spectroscopy paper)
    # 'nrot' is the number of plain constants to include, of [Bv, Dv, Hv, Lv]
    jvec = np.array(Jvec)
    evec = np.array(Evec)
    # discard any NaN energies
    idx = np.argwhere(~np.isnan(evec))
    jvec = jvec[idx].flatten()
    evec = evec[idx].flatten()
    nval = len(evec)
    if nval == 1:
        print('*** cannot fit constants to just one energy ')
        return None
    if min(jvec) < omega:
        s = 'Lowest J = {:.3f} < Omega = {:.3f}'.format(min(jvec), omega)
        print_err('', s)
    xvec = jvec * (jvec + 1) - omega**2
    # parameter vector is Pvec = [nrot, Tv, Bv, Dv, Hv, Lv],
    #   although not all of them might be present
    # choose initial values
    Tv = evec.min()
    Bv = (evec[1] - evec[0]) / (jvec[0] + 1) / 2
    Dv = Hv = Lv = 0
    Pvec = [nrot]
    Pvec += [Tv, Bv, Dv, Hv, Lv][:nrot+1]
    Pvec = np.array(Pvec)
    #ecal = rot_consts_PtH_compute_levels(xvec, Pvec)
    # inner functions
    def resid(pvec, xvec, evec):
        # return the mean residual
        # 'pvec' is the list of rotational constants
        nonlocal nrot
        # ensure that nrot is undamaged
        #   (by the scipy optimization routine)
        pvec[0] = nrot
        Ecalc = rot_consts_PtH_compute_levels(xvec, pvec)
        ediff = Ecalc - evec
        resid = (ediff**2).mean()
        return resid
    def print_results(result, pvec):
        # print the fitted constants
        nonlocal nrot
        Pfit = list(result.x)[1:]
        s = f'using nrot = {nrot}'
        if result.success:
            print('Constants fitted ' + s)
        else:
            print('** Failed to fit ** ' + s)
        print('Tv = {:.4f}'.format(Pfit.pop(0)))
        print('Bv = {:.4f}'.format(Pfit.pop(0)))
        if nrot > 1:
            print('Dv = {:.3e}'.format(Pfit.pop(0)))
        if nrot > 2:
            print('Hv = {:.1e}'.format(Pfit.pop(0)))
        if nrot > 3:
            print('Lv = {:.1e}'.format(Pfit.pop(0)))
    
    #print('Guess Pvec =', Pvec)
    result = optimize.minimize(resid, Pvec, args=(xvec, evec),
                              method='Nelder-Mead')
    # refine; don't overwrite nrot because it gets damaged
    Pvec = result.x.tolist()
    #print('Initially optim Pvec =', Pvec)
    result = optimize.minimize(resid, Pvec, args=(xvec, evec),
                              method='Nelder-Mead')
    if result.success:
        print_results(result, Pvec)
    else:
        print(result)
        print_results(result, Pvec)
    return result
##
def rot_consts_PtH_compute_levels(xvec, pvec, Jmax=False, omega=None):
    # return computed energy levels, given constants
    # 'xvec' is [j(j+1) - omega**2]
    # First element of 'pvec' is [nrot]
    #   'nrot' is number of constants in pvec[] from [Bv, Dv, Hv, Lv]
    #   they are listed in pvec[] in that order
    # If 'Jmax'==True, then 'xvec' is actually a max value of J and
    #   'omega' must also be specified
    
    # get parameter values from pvec
    Tv = Bv = Dv = Hv = Lv = 0
    plist = list(pvec)
    nrot = int(plist.pop(0))
    if (nrot + 2) != len(pvec):
        print(f'*** nrot = {nrot} but len(pvec) = {len(pvec)}')
    Tv = plist.pop(0)
    Bv = plist.pop(0)
    if nrot > 1:
        Dv = plist.pop(0)
    if nrot > 2:
        Hv = plist.pop(0)
    if nrot > 3:
        Lv = plist.pop(0)
    #print('>>>[Tv, Bv, Dv, Hv, Lv] =', [Tv, Bv, Dv, Hv, Lv])
    if Jmax:
        # construct xvec from Jmax and omega
        Jmax = xvec
        jvec = np.arange(omega, Jmax + 0.1)
        xvec = jvec * (jvec + 1) - omega**2
    # ycalc = Tv + Bv*xvec - Dv*xvec**2 + Hv*xvec**3 + Lv*xvec**4
    E = Tv + xvec * (Bv + xvec * (-Dv + xvec * (Hv + xvec * Lv)))
    return E
##
def confinterval(x, pct):
    # Given samples from a PDF, return the narrowest interval that includes the 
    #   specified fraction of the density (i.e., confidence interval).
    # args:  x    :the numpy array of samples (on a uniform grid)
    #        pct  :the requested fraction (as percent) 
    # return: lower limit, upper limit (indices into x)
    # algorithm is not clever
    xa = np.array(x)
    if (xa < 0).any():
        print_err('', 'cannot have probability < 0')
    xnorm = xa / xa.sum()  # normalize
    frac = float(pct) / 100
    nval = len(xnorm)
    ilo = -nval
    ihi = nval
    cumul = 1.1
    for i in range(nval-1):
        if cumul < frac:
            # subsequent intervals are no good
            break
        cumul = xnorm[i]
        for j in range(i+1, nval-1):
            cumul += xnorm[j]
            if cumul >= frac:
                # interval candidate
                if (j - i) < (ihi - ilo):
                    # this is the narrowest interval so far
                    ilo = i
                    ihi = j
                    break
    return ilo, ihi
##
def relative_difference(A, B, percent=False):
    # Compute the relative difference reld = (A - B)/A
    # If percent==True, return reld*100
    reld = (A - B) / A
    if percent:
        reld *= 100
    return reld
##
def find_degenerate(vals, tol, chain=True):
    # Given a list, return a list of lists of indices where
    #   each list is degenerate to within 'tol'
    # If 'chain', then a denerate group may extend farther than 'tol'
    idxl = []  # list of lists to return
    used = []  # values already considered
    idx = np.argsort(vals)
    vprev = vfloor = -np.inf
    grp = []
    for i in idx:
        v = vals[i]
        if chain:
            if (v - vprev) > tol:
                # save any old group
                if len(grp):
                    idxl.append(grp)
                # start a new group
                grp = [i]
            else:
                # add to current group
                grp.append(i)
            vprev = v
        else:
            # no chaining
            if (v - vfloor) > tol:
                # save any old group
                if len(grp):
                    idxl.append(grp)
                # start a new group
                grp = [i]
                vfloor = v
            else:
                # add to current group
                grp.append(i)
    # save the last group
    idxl.append(grp)
    return idxl
##
def average_degenerate(vals, tol, chain=True):
    # Given a list, group and average by similar values
    # Return:  list of averages, list of list of indices into vals[]
    a = np.array(vals)
    idxl = find_degenerate(a, tol=tol, chain=chain)
    avg = []
    for idx in idxl:
        avg.append(np.mean(a[idx]))
    return avg, idxl
##

############################################################
##
## general utility functions
##
def match_case_to_list(molec, mlist):
    # given a list of str 'mlist', return the value(s) that
    #   case-insensitively match 'molec'
    # Return scalar if only one match, else return a list
    match = []
    for m in mlist:
        if m.lower() == molec.lower():
            match.append(m)
    n = len(match)
    if n == 0:
        return None
    elif n == 1:
        return match[0]
    else:
        return match
##
def ensure_is_list(x):
    # if x is not a list, return the list [x]
    if not isinstance(x, list):
        x = [x]
    return x
##
def print_dict(d, nindent=0, sort=False):
    # print dict using indentation to make it more readable
    # also split up first-level lists
    # if there is only one value, put it on same line as key
    # sort the keys if 'sort' == True
    spre = '    ' * nindent
    keys = d.keys()
    if sort:
        keys = sorted(keys)
    for k in keys:
        v = d[k]
        kstr = f'{k} :'
        endstr = '\n'
        if pd.isnull(v) or np.isscalar(v) or (len(v) > 1):
            # print value on same line as key
            endstr = ' '
        print(spre + kstr, end=endstr)
        if isinstance(v, dict):
            # recursive call
            print_dict(v, nindent=nindent+1, sort=sort)
        elif isinstance(v, list):
            # print each top-level item on a separate line
            nv = len(v)
            for i, vel in enumerate(v):
                s = '    '
                if i == 0:
                    s = '    ['
                s += f'{vel}'
                if i == nv - 1:
                    s += ']'
                else:
                    s += ','
                print(s)
        else:
            vstr = f'    {v}'
            print(spre + vstr)
    return
##
def halves_to_float(jstr):
    # given a string like ' 2' or ' 3 /2', return the corresponding float
    jstring = str(jstr)  # ensure it is string
    if '/' in jstring:
        words = jstring.split('/')
        j = float(words[0]) / float(words[1])
    else:
        j = float(jstring)
    # round to nearest 0.5
    j = np.round(2*j)
    return j/2
##
def ordinal_halves_to_float(njstring):
    # given a string like '(2)2' or '(1)1/2' or '(7)0+', return a string with
    #   fraction converted to decimal
    regex = re.compile(r'(?:\(\d+\))?([/\d]+)')
    m = regex.match(njstring)
    sfrac = m.group(1)
    sfloat = njstring.replace(sfrac, str(halves_to_float(sfrac)))
    return sfloat
##
def dict_delkey(d, key):
    # delete one or more keys from a dict, if present
    # return the number of keys deleted
    # 'key' can be a list or a scalar (including string)
    ndel = 0
    if isinstance(key, list):
        for k in key:
            if dict_delkey(d, k):
                ndel += 1
    else:
        # simple key
        if key in d:
            del d[key]
            ndel = 1
    return ndel
##
def backfill_dict(defaults, userinput):
    # recursively install any missing entries in dict 'userinput',
    # based upon default values in dict 'defaults'
    # return False on non-dict arguments, else True
    if not (isinstance(defaults, dict) and isinstance(userinput, dict)):
        # this routine does not apply
        return False
    for key in defaults:
        if key in userinput:
            try:
                backfill_dict(defaults[key], userinput[key])
            except:
                # probably at the bottom of the structure
                pass
        else:
            userinput[key] = defaults[key]
    return True
##
def merge_dicts(old, new, path=None, silent=False):
    # merge two nested dicts, modifying 'old' directly
    # 'new' takes priority over 'old' when they conflict
    # https://stackoverflow.com/questions/7204805/how-to-merge-dictionaries-of-dictionaries
    # with modification for new > old
    if path is None:
        path = []
    for key in new:
        if key in old:
            if isinstance(old[key], dict) and isinstance(new[key], dict):
                merge_dicts(old[key], new[key], path + [str(key)])
            elif old[key] == new[key]:
                pass # values are the same
            else:
                # a conflict; use the 'new' value
                if not silent:
                    print('\t** Overriding with {} = {}'.format(path + [str(key)], new[key]))
                old[key] = new[key]
        else:
            old[key] = new[key]
    return old
##
def term_from_Latin(lbl):
    # convert term label from Latin alphabet to Greek equivalent
    mapping = {'S': SIGMA, 'P': PPI, 'D': DELTA, 'F': PHI, 'G': GAMMA}
    grk = ''
    for letter in lbl:
        try:
            c = mapping[letter]
        except KeyError:
            c = letter
        grk = grk + c
    return grk
##
def displayDF(df, maxrows=0):
    # try to "display" a DataFrame
    # or just print it
    try:
        if maxrows:
            # instead of default
            with pd.option_context('display.max_rows', maxrows):
                display(df)
        else:
            display(df)
    except NameError: 
        print(df)
    return
##
def JCAMP_MS(fname):
    # Read a mass spec file in JCAMP-DX format
    #  this is probably not robust
    # Return a dict with metadata, and two lists x, y
    rdict = {}
    with open(fname) as F:
        peakbuf = ''
        for line in F:
            if 'Name:' in line:
                rdict['name'] = line.split(' ', 1)[1].rstrip()
            elif 'InChIKey:' in line:
                rdict['inchikey'] = line.split()[1].rstrip()
            elif 'Formula:' in line:
                rdict['formula'] = line.split()[1].rstrip()
            elif 'MW:' in line:
                rdict['MW'] = float(line.split()[1])
            elif 'ExactMass:' in line:
                rdict['MW_exact'] = float(line.split()[1])
            elif 'NIST#:' in line:
                rdict['NISTnr'] = line.split()[1].rstrip()
            elif 'DB#:' in line:
                rdict['DBnr'] = line.split()[1].rstrip()
            elif 'Comments:' in line:
                rdict['comments'] = line.split(' ', 1)[1].rstrip()
            elif 'Num Peaks:' in line:
                rdict['npeaks'] = npeak = int(line.split()[-1])
            else:
                # assume data
                peakbuf += line.rstrip()
    pairs = peakbuf.split(';')
    mz = []
    height = []
    for pair in pairs:
        a = pair.strip().split()
        if len(a) == 2:
            mz.append(float(a[0]))
            height.append(float(a[1]))
    if len(mz) != npeak:
        print_err('', f'There are {len(pairs)} peaks but {npeak} were expected',
                  halt=False)
    return rdict, mz, height
##
getframe_expr = 'sys._getframe({}).f_code.co_name'
def print_err(errtype, name='', halt=True):
    # print a line about the error, with the name of the function
    if errtype == 'code':
        msg = '*** Unrecognized quantum chemistry code "{:s}"'.format(name)
    elif errtype == 'io':
        msg = '*** Unrecognized I/O code "{:s}"'.format(name)
    elif errtype == 'write_fail':
        msg = '*** Failure writing file "{:s}"'.format(name)
    elif errtype == 'open_fail':
        msg = '*** Failure opening file "{:s}"'.format(name)
    elif errtype == 'autodetect':
        msg = '*** Autodection failure'
        print(msg)
        1/0
    elif errtype == 'task':
        msg = '*** Unrecognized task "{:s}"'.format(name)
    elif errtype == 'atom_order':
        msg = '*** Inconsistent atom ordering ({:s})'.format(name)
    elif errtype == 'coordtype':
        msg = '*** Unrecognized type of coordinates "{:s}"'.format(name)
    elif errtype == 'maxiter':
        msg = '*** Maximum number of iterations ({:d}) exceeded'.format(name)
    elif errtype == 'option':
        msg = '*** Unrecognized option: "{:s}"'.format(name)
    else:
        # generic message
        if halt:
            msg = '*** Fatal error: "{:s}"'.format(name)
        else:
            msg = '*** Warning: "{:s}"'.format(name)
    # add name of calling routine
    caller = eval(getframe_expr.format(2))
    msg += ' in {:s}()'.format(caller)
    if halt:
        # print the message and exit
        #   may cause trouble with 'multiprocessing' module
        sys.exit(msg)
    else:
        # just print the message, then return
        print(msg)
    return
##
