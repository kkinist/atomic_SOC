
 Working directory              : /wrk/irikura/molpro.yXSQccQh5L/
 Global scratch directory       : /wrk/irikura/molpro.yXSQccQh5L/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.yXSQccQh5L/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,C SO-CI
                                                                                 ! Active space (4,4)
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={C};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
 {rhf;wf,nelec=6,sym=1,spin=2}
 
                                                                                 ! K shell closed but not frozen
 {multi
     closed,1,0;
     wf,sym=1,spin=2;state,3;
     wf,sym=1,spin=0;state,5;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=2;state,3; save,5203.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=0;state,5; save,5200.2}
 hlsdiag(4) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5203.2,5200.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:17:35  
 **********************************************************************************************************************************

 SHA1:             675817fde4514a4a933b69e420913a90cee4ef91
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:   5000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVTZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry C      S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry C      F aug-cc-pwCVTZ-DK     selected for orbital group  1


 PROGRAM * SEWARD (Integral evaluation for generally contracted gaussian basis sets)     Author: Roland Lindh, 1990

 Geometry written to block  1 of record 700

 Orientation using atomic masses  
 Molecule type: Atom
 User-specified symmetry elements: XYZ
 Symmetry elements: XYZ
 Rotational constants:       0.0000000      0.0000000      0.0000000 GHz  (calculated with average atomic masses)

 Point group  Ci  



 ATOMIC COORDINATES

 NR  ATOM    CHARGE       X              Y              Z

   1  C       6.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                    6
 NUMBER OF PRIMITIVE AOS:          81
 NUMBER OF SYMMETRY AOS:           71
 NUMBER OF CONTRACTIONS:           59   (   27Ag  +   32Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     1   (    1Ag  +    0Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     2.884 MB (compressed) written to integral file ( 19.0%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      160965.  Node maximum:      162825. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 4 5   6 7 8 910 4 5 6 7 8   910

 Eigenvalues of metric

         1 0.492E-02 0.191E-01 0.662E-01 0.181E+00 0.248E+00 0.248E+00 0.248E+00 0.248E+00
         2 0.161E-01 0.161E-01 0.161E-01 0.176E+00 0.176E+00 0.176E+00 0.415E+00 0.415E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.65      0.44
 REAL TIME  *         1.67 SEC
 DISK USED  *        29.03 MB (local),      166.25 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   2
 Initial beta  occupancy:   2   0

 NELEC=    6   SYM=1   MS2= 2   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1      -37.66479587     -37.66479587     0.00D+00     0.94D-01     0     0       0.00      0.01    start
   2      -37.70053776      -0.03574189     0.11D-01     0.19D-01     1     0       0.00      0.01    diag2
   3      -37.70157540      -0.00103765     0.24D-02     0.15D-02     2     0       0.00      0.01    diag2
   4      -37.70179414      -0.00021874     0.74D-03     0.11D-02     3     0       0.00      0.01    diag2
   5      -37.70180788      -0.00001374     0.17D-03     0.59D-03     4     0       0.01      0.02    diag2
   6      -37.70180810      -0.00000022     0.25D-04     0.10D-03     5     0       0.00      0.02    diag2
   7      -37.70180810      -0.00000000     0.24D-05     0.62D-05     6     0       0.00      0.02    diag2
   8      -37.70180810      -0.00000000     0.24D-06     0.11D-05     7     0       0.00      0.02    fixocc
   9      -37.70180810      -0.00000000     0.11D-07     0.19D-07     0     0       0.00      0.02    diag

 Final alpha occupancy:   2   2
 Final beta  occupancy:   2   0

 !RHF STATE 1.1 Energy                -37.701808101458
  RHF One-electron energy             -50.462984368560
  RHF Two-electron energy              12.761176267102
  RHF Kinetic energy                   37.802980609707
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.997323689650

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33053     1  1  s    0.99939
    2.1     2.00000    -0.70671     1  2  s    1.00864
    1.2     1.00000    -0.43308     1  1  px   0.99656
    2.2     1.00000    -0.43308     1  1  py   0.99595


 HOMO      2.2    -0.433078 =     -11.7847eV
 LUMO      3.2     0.012156 =       0.3308eV
 LUMO-HOMO         0.445234 =      12.1154eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.43       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.68      0.03      0.44
 REAL TIME  *         1.70 SEC
 DISK USED  *        29.44 MB (local),      168.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      54 (   25   29)

 State symmetry 1

 Number of active electrons:   4    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               6   (6 determinants, 16 intermediate states)

 State symmetry 2

 Number of active electrons:   4    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             5
 Number of CSFs:              12   (18 determinants, 36 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.983D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.710D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 4 6 3 5 1 3   5 4 6 2 1 5 3 6 4 2   1 2 6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.706D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.338D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.360D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 6   4 5 810 9 7 1 2 3 6   4 5 810 7 9 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.12500   0.12500   0.12500
 Weight factors for state symmetry  2:    0.12500   0.12500   0.12500   0.12500   0.12500
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    246
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -37.63663779     -37.68523360   -0.04859580    0.09826101 0.00048329 0.00000000  0.48E+00      0.14
   2    7   12    0    -37.68212621     -37.68269177   -0.00056556    0.03631985 0.00000369 0.00000000  0.28E-01      0.34
   3    5   10    0    -37.68269423     -37.68269425   -0.00000003    0.00023633 0.00000002 0.00000000  0.19E-03      0.48
   4    6   12    0    -37.68269425     -37.68269425    0.00000000    0.00000002 0.00000001 0.00000000  0.91E-07      0.58

 CONVERGENCE REACHED!  Final gradient:    0.00000004 ( 0.39E-07)
                       Final energy:    -37.68269425
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -37.718643267838
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377365
 One electron energy                           -50.42228658
 Two electron energy                            12.70364332
 Virial ratio                                    1.99827623
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -37.718643266884
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377381
 One electron energy                           -50.42228676
 Two electron energy                            12.70364350
 Virial ratio                                    1.99827623
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -37.718643266650
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377385
 One electron energy                           -50.42228681
 Two electron energy                            12.70364354
 Virial ratio                                    1.99827623
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -37.661124850659
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377365
 One electron energy                           -50.42228658
 Two electron energy                            12.76116173
 Virial ratio                                    1.99675393
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -37.661124850603
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377365
 One electron energy                           -50.42228658
 Two electron energy                            12.76116173
 Virial ratio                                    1.99675393
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -37.661124845831
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377381
 One electron energy                           -50.42228676
 Two electron energy                            12.76116192
 Virial ratio                                    1.99675392
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -37.661124844661
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377385
 One electron energy                           -50.42228681
 Two electron energy                            12.76116196
 Virial ratio                                    1.99675392
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -37.661124843389
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.78377389
 One electron energy                           -50.42228686
 Two electron energy                            12.76116201
 Virial ratio                                    1.99675392
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.999999999991
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000000017
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.339186635753
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999999
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000003
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.660813870509
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000009
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999999984
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.965183203004
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     0.999999999999
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.034816697350
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999999
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.695630161243
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000002
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999999999998
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     3.304369432142
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 5 6 4 2 1 5   3 6 4 2 1 3 5 6 4 2   1 4 5 3 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 2 1 3 7   910 8 5 6 4 2 1 3 9   7 810 4 5 6 1 3 2 1   3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.33680     1  1  s    0.99929
    2.1     1.95649    -0.70318     1  2  s    1.01874
    1.2     0.68117    -0.06553     1  1  pz   0.98769
    2.2     0.68117    -0.06553     1  1  px   0.98769
    3.2     0.68117    -0.06553     1  1  py   0.98769
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 0aa         -0.00000012     -0.00000110      0.98906210
 2 a0a         -0.00000301      0.98906210      0.00000110
 2 aa0          0.98906210      0.00000301      0.00000012
 0 aa2         -0.14749969     -0.00000045     -0.00000002
 0 a2a          0.00000045     -0.14749968     -0.00000016
 0 2aa          0.00000002      0.00000016     -0.14749968
 
 Energy:      -37.71864327    -37.71864327    -37.71864327
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 002         -0.07534288     -0.00000004      0.00000090     -0.00000053      0.80404345
 2 200          0.73399360      0.00000042     -0.00000063      0.00000015     -0.33677299
 2 0ab          0.00000007      0.00000000      0.00000013      0.69937252      0.00000047
 2 0ba         -0.00000007     -0.00000000     -0.00000013     -0.69937252     -0.00000047
 2 a0b          0.00000026      0.00000000      0.69937252     -0.00000013     -0.00000076
 2 b0a         -0.00000026     -0.00000000     -0.69937252      0.00000013      0.00000076
 2 ba0          0.00000040     -0.69937252     -0.00000000      0.00000000      0.00000000
 2 ab0         -0.00000040      0.69937252      0.00000000     -0.00000000     -0.00000000
 2 020         -0.65865065     -0.00000038     -0.00000026      0.00000038     -0.46727072
 0 220         -0.01123596     -0.00000001      0.00000013     -0.00000008      0.11990772
 0 022          0.10946109      0.00000006     -0.00000009      0.00000002     -0.05022320
 0 ba2         -0.00000006      0.10429803      0.00000000     -0.00000000     -0.00000000
 0 ab2          0.00000006     -0.10429803     -0.00000000      0.00000000      0.00000000
 0 b2a          0.00000004      0.00000000      0.10429802     -0.00000002     -0.00000011
 0 a2b         -0.00000004     -0.00000000     -0.10429802      0.00000002      0.00000011
 0 2ab         -0.00000001     -0.00000000     -0.00000002     -0.10429802     -0.00000007
 0 2ba          0.00000001      0.00000000      0.00000002      0.10429802      0.00000007
 0 202         -0.09822515     -0.00000006     -0.00000004      0.00000006     -0.06968444
 
 Energy:      -37.66112485    -37.66112485    -37.66112485    -37.66112484    -37.66112484
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.27      0.59      0.03      0.44
 REAL TIME  *         2.40 SEC
 DISK USED  *        29.75 MB (local),      169.84 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.71864327   2.0
    -37.71864327   2.0
    -37.71864327   2.0
    -37.66112485   6.0
    -37.66112485   6.0
    -37.66112485   6.0
    -37.66112484   6.0
    -37.66112484   6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                  6
 Maximum number of shells:             2
 Maximum number of spin couplings:     3

 Reference space:        6 conf        6 CSFs
 N elec internal:       13 conf       15 CSFs
 N-1 el internal:       16 conf       24 CSFs
 N-2 el internal:       10 conf       22 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.71864327
     2       -37.71864327
     3       -37.71864327

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      24

 Number of internal configurations:                    6
 Number of singly external configurations:           648
 Number of doubly external configurations:         12984
 Total number of contracted configurations:        13638
 Total number of uncontracted configurations:      16519

 Diagonal Coupling coefficients finished.               Storage:    174137 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186694 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.71864327    -0.00000000    -0.07700735  0.24D-01  0.11D-01     0.00
    1     2     2     1.00000000     0.00000000   -37.71864327    -0.00000000    -0.07681402  0.24D-01  0.11D-01     0.00
    1     3     3     1.00000000     0.00000000   -37.71864327    -0.00000000    -0.07664799  0.23D-01  0.11D-01     0.00
    2     1     1     1.03496736    -0.07685443   -37.79549770    -0.07685443    -0.00142437  0.14D-03  0.37D-03     0.02
    2     2     2     1.03490487    -0.07684866   -37.79549192    -0.07684866    -0.00142764  0.14D-03  0.36D-03     0.02
    2     3     3     1.03486190    -0.07684601   -37.79548928    -0.07684601    -0.00142773  0.14D-03  0.36D-03     0.02
    3     1     1     1.03840342    -0.07845142   -37.79709469    -0.00159698    -0.00005291  0.21D-04  0.11D-04     0.05
    3     2     2     1.03839893    -0.07845087   -37.79709414    -0.00160221    -0.00005324  0.20D-04  0.11D-04     0.05
    3     3     3     1.03839712    -0.07845054   -37.79709381    -0.00160453    -0.00005335  0.20D-04  0.11D-04     0.05
    4     1     1     1.03889011    -0.07851657   -37.79715984    -0.00006516    -0.00000433  0.12D-05  0.10D-05     0.07
    4     2     2     1.03889261    -0.07851656   -37.79715982    -0.00006569    -0.00000434  0.11D-05  0.11D-05     0.07
    4     3     3     1.03889507    -0.07851655   -37.79715982    -0.00006601    -0.00000434  0.11D-05  0.11D-05     0.07
    5     1     1     1.03895661    -0.07852229   -37.79716556    -0.00000572    -0.00000036  0.12D-06  0.83D-07     0.09
    5     2     2     1.03895652    -0.07852229   -37.79716556    -0.00000573    -0.00000036  0.12D-06  0.84D-07     0.09
    5     3     3     1.03895664    -0.07852229   -37.79716555    -0.00000573    -0.00000036  0.12D-06  0.84D-07     0.09
    6     1     1     1.03893685    -0.07852278   -37.79716605    -0.00000049    -0.00000004  0.99D-08  0.85D-08     0.12
    6     2     2     1.03893621    -0.07852278   -37.79716605    -0.00000049    -0.00000004  0.10D-07  0.85D-08     0.12
    6     3     3     1.03893654    -0.07852278   -37.79716605    -0.00000049    -0.00000004  0.10D-07  0.85D-08     0.12
    7     1     1     1.03893393    -0.07852282   -37.79716609    -0.00000005    -0.00000000  0.12D-08  0.62D-09     0.14
    7     2     2     1.03893401    -0.07852282   -37.79716609    -0.00000005    -0.00000000  0.12D-08  0.62D-09     0.14
    7     3     3     1.03893409    -0.07852282   -37.79716609    -0.00000005    -0.00000000  0.12D-08  0.62D-09     0.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%   7.1%   7.1%

 Initialization:   0.0%
 Other:           85.7%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 20//           0.9719520   0.0000000   0.0000000
 2/0/           0.0000000   0.9719520   0.0000000
 2//0           0.0000000   0.0000000   0.9719519
 02//          -0.1335457   0.0000000   0.0000000
 0/2/           0.0000000  -0.1335455   0.0000000
 0//2           0.0000000   0.0000000  -0.1335454

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.981019
 2           0.000000    0.981019    0.000000
 3           0.981019    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981019    0.000000    0.000000
 2           0.000000    0.981019    0.000000
 3           0.000000    0.000000    0.981019


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98101882 (fixed)   0.98108364 (relaxed)   0.98101882 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013215   -0.00000000   -0.00000999
 Singles      0.02510103   -0.03940693   -0.03982158
 Pairs        0.01383804   -0.03911590   -0.03869126
 Total        1.03907123   -0.07852282   -0.07852282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71864327
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89140027
 One electron energy                  -50.40681010
 Two electron energy                   12.60964400
 Virial quotient                       -0.99751305
 Correlation energy                    -0.07852282
 !MRCI STATE 1.1 Energy               -37.797166091585

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80023407 (Davidson, fixed reference)
 Cluster corrected energies           -37.80022329 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80023407 (Davidson, rotated reference)

 Cluster corrected energies           -37.79716609 (Pople, fixed reference)
 Cluster corrected energies           -37.79716609 (Pople, relaxed reference)
 Cluster corrected energies           -37.79716609 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98101878 (fixed)   0.98108360 (relaxed)   0.98101878 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013216   -0.00000000   -0.03765500
 Singles      0.02510112   -0.03940697   -0.03982158
 Pairs        0.01383804   -0.00000000   -0.00104624
 Total        1.03907131   -0.03940697   -0.07852282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71864327
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89140346
 One electron energy                  -50.40681268
 Two electron energy                   12.60964658
 Virial quotient                       -0.99751296
 Correlation energy                    -0.07852282
 !MRCI STATE 2.1 Energy               -37.797166091533

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80023408 (Davidson, fixed reference)
 Cluster corrected energies           -37.80022330 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80023408 (Davidson, rotated reference)

 Cluster corrected energies           -37.79716609 (Pople, fixed reference)
 Cluster corrected energies           -37.79716609 (Pople, relaxed reference)
 Cluster corrected energies           -37.79716609 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98101874 (fixed)   0.98108357 (relaxed)   0.98101874 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013216    0.00000000   -0.03765496
 Singles      0.02510119   -0.03940701   -0.03982158
 Pairs        0.01383804   -0.00000000   -0.00104628
 Total        1.03907139   -0.03940701   -0.07852282
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71864327
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89140604
 One electron energy                  -50.40681469
 Two electron energy                   12.60964860
 Virial quotient                       -0.99751289
 Correlation energy                    -0.07852282
 !MRCI STATE 3.1 Energy               -37.797166091384

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80023409 (Davidson, fixed reference)
 Cluster corrected energies           -37.80022331 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80023409 (Davidson, rotated reference)

 Cluster corrected energies           -37.79716609 (Pople, fixed reference)
 Cluster corrected energies           -37.79716609 (Pople, relaxed reference)
 Cluster corrected energies           -37.79716609 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6        1.03       700     1000      520     2100     2140     5203   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.47      0.19      0.59      0.03      0.44
 REAL TIME  *         2.62 SEC
 DISK USED  *        30.19 MB (local),      172.04 MB (total)
 SF USED    *         4.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80023407  AU                              
 SETTING HLSDIAG(2)     =       -37.80023408  AU                              
 SETTING HLSDIAG(3)     =       -37.80023409  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 5  Roots:    1   2   3   4   5
 Number of reference states: 5  Roots:    1   2   3   4   5

 Reference symmetry:                   1   Singlet 
 Number of electrons:                  6
 Maximum number of shells:             3
 Maximum number of spin couplings:     2

 Reference space:       12 conf       12 CSFs
 N elec internal:       19 conf       20 CSFs
 N-1 el internal:       16 conf       20 CSFs
 N-2 el internal:       10 conf       16 CSFs

 Number of electrons in valence space:                      4
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  4


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      54 (  25  29 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1       -37.66112485
     2       -37.66112485
     3       -37.66112485
     4       -37.66112484
     5       -37.66112484

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.86D+00
 Number of N-2 electron functions:      15
 Number of N-1 electron functions:      20

 Number of internal configurations:                   12
 Number of singly external configurations:           544
 Number of doubly external configurations:         11028
 Total number of contracted configurations:        11584
 Total number of uncontracted configurations:      12344

 Diagonal Coupling coefficients finished.               Storage:    175460 words, CPU-Time:      0.00 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186481 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.66112485    -0.00000000    -0.08555110  0.24D-01  0.14D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.66112485    -0.00000000    -0.08628041  0.24D-01  0.14D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.66112485    -0.00000000    -0.08641632  0.24D-01  0.14D-01     0.01
    1     4     4     1.00000000     0.00000000   -37.66112484    -0.00000000    -0.08619102  0.24D-01  0.14D-01     0.01
    1     5     5     1.00000000     0.00000000   -37.66112484    -0.00000000    -0.08558977  0.24D-01  0.14D-01     0.01
    2     1     1     1.03743896    -0.08568670   -37.74681155    -0.08568670    -0.00257763  0.27D-03  0.60D-03     0.03
    2     2     2     1.03759894    -0.08568337   -37.74680822    -0.08568337    -0.00260484  0.28D-03  0.62D-03     0.03
    2     3     3     1.03762910    -0.08565563   -37.74678047    -0.08565563    -0.00263535  0.28D-03  0.63D-03     0.03
    2     4     4     1.03759299    -0.08564337   -37.74676822    -0.08564337    -0.00263599  0.29D-03  0.62D-03     0.03
    2     5     5     1.03743897    -0.08564224   -37.74676708    -0.08564224    -0.00261341  0.28D-03  0.61D-03     0.03
    3     1     1     1.04242540    -0.08847909   -37.74960394    -0.00279238    -0.00012597  0.58D-04  0.21D-04     0.06
    3     2     2     1.04242095    -0.08847760   -37.74960245    -0.00279423    -0.00012684  0.59D-04  0.22D-04     0.06
    3     3     3     1.04241492    -0.08847750   -37.74960235    -0.00282188    -0.00012700  0.59D-04  0.22D-04     0.06
    3     4     4     1.04239604    -0.08847710   -37.74960195    -0.00283373    -0.00012496  0.57D-04  0.20D-04     0.06
    3     5     5     1.04238678    -0.08847441   -37.74959925    -0.00283217    -0.00012654  0.58D-04  0.20D-04     0.06
    4     1     1     1.04412168    -0.08864074   -37.74976559    -0.00016165    -0.00001241  0.68D-05  0.21D-05     0.09
    4     2     2     1.04411526    -0.08864041   -37.74976526    -0.00016281    -0.00001260  0.68D-05  0.22D-05     0.09
    4     3     3     1.04411539    -0.08864041   -37.74976526    -0.00016291    -0.00001260  0.69D-05  0.21D-05     0.09
    4     4     4     1.04411217    -0.08863950   -37.74976435    -0.00016240    -0.00001305  0.73D-05  0.21D-05     0.09
    4     5     5     1.04410472    -0.08863893   -37.74976378    -0.00016453    -0.00001337  0.74D-05  0.21D-05     0.09
    5     1     1     1.04450276    -0.08865969   -37.74978454    -0.00001896    -0.00000128  0.53D-06  0.22D-06     0.11
    5     2     2     1.04450341    -0.08865966   -37.74978451    -0.00001925    -0.00000131  0.53D-06  0.23D-06     0.11
    5     3     3     1.04450371    -0.08865966   -37.74978451    -0.00001925    -0.00000131  0.54D-06  0.23D-06     0.11
    5     4     4     1.04449676    -0.08865963   -37.74978448    -0.00002013    -0.00000131  0.52D-06  0.23D-06     0.11
    5     5     5     1.04449743    -0.08865960   -37.74978445    -0.00002067    -0.00000134  0.52D-06  0.23D-06     0.11
    6     1     1     1.04453240    -0.08866134   -37.74978619    -0.00000165    -0.00000011  0.38D-07  0.19D-07     0.14
    6     2     2     1.04453229    -0.08866134   -37.74978619    -0.00000167    -0.00000012  0.38D-07  0.19D-07     0.14
    6     3     3     1.04453209    -0.08866134   -37.74978619    -0.00000168    -0.00000011  0.38D-07  0.19D-07     0.14
    6     4     4     1.04453258    -0.08866134   -37.74978618    -0.00000170    -0.00000012  0.40D-07  0.19D-07     0.14
    6     5     5     1.04453215    -0.08866133   -37.74978618    -0.00000173    -0.00000012  0.41D-07  0.20D-07     0.14
    7     1     1     1.04454470    -0.08866147   -37.74978632    -0.00000013    -0.00000001  0.44D-08  0.13D-08     0.17
    7     2     2     1.04454457    -0.08866147   -37.74978632    -0.00000013    -0.00000001  0.45D-08  0.13D-08     0.17
    7     3     3     1.04454455    -0.08866147   -37.74978632    -0.00000013    -0.00000001  0.45D-08  0.14D-08     0.17
    7     4     4     1.04454404    -0.08866147   -37.74978632    -0.00000013    -0.00000001  0.48D-08  0.14D-08     0.17
    7     5     5     1.04454385    -0.08866147   -37.74978631    -0.00000014    -0.00000001  0.50D-08  0.15D-08     0.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   5.9%
 S   0.0%   0.0%
 P   5.9%  11.8%  17.6%

 Initialization:   0.0%
 Other:           58.8%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0\           0.0000000   0.9692177   0.0000000  -0.0000000   0.0000000
 20/\          -0.0000000  -0.0000000   0.9692177  -0.0000000   0.0000000
 2/\0           0.9692177  -0.0000000   0.0000000  -0.0000000   0.0000000
 2002           0.0000000   0.0000000   0.0000000  -0.1661842   0.7736940
 2200           0.0000000   0.0000000   0.0000000   0.7531688  -0.2429460
 2020           0.0000000   0.0000000   0.0000000  -0.5869439  -0.5308091
 02/\           0.0000000  -0.0000000  -0.1340603  -0.0000000  -0.0000000
 0/2\           0.0000000  -0.1340599  -0.0000000   0.0000000  -0.0000000
 0/\2          -0.1340598   0.0000000   0.0000000  -0.0000000   0.0000000
 0220          -0.0000000  -0.0000000  -0.0000000  -0.0229918   0.1070243
 0022          -0.0000000  -0.0000000  -0.0000000   0.1041709  -0.0335954
 0202          -0.0000000  -0.0000000  -0.0000000  -0.0811903  -0.0734120

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \0/\  10.1     0.0000000   0.0000000  -0.0781638   0.0000000  -0.0000000
 \/\0  13.1    -0.0000000  -0.0000000  -0.0000000   0.0770134   0.0136602
 \0/\  11.1    -0.0000000  -0.0000000  -0.0000000  -0.0266768  -0.0735263
 \/0\  14.1     0.0000000  -0.0662836   0.0000000   0.0000000   0.0000000
 \/\0  14.1    -0.0662835  -0.0000000   0.0000000  -0.0000000   0.0000000
 \/0\  12.1    -0.0000000  -0.0000000  -0.0000000   0.0545177  -0.0560849

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.978390   -0.000000   -0.000000   -0.000000
 2           0.000000   -0.000000    0.978390    0.000000   -0.000000
 3           0.000000   -0.000000    0.000000    0.978390   -0.000000
 4           0.971569    0.000000    0.000000    0.000000   -0.115336
 5           0.115336   -0.000000    0.000000    0.000000    0.971569

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.978390   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.978390    0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.978390    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.978391    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.978391


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97839024 (fixed)   0.97844515 (relaxed)   0.97839024 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011225   -0.00000000   -0.04304732
 Singles      0.02694944   -0.04370152   -0.04411980
 Pairs        0.01760026   -0.00000000   -0.00149435
 Total        1.04466195   -0.04370152   -0.08866147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66112485
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84231825
 One electron energy                  -50.30849308
 Two electron energy                   12.55870676
 Virial quotient                       -0.99755480
 Correlation energy                    -0.08866147
 !MRCI STATE 1.1 Energy               -37.749786317268

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75374611 (Davidson, fixed reference)
 Cluster corrected energies           -37.75373572 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75374611 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176523 (Pople, fixed reference)
 Cluster corrected energies           -37.75176004 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176523 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97839030 (fixed)   0.97844521 (relaxed)   0.97839030 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011225    0.00000000   -0.04304728
 Singles      0.02694943   -0.04370157   -0.04411978
 Pairs        0.01760014   -0.00000000   -0.00149441
 Total        1.04466182   -0.04370157   -0.08866147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66112485
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84232221
 One electron energy                  -50.30849625
 Two electron energy                   12.55870994
 Virial quotient                       -0.99755470
 Correlation energy                    -0.08866147
 !MRCI STATE 2.1 Energy               -37.749786316892

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75374610 (Davidson, fixed reference)
 Cluster corrected energies           -37.75373570 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75374610 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176522 (Pople, fixed reference)
 Cluster corrected energies           -37.75176003 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176522 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97839032 (fixed)   0.97844522 (relaxed)   0.97839032 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011224    0.00000000   -0.04304733
 Singles      0.02694939   -0.04370153   -0.04411976
 Pairs        0.01760016   -0.00000000   -0.00149439
 Total        1.04466179   -0.04370153   -0.08866147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66112484
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84232304
 One electron energy                  -50.30849674
 Two electron energy                   12.55871042
 Virial quotient                       -0.99755468
 Correlation energy                    -0.08866147
 !MRCI STATE 3.1 Energy               -37.749786316833

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75374610 (Davidson, fixed reference)
 Cluster corrected energies           -37.75373570 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75374610 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176522 (Pople, fixed reference)
 Cluster corrected energies           -37.75176003 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176522 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.97156866 (fixed)   0.97844546 (relaxed)   0.97839055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011225   -0.00000000   -0.04812072
 Singles      0.02694893   -0.04370161   -0.04411980
 Pairs        0.01760011    0.00530004    0.00357905
 Total        1.04466129   -0.03840157   -0.08866147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66112485
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84230974
 One electron energy                  -50.30848802
 Two electron energy                   12.55870171
 Virial quotient                       -0.99755503
 Correlation energy                    -0.08866146
 !MRCI STATE 4.1 Energy               -37.749786315447

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75374605 (Davidson, fixed reference)
 Cluster corrected energies           -37.75373566 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75374605 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176520 (Pople, fixed reference)
 Cluster corrected energies           -37.75176001 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176520 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97156875 (fixed)   0.97844555 (relaxed)   0.97839064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011224   -0.00000000   -0.00030962
 Singles      0.02694882   -0.04370159   -0.04411977
 Pairs        0.01760002   -0.04464639   -0.04423209
 Total        1.04466109   -0.08834798   -0.08866147
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66112484
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84231025
 One electron energy                  -50.30848875
 Two electron energy                   12.55870243
 Virial quotient                       -0.99755501
 Correlation energy                    -0.08866147
 !MRCI STATE 5.1 Energy               -37.749786314814

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75374603 (Davidson, fixed reference)
 Cluster corrected energies           -37.75373564 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75374603 (Davidson, rotated reference)

 Cluster corrected energies           -37.75176519 (Pople, fixed reference)
 Cluster corrected energies           -37.75176000 (Pople, relaxed reference)
 Cluster corrected energies           -37.75176519 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.08       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.50       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.71      0.23      0.19      0.59      0.03      0.44
 REAL TIME  *         2.91 SEC
 DISK USED  *        30.65 MB (local),      174.38 MB (total)
 SF USED    *         5.24 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -37.75374611  AU                              
 SETTING HLSDIAG(5)     =       -37.75374610  AU                              
 SETTING HLSDIAG(6)     =       -37.75374610  AU                              
 SETTING HLSDIAG(7)     =       -37.75374605  AU                              
 SETTING HLSDIAG(8)     =       -37.75374603  AU                              


        HLSDIAG
    -37.80023407
    -37.80023408
    -37.80023409
    -37.75374611
    -37.75374610
    -37.75374610
    -37.75374605
    -37.75374603
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

  

 PROGRAM * SEWLS (Spin-orbit & spin-spin integral evaluation)

 Modified from original SEWARD code by Alexander Mitrushchenkov

 Original version: December 2001, 2D-derivatives modifications: Stuttgart 2004
  
  
 The following spin-orbit components are calculated:
  
    Operator      Symmetry
  
      LSX            1
      LSY            1
      LSZ            1
  
 Integral cutoff:   0.10E-09

 Time for Seward_LS:       0.17 sec

         940665. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.18 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.00 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.797166    -37.797166    -37.797166
 Replaced energies:    -37.800234    -37.800234    -37.800234

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:    -37.749786    -37.749786    -37.749786    -37.749786    -37.749786
 Replaced energies:    -37.753746    -37.753746    -37.753746    -37.753746    -37.753746



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80023409

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00       8.98       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       8.98       0.00       0.00       0.00     -10.70

    2   2.1  1.0  1.0       0.00       0.00       0.00      -8.98      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      12.70      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -12.70       0.00      -8.98      -0.00       0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00      -8.98      -0.00       0.00       0.00       0.00       0.00       8.98       0.00       0.00
                           -0.00       0.00       8.98       0.00       0.00       0.00       0.00       0.00       8.98      -0.00

    5   2.1  1.0  0.0       8.98      -0.00      -0.00       0.00       0.00       0.00      -8.98      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     -15.13

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -8.98      -0.00      -0.00      -0.00      -0.00       0.00      -8.98      -0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00      -8.98      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       8.98       0.00      -0.00      -0.00      10.70

    8   2.1  1.0 -1.0       0.00       0.00       0.00       8.98      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00     -12.70       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -8.98      -0.00      -0.00       0.00      12.70      -0.00       0.00

   10   1.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00   10202.93
                           10.70       0.00       0.00       0.00      15.13       0.00     -10.70      -0.00      -0.00       0.00

   11   2.1  0.0  0.0     -10.70      -0.00       0.00       0.00       0.00       0.00     -10.70      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     -15.13      -0.00      -0.00       0.00      -0.00

   12   3.1  0.0  0.0       0.00      10.70       0.00       0.00       0.00       0.00       0.00      10.70       0.00       0.00
                            0.00       0.00      10.70       0.00       0.00       0.00      -0.00      -0.00     -10.70      -0.00

   13   4.1  0.0  0.0       0.00      -0.00       2.59       0.00       0.00       0.00       0.00      -0.00       2.59       0.00
                            0.00       9.17      -0.00     -16.62      -0.00       0.00      -0.00      -9.17       0.00      -0.00

   14   5.1  0.0  0.0       0.00       0.00     -12.08       0.00       0.00       0.00       0.00       0.00     -12.08       0.00
                            0.00       8.29       0.00       5.36       0.00       0.00      -0.00      -8.29      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0     -10.70       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

    2   2.1  1.0  1.0      -0.00      10.70      -0.00       0.00
                           -0.00      -0.00      -9.17      -8.29

    3   3.1  1.0  1.0       0.00       0.00       2.59     -12.08
                            0.00     -10.70       0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      -0.00      16.62      -5.36

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                           15.13      -0.00      -0.00      -0.00

    7   1.1  1.0 -1.0     -10.70       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    8   2.1  1.0 -1.0      -0.00      10.70      -0.00       0.00
                            0.00       0.00       9.17       8.29

    9   3.1  1.0 -1.0       0.00       0.00       2.59     -12.08
                           -0.00      10.70      -0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   10202.93       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   10202.93       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   10202.94       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   10202.95
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -37.80023409 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      12.703      -0.000       0.000

    2    1  |1 1>+              0.000       0.001       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -12.703      -0.000       0.000      -0.000     -12.703

    1    1  |1 0>               0.000       0.000       0.000       0.003       0.000       0.000       0.000     -12.703
                                0.000       0.000      12.703       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000       0.001       0.000      12.703       0.000
                               -0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -12.703      -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      12.703       0.000       0.003       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000     -12.703       0.000       0.000       0.000       0.001
                               -0.000       0.000      12.703       0.000      -0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                               -0.000     -12.703       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      15.135       0.000      15.130       0.000

    2    1  |0 0>             -15.127      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000     -15.127       0.000       0.000

    3    1  |0 0>               0.000      15.135       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000       3.669       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -16.624      -0.000       0.000       0.000      12.965

    5    1  |0 0>               0.000       0.000     -17.079       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       5.361       0.000       0.000       0.000      11.723

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000     -15.127       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.000      -0.000      15.135      -0.000       0.000
                               12.703       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000       3.669     -17.079
                                0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000      16.624      -5.361

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -15.135       0.000      -0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.127      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.130      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000     -12.965     -11.723

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000     -15.130       0.000      -0.000

    1    1  |0 0>               0.000   10202.932       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   10202.934       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   10202.935       0.000       0.000
                               15.130      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   10202.945       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   10202.949
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80034984    -0.00011575      -25.40      0.00000000        0.00      0.0000
    2   -37.80029196    -0.00005787      -12.70      0.00005787       12.70      0.0016
    3   -37.80029196    -0.00005787      -12.70      0.00005788       12.70      0.0016
    4   -37.80029196    -0.00005787      -12.70      0.00005788       12.70      0.0016
    5   -37.80017641     0.00005768       12.66      0.00017343       38.06      0.0047
    6   -37.80017641     0.00005768       12.66      0.00017343       38.06      0.0047
    7   -37.80017641     0.00005768       12.66      0.00017343       38.06      0.0047
    8   -37.80017641     0.00005768       12.66      0.00017343       38.06      0.0047
    9   -37.80017640     0.00005768       12.66      0.00017343       38.06      0.0047
   10   -37.75374591     0.04648818    10202.98      0.04660393    10228.38      1.2682
   11   -37.75374589     0.04648819    10202.98      0.04660394    10228.38      1.2682
   12   -37.75374589     0.04648820    10202.98      0.04660395    10228.38      1.2682
   13   -37.75374585     0.04648824    10202.99      0.04660399    10228.39      1.2682
   14   -37.75374583     0.04648826    10202.99      0.04660401    10228.40      1.2682

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.00000000 -0.00000000  0.70706717 -0.00000000 -0.00000000  0.00000000  0.70714483 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.70708822  0.00000000 -0.00000000 -0.00000000  0.70712378 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.57737146  0.00000000  0.00000000 -0.00000000  0.78235130  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.57732804  0.00000000  0.00000000 -0.00000000  0.18888403 -0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000060 -0.00000000  0.00000000 -0.00000000 -0.00000145
                           0.00000000  0.00000000  0.00000000  0.70712784  0.00000000  0.00000000  0.00000000  0.70708416

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.70714639 -0.00000000  0.00000000 -0.00000000 -0.70706561  0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000000  0.00000000 -0.00000000 -0.00000145
                           0.00000000 -0.00000000 -0.00000000 -0.70708572  0.00000000  0.00000000  0.00000000  0.70712628

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.57735131  0.00000000  0.00000000 -0.00000000  0.59350219  0.00000000  0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.70712534  0.00000000 -0.00000000  0.00000000 -0.70708667  0.00000000  0.00000000

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000  0.00000000  0.00000000  0.00210009
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000  0.00209936 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000028 -0.00000000  0.00000000  0.00000000 -0.00210010  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000061 -0.00000000 -0.00000000  0.00000000  0.00016532  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000023 -0.00000000  0.00000000  0.00000000  0.00209335  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.00000000 -0.00000000 -0.00148447 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.00148523 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.23359301  0.00000000  0.00000000 -0.00000000  0.00036877 -0.00167409
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.79436277  0.00000000 -0.00000000 -0.00000000  0.00163405 -0.00051754

   2    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00148523  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00148446  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00148475  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.56072959 -0.00000000 -0.00000000 -0.00000000 -0.00126625 -0.00115703

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00148475  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.99999779  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.99999780  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.99999779 -0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00209337  0.00000000 -0.00000000  0.00000000  0.99998414  0.00522601
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00016433  0.00000000 -0.00000000  0.00000000 -0.00522602  0.99998414
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80034984     -0.00011575      -25.40      0.00000000        0.00      0.0000
     2   1    -37.80029196     -0.00005787      -12.70      0.00005787       12.70      0.0016
     3   1    -37.80029196     -0.00005787      -12.70      0.00005788       12.70      0.0016
     4   1    -37.80029196     -0.00005787      -12.70      0.00005788       12.70      0.0016
     5   1    -37.80017641      0.00005768       12.66      0.00017343       38.06      0.0047
     6   1    -37.80017641      0.00005768       12.66      0.00017343       38.06      0.0047
     7   1    -37.80017641      0.00005768       12.66      0.00017343       38.06      0.0047
     8   1    -37.80017641      0.00005768       12.66      0.00017343       38.06      0.0047
     9   1    -37.80017640      0.00005768       12.66      0.00017343       38.06      0.0047
    10   1    -37.75374591      0.04648818    10202.98      0.04660393    10228.38      1.2682
    11   1    -37.75374589      0.04648819    10202.98      0.04660394    10228.38      1.2682
    12   1    -37.75374589      0.04648820    10202.98      0.04660395    10228.38      1.2682
    13   1    -37.75374585      0.04648824    10202.99      0.04660399    10228.39      1.2682
    14   1    -37.75374583      0.04648826    10202.99      0.04660401    10228.40      1.2682

 E0 =    -37.80023409 is the energy of the lowest zeroth-order state
 E1 =    -37.80034984 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.00000000 -0.00000000  0.70706717 -0.00000000 -0.00000000  0.00000000  0.70714483 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.70708822  0.00000000 -0.00000000 -0.00000000  0.70712378 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.57737146  0.00000000  0.00000000 -0.00000000  0.78235130  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.57732804  0.00000000  0.00000000 -0.00000000  0.18888403 -0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000060 -0.00000000  0.00000000 -0.00000000 -0.00000145
                                0.00000000  0.00000000  0.00000000  0.70712784  0.00000000  0.00000000  0.00000000  0.70708416

  6  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.70714639 -0.00000000  0.00000000 -0.00000000 -0.70706561  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000060 -0.00000000  0.00000000 -0.00000000 -0.00000145
                                0.00000000 -0.00000000 -0.00000000 -0.70708572  0.00000000  0.00000000  0.00000000  0.70712628

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.57735131  0.00000000  0.00000000 -0.00000000  0.59350219  0.00000000  0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.70712534  0.00000000 -0.00000000  0.00000000 -0.70708667  0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000040  0.00000000  0.00000000  0.00000000  0.00210009
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000 -0.00000011  0.00000000 -0.00000000  0.00000000  0.00209936 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000028 -0.00000000  0.00000000  0.00000000 -0.00210010  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.00000061 -0.00000000 -0.00000000  0.00000000  0.00016532  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000023 -0.00000000  0.00000000  0.00000000  0.00209335  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.00000000 -0.00000000 -0.00148447 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.00148523 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |1 1>+       0.23359301  0.00000000  0.00000000 -0.00000000  0.00036877 -0.00167409
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.79436277  0.00000000 -0.00000000 -0.00000000  0.00163405 -0.00051754

  5  1     2    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00148523  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00148446  0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00148475  0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.56072959 -0.00000000 -0.00000000 -0.00000000 -0.00126625 -0.00115703

  9  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00148475  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.99999779  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000002  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.99999780  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.99999779 -0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00209337  0.00000000 -0.00000000  0.00000000  0.99998414  0.00522601
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>        0.00016433  0.00000000 -0.00000000  0.00000000 -0.00522602  0.99998414
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+         0.00%    0.00%   49.99%    0.00%    0.00%    0.00%   50.01%    0.00%
  2  1     2    1  |1 1>+         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        33.34%    0.00%    0.00%    0.00%   61.21%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         33.33%    0.00%    0.00%    0.00%    3.57%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  6  1     3    1  |1 0>          0.00%    0.00%   50.01%    0.00%    0.00%    0.00%   49.99%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  8  1     2    1  |1 1>-        33.33%    0.00%    0.00%    0.00%   35.22%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         5.46%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>         63.10%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-        31.44%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%  100.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       43.85       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7        1.50       700     1000      520     2100     2140     5203     5200   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *         3.44      1.73      0.23      0.19      0.59      0.03      0.44
 REAL TIME  *         4.82 SEC
 DISK USED  *        30.68 MB (local),      250.40 MB (total)
 SF USED    *        17.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -37.753745827769

              CI              CI           MULTI         RHF-SCF
    -37.74978631    -37.79716609    -37.66112484    -37.70180810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
