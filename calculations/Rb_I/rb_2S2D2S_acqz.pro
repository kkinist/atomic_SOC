
 Working directory              : /wrk/irikura/molpro.xJHlFkTSxH/
 Global scratch directory       : /wrk/irikura/molpro.xJHlFkTSxH/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.xJHlFkTSxH/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.02 sec
 ***,Rb SO-CI
 memory,1000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Rb};
 
 basis=aug-cc-pwCVQZ-DK
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=36,sym=1,spin=0}
 
 {multi
     closed,9,9
     occ,16,9
     wf,nelec=37,sym=1,spin=1;state,7;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=1,spin=1;state,7; save,5201.2}
 hlsdiag = energd4
 
 table,hlsdiag
 
 {ci;hlsmat,ls,5201.2;print,vls=0,hls=0}                                         !compute and diagonalize SO matrix
 Commands initialized (846), CPU time= 0.02 sec, 717 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rb SO-CI                                                                                                                                                      
  (32 PROC) 64 bit mpp version                                                           DATE: 01-Mar-24          TIME: 14:27:21  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-DK
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry RB     S aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry RB     P aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry RB     D aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry RB     F aug-cc-pwCVQZ-DK     selected for orbital group  1
 Library entry RB     G aug-cc-pwCVQZ-DK     selected for orbital group  1


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

   1  RB     37.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   37
 NUMBER OF PRIMITIVE AOS:         346
 NUMBER OF SYMMETRY AOS:          292
 NUMBER OF CONTRACTIONS:          152   (   84Ag  +   68Au  )
 NUMBER OF INNER CORE ORBITALS:    14   (    8Ag  +    6Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        1   (    1Ag  +    0Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     67.895 MB (compressed) written to integral file ( 13.0%)

     Node minimum: 1.573 MB, node maximum: 11.272 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    2848806.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    2848806      RECORD LENGTH: 524288

 Memory used in sort:       3.41 MW

 SORT1 READ    64621816. AND WROTE      538209. INTEGRALS IN      2 RECORDS. CPU TIME:     0.33 SEC, REAL TIME:     0.34 SEC
 SORT2 READ     6569345. AND WROTE    34252926. INTEGRALS IN    300 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC

 Node minimum:     2846346.  Node maximum:     2862480. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910

 Eigenvalues of metric

         1 0.527E-04 0.144E-03 0.144E-03 0.144E-03 0.144E-03 0.144E-03 0.197E-03 0.179E-02
         2 0.680E-04 0.680E-04 0.680E-04 0.422E-02 0.422E-02 0.422E-02 0.119E-01 0.119E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         6.37      6.11
 REAL TIME  *         7.14 SEC
 DISK USED  *        30.29 MB (local),      499.75 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities. Full valence occupancy:   10   9

 Initial occupancy:   9   9

 NELEC=   36   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2978.94082087   -2978.94082087     0.00D+00     0.11D+00     0     0       0.03      0.05    start
   2    -2978.94118668      -0.00036581     0.43D-03     0.64D-02     1     0       0.02      0.07    diag
   3    -2978.94120301      -0.00001633     0.20D-03     0.10D-02     2     0       0.02      0.09    diag
   4    -2978.94120460      -0.00000159     0.42D-04     0.58D-03     3     0       0.03      0.12    diag
   5    -2978.94120463      -0.00000003     0.47D-05     0.95D-04     4     0       0.01      0.13    diag
   6    -2978.94120463      -0.00000000     0.34D-06     0.49D-05     5     0       0.02      0.15    diag
   7    -2978.94120463      -0.00000000     0.16D-07     0.15D-06     6     0       0.01      0.16    diag
   8    -2978.94120463       0.00000000     0.10D-08     0.12D-07     0     0       0.02      0.18    fixocc

 Final occupancy:   9   9

 !RHF STATE 1.1 Energy              -2978.941204627954
  RHF One-electron energy           -4124.242111220927
  RHF Two-electron energy            1145.300906592973
  RHF Kinetic energy                 3225.111768843070
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.923670687449

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -561.95778     1  1  s    0.99963
    2.1     2.00000   -77.67007     1  2  s    1.00333
    3.1     2.00000   -12.75823     1  3  s    0.98921
    4.1     2.00000    -4.84469     1  1  d0   0.77434    1  1  d2+  0.63288
    5.1     2.00000    -4.84469     1  1  d1-  1.00002
    6.1     2.00000    -4.84469     1  1  d2-  0.99998
    7.1     2.00000    -4.84469     1  1  d0  -0.63291    1  1  d2+  0.77430
    8.1     2.00000    -4.84469     1  1  d1+  1.00007
    9.1     2.00000    -1.76659     1  4  s    1.00810
    1.2     2.00000   -68.68895     1  1  py   0.99998
    2.2     2.00000   -68.68895     1  1  px   0.99998
    3.2     2.00000   -68.68895     1  1  pz   0.99999
    4.2     2.00000    -9.78298     1  2  py   0.98637
    5.2     2.00000    -9.78298     1  2  pz   0.98637
    6.2     2.00000    -9.78298     1  2  px   1.00015
    7.2     2.00000    -1.00941     1  3  pz   0.95717
    8.2     2.00000    -1.00941     1  3  px   0.95717
    9.2     2.00000    -1.00941     1  3  py   0.95717


 HOMO      9.2    -1.009411 =     -27.4675eV
 LUMO     10.1    -0.139258 =      -3.7894eV
 LUMO-HOMO         0.870154 =      23.6781eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       29.91       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.59       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         6.66      0.29      6.11
 REAL TIME  *         8.37 SEC
 DISK USED  *        31.28 MB (local),      511.63 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  18 (    9    9)
 Number of active  orbitals:        7 (    7    0)
 Number of external orbitals:     127 (   68   59)

 State symmetry 1

 Number of active electrons:   1    Spin symmetry=Doublet   Space symmetry=1
 Number of states:             7
 Number of CSFs:               7   (7 determinants, 7 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.453D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.155D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.230D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.454D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.838D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.267D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 13 SYMMETRY CONTAMINATION OF 0.458D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 14 SYMMETRY CONTAMINATION OF 0.595D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL 15 SYMMETRY CONTAMINATION OF 0.216D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 6 3 5 4 1 1   5 3 4 6 2 1 5 3 4 6   2 1 5 3 6 4 2 1 713  10 8121415 911 6 4 2
                                        5 3 5 3 6 4 2 71514   9111310 812 1 5 3 4   6 2 911 7 812141513  10 1 5 3 4 6 2 6 4 5
                                        3 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.489D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.503D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.102D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.144D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.603D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.536D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.312D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.559D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 3 1 2 1   3 2 3 1 2 3 1 2 6 8  10 4 9 7 5 1 2 3 6 7   9 810 4 5 1 2 3 7 9
                                        4 5 6 810 1 2 3 810   4 9 7 5 6 1 2 310 8   5 4 6 9 7 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14286   0.14286   0.14286   0.14286   0.14286   0.14286   0.14286
 
 Number of orbital rotations:  1682  ( 63 closed/active, 1143 closed/virtual, 0 active/active, 476 active/virtual )
 Total number of variables:    1731
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    3    0  -2979.01212544   -2979.01218993   -0.00006449    0.01174571 0.00000044 0.00000000  0.12E-01      0.91
   2    3    3    0  -2979.01218995   -2979.01218995   -0.00000000    0.00001062 0.00000000 0.00000000  0.13E-03      1.77

 CONVERGENCE REACHED!  Final gradient:    0.00000000 ( 0.53E-10)
                       Final energy:  -2979.01218995
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                     -2979.080697068628
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.36316763
 One electron energy                         -4131.91431192
 Two electron energy                          1152.83361485
 Virial ratio                                    1.92364194
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                     -2979.000950229723
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.15511952
 One electron energy                         -4129.15551927
 Two electron energy                          1150.15456904
 Virial ratio                                    1.92367680
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                     -2979.000950229723
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.15511952
 One electron energy                         -4129.15551927
 Two electron energy                          1150.15456904
 Virial ratio                                    1.92367680
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                     -2979.000950229708
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.15511952
 One electron energy                         -4129.15551926
 Two electron energy                          1150.15456903
 Virial ratio                                    1.92367680
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                     -2979.000950229707
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.15511952
 One electron energy                         -4129.15551926
 Two electron energy                          1150.15456903
 Virial ratio                                    1.92367680
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                     -2979.000950229688
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.15511952
 One electron energy                         -4129.15551922
 Two electron energy                          1150.15456899
 Virial ratio                                    1.92367680
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                     -2978.999881405296
 Nuclear energy                                  0.00000000
 Kinetic energy                               3225.14236360
 One electron energy                         -4127.69023213
 Two electron energy                          1148.69035073
 Virial ratio                                    1.92368012
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LXLX|2.1>     0.917466243843
 !MCSCF expec                      <3.1|LXLX|3.1>     0.999998713154
 !MCSCF expec                      <4.1|LXLX|4.1>     1.000027325023
 !MCSCF expec                      <5.1|LXLX|5.1>     3.999972341349
 !MCSCF expec                      <6.1|LXLX|6.1>     3.082535325804
 !MCSCF expec                      <7.1|LXLX|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LYLY|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LYLY|2.1>     1.084870531718
 !MCSCF expec                      <3.1|LYLY|3.1>     1.000001593411
 !MCSCF expec                      <4.1|LYLY|4.1>     3.999972673130
 !MCSCF expec                      <5.1|LYLY|5.1>     1.000027415905
 !MCSCF expec                      <6.1|LYLY|6.1>     2.915127837617
 !MCSCF expec                      <7.1|LYLY|7.1>     0.000000000000
 
 !MCSCF expec                      <1.1|LZLZ|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|LZLZ|2.1>     3.997663224439
 !MCSCF expec                      <3.1|LZLZ|3.1>     3.999999693435
 !MCSCF expec                      <4.1|LZLZ|4.1>     1.000000001848
 !MCSCF expec                      <5.1|LZLZ|5.1>     1.000000242747
 !MCSCF expec                      <6.1|LZLZ|6.1>     0.002336836578
 !MCSCF expec                      <7.1|LZLZ|7.1>    -0.000000000000
 
 !MCSCF expec                      <1.1|L**2|1.1>    -0.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>     6.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>     6.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>     6.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>     6.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>     6.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>     0.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 6 5 3 2 4 1 5   4 2 1 1 6 3 2 6 4 5   3 1 5 3 6 4 2 1 7 8  131012141511 9 6 4 5
                                        3 2 3 5 6 4 2 71514  11 8 9131012 1 3 5 6   4 211 9 7 812141513  10 1 3 5 6 4 2 6 4 3
                                        5 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 3 1 3 1 2 3   1 2 3 2 1 2 1 3 610   7 9 5 4 8 1 2 3 1 2   3 6 7 9 810 5 4 7 9
                                        5 4 810 6 1 2 3 810   5 4 7 9 6 1 2 3 810   5 4 9 7 6 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -561.81822     1  1  s    0.99963
    2.1     2.00000   -77.53033     1  2  s    1.00333
    3.1     2.00000   -12.61852     1  3  s    0.98921
    4.1     2.00000    -4.70494     1  1  d1-  1.00009
    5.1     2.00000    -4.70494     1  1  d2+  1.00009
    6.1     2.00000    -4.70494     1  1  d2-  1.00009
    7.1     2.00000    -4.70494     1  1  d0   1.00009
    8.1     2.00000    -4.70494     1  1  d1+  1.00009
    9.1     2.00000    -1.62701     1  4  s    1.00912
   10.1     0.14286     0.03052     1  2  d2+  1.14922    1  5  d2+ -0.49291    1  9  d2+  0.27142
   11.1     0.14286     0.03052     1  2  d1+  1.14922    1  5  d1+ -0.49291    1  9  d1+  0.27142
   12.1     0.14286     0.03052     1  2  d0   1.14922    1  5  d0  -0.49291    1  9  d0   0.27142
   13.1     0.14286     0.01343     1  5  s    0.78145    1  7  s   -0.26765    1  8  s    0.26722    1 12  s    1.28477
   14.1     0.14286    -0.03296     1  5  s    1.02324
   15.1     0.14286     0.03052     1  2  d1-  1.14922    1  5  d1- -0.49291    1  9  d1-  0.27142
   16.1     0.14286     0.03052     1  2  d2-  1.14922    1  5  d2- -0.49291    1  9  d2-  0.27142
    1.2     2.00000   -68.54919     1  1  py   0.99999
    2.2     2.00000   -68.54919     1  1  px   0.99999
    3.2     2.00000   -68.54919     1  1  pz   0.99999
    4.2     2.00000    -9.64317     1  2  py   1.00014
    5.2     2.00000    -9.64317     1  2  pz   1.00014
    6.2     2.00000    -9.64317     1  2  px   1.00014
    7.2     2.00000    -0.87023     1  3  pz   0.97482
    8.2     2.00000    -0.87023     1  3  px   0.97482
    9.2     2.00000    -0.87023     1  3  py   0.97482
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================
 
 0000a00        0.99999852     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00171901
 000a000        0.00171901      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000013      0.99999852
 0a00000       -0.00000000     -0.00004334      0.00002226      0.99999545      0.00301667     -0.00007852      0.00000000
 00000a0        0.00000000      0.00003279     -0.00029897     -0.00301667      0.99999539     -0.00016333     -0.00000000
 000000a       -0.00000000      0.00471765      0.99998883     -0.00002295      0.00029874      0.00001814     -0.00000000
 00a0000       -0.00000000     -0.02417006      0.00009585      0.00007695      0.00016433      0.99970784      0.00000013
 a000000       -0.00000000      0.99969673     -0.00471670      0.00004542     -0.00003011      0.02417024      0.00000000
 
 Energy:    -2979.08069707  -2979.00095023  -2979.00095023  -2979.00095023  -2979.00095023  -2979.00095023  -2978.99988141
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       73.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.14       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.69      2.02      0.29      6.11
 REAL TIME  *        10.92 SEC
 DISK USED  *        74.74 MB (local),        1.01 GB (total)
 SF USED    *       110.35 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2979.080697  -0.0
    -2979.000950   6.0
    -2979.000950   6.0
    -2979.000950   6.0
    -2979.000950   6.0
    -2979.000950   6.0
    -2978.999881   0.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 37
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:        7 conf        7 CSFs
 N elec internal:     7378 conf    22302 CSFs
 N-1 el internal:     2640 conf    10102 CSFs
 N-2 el internal:      650 conf     2938 CSFs

 Number of electrons in valence space:                     27
 Maximum number of open shell orbitals in reference space:  1
 Maximum number of open shell orbitals in internal spaces:  7


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:  13 (   7   6 )
 Number of active  orbitals:        7 (   7   0 )
 Number of external orbitals:     127 (  68  59 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.30 sec, npass=  1  Memory used:   2.65 MW


 Number of p-space configurations:   7

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2979.08069707
     2     -2979.00095023
     3     -2979.00095023
     4     -2979.00095023
     5     -2979.00095023
     6     -2979.00095023
     7     -2978.99988141

 Number of blocks in overlap matrix:  1209   Smallest eigenvalue:  0.10D+01
 Number of N-2 electron functions:    1209
 Number of N-1 electron functions:   10102

 Number of internal configurations:                11130
 Number of singly external configurations:        641198
 Number of doubly external configurations:       4880951
 Total number of contracted configurations:      5533279
 Total number of uncontracted configurations:   12482550

 Diagonal Coupling coefficients finished.               Storage:   7114546 words, CPU-Time:      3.30 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   1826230 words, CPU-time:      1.20 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2979.08069707    -0.00000000    -0.46341745  0.49D-02  0.75D-01     6.78
    1     2     2     1.00000000     0.00000000 -2979.00095023    -0.00000000    -0.45152617  0.39D-02  0.68D-01     6.78
    1     3     3     1.00000000     0.00000000 -2979.00095023    -0.00000000    -0.45153215  0.39D-02  0.68D-01     6.78
    1     4     4     1.00000000     0.00000000 -2979.00095023    -0.00000000    -0.45152803  0.39D-02  0.68D-01     6.78
    1     5     5     1.00000000     0.00000000 -2979.00095023     0.00000000    -0.45153483  0.39D-02  0.68D-01     6.78
    1     6     6     1.00000000     0.00000000 -2979.00095023    -0.00000000    -0.45152777  0.39D-02  0.68D-01     6.78
    1     7     7     1.00000000     0.00000000 -2978.99988141    -0.00000000    -0.44940097  0.39D-02  0.67D-01     6.78
    2     1     1     1.06308066    -0.41231045 -2979.49300752    -0.41231045    -0.00649216  0.57D-03  0.73D-03   134.39
    2     2     2     1.05844466    -0.40628128 -2979.40723151    -0.40628128    -0.00613255  0.45D-03  0.61D-03   134.39
    2     3     3     1.05844662    -0.40628033 -2979.40723056    -0.40628033    -0.00613349  0.45D-03  0.61D-03   134.39
    2     4     4     1.05844387    -0.40628028 -2979.40723051    -0.40628028    -0.00613370  0.45D-03  0.61D-03   134.39
    2     5     5     1.05844514    -0.40628019 -2979.40723042    -0.40628019    -0.00613393  0.45D-03  0.61D-03   134.39
    2     6     6     1.05844497    -0.40627960 -2979.40722983    -0.40627960    -0.00613414  0.45D-03  0.61D-03   134.39
    2     7     7     1.05728830    -0.40533466 -2979.40521606    -0.40533466    -0.00610030  0.40D-03  0.59D-03   134.39
    3     1     1     1.06496389    -0.41878826 -2979.49948533    -0.00647781    -0.00013257  0.67D-05  0.19D-04   262.60
    3     2     2     1.06178957    -0.41236855 -2979.41331878    -0.00608727    -0.00013803  0.71D-05  0.19D-04   262.60
    3     3     3     1.06178969    -0.41236855 -2979.41331878    -0.00608822    -0.00013803  0.71D-05  0.19D-04   262.60
    3     4     4     1.06178963    -0.41236852 -2979.41331875    -0.00608824    -0.00013803  0.71D-05  0.19D-04   262.60
    3     5     5     1.06178959    -0.41236850 -2979.41331873    -0.00608831    -0.00013805  0.71D-05  0.19D-04   262.60
    3     6     6     1.06178924    -0.41236848 -2979.41331871    -0.00608888    -0.00013807  0.71D-05  0.19D-04   262.60
    3     7     7     1.06100058    -0.41138181 -2979.41126321    -0.00604715    -0.00014037  0.67D-05  0.19D-04   262.60
    4     1     1     1.06507163    -0.41892462 -2979.49962169    -0.00013637    -0.00000411  0.52D-06  0.63D-06   390.26
    4     2     2     1.06192170    -0.41251154 -2979.41346177    -0.00014298    -0.00000456  0.65D-06  0.70D-06   390.26
    4     3     3     1.06192157    -0.41251153 -2979.41346176    -0.00014298    -0.00000456  0.65D-06  0.70D-06   390.26
    4     4     4     1.06192140    -0.41251153 -2979.41346176    -0.00014301    -0.00000457  0.66D-06  0.70D-06   390.26
    4     5     5     1.06192139    -0.41251153 -2979.41346176    -0.00014302    -0.00000457  0.66D-06  0.70D-06   390.26
    4     6     6     1.06192138    -0.41251152 -2979.41346175    -0.00014304    -0.00000457  0.66D-06  0.70D-06   390.26
    4     7     7     1.06115093    -0.41152748 -2979.41140889    -0.00014568    -0.00000456  0.46D-06  0.72D-06   390.26
    5     1     1     1.06523149    -0.41892918 -2979.49962625    -0.00000456    -0.00000016  0.16D-07  0.24D-07   517.79
    5     2     2     1.06206404    -0.41251672 -2979.41346695    -0.00000518    -0.00000020  0.34D-07  0.29D-07   517.79
    5     3     3     1.06206403    -0.41251672 -2979.41346695    -0.00000518    -0.00000021  0.34D-07  0.29D-07   517.79
    5     4     4     1.06206403    -0.41251672 -2979.41346695    -0.00000519    -0.00000021  0.34D-07  0.29D-07   517.79
    5     5     5     1.06206402    -0.41251672 -2979.41346695    -0.00000519    -0.00000021  0.34D-07  0.29D-07   517.79
    5     6     6     1.06206401    -0.41251672 -2979.41346695    -0.00000519    -0.00000021  0.34D-07  0.29D-07   517.79
    5     7     7     1.06127374    -0.41153264 -2979.41141405    -0.00000516    -0.00000019  0.13D-07  0.29D-07   517.79
    6     1     1     1.06524639    -0.41892936 -2979.49962643    -0.00000018    -0.00000001  0.52D-09  0.74D-09   645.15
    6     2     2     1.06208376    -0.41251695 -2979.41346718    -0.00000023    -0.00000001  0.11D-08  0.11D-08   645.15
    6     3     3     1.06208376    -0.41251695 -2979.41346718    -0.00000023    -0.00000001  0.11D-08  0.11D-08   645.15
    6     4     4     1.06208376    -0.41251695 -2979.41346718    -0.00000023    -0.00000001  0.11D-08  0.11D-08   645.15
    6     5     5     1.06208376    -0.41251695 -2979.41346718    -0.00000023    -0.00000001  0.11D-08  0.11D-08   645.15
    6     6     6     1.06208376    -0.41251695 -2979.41346718    -0.00000023    -0.00000001  0.11D-08  0.11D-08   645.15
    6     7     7     1.06128994    -0.41153285 -2979.41141426    -0.00000021    -0.00000001  0.35D-09  0.85D-09   645.15


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   2.0%
 S   0.8%  60.2%
 P   0.5%  12.8%   7.1%

 Initialization:   0.8%
 Other:           15.7%

 Total CPU:      645.1 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222/000000222222           0.0000000   0.0000171   0.9702956   0.0000000   0.0000000   0.0000000   0.0000000
 222222200/0000222222           0.0000000   0.9702956  -0.0000171   0.0000000   0.0000000   0.0000000  -0.0000003
 2222222000000/222222          -0.0000000  -0.0000000  -0.0000000   0.9702956   0.0000000   0.0000000  -0.0000000
 222222200000/0222222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.9702956   0.0000000
 22222220/00000222222          -0.0000000   0.0000000   0.0000000   0.0000000   0.9702956   0.0000000  -0.0000000
 2222222000/000222222           0.0450442   0.0000003  -0.0000000   0.0000000   0.0000000   0.0000000   0.9695219
 22222220000/00222222           0.9678088  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0468465

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.967885    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.043381
 2          -0.000000    0.000017   -0.000000    0.000000    0.000000    0.970296    0.000000
 3           0.000000    0.970296   -0.000000    0.000000    0.000000   -0.000017   -0.000000
 4           0.000000    0.000000    0.970296    0.000000    0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.970296    0.000000    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.970296    0.000000    0.000000
 7          -0.045180    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.969601

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968856   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000860
 2          -0.000000    0.970296   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.970296   -0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.970296   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.970296    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.970296    0.000000
 7          -0.000860   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970653


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96788480 (fixed)   0.96885647 (relaxed)   0.96885609 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007226   -0.00015041   -0.36278217
 Singles      0.00423856   -0.01044299   -0.01146913
 Pairs        0.06101255   -0.02203631   -0.04467806
 Total        1.06532337   -0.03262971   -0.41892936
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.08052857
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.38152750
 One electron energy                -4130.49833347
 Two electron energy                 1150.99870704
 Virial quotient                       -0.92405306
 Correlation energy                    -0.41909785
 !MRCI STATE 1.1 Energy             -2979.499626427301

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.52700331 (Davidson, fixed reference)
 Cluster corrected energies         -2979.52700296 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.52700331 (Davidson, rotated reference)

 Cluster corrected energies         -2979.52636687 (Pople, fixed reference)
 Cluster corrected energies         -2979.52636650 (Pople, relaxed reference)
 Cluster corrected energies         -2979.52636687 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97029560 (fixed)   0.97029560 (relaxed)   0.97029560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007625   -0.00015639   -0.37900899
 Singles      0.00362489   -0.00997825   -0.01080148
 Pairs        0.05846360   -0.00000017   -0.02270647
 Total        1.06216474   -0.01013480   -0.41251695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00095023
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.25515588
 One electron energy                -4127.82986853
 Two electron energy                 1148.41640135
 Virial quotient                       -0.92406256
 Correlation energy                    -0.41251695
 !MRCI STATE 2.1 Energy             -2979.413467176721

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43911119 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43844520 (Pople, fixed reference)
 Cluster corrected energies         -2979.43844520 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43844520 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97029560 (fixed)   0.97029560 (relaxed)   0.97029560 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007625   -0.00015639   -0.37900915
 Singles      0.00362489   -0.00997825   -0.01080148
 Pairs        0.05846360    0.00000000   -0.02270632
 Total        1.06216474   -0.01013464   -0.41251695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00095023
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.25515562
 One electron energy                -4127.82986800
 Two electron energy                 1148.41640083
 Virial quotient                       -0.92406256
 Correlation energy                    -0.41251695
 !MRCI STATE 3.1 Energy             -2979.413467176684

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43911118 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43911118 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43911118 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43844520 (Pople, fixed reference)
 Cluster corrected energies         -2979.43844520 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43844520 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97029559 (fixed)   0.97029559 (relaxed)   0.97029559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007625   -0.00015639   -0.37900915
 Singles      0.00362488   -0.00997824   -0.01080148
 Pairs        0.05846362   -0.00000000   -0.02270632
 Total        1.06216474   -0.01013463   -0.41251695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00095023
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.25515448
 One electron energy                -4127.82986660
 Two electron energy                 1148.41639942
 Virial quotient                       -0.92406256
 Correlation energy                    -0.41251695
 !MRCI STATE 4.1 Energy             -2979.413467176567

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43911119 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43844521 (Pople, fixed reference)
 Cluster corrected energies         -2979.43844521 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43844521 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97029559 (fixed)   0.97029559 (relaxed)   0.97029559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007625   -0.00015639   -0.37900914
 Singles      0.00362489   -0.00997825   -0.01080148
 Pairs        0.05846361   -0.00000000   -0.02270632
 Total        1.06216474   -0.01013464   -0.41251695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00095023
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.25515458
 One electron energy                -4127.82986702
 Two electron energy                 1148.41639985
 Virial quotient                       -0.92406256
 Correlation energy                    -0.41251695
 !MRCI STATE 5.1 Energy             -2979.413467176495

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43911119 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43844521 (Pople, fixed reference)
 Cluster corrected energies         -2979.43844521 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43844521 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97029559 (fixed)   0.97029559 (relaxed)   0.97029559 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00007625   -0.00015639   -0.37900915
 Singles      0.00362488   -0.00997824   -0.01080148
 Pairs        0.05846361    0.00000000   -0.02270632
 Total        1.06216474   -0.01013463   -0.41251695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00095023
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.25515484
 One electron energy                -4127.82986708
 Two electron energy                 1148.41639991
 Virial quotient                       -0.92406256
 Correlation energy                    -0.41251695
 !MRCI STATE 6.1 Energy             -2979.413467176493

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43911119 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43911119 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43844521 (Pople, fixed reference)
 Cluster corrected energies         -2979.43844521 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43844521 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96960102 (fixed)   0.97065305 (relaxed)   0.97065267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008806   -0.00018091   -0.00060501
 Singles      0.00364764   -0.01034964   -0.01116457
 Pairs        0.05764770   -0.40057731   -0.39976328
 Total        1.06138340   -0.41110786   -0.41153285
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2979.00004990
 Nuclear energy                         0.00000000
 Kinetic energy                      3224.24770730
 One electron energy                -4126.24908766
 Two electron energy                 1146.83767340
 Virial quotient                       -0.92406406
 Correlation energy                    -0.41136436
 !MRCI STATE 7.1 Energy             -2979.411414257524

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2979.43666520 (Davidson, fixed reference)
 Cluster corrected energies         -2979.43666486 (Davidson, relaxed reference)
 Cluster corrected energies         -2979.43666520 (Davidson, rotated reference)

 Cluster corrected energies         -2979.43599247 (Pople, fixed reference)
 Cluster corrected energies         -2979.43599212 (Pople, relaxed reference)
 Cluster corrected energies         -2979.43599247 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       73.49       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      300.28       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *       691.96    683.25      2.02      0.29      6.11
 REAL TIME  *       710.12 SEC
 DISK USED  *       373.88 MB (local),        4.51 GB (total)
 SF USED    *         2.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2979.52700331  AU                              
 SETTING HLSDIAG(2)     =     -2979.43911119  AU                              
 SETTING HLSDIAG(3)     =     -2979.43911118  AU                              
 SETTING HLSDIAG(4)     =     -2979.43911119  AU                              
 SETTING HLSDIAG(5)     =     -2979.43911119  AU                              
 SETTING HLSDIAG(6)     =     -2979.43911119  AU                              
 SETTING HLSDIAG(7)     =     -2979.43666520  AU                              


         HLSDIAG
    -2979.527003
    -2979.439111
    -2979.439111
    -2979.439111
    -2979.439111
    -2979.439111
    -2979.436665
                                                  


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

 Time for Seward_LS:      70.37 sec

       40950428. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    10012 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     70.38 sec, REAL time:     70.87 sec


 SORTLS1 read    40964015. and wrote    40964015. SO integrals in   168 records. CPU time:      0.34 sec, REAL time:      0.60 sec
 SORTLS2 read    40964015. and wrote   202878000. SO integrals in    36 records. CPU time:      0.22 sec, REAL time:      0.32 sec

 FILE SIZES: FILE 1:   733.3 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:   733.3 MBYTE

 Preparing effective Fock matrices
 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 Total X Y Z Fock matrices evaluated:     2    2    2
  
 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:  -2979.499626  -2979.413467  -2979.413467  -2979.413467  -2979.413467  -2979.413467  -2979.411414
 Replaced energies:  -2979.527003  -2979.439111  -2979.439111  -2979.439111  -2979.439111  -2979.439111  -2979.436665



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2979.52700331

 Wigner-Eckart theorem used for  3 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

    2   2.1  0.5  0.5       0.00   19290.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    3   3.1  0.5  0.5       0.00       0.00   19290.09       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -1.05      -0.00       0.00      -0.00      -0.00       0.00      -0.00

    4   4.1  0.5  0.5       0.00       0.00       0.00   19290.09       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       1.05      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    5   5.1  0.5  0.5       0.00       0.00       0.00       0.00   19290.09       0.00       0.00       0.00       0.91      -0.53
                            0.00       0.00       0.00       0.00      -0.00      -0.52      -0.00      -0.00       0.00       0.00

    6   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00   19290.09       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.52       0.00       0.00       0.00      -0.91      -0.52

    7   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00   19826.92       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

    9   2.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.91       0.00       0.00       0.00   19290.09       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.91       0.00       0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.53      -0.00      -0.00       0.00       0.00   19290.09
                           -0.00       0.00       0.00      -0.00      -0.00       0.52       0.00      -0.00       0.00      -0.00

   11   4.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00      -0.52      -0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.52      -0.00      -0.00       0.00      -0.00      -1.05

   12   5.1  0.5 -0.5      -0.00      -0.91       0.53       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.52      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   13   6.1  0.5 -0.5      -0.00      -0.00       0.00       0.52       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.91      -0.52       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   14   7.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00


   Nr   State  S   Sz       11         12         13         14

    1   1.1  0.5  0.5       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00

    2   2.1  0.5  0.5      -0.00      -0.91      -0.00      -0.00
                           -0.00      -0.00       0.91       0.00

    3   3.1  0.5  0.5       0.00       0.53       0.00       0.00
                           -0.00      -0.00       0.52       0.00

    4   4.1  0.5  0.5       0.00       0.00       0.52       0.00
                           -0.00      -0.52      -0.00      -0.00

    5   5.1  0.5  0.5      -0.00       0.00       0.00       0.00
                            0.52       0.00      -0.00       0.00

    6   6.1  0.5  0.5      -0.52      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00

    7   7.1  0.5  0.5      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00

    8   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

    9   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   10   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            1.05       0.00      -0.00       0.00

   11   4.1  0.5 -0.5   19290.09       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   12   5.1  0.5 -0.5       0.00   19290.09       0.00       0.00
                           -0.00       0.00       0.52       0.00

   13   6.1  0.5 -0.5       0.00       0.00   19290.09       0.00
                           -0.00      -0.52      -0.00      -0.00

   14   7.1  0.5 -0.5       0.00       0.00       0.00   19826.92
                           -0.00      -0.00       0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1 -2979.52700331     0.00000000        0.00      0.00000000        0.00      0.0000
     2 -2979.52700331     0.00000000        0.00      0.00000000        0.00      0.0000
     3 -2979.43911836     0.08788495    19288.52      0.08788495    19288.52      2.3915
     4 -2979.43911836     0.08788495    19288.52      0.08788495    19288.52      2.3915
     5 -2979.43911836     0.08788495    19288.52      0.08788495    19288.52      2.3915
     6 -2979.43911836     0.08788495    19288.52      0.08788495    19288.52      2.3915
     7 -2979.43910642     0.08789689    19291.14      0.08789689    19291.14      2.3918
     8 -2979.43910642     0.08789689    19291.14      0.08789689    19291.14      2.3918
     9 -2979.43910640     0.08789692    19291.14      0.08789692    19291.14      2.3918
    10 -2979.43910640     0.08789692    19291.14      0.08789692    19291.14      2.3918
    11 -2979.43910639     0.08789692    19291.14      0.08789692    19291.14      2.3918
    12 -2979.43910639     0.08789692    19291.14      0.08789692    19291.14      2.3918
    13 -2979.43666520     0.09033811    19826.92      0.09033811    19826.92      2.4582
    14 -2979.43666520     0.09033811    19826.92      0.09033811    19826.92      2.4582


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  0.5  0.5   1.000000000   0.000000000   0.000000003  -0.000000057   0.000000024   0.000000005   0.000000000  -0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  0.5  0.5   0.000000000  -0.000000000  -0.018595411   0.364978979   0.505164651   0.106983291   0.209844447  -0.270555893
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000015   0.000000005

    3    3.1  0.5  0.5  -0.000000000  -0.000000000   0.026269064  -0.515592634   0.357666436   0.075746259   0.041294434  -0.053241592
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000003   0.000000001

    4    4.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000020   0.000000007
                         0.000000064  -0.000000000  -0.026257816   0.515371849  -0.357674631  -0.075747994  -0.288169819   0.371542084

    5    5.1  0.5  0.5  -0.000000000   0.000000025   0.568515326   0.028965437  -0.016357811   0.077239988  -0.161634277  -0.125364311
                        -0.000000000  -0.000000037   0.078462694   0.003997616  -0.052307019   0.246988635  -0.214314932  -0.166223694

    6    6.1  0.5  0.5  -0.000000000   0.000000016   0.007961675   0.000405641  -0.124444131   0.587613032   0.464341845   0.360145773
                         0.000000000   0.000000011  -0.057687706  -0.002939146   0.038917027  -0.183762403  -0.350202190  -0.271618477

    7    7.1  0.5  0.5   0.000000000  -0.000000000  -0.000000050   0.000000977  -0.000000311  -0.000000066  -0.000000025   0.000000033
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    8    1.1  0.5 -0.5   0.000000000  -0.563834168   0.000000057   0.000000003   0.000000001  -0.000000007   0.000000000   0.000000000
                        -0.000000000   0.825888026   0.000000008   0.000000000   0.000000005  -0.000000023   0.000000000   0.000000000

    9    2.1  0.5 -0.5   0.000000000  -0.000000000  -0.361551858  -0.018420801   0.031931546  -0.150777644   0.162912270   0.126355528
                         0.000000000   0.000000000  -0.049898978  -0.002542316   0.102106811  -0.482138391   0.216009454   0.167537974

   10    3.1  0.5 -0.5  -0.000000000   0.000000000   0.510751268   0.026022401   0.022608159  -0.106753518   0.032058841   0.024864989
                         0.000000000  -0.000000000   0.070490482   0.003591438   0.072293615  -0.341363391   0.042507621   0.032969116

   11    4.1  0.5 -0.5  -0.000000000   0.000000053  -0.070460296  -0.003589900  -0.072295272   0.341371212  -0.296635941  -0.230072266
                        -0.000000000   0.000000036   0.510532556   0.026011258   0.022608677  -0.106755964   0.223719998   0.173518291

   12    5.1  0.5 -0.5   0.000000044  -0.000000000  -0.029239998   0.573904235   0.258784467   0.054805129   0.208198288  -0.268433474
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000014   0.000000005

   13    6.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000031   0.000000011
                        -0.000000020  -0.000000000  -0.002967007   0.058234525   0.615676617   0.130387410  -0.451089320   0.581596873

   14    7.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000968  -0.000000049  -0.000000020   0.000000093  -0.000000020  -0.000000015
                         0.000000000   0.000000000  -0.000000134  -0.000000007  -0.000000063   0.000000297  -0.000000026  -0.000000020


   Nr   State  S   Sz        9            10            11            12            13            14

    1    1.1  0.5  0.5  -0.000000050  -0.000000001  -0.000000009   0.000000003   0.000000000   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  0.5  0.5  -0.280622020  -0.004504051   0.601131960  -0.206019382   0.000000001   0.000000000
                         0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000

    3    3.1  0.5  0.5   0.718498008   0.011532069   0.265717896  -0.091066588  -0.000000003  -0.000000000
                        -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000

    4    4.1  0.5  0.5   0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000
                         0.427769694   0.006865809   0.418714044  -0.143501284  -0.000001039  -0.000000000

    5    5.1  0.5  0.5  -0.002800810   0.174502663   0.005587121   0.016302335  -0.000000000  -0.000000023
                         0.006708041  -0.417940163   0.171225706   0.499609514  -0.000000000   0.000000797

    6    6.1  0.5  0.5  -0.001910701   0.119044978   0.066532435   0.194131122   0.000000000  -0.000000239
                        -0.000797775   0.049704880  -0.002170964  -0.006334529  -0.000000000  -0.000000007

    7    7.1  0.5  0.5   0.000000839   0.000000013   0.000000083  -0.000000028   1.000000000   0.000010584
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000135   0.000004685

    8    1.1  0.5 -0.5  -0.000000000   0.000000019  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000001  -0.000000046  -0.000000003  -0.000000009  -0.000000000   0.000000000

    9    2.1  0.5 -0.5  -0.001735386   0.108122067   0.006718868   0.019604594  -0.000000000  -0.000000000
                         0.004156310  -0.258956245   0.205909792   0.600812194  -0.000000000   0.000000001

   10    3.1  0.5 -0.5   0.004443240  -0.276833188   0.002969937   0.008665806   0.000000000   0.000000000
                        -0.010641721   0.663025469   0.091018145   0.265576552   0.000000000  -0.000000003

   11    4.1  0.5 -0.5  -0.006335725   0.394743199   0.143424951   0.418491315   0.000000000  -0.000001038
                        -0.002645357   0.164817224  -0.004679979  -0.013655438  -0.000000000  -0.000000030

   12    5.1  0.5 -0.5   0.452907450   0.007269274  -0.499875418   0.171316835  -0.000000798  -0.000000000
                        -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000

   13    6.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.129004969  -0.002070562  -0.194234443   0.066567846   0.000000239   0.000000000

   14    7.1  0.5 -0.5   0.000000005  -0.000000323   0.000000001   0.000000003  -0.000004381  -0.028535611
                        -0.000000012   0.000000774   0.000000028   0.000000083  -0.000010714   0.999592776


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  0.5  0.5 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5   0.000%   0.000%   0.035%  13.321%  25.519%   1.145%   4.403%   7.320%   7.875%   0.002%
    3    3.1  0.5  0.5   0.000%   0.000%   0.069%  26.584%  12.793%   0.574%   0.171%   0.283%  51.624%   0.013%
    4    4.1  0.5  0.5   0.000%   0.000%   0.069%  26.561%  12.793%   0.574%   8.304%  13.804%  18.299%   0.005%
    5    5.1  0.5  0.5   0.000%   0.000%  32.937%   0.085%   0.300%   6.697%   7.206%   4.335%   0.005%  20.513%
    6    6.1  0.5  0.5   0.000%   0.000%   0.339%   0.001%   1.700%  37.906%  33.825%  20.348%   0.000%   1.664%
    7    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    1.1  0.5 -0.5   0.000% 100.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   0.000%   0.000%  13.321%   0.035%   1.145%  25.519%   7.320%   4.403%   0.002%   7.875%
   10    3.1  0.5 -0.5   0.000%   0.000%  26.584%   0.069%   0.574%  12.793%   0.283%   0.171%   0.013%  51.624%
   11    4.1  0.5 -0.5   0.000%   0.000%  26.561%   0.069%   0.574%  12.793%  13.804%   8.304%   0.005%  18.299%
   12    5.1  0.5 -0.5   0.000%   0.000%   0.085%  32.937%   6.697%   0.300%   4.335%   7.206%  20.513%   0.005%
   13    6.1  0.5 -0.5   0.000%   0.000%   0.001%   0.339%  37.906%   1.700%  20.348%  33.825%   1.664%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14

    1    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
    2    2.1  0.5  0.5  36.136%   4.244%   0.000%   0.000%
    3    3.1  0.5  0.5   7.061%   0.829%   0.000%   0.000%
    4    4.1  0.5  0.5  17.532%   2.059%   0.000%   0.000%
    5    5.1  0.5  0.5   2.935%  24.988%   0.000%   0.000%
    6    6.1  0.5  0.5   0.443%   3.773%   0.000%   0.000%
    7    7.1  0.5  0.5   0.000%   0.000% 100.000%   0.000%
    8    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
    9    2.1  0.5 -0.5   4.244%  36.136%   0.000%   0.000%
   10    3.1  0.5 -0.5   0.829%   7.061%   0.000%   0.000%
   11    4.1  0.5 -0.5   2.059%  17.532%   0.000%   0.000%
   12    5.1  0.5 -0.5  24.988%   2.935%   0.000%   0.000%
   13    6.1  0.5 -0.5   3.773%   0.443%   0.000%   0.000%
   14    7.1  0.5 -0.5   0.000%   0.000%   0.000% 100.000%


 Property matrices transformed in SO basis (not sym. adapted)
 ============================================================

 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7

 No matrix element <i|DMY|i> larger than 5E-7
 No matrix element <i|DMY|1> larger than 5E-7

 No matrix element <i|DMZ|i> larger than 5E-7
 No matrix element <i|DMZ|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24      699.38       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6      300.28       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      1739.61   1047.64    683.25      2.02      0.29      6.11
 REAL TIME  *      1785.31 SEC
 DISK USED  *       374.02 MB (local),        6.58 GB (total)
 SF USED    *         2.40 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-DK energy=  -2979.436665200712

              CI           MULTI         RHF-SCF
  -2979.41141426  -2978.99988141  -2978.94120463
 **********************************************************************************************************************************
 Molpro calculation terminated
