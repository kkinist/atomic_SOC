
 Working directory              : /wrk/irikura/molpro.5gLASTLh36/
 Global scratch directory       : /wrk/irikura/molpro.5gLASTLh36/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.5gLASTLh36/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
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
         weight,all,99
     wf,sym=1,spin=0;state,5;
         weight,all,1
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
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   C SO-CI                                                                                                                                                       
  (4 PROC) 64 bit mpp version                                                            DATE: 16-Feb-24          TIME: 13:23:08  
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

     3.146 MB (compressed) written to integral file ( 17.1%)

     Node minimum: 0.524 MB, node maximum: 0.786 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     161145.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     161145      RECORD LENGTH: 524288

 Memory used in sort:       0.72 MW

 SORT1 READ     1711873. AND WROTE       35932. INTEGRALS IN      1 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC
 SORT2 READ      173263. AND WROTE      810039. INTEGRALS IN     10 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

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
 CPU TIMES  *         0.63      0.43
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
   1      -37.66479587     -37.66479587     0.00D+00     0.94D-01     0     0       0.01      0.01    start
   2      -37.70053776      -0.03574189     0.11D-01     0.19D-01     1     0       0.00      0.01    diag2
   3      -37.70157540      -0.00103765     0.24D-02     0.15D-02     2     0       0.00      0.01    diag2
   4      -37.70179414      -0.00021874     0.74D-03     0.11D-02     3     0       0.00      0.01    diag2
   5      -37.70180788      -0.00001374     0.17D-03     0.59D-03     4     0       0.00      0.01    diag2
   6      -37.70180810      -0.00000022     0.25D-04     0.10D-03     5     0       0.00      0.01    diag2
   7      -37.70180810      -0.00000000     0.24D-05     0.62D-05     6     0       0.01      0.02    diag2
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
    1.2     1.00000    -0.43308     1  1  py   0.99595
    2.2     1.00000    -0.43308     1  1  px   0.99656


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
 CPU TIMES  *         0.65      0.02      0.43
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
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.338D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.706D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.360D-01 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 2 1 3 6   4 5 810 9 7 1 2 3 6   4 5 810 7 9 3 2 1 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.32781   0.32781   0.32781
 Weight factors for state symmetry  2:    0.00331   0.00331   0.00331   0.00331   0.00331
 
 Number of orbital rotations:  138  ( 1 closed/active, 25 closed/virtual, 0 active/active, 112 active/virtual )
 Total number of variables:    246
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    7   12    0    -37.65758780     -37.71965245   -0.06206466    0.13540199 0.00049686 0.00000000  0.50E+00      0.13
   2    7   12    0    -37.71749733     -37.71806981   -0.00057248    0.03848358 0.00000064 0.00000000  0.27E-01      0.36
   3    5   10    0    -37.71807245     -37.71807248   -0.00000003    0.00024851 0.00000001 0.00000000  0.19E-03      0.52
   4    2    4    0    -37.71807248     -37.71807248    0.00000000    0.00000001 0.00000000 0.00000000  0.15E-07      0.58

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.28E-08)
                       Final energy:    -37.71807248
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy               -37.719045493752
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919090
 One electron energy                           -50.47357320
 Two electron energy                            12.75452771
 Virial ratio                                    1.99735199
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy               -37.719045493528
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919092
 One electron energy                           -50.47357322
 Two electron energy                            12.75452772
 Virial ratio                                    1.99735199
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy               -37.719045493497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919092
 One electron energy                           -50.47357322
 Two electron energy                            12.75452773
 Virial ratio                                    1.99735199
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy               -37.660275217748
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919090
 One electron energy                           -50.47357320
 Two electron energy                            12.81329799
 Virial ratio                                    1.99579801
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy               -37.660275217743
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919090
 One electron energy                           -50.47357320
 Two electron energy                            12.81329799
 Virial ratio                                    1.99579801
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy               -37.660275217232
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919092
 One electron energy                           -50.47357322
 Two electron energy                            12.81329800
 Virial ratio                                    1.99579801
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy               -37.660275217160
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919092
 One electron energy                           -50.47357322
 Two electron energy                            12.81329800
 Virial ratio                                    1.99579801
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy               -37.660275217002
 Nuclear energy                                  0.00000000
 Kinetic energy                                 37.81919092
 One electron energy                           -50.47357322
 Two electron energy                            12.81329801
 Virial ratio                                    1.99579801
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     0.000000001597
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.999999999871
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.200221461935
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.999999999144
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000000000309
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.799785149202
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.999999998406
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     0.000000000129
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     1.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.812354791443
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000856
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     3.999999999731
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.187639404960
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999999999997
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     4.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.987423746623
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000000001
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     0.999999999961
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.012575445838
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 4 3 5 2 6 1 4   5 3 2 6 1 4 3 5 2 6   1 5 3 4 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 1 2 3 1 2 4  10 8 6 7 9 5 3 1 2 4   7 910 8 6 5 1 2 3 1   2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.32145     1  1  s    0.99925
    2.1     1.95585    -0.69558     1  2  s    1.01546
    1.2     0.68138    -0.05649     1  1  py   0.99965
    2.2     0.68138    -0.05649     1  1  pz   0.99965
    3.2     0.68138    -0.05649     1  1  px   0.99965
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 a0a          0.98890114     -0.00000000      0.00000000
 2 0aa          0.00000000      0.00003948      0.98890114
 2 aa0          0.00000000      0.98890114     -0.00003948
 0 a2a         -0.14857504      0.00000000      0.00000000
 0 aa2         -0.00000000     -0.14857504      0.00000593
 0 2aa          0.00000000     -0.00000593     -0.14857504
 
 Energy:      -37.71904549    -37.71904549    -37.71904549
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 020          0.00000000     -0.04527442      0.00000001      0.00000552      0.80616408
 2 200          0.00000000      0.72079579     -0.00000014     -0.00000259     -0.36387325
 2 b0a         -0.69925870     -0.00000000      0.00000000     -0.00000000      0.00000000
 2 a0b          0.69925870      0.00000000     -0.00000000      0.00000000     -0.00000000
 2 ab0         -0.00000000      0.00000013      0.69925870      0.00001181     -0.00000001
 2 ba0          0.00000000     -0.00000013     -0.69925870     -0.00001181      0.00000001
 2 0ab          0.00000000      0.00000010     -0.00001181      0.69925870     -0.00000478
 2 0ba         -0.00000000     -0.00000010      0.00001181     -0.69925870      0.00000478
 2 002          0.00000000     -0.67552137      0.00000012     -0.00000293     -0.44229085
 0 202          0.00000000     -0.00680215      0.00000000      0.00000083      0.12112016
 0 022          0.00000000      0.10829421     -0.00000002     -0.00000039     -0.05466925
 0 b2a          0.10505842     -0.00000000      0.00000000     -0.00000000      0.00000000
 0 a2b         -0.10505842      0.00000000     -0.00000000      0.00000000     -0.00000000
 0 ab2         -0.00000000     -0.00000002     -0.10505842     -0.00000177      0.00000000
 0 ba2          0.00000000      0.00000002      0.10505842      0.00000177     -0.00000000
 0 2ab         -0.00000000     -0.00000001      0.00000177     -0.10505842      0.00000072
 0 2ba          0.00000000      0.00000001     -0.00000177      0.10505842     -0.00000072
 0 220          0.00000000     -0.10149206      0.00000002     -0.00000044     -0.06645091
 
 Energy:      -37.66027522    -37.66027522    -37.66027522    -37.66027522    -37.66027522
 


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
 CPU TIMES  *         1.24      0.59      0.02      0.43
 REAL TIME  *         2.38 SEC
 DISK USED  *        29.75 MB (local),      169.84 MB (total)
 SF USED    *         1.22 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

        ENERGY      LL
    -37.71904549   2.0
    -37.71904549   2.0
    -37.71904549   2.0
    -37.66027522   6.0
    -37.66027522   6.0
    -37.66027522   6.0
    -37.66027522   6.0
    -37.66027522   6.0
                                                  


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
     1       -37.71904549
     2       -37.71904549
     3       -37.71904549

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.22D-01
 Number of N-2 electron functions:      18
 Number of N-1 electron functions:      24

 Number of internal configurations:                    6
 Number of singly external configurations:           648
 Number of doubly external configurations:         12984
 Total number of contracted configurations:        13638
 Total number of uncontracted configurations:      16519

 Diagonal Coupling coefficients finished.               Storage:    174137 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    186694 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000   -37.71904549     0.00000000    -0.07665366  0.24D-01  0.11D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.71904549     0.00000000    -0.07677748  0.24D-01  0.11D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.71904549    -0.00000000    -0.07641746  0.23D-01  0.11D-01     0.01
    2     1     1     1.03453717    -0.07643371   -37.79547920    -0.07643371    -0.00147006  0.14D-03  0.38D-03     0.03
    2     2     2     1.03450297    -0.07642604   -37.79547153    -0.07642604    -0.00147471  0.14D-03  0.37D-03     0.03
    2     3     3     1.03441924    -0.07642090   -37.79546639    -0.07642090    -0.00147747  0.15D-03  0.37D-03     0.03
    3     1     1     1.03803631    -0.07809419   -37.79713969    -0.00166048    -0.00006080  0.27D-04  0.13D-04     0.06
    3     2     2     1.03803539    -0.07809368   -37.79713917    -0.00166764    -0.00006106  0.27D-04  0.13D-04     0.06
    3     3     3     1.03803405    -0.07809342   -37.79713892    -0.00167253    -0.00006111  0.26D-04  0.13D-04     0.06
    4     1     1     1.03866288    -0.07817162   -37.79721711    -0.00007743    -0.00000578  0.19D-05  0.13D-05     0.08
    4     2     2     1.03866720    -0.07817160   -37.79721709    -0.00007792    -0.00000579  0.19D-05  0.13D-05     0.08
    4     3     3     1.03866425    -0.07817159   -37.79721708    -0.00007816    -0.00000580  0.19D-05  0.13D-05     0.08
    5     1     1     1.03876624    -0.07817944   -37.79722493    -0.00000782    -0.00000050  0.18D-06  0.10D-06     0.10
    5     2     2     1.03876635    -0.07817943   -37.79722493    -0.00000783    -0.00000050  0.18D-06  0.10D-06     0.10
    5     3     3     1.03876630    -0.07817943   -37.79722492    -0.00000784    -0.00000050  0.18D-06  0.10D-06     0.10
    6     1     1     1.03875052    -0.07818009   -37.79722558    -0.00000065    -0.00000004  0.11D-07  0.10D-07     0.12
    6     2     2     1.03875112    -0.07818009   -37.79722558    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    6     3     3     1.03875084    -0.07818009   -37.79722558    -0.00000066    -0.00000004  0.11D-07  0.10D-07     0.12
    7     1     1     1.03875129    -0.07818014   -37.79722564    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14
    7     2     2     1.03875139    -0.07818014   -37.79722564    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14
    7     3     3     1.03875134    -0.07818014   -37.79722564    -0.00000005    -0.00000000  0.12D-08  0.66D-09     0.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   7.1%   7.1%  14.3%

 Initialization:   7.1%
 Other:           64.3%

 Total CPU:        0.1 seconds
 =====================================



 Wavefunction saved on  5203.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/0/           0.0000000   0.0000000   0.9719266
 20//           0.9719266   0.0000000   0.0000000
 2//0           0.0000000   0.9719266   0.0000000
 02//          -0.1343616   0.0000000   0.0000000
 0/2/           0.0000000   0.0000000  -0.1343615
 0//2           0.0000000  -0.1343614   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000    0.981102
 2           0.000000    0.981102    0.000000
 3           0.981102    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.981102    0.000000    0.000000
 2           0.000000    0.981102    0.000000
 3           0.000000    0.000000    0.981102


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98110210 (fixed)   0.98116989 (relaxed)   0.98110210 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013820    0.00000000   -0.00001040
 Singles      0.02507284   -0.03952865   -0.03993528
 Pairs        0.01368380   -0.03865149   -0.03823446
 Total        1.03889484   -0.07818014   -0.07818014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904549
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89248514
 One electron energy                  -50.41092224
 Two electron energy                   12.61369661
 Virial quotient                       -0.99748606
 Correlation energy                    -0.07818014
 !MRCI STATE 1.1 Energy               -37.797225635854

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026644 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025522 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026644 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722564 (Pople, fixed reference)
 Cluster corrected energies           -37.79722564 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722564 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.98110205 (fixed)   0.98116984 (relaxed)   0.98110205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013821    0.00000000   -0.03721476
 Singles      0.02507294   -0.03952872   -0.03993528
 Pairs        0.01368381    0.00000000   -0.00103010
 Total        1.03889495   -0.03952872   -0.07818014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904549
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89249005
 One electron energy                  -50.41092635
 Two electron energy                   12.61370072
 Virial quotient                       -0.99748593
 Correlation energy                    -0.07818014
 !MRCI STATE 2.1 Energy               -37.797225635837

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026645 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025523 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026645 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722564 (Pople, fixed reference)
 Cluster corrected energies           -37.79722564 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722564 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.98110207 (fixed)   0.98116987 (relaxed)   0.98110207 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00013820   -0.00000000   -0.03721479
 Singles      0.02507289   -0.03952869   -0.03993528
 Pairs        0.01368380    0.00000000   -0.00103007
 Total        1.03889489   -0.03952869   -0.07818014
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.71904549
 Nuclear energy                         0.00000000
 Kinetic energy                        37.89248774
 One electron energy                  -50.41092424
 Two electron energy                   12.61369861
 Virial quotient                       -0.99748599
 Correlation energy                    -0.07818014
 !MRCI STATE 3.1 Energy               -37.797225635831

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.80026644 (Davidson, fixed reference)
 Cluster corrected energies           -37.80025522 (Davidson, relaxed reference)
 Cluster corrected energies           -37.80026644 (Davidson, rotated reference)

 Cluster corrected energies           -37.79722564 (Pople, fixed reference)
 Cluster corrected energies           -37.79722564 (Pople, relaxed reference)
 Cluster corrected energies           -37.79722564 (Pople, rotated reference)



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
 CPU TIMES  *         1.45      0.20      0.59      0.02      0.43
 REAL TIME  *         2.61 SEC
 DISK USED  *        30.19 MB (local),      172.04 MB (total)
 SF USED    *         4.04 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =       -37.80026644  AU                              
 SETTING HLSDIAG(2)     =       -37.80026645  AU                              
 SETTING HLSDIAG(3)     =       -37.80026644  AU                              


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
     1       -37.66027522
     2       -37.66027522
     3       -37.66027522
     4       -37.66027522
     5       -37.66027522

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.87D+00
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
    1     1     1     1.00000000     0.00000000   -37.66027522     0.00000000    -0.08676416  0.25D-01  0.13D-01     0.01
    1     2     2     1.00000000     0.00000000   -37.66027522    -0.00000000    -0.08617008  0.25D-01  0.13D-01     0.01
    1     3     3     1.00000000     0.00000000   -37.66027522     0.00000000    -0.08673903  0.25D-01  0.13D-01     0.01
    1     4     4     1.00000000     0.00000000   -37.66027522    -0.00000000    -0.08712286  0.26D-01  0.13D-01     0.01
    1     5     5     1.00000000     0.00000000   -37.66027522    -0.00000000    -0.08612681  0.25D-01  0.13D-01     0.01
    2     1     1     1.03847996    -0.08627385   -37.74654907    -0.08627385    -0.00278004  0.34D-03  0.64D-03     0.04
    2     2     2     1.03820674    -0.08626299   -37.74653820    -0.08626299    -0.00275359  0.34D-03  0.63D-03     0.04
    2     3     3     1.03845054    -0.08625531   -37.74653053    -0.08625531    -0.00279883  0.34D-03  0.65D-03     0.04
    2     4     4     1.03851605    -0.08622054   -37.74649576    -0.08622054    -0.00283620  0.35D-03  0.66D-03     0.04
    2     5     5     1.03819603    -0.08621843   -37.74649365    -0.08621843    -0.00278841  0.35D-03  0.64D-03     0.04
    3     1     1     1.04416871    -0.08930752   -37.74958274    -0.00303367    -0.00015529  0.83D-04  0.25D-04     0.06
    3     2     2     1.04416058    -0.08930591   -37.74958112    -0.00304292    -0.00015681  0.83D-04  0.25D-04     0.06
    3     3     3     1.04412196    -0.08930012   -37.74957534    -0.00304481    -0.00015992  0.84D-04  0.26D-04     0.06
    3     4     4     1.04407637    -0.08929728   -37.74957250    -0.00307675    -0.00015876  0.83D-04  0.24D-04     0.06
    3     5     5     1.04405914    -0.08929332   -37.74956854    -0.00307489    -0.00016118  0.84D-04  0.24D-04     0.06
    4     1     1     1.04658619    -0.08951515   -37.74979036    -0.00020762    -0.00001732  0.93D-05  0.27D-05     0.09
    4     2     2     1.04658131    -0.08951499   -37.74979021    -0.00020909    -0.00001736  0.94D-05  0.27D-05     0.09
    4     3     3     1.04657272    -0.08951416   -37.74978937    -0.00021403    -0.00001794  0.96D-05  0.29D-05     0.09
    4     4     4     1.04657051    -0.08951317   -37.74978839    -0.00021588    -0.00001856  0.99D-05  0.28D-05     0.09
    4     5     5     1.04656190    -0.08951258   -37.74978780    -0.00021926    -0.00001894  0.10D-04  0.28D-05     0.09
    5     1     1     1.04717102    -0.08954102   -37.74981623    -0.00002587    -0.00000155  0.58D-06  0.27D-06     0.12
    5     2     2     1.04717029    -0.08954100   -37.74981622    -0.00002601    -0.00000156  0.60D-06  0.27D-06     0.12
    5     3     3     1.04716970    -0.08954094   -37.74981616    -0.00002679    -0.00000160  0.61D-06  0.28D-06     0.12
    5     4     4     1.04715958    -0.08954092   -37.74981614    -0.00002775    -0.00000159  0.60D-06  0.27D-06     0.12
    5     5     5     1.04715794    -0.08954088   -37.74981609    -0.00002830    -0.00000162  0.61D-06  0.28D-06     0.12
    6     1     1     1.04721742    -0.08954294   -37.74981815    -0.00000192    -0.00000013  0.46D-07  0.21D-07     0.15
    6     2     2     1.04721755    -0.08954294   -37.74981815    -0.00000194    -0.00000013  0.47D-07  0.21D-07     0.15
    6     3     3     1.04721664    -0.08954293   -37.74981815    -0.00000199    -0.00000013  0.48D-07  0.22D-07     0.15
    6     4     4     1.04721594    -0.08954292   -37.74981814    -0.00000200    -0.00000013  0.50D-07  0.21D-07     0.15
    6     5     5     1.04721514    -0.08954292   -37.74981813    -0.00000204    -0.00000014  0.52D-07  0.22D-07     0.15
    7     1     1     1.04723711    -0.08954308   -37.74981830    -0.00000014    -0.00000001  0.55D-08  0.15D-08     0.17
    7     2     2     1.04723705    -0.08954308   -37.74981830    -0.00000014    -0.00000001  0.55D-08  0.15D-08     0.17
    7     3     3     1.04723651    -0.08954308   -37.74981830    -0.00000015    -0.00000001  0.58D-08  0.16D-08     0.17
    7     4     4     1.04723602    -0.08954308   -37.74981830    -0.00000016    -0.00000001  0.62D-08  0.17D-08     0.17
    7     5     5     1.04723569    -0.08954308   -37.74981829    -0.00000016    -0.00000001  0.63D-08  0.18D-08     0.17


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.0%
 P   0.0%  11.8%  11.8%

 Initialization:   5.9%
 Other:           70.6%

 Total CPU:        0.2 seconds
 =====================================



 Wavefunction saved on  5200.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/\           0.0000000   0.0000000   0.9678511   0.0000000   0.0000000
 2/\0          -0.0000000   0.9678508   0.0000000   0.0000000  -0.0000000
 2/0\           0.9678508   0.0000000   0.0000000   0.0000000   0.0000000
 2200          -0.0000000   0.0000000   0.0000000   0.7863260  -0.0788195
 2020          -0.0000000   0.0000000   0.0000000  -0.3248917   0.7203471
 2002          -0.0000000   0.0000000   0.0000000  -0.4613815  -0.6415791
 0/2\          -0.1347534   0.0000000  -0.0000000   0.0000000  -0.0000000
 02/\          -0.0000000  -0.0000000  -0.1347534  -0.0000000   0.0000000
 0/\2           0.0000000  -0.1347533  -0.0000000  -0.0000000   0.0000000
 0022           0.0000000  -0.0000000   0.0000000   0.1094724  -0.0109665
 0202           0.0000000  -0.0000000   0.0000000  -0.0452418   0.1003011
 0220           0.0000000  -0.0000000   0.0000000  -0.0642451  -0.0893196

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 \/0\  11.1     0.0784784  -0.0000000   0.0000000  -0.0000000  -0.0000000
 \0/\  10.1     0.0000000  -0.0000000  -0.0000000   0.0050286   0.0783689
 \/0\  12.1     0.0000000  -0.0000000   0.0000000   0.0726956   0.0297041
 \/\0  13.1     0.0000000   0.0693689  -0.0000000  -0.0000000   0.0000000
 \0/\  13.1    -0.0000000   0.0000000  -0.0665601   0.0000000   0.0000000
 \/\0  14.1     0.0000000  -0.0000000   0.0000000   0.0653550  -0.0435395

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.977130   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.000000    0.977130    0.000000   -0.000000
 3           0.000000    0.000000    0.000000    0.977130   -0.000000
 4          -0.000000    0.911846    0.000000    0.000000   -0.351169
 5           0.000000    0.351169   -0.000000   -0.000000    0.911846

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.977130   -0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.977130    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.977130    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.977130    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.977130


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97712972 (fixed)   0.97718657 (relaxed)   0.97712972 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011637    0.00000000   -0.04245653
 Singles      0.02978611   -0.04508627   -0.04559368
 Pairs        0.01745650   -0.00000000   -0.00149287
 Total        1.04735897   -0.04508627   -0.08954308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66027522
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84176790
 One electron energy                  -50.31047506
 Two electron energy                   12.56065676
 Virial quotient                       -0.99757016
 Correlation energy                    -0.08954308
 !MRCI STATE 1.1 Energy               -37.749818298343

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75405897 (Davidson, fixed reference)
 Cluster corrected energies           -37.75404805 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75405897 (Davidson, rotated reference)

 Cluster corrected energies           -37.75193744 (Pople, fixed reference)
 Cluster corrected energies           -37.75193200 (Pople, relaxed reference)
 Cluster corrected energies           -37.75193744 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97712974 (fixed)   0.97718659 (relaxed)   0.97712974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011637   -0.00000000   -0.04245655
 Singles      0.02978604   -0.04508625   -0.04559371
 Pairs        0.01745650    0.00000000   -0.00149282
 Total        1.04735892   -0.04508625   -0.08954308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66027522
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84176699
 One electron energy                  -50.31047513
 Two electron energy                   12.56065683
 Virial quotient                       -0.99757018
 Correlation energy                    -0.08954308
 !MRCI STATE 2.1 Energy               -37.749818298204

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75405896 (Davidson, fixed reference)
 Cluster corrected energies           -37.75404805 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75405896 (Davidson, rotated reference)

 Cluster corrected energies           -37.75193744 (Pople, fixed reference)
 Cluster corrected energies           -37.75193200 (Pople, relaxed reference)
 Cluster corrected energies           -37.75193744 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97712999 (fixed)   0.97718685 (relaxed)   0.97712999 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011637    0.00000000   -0.04245654
 Singles      0.02978567   -0.04508629   -0.04559365
 Pairs        0.01745634    0.00000000   -0.00149289
 Total        1.04735838   -0.04508629   -0.08954308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66027522
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84177087
 One electron energy                  -50.31047890
 Two electron energy                   12.56066061
 Virial quotient                       -0.99757008
 Correlation energy                    -0.08954308
 !MRCI STATE 3.1 Energy               -37.749818297413

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75405891 (Davidson, fixed reference)
 Cluster corrected energies           -37.75404800 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75405891 (Davidson, rotated reference)

 Cluster corrected energies           -37.75193742 (Pople, fixed reference)
 Cluster corrected energies           -37.75193197 (Pople, relaxed reference)
 Cluster corrected energies           -37.75193742 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.91184631 (fixed)   0.97718707 (relaxed)   0.97713022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011637   -0.00000000   -0.05771115
 Singles      0.02978520   -0.04508641   -0.04559370
 Pairs        0.01745632    0.01597715    0.01376178
 Total        1.04735789   -0.02910927   -0.08954308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66027522
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84175742
 One electron energy                  -50.31046963
 Two electron energy                   12.56065133
 Virial quotient                       -0.99757043
 Correlation energy                    -0.08954308
 !MRCI STATE 4.1 Energy               -37.749818295588

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75405887 (Davidson, fixed reference)
 Cluster corrected energies           -37.75404795 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75405887 (Davidson, rotated reference)

 Cluster corrected energies           -37.75193739 (Pople, fixed reference)
 Cluster corrected energies           -37.75193195 (Pople, relaxed reference)
 Cluster corrected energies           -37.75193739 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.91184642 (fixed)   0.97718723 (relaxed)   0.97713038 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00011636   -0.00000000   -0.00284588
 Singles      0.02978498   -0.04508641   -0.04559367
 Pairs        0.01745621   -0.04148644   -0.04110353
 Total        1.04735755   -0.08657284   -0.08954308
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                     -37.66027522
 Nuclear energy                         0.00000000
 Kinetic energy                        37.84175926
 One electron energy                  -50.31047190
 Two electron energy                   12.56065360
 Virial quotient                       -0.99757038
 Correlation energy                    -0.08954308
 !MRCI STATE 5.1 Energy               -37.749818294919

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies           -37.75405884 (Davidson, fixed reference)
 Cluster corrected energies           -37.75404792 (Davidson, relaxed reference)
 Cluster corrected energies           -37.75405884 (Davidson, rotated reference)

 Cluster corrected energies           -37.75193738 (Pople, fixed reference)
 Cluster corrected energies           -37.75193193 (Pople, relaxed reference)
 Cluster corrected energies           -37.75193738 (Pople, rotated reference)



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
 CPU TIMES  *         1.68      0.23      0.20      0.59      0.02      0.43
 REAL TIME  *         2.87 SEC
 DISK USED  *        30.65 MB (local),      174.38 MB (total)
 SF USED    *         5.24 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =       -37.75405897  AU                              
 SETTING HLSDIAG(5)     =       -37.75405896  AU                              
 SETTING HLSDIAG(6)     =       -37.75405891  AU                              
 SETTING HLSDIAG(7)     =       -37.75405887  AU                              
 SETTING HLSDIAG(8)     =       -37.75405884  AU                              


        HLSDIAG
    -37.80026644
    -37.80026645
    -37.80026644
    -37.75405897
    -37.75405896
    -37.75405891
    -37.75405887
    -37.75405884
                                                  


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

 Time for Seward_LS:       0.18 sec

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.18 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.02 sec, REAL time:      0.04 sec

 FILE SIZES: FILE 1:    46.0 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.0 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5203.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:    -37.797226    -37.797226    -37.797226
 Replaced energies:    -37.800266    -37.800266    -37.800266

 Wavefunction restored from record  5200.2  Symmetry=1  S= 0.0  NSTATE=   5

 Original energies:    -37.749818    -37.749818    -37.749818    -37.749818    -37.749818
 Replaced energies:    -37.754059    -37.754059    -37.754059    -37.754059    -37.754059



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=   -37.80026645

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      12.65      -0.00       0.00       0.00       8.95       0.00       0.00       0.00     -10.73

    2   2.1  1.0  1.0       0.00       0.00       0.00       0.00      -0.00      -8.95       0.00       0.00       0.00     -10.73
                          -12.65      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00       0.00       8.95       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -8.95       0.00       0.00       0.00       0.00       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       8.95       0.00       0.00       0.00       0.00       0.00       8.95      -0.00

    5   2.1  1.0  0.0      -0.00      -0.00       8.95       0.00       0.00       0.00       0.00      -0.00      -8.95       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   3.1  1.0  0.0      -0.00      -8.95       0.00       0.00       0.00       0.00       0.00       8.95       0.00       0.00
                           -8.95       0.00      -0.00      -0.00      -0.00       0.00      -8.95       0.00       0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       8.95       0.00     -12.65       0.00      10.73

    8   2.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -0.00       8.95       0.00       0.00       0.00     -10.73
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      12.65       0.00      -0.00       0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00      -0.00      -8.95       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -8.95       0.00      -0.00      -0.00       0.00       0.00      -0.00

   10   1.1  0.0  0.0      -0.00     -10.73       0.00       0.00       0.00       0.00      -0.00     -10.73       0.00   10141.37
                           10.73       0.00      -0.00       0.00       0.00       0.00     -10.73      -0.00       0.00       0.00

   11   2.1  0.0  0.0       0.00      -0.00      10.73       0.00       0.00       0.00       0.00      -0.00      10.73       0.00
                            0.00      -0.00      -0.00     -15.17       0.00      -0.00      -0.00       0.00       0.00      -0.00

   12   3.1  0.0  0.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00     -10.73      -0.00     -15.18       0.00       0.00      -0.00      10.73      -0.00

   13   4.1  0.0  0.0     -12.33       0.00      -0.00       0.00       0.00       0.00     -12.33       0.00      -0.00       0.00
                            0.00      -7.24       0.00       0.00       0.00      -7.20      -0.00       7.24      -0.00      -0.00

   14   5.1  0.0  0.0       1.23       0.00       0.00       0.00       0.00       0.00       1.23       0.00       0.00       0.00
                           -0.00     -10.06       0.00      -0.00       0.00      15.97       0.00      10.06      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  1.0  1.0       0.00      -0.00     -12.33       1.23
                           -0.00       0.00      -0.00       0.00

    2   2.1  1.0  1.0      -0.00       0.00       0.00       0.00
                            0.00      -0.00       7.24      10.06

    3   3.1  1.0  1.0      10.73       0.00      -0.00       0.00
                            0.00      10.73      -0.00      -0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00
                           15.17       0.00      -0.00       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00
                           -0.00      15.18      -0.00      -0.00

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00
                            0.00      -0.00       7.20     -15.97

    7   1.1  1.0 -1.0       0.00      -0.00     -12.33       1.23
                            0.00      -0.00       0.00      -0.00

    8   2.1  1.0 -1.0      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -7.24     -10.06

    9   3.1  1.0 -1.0      10.73       0.00      -0.00       0.00
                           -0.00     -10.73       0.00       0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0   10141.37       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00   10141.38       0.00       0.00
                           -0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00   10141.39       0.00
                           -0.00      -0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00   10141.40
                           -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 14)

    The diagonal matrixelements are shifted by    -37.80026645 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.002       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      12.654      -0.000      12.654

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000     -12.654      -0.000

    3    1  |1 1>+              0.000       0.000       0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -12.654       0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000      -0.000       0.000       0.002       0.000       0.000       0.000       0.000
                                0.000       0.000      12.654       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                               -0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001      -0.000     -12.654
                              -12.654       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.002       0.000
                               -0.000      12.654      -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000     -12.654       0.000       0.000
                              -12.654      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      12.654       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |0 0>              -0.000     -15.181       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      15.171       0.000

    2    1  |0 0>               0.000      -0.000      15.173       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -15.173       0.000      -0.000       0.000      -0.000

    3    1  |0 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -15.181       0.000      -0.000       0.000

    4    1  |0 0>             -17.432       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -7.204       0.000     -10.234

    5    1  |0 0>               1.746       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      15.972      -0.000     -14.229

  State Sym Spin    / Nr.        9          10          11          12          13          14

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000     -17.432       1.746
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000     -15.181      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000      15.173       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      15.173       0.000      -0.000       0.000

    2    1  |1 0>              12.654       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      15.181      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000      -0.000       7.204     -15.972

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -15.171      -0.000       0.000      -0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      10.234      14.229

    3    1  |1 1>-              0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      15.171      -0.000      -0.000

    1    1  |0 0>               0.000   10141.370       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000   10141.371       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000   10141.382       0.000       0.000
                              -15.171      -0.000      -0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000   10141.392       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000   10141.399
                                0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1   -37.80038175    -0.00011530      -25.31      0.00000000        0.00      0.0000
    2   -37.80032410    -0.00005765      -12.65      0.00005765       12.65      0.0016
    3   -37.80032410    -0.00005765      -12.65      0.00005765       12.65      0.0016
    4   -37.80032410    -0.00005765      -12.65      0.00005766       12.65      0.0016
    5   -37.80020900     0.00005745       12.61      0.00017275       37.91      0.0047
    6   -37.80020900     0.00005745       12.61      0.00017275       37.91      0.0047
    7   -37.80020900     0.00005745       12.61      0.00017276       37.92      0.0047
    8   -37.80020900     0.00005745       12.61      0.00017276       37.92      0.0047
    9   -37.80020900     0.00005745       12.61      0.00017276       37.92      0.0047
   10   -37.75405876     0.04620769    10141.42      0.04632299    10166.72      1.2605
   11   -37.75405875     0.04620769    10141.42      0.04632300    10166.72      1.2605
   12   -37.75405871     0.04620774    10141.43      0.04632305    10166.73      1.2605
   13   -37.75405866     0.04620779    10141.44      0.04632309    10166.74      1.2605
   14   -37.75405863     0.04620782    10141.44      0.04632312    10166.75      1.2605

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.57733617  0.00000000 -0.00000000 -0.00000000 -0.23962270 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000  0.00000000  0.70712836  0.00000000  0.00000000 -0.00000000  0.70588859 -0.00000000
                          -0.00000000 -0.00000000 -0.00269518  0.00000000  0.00000000  0.00000000 -0.04100316 -0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000 -0.00000000  0.70711861 -0.00000000  0.00000000  0.00000000  0.42281616
                          -0.00000000  0.00000000  0.00000000 -0.00004020  0.00000000 -0.00000000 -0.00000000 -0.56675173

   1    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00004020 -0.00000000  0.00000000  0.00000000  0.56677069
                          -0.00000000  0.00000000  0.00000000 -0.70709495 -0.00000000  0.00000000  0.00000000  0.42283031

   2    1  |1 0>           0.00000000  0.70709627 -0.00000000  0.00000000 -0.00000000  0.70709021  0.00000000 -0.00000000
                          -0.00000000  0.00599442 -0.00000000  0.00000000  0.00000000 -0.00035600  0.00000000 -0.00000000

   3    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.57734930  0.00000000 -0.00000000 -0.00000000 -0.55617342 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00269498  0.00000000 -0.00000000 -0.00000000  0.04100626  0.00000000
                          -0.00000000 -0.00000000 -0.70707493 -0.00000000  0.00000000 -0.00000000  0.70594195 -0.00000000

   2    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.57736534 -0.00000000 -0.00000000 -0.00000000  0.79576856  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.70706648  0.00000000 -0.00000000 -0.00000000  0.70712000  0.00000000 -0.00000000
                          -0.00000000 -0.00599417  0.00000000 -0.00000000  0.00000000 -0.00035602  0.00000000 -0.00000000

   1    1  |0 0>           0.00000000  0.00000000  0.00000072  0.00000000  0.00000000 -0.00000000  0.00211535 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00012288 -0.00000000

   2    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00126676
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00169799

   3    1  |0 0>           0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000107 -0.00000000  0.00000000
                           0.00000000  0.00000069 -0.00000000  0.00000000 -0.00000000  0.00211892  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000038  0.00000000  0.00000000 -0.00000000 -0.00082089 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000020  0.00000000 -0.00000000  0.00000000 -0.00195357 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14

   1    1  |1 1>+          0.78055168  0.00000000  0.00000000 -0.00000000 -0.00172134  0.00016919
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.00149875 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000 -0.00000000  0.00149796  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000 -0.00000553 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000  0.00000553  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00149796  0.00000000 -0.00000000 -0.00000000

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00083840 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00124232  0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.59777581 -0.00000000 -0.00000000  0.00000000  0.00071413 -0.00157552

   1    1  |1 1>-          0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00149785 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.18275304  0.00000000  0.00000000 -0.00000000  0.00100781  0.00140664

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00083789  0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00124157  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.99999775  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00002691 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000  0.99999095  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00368976 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.82889867  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.55939477  0.00000000  0.00000000

   4    1  |0 0>           0.00195316  0.00000000  0.00000000 -0.00000000  0.99999604  0.00185269
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00082042  0.00000000  0.00000000 -0.00000000 -0.00185269  0.99999604
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1    -37.80038175     -0.00011530      -25.31      0.00000000        0.00      0.0000
     2   1    -37.80032410     -0.00005765      -12.65      0.00005765       12.65      0.0016
     3   1    -37.80032410     -0.00005765      -12.65      0.00005765       12.65      0.0016
     4   1    -37.80032410     -0.00005765      -12.65      0.00005766       12.65      0.0016
     5   1    -37.80020900      0.00005745       12.61      0.00017275       37.91      0.0047
     6   1    -37.80020900      0.00005745       12.61      0.00017275       37.91      0.0047
     7   1    -37.80020900      0.00005745       12.61      0.00017276       37.92      0.0047
     8   1    -37.80020900      0.00005745       12.61      0.00017276       37.92      0.0047
     9   1    -37.80020900      0.00005745       12.61      0.00017276       37.92      0.0047
    10   1    -37.75405876      0.04620769    10141.42      0.04632299    10166.72      1.2605
    11   1    -37.75405875      0.04620769    10141.42      0.04632300    10166.72      1.2605
    12   1    -37.75405871      0.04620774    10141.43      0.04632305    10166.73      1.2605
    13   1    -37.75405866      0.04620779    10141.44      0.04632309    10166.74      1.2605
    14   1    -37.75405863      0.04620782    10141.44      0.04632312    10166.75      1.2605

 E0 =    -37.80026645 is the energy of the lowest zeroth-order state
 E1 =    -37.80038175 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.57733617  0.00000000 -0.00000000 -0.00000000 -0.23962270 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000  0.00000000  0.70712836  0.00000000  0.00000000 -0.00000000  0.70588859 -0.00000000
                               -0.00000000 -0.00000000 -0.00269518  0.00000000  0.00000000  0.00000000 -0.04100316 -0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000 -0.00000000  0.70711861 -0.00000000  0.00000000  0.00000000  0.42281616
                               -0.00000000  0.00000000  0.00000000 -0.00004020  0.00000000 -0.00000000 -0.00000000 -0.56675173

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00004020 -0.00000000  0.00000000  0.00000000  0.56677069
                               -0.00000000  0.00000000  0.00000000 -0.70709495 -0.00000000  0.00000000  0.00000000  0.42283031

  5  1     2    1  |1 0>        0.00000000  0.70709627 -0.00000000  0.00000000 -0.00000000  0.70709021  0.00000000 -0.00000000
                               -0.00000000  0.00599442 -0.00000000  0.00000000  0.00000000 -0.00035600  0.00000000 -0.00000000

  6  1     3    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.57734930  0.00000000 -0.00000000 -0.00000000 -0.55617342 -0.00000000  0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00269498  0.00000000 -0.00000000 -0.00000000  0.04100626  0.00000000
                               -0.00000000 -0.00000000 -0.70707493 -0.00000000  0.00000000 -0.00000000  0.70594195 -0.00000000

  8  1     2    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.57736534 -0.00000000 -0.00000000 -0.00000000  0.79576856  0.00000000 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.70706648  0.00000000 -0.00000000 -0.00000000  0.70712000  0.00000000 -0.00000000
                               -0.00000000 -0.00599417  0.00000000 -0.00000000  0.00000000 -0.00035602  0.00000000 -0.00000000

 10  1     1    1  |0 0>        0.00000000  0.00000000  0.00000072  0.00000000  0.00000000 -0.00000000  0.00211535 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00012288 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000003  0.00000000 -0.00000000 -0.00000000 -0.00126676
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00169799

 12  1     3    1  |0 0>        0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000107 -0.00000000  0.00000000
                                0.00000000  0.00000069 -0.00000000  0.00000000 -0.00000000  0.00211892  0.00000000 -0.00000000

 13  1     4    1  |0 0>       -0.00000038  0.00000000  0.00000000 -0.00000000 -0.00082089 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000020  0.00000000 -0.00000000  0.00000000 -0.00195357 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14

  1  1     1    1  |1 1>+       0.78055168  0.00000000  0.00000000 -0.00000000 -0.00172134  0.00016919
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.00149875 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000004  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000 -0.00000000  0.00149796  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000 -0.00000553 -0.00000000 -0.00000000  0.00000000

  4  1     1    1  |1 0>        0.00000000  0.00000000  0.00000553  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00149796  0.00000000 -0.00000000 -0.00000000

  5  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00083840 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00124232  0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.59777581 -0.00000000 -0.00000000  0.00000000  0.00071413 -0.00157552

  7  1     1    1  |1 1>-       0.00000000 -0.00000004 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00149785 -0.00000000  0.00000000  0.00000000  0.00000000

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.18275304  0.00000000  0.00000000 -0.00000000  0.00100781  0.00140664

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00083789  0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00124157  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.99999775  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00002691 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     2    1  |0 0>       -0.00000000 -0.00000000  0.99999095  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00368976 -0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.82889867  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.55939477  0.00000000  0.00000000

 13  1     4    1  |0 0>        0.00195316  0.00000000  0.00000000 -0.00000000  0.99999604  0.00185269
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00082042  0.00000000  0.00000000 -0.00000000 -0.00185269  0.99999604
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        33.33%    0.00%    0.00%    0.00%    5.74%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  6  1     3    1  |1 0>         33.33%    0.00%    0.00%    0.00%   30.93%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%
  8  1     2    1  |1 1>-        33.34%    0.00%    0.00%    0.00%   63.32%    0.00%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%   50.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14

  1  1     1    1  |1 1>+        60.93%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>         35.73%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         3.34%    0.00%    0.00%    0.00%    0.00%    0.00%
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
 CPU TIMES  *         3.78      2.10      0.23      0.20      0.59      0.02      0.43
 REAL TIME  *         6.40 SEC
 DISK USED  *        30.68 MB (local),      250.40 MB (total)
 SF USED    *        17.64 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=    -37.754058628645

              CI              CI           MULTI         RHF-SCF
    -37.74981829    -37.79722564    -37.66027522    -37.70180810
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
