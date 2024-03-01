
 Working directory              : /wrk/irikura/molpro.KIGmcmR4lB/
 Global scratch directory       : /wrk/irikura/molpro.KIGmcmR4lB/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.KIGmcmR4lB/

 id        : nistki

 Nodes         nprocs
 gamba.nist.gov    5
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Ne SO-CI
                                                                                 ! active space (8/8)
 memory,1000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Ne};
 
 basis=aug-cc-pwCVTZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=9,sym=1,spin=1}
 
 {multi,wmk_old
     closed,1,0
     occ,3,6
     wf,nelec=10,sym=1,spin=0;state,9;
     wf,nelec=10,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=0;state,9; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(10) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ne SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 17:15:39  
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

 Library entry NE     S aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     P aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     D aug-cc-pwCVTZ-DK     selected for orbital group  1
 Library entry NE     F aug-cc-pwCVTZ-DK     selected for orbital group  1


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

   1  NE     10.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   10
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

     2.884 MB (compressed) written to integral file ( 20.7%)

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

         1 0.534E-02 0.201E-01 0.645E-01 0.199E+00 0.230E+00 0.230E+00 0.230E+00 0.230E+00
         2 0.205E-01 0.205E-01 0.205E-01 0.205E+00 0.205E+00 0.205E+00 0.328E+00 0.328E+00


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       28.71       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.62      0.44
 REAL TIME  *         1.65 SEC
 DISK USED  *        29.03 MB (local),      166.31 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   2   3
 Initial beta  occupancy:   1   3

 NELEC=    9   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -126.73389323    -126.73389323     0.00D+00     0.14D+00     0     0       0.00      0.01    start
   2     -126.83718126      -0.10328803     0.39D-01     0.35D-01     1     0       0.00      0.01    diag2
   3     -126.85007146      -0.01289020     0.18D-01     0.11D-01     2     0       0.00      0.01    diag2
   4     -126.85019505      -0.00012359     0.16D-02     0.13D-02     3     0       0.01      0.02    diag2
   5     -126.85019651      -0.00000147     0.91D-04     0.66D-04     4     0       0.00      0.02    diag2
   6     -126.85019653      -0.00000001     0.85D-05     0.80D-05     5     0       0.00      0.02    diag2
   7     -126.85019653      -0.00000000     0.36D-06     0.41D-06     6     0       0.00      0.02    diag2
   8     -126.85019653      -0.00000000     0.30D-07     0.24D-07     0     0       0.00      0.02    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   1   3

 !RHF STATE 1.1 Energy               -126.850196528281
  RHF One-electron energy            -174.298876456677
  RHF Two-electron energy              47.448679928396
  RHF Kinetic energy                  127.691690331718
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.993409956425

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.66208     1  1  s    0.99902
    2.1     1.00000    -2.76199     1  2  s    1.10854
    1.2     2.00000    -1.55256     1  1  pz   1.07603
    2.2     2.00000    -1.55256     1  1  py   1.07603
    3.2     2.00000    -1.55256     1  1  px   1.07606


 HOMO      3.2    -1.552563 =     -42.2474eV
 LUMO      3.1    -0.113278 =      -3.0824eV
 LUMO-HOMO         1.439285 =      39.1649eV

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
 CPU TIMES  *         0.65      0.03      0.44
 REAL TIME  *         1.68 SEC
 DISK USED  *        29.43 MB (local),      168.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 2   4 6 3 5 1 2 4 6 5 3   1 6 4 5 3 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.975D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.899D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.296D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.103D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.128D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.554D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 1 2 8  10 5 4 7 9 6 3 1 210   8 7 9 4 5 6 3 1 2 3   2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.10000   0.10000   0.10000   0.10000   0.10000   0.10000   0.10000   0.10000
                                          0.10000
 Weight factors for state symmetry  2:    0.10000

 Number of orbital rotations:      230   (     2 Core/Active     24 Core/Virtual   0 Active/Active    204 Active/Virtual)
 Total number of variables:      24306


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

 Not enough P space configurations found with threshold  0.40  for  9 states. Nplist= 1  threshold increased to    0.90
   1   91   42    0    -128.05088513    -128.05916592   -0.00828079    0.11180033 0.00000636 0.00001315  0.84D+00      0.18
   2  113   59    0    -128.05909327    -128.05909741   -0.00000414    0.00221645 0.00000000 0.00000007  0.17D-01      0.48
   3  102   24    0    -128.05909741    -128.05909741   -0.00000000    0.00000012 0.00000000 0.00000010  0.35D-06      0.61

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.29D-09



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -128.647988689478
 Nuclear energy                         0.00000000
 Kinetic energy                       130.59778286
 One electron energy                 -183.31760990
 Two electron energy                   54.66962121
 Virial ratio                           1.98507024

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -127.992177912585
 Nuclear energy                         0.00000000
 Kinetic energy                       129.01900129
 One electron energy                 -177.91868127
 Two electron energy                   49.92650335
 Virial ratio                           1.99204130

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -127.992177912585
 Nuclear energy                         0.00000000
 Kinetic energy                       129.01900129
 One electron energy                 -177.91868127
 Two electron energy                   49.92650335
 Virial ratio                           1.99204130

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -127.992177912517
 Nuclear energy                         0.00000000
 Kinetic energy                       129.01900129
 One electron energy                 -177.91868127
 Two electron energy                   49.92650335
 Virial ratio                           1.99204130

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -127.992177912517
 Nuclear energy                         0.00000000
 Kinetic energy                       129.01900129
 One electron energy                 -177.91868127
 Two electron energy                   49.92650335
 Virial ratio                           1.99204130

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -127.992177912517
 Nuclear energy                         0.00000000
 Kinetic energy                       129.01900129
 One electron energy                 -177.91868127
 Two electron energy                   49.92650335
 Virial ratio                           1.99204130

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -127.988656669956
 Nuclear energy                         0.00000000
 Kinetic energy                       129.00078223
 One electron energy                 -177.90220337
 Two electron energy                   49.91354670
 Virial ratio                           1.99215411

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -127.988656669956
 Nuclear energy                         0.00000000
 Kinetic energy                       129.00078223
 One electron energy                 -177.90220337
 Two electron energy                   49.91354670
 Virial ratio                           1.99215411

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -127.988656669956
 Nuclear energy                         0.00000000
 Kinetic energy                       129.00078223
 One electron energy                 -177.90220337
 Two electron energy                   49.91354670
 Virial ratio                           1.99215411

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -128.016125822277
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93135819
 One electron energy                 -177.82923872
 Two electron energy                   49.81311290
 Virial ratio                           1.99290140

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     0.991734064006
 !MCSCF expec        <3.1|LXLX|3.1>     3.008265892296
 !MCSCF expec        <4.1|LXLX|4.1>     3.460613461609
 !MCSCF expec        <5.1|LXLX|5.1>     1.434877542959
 !MCSCF expec        <6.1|LXLX|6.1>     1.104509039131
 !MCSCF expec        <7.1|LXLX|7.1>     0.022506498997
 !MCSCF expec        <8.1|LXLX|8.1>     0.996470981719
 !MCSCF expec        <9.1|LXLX|9.1>     0.981022519284
 !MCSCF expec        <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     1.008288990818
 !MCSCF expec        <3.1|LYLY|3.1>     2.991711102276
 !MCSCF expec        <4.1|LYLY|4.1>     1.538975333982
 !MCSCF expec        <5.1|LYLY|5.1>     2.923513135366
 !MCSCF expec        <6.1|LYLY|6.1>     1.537511437557
 !MCSCF expec        <7.1|LYLY|7.1>     0.986955006866
 !MCSCF expec        <8.1|LYLY|8.1>     0.201778899773
 !MCSCF expec        <9.1|LYLY|9.1>     0.811266093361
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     3.999976945176
 !MCSCF expec        <3.1|LZLZ|3.1>     0.000023005428
 !MCSCF expec        <4.1|LZLZ|4.1>     1.000411204409
 !MCSCF expec        <5.1|LZLZ|5.1>     1.641609321675
 !MCSCF expec        <6.1|LZLZ|6.1>     3.357979523312
 !MCSCF expec        <7.1|LZLZ|7.1>     0.990538494136
 !MCSCF expec        <8.1|LZLZ|8.1>     0.801750118508
 !MCSCF expec        <9.1|LZLZ|9.1>     0.207711387355
 !MCSCF expec        <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec        <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec        <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec        <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec        <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec        <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec        <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec        <7.1|L**2|7.1>     2.000000000000
 !MCSCF expec        <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec        <9.1|L**2|9.1>     2.000000000000
 !MCSCF expec        <1.1|L**2|1.1>    -0.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.29202     1  1  s    0.99933
    2.1     1.99792    -2.30306     1  2  s    1.07125
    3.1     0.00256     1.94196     1  2  s   -0.60674    1  3  s   -0.95980    1  4  s    1.40597
    1.2     1.69708    -1.11373     1  1  pz   1.07340
    2.2     1.69708    -1.11373     1  1  px   1.07340
    3.2     1.69708    -1.11373     1  1  py   1.07340
    4.2     0.30276     0.15826     1  1  py  -0.28948    1  6  py   1.09214
    5.2     0.30276     0.15826     1  1  px  -0.28948    1  6  px   1.09214
    6.2     0.30276     0.15826     1  1  pz  -0.28948    1  6  pz   1.09214


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 4 6 3 5 2   6 5 4 3 1 2 4 6 5 3   1 6 4 5 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 1 3 3 2 110   8 5 4 7 9 6 3 1 210   8 9 7 5 4 6 3 1 2 3   2 1

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector for state symmetry 1
 ==============================

 20 222000      0.9662794   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
 20 b2200a     -0.0993170   0.0578864  -0.5734722   0.0000813   0.0000572  -0.0000763  -0.0000000   0.0000000  -0.0000000
 20 a2200b      0.0993170  -0.0578864   0.5734722  -0.0000813  -0.0000572   0.0000763   0.0000000  -0.0000000   0.0000000
 20 22ba00     -0.0993170  -0.5255847   0.2366050  -0.0001651  -0.0000297  -0.0000127   0.0000000  -0.0000000   0.0000000
 20 22ab00      0.0993170   0.5255847  -0.2366050   0.0001651   0.0000297   0.0000127  -0.0000000   0.0000000  -0.0000000
 20 2b2a00     -0.0000000   0.0000116  -0.0000487  -0.0156554  -0.4986686  -0.0158271   0.4294830   0.2073388   0.1479043
 20 2a2b00      0.0000000  -0.0000116   0.0000487   0.0156554   0.4986686   0.0158271  -0.4294830  -0.2073388  -0.1479043
 20 22b0a0     -0.0000000   0.0000116  -0.0000487  -0.0156554  -0.4986686  -0.0158271  -0.4294830  -0.2073388  -0.1479043
 20 22a0b0      0.0000000  -0.0000116   0.0000487   0.0156554   0.4986686   0.0158271   0.4294830   0.2073388   0.1479043
 20 2b20a0     -0.0993170   0.4676983   0.3368672   0.0000838  -0.0000275   0.0000890   0.0000000  -0.0000000   0.0000000
 20 2a20b0      0.0993170  -0.4676983  -0.3368672  -0.0000838   0.0000275  -0.0000890  -0.0000000   0.0000000  -0.0000000
 20 b220a0     -0.0000000  -0.0000570   0.0000911   0.3400054   0.0009250  -0.3654605   0.0340163  -0.3340715   0.3695400
 20 a220b0      0.0000000   0.0000570  -0.0000911  -0.3400054  -0.0009250   0.3654605  -0.0340163   0.3340715  -0.3695400
 20 2b200a      0.0000000  -0.0000570   0.0000911   0.3400054   0.0009250  -0.3654605  -0.0340163   0.3340715  -0.3695400
 20 2a200b     -0.0000000   0.0000570  -0.0000911  -0.3400054  -0.0009250   0.3654605   0.0340163  -0.3340715   0.3695400
 20 22b00a      0.0000000  -0.0001254  -0.0000083   0.3651262  -0.0222426   0.3396381  -0.2524043   0.3077784   0.3014717
 20 22a00b     -0.0000000   0.0001254   0.0000083  -0.3651262   0.0222426  -0.3396381   0.2524043  -0.3077784  -0.3014717
 20 a22b00      0.0000000   0.0001254   0.0000083  -0.3651262   0.0222426  -0.3396381  -0.2524043   0.3077784   0.3014717
 20 b22a00     -0.0000000  -0.0001254  -0.0000083   0.3651262  -0.0222426   0.3396381   0.2524043  -0.3077784  -0.3014717

 TOTAL ENERGIES                      -128.64798869  -127.99217791  -127.99217791
                                     -127.99217791  -127.99217791  -127.99217791
                                     -127.98865667  -127.98865667  -127.98865667

 CI vector for state symmetry 2
 ==============================

 20 22aa00      0.5766630
 20 2a20a0      0.5766630
 20 a2200a      0.5766630

 TOTAL ENERGIES                      -128.01612582



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        0.59       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.47      0.82      0.03      0.44
 REAL TIME  *         2.75 SEC
 DISK USED  *        30.35 MB (local),      172.91 MB (total)
 SF USED    *        14.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -128.6479887  -0.0
    -127.9921779   6.0
    -127.9921779   6.0
    -127.9921779   6.0
    -127.9921779   6.0
    -127.9921779   6.0
    -127.9886567   2.0
    -127.9886567   2.0
    -127.9886567   2.0
    -128.0161258  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 10
 Maximum number of shells:             5
 Maximum number of spin couplings:    14

 Reference space:      603 conf      924 CSFs
 N elec internal:     1107 conf     1764 CSFs
 N-1 el internal:     1016 conf     2352 CSFs
 N-2 el internal:      784 conf     2688 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.64798869
     2      -127.99217791
     3      -127.99217791
     4      -127.99217791
     5      -127.99217791
     6      -127.99217791
     7      -127.98865667
     8      -127.98865667
     9      -127.98865667

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1107D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2444D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1811D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1809D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1143D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2146D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2146D-06

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:     546
 Number of N-1 electron functions:    2352

 Number of internal configurations:                  924
 Number of singly external configurations:         58856
 Number of doubly external configurations:        342714
 Total number of contracted configurations:       402494
 Total number of uncontracted configurations:    1736612

 Diagonal Coupling coefficients finished.               Storage:   1195197 words, CPU-Time:      1.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    266467 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.64798869    -0.00000000    -0.29051169  0.43D-01  0.11D-01     1.55
    1     2     2     1.00000000     0.00000000  -127.99217791    -0.00000000    -0.21525463  0.13D-01  0.12D-01     1.55
    1     3     3     1.00000000     0.00000000  -127.99217791    -0.00000000    -0.21771798  0.13D-01  0.12D-01     1.55
    1     4     4     1.00000000     0.00000000  -127.99217791    -0.00000000    -0.21096126  0.13D-01  0.11D-01     1.55
    1     5     5     1.00000000     0.00000000  -127.99217791     0.00000000    -0.21104701  0.13D-01  0.11D-01     1.55
    1     6     6     1.00000000     0.00000000  -127.99217791     0.00000000    -0.21103270  0.13D-01  0.11D-01     1.55
    1     7     7     1.00000000     0.00000000  -127.98865667     0.00000000    -0.21230583  0.13D-01  0.11D-01     1.55
    1     8     8     1.00000000     0.00000000  -127.98865667    -0.00000000    -0.21244308  0.13D-01  0.11D-01     1.55
    1     9     9     1.00000000     0.00000000  -127.98865667    -0.00000000    -0.21243730  0.13D-01  0.11D-01     1.55
    2     1     1     1.04787181    -0.27392466  -128.92191335    -0.27392466    -0.02058306  0.15D-02  0.12D-02    10.39
    2     2     2     1.02357400    -0.21238011  -128.20455802    -0.21238011    -0.00754845  0.34D-03  0.51D-03    10.39
    2     3     3     1.02353277    -0.21236284  -128.20454075    -0.21236284    -0.00753602  0.32D-03  0.54D-03    10.39
    2     4     4     1.02365354    -0.21186837  -128.20404628    -0.21186837    -0.00799673  0.41D-03  0.51D-03    10.39
    2     5     5     1.02365683    -0.21186233  -128.20404025    -0.21186233    -0.00800359  0.41D-03  0.51D-03    10.39
    2     6     6     1.02364526    -0.21183615  -128.20401406    -0.21183615    -0.00802366  0.42D-03  0.51D-03    10.39
    2     7     7     1.02369661    -0.21261034  -128.20126701    -0.21261034    -0.00778705  0.39D-03  0.50D-03    10.39
    2     8     8     1.02369932    -0.21260200  -128.20125867    -0.21260200    -0.00779498  0.39D-03  0.50D-03    10.39
    2     9     9     1.02369028    -0.21256240  -128.20121907    -0.21256240    -0.00781984  0.39D-03  0.50D-03    10.39
    3     1     1     1.04767374    -0.29647113  -128.94445982    -0.02254647    -0.00157217  0.30D-04  0.12D-03    18.95
    3     2     2     1.02509500    -0.22020913  -128.21238704    -0.00782902    -0.00058362  0.24D-04  0.46D-04    18.95
    3     3     3     1.02509225    -0.22019634  -128.21237426    -0.00783351    -0.00059145  0.25D-04  0.44D-04    18.95
    3     4     4     1.02509165    -0.22019559  -128.21237351    -0.00832723    -0.00059226  0.25D-04  0.44D-04    18.95
    3     5     5     1.02507059    -0.22019397  -128.21237188    -0.00833163    -0.00061110  0.26D-04  0.48D-04    18.95
    3     6     6     1.02508509    -0.22018920  -128.21236711    -0.00835305    -0.00059444  0.25D-04  0.44D-04    18.95
    3     7     7     1.02515722    -0.22067008  -128.20932675    -0.00805974    -0.00057613  0.26D-04  0.43D-04    18.95
    3     8     8     1.02515638    -0.22066905  -128.20932572    -0.00806705    -0.00057718  0.26D-04  0.43D-04    18.95
    3     9     9     1.02514987    -0.22066062  -128.20931729    -0.00809822    -0.00058059  0.26D-04  0.43D-04    18.95
    4     1     1     1.04913528    -0.29846639  -128.94645508    -0.00199526    -0.00018426  0.61D-05  0.13D-04    27.45
    4     2     2     1.02613712    -0.22098521  -128.21316312    -0.00077607    -0.00009541  0.47D-05  0.79D-05    27.45
    4     3     3     1.02612049    -0.22098477  -128.21316269    -0.00078843    -0.00009493  0.47D-05  0.74D-05    27.45
    4     4     4     1.02611979    -0.22098459  -128.21316250    -0.00078900    -0.00009513  0.48D-05  0.75D-05    27.45
    4     5     5     1.02613563    -0.22098378  -128.21316169    -0.00078981    -0.00009734  0.52D-05  0.82D-05    27.45
    4     6     6     1.02611846    -0.22098247  -128.21316039    -0.00079327    -0.00009586  0.48D-05  0.75D-05    27.45
    4     7     7     1.02613991    -0.22142626  -128.21008293    -0.00075618    -0.00008956  0.46D-05  0.70D-05    27.45
    4     8     8     1.02613931    -0.22142613  -128.21008280    -0.00075709    -0.00008977  0.47D-05  0.70D-05    27.45
    4     9     9     1.02613773    -0.22142396  -128.21008063    -0.00076334    -0.00009058  0.47D-05  0.71D-05    27.45
    5     1     1     1.04999202    -0.29869579  -128.94668448    -0.00022940    -0.00002272  0.11D-05  0.14D-05    35.96
    5     2     2     1.02630901    -0.22111970  -128.21329762    -0.00013450    -0.00002409  0.13D-05  0.18D-05    35.96
    5     3     3     1.02631139    -0.22111955  -128.21329746    -0.00013478    -0.00002408  0.13D-05  0.18D-05    35.96
    5     4     4     1.02631453    -0.22111937  -128.21329728    -0.00013478    -0.00002394  0.13D-05  0.18D-05    35.96
    5     5     5     1.02631433    -0.22111931  -128.21329722    -0.00013553    -0.00002397  0.13D-05  0.18D-05    35.96
    5     6     6     1.02631445    -0.22111864  -128.21329655    -0.00013617    -0.00002419  0.13D-05  0.18D-05    35.96
    5     7     7     1.02631428    -0.22154858  -128.21020525    -0.00012232    -0.00002081  0.10D-05  0.16D-05    35.96
    5     8     8     1.02631406    -0.22154856  -128.21020523    -0.00012243    -0.00002082  0.10D-05  0.16D-05    35.96
    5     9     9     1.02631370    -0.22154781  -128.21020448    -0.00012385    -0.00002112  0.10D-05  0.16D-05    35.96
    6     1     1     1.04995569    -0.29872288  -128.94671157    -0.00002709    -0.00000268  0.60D-07  0.21D-06    44.44
    6     2     2     1.02630559    -0.22115405  -128.21333196    -0.00003434    -0.00000653  0.27D-06  0.45D-06    44.44
    6     3     3     1.02630518    -0.22115400  -128.21333191    -0.00003445    -0.00000652  0.27D-06  0.45D-06    44.44
    6     4     4     1.02630410    -0.22115377  -128.21333169    -0.00003441    -0.00000658  0.27D-06  0.44D-06    44.44
    6     5     5     1.02630411    -0.22115376  -128.21333167    -0.00003445    -0.00000659  0.28D-06  0.44D-06    44.44
    6     6     6     1.02630334    -0.22115358  -128.21333149    -0.00003494    -0.00000666  0.28D-06  0.44D-06    44.44
    6     7     7     1.02631077    -0.22157773  -128.21023440    -0.00002915    -0.00000527  0.20D-06  0.37D-06    44.44
    6     8     8     1.02631077    -0.22157772  -128.21023439    -0.00002916    -0.00000527  0.20D-06  0.37D-06    44.44
    6     9     9     1.02630967    -0.22157750  -128.21023417    -0.00002969    -0.00000539  0.21D-06  0.37D-06    44.44
    7     1     1     1.04997122    -0.29872609  -128.94671478    -0.00000321    -0.00000042  0.11D-07  0.30D-07    52.94
    7     2     2     1.02634091    -0.22116217  -128.21334009    -0.00000813    -0.00000171  0.12D-06  0.13D-06    52.94
    7     3     3     1.02633834    -0.22116211  -128.21334002    -0.00000811    -0.00000168  0.11D-06  0.12D-06    52.94
    7     4     4     1.02633702    -0.22116197  -128.21333988    -0.00000819    -0.00000170  0.11D-06  0.12D-06    52.94
    7     5     5     1.02633702    -0.22116196  -128.21333987    -0.00000821    -0.00000170  0.11D-06  0.12D-06    52.94
    7     6     6     1.02633638    -0.22116188  -128.21333980    -0.00000830    -0.00000173  0.11D-06  0.12D-06    52.94
    7     7     7     1.02633764    -0.22158415  -128.21024082    -0.00000643    -0.00000121  0.75D-07  0.84D-07    52.94
    7     8     8     1.02633761    -0.22158415  -128.21024082    -0.00000642    -0.00000121  0.74D-07  0.84D-07    52.94
    7     9     9     1.02633693    -0.22158409  -128.21024076    -0.00000658    -0.00000125  0.76D-07  0.86D-07    52.94
    8     1     1     1.04998648    -0.29872660  -128.94671529    -0.00000050    -0.00000008  0.26D-08  0.49D-08    61.40
    8     2     2     1.02635554    -0.22116427  -128.21334218    -0.00000209    -0.00000057  0.32D-07  0.47D-07    61.40
    8     3     3     1.02635610    -0.22116423  -128.21334215    -0.00000212    -0.00000058  0.32D-07  0.46D-07    61.40
    8     4     4     1.02635676    -0.22116416  -128.21334207    -0.00000219    -0.00000060  0.32D-07  0.44D-07    61.40
    8     5     5     1.02635670    -0.22116416  -128.21334207    -0.00000220    -0.00000060  0.33D-07  0.44D-07    61.40
    8     6     6     1.02635646    -0.22116411  -128.21334202    -0.00000222    -0.00000060  0.33D-07  0.44D-07    61.40
    8     7     7     1.02635169    -0.22158561  -128.21024228    -0.00000146    -0.00000034  0.16D-07  0.27D-07    61.40
    8     8     8     1.02635172    -0.22158560  -128.21024227    -0.00000146    -0.00000034  0.16D-07  0.27D-07    61.40
    8     9     9     1.02635139    -0.22158559  -128.21024226    -0.00000150    -0.00000035  0.16D-07  0.27D-07    61.40
    9     1     1     1.04998648    -0.29872660  -128.94671529    -0.00000000    -0.00000008  0.26D-08  0.49D-08    69.19
    9     2     2     1.02636806    -0.22116504  -128.21334296    -0.00000078    -0.00000022  0.90D-08  0.16D-07    69.19
    9     3     3     1.02636817    -0.22116503  -128.21334294    -0.00000079    -0.00000023  0.93D-08  0.17D-07    69.19
    9     4     4     1.02636789    -0.22116498  -128.21334290    -0.00000082    -0.00000025  0.10D-07  0.19D-07    69.19
    9     5     5     1.02636791    -0.22116498  -128.21334289    -0.00000082    -0.00000025  0.10D-07  0.19D-07    69.19
    9     6     6     1.02636780    -0.22116494  -128.21334286    -0.00000084    -0.00000025  0.11D-07  0.18D-07    69.19
    9     7     7     1.02636784    -0.22158615  -128.21024282    -0.00000054    -0.00000006  0.23D-08  0.42D-08    69.19
    9     8     8     1.02636022    -0.22158604  -128.21024271    -0.00000044    -0.00000011  0.37D-08  0.89D-08    69.19
    9     9     9     1.02636023    -0.22158604  -128.21024271    -0.00000045    -0.00000011  0.37D-08  0.89D-08    69.19
   10     1     1     1.04998649    -0.29872660  -128.94671529    -0.00000000    -0.00000008  0.26D-08  0.49D-08    76.33
   10     2     2     1.02637225    -0.22116532  -128.21334323    -0.00000027    -0.00000007  0.46D-08  0.53D-08    76.33
   10     3     3     1.02637209    -0.22116531  -128.21334322    -0.00000028    -0.00000007  0.45D-08  0.53D-08    76.33
   10     4     4     1.02637154    -0.22116529  -128.21334320    -0.00000031    -0.00000008  0.46D-08  0.59D-08    76.33
   10     5     5     1.02637155    -0.22116529  -128.21334320    -0.00000031    -0.00000008  0.45D-08  0.59D-08    76.33
   10     6     6     1.02637139    -0.22116525  -128.21334317    -0.00000031    -0.00000008  0.45D-08  0.60D-08    76.33
   10     7     7     1.02636604    -0.22158621  -128.21024288    -0.00000006    -0.00000001  0.26D-09  0.74D-09    76.33
   10     8     8     1.02636604    -0.22158621  -128.21024288    -0.00000016    -0.00000001  0.27D-09  0.74D-09    76.33
   10     9     9     1.02636784    -0.22158615  -128.21024282    -0.00000011    -0.00000006  0.23D-08  0.42D-08    76.33
   11     1     1     1.04998649    -0.29872660  -128.94671529    -0.00000000    -0.00000008  0.26D-08  0.49D-08    80.72
   11     2     2     1.02637819    -0.22116546  -128.21334337    -0.00000014    -0.00000001  0.35D-09  0.10D-08    80.72
   11     3     3     1.02637819    -0.22116545  -128.21334337    -0.00000015    -0.00000001  0.35D-09  0.11D-08    80.72
   11     4     4     1.02637818    -0.22116542  -128.21334333    -0.00000013    -0.00000001  0.34D-09  0.10D-08    80.72
   11     5     5     1.02637225    -0.22116532  -128.21334323    -0.00000003    -0.00000007  0.46D-08  0.53D-08    80.72
   11     6     6     1.02637209    -0.22116531  -128.21334322    -0.00000005    -0.00000007  0.45D-08  0.53D-08    80.72
   11     7     7     1.02636604    -0.22158621  -128.21024288    -0.00000000    -0.00000001  0.27D-09  0.74D-09    80.72
   11     8     8     1.02636604    -0.22158621  -128.21024288    -0.00000000    -0.00000001  0.27D-09  0.74D-09    80.72
   11     9     9     1.02636784    -0.22158615  -128.21024282    -0.00000000    -0.00000006  0.23D-08  0.42D-08    80.72


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.6%
 S   0.3%   1.3%
 P   3.4%  16.3%  60.6%

 Initialization:   1.4%
 Other:           16.1%

 Total CPU:       80.7 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20222000           0.9595532   0.0000000   0.0000000  -0.0000000  -0.0000003  -0.0000001  -0.0000000  -0.0000000   0.0000000
 202/20\0           0.0924730  -0.0000000   0.0000000   0.0000000  -0.1134239   0.7965160   0.0000000   0.0000000   0.0000000
 2022/\00           0.0924730  -0.0000000   0.0000000   0.0000000   0.7465166  -0.3000280  -0.0000000  -0.0000000  -0.0000000
 202/200\          -0.0000000   0.0000000   0.6967493   0.0000000   0.0000000  -0.0000000   0.0000000   0.6970579   0.0000000
 2022/00\           0.0000000   0.6967499   0.0000000  -0.0000000   0.0000000  -0.0000000   0.6970572  -0.0000000   0.0000000
 202/2\00          -0.0000000  -0.0000000   0.0000000   0.6967577  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.6970488
 2022/0\0           0.0000000   0.0000000  -0.0000000   0.6967611  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.6970454
 20/22\00          -0.0000000   0.6967689   0.0000000   0.0000000  -0.0000000   0.0000000  -0.6970382  -0.0000000   0.0000000
 20/220\0          -0.0000000  -0.0000000   0.6967696  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.6970375  -0.0000000
 20/2200\           0.0924731   0.0000000  -0.0000000  -0.0000000  -0.6330883  -0.4964861   0.0000000   0.0000000   0.0000000
 /\222000           0.0594800  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0000001   0.0000000  -0.0000000   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20\22000   7.2     0.0833502  -0.0000000  -0.0000000   0.0000000   0.0128017   0.0100395  -0.0000000   0.0000000  -0.0000000
 2022\000   8.2     0.0833494  -0.0000000  -0.0000000   0.0000000  -0.0150960   0.0060669   0.0000000  -0.0000000  -0.0000000
 202\2000   9.2     0.0833494   0.0000000  -0.0000000   0.0000000   0.0022933  -0.0161069  -0.0000000  -0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.972641    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2           0.000000    0.000000    0.000000   -0.000000    0.987040    0.000000   -0.000000   -0.000013    0.000000
 3           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.987040    0.000000    0.000000   -0.000014
 4          -0.000000   -0.000000   -0.000000    0.987040    0.000000    0.000000   -0.000002   -0.000000    0.000000
 5           0.000000    0.609729   -0.776199   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000000   -0.776199   -0.609729   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000013   -0.000000    0.000000    0.987059    0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000014   -0.000000   -0.000000    0.987059
 9           0.000000   -0.000000    0.000000    0.000002    0.000000   -0.000000    0.987058   -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.972641    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 2           0.000000    0.987040    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.987040    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.987040    0.000000    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.987043   -0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.987044    0.000000   -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.987059   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.987059    0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.987058


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97264053 (fixed)   0.97590635 (relaxed)   0.97264053 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00672664   -0.00000000   -0.18098250
 Singles      0.03049226   -0.10942859   -0.11214125
 Pairs        0.01983047    0.00000000   -0.00560285
 Total        1.05704937   -0.10942859   -0.29872660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.64798869
 Nuclear energy                         0.00000000
 Kinetic energy                       129.87312957
 One electron energy                 -182.43978097
 Two electron energy                   53.49306569
 Virial quotient                       -0.99286677
 Correlation energy                    -0.29872660
 !MRCI STATE 1.1 Energy              -128.946715285872

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.96375745 (Davidson, fixed reference)
 Cluster corrected energies          -128.96164758 (Davidson, relaxed reference)
 Cluster corrected energies          -128.96375745 (Davidson, rotated reference)

 Cluster corrected energies          -128.95986371 (Pople, fixed reference)
 Cluster corrected energies          -128.95819593 (Pople, relaxed reference)
 Cluster corrected energies          -128.95986371 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98704040 (fixed)   0.98706622 (relaxed)   0.98704040 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005233    0.00000000   -0.15024800
 Singles      0.01093044   -0.06695769   -0.06759362
 Pairs        0.01544913   -0.00000000   -0.00332384
 Total        1.02643190   -0.06695769   -0.22116546
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99217791
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33972140
 One electron energy                 -177.76536533
 Two electron energy                   49.55202197
 Virial quotient                       -0.99129132
 Correlation energy                    -0.22116546
 !MRCI STATE 2.1 Energy              -128.213343367956

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21918919 (Davidson, fixed reference)
 Cluster corrected energies          -128.21917731 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21918919 (Davidson, rotated reference)

 Cluster corrected energies          -128.21778586 (Pople, fixed reference)
 Cluster corrected energies          -128.21777671 (Pople, relaxed reference)
 Cluster corrected energies          -128.21778586 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98704040 (fixed)   0.98706623 (relaxed)   0.98704040 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005233    0.00000000   -0.15025016
 Singles      0.01093045   -0.06695771   -0.06759362
 Pairs        0.01544912    0.00000224   -0.00332168
 Total        1.02643190   -0.06695547   -0.22116545
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99217791
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33972040
 One electron energy                 -177.76536516
 Two electron energy                   49.55202179
 Virial quotient                       -0.99129133
 Correlation energy                    -0.22116545
 !MRCI STATE 3.1 Energy              -128.213343365635

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21918919 (Davidson, fixed reference)
 Cluster corrected energies          -128.21917731 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21918919 (Davidson, rotated reference)

 Cluster corrected energies          -128.21778586 (Pople, fixed reference)
 Cluster corrected energies          -128.21777671 (Pople, relaxed reference)
 Cluster corrected energies          -128.21778586 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.98704041 (fixed)   0.98706623 (relaxed)   0.98704041 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005233    0.00000000   -0.15024805
 Singles      0.01093041   -0.06695760   -0.06759360
 Pairs        0.01544915   -0.00000000   -0.00332377
 Total        1.02643189   -0.06695760   -0.22116542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99217791
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33972228
 One electron energy                 -177.76536677
 Two electron energy                   49.55202344
 Virial quotient                       -0.99129131
 Correlation energy                    -0.22116542
 !MRCI STATE 4.1 Energy              -128.213343334450

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21918915 (Davidson, fixed reference)
 Cluster corrected energies          -128.21917728 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21918915 (Davidson, rotated reference)

 Cluster corrected energies          -128.21778582 (Pople, fixed reference)
 Cluster corrected energies          -128.21777668 (Pople, relaxed reference)
 Cluster corrected energies          -128.21778582 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.77619918 (fixed)   0.98706908 (relaxed)   0.98704342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005200    0.00000000   -0.15024456
 Singles      0.01093010   -0.06696195   -0.06759119
 Pairs        0.01544353   -0.00000000   -0.00332956
 Total        1.02642562   -0.06696194   -0.22116532
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99217791
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33997919
 One electron energy                 -177.76555498
 Two electron energy                   49.55221175
 Virial quotient                       -0.99128934
 Correlation energy                    -0.22116532
 !MRCI STATE 5.1 Energy              -128.213343227914

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21918766 (Davidson, fixed reference)
 Cluster corrected energies          -128.21917586 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21918766 (Davidson, rotated reference)

 Cluster corrected energies          -128.21778464 (Pople, fixed reference)
 Cluster corrected energies          -128.21777556 (Pople, relaxed reference)
 Cluster corrected energies          -128.21778464 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77619941 (fixed)   0.98706916 (relaxed)   0.98704350 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005199    0.00000000   -0.15024470
 Singles      0.01092999   -0.06696183   -0.06759116
 Pairs        0.01544347    0.00000000   -0.00332945
 Total        1.02642545   -0.06696183   -0.22116531
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99217791
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33996869
 One electron energy                 -177.76554889
 Two electron energy                   49.55220567
 Virial quotient                       -0.99128943
 Correlation energy                    -0.22116531
 !MRCI STATE 6.1 Energy              -128.213343219843

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21918761 (Davidson, fixed reference)
 Cluster corrected energies          -128.21917581 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21918761 (Davidson, rotated reference)

 Cluster corrected energies          -128.21778461 (Pople, fixed reference)
 Cluster corrected energies          -128.21777552 (Pople, relaxed reference)
 Cluster corrected energies          -128.21778461 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.98705892 (fixed)   0.98707207 (relaxed)   0.98705892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002664    0.00000000   -0.14965094
 Singles      0.01106256   -0.06799138   -0.06863051
 Pairs        0.01530418   -0.00000000   -0.00330477
 Total        1.02639339   -0.06799138   -0.22158621
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98865667
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33851724
 One electron energy                 -177.76419395
 Two electron energy                   49.55395106
 Virial quotient                       -0.99127658
 Correlation energy                    -0.22158621
 !MRCI STATE 7.1 Energy              -128.210242884797

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21609130 (Davidson, fixed reference)
 Cluster corrected energies          -128.21608524 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21609130 (Davidson, rotated reference)

 Cluster corrected energies          -128.21468726 (Pople, fixed reference)
 Cluster corrected energies          -128.21468259 (Pople, relaxed reference)
 Cluster corrected energies          -128.21468726 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.98705892 (fixed)   0.98707207 (relaxed)   0.98705892 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002664    0.00000000   -0.00000575
 Singles      0.01106255   -0.06799135   -0.06863050
 Pairs        0.01530418   -0.15359486   -0.15294996
 Total        1.02639338   -0.22158621   -0.22158621
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98865667
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33851766
 One electron energy                 -177.76419424
 Two electron energy                   49.55395136
 Virial quotient                       -0.99127658
 Correlation energy                    -0.22158621
 !MRCI STATE 8.1 Energy              -128.210242876210

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21609128 (Davidson, fixed reference)
 Cluster corrected energies          -128.21608523 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21609128 (Davidson, rotated reference)

 Cluster corrected energies          -128.21468725 (Pople, fixed reference)
 Cluster corrected energies          -128.21468258 (Pople, relaxed reference)
 Cluster corrected energies          -128.21468725 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98705805 (fixed)   0.98707120 (relaxed)   0.98705805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00002665    0.00000000   -0.14964315
 Singles      0.01106551   -0.06799904   -0.06862996
 Pairs        0.01530303   -0.00000000   -0.00331303
 Total        1.02639519   -0.06799904   -0.22158615
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98865667
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33822460
 One electron energy                 -177.76413875
 Two electron energy                   49.55389593
 Virial quotient                       -0.99127882
 Correlation energy                    -0.22158615
 !MRCI STATE 9.1 Energy              -128.210242820145

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21609163 (Davidson, fixed reference)
 Cluster corrected energies          -128.21608557 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21609163 (Davidson, rotated reference)

 Cluster corrected energies          -128.21468750 (Pople, fixed reference)
 Cluster corrected energies          -128.21468283 (Pople, relaxed reference)
 Cluster corrected energies          -128.21468750 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       29.57       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        88.31     86.83      0.82      0.03      0.44
 REAL TIME  *        92.44 SEC
 DISK USED  *        59.33 MB (local),      317.80 MB (total)
 SF USED    *       296.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -128.96375745  AU                              
 SETTING HLSDIAG(2)     =      -128.21918919  AU                              
 SETTING HLSDIAG(3)     =      -128.21918919  AU                              
 SETTING HLSDIAG(4)     =      -128.21918915  AU                              
 SETTING HLSDIAG(5)     =      -128.21918766  AU                              
 SETTING HLSDIAG(6)     =      -128.21918761  AU                              
 SETTING HLSDIAG(7)     =      -128.21609130  AU                              
 SETTING HLSDIAG(8)     =      -128.21609128  AU                              
 SETTING HLSDIAG(9)     =      -128.21609163  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 1  Roots:    1
 Number of reference states: 1  Roots:    1

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 10
 Maximum number of shells:             4
 Maximum number of spin couplings:    28

 Reference space:      533 conf     1176 CSFs
 N elec internal:     1037 conf     2352 CSFs
 N-1 el internal:     1016 conf     3696 CSFs
 N-2 el internal:      784 conf     4620 CSFs

 Number of electrons in valence space:                      8
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces:  8


 Number of core orbitals:           1 (   1   0 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:      50 (  24  26 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -128.01612582

 Number of blocks in overlap matrix:    14   Smallest eigenvalue:  0.34D-03
 Number of N-2 electron functions:      64
 Number of N-1 electron functions:    3696

 Number of internal configurations:                 1176
 Number of singly external configurations:         92424
 Number of doubly external configurations:         40216
 Total number of contracted configurations:       133816
 Total number of uncontracted configurations:    2960688

 Diagonal Coupling coefficients finished.               Storage:    446364 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    225198 words, CPU-time:      0.00 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.01612582     0.00000000    -0.23084842  0.14D-01  0.15D-01     0.07
    2     1     1     1.02527822    -0.21555616  -128.23168198    -0.21555616    -0.00536079  0.33D-03  0.37D-03     0.24
    3     1     1     1.02632398    -0.22077371  -128.23689953    -0.00521755    -0.00028094  0.27D-04  0.19D-04     0.42
    4     1     1     1.02700204    -0.22108187  -128.23720770    -0.00030816    -0.00001737  0.18D-05  0.13D-05     0.60
    5     1     1     1.02712993    -0.22109931  -128.23722513    -0.00001744    -0.00000130  0.92D-07  0.13D-06     0.78
    6     1     1     1.02715841    -0.22110063  -128.23722646    -0.00000132    -0.00000010  0.79D-08  0.82D-08     0.96
    7     1     1     1.02716094    -0.22110074  -128.23722656    -0.00000011    -0.00000001  0.60D-09  0.72D-09     1.14


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   1.8%
 S   0.9%  15.8%
 P   6.1%  47.4%  16.7%

 Initialization:   4.4%
 Other:            7.0%

 Total CPU:        1.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/2200/           0.5687822
 202/20/0           0.5687821
 2022//00           0.5687820


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98657421 (fixed)   0.98669006 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00023487    0.00000000   -0.00005053
 Singles      0.01229328   -0.06928241   -0.07008201
 Pairs        0.01487404   -0.15181834   -0.15096820
 Total        1.02740218   -0.22110075   -0.22110074
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.01612582
 Nuclear energy                         0.00000000
 Kinetic energy                       129.28745205
 One electron energy                 -177.76230059
 Two electron energy                   49.52507403
 Virial quotient                       -0.99187682
 Correlation energy                    -0.22110074
 !MRCI STATE 1.1 Energy              -128.237226564654

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.24328521 (Davidson, fixed reference)
 Cluster corrected energies          -128.24323187 (Davidson, relaxed reference)

 Cluster corrected energies          -128.24130220 (Pople, fixed reference)
 Cluster corrected energies          -128.24126600 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       30.65       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        89.53      1.21     86.83      0.82      0.03      0.44
 REAL TIME  *        93.75 SEC
 DISK USED  *        60.41 MB (local),      323.24 MB (total)
 SF USED    *       296.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(10)    =      -128.24323187  AU                              


         HLSDIAG
    -128.9637574
    -128.2191892
    -128.2191892
    -128.2191892
    -128.2191877
    -128.2191876
    -128.2160913
    -128.2160913
    -128.2160916
    -128.2432319
                                                  

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

         907905. SPIN-ORBIT INTEGRALS WRITTEN OUT IN      236 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:      0.17 sec, REAL time:      0.19 sec


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       30.65       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        91.69      2.12      1.21     86.83      0.82      0.03      0.44
 REAL TIME  *        95.99 SEC
 DISK USED  *        60.43 MB (local),      399.26 MB (total)
 SF USED    *       296.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals


 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     3    3    3
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=   9

 Original energies:   -128.946715   -128.213343   -128.213343   -128.213343   -128.213343   -128.213343   -128.210243   -128.210243
                      -128.210243
 Replaced energies:   -128.963757   -128.219189   -128.219189   -128.219189   -128.219188   -128.219188   -128.216091   -128.216091
                      -128.216092

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -128.237227
 Replaced energies:   -128.243232



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -128.96375745

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  163413.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  163413.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  163413.85       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  163414.18       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  163414.19       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  164093.75       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -135.59

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  164093.76       0.00    -135.59
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  164093.68      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   10   1.1  1.0  1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -135.59      -0.00  158137.09
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     135.59      -0.00       0.00      -0.00

   11   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -191.74      -0.00

   12   1.1  1.0 -1.0      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -135.59      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00    -135.59       0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12

    1   1.1  0.0  0.0       0.00      -0.00
                           -0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.00
                           -0.00      -0.00

    3   3.1  0.0  0.0       0.00       0.00
                            0.00      -0.00

    4   4.1  0.0  0.0       0.00      -0.00
                           -0.00      -0.00

    5   5.1  0.0  0.0       0.00      -0.00
                            0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00
                           -0.00      -0.00

    7   7.1  0.0  0.0       0.00       0.00
                           -0.00     135.59

    8   8.1  0.0  0.0       0.00    -135.59
                           -0.00      -0.00

    9   9.1  0.0  0.0       0.00      -0.00
                          191.74       0.00

   10   1.1  1.0  1.0       0.00       0.00
                            0.00       0.00

   11   1.1  1.0  0.0  158137.09       0.00
                            0.00       0.00

   12   1.1  1.0 -1.0       0.00  158137.09
                           -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 12)

    The diagonal matrixelements are shifted by   -128.96375745 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  163413.844       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000  163413.844       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000  163413.852       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  163414.180       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  163414.190       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000  164093.754       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  164093.756
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000       0.003      -0.000      -0.000       0.000       0.000    -191.746
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.003      -0.000      -0.000       0.000      -0.000     191.746      -0.000

  State Sym Spin    / Nr.        9          10          11          12

    1    1  |0 0>               0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    2    1  |0 0>               0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.003

    3    1  |0 0>               0.000       0.003       0.000       0.000
                                0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000      -0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    5    1  |0 0>               0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000    -191.746

    8    1  |0 0>               0.000    -191.746       0.000       0.000
                                0.000       0.000      -0.000       0.000

    9    1  |0 0>          164093.680      -0.000       0.000       0.000
                                0.000       0.000     191.744      -0.000

    1    1  |1 1>+             -0.000  158137.086       0.000       0.000
                                0.000       0.000       0.000      -0.000

    1    1  |1 0>               0.000       0.000  158137.086       0.000
                             -191.744       0.000       0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000  158137.086
                                0.000      -0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -128.96375745     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -128.24325996     0.72049749   158130.92      0.72049749   158130.92     19.6057
    3  -128.24325996     0.72049749   158130.92      0.72049749   158130.92     19.6057
    4  -128.24325996     0.72049749   158130.92      0.72049749   158130.92     19.6057
    5  -128.21918919     0.74456826   163413.84      0.74456826   163413.84     20.2607
    6  -128.21918919     0.74456826   163413.84      0.74456826   163413.84     20.2607
    7  -128.21918915     0.74456830   163413.85      0.74456830   163413.85     20.2607
    8  -128.21918766     0.74456979   163414.18      0.74456979   163414.18     20.2608
    9  -128.21918761     0.74456984   163414.19      0.74456984   163414.19     20.2608
   10  -128.21606354     0.74769391   164099.85      0.74769391   164099.85     20.3458
   11  -128.21606320     0.74769425   164099.92      0.74769425   164099.92     20.3458
   12  -128.21606319     0.74769426   164099.92      0.74769426   164099.92     20.3458

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000048 -0.00000000 -0.00000000  1.00000000 -0.00000004 -0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000052  0.00000000  0.00000004  1.00000000  0.00000001  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000001  1.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  1.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000 -0.03214031  0.00000228  0.00000001  0.00000014  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000228  0.03214030 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000000  0.00000001  0.00000000  0.03214028  0.00000000  0.00000000  0.00000003 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00007091  0.99948336 -0.00000001 -0.00000000  0.00000051 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000019  0.00000001  0.99948337  0.00000000 -0.00000000  0.00000009 -0.00000000

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.99948336 -0.00007091 -0.00000019 -0.00000048 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000012  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000013
                           0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000002 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           1.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000010  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.99948337 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000

   8    1  |0 0>           0.00000000 -0.00000000  0.00000001  0.99948337
                           0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000  0.99948337 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.00000000 -0.00000000 -0.03214030
                           0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.03214028  0.00000000 -0.00000000

   1    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.03214031 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -128.96375745      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -128.24325996      0.72049749   158130.92      0.72049749   158130.92     19.6057
     3   1   -128.24325996      0.72049749   158130.92      0.72049749   158130.92     19.6057
     4   1   -128.24325996      0.72049749   158130.92      0.72049749   158130.92     19.6057
     5   1   -128.21918919      0.74456826   163413.84      0.74456826   163413.84     20.2607
     6   1   -128.21918919      0.74456826   163413.84      0.74456826   163413.84     20.2607
     7   1   -128.21918915      0.74456830   163413.85      0.74456830   163413.85     20.2607
     8   1   -128.21918766      0.74456979   163414.18      0.74456979   163414.18     20.2608
     9   1   -128.21918761      0.74456984   163414.19      0.74456984   163414.19     20.2608
    10   1   -128.21606354      0.74769391   164099.85      0.74769391   164099.85     20.3458
    11   1   -128.21606320      0.74769425   164099.92      0.74769425   164099.92     20.3458
    12   1   -128.21606319      0.74769426   164099.92      0.74769426   164099.92     20.3458

 E0 =   -128.96375745 is the energy of the lowest zeroth-order state
 E1 =   -128.96375745 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000048 -0.00000000 -0.00000000  1.00000000 -0.00000004 -0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000052  0.00000000  0.00000004  1.00000000  0.00000001  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000 -0.00000009  0.00000001 -0.00000001  1.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  1.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000 -0.03214031  0.00000228  0.00000001  0.00000014  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000228  0.03214030 -0.00000000 -0.00000000  0.00000014  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.00000001  0.00000000  0.03214028  0.00000000  0.00000000  0.00000003 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1     1    1  |1 1>+       0.00000000  0.00007091  0.99948336 -0.00000001 -0.00000000  0.00000051 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000019  0.00000001  0.99948337  0.00000000 -0.00000000  0.00000009 -0.00000000

 12  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.99948336 -0.00007091 -0.00000019 -0.00000048 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000012  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000013
                                0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000002 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        1.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000010  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.99948337 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.00000000  0.00000001  0.99948337
                                0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000  0.99948337 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000

 10  1     1    1  |1 1>+       0.00000000  0.00000000 -0.00000000 -0.03214030
                                0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.03214028  0.00000000 -0.00000000

 12  1     1    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.03214031 -0.00000000



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%  100.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
 10  1     1    1  |1 1>+         0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 0>          0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 1>-         0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>        100.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   99.90%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   99.90%
  9  1     9    1  |0 0>          0.00%   99.90%    0.00%    0.00%
 10  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.10%
 11  1     1    1  |1 0>          0.00%    0.10%    0.00%    0.00%
 12  1     1    1  |1 1>-         0.00%    0.00%    0.10%    0.00%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       30.65       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       120.89     29.20      2.12      1.21     86.83      0.82      0.03      0.44
 REAL TIME  *       126.05 SEC
 DISK USED  *        60.43 MB (local),      399.26 MB (total)
 SF USED    *       296.32 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -128.216063190528

              CI              CI           MULTI         RHF-SCF
   -128.23722656   -128.21024282   -128.01612582   -126.85019653
 **********************************************************************************************************************************
 Molpro calculation terminated
