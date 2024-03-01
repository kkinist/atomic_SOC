
 Working directory              : /wrk/irikura/molpro.q8UxKILezC/
 Global scratch directory       : /wrk/irikura/molpro.q8UxKILezC/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.q8UxKILezC/

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
     wf,nelec=10,sym=1,spin=0;state,10;
     wf,nelec=10,sym=1,spin=2;state,1;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,1; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Wed Jan 31 05:42:09 2024


 **********************************************************************************************************************************
 LABEL *   Ne SO-CI                                                                                                                                                      
  (24 PROC) 64 bit mpp version                                                           DATE: 26-Feb-24          TIME: 17:26:25  
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
 CPU TIMES  *         0.67      0.45
 REAL TIME  *         1.60 SEC
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
   1     -126.73389318    -126.73389318     0.00D+00     0.14D+00     0     0       0.00      0.00    start
   2     -126.83718121      -0.10328803     0.39D-01     0.35D-01     1     0       0.01      0.01    diag2
   3     -126.85007141      -0.01289020     0.18D-01     0.11D-01     2     0       0.00      0.01    diag2
   4     -126.85019500      -0.00012359     0.16D-02     0.13D-02     3     0       0.00      0.01    diag2
   5     -126.85019647      -0.00000147     0.91D-04     0.66D-04     4     0       0.00      0.01    diag2
   6     -126.85019648      -0.00000001     0.85D-05     0.80D-05     5     0       0.00      0.01    diag2
   7     -126.85019648      -0.00000000     0.36D-06     0.41D-06     6     0       0.00      0.01    diag2
   8     -126.85019648      -0.00000000     0.30D-07     0.24D-07     0     0       0.00      0.01    fixocc

 Final alpha occupancy:   2   3
 Final beta  occupancy:   1   3

 !RHF STATE 1.1 Energy               -126.850196479618
  RHF One-electron energy            -174.298876409176
  RHF Two-electron energy              47.448679929558
  RHF Kinetic energy                  127.691690369717
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.993409955748

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.66208     1  1  s    0.99902
    2.1     1.00000    -2.76199     1  2  s    1.10854
    1.2     2.00000    -1.55256     1  1  pz   1.07606
    2.2     2.00000    -1.55256     1  1  py   1.07606
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
 CPU TIMES  *         0.69      0.02      0.45
 REAL TIME  *         1.63 SEC
 DISK USED  *        29.43 MB (local),      168.30 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)

 Number of closed-shell orbitals:   1 (    1    0)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:      50 (   24   26)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             1
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 4 6 5 1 2   4 6 3 5 1 2 4 6 5 3   1 6 4 3 5 2 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.395D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.395D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.660D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.744D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.178D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 3 2 1 3 2 110   8 5 4 9 7 6 3 2 110   8 9 7 5 4 6 3 2 1 2   1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-01 (gradient)  0.10E-05 (energy)  0.10E-02 (step length)

 Weight factors for state symmetry  1:    0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091   0.09091
                                          0.09091   0.09091
 Weight factors for state symmetry  2:    0.09091

 Number of orbital rotations:      230   (     2 Core/Active     24 Core/Virtual   0 Active/Active    204 Active/Virtual)
 Total number of variables:      26806


 ITER. MIC  NCI  NEG     ENERGY(VAR)     ENERGY(PROJ)   ENERGY CHANGE     GRAD(0)  GRAD(ORB)   GRAD(CI)     STEP       TIME

 Not enough P space configurations found with threshold  0.40  for 10 states. Nplist= 1  threshold increased to    0.90
   1   98   42    0    -128.03300941    -128.04223612   -0.00922671    0.12140850 0.00000749 0.00001137  0.85D+00      0.27
   2  112   57    0    -128.04219316    -128.04219782   -0.00000466    0.00224193 0.00000000 0.00000007  0.19D-01      0.58
   3  103   24    0    -128.04219782    -128.04219782   -0.00000000    0.00000015 0.00000000 0.00000009  0.20D-06      0.75

 ** WVFN ****  CONVERGENCE REACHED, FINAL GRADIENT:  0.54D-09



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -128.643182638204
 Nuclear energy                         0.00000000
 Kinetic energy                       130.69802076
 One electron energy                 -183.44941745
 Two electron energy                   54.80623481
 Virial ratio                           1.98427797

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy             -127.992140479518
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93158691
 One electron energy                 -177.81191463
 Two electron energy                   49.81977415
 Virial ratio                           1.99271361

 !MCSCF STATE 2.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy             -127.992140479518
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93158691
 One electron energy                 -177.81191463
 Two electron energy                   49.81977415
 Virial ratio                           1.99271361

 !MCSCF STATE 3.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy             -127.992140479446
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93158691
 One electron energy                 -177.81191463
 Two electron energy                   49.81977415
 Virial ratio                           1.99271361

 !MCSCF STATE 4.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy             -127.992140479446
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93158691
 One electron energy                 -177.81191463
 Two electron energy                   49.81977415
 Virial ratio                           1.99271361

 !MCSCF STATE 5.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy             -127.992140479446
 Nuclear energy                         0.00000000
 Kinetic energy                       128.93158691
 One electron energy                 -177.81191463
 Two electron energy                   49.81977415
 Virial ratio                           1.99271361

 !MCSCF STATE 6.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy             -127.988412154161
 Nuclear energy                         0.00000000
 Kinetic energy                       128.91645069
 One electron energy                 -177.79797772
 Two electron energy                   49.80956556
 Virial ratio                           1.99280124

 !MCSCF STATE 7.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy             -127.988412154161
 Nuclear energy                         0.00000000
 Kinetic energy                       128.91645069
 One electron energy                 -177.79797772
 Two electron energy                   49.80956556
 Virial ratio                           1.99280124

 !MCSCF STATE 8.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy             -127.988412154161
 Nuclear energy                         0.00000000
 Kinetic energy                       128.91645069
 One electron energy                 -177.79797772
 Two electron energy                   49.80956556
 Virial ratio                           1.99280124

 !MCSCF STATE 9.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy            -127.881723617570
 Nuclear energy                         0.00000000
 Kinetic energy                       129.96836593
 One electron energy                 -179.17184536
 Two electron energy                   51.29012174
 Virial ratio                           1.98394500

 !MCSCF STATE 10.1 Dipole moment        0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000



 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy             -128.013330886285
 Nuclear energy                         0.00000000
 Kinetic energy                       128.85844662
 One electron energy                 -177.73615718
 Two electron energy                   49.72282630
 Virial ratio                           1.99344152

 !MCSCF STATE 1.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 State-averaged charge density matrix saved on record  2140.2 (density set 1)

 !MCSCF expec        <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LXLX|2.1>     1.983985189814
 !MCSCF expec        <3.1|LXLX|3.1>     2.016014746108
 !MCSCF expec        <4.1|LXLX|4.1>     1.691984446979
 !MCSCF expec        <5.1|LXLX|5.1>     3.038634759385
 !MCSCF expec        <6.1|LXLX|6.1>     1.269380857715
 !MCSCF expec        <7.1|LXLX|7.1>     0.999754147318
 !MCSCF expec        <8.1|LXLX|8.1>     0.992801739998
 !MCSCF expec        <9.1|LXLX|9.1>     0.007444112684
 !MCSCF expec      <10.1|LXLX|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LYLY|2.1>     3.740002627215
 !MCSCF expec        <3.1|LYLY|3.1>     0.259997363568
 !MCSCF expec        <4.1|LYLY|4.1>     2.573226319789
 !MCSCF expec        <5.1|LYLY|5.1>     1.097088931315
 !MCSCF expec        <6.1|LYLY|6.1>     2.329684758113
 !MCSCF expec        <7.1|LYLY|7.1>     0.083501792960
 !MCSCF expec        <8.1|LYLY|8.1>     0.916588991706
 !MCSCF expec        <9.1|LYLY|9.1>     0.999909215334
 !MCSCF expec      <10.1|LYLY|10.1>    -0.000000000000
 !MCSCF expec        <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec        <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec        <2.1|LZLZ|2.1>     0.276012182971
 !MCSCF expec        <3.1|LZLZ|3.1>     3.723987890324
 !MCSCF expec        <4.1|LZLZ|4.1>     1.734789233233
 !MCSCF expec        <5.1|LZLZ|5.1>     1.864276309301
 !MCSCF expec        <6.1|LZLZ|6.1>     2.400934384172
 !MCSCF expec        <7.1|LZLZ|7.1>     0.916744059722
 !MCSCF expec        <8.1|LZLZ|8.1>     0.090609268297
 !MCSCF expec        <9.1|LZLZ|9.1>     0.992646671981
 !MCSCF expec      <10.1|LZLZ|10.1>    -0.000000000000
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
 !MCSCF expec      <10.1|L**2|10.1>    -0.000000000000
 !MCSCF expec        <1.1|L**2|1.1>    -0.000000000000


 NATURAL ORBITALS (state averaged)
 =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -33.28949     1  1  s    0.99932
    2.1     1.99779    -2.30545     1  2  s    1.07033
    3.1     0.00271     1.93367     1  2  s   -0.67022    1  3  s   -0.92808    1  4  s    1.47237
    1.2     1.69640    -1.11455     1  1  py   1.07501
    2.2     1.69640    -1.11455     1  1  px   1.07501
    3.2     1.69640    -1.11455     1  1  pz   1.07501
    4.2     0.30343     0.15477     1  6  pz   1.11363
    5.2     0.30343     0.15477     1  6  px   1.11363
    6.2     0.30343     0.15477     1  6  py   1.11363


 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 1 2 5 4 6 3 2   4 5 3 6 1 2 4 5 3 6   1 6 5 4 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 1 2 3 2 110   8 4 5 7 9 6 3 2 110   8 7 9 4 5 6 2 1 3 2   1 3

 Natural orbital dump (state averaged) at molpro section  2140.2    (Orbital set 2)


 CI vector for state symmetry 1
 ==============================

 State:              1           2           3           4           5           6           7           8           9
 20 222000      0.9609476  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
 20 22ba00     -0.1084129  -0.1335001   0.5611224  -0.0001006   0.0000694   0.0000394  -0.0000000   0.0000000   0.0000000
 20 22ab00      0.1084129   0.1335001  -0.5611224   0.0001006  -0.0000694  -0.0000394   0.0000000  -0.0000000  -0.0000000
 20 a2200b      0.1084129  -0.5526963   0.1649467   0.0000362  -0.0000658   0.0000293   0.0000000  -0.0000000  -0.0000000
 20 b2200a     -0.1084129   0.5526963  -0.1649467  -0.0000362   0.0000658  -0.0000293  -0.0000000   0.0000000   0.0000000
 20 22b0a0     -0.0000000  -0.0000554  -0.0000915  -0.4940760  -0.0563180  -0.0471979   0.4892159  -0.0382023   0.0937526
 20 22a0b0      0.0000000   0.0000554   0.0000915   0.4940760   0.0563180   0.0471979  -0.4892159   0.0382023  -0.0937526
 20 2b2a00     -0.0000000  -0.0000554  -0.0000915  -0.4940760  -0.0563180  -0.0471979  -0.4892159   0.0382023  -0.0937526
 20 2a2b00      0.0000000   0.0000554   0.0000915   0.4940760   0.0563180   0.0471979   0.4892159  -0.0382023   0.0937526
 20 2a200b     -0.0000000  -0.0000460   0.0000009   0.0215000   0.1960052  -0.4589446  -0.0563883  -0.4870612   0.0957756
 20 2b200a      0.0000000   0.0000460  -0.0000009  -0.0215000  -0.1960052   0.4589446   0.0563883   0.4870612  -0.0957756
 20 b220a0     -0.0000000   0.0000460  -0.0000009  -0.0215000  -0.1960052   0.4589446  -0.0563883  -0.4870612   0.0957756
 20 a220b0      0.0000000  -0.0000460   0.0000009   0.0215000   0.1960052  -0.4589446   0.0563883   0.4870612  -0.0957756
 20 b22a00      0.0000000   0.0000789   0.0001012   0.0702645  -0.4559832  -0.1914488  -0.0840792   0.1043704   0.4812678
 20 a22b00     -0.0000000  -0.0000789  -0.0001012  -0.0702645   0.4559832   0.1914488   0.0840792  -0.1043704  -0.4812678
 20 22b00a     -0.0000000   0.0000789   0.0001012   0.0702645  -0.4559832  -0.1914488   0.0840792  -0.1043704  -0.4812678
 20 22a00b      0.0000000  -0.0000789  -0.0001012  -0.0702645   0.4559832   0.1914488  -0.0840792   0.1043704   0.4812678
 20 2b20a0     -0.1084129  -0.4191962  -0.3961757   0.0001368  -0.0001352  -0.0000101   0.0000000  -0.0000000  -0.0000000
 20 2a20b0      0.1084129   0.4191962   0.3961757  -0.0001368   0.0001352   0.0000101  -0.0000000   0.0000000   0.0000000

 State:             10
 20 222000     -0.2626600
 20 22ba00     -0.3925685
 20 22ab00      0.3925685
 20 a2200b      0.3925685
 20 b2200a     -0.3925685
 20 22b0a0      0.0000000
 20 22a0b0     -0.0000000
 20 2b2a00      0.0000000
 20 2a2b00     -0.0000000
 20 2a200b      0.0000000
 20 2b200a     -0.0000000
 20 b220a0      0.0000000
 20 a220b0     -0.0000000
 20 b22a00      0.0000000
 20 a22b00     -0.0000000
 20 22b00a     -0.0000000
 20 22a00b      0.0000000
 20 2b20a0     -0.3925685
 20 2a20b0      0.3925685

 TOTAL ENERGIES                      -128.64318264  -127.99214048  -127.99214048
                                     -127.99214048  -127.99214048  -127.99214048
                                     -127.98841215  -127.98841215  -127.98841215
                                     -127.88172362

 CI vector for state symmetry 2
 ==============================

 20 2a20a0      0.5766880
 20 22aa00      0.5766880
 20 a2200a      0.5766880

 TOTAL ENERGIES                      -128.01333089



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
 CPU TIMES  *         1.67      0.98      0.02      0.45
 REAL TIME  *         2.83 SEC
 DISK USED  *        30.35 MB (local),      172.91 MB (total)
 SF USED    *        15.62 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -128.6431826  -0.0
    -127.9921405   6.0
    -127.9921405   6.0
    -127.9921405   6.0
    -127.9921405   6.0
    -127.9921405   6.0
    -127.9884122   2.0
    -127.9884122   2.0
    -127.9884122   2.0
    -127.8817236  -0.0
    -128.0133309  -0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

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
     1      -128.64318264
     2      -127.99214048
     3      -127.99214048
     4      -127.99214048
     5      -127.99214048
     6      -127.99214048
     7      -127.98841215
     8      -127.98841215
     9      -127.98841215
    10      -127.88172362

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1433D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9029D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2226D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9023D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1775D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9467D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1775D-06

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.90D-07
 Number of N-2 electron functions:     600
 Number of N-1 electron functions:    2352

 Number of internal configurations:                  924
 Number of singly external configurations:         58856
 Number of doubly external configurations:        376420
 Total number of contracted configurations:       436200
 Total number of uncontracted configurations:    1736612

 Diagonal Coupling coefficients finished.               Storage:   1295427 words, CPU-Time:      1.22 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    271813 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -128.64318264    -0.00000000    -0.29199124  0.43D-01  0.11D-01     1.82
    1     2     2     1.00000000     0.00000000  -127.99214048     0.00000000    -0.21563301  0.12D-01  0.12D-01     1.82
    1     3     3     1.00000000     0.00000000  -127.99214048     0.00000000    -0.21640366  0.12D-01  0.12D-01     1.82
    1     4     4     1.00000000     0.00000000  -127.99214048    -0.00000000    -0.21058817  0.12D-01  0.11D-01     1.82
    1     5     5     1.00000000     0.00000000  -127.99214048     0.00000000    -0.21073333  0.12D-01  0.11D-01     1.82
    1     6     6     1.00000000     0.00000000  -127.99214048     0.00000000    -0.21056100  0.12D-01  0.11D-01     1.82
    1     7     7     1.00000000     0.00000000  -127.98841215     0.00000000    -0.21262207  0.12D-01  0.11D-01     1.82
    1     8     8     1.00000000     0.00000000  -127.98841215    -0.00000000    -0.21257851  0.12D-01  0.11D-01     1.82
    1     9     9     1.00000000     0.00000000  -127.98841215    -0.00000000    -0.21260454  0.12D-01  0.11D-01     1.82
    1    10    10     1.00000000     0.00000000  -127.88172362     0.00000000    -0.29050088  0.46D-01  0.13D-01     1.82
    2     1     1     1.04748427    -0.27762260  -128.92080523    -0.27762260    -0.02103619  0.15D-02  0.12D-02    12.69
    2     2     2     1.02313930    -0.21178061  -128.20392109    -0.21178061    -0.00793721  0.35D-03  0.57D-03    12.69
    2     3     3     1.02315278    -0.21170069  -128.20384117    -0.21170069    -0.00796708  0.35D-03  0.56D-03    12.69
    2     4     4     1.02310175    -0.21142529  -128.20356577    -0.21142529    -0.00827727  0.41D-03  0.54D-03    12.69
    2     5     5     1.02310821    -0.21142395  -128.20356443    -0.21142395    -0.00827891  0.41D-03  0.54D-03    12.69
    2     6     6     1.02310204    -0.21141231  -128.20355279    -0.21141231    -0.00827980  0.41D-03  0.54D-03    12.69
    2     7     7     1.02328806    -0.21220963  -128.20062178    -0.21220963    -0.00816543  0.40D-03  0.54D-03    12.69
    2     8     8     1.02329454    -0.21220853  -128.20062069    -0.21220853    -0.00816709  0.40D-03  0.54D-03    12.69
    2     9     9     1.02328979    -0.21217618  -128.20058833    -0.21217618    -0.00817870  0.40D-03  0.54D-03    12.69
    2    10    10     1.04258210    -0.25881054  -128.14053416    -0.25881054    -0.01191228  0.63D-03  0.75D-03    12.69
    3     1     1     1.04862855    -0.30094560  -128.94412824    -0.02332301    -0.00155530  0.30D-04  0.12D-03    23.47
    3     2     2     1.02469671    -0.22014095  -128.21228143    -0.00836034    -0.00064800  0.27D-04  0.48D-04    23.47
    3     3     3     1.02469663    -0.22014035  -128.21228083    -0.00843966    -0.00064859  0.27D-04  0.48D-04    23.47
    3     4     4     1.02469084    -0.22013076  -128.21227124    -0.00870547    -0.00065214  0.28D-04  0.48D-04    23.47
    3     5     5     1.02467965    -0.22011728  -128.21225776    -0.00869333    -0.00067926  0.30D-04  0.53D-04    23.47
    3     6     6     1.02467555    -0.22010969  -128.21225017    -0.00869738    -0.00067616  0.30D-04  0.52D-04    23.47
    3     7     7     1.02488315    -0.22075650  -128.20916866    -0.00854687    -0.00065873  0.30D-04  0.49D-04    23.47
    3     8     8     1.02488312    -0.22075582  -128.20916798    -0.00854729    -0.00065933  0.30D-04  0.49D-04    23.47
    3     9     9     1.02487727    -0.22074471  -128.20915687    -0.00856854    -0.00066389  0.30D-04  0.50D-04    23.47
    3    10    10     1.04470497    -0.27086013  -128.15258375    -0.01204959    -0.00067912  0.26D-04  0.51D-04    23.47
    4     1     1     1.04984393    -0.30289709  -128.94607973    -0.00195149    -0.00018945  0.73D-05  0.13D-04    34.20
    4     2     2     1.02585352    -0.22099988  -128.21314036    -0.00085893    -0.00010120  0.55D-05  0.78D-05    34.20
    4     3     3     1.02585277    -0.22099965  -128.21314013    -0.00085930    -0.00010138  0.55D-05  0.78D-05    34.20
    4     4     4     1.02585121    -0.22099657  -128.21313705    -0.00086581    -0.00010233  0.55D-05  0.79D-05    34.20
    4     5     5     1.02586118    -0.22099649  -128.21313697    -0.00087921    -0.00010560  0.59D-05  0.88D-05    34.20
    4     6     6     1.02585573    -0.22099308  -128.21313356    -0.00088339    -0.00010553  0.58D-05  0.86D-05    34.20
    4     7     7     1.02604768    -0.22160846  -128.21002061    -0.00085195    -0.00009937  0.54D-05  0.79D-05    34.20
    4     8     8     1.02604692    -0.22160821  -128.21002036    -0.00085238    -0.00009954  0.54D-05  0.79D-05    34.20
    4     9     9     1.02604432    -0.22160477  -128.21001692    -0.00086006    -0.00010065  0.54D-05  0.80D-05    34.20
    4    10    10     1.04573289    -0.27169242  -128.15341604    -0.00083228    -0.00008976  0.38D-05  0.70D-05    34.20
    5     1     1     1.05069050    -0.30312771  -128.94631035    -0.00023063    -0.00002304  0.83D-06  0.15D-05    44.94
    5     2     2     1.02606546    -0.22114371  -128.21328419    -0.00014383    -0.00002449  0.13D-05  0.18D-05    44.94
    5     3     3     1.02606529    -0.22114363  -128.21328411    -0.00014398    -0.00002453  0.13D-05  0.18D-05    44.94
    5     4     4     1.02605352    -0.22114289  -128.21328337    -0.00014632    -0.00002494  0.12D-05  0.19D-05    44.94
    5     5     5     1.02606425    -0.22114235  -128.21328283    -0.00014586    -0.00002489  0.13D-05  0.18D-05    44.94
    5     6     6     1.02605460    -0.22114169  -128.21328217    -0.00014860    -0.00002541  0.13D-05  0.19D-05    44.94
    5     7     7     1.02625462    -0.22174283  -128.21015499    -0.00013438    -0.00002203  0.92D-06  0.17D-05    44.94
    5     8     8     1.02625447    -0.22174276  -128.21015491    -0.00013455    -0.00002207  0.92D-06  0.17D-05    44.94
    5     9     9     1.02625292    -0.22174132  -128.21015347    -0.00013655    -0.00002258  0.94D-06  0.18D-05    44.94
    5    10    10     1.04595635    -0.27181654  -128.15354016    -0.00012413    -0.00002132  0.10D-05  0.16D-05    44.94
    6     1     1     1.05070469    -0.30315498  -128.94633762    -0.00002727    -0.00000264  0.75D-07  0.20D-06    55.67
    6     2     2     1.02608035    -0.22117882  -128.21331930    -0.00003511    -0.00000672  0.28D-06  0.46D-06    55.67
    6     3     3     1.02608031    -0.22117880  -128.21331928    -0.00003517    -0.00000674  0.28D-06  0.46D-06    55.67
    6     4     4     1.02607844    -0.22117823  -128.21331871    -0.00003533    -0.00000685  0.29D-06  0.48D-06    55.67
    6     5     5     1.02607893    -0.22117809  -128.21331857    -0.00003575    -0.00000685  0.29D-06  0.46D-06    55.67
    6     6     6     1.02607740    -0.22117792  -128.21331840    -0.00003623    -0.00000700  0.29D-06  0.49D-06    55.67
    6     7     7     1.02627589    -0.22177324  -128.21018540    -0.00003041    -0.00000560  0.22D-06  0.40D-06    55.67
    6     8     8     1.02627584    -0.22177322  -128.21018537    -0.00003046    -0.00000562  0.22D-06  0.40D-06    55.67
    6     9     9     1.02627430    -0.22177256  -128.21018472    -0.00003125    -0.00000581  0.23D-06  0.41D-06    55.67
    6    10    10     1.04583025    -0.27184860  -128.15357222    -0.00003206    -0.00000634  0.34D-06  0.42D-06    55.67
    7     1     1     1.05071584    -0.30315817  -128.94634081    -0.00000319    -0.00000044  0.16D-07  0.30D-07    66.37
    7     2     2     1.02612031    -0.22118735  -128.21332783    -0.00000852    -0.00000179  0.12D-06  0.12D-06    66.37
    7     3     3     1.02612027    -0.22118734  -128.21332782    -0.00000854    -0.00000180  0.12D-06  0.12D-06    66.37
    7     4     4     1.02612393    -0.22118690  -128.21332738    -0.00000867    -0.00000185  0.13D-06  0.13D-06    66.37
    7     5     5     1.02612199    -0.22118681  -128.21332729    -0.00000872    -0.00000189  0.13D-06  0.13D-06    66.37
    7     6     6     1.02611938    -0.22118679  -128.21332727    -0.00000887    -0.00000184  0.12D-06  0.12D-06    66.37
    7     7     7     1.02631106    -0.22178020  -128.21019235    -0.00000696    -0.00000136  0.91D-07  0.94D-07    66.37
    7     8     8     1.02631103    -0.22178019  -128.21019235    -0.00000697    -0.00000136  0.91D-07  0.95D-07    66.37
    7     9     9     1.02631007    -0.22177979  -128.21019194    -0.00000722    -0.00000142  0.94D-07  0.98D-07    66.37
    7    10    10     1.04587051    -0.27185666  -128.15358028    -0.00000806    -0.00000172  0.83D-07  0.12D-06    66.37
    8     1     1     1.05073204    -0.30315868  -128.94634132    -0.00000051    -0.00000008  0.24D-08  0.54D-08    77.18
    8     2     2     1.02613799    -0.22118963  -128.21333011    -0.00000229    -0.00000060  0.33D-07  0.44D-07    77.18
    8     3     3     1.02613793    -0.22118963  -128.21333011    -0.00000229    -0.00000060  0.33D-07  0.44D-07    77.18
    8     4     4     1.02613620    -0.22118914  -128.21332962    -0.00000224    -0.00000060  0.33D-07  0.48D-07    77.18
    8     5     5     1.02613643    -0.22118914  -128.21332962    -0.00000232    -0.00000059  0.32D-07  0.48D-07    77.18
    8     6     6     1.02613729    -0.22118913  -128.21332961    -0.00000234    -0.00000061  0.33D-07  0.45D-07    77.18
    8     7     7     1.02632302    -0.22178181  -128.21019397    -0.00000162    -0.00000036  0.15D-07  0.31D-07    77.18
    8     8     8     1.02632298    -0.22178181  -128.21019397    -0.00000162    -0.00000037  0.15D-07  0.31D-07    77.18
    8     9     9     1.02632230    -0.22178147  -128.21019363    -0.00000169    -0.00000038  0.16D-07  0.32D-07    77.18
    8    10    10     1.04588845    -0.27185872  -128.15358234    -0.00000206    -0.00000051  0.23D-07  0.39D-07    77.18
    9     1     1     1.05073187    -0.30315868  -128.94634132    -0.00000000    -0.00000008  0.24D-08  0.54D-08    87.09
    9     2     2     1.02615037    -0.22119046  -128.21333093    -0.00000082    -0.00000024  0.98D-08  0.18D-07    87.09
    9     3     3     1.02615035    -0.22119045  -128.21333093    -0.00000082    -0.00000024  0.98D-08  0.18D-07    87.09
    9     4     4     1.02614945    -0.22118998  -128.21333046    -0.00000083    -0.00000024  0.93D-08  0.18D-07    87.09
    9     5     5     1.02614984    -0.22118997  -128.21333045    -0.00000083    -0.00000025  0.10D-07  0.18D-07    87.09
    9     6     6     1.02614970    -0.22118992  -128.21333040    -0.00000079    -0.00000022  0.87D-08  0.17D-07    87.09
    9     7     7     1.02633279    -0.22178227  -128.21019443    -0.00000046    -0.00000012  0.36D-08  0.99D-08    87.09
    9     8     8     1.02633277    -0.22178227  -128.21019443    -0.00000046    -0.00000012  0.36D-08  0.99D-08    87.09
    9     9     9     1.02633233    -0.22178196  -128.21019411    -0.00000048    -0.00000012  0.38D-08  0.10D-07    87.09
    9    10    10     1.04589852    -0.27185963  -128.15358324    -0.00000091    -0.00000010  0.39D-08  0.69D-08    87.09
   10     1     1     1.05073223    -0.30315869  -128.94634132    -0.00000000    -0.00000008  0.25D-08  0.54D-08    97.04
   10     2     2     1.02615483    -0.22119076  -128.21333124    -0.00000030    -0.00000008  0.49D-08  0.59D-08    97.04
   10     3     3     1.02615482    -0.22119076  -128.21333124    -0.00000030    -0.00000008  0.49D-08  0.59D-08    97.04
   10     4     4     1.02615438    -0.22119028  -128.21333076    -0.00000031    -0.00000009  0.50D-08  0.61D-08    97.04
   10     5     5     1.02615486    -0.22119028  -128.21333076    -0.00000031    -0.00000008  0.54D-08  0.59D-08    97.04
   10     6     6     1.02615529    -0.22119020  -128.21333068    -0.00000028    -0.00000007  0.52D-08  0.54D-08    97.04
   10     7     7     1.02633628    -0.22178242  -128.21019457    -0.00000014    -0.00000003  0.19D-08  0.24D-08    97.04
   10     8     8     1.02633629    -0.22178242  -128.21019457    -0.00000014    -0.00000003  0.19D-08  0.24D-08    97.04
   10     9     9     1.02633952    -0.22178215  -128.21019431    -0.00000020    -0.00000001  0.25D-09  0.95D-09    97.04
   10    10    10     1.04589267    -0.27185974  -128.15358336    -0.00000012    -0.00000001  0.68D-09  0.89D-09    97.04
   11     1     1     1.05073223    -0.30315869  -128.94634132    -0.00000000    -0.00000008  0.25D-08  0.54D-08   103.82
   11     2     2     1.02615693    -0.22119086  -128.21333134    -0.00000011    -0.00000003  0.21D-08  0.23D-08   103.82
   11     3     3     1.02615692    -0.22119086  -128.21333134    -0.00000011    -0.00000003  0.22D-08  0.23D-08   103.82
   11     4     4     1.02615655    -0.22119039  -128.21333087    -0.00000011    -0.00000003  0.22D-08  0.24D-08   103.82
   11     5     5     1.02615643    -0.22119038  -128.21333086    -0.00000010    -0.00000003  0.21D-08  0.24D-08   103.82
   11     6     6     1.02615661    -0.22119029  -128.21333077    -0.00000009    -0.00000003  0.18D-08  0.22D-08   103.82
   11     7     7     1.02633628    -0.22178242  -128.21019457    -0.00000000    -0.00000003  0.19D-08  0.24D-08   103.82
   11     8     8     1.02633629    -0.22178242  -128.21019457    -0.00000000    -0.00000003  0.19D-08  0.24D-08   103.82
   11     9     9     1.02633952    -0.22178215  -128.21019431    -0.00000000    -0.00000001  0.25D-09  0.95D-09   103.82
   11    10    10     1.04589267    -0.27185974  -128.15358336    -0.00000000    -0.00000001  0.68D-09  0.89D-09   103.82


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   1.2%
 P   3.2%  15.3%  62.9%

 Initialization:   1.3%
 Other:           15.3%

 Total CPU:      103.8 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 20222000           0.9540805   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000006  -0.0000000  -0.0000000   0.0000000
                   -0.1693086
 20/2200\           0.1096506  -0.0000000  -0.0000000  -0.0000000  -0.0296607   0.8046197  -0.0000000  -0.0000000   0.0000000
                    0.5545991
 2022/\00           0.1096507  -0.0000000   0.0000000   0.0000000   0.7116530  -0.3766252   0.0000000   0.0000000  -0.0000000
                    0.5545956
 2022/00\           0.0000000  -0.0000000   0.6972764   0.0000000   0.0000000   0.0000000   0.6973941   0.0000000   0.0000000
                   -0.0000000
 202/200\           0.0000000   0.6972765  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6973941   0.0000000
                    0.0000000
 2022/0\0          -0.0000000   0.0000000   0.0000000   0.6972950  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.6973748
                   -0.0000000
 202/2\00           0.0000000  -0.0000000   0.0000000   0.6972965   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.6973733
                    0.0000000
 20/220\0          -0.0000000   0.6973143   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.6973561  -0.0000000
                    0.0000000
 20/22\00          -0.0000000   0.0000000   0.6973144  -0.0000000  -0.0000000  -0.0000000  -0.6973560   0.0000000   0.0000000
                   -0.0000000
 202/20\0           0.1096507  -0.0000000   0.0000000   0.0000000  -0.6819920  -0.4279992   0.0000000  -0.0000000  -0.0000000
                    0.5545957
 /\222000           0.0599030   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000005  -0.0000000  -0.0000000   0.0000000
                   -0.0334500

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 20\22000   8.2     0.0849112   0.0000000  -0.0000000   0.0000000  -0.0001844   0.0050016   0.0000000  -0.0000000   0.0000000
                   -0.0763359
 202\2000   9.2     0.0849106  -0.0000000  -0.0000000  -0.0000000  -0.0042393  -0.0026606   0.0000000   0.0000000   0.0000000
                   -0.0763366
 2022\000   7.2     0.0849105  -0.0000000  -0.0000000   0.0000000   0.0044237  -0.0023413   0.0000000  -0.0000000   0.0000000
                   -0.0763367

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.972941    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.070850
 2           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.987144   -0.000000   -0.000027   -0.000000   -0.000000
 3           0.000000   -0.000000   -0.000000    0.987144    0.000000   -0.000000   -0.000000   -0.000000   -0.000027    0.000000
 4          -0.000000   -0.000000   -0.000000    0.000000    0.987144    0.000000    0.000001   -0.000000    0.000000    0.000000
 5           0.000000    0.986497   -0.035734    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.035734    0.986497    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000003
 7          -0.000000   -0.000000   -0.000000    0.000027   -0.000000    0.000000    0.000000    0.000000    0.987069    0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000027   -0.000000    0.987069    0.000000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000001    0.000000    0.987067    0.000000    0.000000   -0.000000
 10          0.090987   -0.000000    0.000003   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.973467

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.975466   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.010012
 2          -0.000000    0.987144   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.987144    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.987144   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.987144    0.000000   -0.000000    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.987144    0.000000   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.987069    0.000000    0.000000    0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.987069    0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.987067    0.000000
 10          0.010012   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.977658


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97294064 (fixed)   0.97555997 (relaxed)   0.97546553 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019365   -0.00064536   -0.21602661
 Singles      0.03061334   -0.11349474   -0.11682474
 Pairs        0.02012871    0.03730742    0.02969267
 Total        1.05093570   -0.07683267   -0.30315869
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.63795455
 Nuclear energy                         0.00000000
 Kinetic energy                       129.87755023
 One electron energy                 -182.44984283
 Two electron energy                   53.50350150
 Virial quotient                       -0.99283010
 Correlation energy                    -0.30838677
 !MRCI STATE 1.1 Energy              -128.946341324343

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.96204922 (Davidson, fixed reference)
 Cluster corrected energies          -128.96198647 (Davidson, relaxed reference)
 Cluster corrected energies          -128.96204922 (Davidson, rotated reference)

 Cluster corrected energies          -128.95842394 (Pople, fixed reference)
 Cluster corrected energies          -128.95837446 (Pople, relaxed reference)
 Cluster corrected energies          -128.95842394 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.98714390 (fixed)   0.98717264 (relaxed)   0.98714390 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005822    0.00000000   -0.15131340
 Singles      0.01055150   -0.06592341   -0.06651362
 Pairs        0.01560695    0.00000000   -0.00336384
 Total        1.02621667   -0.06592341   -0.22119086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99214048
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33341461
 One electron energy                 -177.75459044
 Two electron energy                   49.54125910
 Virial quotient                       -0.99133957
 Correlation energy                    -0.22119086
 !MRCI STATE 2.1 Energy              -128.213331343734

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21913023 (Davidson, fixed reference)
 Cluster corrected energies          -128.21911702 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21913023 (Davidson, rotated reference)

 Cluster corrected energies          -128.21773769 (Pople, fixed reference)
 Cluster corrected energies          -128.21772752 (Pople, relaxed reference)
 Cluster corrected energies          -128.21773769 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.98714391 (fixed)   0.98717264 (relaxed)   0.98714391 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005822    0.00000000   -0.15131342
 Singles      0.01055149   -0.06592339   -0.06651362
 Pairs        0.01560695    0.00000000   -0.00336382
 Total        1.02621666   -0.06592338   -0.22119086
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99214048
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33341567
 One electron energy                 -177.75459106
 Two electron energy                   49.54125972
 Virial quotient                       -0.99133956
 Correlation energy                    -0.22119086
 !MRCI STATE 3.1 Energy              -128.213331343550

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21913023 (Davidson, fixed reference)
 Cluster corrected energies          -128.21911701 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21913023 (Davidson, rotated reference)

 Cluster corrected energies          -128.21773769 (Pople, fixed reference)
 Cluster corrected energies          -128.21772752 (Pople, relaxed reference)
 Cluster corrected energies          -128.21773769 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.98714416 (fixed)   0.98717282 (relaxed)   0.98714416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005807    0.00000000   -0.15131344
 Singles      0.01055123   -0.06592295   -0.06651315
 Pairs        0.01560684   -0.00000000   -0.00336381
 Total        1.02621613   -0.06592295   -0.22119039
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99214048
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33338470
 One electron energy                 -177.75459327
 Two electron energy                   49.54126240
 Virial quotient                       -0.99133979
 Correlation energy                    -0.22119039
 !MRCI STATE 4.1 Energy              -128.213330870613

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21912963 (Davidson, fixed reference)
 Cluster corrected energies          -128.21911645 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21912963 (Davidson, rotated reference)

 Cluster corrected energies          -128.21773712 (Pople, fixed reference)
 Cluster corrected energies          -128.21772698 (Pople, relaxed reference)
 Cluster corrected energies          -128.21773712 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.98649723 (fixed)   0.98717288 (relaxed)   0.98714422 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005807    0.00000000   -0.15131301
 Singles      0.01055130   -0.06592334   -0.06651323
 Pairs        0.01560665   -0.00000005   -0.00336414
 Total        1.02621602   -0.06592339   -0.22119038
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99214048
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33339680
 One electron energy                 -177.75458883
 Two electron energy                   49.54125797
 Virial quotient                       -0.99133970
 Correlation energy                    -0.22119038
 !MRCI STATE 5.1 Energy              -128.213330860045

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21912959 (Davidson, fixed reference)
 Cluster corrected energies          -128.21911641 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21912959 (Davidson, rotated reference)

 Cluster corrected energies          -128.21773709 (Pople, fixed reference)
 Cluster corrected energies          -128.21772694 (Pople, relaxed reference)
 Cluster corrected energies          -128.21773709 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.98649713 (fixed)   0.98717279 (relaxed)   0.98714412 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005809    0.00000000   -0.15131335
 Singles      0.01055145   -0.06592348   -0.06651328
 Pairs        0.01560668    0.00000056   -0.00336365
 Total        1.02621622   -0.06592292   -0.22119029
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.99214048
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33340876
 One electron energy                 -177.75459781
 Two electron energy                   49.54126704
 Virial quotient                       -0.99133961
 Correlation energy                    -0.22119029
 !MRCI STATE 6.1 Energy              -128.213330767788

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21912954 (Davidson, fixed reference)
 Cluster corrected energies          -128.21911636 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21912954 (Davidson, rotated reference)

 Cluster corrected energies          -128.21773703 (Pople, fixed reference)
 Cluster corrected energies          -128.21772688 (Pople, relaxed reference)
 Cluster corrected energies          -128.21773703 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.98706877 (fixed)   0.98708638 (relaxed)   0.98706877 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003567    0.00000000   -0.15077370
 Singles      0.01085415   -0.06704029   -0.06766168
 Pairs        0.01548307    0.00000000   -0.00334704
 Total        1.02637290   -0.06704029   -0.22178242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98841215
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33263365
 One electron energy                 -177.75388069
 Two electron energy                   49.54368612
 Virial quotient                       -0.99132130
 Correlation energy                    -0.22178242
 !MRCI STATE 7.1 Energy              -128.210194570258

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21604361 (Davidson, fixed reference)
 Cluster corrected energies          -128.21603549 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21604361 (Davidson, rotated reference)

 Cluster corrected energies          -128.21463938 (Pople, fixed reference)
 Cluster corrected energies          -128.21463313 (Pople, relaxed reference)
 Cluster corrected energies          -128.21463938 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.98706877 (fixed)   0.98708638 (relaxed)   0.98706877 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003567    0.00000000   -0.15077371
 Singles      0.01085415   -0.06704027   -0.06766168
 Pairs        0.01548308    0.00000000   -0.00334702
 Total        1.02637290   -0.06704027   -0.22178242
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98841215
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33263359
 One electron energy                 -177.75388054
 Two electron energy                   49.54368597
 Virial quotient                       -0.99132130
 Correlation energy                    -0.22178242
 !MRCI STATE 8.1 Energy              -128.210194569707

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21604362 (Davidson, fixed reference)
 Cluster corrected energies          -128.21603550 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21604362 (Davidson, rotated reference)

 Cluster corrected energies          -128.21463938 (Pople, fixed reference)
 Cluster corrected energies          -128.21463313 (Pople, relaxed reference)
 Cluster corrected energies          -128.21463938 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.98706724 (fixed)   0.98708482 (relaxed)   0.98706724 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003562    0.00000000   -0.15077303
 Singles      0.01085428   -0.06704022   -0.06766236
 Pairs        0.01548618    0.00000000   -0.00334676
 Total        1.02637608   -0.06704022   -0.22178215
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.98841215
 Nuclear energy                         0.00000000
 Kinetic energy                       129.33241729
 One electron energy                 -177.75368673
 Two electron energy                   49.54349243
 Virial quotient                       -0.99132296
 Correlation energy                    -0.22178215
 !MRCI STATE 9.1 Energy              -128.210194307194

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.21604405 (Davidson, fixed reference)
 Cluster corrected energies          -128.21603594 (Davidson, relaxed reference)
 Cluster corrected energies          -128.21604405 (Davidson, rotated reference)

 Cluster corrected energies          -128.21463965 (Pople, fixed reference)
 Cluster corrected energies          -128.21463341 (Pople, relaxed reference)
 Cluster corrected energies          -128.21463965 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.97346685 (fixed)   0.97781443 (relaxed)   0.97765846 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00031908   -0.00064391   -0.00440130
 Singles      0.03034982   -0.10669797   -0.10987611
 Pairs        0.01555750   -0.16064376   -0.15758234
 Total        1.04622639   -0.26798564   -0.27185974
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -127.88695171
 Nuclear energy                         0.00000000
 Kinetic energy                       129.52820128
 One electron energy                 -177.98454769
 Two electron energy                   49.83096433
 Virial quotient                       -0.98938750
 Correlation energy                    -0.26663165
 !MRCI STATE 10.1 Energy             -128.153583359886

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.16590878 (Davidson, fixed reference)
 Cluster corrected energies          -128.16581980 (Davidson, relaxed reference)
 Cluster corrected energies          -128.16590878 (Davidson, rotated reference)

 Cluster corrected energies          -128.16304217 (Pople, fixed reference)
 Cluster corrected energies          -128.16297234 (Pople, relaxed reference)
 Cluster corrected energies          -128.16304217 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6       35.47       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       114.01    112.33      0.98      0.02      0.45
 REAL TIME  *       118.83 SEC
 DISK USED  *        65.23 MB (local),      347.31 MB (total)
 SF USED    *       356.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -128.96204922  AU                              
 SETTING HLSDIAG(2)     =      -128.21913023  AU                              
 SETTING HLSDIAG(3)     =      -128.21913023  AU                              
 SETTING HLSDIAG(4)     =      -128.21912963  AU                              
 SETTING HLSDIAG(5)     =      -128.21912959  AU                              
 SETTING HLSDIAG(6)     =      -128.21912954  AU                              
 SETTING HLSDIAG(7)     =      -128.21604361  AU                              
 SETTING HLSDIAG(8)     =      -128.21604362  AU                              
 SETTING HLSDIAG(9)     =      -128.21604405  AU                              
 SETTING HLSDIAG(10)    =      -128.16590878  AU                              


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
     1      -128.01333089

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
    1     1     1     1.00000000     0.00000000  -128.01333089     0.00000000    -0.23215047  0.15D-01  0.15D-01     0.06
    2     1     1     1.02643272    -0.21737035  -128.23070124    -0.21737035    -0.00576078  0.37D-03  0.42D-03     0.24
    3     1     1     1.02788357    -0.22301679  -128.23634768    -0.00564644    -0.00033674  0.38D-04  0.25D-04     0.43
    4     1     1     1.02895632    -0.22339064  -128.23672153    -0.00037386    -0.00002197  0.24D-05  0.17D-05     0.61
    5     1     1     1.02914504    -0.22341244  -128.23674332    -0.00002179    -0.00000158  0.10D-06  0.16D-06     0.79
    6     1     1     1.02918569    -0.22341403  -128.23674492    -0.00000159    -0.00000011  0.83D-08  0.90D-08     0.97
    7     1     1     1.02919108    -0.22341415  -128.23674503    -0.00000012    -0.00000001  0.67D-09  0.68D-09     1.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.6%
 S   1.7%  13.9%
 P   5.2%  46.1%  17.4%

 Initialization:   3.5%
 Other:            9.6%

 Total CPU:        1.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 20/2200/           0.5681384
 202/20/0           0.5681379
 2022//00           0.5681375


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.98556754 (fixed)   0.98571642 (relaxed)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00030216    0.00000000   -0.00006556
 Singles      0.01409929   -0.07030396   -0.07135139
 Pairs        0.01510062   -0.15311020   -0.15199720
 Total        1.02950206   -0.22341416   -0.22341415
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -128.01333089
 Nuclear energy                         0.00000000
 Kinetic energy                       129.28016293
 One electron energy                 -177.75023013
 Two electron energy                   49.51348510
 Virial quotient                       -0.99192902
 Correlation energy                    -0.22341415
 !MRCI STATE 1.1 Energy              -128.236745033839

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -128.24333621 (Davidson, fixed reference)
 Cluster corrected energies          -128.24326673 (Davidson, relaxed reference)

 Cluster corrected energies          -128.24118192 (Pople, fixed reference)
 Cluster corrected energies          -128.24113471 (Pople, relaxed reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       29.68       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       36.56       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       115.27      1.23    112.33      0.98      0.02      0.45
 REAL TIME  *       120.13 SEC
 DISK USED  *        66.32 MB (local),      352.75 MB (total)
 SF USED    *       356.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -128.24326673  AU                              


         HLSDIAG
    -128.9620492
    -128.2191302
    -128.2191302
    -128.2191296
    -128.2191296
    -128.2191295
    -128.2160436
    -128.2160436
    -128.2160441
    -128.1659088
    -128.2432667
                                                  

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


 SORTLS1 read      953880. and wrote      953880. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.02 sec
 SORTLS2 read      953880. and wrote     4701996. SO integrals in    15 records. CPU time:      0.01 sec, REAL time:      0.03 sec

 FILE SIZES: FILE 1:    46.6 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:    46.6 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       36.56       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       115.92      0.59      1.23    112.33      0.98      0.02      0.45
 REAL TIME  *       122.58 SEC
 DISK USED  *        66.34 MB (local),      428.77 MB (total)
 SF USED    *       356.49 MB
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
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -128.946341   -128.213331   -128.213331   -128.213331   -128.213331   -128.213331   -128.210195   -128.210195
                      -128.210194   -128.153583
 Replaced energies:   -128.962049   -128.219130   -128.219130   -128.219130   -128.219130   -128.219130   -128.216044   -128.216044
                      -128.216044   -128.165909

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   1

 Original energies:   -128.236745
 Replaced energies:   -128.243267



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -128.96204922

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00  163051.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00  163051.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00  163052.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00  163052.01       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00  163052.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00  163729.31       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00  163729.31       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  163729.21       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00  174732.63
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -135.73      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00    -135.72      -0.00      -0.00      -0.00

   12   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.00      -0.00      -0.00       0.00    -191.94       0.00       0.00

   13   1.1  1.0 -1.0      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -135.73      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     135.72       0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13

    1   1.1  0.0  0.0      -0.00       0.00      -0.00
                            0.00       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00
                           -0.00      -0.01       0.00

    3   3.1  0.0  0.0       0.00       0.00       0.00
                           -0.00      -0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00
                            0.00       0.00      -0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00
                            0.00       0.00      -0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00
                            0.00       0.00      -0.00

    7   7.1  0.0  0.0      -0.00       0.00      -0.00
                          135.72      -0.00    -135.72

    8   8.1  0.0  0.0       0.00       0.00       0.00
                            0.00     191.94      -0.00

    9   9.1  0.0  0.0    -135.73       0.00    -135.73
                            0.00      -0.00      -0.00

   10  10.1  0.0  0.0      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00

   11   1.1  1.0  1.0  157754.52       0.00       0.00
                            0.00      -0.00       0.00

   12   1.1  1.0  0.0       0.00  157754.52       0.00
                            0.00       0.00      -0.00

   13   1.1  1.0 -1.0       0.00       0.00  157754.52
                           -0.00       0.00      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 13)

    The diagonal matrixelements are shifted by   -128.96204922 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000  163051.871       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000  163051.872       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000  163052.004       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000  163052.012       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000  163052.023       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000  163729.305       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000  163729.305
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.006       0.000      -0.000      -0.000      -0.000       0.000    -191.939

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.006      -0.000      -0.000      -0.000    -191.935      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.006      -0.000

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.006

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     191.935

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     191.939       0.000

    9    1  |0 0>          163729.210       0.000    -191.944       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000

   10    1  |0 0>               0.000  174732.630      -0.000       0.000       0.000
                               -0.000       0.000       0.000      -0.000       0.000

    1    1  |1 1>+           -191.944      -0.000  157754.521       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000  157754.521       0.000
                                0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000  157754.521
                               -0.000      -0.000       0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -128.96204922     0.00000000        0.00      0.00000000        0.00      0.0000
    2  -128.24329480     0.71875442   157748.36      0.71875442   157748.36     19.5583
    3  -128.24329480     0.71875442   157748.36      0.71875442   157748.36     19.5583
    4  -128.24329480     0.71875442   157748.36      0.71875442   157748.36     19.5583
    5  -128.21913023     0.74291899   163051.87      0.74291899   163051.87     20.2159
    6  -128.21913023     0.74291899   163051.87      0.74291899   163051.87     20.2159
    7  -128.21912963     0.74291959   163052.00      0.74291959   163052.00     20.2159
    8  -128.21912959     0.74291963   163052.01      0.74291963   163052.01     20.2159
    9  -128.21912954     0.74291968   163052.02      0.74291968   163052.02     20.2159
   10  -128.21601598     0.74603324   163735.37      0.74603324   163735.37     20.3006
   11  -128.21601555     0.74603367   163735.46      0.74603367   163735.46     20.3006
   12  -128.21601555     0.74603367   163735.46      0.74603367   163735.46     20.3006
   13  -128.16590878     0.79614044   174732.63      0.79614044   174732.63     21.6641

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           1.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000000 -0.00000000 -0.00000119 -0.00000000  1.00000000 -0.00000007  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000110  0.00000007  1.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000178

   6    1  |0 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.00000001  0.03207456  0.00000000  0.00000031 -0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.00000000  0.03207525 -0.00000001  0.00000033 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000  0.03207665 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  10    1  |0 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00000000  0.99948541 -0.00000003 -0.00000001  0.00000000  0.00000000  0.00000006  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000003  0.99948546 -0.00000034  0.00000118 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000001  0.00000034  0.99948548  0.00000000  0.00000109 -0.00000000 -0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13

   1    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000030  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000 -0.00000000 -0.00000027 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           1.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00000000  0.99948548  0.00000077 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000  0.00000000 -0.00000077  0.99948546  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>           0.00000000  0.99948541 -0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.03207665  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000002 -0.03207525  0.00000000

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.03207456 -0.00000002 -0.00000000


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -128.96204922      0.00000000        0.00      0.00000000        0.00      0.0000
     2   1   -128.24329480      0.71875442   157748.36      0.71875442   157748.36     19.5583
     3   1   -128.24329480      0.71875442   157748.36      0.71875442   157748.36     19.5583
     4   1   -128.24329480      0.71875442   157748.36      0.71875442   157748.36     19.5583
     5   1   -128.21913023      0.74291899   163051.87      0.74291899   163051.87     20.2159
     6   1   -128.21913023      0.74291899   163051.87      0.74291899   163051.87     20.2159
     7   1   -128.21912963      0.74291959   163052.00      0.74291959   163052.00     20.2159
     8   1   -128.21912959      0.74291963   163052.01      0.74291963   163052.01     20.2159
     9   1   -128.21912954      0.74291968   163052.02      0.74291968   163052.02     20.2159
    10   1   -128.21601598      0.74603324   163735.37      0.74603324   163735.37     20.3006
    11   1   -128.21601555      0.74603367   163735.46      0.74603367   163735.46     20.3006
    12   1   -128.21601555      0.74603367   163735.46      0.74603367   163735.46     20.3006
    13   1   -128.16590878      0.79614044   174732.63      0.79614044   174732.63     21.6641

 E0 =   -128.96204922 is the energy of the lowest zeroth-order state
 E1 =   -128.96204922 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        1.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000000 -0.00000119 -0.00000000  1.00000000 -0.00000007  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000110  0.00000007  1.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000006  0.00000000  0.00000000 -0.00000000 -0.00000000  1.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000178

  6  1     6    1  |0 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.00000001  0.03207456  0.00000000  0.00000031 -0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000  0.03207525 -0.00000001  0.00000033 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000  0.03207665 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000002  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00000000  0.99948541 -0.00000003 -0.00000001  0.00000000  0.00000000  0.00000006  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000003  0.99948546 -0.00000034  0.00000118 -0.00000000 -0.00000000 -0.00000000

 13  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000001  0.00000034  0.99948548  0.00000000  0.00000109 -0.00000000 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13

  1  1     1    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000030  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000000 -0.00000027 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000001  0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        1.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00000000  0.99948548  0.00000077 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000  0.00000000 -0.00000077  0.99948546  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>        0.00000000  0.99948541 -0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  1.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.03207665  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     1    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000002 -0.03207525  0.00000000

 13  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.03207456 -0.00000002 -0.00000000



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
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.00%   99.90%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>        100.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%   99.90%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%   99.90%    0.00%
  9  1     9    1  |0 0>          0.00%   99.90%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%  100.00%
 11  1     1    1  |1 1>+         0.00%    0.10%    0.00%    0.00%    0.00%
 12  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.10%    0.00%
 13  1     1    1  |1 1>-         0.00%    0.00%    0.10%    0.00%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       44.46       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7       36.56       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       154.64     38.72      0.59      1.23    112.33      0.98      0.02      0.45
 REAL TIME  *       162.33 SEC
 DISK USED  *        66.34 MB (local),      428.77 MB (total)
 SF USED    *       356.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVTZ-DK energy=   -128.165908779919

              CI              CI           MULTI         RHF-SCF
   -128.23674503   -128.15358336   -128.01333089   -126.85019648
 **********************************************************************************************************************************
 Molpro calculation terminated
