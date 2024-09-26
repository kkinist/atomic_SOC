
 Working directory              : /wrk/irikura/molpro.oMx7bQjOel/
 Global scratch directory       : /wrk/irikura/molpro.oMx7bQjOel/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.oMx7bQjOel/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Se SO-CI
 memory,1500,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Se};
 
 basis=AWCVTZ-PP
 
 NT=3
 NS=6
 PAR=1                                                                           ! parity even (1) or odd (2)
 
 {rhf;wf,charge=1,sym=2,spin=3}
 
 {multi
     closed,6,3
     occ,7,6
     wf,charge=0,sym=PAR,spin=2;state,NT;
     wf,charge=0,sym=PAR,spin=0;state,NS;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=PAR,spin=2;state,NT; save,5302.2}
 hlsdiag = energd4
                                                                                 !hlsdiag(1) = energd
 {ci;wf,sym=PAR,spin=0;state,NS; save,5102.2}
 hlsdiag(NT+1) = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5302.2,5102.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Se SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 06-Sep-24          TIME: 11:32:37  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AWCVTZ-PP
 SETTING NT             =         3.00000000                                  
 SETTING NS             =         6.00000000                                  
 SETTING PAR            =         1.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Se   ECP ECP10MDF                 selected for group  1
 Library entry SE     S aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SE     P aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SE     D aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SE     F aug-cc-pwCVTZ-PP     selected for orbital group  1
 Library entry SE     G aug-cc-pwCVTZ-PP     selected for orbital group  1


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

   1  SE     24.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   24
 NUMBER OF PRIMITIVE AOS:         182
 NUMBER OF SYMMETRY AOS:          152
 NUMBER OF CONTRACTIONS:           96   (   47Ag  +   49Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 2 3   4 5 6 2 3 4 5 6 7 8
                                        9101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910 4 5 6 7 8 910


 Eigenvalues of metric

         1 0.249E-04 0.365E-02 0.190E-01 0.491E-01 0.491E-01 0.491E-01 0.491E-01 0.491E-01
         2 0.937E-02 0.937E-02 0.937E-02 0.194E-01 0.194E-01 0.194E-01 0.179E+00 0.179E+00


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     17.302 MB (compressed) written to integral file ( 18.9%)

     Node minimum: 0.786 MB, node maximum: 2.359 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     461784.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     461784      RECORD LENGTH: 524288

 Memory used in sort:       1.02 MW

 SORT1 READ    11031004. AND WROTE       88744. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1100136. AND WROTE     5533081. INTEGRALS IN     36 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      459824.  Node maximum:      464237. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.89      0.60
 REAL TIME  *         1.69 SEC
 DISK USED  *        29.18 MB (local),      406.62 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:    7   6

 Initial alpha occupancy:   7   6
 Initial beta  occupancy:   7   3

 NELEC=   23   SYM=2   MS2= 3   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -371.48826926    -371.48826926     0.00D+00     0.13D+00     0     0       0.00      0.01    start
   2     -371.54430134      -0.05603208     0.59D-02     0.16D-01     1     0       0.00      0.01    diag2
   3     -371.54702258      -0.00272124     0.38D-02     0.35D-02     2     0       0.01      0.02    diag2
   4     -371.54752864      -0.00050606     0.81D-03     0.23D-02     3     0       0.00      0.02    diag2
   5     -371.54756882      -0.00004019     0.17D-03     0.77D-03     4     0       0.01      0.03    diag2
   6     -371.54756930      -0.00000047     0.23D-04     0.72D-04     5     0       0.00      0.03    diag2
   7     -371.54756930      -0.00000001     0.27D-05     0.91D-05     6     0       0.00      0.03    diag2
   8     -371.54756930      -0.00000000     0.18D-06     0.88D-06     7     0       0.01      0.04    fixocc
   9     -371.54756930      -0.00000000     0.18D-07     0.27D-07     0     0       0.00      0.04    diag

 Final alpha occupancy:   7   6
 Final beta  occupancy:   7   3

 !RHF STATE 1.2 Energy               -371.547569303785
  RHF One-electron energy            -646.950879420651
  RHF Two-electron energy             275.403310116866
  RHF Kinetic energy                  263.618813830994
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.409412188396

 !RHF STATE 1.2 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -9.29350     1  1  s    0.99525
    2.1     2.00000    -2.97817     1  1  d2-  0.74406    1  1  d2+  0.66775
    3.1     2.00000    -2.97817     1  1  d2- -0.66216    1  1  d2+  0.73599
    4.1     2.00000    -2.97817     1  1  d1-  0.98451
    5.1     2.00000    -2.97817     1  1  d1+  0.99394
    6.1     2.00000    -2.97817     1  1  d0   1.00049
    7.1     2.00000    -1.19209     1  2  s    1.00185
    1.2     2.00000    -7.17195     1  1  py   0.92179    1  1  pz   0.31015
    2.2     2.00000    -7.17195     1  1  px   0.97256
    3.2     2.00000    -7.17195     1  1  py  -0.31879    1  1  pz   0.94745
    4.2     1.00000    -0.78655     1  2  pz   1.16792
    5.2     1.00000    -0.78655     1  2  py   1.16792
    6.2     1.00000    -0.78655     1  2  px   1.16793


 HOMO      6.2    -0.786548 =     -21.4031eV
 LUMO      8.1    -0.119700 =      -3.2572eV
 LUMO-HOMO         0.666848 =      18.1459eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.85       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.53       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         0.98      0.09      0.60
 REAL TIME  *         2.58 SEC
 DISK USED  *        30.04 MB (local),      416.84 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        4 (    1    3)
 Number of external orbitals:      83 (   40   43)

 State symmetry 1

 Number of active electrons:   6    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             3
 Number of CSFs:               3   (3 determinants, 6 intermediate states)

 State symmetry 2

 Number of active electrons:   6    Spin symmetry=Singlet   Space symmetry=1
 Number of states:             6
 Number of CSFs:               7   (10 determinants, 16 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.491D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.531D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.237D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.137D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.359D-03 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 5 6 4 2 1 1 2 4   6 5 3 1 4 6 2 3 5 1   3 5 6 4 2 1 3 5 2 4   6 711 91415 8121310
                                        3 5 6 4 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.370D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.231D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.252D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.125D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.125D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 3 2 1 3 1 2 3   1 2 6 810 9 7 5 4 6   4 5 7 9 810 3 1 2 6   7 9 5 4 810 3 2 1 9
                                        7 6 4 5 810 3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.11111   0.11111   0.11111
 Weight factors for state symmetry  2:    0.11111   0.11111   0.11111   0.11111   0.11111   0.11111
 
 Number of orbital rotations:  553  ( 15 closed/active, 369 closed/virtual, 0 active/active, 169 active/virtual )
 Total number of variables:    622
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5    8    0   -371.77338763    -371.81592382   -0.04253620    0.27274036 0.00001537 0.00000000  0.20E+00      0.20
   2    8   14    0   -371.81744554    -371.81760891   -0.00016337    0.01638892 0.00000021 0.00000000  0.13E-01      0.52
   3    7   14    0   -371.81760935    -371.81760935   -0.00000000    0.00007000 0.00000000 0.00000000  0.48E-04      0.69

 CONVERGENCE REACHED!  Final gradient:    0.00000145 ( 0.15E-05)
                       Final energy:   -371.81760935
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -371.855071160354
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725469
 One electron energy                          -655.65770027
 Two electron energy                           283.80262911
 Virial ratio                                    2.40946420
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -371.855071159917
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725441
 One electron energy                          -655.65770001
 Two electron energy                           283.80262885
 Virial ratio                                    2.40946420
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -371.855071157433
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725280
 One electron energy                          -655.65769855
 Two electron energy                           283.80262740
 Virial ratio                                    2.40946421
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -371.806383801964
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725279
 One electron energy                          -655.65769854
 Two electron energy                           283.85131474
 Virial ratio                                    2.40927967
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -371.806383801958
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725280
 One electron energy                          -655.65769855
 Two electron energy                           283.85131475
 Virial ratio                                    2.40927967
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -371.806383801090
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725441
 One electron energy                          -655.65770001
 Two electron energy                           283.85131621
 Virial ratio                                    2.40927966
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -371.806383800937
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725469
 One electron energy                          -655.65770027
 Two electron energy                           283.85131647
 Virial ratio                                    2.40927966
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -371.806383800692
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82725514
 One electron energy                          -655.65770068
 Two electron energy                           283.85131688
 Virial ratio                                    2.40927966
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -371.761351646915
 Nuclear energy                                  0.00000000
 Kinetic energy                                263.82185203
 One electron energy                          -655.50676623
 Two electron energy                           283.74541458
 Virial ratio                                    2.40913783
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.769404373022
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     4.000000000000
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     3.230595626978
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000000
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>    -0.000000000000
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>     3.980664358468
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     4.000000000000
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000000
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     0.019335641532
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>    -0.000000000000
 
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     1.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.000000000000
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.000000000000
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     1.249931268511
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000000000000
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     4.000000000000
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000000
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     2.750068731489
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.000000000000
 
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     2.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     2.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     2.000000000000
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>     6.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     5.999999999999
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999999
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 2 3 5 6 1 1 6 3   5 2 4 1 6 3 5 2 4 1   6 3 5 2 4 1 6 3 5 2   41310111415 812 7 9
                                        4 2 3 5 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 5 9 7 810 6 4 2   3 1 5 7 9 810 6 4 4   6 810 5 7 9 2 3 1 4
                                        6 810 9 7 5 1 3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -8.92135     1  1  s    0.99465
    2.1     2.00000    -2.60702     1  1  d1+  1.00011
    3.1     2.00000    -2.60702     1  1  d0   1.00011
    4.1     2.00000    -2.60702     1  1  d2-  1.00011
    5.1     2.00000    -2.60702     1  1  d2+  1.00011
    6.1     2.00000    -2.60702     1  1  d1-  1.00011
    7.1     1.99363    -0.86330     1  2  s    0.96409
    1.2     2.00000    -6.80105     1  1  py   0.99991
    2.2     2.00000    -6.80105     1  1  pz   0.99991
    3.2     2.00000    -6.80105     1  1  px   0.99991
    4.2     1.33546    -0.26703     1  2  py   0.98443
    5.2     1.33546    -0.26703     1  2  pz   0.98443
    6.2     1.33546    -0.26703     1  2  px   0.98443
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================
 
 2 2aa          0.00000000      0.00000000      1.00000000
 2 a2a         -0.00000000      1.00000000     -0.00000000
 2 aa2          1.00000000     -0.00000000     -0.00000000
 
 Energy:     -371.85507116   -371.85507116   -371.85507116
 
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================
 
 2 022         -0.05676800     -0.00000000     -0.00000000      0.00000000      0.81452073      0.56901578
 2 220          0.73377968     -0.00000000     -0.00000000     -0.00000000     -0.35809787      0.56901572
 2 ba2         -0.00000000      0.00000000      0.00000000     -0.70710678      0.00000000      0.00000000
 2 2ba          0.00000000     -0.70710678      0.00000000      0.00000000      0.00000000      0.00000000
 2 ab2          0.00000000     -0.00000000     -0.00000000      0.70710678     -0.00000000     -0.00000000
 2 2ab         -0.00000000      0.70710678     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2 a2b          0.00000000      0.00000000      0.70710678      0.00000000      0.00000000      0.00000000
 2 b2a         -0.00000000     -0.00000000     -0.70710678     -0.00000000     -0.00000000     -0.00000000
 2 202         -0.67701165     -0.00000000     -0.00000000      0.00000000     -0.45642294      0.56901573
 0 222          0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.16930226
 
 Energy:     -371.80638380   -371.80638380   -371.80638380   -371.80638380   -371.80638380   -371.76135165
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        0.79       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         1.74      0.76      0.09      0.60
 REAL TIME  *         3.57 SEC
 DISK USED  *        34.77 MB (local),      473.68 MB (total)
 SF USED    *        12.51 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -371.8550712   2.0
    -371.8550712   2.0
    -371.8550712   2.0
    -371.8063838   6.0
    -371.8063838   6.0
    -371.8063838   6.0
    -371.8063838   6.0
    -371.8063838   6.0
    -371.7613516   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    1   2   3
 Number of reference states: 3  Roots:    1   2   3

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 24
 Maximum number of shells:             3
 Maximum number of spin couplings:     9

 Reference space:        3 conf        3 CSFs
 N elec internal:       78 conf       78 CSFs
 N-1 el internal:      232 conf      564 CSFs
 N-2 el internal:      241 conf     1587 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:   3

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.85507116
     2      -371.85507116
     3      -371.85507116

 Number of blocks in overlap matrix:   449   Smallest eigenvalue:  0.50D+00
 Number of N-2 electron functions:     492
 Number of N-1 electron functions:     564

 Number of internal configurations:                   36
 Number of singly external configurations:         23433
 Number of doubly external configurations:        848316
 Total number of contracted configurations:       871785
 Total number of uncontracted configurations:    2745270

 Diagonal Coupling coefficients finished.               Storage:    330630 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    444227 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.85507116     0.00000000    -0.95957097  0.30D-01  0.86D-01     0.08
    1     2     2     1.00000000     0.00000000  -371.85507116     0.00000000    -0.95953883  0.30D-01  0.86D-01     0.08
    1     3     3     1.00000000     0.00000000  -371.85507116    -0.00000000    -0.95932877  0.30D-01  0.86D-01     0.08
    2     1     1     1.07818594    -0.78703614  -372.64210730    -0.78703614    -0.01858075  0.22D-02  0.15D-02     2.08
    2     2     2     1.07833738    -0.78692966  -372.64200082    -0.78692966    -0.01869415  0.22D-02  0.15D-02     2.08
    2     3     3     1.07836980    -0.78692101  -372.64199217    -0.78692101    -0.01869339  0.22D-02  0.15D-02     2.08
    3     1     1     1.06590220    -0.80458822  -372.65965938    -0.01755208    -0.00036625  0.27D-04  0.32D-04     3.83
    3     2     2     1.06589623    -0.80458781  -372.65965897    -0.01765815    -0.00036659  0.28D-04  0.32D-04     3.83
    3     3     3     1.06589903    -0.80458754  -372.65965870    -0.01766653    -0.00036667  0.28D-04  0.32D-04     3.83
    4     1     1     1.06496579    -0.80494106  -372.66001222    -0.00035284    -0.00001287  0.18D-05  0.85D-06     5.63
    4     2     2     1.06496626    -0.80494104  -372.66001220    -0.00035323    -0.00001288  0.18D-05  0.86D-06     5.63
    4     3     3     1.06496439    -0.80494103  -372.66001219    -0.00035349    -0.00001291  0.18D-05  0.86D-06     5.63
    5     1     1     1.06499474    -0.80495339  -372.66002455    -0.00001233    -0.00000043  0.75D-07  0.30D-07     7.86
    5     2     2     1.06499476    -0.80495339  -372.66002455    -0.00001235    -0.00000043  0.75D-07  0.30D-07     7.86
    5     3     3     1.06499461    -0.80495339  -372.66002455    -0.00001236    -0.00000043  0.75D-07  0.30D-07     7.86
    6     1     1     1.06498755    -0.80495383  -372.66002499    -0.00000044    -0.00000001  0.14D-08  0.17D-08     9.60
    6     2     2     1.06498750    -0.80495383  -372.66002499    -0.00000044    -0.00000001  0.15D-08  0.17D-08     9.60
    6     3     3     1.06498758    -0.80495383  -372.66002499    -0.00000044    -0.00000001  0.15D-08  0.17D-08     9.60


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%   0.5%
 P   0.5%  22.0%  26.5%

 Initialization:   0.6%
 Other:           49.2%

 Total CPU:        9.6 seconds
 =====================================



 Wavefunction saved on  5302.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222/2/           0.0000000   0.9690064   0.0000000
 2222222222//2           0.9690063   0.0000000   0.0000000
 22222222222//           0.0000000   0.0000000   0.9690063

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.969006    0.000000    0.000000
 2           0.000000    0.969006    0.000000
 3           0.000000    0.000000    0.969006

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969006    0.000000    0.000000
 2           0.000000    0.969006    0.000000
 3           0.000000    0.000000    0.969006


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96900634 (fixed)   0.96900634 (relaxed)   0.96900634 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000514   -0.00001752   -0.71839140
 Singles      0.01228388   -0.03987614   -0.04672712
 Pairs        0.05270401   -0.00000000   -0.03983532
 Total        1.06499303   -0.03989366   -0.80495383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85507116
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81650442
 One electron energy                 -654.82508377
 Two electron energy                  282.16505877
 Virial quotient                       -1.41257283
 Correlation energy                    -0.80495383
 !MRCI STATE 1.1 Energy              -372.660024991863

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.71234138 (Davidson, fixed reference)
 Cluster corrected energies          -372.71234138 (Davidson, relaxed reference)
 Cluster corrected energies          -372.71234138 (Davidson, rotated reference)

 Cluster corrected energies          -372.71023691 (Pople, fixed reference)
 Cluster corrected energies          -372.71023691 (Pople, relaxed reference)
 Cluster corrected energies          -372.71023691 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96900636 (fixed)   0.96900636 (relaxed)   0.96900636 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000514   -0.00001752   -0.71839146
 Singles      0.01228386   -0.03987611   -0.04672712
 Pairs        0.05270398    0.00000000   -0.03983526
 Total        1.06499298   -0.03989363   -0.80495383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85507116
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81650187
 One electron energy                 -654.82508194
 Two electron energy                  282.16505695
 Virial quotient                       -1.41257284
 Correlation energy                    -0.80495383
 !MRCI STATE 2.1 Energy              -372.660024991580

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.71234134 (Davidson, fixed reference)
 Cluster corrected energies          -372.71234134 (Davidson, relaxed reference)
 Cluster corrected energies          -372.71234134 (Davidson, rotated reference)

 Cluster corrected energies          -372.71023687 (Pople, fixed reference)
 Cluster corrected energies          -372.71023687 (Pople, relaxed reference)
 Cluster corrected energies          -372.71023687 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96900633 (fixed)   0.96900633 (relaxed)   0.96900633 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000514   -0.00001752   -0.00002034
 Singles      0.01228395   -0.03987626   -0.04672718
 Pairs        0.05270396   -0.76506006   -0.75820631
 Total        1.06499305   -0.80495383   -0.80495383
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.85507116
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81650607
 One electron energy                 -654.82508350
 Two electron energy                  282.16505851
 Virial quotient                       -1.41257282
 Correlation energy                    -0.80495383
 !MRCI STATE 3.1 Energy              -372.660024990045

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.71234140 (Davidson, fixed reference)
 Cluster corrected energies          -372.71234140 (Davidson, relaxed reference)
 Cluster corrected energies          -372.71234140 (Davidson, rotated reference)

 Cluster corrected energies          -372.71023693 (Pople, fixed reference)
 Cluster corrected energies          -372.71023693 (Pople, relaxed reference)
 Cluster corrected energies          -372.71023693 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6       21.27       700     1000      520     2100     2140     5302   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.65      9.91      0.76      0.09      0.60
 REAL TIME  *        15.29 SEC
 DISK USED  *        55.25 MB (local),      719.47 MB (total)
 SF USED    *       217.86 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -372.71234138  AU                              
 SETTING HLSDIAG(2)     =      -372.71234134  AU                              
 SETTING HLSDIAG(3)     =      -372.71234140  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 6  Roots:    1   2   3   4   5   6
 Number of reference states: 6  Roots:    1   2   3   4   5   6

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 24
 Maximum number of shells:             4
 Maximum number of spin couplings:     5

 Reference space:        7 conf        7 CSFs
 N elec internal:       91 conf       91 CSFs
 N-1 el internal:      286 conf      488 CSFs
 N-2 el internal:      478 conf     1349 CSFs

 Number of electrons in valence space:                     24
 Maximum number of open shell orbitals in reference space:  2
 Maximum number of open shell orbitals in internal spaces:  6


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        4 (   1   3 )
 Number of external orbitals:      83 (  40  43 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   6

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -371.80638380
     2      -371.80638380
     3      -371.80638380
     4      -371.80638380
     5      -371.80638380
     6      -371.76135165

 Number of blocks in overlap matrix:   684   Smallest eigenvalue:  0.21D-01
 Number of N-2 electron functions:     826
 Number of N-1 electron functions:     488

 Number of internal configurations:                   49
 Number of singly external configurations:         20264
 Number of doubly external configurations:       1425127
 Total number of contracted configurations:      1445440
 Total number of uncontracted configurations:    2342450

 Diagonal Coupling coefficients finished.               Storage:    441505 words, CPU-Time:      0.03 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    505133 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -371.80638380     0.00000000    -0.96055012  0.31D-01  0.83D-01     0.14
    1     2     2     1.00000000     0.00000000  -371.80638380    -0.00000000    -0.96185454  0.32D-01  0.83D-01     0.14
    1     3     3     1.00000000     0.00000000  -371.80638380     0.00000000    -0.96169441  0.31D-01  0.83D-01     0.14
    1     4     4     1.00000000     0.00000000  -371.80638380    -0.00000000    -0.96139850  0.31D-01  0.83D-01     0.14
    1     5     5     1.00000000     0.00000000  -371.80638380    -0.00000000    -0.95967500  0.31D-01  0.83D-01     0.14
    1     6     6     1.00000000     0.00000000  -371.76135165    -0.00000000    -0.94021983  0.54D-02  0.95D-01     0.14
    2     1     1     1.07788997    -0.79453212  -372.60091592    -0.79453212    -0.01775691  0.20D-02  0.13D-02     6.79
    2     2     2     1.07815011    -0.79437111  -372.60075492    -0.79437111    -0.01798352  0.20D-02  0.13D-02     6.79
    2     3     3     1.07784972    -0.79433062  -372.60071442    -0.79433062    -0.01804947  0.21D-02  0.13D-02     6.79
    2     4     4     1.07825848    -0.79421592  -372.60059972    -0.79421592    -0.01817571  0.21D-02  0.13D-02     6.79
    2     5     5     1.07846345    -0.79408584  -372.60046964    -0.79408584    -0.01831751  0.21D-02  0.13D-02     6.79
    2     6     6     1.07053104    -0.78778890  -372.54914055    -0.78778890    -0.01517928  0.12D-02  0.13D-02     6.79
    3     1     1     1.06882715    -0.81099698  -372.61738078    -0.01646485    -0.00040361  0.28D-04  0.43D-04    14.49
    3     2     2     1.06877338    -0.81099695  -372.61738075    -0.01662583    -0.00040010  0.28D-04  0.44D-04    14.49
    3     3     3     1.06874624    -0.81099205  -372.61737585    -0.01666142    -0.00040599  0.28D-04  0.45D-04    14.49
    3     4     4     1.06882081    -0.81099157  -372.61737537    -0.01677565    -0.00040921  0.28D-04  0.45D-04    14.49
    3     5     5     1.06882640    -0.81098746  -372.61737126    -0.01690162    -0.00041322  0.28D-04  0.45D-04    14.49
    3     6     6     1.06479112    -0.80201586  -372.56336751    -0.01422696    -0.00033978  0.16D-04  0.40D-04    14.49
    4     1     1     1.06793156    -0.81139126  -372.61777506    -0.00039428    -0.00001292  0.13D-05  0.12D-05    20.95
    4     2     2     1.06792945    -0.81139117  -372.61777497    -0.00039422    -0.00001302  0.14D-05  0.12D-05    20.95
    4     3     3     1.06793528    -0.81139112  -372.61777493    -0.00039908    -0.00001322  0.14D-05  0.11D-05    20.95
    4     4     4     1.06793510    -0.81139105  -372.61777485    -0.00039948    -0.00001328  0.14D-05  0.12D-05    20.95
    4     5     5     1.06793659    -0.81139101  -372.61777481    -0.00040355    -0.00001332  0.14D-05  0.12D-05    20.95
    4     6     6     1.06404045    -0.80235165  -372.56370330    -0.00033579    -0.00001203  0.14D-05  0.10D-05    20.95
    5     1     1     1.06789080    -0.81140428  -372.61778808    -0.00001302    -0.00000044  0.50D-07  0.38D-07    27.39
    5     2     2     1.06789203    -0.81140427  -372.61778807    -0.00001310    -0.00000045  0.51D-07  0.40D-07    27.39
    5     3     3     1.06789313    -0.81140426  -372.61778806    -0.00001314    -0.00000046  0.57D-07  0.39D-07    27.39
    5     4     4     1.06789323    -0.81140426  -372.61778806    -0.00001322    -0.00000046  0.57D-07  0.40D-07    27.39
    5     5     5     1.06789438    -0.81140426  -372.61778806    -0.00001325    -0.00000046  0.58D-07  0.40D-07    27.39
    5     6     6     1.06402868    -0.80236357  -372.56371522    -0.00001192    -0.00000046  0.61D-07  0.38D-07    27.39
    6     1     1     1.06788282    -0.81140472  -372.61778853    -0.00000044    -0.00000002  0.10D-08  0.27D-08    33.79
    6     2     2     1.06788308    -0.81140472  -372.61778852    -0.00000045    -0.00000002  0.11D-08  0.28D-08    33.79
    6     3     3     1.06788245    -0.81140472  -372.61778852    -0.00000046    -0.00000002  0.10D-08  0.26D-08    33.79
    6     4     4     1.06788279    -0.81140472  -372.61778852    -0.00000046    -0.00000002  0.12D-08  0.29D-08    33.79
    6     5     5     1.06788271    -0.81140472  -372.61778852    -0.00000046    -0.00000002  0.12D-08  0.28D-08    33.79
    6     6     6     1.06402263    -0.80236403  -372.56371568    -0.00000046    -0.00000002  0.14D-08  0.18D-08    33.79


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.4%
 P   0.4%  15.2%  33.6%

 Initialization:   0.3%
 Other:           50.1%

 Total CPU:       33.8 seconds
 =====================================



 Wavefunction saved on  5102.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/\          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9676583  -0.0000000
 2222222222/2\          -0.0000000   0.0000000   0.0000000   0.9676582  -0.0000000   0.0000000
 2222222222/\2           0.0000000   0.9676581  -0.0000000   0.0000000   0.0000000  -0.0000000
 2222222222022           0.7900393   0.0000000  -0.0089215  -0.0000000   0.0000000   0.5522930
 2222222222202          -0.3872934   0.0000000   0.6886549  -0.0000000   0.0000000   0.5522929
 2222222222220          -0.4027459   0.0000000  -0.6797334  -0.0000000   0.0000000   0.5522929
 2222220222222          -0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.1572167

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.078216   -0.000000   -0.000000    0.000000    0.964492    0.000000
 2          -0.000000   -0.000000    0.000000    0.967658   -0.000000    0.000000
 3          -0.964492   -0.000000    0.000000   -0.000000   -0.078216    0.000000
 4           0.000000   -0.000000    0.967658    0.000000    0.000000   -0.000000
 5          -0.000000    0.967658   -0.000000    0.000000    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969407

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967658   -0.000000    0.000000    0.000000    0.000000    0.000000
 2          -0.000000    0.967658    0.000000    0.000000    0.000000    0.000000
 3           0.000000    0.000000    0.967658    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.967658   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.967658    0.000000
 6           0.000000    0.000000    0.000000   -0.000000    0.000000    0.969407


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96449190 (fixed)   0.96765821 (relaxed)   0.96765821 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007467   -0.00026711   -0.71862805
 Singles      0.01424890   -0.04399738   -0.05202516
 Pairs        0.05363899   -0.00000008   -0.04075151
 Total        1.06796256   -0.04426457   -0.81140472
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80638380
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81862688
 One electron energy                 -654.76077465
 Two electron energy                  282.14298613
 Virial quotient                       -1.41240136
 Correlation energy                    -0.81140473
 !MRCI STATE 1.1 Energy              -372.617788525859

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.67293367 (Davidson, fixed reference)
 Cluster corrected energies          -372.67293367 (Davidson, relaxed reference)
 Cluster corrected energies          -372.67293367 (Davidson, rotated reference)

 Cluster corrected energies          -372.67135180 (Pople, fixed reference)
 Cluster corrected energies          -372.67135180 (Pople, relaxed reference)
 Cluster corrected energies          -372.67135180 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96765809 (fixed)   0.96765809 (relaxed)   0.96765809 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007467   -0.00026711   -0.71862770
 Singles      0.01424912   -0.04399765   -0.05202552
 Pairs        0.05363903   -0.00000000   -0.04075150
 Total        1.06796283   -0.04426475   -0.81140472
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80638380
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81859425
 One electron energy                 -654.76075840
 Two electron energy                  282.14296987
 Virial quotient                       -1.41240154
 Correlation energy                    -0.81140472
 !MRCI STATE 2.1 Energy              -372.617788524664

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.67293388 (Davidson, fixed reference)
 Cluster corrected energies          -372.67293388 (Davidson, relaxed reference)
 Cluster corrected energies          -372.67293388 (Davidson, rotated reference)

 Cluster corrected energies          -372.67135202 (Pople, fixed reference)
 Cluster corrected energies          -372.67135202 (Pople, relaxed reference)
 Cluster corrected energies          -372.67135202 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.96449207 (fixed)   0.96765838 (relaxed)   0.96765838 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007467   -0.00026710   -0.71862856
 Singles      0.01424870   -0.04399723   -0.05202505
 Pairs        0.05363882    0.00000004   -0.04075111
 Total        1.06796219   -0.04426429   -0.81140472
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80638380
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81864510
 One electron energy                 -654.76078448
 Two electron energy                  282.14299595
 Virial quotient                       -1.41240127
 Correlation energy                    -0.81140472
 !MRCI STATE 3.1 Energy              -372.617788524586

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.67293336 (Davidson, fixed reference)
 Cluster corrected energies          -372.67293336 (Davidson, relaxed reference)
 Cluster corrected energies          -372.67293336 (Davidson, rotated reference)

 Cluster corrected energies          -372.67135148 (Pople, fixed reference)
 Cluster corrected energies          -372.67135148 (Pople, relaxed reference)
 Cluster corrected energies          -372.67135148 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96765822 (fixed)   0.96765822 (relaxed)   0.96765822 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007467   -0.00026711   -0.71862799
 Singles      0.01424907   -0.04399755   -0.05202551
 Pairs        0.05363879    0.00000000   -0.04075123
 Total        1.06796253   -0.04426466   -0.81140472
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80638380
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81863382
 One electron energy                 -654.76079759
 Two electron energy                  282.14300906
 Virial quotient                       -1.41240133
 Correlation energy                    -0.81140472
 !MRCI STATE 4.1 Energy              -372.617788524067

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.67293364 (Davidson, fixed reference)
 Cluster corrected energies          -372.67293364 (Davidson, relaxed reference)
 Cluster corrected energies          -372.67293364 (Davidson, rotated reference)

 Cluster corrected energies          -372.67135177 (Pople, fixed reference)
 Cluster corrected energies          -372.67135177 (Pople, relaxed reference)
 Cluster corrected energies          -372.67135177 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96765826 (fixed)   0.96765826 (relaxed)   0.96765826 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007467   -0.00026710   -0.71862822
 Singles      0.01424883   -0.04399736   -0.05202537
 Pairs        0.05363895   -0.00000000   -0.04075113
 Total        1.06796245   -0.04426446   -0.81140472
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.80638380
 Nuclear energy                         0.00000000
 Kinetic energy                       263.81864508
 One electron energy                 -654.76079358
 Two electron energy                  282.14300505
 Virial quotient                       -1.41240127
 Correlation energy                    -0.81140472
 !MRCI STATE 5.1 Energy              -372.617788523413

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.67293358 (Davidson, fixed reference)
 Cluster corrected energies          -372.67293358 (Davidson, relaxed reference)
 Cluster corrected energies          -372.67293358 (Davidson, rotated reference)

 Cluster corrected energies          -372.67135170 (Pople, fixed reference)
 Cluster corrected energies          -372.67135170 (Pople, relaxed reference)
 Cluster corrected energies          -372.67135170 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.96940724 (fixed)   0.96943256 (relaxed)   0.96940724 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008432   -0.00015018   -0.00020472
 Singles      0.00355261   -0.01889900   -0.02043959
 Pairs        0.06047542   -0.78331484   -0.78171972
 Total        1.06411235   -0.80236403   -0.80236403
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -371.76135165
 Nuclear energy                         0.00000000
 Kinetic energy                       263.83089797
 One electron energy                 -654.58439834
 Two electron energy                  282.02068267
 Virial quotient                       -1.41213072
 Correlation energy                    -0.80236403
 !MRCI STATE 6.1 Energy              -372.563715676205

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -372.61515712 (Davidson, fixed reference)
 Cluster corrected energies          -372.61511251 (Davidson, relaxed reference)
 Cluster corrected energies          -372.61515712 (Davidson, rotated reference)

 Cluster corrected energies          -372.61351441 (Pople, fixed reference)
 Cluster corrected energies          -372.61346883 (Pople, relaxed reference)
 Cluster corrected energies          -372.61351441 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       88.24       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        47.31     35.64      9.91      0.76      0.09      0.60
 REAL TIME  *        56.85 SEC
 DISK USED  *       122.23 MB (local),        1.49 GB (total)
 SF USED    *       696.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(4)     =      -372.67293367  AU                              
 SETTING HLSDIAG(5)     =      -372.67293388  AU                              
 SETTING HLSDIAG(6)     =      -372.67293336  AU                              
 SETTING HLSDIAG(7)     =      -372.67293364  AU                              
 SETTING HLSDIAG(8)     =      -372.67293358  AU                              
 SETTING HLSDIAG(9)     =      -372.61515712  AU                              


         HLSDIAG
    -372.7123414
    -372.7123413
    -372.7123414
    -372.6729337
    -372.6729339
    -372.6729334
    -372.6729336
    -372.6729336
    -372.6151571
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5302.2  Symmetry=1  S= 1.0  NSTATE=   3

 Original energies:   -372.660025   -372.660025   -372.660025
 Replaced energies:   -372.712341   -372.712341   -372.712341

 Wavefunction restored from record  5102.2  Symmetry=1  S= 0.0  NSTATE=   6

 Original energies:   -372.617789   -372.617789   -372.617789   -372.617789   -372.617789   -372.563716
 Replaced energies:   -372.672934   -372.672934   -372.672933   -372.672934   -372.672934   -372.615157



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -372.71234140

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.0  1.0       0.00       0.00       0.00       0.00     647.05       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00     915.07      -0.00       0.00       0.00       0.00       0.00       0.00     383.40

    2   2.1  1.0  1.0       0.00       0.01       0.00    -647.05      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     647.05       0.00       0.00       0.00       0.00

    3   3.1  1.0  1.0       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -752.08
                         -915.07       0.00      -0.00      -0.00    -647.05      -0.00       0.00       0.00       0.00      -0.00

    4   1.1  1.0  0.0       0.00    -647.05      -0.00       0.00       0.00       0.00       0.00     647.05       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

    5   2.1  1.0  0.0     647.05      -0.00      -0.00       0.00       0.01       0.00    -647.05      -0.00       0.00       0.00
                           -0.00       0.00     647.05      -0.00       0.00       0.00      -0.00      -0.00     647.05     521.40

    6   3.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00    -647.05       0.00      -0.00      -0.00       0.00      -0.00    -647.05      -0.00      -0.00

    7   1.1  1.0 -1.0       0.00       0.00       0.00       0.00    -647.05      -0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -915.07    -383.40

    8   2.1  1.0 -1.0       0.00       0.00       0.00     647.05      -0.00      -0.00       0.00       0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     647.05       0.00       0.00       0.00      -0.00

    9   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -752.08
                           -0.00      -0.00      -0.00      -0.00    -647.05       0.00     915.07      -0.00       0.00       0.00

   10   1.1  0.0  0.0      -0.00      -0.00    -752.08       0.00       0.00       0.00      -0.00      -0.00    -752.08    8649.00
                         -383.40      -0.00       0.00      -0.00    -521.40       0.00     383.40       0.00      -0.00       0.00

   11   2.1  0.0  0.0      -0.00    -651.37       0.00       0.00       0.00       0.00      -0.00    -651.37       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     921.17       0.00       0.00      -0.00      -0.00

   12   3.1  0.0  0.0       0.00       0.00       8.49       0.00       0.00       0.00       0.00       0.00       8.49       0.00
                         -647.08      -0.00      -0.00      -0.00     927.12      -0.00     647.08       0.00       0.00      -0.00

   13   4.1  0.0  0.0     651.37       0.00      -0.00       0.00       0.00       0.00     651.37       0.00      -0.00       0.00
                            0.00       0.00    -651.37       0.00       0.00      -0.00      -0.00      -0.00     651.37      -0.00

   14   5.1  0.0  0.0       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00     651.37      -0.00     921.17      -0.00       0.00       0.00    -651.37       0.00      -0.00

   15   6.1  0.0  0.0       0.00       0.00    1057.50       0.00       0.00       0.00       0.00       0.00    1057.50       0.00
                        -1057.50      -0.00      -0.00      -0.00   -1495.53      -0.00    1057.50       0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15

    1   1.1  1.0  1.0      -0.00       0.00     651.37       0.00       0.00
                            0.00     647.08      -0.00       0.00    1057.50

    2   2.1  1.0  1.0    -651.37       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00    -651.37       0.00

    3   3.1  1.0  1.0       0.00       8.49      -0.00       0.00    1057.50
                           -0.00       0.00     651.37       0.00       0.00

    4   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -921.17       0.00

    5   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00    -927.12      -0.00       0.00    1495.53

    6   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00
                         -921.17       0.00       0.00      -0.00       0.00

    7   1.1  1.0 -1.0      -0.00       0.00     651.37       0.00       0.00
                           -0.00    -647.08       0.00      -0.00   -1057.50

    8   2.1  1.0 -1.0    -651.37       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00     651.37      -0.00

    9   3.1  1.0 -1.0       0.00       8.49      -0.00       0.00    1057.50
                            0.00      -0.00    -651.37      -0.00      -0.00

   10   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   11   2.1  0.0  0.0    8648.95       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00

   12   3.1  0.0  0.0       0.00    8649.06       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00

   13   4.1  0.0  0.0       0.00       0.00    8649.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00

   14   5.1  0.0  0.0       0.00       0.00       0.00    8649.02       0.00
                           -0.00      -0.00      -0.00       0.00       0.00

   15   6.1  0.0  0.0       0.00       0.00       0.00       0.00   21329.48
                           -0.00      -0.00      -0.00      -0.00       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 15)

    The diagonal matrixelements are shifted by   -372.71234140 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |1 1>+              0.003       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       0.012       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000     915.067      -0.000      -0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -915.067       0.000    -915.067       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.003       0.000       0.000       0.000    -915.068
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 0>               0.000      -0.000      -0.000       0.000       0.012       0.000     915.068       0.000
                               -0.000       0.000     915.067      -0.000       0.000       0.000      -0.000       0.000

    3    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -915.067       0.000      -0.000      -0.000       0.000       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000     915.068       0.000       0.003       0.000
                                0.000       0.000     915.067      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000    -915.068       0.000       0.000       0.000       0.012
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000      -0.000       0.000       0.000       0.000
                             -915.067       0.000      -0.000       0.000      -0.000      -0.000       0.000       0.000

    1    1  |0 0>              -0.000      -0.000   -1063.606       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000    -521.402       0.000    -542.205      -0.000

    2    1  |0 0>              -0.000    -921.174       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000     921.171      -0.000      -0.000

    3    1  |0 0>               0.000       0.000      12.012       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     927.116      -0.000    -915.106      -0.000

    4    1  |0 0>             921.176       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    5    1  |0 0>               0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     921.172      -0.000       0.000      -0.000     921.174

    6    1  |0 0>               0.000       0.000    1495.534       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000   -1495.532      -0.000   -1495.532      -0.000

  State Sym Spin    / Nr.        9          10          11          12          13          14          15

    1    1  |1 1>+              0.000      -0.000      -0.000       0.000     921.176       0.000       0.000
                              915.067       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.000    -921.174       0.000       0.000      -0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000   -1063.606       0.000      12.012      -0.000       0.000    1495.534
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -921.172       0.000

    2    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     521.402       0.000    -927.116      -0.000       0.000    1495.532

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000    -921.171       0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     542.205       0.000     915.106      -0.000       0.000    1495.532

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000    -921.174       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000      -0.000       0.000     921.175       0.000       0.000

    1    1  |0 0>               0.000    8648.996       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000    8648.949       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000       0.000    8649.064       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000       0.000    8649.002       0.000       0.000
                             -921.175      -0.000      -0.000      -0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000    8649.017       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   21329.483
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -372.71730479    -0.00496339    -1089.34      0.00000000        0.00      0.0000
    2  -372.71730478    -0.00496338    -1089.34      0.00000001        0.00      0.0000
    3  -372.71730477    -0.00496337    -1089.33      0.00000002        0.00      0.0000
    4  -372.71730476    -0.00496336    -1089.33      0.00000003        0.01      0.0000
    5  -372.71730474    -0.00496335    -1089.33      0.00000005        0.01      0.0000
    6  -372.70817204     0.00416936      915.07      0.00913275     2004.41      0.2485
    7  -372.70817202     0.00416938      915.07      0.00913277     2004.41      0.2485
    8  -372.70817201     0.00416939      915.08      0.00913278     2004.41      0.2485
    9  -372.70554380     0.00679760     1491.90      0.01176099     2581.24      0.3200
   10  -372.67213984     0.04020156     8823.22      0.04516495     9912.56      1.2290
   11  -372.67213964     0.04020176     8823.27      0.04516515     9912.61      1.2290
   12  -372.67213960     0.04020180     8823.27      0.04516519     9912.61      1.2290
   13  -372.67213954     0.04020186     8823.29      0.04516525     9912.63      1.2290
   14  -372.67213933     0.04020206     8823.33      0.04516546     9912.67      1.2290
   15  -372.61361599     0.09872541    21667.72      0.10368880    22757.06      2.8215

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |1 1>+          0.70086287 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.70710733 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+          0.00000001 -0.00000000  0.70086132 -0.00000001 -0.00000000  0.00000000  0.70710880 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+          0.00000000  0.75099566  0.00000000 -0.00000000 -0.30158061  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00086603 -0.00000000  0.00000000  0.00123542  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000  0.00000001  0.70086498 -0.00000000 -0.00000000 -0.00000000 -0.70710530

   2    1  |1 0>           0.00000000  0.00013183 -0.00000000  0.00000000  0.00328197 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.11431942  0.00000000  0.00000000  0.80116460 -0.00000000 -0.00000000  0.00000000

   3    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000001 -0.00000000  0.70086546 -0.00000001 -0.00000000 -0.00000000 -0.70710476  0.00000000

   1    1  |1 1>-         -0.00000000  0.00073420 -0.00000000 -0.00000000 -0.00204656 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.63667465 -0.00000000 -0.00000000 -0.49958719 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000000  0.00000000  0.00000001  0.70086195 -0.00000000  0.00000000  0.00000000  0.70710826

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.70086399 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.70710623  0.00000000  0.00000000

   1    1  |0 0>           0.00000000  0.12359183  0.00000000 -0.00000000 -0.04801787 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00014252 -0.00000000  0.00000000  0.00019670  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.00000000 -0.00000000  0.13259342 -0.00000000 -0.00000000  0.00000000  0.00000078 -0.00000000
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00000000  0.04801778  0.00000000  0.00000000  0.12359028 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00005537  0.00000000 -0.00000000 -0.00050629 -0.00000000 -0.00000000  0.00000000

   4    1  |0 0>          -0.13259301  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000023  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00000000  0.00000000  0.00000000  0.13259263 -0.00000000 -0.00000000 -0.00000000  0.00000053
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000024  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 State Sym Spin     / Nr.      9          10          11          12          13          14          15

   1    1  |1 1>+          0.00000000  0.00000000  0.00000000  0.09375750  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00000000 -0.09375798  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.57248904 -0.00000000 -0.10824892  0.00000000  0.00000000  0.00162227  0.07475428
                          -0.00009483 -0.00000000  0.00002139 -0.00000000  0.00000000  0.00000011 -0.00000001

   1    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.09375697 -0.00000000  0.00000000

   2    1  |1 0>           0.00009483 -0.00000000  0.00001042 -0.00000000  0.00000000  0.00000669  0.00000001
                           0.57249188  0.00000000  0.05271980 -0.00000000  0.00000000 -0.09455698  0.07475425

   3    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.09375743  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 1>-          0.00009483  0.00000000  0.00001097 -0.00000000 -0.00000000 -0.00000657  0.00000001
                           0.57248994  0.00000000  0.05552934  0.00000000 -0.00000000  0.09293475  0.07475423

   2    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.09375732 -0.00000000  0.00000000

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00000000  0.00000000  0.09375733  0.00000000 -0.00000000  0.00000000

   1    1  |0 0>          -0.00000033  0.00000000  0.99116389 -0.00000000 -0.00000000 -0.00365972  0.00000000
                           0.00000000  0.00000000 -0.00019587  0.00000000 -0.00000000 -0.00000026 -0.00000000

   2    1  |0 0>          -0.00000000  0.99117051 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00000016 -0.00000000  0.00365975  0.00000000 -0.00000000  0.99116400  0.00000001
                          -0.00000000 -0.00000000 -0.00000072  0.00000000  0.00000000  0.00007011 -0.00000000

   4    1  |0 0>           0.00000000  0.00000000  0.00000000  0.99117057  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99117062  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.12947816 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001  0.99158227
                           0.00002145  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000014


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -372.71730479     -0.00496339    -1089.34      0.00000000        0.00      0.0000
     2   1   -372.71730478     -0.00496338    -1089.34      0.00000001        0.00      0.0000
     3   1   -372.71730477     -0.00496337    -1089.33      0.00000002        0.00      0.0000
     4   1   -372.71730476     -0.00496336    -1089.33      0.00000003        0.01      0.0000
     5   1   -372.71730474     -0.00496335    -1089.33      0.00000005        0.01      0.0000
     6   1   -372.70817204      0.00416936      915.07      0.00913275     2004.41      0.2485
     7   1   -372.70817202      0.00416938      915.07      0.00913277     2004.41      0.2485
     8   1   -372.70817201      0.00416939      915.08      0.00913278     2004.41      0.2485
     9   1   -372.70554380      0.00679760     1491.90      0.01176099     2581.24      0.3200
    10   1   -372.67213984      0.04020156     8823.22      0.04516495     9912.56      1.2290
    11   1   -372.67213964      0.04020176     8823.27      0.04516515     9912.61      1.2290
    12   1   -372.67213960      0.04020180     8823.27      0.04516519     9912.61      1.2290
    13   1   -372.67213954      0.04020186     8823.29      0.04516525     9912.63      1.2290
    14   1   -372.67213933      0.04020206     8823.33      0.04516546     9912.67      1.2290
    15   1   -372.61361599      0.09872541    21667.72      0.10368880    22757.06      2.8215

 E0 =   -372.71234140 is the energy of the lowest zeroth-order state
 E1 =   -372.71730479 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |1 1>+       0.70086287 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.70710733 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000001 -0.00000000  0.70086132 -0.00000001 -0.00000000  0.00000000  0.70710880 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.00000000  0.75099566  0.00000000 -0.00000000 -0.30158061  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00086603 -0.00000000  0.00000000  0.00123542  0.00000000  0.00000000 -0.00000000

  4  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000  0.00000001  0.70086498 -0.00000000 -0.00000000 -0.00000000 -0.70710530

  5  1     2    1  |1 0>        0.00000000  0.00013183 -0.00000000  0.00000000  0.00328197 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.11431942  0.00000000  0.00000000  0.80116460 -0.00000000 -0.00000000  0.00000000

  6  1     3    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000001 -0.00000000  0.70086546 -0.00000001 -0.00000000 -0.00000000 -0.70710476  0.00000000

  7  1     1    1  |1 1>-      -0.00000000  0.00073420 -0.00000000 -0.00000000 -0.00204656 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.63667465 -0.00000000 -0.00000000 -0.49958719 -0.00000000 -0.00000000  0.00000000

  8  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000000  0.00000000  0.00000001  0.70086195 -0.00000000  0.00000000  0.00000000  0.70710826

  9  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.70086399 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.70710623  0.00000000  0.00000000

 10  1     1    1  |0 0>        0.00000000  0.12359183  0.00000000 -0.00000000 -0.04801787 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00014252 -0.00000000  0.00000000  0.00019670  0.00000000 -0.00000000  0.00000000

 11  1     2    1  |0 0>        0.00000000 -0.00000000  0.13259342 -0.00000000 -0.00000000  0.00000000  0.00000078 -0.00000000
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000000  0.04801778  0.00000000  0.00000000  0.12359028 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00005537  0.00000000 -0.00000000 -0.00050629 -0.00000000 -0.00000000  0.00000000

 13  1     4    1  |0 0>       -0.13259301  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000023  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     5    1  |0 0>       -0.00000000  0.00000000  0.00000000  0.13259263 -0.00000000 -0.00000000 -0.00000000  0.00000053
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     6    1  |0 0>       -0.00000000 -0.00000015 -0.00000000 -0.00000000  0.00000024  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15

  1  1     1    1  |1 1>+       0.00000000  0.00000000  0.00000000  0.09375750  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |1 1>+       0.00000000 -0.09375798  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |1 1>+       0.57248904 -0.00000000 -0.10824892  0.00000000  0.00000000  0.00162227  0.07475428
                               -0.00009483 -0.00000000  0.00002139 -0.00000000  0.00000000  0.00000011 -0.00000001

  4  1     1    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.09375697 -0.00000000  0.00000000

  5  1     2    1  |1 0>        0.00009483 -0.00000000  0.00001042 -0.00000000  0.00000000  0.00000669  0.00000001
                                0.57249188  0.00000000  0.05271980 -0.00000000  0.00000000 -0.09455698  0.07475425

  6  1     3    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.09375743  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     1    1  |1 1>-       0.00009483  0.00000000  0.00001097 -0.00000000 -0.00000000 -0.00000657  0.00000001
                                0.57248994  0.00000000  0.05552934  0.00000000 -0.00000000  0.09293475  0.07475423

  8  1     2    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.09375732 -0.00000000  0.00000000

  9  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00000000  0.00000000  0.09375733  0.00000000 -0.00000000  0.00000000

 10  1     1    1  |0 0>       -0.00000033  0.00000000  0.99116389 -0.00000000 -0.00000000 -0.00365972  0.00000000
                                0.00000000  0.00000000 -0.00019587  0.00000000 -0.00000000 -0.00000026 -0.00000000

 11  1     2    1  |0 0>       -0.00000000  0.99117051 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     3    1  |0 0>        0.00000016 -0.00000000  0.00365975  0.00000000 -0.00000000  0.99116400  0.00000001
                               -0.00000000 -0.00000000 -0.00000072  0.00000000  0.00000000  0.00007011 -0.00000000

 13  1     4    1  |0 0>        0.00000000  0.00000000  0.00000000  0.99117057  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     5    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.99117062  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     6    1  |0 0>       -0.12947816 -0.00000000 -0.00000001  0.00000000 -0.00000000 -0.00000001  0.99158227
                                0.00002145  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000014



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |1 1>+        49.12%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.00%   49.12%    0.00%    0.00%    0.00%   50.00%    0.00%
  3  1     3    1  |1 1>+         0.00%   56.40%    0.00%    0.00%    9.10%    0.00%    0.00%    0.00%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%   49.12%    0.00%    0.00%    0.00%   50.00%
  5  1     2    1  |1 0>          0.00%    1.31%    0.00%    0.00%   64.19%    0.00%    0.00%    0.00%
  6  1     3    1  |1 0>          0.00%    0.00%   49.12%    0.00%    0.00%    0.00%   50.00%    0.00%
  7  1     1    1  |1 1>-         0.00%   40.54%    0.00%    0.00%   24.96%    0.00%    0.00%    0.00%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%   49.12%    0.00%    0.00%    0.00%   50.00%
  9  1     3    1  |1 1>-        49.12%    0.00%    0.00%    0.00%    0.00%   50.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    1.53%    0.00%    0.00%    0.23%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%    0.00%    1.76%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.23%    0.00%    0.00%    1.53%    0.00%    0.00%    0.00%
 13  1     4    1  |0 0>          1.76%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    1.76%    0.00%    0.00%    0.00%    0.00%
 15  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15

  1  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.88%    0.00%    0.00%    0.00%
  2  1     2    1  |1 1>+         0.00%    0.88%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |1 1>+        32.77%    0.00%    1.17%    0.00%    0.00%    0.00%    0.56%
  4  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.88%    0.00%    0.00%
  5  1     2    1  |1 0>         32.77%    0.00%    0.28%    0.00%    0.00%    0.89%    0.56%
  6  1     3    1  |1 0>          0.00%    0.88%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     1    1  |1 1>-        32.77%    0.00%    0.31%    0.00%    0.00%    0.86%    0.56%
  8  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.88%    0.00%    0.00%
  9  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.88%    0.00%    0.00%    0.00%
 10  1     1    1  |0 0>          0.00%    0.00%   98.24%    0.00%    0.00%    0.00%    0.00%
 11  1     2    1  |0 0>          0.00%   98.24%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   98.24%    0.00%
 13  1     4    1  |0 0>          0.00%    0.00%    0.00%   98.24%    0.00%    0.00%    0.00%
 14  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   98.24%    0.00%    0.00%
 15  1     6    1  |0 0>          1.68%    0.00%    0.00%    0.00%    0.00%    0.00%   98.32%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       33.90       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7       88.24       700     1000      520     2100     2140     5302     5102   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *        67.47     20.13     35.64      9.91      0.76      0.09      0.60
 REAL TIME  *        80.82 SEC
 DISK USED  *       122.23 MB (local),        1.49 GB (total)
 SF USED    *       696.49 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/AWCVTZ-PP energy=   -372.613615986988

              CI              CI           MULTI         RHF-SCF
   -372.56371568   -372.66002499   -371.76135165   -371.54756930
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
