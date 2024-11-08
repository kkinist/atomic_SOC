
 Working directory              : /wrk/irikura/molpro.aHju3dQSAB/
 Global scratch directory       : /wrk/irikura/molpro.aHju3dQSAB/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.aHju3dQSAB/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/7)
                                                                                 ! extra diffuse spdf
 memory,4000,M;
 
 gprint,orbitals,civector;
 
 symmetry,xyz
 geometry={Kr};
 
 basis={spdfgh,kr,AWCVQZ-X2C;C; spdf,1,even,nprim=1,ratio=3.0}
 
 set,dkho=101
 
                                                                                 ! cation orbitals
 {rhf;wf,nelec=35,sym=1,spin=1}
 
 {multi,wmk
     occ,9,12
     wf,nelec=36,sym=1,spin=0;state,10; weight,99,1,1,1,1,1,1,1,1,1
     wf,nelec=36,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,2,3
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 lsint                                                                           ! fails without this line
 {ci;hlsmat,ls,5201.2,5202.2;print,vls=0,hls=0}                                  !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 07-Oct-24          TIME: 14:31:18  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    USERDEF
 SETTING DKHO           =       101.00000000                                  


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry KR     S AWCVQZ-X2C           selected for orbital group  1
 Even tempered Kr S diffuse               selected for group 1    nprim= 1    centre=  0.017    ratio= 3.000    dratio= 1.000
 Library entry KR     P AWCVQZ-X2C           selected for orbital group  1
 Even tempered Kr P diffuse               selected for group 1    nprim= 1    centre=  0.011    ratio= 3.000    dratio= 1.000
 Library entry KR     D AWCVQZ-X2C           selected for orbital group  1
 Even tempered Kr D diffuse               selected for group 1    nprim= 1    centre=  0.035    ratio= 3.000    dratio= 1.000
 Library entry KR     F AWCVQZ-X2C           selected for orbital group  1
 Even tempered Kr F diffuse               selected for group 1    nprim= 1    centre=  0.075    ratio= 3.000    dratio= 1.000
 Library entry KR     G AWCVQZ-X2C           selected for orbital group  1
 Library entry KR     H AWCVQZ-X2C           selected for orbital group  1


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

   1  KR     36.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   36
 NUMBER OF PRIMITIVE AOS:         342
 NUMBER OF SYMMETRY AOS:          270
 NUMBER OF CONTRACTIONS:          186   (   93Ag  +   93Au  )
 NUMBER OF INNER CORE ORBITALS:     5   (    2Ag  +    3Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 NUCLEAR REPULSION ENERGY    0.00000000

 One-electron integrals computed with SEWARD

 eXact-2-Component (X2C) method activated

 Computing Douglas-Kroll / X2C integrals

 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     142.344 MB (compressed) written to integral file ( 13.1%)

     Node minimum: 2.884 MB, node maximum: 17.564 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    5458440.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    5458440      RECORD LENGTH: 524288

 Memory used in sort:       6.02 MW

 SORT1 READ   136462603. AND WROTE     1063065. INTEGRALS IN      4 RECORDS. CPU TIME:     0.55 SEC, REAL TIME:     0.59 SEC
 SORT2 READ    14108795. AND WROTE    76426935. INTEGRALS IN    434 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.11 SEC

 Node minimum:     5452200.  Node maximum:     5473431. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9  101112131415 7 8 910  1112131415 7 8 91011
                                       12131415 7 8 9101112  131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 4 5 6 7 8 910
                                        4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        9101112131415161718  192021

 Eigenvalues of metric

         1 0.253E-05 0.213E-03 0.250E-02 0.697E-02 0.743E-02 0.743E-02 0.743E-02 0.743E-02
         2 0.136E-04 0.136E-04 0.136E-04 0.453E-03 0.453E-03 0.453E-03 0.215E-01 0.215E-01


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         3.76      3.58
 REAL TIME  *         5.48 SEC
 DISK USED  *        30.42 MB (local),      708.20 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial alpha occupancy:   9   9
 Initial beta  occupancy:   8   9

 NELEC=   35   SYM=1   MS2= 1   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1    -2787.10907933   -2787.10907933     0.00D+00     0.91D-01     0     0       0.03      0.07    start
   2    -2787.15446075      -0.04538142     0.16D-01     0.12D-01     1     0       0.04      0.11    diag2
   3    -2787.15552889      -0.00106813     0.30D-02     0.23D-02     2     0       0.03      0.14    diag2
   4    -2787.15562777      -0.00009889     0.60D-03     0.76D-03     3     0       0.04      0.18    diag2
   5    -2787.15563604      -0.00000826     0.16D-03     0.14D-03     4     0       0.03      0.21    diag2
   6    -2787.15563624      -0.00000020     0.10D-04     0.21D-04     5     0       0.04      0.25    diag2
   7    -2787.15563624      -0.00000000     0.11D-05     0.21D-05     6     0       0.04      0.29    diag2
   8    -2787.15563624      -0.00000000     0.90D-07     0.23D-06     0     0       0.03      0.32    fixocc

 Final alpha occupancy:   9   9
 Final beta  occupancy:   8   9

 !RHF STATE 1.1 Energy              -2787.155636238232
  RHF One-electron energy           -3858.461241015937
  RHF Two-electron energy            1071.305604777705
  RHF Kinetic energy                 2992.873581869418
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -0.931264071133

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.89637     1  1  s    0.99998
    2.1     2.00000   -72.56290     1  2  s    1.00017
    3.1     2.00000   -11.72368     1  3  s    0.99341
    4.1     2.00000    -4.26025     1  1  d0   1.00127
    5.1     2.00000    -4.26025     1  1  d2-  1.00122
    6.1     2.00000    -4.26025     1  1  d1-  1.00050
    7.1     2.00000    -4.26025     1  1  d1+  1.00057
    8.1     2.00000    -4.26025     1  1  d2+  1.00117
    9.1     1.00000    -1.67235     1  4  s    1.10392
    1.2     2.00000   -64.03349     1  1  pz   1.00054
    2.2     2.00000   -64.03349     1  1  px   0.88851    1  1  py   0.46013
    3.2     2.00000   -64.03349     1  1  px  -0.46021    1  1  py   0.88848
    4.2     2.00000    -8.92481     1  2  pz   0.99715
    5.2     2.00000    -8.92481     1  2  py   0.97664
    6.2     2.00000    -8.92481     1  2  px   0.97664
    7.2     2.00000    -0.90993     1  3  pz   1.09945
    8.2     2.00000    -0.90993     1  3  px   0.50806    1  3  py   0.97502
    9.2     2.00000    -0.90993     1  3  px   0.97502    1  3  py  -0.50806


 HOMO      9.2    -0.909926 =     -24.7604eV
 LUMO     10.1    -0.137332 =      -3.7370eV
 LUMO-HOMO         0.772595 =      21.0234eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      22       30.04       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600   
                                         AOSYM     SMH  

              2       4        0.94       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         4.08      0.32      3.58
 REAL TIME  *         5.83 SEC
 DISK USED  *        33.09 MB (local),      745.58 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:  14 (    8    6)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     165 (   84   81)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.168D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.246D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.556D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.498D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.264D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 2 3 6 4 5 1 1   3 5 6 4 2 1 2 3 5 6   4 1 2 3 5 4 6 2 6 4   3 5 7151411 912 813
                                       10 11514 7 91112 813  10 6 4 5 3 2 1 2 6 4   5 3 91112 81310 715  14 1 4 6 3 5 2141510
                                       13 7 91112 8 2 4 6 3   5 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.168D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.346D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.345D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.526D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.171D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.171D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.142D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.343D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.343D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 10 SYMMETRY CONTAMINATION OF 0.126D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 11 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL 12 SYMMETRY CONTAMINATION OF 0.208D+00 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 3 2 1 3   2 1 3 2 1 6 5 4 810   7 9 3 2 1 5 4 7 910   8 6 3 2 1 5 4 7 9 6
                                        810 5 4 7 9 610 8 3   2 1 6 4 5 9 710 8 3   1 22018191321111217  151614 6 9 710 8 4 5
                                        3 2 1 9 7 6 4 510 8   3 2 1

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.84615   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855   0.00855
 Weight factors for state symmetry  2:    0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855   0.00855
                                          0.00855
 
 Number of orbital rotations:  1772  ( 44 closed/active, 1158 closed/virtual, 0 active/active, 570 active/virtual )
 Total number of variables:    11127
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    5   16    0  -2788.20122489   -2788.23031889   -0.02909400    0.34654775 0.00108239 0.00083706  0.38E+00      3.03
   2    6   17    0  -2788.23092606   -2788.23096098   -0.00003492    0.01058091 0.00005286 0.00002448  0.38E-01      6.21
   3    6   19    0  -2788.23096103   -2788.23096103   -0.00000001    0.00001284 0.00000000 0.00000006  0.12E-02      9.35
   4    2    4    0  -2788.23096103   -2788.23096103   -0.00000000    0.00000001 0.00000000 0.00000004  0.12E-06     10.57

 CONVERGENCE REACHED!  Final gradient:    0.00000003 ( 0.30E-07)
                       Final energy:  -2788.23096103
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy             -2788.296219967093
 Nuclear energy                                  0.00000000
 Kinetic energy                               2994.44608630
 One electron energy                         -3877.16321081
 Two electron energy                          1088.86699084
 Virial ratio                                    1.93115593
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy             -2787.873349767972
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.33318581
 One electron energy                         -3864.53444487
 Two electron energy                          1076.66109510
 Virial ratio                                    1.93167210
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy             -2787.873349767875
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.33318581
 One electron energy                         -3864.53444487
 Two electron energy                          1076.66109510
 Virial ratio                                    1.93167210
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy             -2787.873349765734
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.33318583
 One electron energy                         -3864.53444504
 Two electron energy                          1076.66109527
 Virial ratio                                    1.93167210
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy             -2787.873349764820
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.33318584
 One electron energy                         -3864.53444511
 Two electron energy                          1076.66109535
 Virial ratio                                    1.93167210
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy             -2787.873349764350
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.33318585
 One electron energy                         -3864.53444515
 Two electron energy                          1076.66109539
 Virial ratio                                    1.93167210
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy             -2787.869050384035
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31966799
 One electron energy                         -3864.50274695
 Two electron energy                          1076.63369656
 Virial ratio                                    1.93167487
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy             -2787.869050381750
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31966801
 One electron energy                         -3864.50274711
 Two electron energy                          1076.63369673
 Virial ratio                                    1.93167487
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy             -2787.869050380773
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31966802
 One electron energy                         -3864.50274718
 Two electron energy                          1076.63369680
 Virial ratio                                    1.93167487
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy            -2787.839121805873
 Nuclear energy                                  0.00000000
 Kinetic energy                               2993.06962965
 One electron energy                         -3866.57421498
 Two electron energy                          1078.73509317
 Virial ratio                                    1.93143143
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy             -2787.889582516551
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.26479157
 One electron energy                         -3864.36495449
 Two electron energy                          1076.47537198
 Virial ratio                                    1.93169882
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy             -2787.877208692601
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.29879954
 One electron energy                         -3864.45099066
 Two electron energy                          1076.57378197
 Virial ratio                                    1.93168410
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy             -2787.877208692511
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.29879954
 One electron energy                         -3864.45099067
 Two electron energy                          1076.57378197
 Virial ratio                                    1.93168410
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy             -2787.877208690718
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.29879956
 One electron energy                         -3864.45099083
 Two electron energy                          1076.57378214
 Virial ratio                                    1.93168410
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy             -2787.877208689953
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.29879957
 One electron energy                         -3864.45099090
 Two electron energy                          1076.57378221
 Virial ratio                                    1.93168410
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy             -2787.877208689569
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.29879958
 One electron energy                         -3864.45099094
 Two electron energy                          1076.57378225
 Virial ratio                                    1.93168410
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy             -2787.869338779336
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31336841
 One electron energy                         -3864.48586216
 Two electron energy                          1076.61652338
 Virial ratio                                    1.93167693
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy             -2787.869338777075
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31336843
 One electron energy                         -3864.48586232
 Two electron energy                          1076.61652355
 Virial ratio                                    1.93167693
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy             -2787.869338776110
 Nuclear energy                                  0.00000000
 Kinetic energy                               2992.31336844
 One electron energy                         -3864.48586240
 Two electron energy                          1076.61652362
 Virial ratio                                    1.93167693
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.548470575019
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000000102
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999999819
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000088
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.451529424971
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999999605
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000000445
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999999952
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.548217803390
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.000000000090
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.999999999874
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000000000054
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     2.451778043528
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999999973
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000000025
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999991
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.538432236775
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000000073
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000000092
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999999852
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.461567763208
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999999998
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999999952
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000000051
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     0.538609368684
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.000000000042
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.000000000135
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     3.999999999907
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     3.461393541856
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999987
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999988
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000000022
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>     0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.913097188207
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999999826
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000000087
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000000060
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.086902811822
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000000397
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999999605
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999999998
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.913172827926
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.999999999868
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.999999999991
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000000038
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.086828414615
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000000040
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999999988
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999987
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     5.999999999998
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     5.999999999999
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000002
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000001
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>     0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>     0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 1 1 3 2 4 5 6 1 1   2 3 5 6 4 1 2 3 5 6   4 1 2 3 5 6 4 4 3 5   2 6 71514 91310 812
                                       11 1 915141310 812 7  11 4 3 5 6 2 1 2 4 6   5 3 91310 8121514 7  11 1 4 6 3 5 21310 9
                                       1514 812 711 2 4 6 3   5 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 2 3 1 1   3 2 3 1 2 6 5 810 4   7 9 3 1 2 4 5 7 910   8 6 3 1 2 4 5 7 9 6
                                       10 8 4 5 7 9 610 8 3   1 2 6 4 9 7 510 8 3   1 22018111715211316  141912 9 7 6 810 4 5
                                        3 1 2 9 7 4 6 5 810   3 2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000  -529.41946     1  1  s    0.99998
    2.1     2.00000   -72.09376     1  2  s    0.99976
    3.1     2.00000   -11.26206     1  3  s    0.99975
    4.1     2.00000    -3.79066     1  1  d2-  1.00007
    5.1     2.00000    -3.79066     1  1  d0   1.00007
    6.1     2.00000    -3.79066     1  1  d1+  1.00007
    7.1     2.00000    -3.79066     1  1  d2+  1.00007
    8.1     2.00000    -3.79066     1  1  d1-  1.00007
    9.1     1.99997    -1.22274     1  4  s    0.99906
    1.2     2.00000   -63.55925     1  1  px   1.00009
    2.2     2.00000   -63.55925     1  1  pz   1.00009
    3.2     2.00000   -63.55925     1  1  py   1.00009
    4.2     2.00000    -8.45459     1  2  px   0.99981
    5.2     2.00000    -8.45459     1  2  pz   0.99981
    6.2     2.00000    -8.45459     1  2  py   0.99981
    7.2     1.94706    -0.54591     1  3  py   1.00931
    8.2     1.94706    -0.54591     1  3  pz   1.00931
    9.2     1.94706    -0.54591     1  3  px   1.00931
   10.2     0.05296     0.08608     1  3  px  -0.43234    1 10  px   0.70049    1 11  px   0.33163
   11.2     0.05296     0.08608     1  3  pz  -0.43234    1 10  pz   0.70049    1 11  pz   0.33163
   12.2     0.05296     0.08608     1  3  py  -0.43234    1 10  py   0.70049    1 11  py   0.33163
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.99909737     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2 2a20b0       0.00815190     -0.08444242      0.00000005     -0.00000422      0.00000184      0.56663598     -0.00000000
 2 2b20a0      -0.00815190      0.08444242     -0.00000005      0.00000422     -0.00000184     -0.56663598      0.00000000
 2 a2200b       0.00815190      0.53294244      0.00000512      0.00000382     -0.00000070     -0.21018876     -0.00000000
 2 b2200a      -0.00815190     -0.53294244     -0.00000512     -0.00000382      0.00000070      0.21018876      0.00000000
 2 b220a0       0.00000000      0.00000223      0.00000293     -0.49613994     -0.00000243     -0.00000336     -0.00000986
 2 a220b0      -0.00000000     -0.00000223     -0.00000293      0.49613994      0.00000243      0.00000336      0.00000986
 2 22a0b0      -0.00000000      0.00000002     -0.00000238     -0.00000243      0.49614005     -0.00000161     -0.00000066
 2 22b0a0       0.00000000     -0.00000002      0.00000238      0.00000243     -0.49614005      0.00000161      0.00000066
 2 b22a00       0.00000000      0.00000508     -0.49614018     -0.00000293     -0.00000238      0.00000080      0.49642786
 2 a22b00      -0.00000000     -0.00000508      0.49614018      0.00000293      0.00000238     -0.00000080     -0.49642786
 2 22a00b       0.00000000     -0.00000508      0.49614039      0.00000293      0.00000238     -0.00000080      0.49642765
 2 22b00a      -0.00000000      0.00000508     -0.49614039     -0.00000293     -0.00000238      0.00000080     -0.49642765
 2 2b2a00      -0.00000000     -0.00000002      0.00000238      0.00000243     -0.49614053      0.00000161     -0.00000066
 2 2a2b00       0.00000000      0.00000002     -0.00000238     -0.00000243      0.49614053     -0.00000161      0.00000066
 2 2b200a       0.00000000      0.00000223      0.00000293     -0.49614064     -0.00000243     -0.00000336      0.00000986
 2 2a200b      -0.00000000     -0.00000223     -0.00000293      0.49614064      0.00000243      0.00000336     -0.00000986
 2 22ba00      -0.00815190      0.44849995      0.00000517     -0.00000039      0.00000113      0.35644736     -0.00000000
 2 22ab00       0.00815190     -0.44849995     -0.00000517      0.00000039     -0.00000113     -0.35644736      0.00000000
 2 202020      -0.01184680      0.01154534     -0.00000001      0.00000058     -0.00000025     -0.07747297      0.00000000
 2 022002      -0.01184679     -0.07286623     -0.00000070     -0.00000052      0.00000010      0.02873793      0.00000000
 2 220200      -0.01184679      0.06132089      0.00000071     -0.00000005      0.00000016      0.04873505     -0.00000000
 
 Energy:    -2788.29621997  -2787.87334977  -2787.87334977  -2787.87334977  -2787.87334976  -2787.87334976  -2787.86905038

 State:              8               9              10
 2 222000       0.00000000      0.00000000     -0.02620397
 2 2a20b0      -0.00000000     -0.00000000      0.40170609
 2 2b20a0       0.00000000      0.00000000     -0.40170609
 2 a2200b       0.00000000      0.00000000      0.40170596
 2 b2200a      -0.00000000     -0.00000000     -0.40170596
 2 b220a0       0.49642811     -0.00000344     -0.00000000
 2 a220b0      -0.49642811      0.00000344      0.00000000
 2 22a0b0       0.00000344      0.49642800      0.00000000
 2 22b0a0      -0.00000344     -0.49642800     -0.00000000
 2 b22a00       0.00000986      0.00000066     -0.00000000
 2 a22b00      -0.00000986     -0.00000066      0.00000000
 2 22a00b       0.00000986      0.00000066      0.00000000
 2 22b00a      -0.00000986     -0.00000066     -0.00000000
 2 2b2a00       0.00000344      0.49642752     -0.00000000
 2 2a2b00      -0.00000344     -0.49642752      0.00000000
 2 2b200a      -0.49642741      0.00000344     -0.00000000
 2 2a200b       0.49642741     -0.00000344      0.00000000
 2 22ba00       0.00000000     -0.00000000     -0.40170600
 2 22ab00      -0.00000000      0.00000000      0.40170600
 2 202020       0.00000000      0.00000000     -0.05367300
 2 022002      -0.00000000     -0.00000000     -0.05367298
 2 220200       0.00000000     -0.00000000     -0.05367299
 
 Energy:    -2787.86905038  -2787.86905038  -2787.83912181
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57419984     -0.11951963      0.00000090     -0.00000873     -0.00000146      0.80237213      0.00000000
 2 a2200a       0.57420003      0.75463435     -0.00000082      0.00000291      0.00000005     -0.29767895      0.00000000
 2 2a200a      -0.00000000      0.00000032      0.00000385      0.70254162      0.00000296      0.00000769     -0.00000363
 2 2a2a00      -0.00000000      0.00000049     -0.00000263     -0.00000296      0.70254155      0.00000135     -0.00000256
 2 22a00a      -0.00000000      0.00000048      0.70254145     -0.00000385      0.00000263     -0.00000072     -0.70213921
 2 a22a00      -0.00000000      0.00000048      0.70254130     -0.00000385      0.00000263     -0.00000072      0.70213936
 2 22a0a0      -0.00000000      0.00000049     -0.00000263     -0.00000296      0.70254121      0.00000135      0.00000256
 2 a220a0      -0.00000000      0.00000032      0.00000385      0.70254114      0.00000296      0.00000769      0.00000363
 2 22aa00       0.57419997     -0.63511482     -0.00000009      0.00000582      0.00000141     -0.50469296     -0.00000000
 
 Energy:    -2787.88958252  -2787.87720869  -2787.87720869  -2787.87720869  -2787.87720869  -2787.87720869  -2787.86933878

 State:              8               9
 2 2a20a0       0.00000000      0.00000000
 2 a2200a      -0.00000000     -0.00000000
 2 2a200a      -0.70213904      0.00000243
 2 2a2a00       0.00000243      0.70213911
 2 22a00a       0.00000363     -0.00000256
 2 a22a00      -0.00000363      0.00000256
 2 22a0a0      -0.00000243     -0.70213945
 2 a220a0       0.70213952     -0.00000243
 2 22aa00      -0.00000000     -0.00000000
 
 Energy:    -2787.86933878  -2787.86933878
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       76.53       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       5        1.64       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        11.02      6.94      0.32      3.58
 REAL TIME  *        17.63 SEC
 DISK USED  *        78.27 MB (local),        1.35 GB (total)
 SF USED    *       116.75 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

          ENERGY    LL
    -2788.296220  -0.0
    -2787.873350   6.0
    -2787.873350   6.0
    -2787.873350   6.0
    -2787.873350   6.0
    -2787.873350   6.0
    -2787.869050   2.0
    -2787.869050   2.0
    -2787.869050   2.0
    -2787.839122   0.0
    -2787.889583   0.0
    -2787.877209   6.0
    -2787.877209   6.0
    -2787.877209   6.0
    -2787.877209   6.0
    -2787.877209   6.0
    -2787.869339   2.0
    -2787.869339   2.0
    -2787.869339   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 36
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      231 conf      280 CSFs
 N elec internal:     9996 conf    21280 CSFs
 N-1 el internal:    15576 conf    58240 CSFs
 N-2 el internal:    14289 conf    77596 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     165 (  84  81 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Integral transformation finished. Total CPU:   0.37 sec, npass=  1  Memory used:   2.93 MW


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2788.29621997
     2     -2787.87334977
     3     -2787.87334977
     4     -2787.87334977
     5     -2787.87334976
     6     -2787.87334976
     7     -2787.86905038
     8     -2787.86905038
     9     -2787.86905038
    10     -2787.83912181

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.9071D-07

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1228D-06

 Number of blocks in overlap matrix:  1034   Smallest eigenvalue:  0.91D-07
 Number of N-2 electron functions:    2442
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       4804086
 Number of doubly external configurations:      16629762
 Total number of contracted configurations:     21444670
 Total number of uncontracted configurations:  532289236

 Diagonal Coupling coefficients finished.               Storage:  15136507 words, CPU-Time:     29.98 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2162587 words, CPU-time:      1.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2788.29621997    -0.00000000    -1.12295970  0.72D-02  0.64D-01    37.35
    1     2     2     1.00000000     0.00000000 -2787.87334977     0.00000000    -1.14213375  0.34D-01  0.67D-01    37.35
    1     3     3     1.00000000     0.00000000 -2787.87334977    -0.00000000    -1.13650324  0.35D-01  0.63D-01    37.35
    1     4     4     1.00000000     0.00000000 -2787.87334977    -0.00000000    -1.13630746  0.35D-01  0.63D-01    37.35
    1     5     5     1.00000000     0.00000000 -2787.87334976    -0.00000000    -1.13626185  0.35D-01  0.63D-01    37.35
    1     6     6     1.00000000     0.00000000 -2787.87334976     0.00000000    -1.14457334  0.34D-01  0.68D-01    37.35
    1     7     7     1.00000000     0.00000000 -2787.86905038    -0.00000000    -1.13885708  0.36D-01  0.64D-01    37.35
    1     8     8     1.00000000     0.00000000 -2787.86905038    -0.00000000    -1.13875999  0.36D-01  0.64D-01    37.35
    1     9     9     1.00000000     0.00000000 -2787.86905038    -0.00000000    -1.13868945  0.36D-01  0.64D-01    37.35
    1    10    10     1.00000000     0.00000000 -2787.83912181     0.00000000    -1.16278311  0.83D-01  0.64D-01    37.35
    2     1     1     1.05632944    -1.00110427 -2789.29732424    -1.00110427    -0.01743238  0.11D-02  0.12D-02   667.79
    2     2     2     1.07388987    -0.98909532 -2788.86244508    -0.98909532    -0.01924581  0.33D-02  0.91D-03   667.79
    2     3     3     1.07387485    -0.98906784 -2788.86241761    -0.98906784    -0.01926352  0.33D-02  0.91D-03   667.79
    2     4     4     1.07393862    -0.98906742 -2788.86241718    -0.98906742    -0.01925623  0.33D-02  0.91D-03   667.79
    2     5     5     1.07539321    -0.98895378 -2788.86230354    -0.98895378    -0.01933373  0.31D-02  0.10D-02   667.79
    2     6     6     1.07608757    -0.98849334 -2788.86184311    -0.98849334    -0.01973236  0.30D-02  0.11D-02   667.79
    2     7     7     1.07502556    -0.99006897 -2788.85911935    -0.99006897    -0.01903993  0.33D-02  0.89D-03   667.79
    2     8     8     1.07503100    -0.99003627 -2788.85908665    -0.99003627    -0.01905192  0.33D-02  0.89D-03   667.79
    2     9     9     1.07500273    -0.99002575 -2788.85907613    -0.99002575    -0.01906618  0.33D-02  0.89D-03   667.79
    2    10    10     1.10366593    -0.97839601 -2788.81751782    -0.97839601    -0.03979487  0.16D-01  0.12D-02   667.79
    3     1     1     1.06081643    -1.01880371 -2789.31502367    -0.01769943    -0.00077344  0.92D-05  0.91D-04  1297.64
    3     2     2     1.06603775    -1.00799637 -2788.88134614    -0.01890105    -0.00069165  0.58D-04  0.75D-04  1297.64
    3     3     3     1.06602593    -1.00798968 -2788.88133945    -0.01892184    -0.00069515  0.58D-04  0.75D-04  1297.64
    3     4     4     1.06603577    -1.00798319 -2788.88133296    -0.01891578    -0.00069757  0.58D-04  0.76D-04  1297.64
    3     5     5     1.06623116    -1.00796809 -2788.88131786    -0.01901431    -0.00069937  0.56D-04  0.79D-04  1297.64
    3     6     6     1.06619776    -1.00794064 -2788.88129040    -0.01944730    -0.00071856  0.55D-04  0.84D-04  1297.64
    3     7     7     1.06665645    -1.00881572 -2788.87786611    -0.01874675    -0.00068647  0.64D-04  0.72D-04  1297.64
    3     8     8     1.06663591    -1.00880632 -2788.87785670    -0.01877005    -0.00069170  0.64D-04  0.73D-04  1297.64
    3     9     9     1.06664093    -1.00880475 -2788.87785514    -0.01877901    -0.00069204  0.64D-04  0.73D-04  1297.64
    3    10    10     1.07045679    -1.01788957 -2788.85701138    -0.03949356    -0.00136580  0.18D-03  0.12D-03  1297.64
    4     1     1     1.06429894    -1.01979859 -2789.31601855    -0.00099488    -0.00005752  0.19D-05  0.51D-05  1928.67
    4     2     2     1.06700144    -1.00884174 -2788.88219150    -0.00084537    -0.00007071  0.28D-05  0.81D-05  1928.67
    4     3     3     1.06699848    -1.00884047 -2788.88219024    -0.00085079    -0.00007142  0.29D-05  0.82D-05  1928.67
    4     4     4     1.06699349    -1.00883879 -2788.88218855    -0.00085559    -0.00007249  0.29D-05  0.83D-05  1928.67
    4     5     5     1.06691946    -1.00883377 -2788.88218354    -0.00086568    -0.00007686  0.31D-05  0.88D-05  1928.67
    4     6     6     1.06687830    -1.00883053 -2788.88218029    -0.00088989    -0.00007951  0.32D-05  0.92D-05  1928.67
    4     7     7     1.06739546    -1.00965135 -2788.87870174    -0.00083563    -0.00007102  0.28D-05  0.82D-05  1928.67
    4     8     8     1.06738983    -1.00965001 -2788.87870040    -0.00084369    -0.00007198  0.28D-05  0.83D-05  1928.67
    4     9     9     1.06738696    -1.00964938 -2788.87869976    -0.00084463    -0.00007232  0.29D-05  0.83D-05  1928.67
    4    10    10     1.07087586    -1.01943066 -2788.85855246    -0.00154109    -0.00010954  0.44D-05  0.13D-04  1928.67
    5     1     1     1.06474895    -1.01986665 -2789.31608662    -0.00006806    -0.00000386  0.14D-06  0.36D-06  2559.45
    5     2     2     1.06755921    -1.00893134 -2788.88228111    -0.00008960    -0.00000760  0.31D-06  0.80D-06  2559.45
    5     3     3     1.06757400    -1.00893128 -2788.88228105    -0.00009081    -0.00000744  0.28D-06  0.81D-06  2559.45
    5     4     4     1.06757431    -1.00893103 -2788.88228079    -0.00009224    -0.00000757  0.29D-06  0.82D-06  2559.45
    5     5     5     1.06756076    -1.00893102 -2788.88228078    -0.00009724    -0.00000776  0.32D-06  0.81D-06  2559.45
    5     6     6     1.06757324    -1.00893088 -2788.88228065    -0.00010036    -0.00000770  0.29D-06  0.83D-06  2559.45
    5     7     7     1.06795746    -1.00974156 -2788.87879194    -0.00009021    -0.00000745  0.27D-06  0.80D-06  2559.45
    5     8     8     1.06795726    -1.00974142 -2788.87879180    -0.00009140    -0.00000754  0.28D-06  0.80D-06  2559.45
    5     9     9     1.06795712    -1.00974132 -2788.87879170    -0.00009193    -0.00000761  0.28D-06  0.81D-06  2559.45
    5    10    10     1.07151234    -1.01957209 -2788.85869390    -0.00014143    -0.00001285  0.70D-06  0.14D-05  2559.45
    6     1     1     1.06473311    -1.01987130 -2789.31609127    -0.00000465    -0.00000034  0.79D-08  0.35D-07  3188.88
    6     2     2     1.06759304    -1.00894087 -2788.88229063    -0.00000953    -0.00000095  0.30D-07  0.11D-06  3188.88
    6     3     3     1.06759030    -1.00894085 -2788.88229062    -0.00000958    -0.00000089  0.27D-07  0.11D-06  3188.88
    6     4     4     1.06759216    -1.00894081 -2788.88229057    -0.00000978    -0.00000099  0.31D-07  0.12D-06  3188.88
    6     5     5     1.06759270    -1.00894078 -2788.88229055    -0.00000977    -0.00000097  0.31D-07  0.11D-06  3188.88
    6     6     6     1.06759017    -1.00894074 -2788.88229050    -0.00000985    -0.00000092  0.28D-07  0.11D-06  3188.88
    6     7     7     1.06798322    -1.00975105 -2788.87880143    -0.00000949    -0.00000090  0.27D-07  0.11D-06  3188.88
    6     8     8     1.06798279    -1.00975101 -2788.87880139    -0.00000959    -0.00000093  0.28D-07  0.11D-06  3188.88
    6     9     9     1.06798271    -1.00975101 -2788.87880139    -0.00000969    -0.00000092  0.27D-07  0.11D-06  3188.88
    6    10    10     1.07150065    -1.01958888 -2788.85871069    -0.00001679    -0.00000176  0.88D-07  0.21D-06  3188.88
    7     1     1     1.06474259    -1.01987171 -2789.31609167    -0.00000041    -0.00000004  0.13D-08  0.33D-08  3819.51
    7     2     2     1.06759090    -1.00894210 -2788.88229186    -0.00000123    -0.00000015  0.63D-08  0.16D-07  3819.51
    7     3     3     1.06759047    -1.00894209 -2788.88229186    -0.00000124    -0.00000016  0.67D-08  0.17D-07  3819.51
    7     4     4     1.06759062    -1.00894204 -2788.88229181    -0.00000124    -0.00000016  0.65D-08  0.16D-07  3819.51
    7     5     5     1.06759103    -1.00894203 -2788.88229179    -0.00000124    -0.00000015  0.63D-08  0.16D-07  3819.51
    7     6     6     1.06759067    -1.00894194 -2788.88229171    -0.00000120    -0.00000015  0.64D-08  0.16D-07  3819.51
    7     7     7     1.06797937    -1.00975221 -2788.87880259    -0.00000116    -0.00000014  0.57D-08  0.15D-07  3819.51
    7     8     8     1.06797905    -1.00975221 -2788.87880259    -0.00000120    -0.00000015  0.59D-08  0.16D-07  3819.51
    7     9     9     1.06797918    -1.00975219 -2788.87880257    -0.00000118    -0.00000015  0.58D-08  0.15D-07  3819.51
    7    10    10     1.07153081    -1.01959110 -2788.85871291    -0.00000222    -0.00000032  0.21D-07  0.32D-07  3819.51
    8     1     1     1.06474314    -1.01987172 -2789.31609169    -0.00000001    -0.00000002  0.44D-09  0.24D-08  4395.90
    8     2     2     1.06759523    -1.00894229 -2788.88229206    -0.00000020    -0.00000003  0.16D-08  0.25D-08  4395.90
    8     3     3     1.06759542    -1.00894228 -2788.88229205    -0.00000019    -0.00000003  0.15D-08  0.23D-08  4395.90
    8     4     4     1.06759525    -1.00894223 -2788.88229200    -0.00000019    -0.00000003  0.15D-08  0.24D-08  4395.90
    8     5     5     1.06759606    -1.00894221 -2788.88229198    -0.00000018    -0.00000003  0.14D-08  0.22D-08  4395.90
    8     6     6     1.06759579    -1.00894213 -2788.88229189    -0.00000019    -0.00000003  0.14D-08  0.22D-08  4395.90
    8     7     7     1.06798356    -1.00975239 -2788.87880277    -0.00000018    -0.00000003  0.14D-08  0.22D-08  4395.90
    8     8     8     1.06798367    -1.00975239 -2788.87880277    -0.00000018    -0.00000002  0.13D-08  0.21D-08  4395.90
    8     9     9     1.06798363    -1.00975236 -2788.87880274    -0.00000018    -0.00000002  0.14D-08  0.21D-08  4395.90
    8    10    10     1.07152672    -1.01959153 -2788.85871333    -0.00000042    -0.00000003  0.16D-08  0.31D-08  4395.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.3%   3.8%
 P   0.2%  33.8%  47.3%

 Initialization:   0.7%
 Other:           13.7%

 Total CPU:     4395.9 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9686374  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                            0.0000000  -0.0020788
 222222222222/\00          -0.0021174   0.0003032   0.0004736   0.0001050  -0.0998738   0.7776976   0.0000001  -0.0000000
                            0.0000000   0.5487096
 22222222222/20\0          -0.0021173  -0.0007066  -0.0007428  -0.0016595   0.7234404  -0.3023556   0.0000000  -0.0000001
                           -0.0000001   0.5487095
 22222222222/2\00          -0.0000000   0.0013620   0.0011774   0.6790331   0.0016077   0.0001135  -0.0055109  -0.0004312
                            0.6793281  -0.0000000
 222222222222/0\0           0.0000000   0.0013621   0.0011774   0.6790334   0.0016075   0.0001135   0.0055108   0.0004312
                           -0.6793278  -0.0000000
 222222222222/00\           0.0000000   0.6790362  -0.0026308  -0.0013588   0.0005785  -0.0001887   0.6785133  -0.0331580
                            0.0054832   0.0000000
 22222222222/200\          -0.0000000   0.0026278   0.6790348  -0.0011840   0.0005537  -0.0003432   0.0331535   0.6785369
                            0.0006997  -0.0000000
 2222222222/220\0          -0.0000000   0.0026278   0.6790274  -0.0011839   0.0005535  -0.0003433  -0.0331539  -0.6785443
                           -0.0006996  -0.0000000
 2222222222/22\00           0.0000000   0.6790255  -0.0026307  -0.0013588   0.0005786  -0.0001885  -0.6785239   0.0331586
                           -0.0054833   0.0000000
 2222222222/2200\          -0.0021173   0.0004034   0.0002693   0.0015545  -0.6235673  -0.4753426  -0.0000001   0.0000002
                            0.0000000   0.5487089
 2222222222220200          -0.0097684  -0.0000295  -0.0000460  -0.0000102   0.0097034  -0.0755583  -0.0000000   0.0000000
                           -0.0000000  -0.0528288
 2222222222202020          -0.0097686   0.0000687   0.0000722   0.0001612  -0.0702871   0.0293763  -0.0000000   0.0000000
                            0.0000000  -0.0528293
 22222222222//\\0          -0.0111014   0.0000256   0.0000171   0.0000988  -0.0396453  -0.0302223  -0.0000000   0.0000000
                            0.0000000  -0.0683996
 2222222222//20\\          -0.0111015   0.0000193   0.0000301   0.0000067  -0.0063498   0.0494451   0.0000000  -0.0000000
                            0.0000000  -0.0683995
 2222222222/2/\0\          -0.0111014  -0.0000449  -0.0000472  -0.0001055   0.0459951  -0.0192233   0.0000000  -0.0000000
                           -0.0000000  -0.0683994
 2222222222022002          -0.0097687  -0.0000392  -0.0000262  -0.0001510   0.0605842   0.0461834   0.0000000  -0.0000000
                           -0.0000000  -0.0528296

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968826    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.023717
 2          -0.000000    0.000199    0.967811    0.003745    0.001941   -0.000852    0.000007    0.000000   -0.000000   -0.000000
 3           0.000000   -0.000009   -0.003750    0.967811    0.001678   -0.000928   -0.000000    0.000005   -0.000000    0.000000
 4           0.000000    0.001324   -0.001937   -0.001687    0.967815   -0.001874    0.000000   -0.000000   -0.000001    0.000000
 5          -0.000000   -0.500722    0.000825    0.000789    0.002291    0.828219   -0.000000    0.000000    0.000000   -0.000000
 6          -0.000000   -0.828222   -0.000269   -0.000489    0.000162   -0.500724   -0.000000    0.000000   -0.000000   -0.000000
 7           0.000000   -0.000000   -0.000007   -0.000000   -0.000000   -0.000000    0.966460    0.047223   -0.007849    0.000000
 8           0.000000    0.000000    0.000000   -0.000005    0.000000   -0.000000   -0.047230    0.966492   -0.000614    0.000000
 9           0.000000    0.000000   -0.000000    0.000000    0.000001   -0.000000    0.007810    0.000997    0.967613   -0.000000
 10          0.023318   -0.000001    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.965760

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.969117    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000162
 2           0.000000    0.967821   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.967821    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.967821    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.967820    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.967820    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.967645   -0.000000    0.000000   -0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.967645   -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.967645    0.000000
 10         -0.000162    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.966041


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96882641 (fixed)   0.96911880 (relaxed)   0.96911664 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000701   -0.00001144   -0.99426853
 Singles      0.00293330   -0.01389873   -0.01586506
 Pairs        0.06181030    0.05266788   -0.00973813
 Total        1.06475061    0.03875771   -1.01987172
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2788.29594993
 Nuclear energy                         0.00000000
 Kinetic energy                      2995.21992867
 One electron energy                -3876.25623647
 Two electron energy                 1086.94014479
 Virial quotient                       -0.93125585
 Correlation energy                    -1.02014175
 !MRCI STATE 1.1 Energy             -2789.316091687164

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2789.38214648 (Davidson, fixed reference)
 Cluster corrected energies         -2789.38214164 (Davidson, relaxed reference)
 Cluster corrected energies         -2789.38214648 (Davidson, rotated reference)

 Cluster corrected energies         -2789.38057819 (Pople, fixed reference)
 Cluster corrected energies         -2789.38057319 (Pople, relaxed reference)
 Cluster corrected energies         -2789.38057819 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96781111 (fixed)   0.96782143 (relaxed)   0.96782070 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000821   -0.00003701   -0.90288477
 Singles      0.01368108   -0.04502720   -0.05510465
 Pairs        0.05391470    0.00000001   -0.05095287
 Total        1.06760399   -0.04506420   -1.00894229
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87334977
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24351777
 One electron energy                -3865.49815381
 Two electron energy                 1076.61586175
 Virial quotient                       -0.93141465
 Correlation energy                    -1.00894229
 !MRCI STATE 2.1 Energy             -2788.882292059345

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95050058 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95049895 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95050058 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94904956 (Pople, fixed reference)
 Cluster corrected energies         -2788.94904787 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94904956 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96781145 (fixed)   0.96782134 (relaxed)   0.96782061 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000820   -0.00003701   -0.90288457
 Singles      0.01368107   -0.04502719   -0.05510464
 Pairs        0.05391491   -0.00000003   -0.05095307
 Total        1.06760418   -0.04506423   -1.00894228
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87334977
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24367067
 One electron energy                -3865.49825920
 Two electron energy                 1076.61596715
 Virial quotient                       -0.93141461
 Correlation energy                    -1.00894228
 !MRCI STATE 3.1 Energy             -2788.882292049515

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95050077 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95049914 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95050077 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94904975 (Pople, fixed reference)
 Cluster corrected energies         -2788.94904806 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94904975 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96781456 (fixed)   0.96782142 (relaxed)   0.96782069 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000821   -0.00003701   -0.90288474
 Singles      0.01368103   -0.04502712   -0.05510455
 Pairs        0.05391477   -0.00000003   -0.05095294
 Total        1.06760401   -0.04506416   -1.00894223
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87334976
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24361833
 One electron energy                -3865.49822539
 Two electron energy                 1076.61593339
 Virial quotient                       -0.93141462
 Correlation energy                    -1.00894223
 !MRCI STATE 4.1 Energy             -2788.882291996949

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95050053 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95049891 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95050053 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94904951 (Pople, fixed reference)
 Cluster corrected energies         -2788.94904782 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94904951 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.82821914 (fixed)   0.96782105 (relaxed)   0.96782033 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000820   -0.00003701   -0.90288423
 Singles      0.01368108   -0.04502728   -0.05510457
 Pairs        0.05391553    0.00000035   -0.05095340
 Total        1.06760481   -0.04506395   -1.00894221
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87334977
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24372852
 One electron energy                -3865.49831385
 Two electron energy                 1076.61602188
 Virial quotient                       -0.93141459
 Correlation energy                    -1.00894221
 !MRCI STATE 5.1 Energy             -2788.882291975613

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95050132 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95049970 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95050132 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94905033 (Pople, fixed reference)
 Cluster corrected energies         -2788.94904865 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94905033 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.82822214 (fixed)   0.96782118 (relaxed)   0.96782045 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000820   -0.00003701   -0.90288438
 Singles      0.01368104   -0.04502718   -0.05510446
 Pairs        0.05391530    0.00000024   -0.05095329
 Total        1.06760454   -0.04506395   -1.00894213
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87334977
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24366957
 One electron energy                -3865.49827611
 Two electron energy                 1076.61598421
 Virial quotient                       -0.93141461
 Correlation energy                    -1.00894213
 !MRCI STATE 6.1 Energy             -2788.882291894579

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95050096 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95049934 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95050096 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94904996 (Pople, fixed reference)
 Cluster corrected energies         -2788.94904828 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94904996 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96646045 (fixed)   0.96764533 (relaxed)   0.96764530 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000701   -0.00003692   -0.90221640
 Singles      0.01415423   -0.04620042   -0.05664094
 Pairs        0.05382981   -0.00000001   -0.05089504
 Total        1.06799105   -0.04623734   -1.00975239
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86905038
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24078364
 One electron energy                -3865.48147371
 Two electron energy                 1076.60267094
 Virial quotient                       -0.93141434
 Correlation energy                    -1.00975239
 !MRCI STATE 7.1 Energy             -2788.878802770962

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94745690 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94745684 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94745690 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94601944 (Pople, fixed reference)
 Cluster corrected energies         -2788.94601938 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94601944 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96649176 (fixed)   0.96764528 (relaxed)   0.96764525 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000701   -0.00003692   -0.90221631
 Singles      0.01415421   -0.04620040   -0.05664092
 Pairs        0.05382994   -0.00000002   -0.05089515
 Total        1.06799116   -0.04623734   -1.00975239
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86905038
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24086420
 One electron energy                -3865.48153109
 Two electron energy                 1076.60272832
 Virial quotient                       -0.93141431
 Correlation energy                    -1.00975239
 !MRCI STATE 8.1 Energy             -2788.878802768242

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94745701 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94745695 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94745701 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94601956 (Pople, fixed reference)
 Cluster corrected energies         -2788.94601950 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94601956 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96761324 (fixed)   0.96764530 (relaxed)   0.96764527 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000701   -0.00003692   -0.90221636
 Singles      0.01415422   -0.04620039   -0.05664090
 Pairs        0.05382988    0.00000001   -0.05089510
 Total        1.06799112   -0.04623731   -1.00975236
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86905038
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24083308
 One electron energy                -3865.48150978
 Two electron energy                 1076.60270703
 Virial quotient                       -0.93141432
 Correlation energy                    -1.00975236
 !MRCI STATE 9.1 Energy             -2788.878802744020

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94745693 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94745687 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94745693 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94601948 (Pople, fixed reference)
 Cluster corrected energies         -2788.94601942 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94601948 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96576001 (fixed)   0.96604424 (relaxed)   0.96604147 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001256   -0.00004978    0.00010089
 Singles      0.01673760   -0.04917271   -0.06181890
 Pairs        0.05479002   -0.97053973   -0.95787351
 Total        1.07154018   -1.01976221   -1.01959153
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.83939184
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.49453977
 One electron energy                -3866.33296486
 Two electron energy                 1077.47425153
 Virial quotient                       -0.93132870
 Correlation energy                    -1.01932149
 !MRCI STATE 10.1 Energy            -2788.858713333213

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.93163578 (Davidson, fixed reference)
 Cluster corrected energies         -2788.93162950 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.93163578 (Davidson, rotated reference)

 Cluster corrected energies         -2788.93033416 (Pople, fixed reference)
 Cluster corrected energies         -2788.93032761 (Pople, relaxed reference)
 Cluster corrected energies         -2788.93033416 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       76.53       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       6     1648.46       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      4771.22   4760.18      6.94      0.32      3.58
 REAL TIME  *      4926.84 SEC
 DISK USED  *         1.68 GB (local),       23.86 GB (total)
 SF USED    *        16.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =     -2789.38214648  AU                              
 SETTING HLSDIAG(2)     =     -2788.95050058  AU                              
 SETTING HLSDIAG(3)     =     -2788.95050077  AU                              
 SETTING HLSDIAG(4)     =     -2788.95050053  AU                              
 SETTING HLSDIAG(5)     =     -2788.95050132  AU                              
 SETTING HLSDIAG(6)     =     -2788.95050096  AU                              
 SETTING HLSDIAG(7)     =     -2788.94745690  AU                              
 SETTING HLSDIAG(8)     =     -2788.94745701  AU                              
 SETTING HLSDIAG(9)     =     -2788.94745693  AU                              
 SETTING HLSDIAG(10)    =     -2788.93163578  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 36
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      196 conf      294 CSFs
 N elec internal:     9772 conf    32340 CSFs
 N-1 el internal:    14901 conf    99969 CSFs
 N-2 el internal:    12534 conf   138597 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of core orbitals:           5 (   2   3 )
 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     165 (  84  81 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1     -2787.88958252
     2     -2787.87720869
     3     -2787.87720869
     4     -2787.87720869
     5     -2787.87720869
     6     -2787.87720869
     7     -2787.86933878
     8     -2787.86933878
     9     -2787.86933878

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1207D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1451D-06

 Number of blocks in overlap matrix:   973   Smallest eigenvalue:  0.12D-06
 Number of N-2 electron functions:    2227
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:       8246646
 Number of doubly external configurations:      15164109
 Total number of contracted configurations:     23426979
 Total number of uncontracted configurations:  949525674

 Diagonal Coupling coefficients finished.               Storage:  18307147 words, CPU-Time:     46.66 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2179048 words, CPU-time:      1.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000 -2787.88958252    -0.00000000    -1.14541862  0.30D-01  0.69D-01    53.38
    1     2     2     1.00000000     0.00000000 -2787.87720869    -0.00000000    -1.14309485  0.32D-01  0.67D-01    53.38
    1     3     3     1.00000000     0.00000000 -2787.87720869    -0.00000000    -1.14280444  0.32D-01  0.67D-01    53.38
    1     4     4     1.00000000     0.00000000 -2787.87720869     0.00000000    -1.14342638  0.32D-01  0.67D-01    53.38
    1     5     5     1.00000000     0.00000000 -2787.87720869    -0.00000000    -1.14286933  0.32D-01  0.67D-01    53.38
    1     6     6     1.00000000     0.00000000 -2787.87720869     0.00000000    -1.14502024  0.32D-01  0.68D-01    53.38
    1     7     7     1.00000000     0.00000000 -2787.86933878     0.00000000    -1.14438392  0.36D-01  0.67D-01    53.38
    1     8     8     1.00000000     0.00000000 -2787.86933878    -0.00000000    -1.14429365  0.36D-01  0.67D-01    53.38
    1     9     9     1.00000000     0.00000000 -2787.86933878    -0.00000000    -1.14441896  0.36D-01  0.67D-01    53.38
    2     1     1     1.07368508    -0.98787596 -2788.87745848    -0.98787596    -0.01859801  0.21D-02  0.11D-02   719.40
    2     2     2     1.07454249    -0.99016677 -2788.86737547    -0.99016677    -0.01794884  0.25D-02  0.87D-03   719.40
    2     3     3     1.07438131    -0.99001168 -2788.86722037    -0.99001168    -0.01804189  0.25D-02  0.89D-03   719.40
    2     4     4     1.07435306    -0.98999520 -2788.86720389    -0.98999520    -0.01804885  0.25D-02  0.89D-03   719.40
    2     5     5     1.07465606    -0.98885227 -2788.86606096    -0.98885227    -0.01888900  0.26D-02  0.10D-02   719.40
    2     6     6     1.07513273    -0.98853421 -2788.86574290    -0.98853421    -0.01917874  0.26D-02  0.11D-02   719.40
    2     7     7     1.07688711    -0.98978110 -2788.85911987    -0.98978110    -0.01897837  0.33D-02  0.90D-03   719.40
    2     8     8     1.07687005    -0.98976652 -2788.85910530    -0.98976652    -0.01898402  0.33D-02  0.90D-03   719.40
    2     9     9     1.07685852    -0.98975241 -2788.85909118    -0.98975241    -0.01899724  0.33D-02  0.90D-03   719.40
    3     1     1     1.06524658    -1.00571317 -2788.89529569    -0.01783721    -0.00052839  0.26D-04  0.65D-04  1387.66
    3     2     2     1.06635349    -1.00752865 -2788.88473735    -0.01736188    -0.00054007  0.57D-04  0.56D-04  1387.66
    3     3     3     1.06625616    -1.00749739 -2788.88470608    -0.01748571    -0.00055928  0.56D-04  0.60D-04  1387.66
    3     4     4     1.06624378    -1.00749219 -2788.88470088    -0.01749699    -0.00056201  0.56D-04  0.60D-04  1387.66
    3     5     5     1.06590678    -1.00733166 -2788.88454035    -0.01847939    -0.00065832  0.55D-04  0.76D-04  1387.66
    3     6     6     1.06586203    -1.00730966 -2788.88451835    -0.01877545    -0.00067318  0.55D-04  0.79D-04  1387.66
    3     7     7     1.06691018    -1.00845448 -2788.87779326    -0.01867338    -0.00063347  0.77D-04  0.64D-04  1387.66
    3     8     8     1.06689735    -1.00845039 -2788.87778916    -0.01868387    -0.00063641  0.77D-04  0.65D-04  1387.66
    3     9     9     1.06689970    -1.00844988 -2788.87778865    -0.01869747    -0.00063578  0.77D-04  0.65D-04  1387.66
    4     1     1     1.06581960    -1.00633842 -2788.89592094    -0.00062525    -0.00005305  0.19D-05  0.64D-05  2054.39
    4     2     2     1.06670898    -1.00815678 -2788.88536547    -0.00062813    -0.00005037  0.19D-05  0.63D-05  2054.39
    4     3     3     1.06668165    -1.00815328 -2788.88536197    -0.00065589    -0.00005329  0.20D-05  0.65D-05  2054.39
    4     4     4     1.06667839    -1.00815249 -2788.88536118    -0.00066030    -0.00005386  0.20D-05  0.66D-05  2054.39
    4     5     5     1.06654391    -1.00813158 -2788.88534027    -0.00079992    -0.00007036  0.31D-05  0.81D-05  2054.39
    4     6     6     1.06651912    -1.00812911 -2788.88533780    -0.00081945    -0.00007251  0.32D-05  0.83D-05  2054.39
    4     7     7     1.06719912    -1.00919263 -2788.87853141    -0.00073815    -0.00005874  0.24D-05  0.73D-05  2054.39
    4     8     8     1.06719762    -1.00919245 -2788.87853123    -0.00074206    -0.00005899  0.24D-05  0.73D-05  2054.39
    4     9     9     1.06719518    -1.00919183 -2788.87853061    -0.00074196    -0.00005932  0.24D-05  0.73D-05  2054.39
    5     1     1     1.06636068    -1.00640450 -2788.89598702    -0.00006608    -0.00000434  0.21D-06  0.44D-06  2723.43
    5     2     2     1.06718078    -1.00822093 -2788.88542963    -0.00006416    -0.00000514  0.28D-06  0.55D-06  2723.43
    5     3     3     1.06717947    -1.00822084 -2788.88542953    -0.00006756    -0.00000528  0.29D-06  0.56D-06  2723.43
    5     4     4     1.06717954    -1.00822077 -2788.88542946    -0.00006828    -0.00000533  0.29D-06  0.57D-06  2723.43
    5     5     5     1.06717730    -1.00821989 -2788.88542858    -0.00008831    -0.00000640  0.37D-06  0.63D-06  2723.43
    5     6     6     1.06717768    -1.00821984 -2788.88542853    -0.00009072    -0.00000633  0.36D-06  0.63D-06  2723.43
    5     7     7     1.06773182    -1.00926709 -2788.87860587    -0.00007446    -0.00000582  0.31D-06  0.62D-06  2723.43
    5     8     8     1.06773144    -1.00926704 -2788.87860582    -0.00007459    -0.00000582  0.31D-06  0.62D-06  2723.43
    5     9     9     1.06773160    -1.00926700 -2788.87860578    -0.00007517    -0.00000588  0.32D-06  0.63D-06  2723.43
    6     1     1     1.06638577    -1.00640968 -2788.89599219    -0.00000517    -0.00000040  0.14D-07  0.53D-07  3392.36
    6     2     2     1.06721708    -1.00822761 -2788.88543630    -0.00000668    -0.00000065  0.23D-07  0.83D-07  3392.36
    6     3     3     1.06721765    -1.00822749 -2788.88543618    -0.00000665    -0.00000065  0.23D-07  0.83D-07  3392.36
    6     4     4     1.06722508    -1.00822748 -2788.88543617    -0.00000671    -0.00000062  0.22D-07  0.78D-07  3392.36
    6     5     5     1.06722488    -1.00822746 -2788.88543615    -0.00000757    -0.00000062  0.22D-07  0.78D-07  3392.36
    6     6     6     1.06722658    -1.00822745 -2788.88543614    -0.00000761    -0.00000061  0.22D-07  0.76D-07  3392.36
    6     7     7     1.06778828    -1.00927437 -2788.87861315    -0.00000728    -0.00000067  0.26D-07  0.86D-07  3392.36
    6     8     8     1.06778811    -1.00927436 -2788.87861314    -0.00000732    -0.00000068  0.26D-07  0.87D-07  3392.36
    6     9     9     1.06778833    -1.00927434 -2788.87861312    -0.00000734    -0.00000068  0.26D-07  0.87D-07  3392.36
    7     1     1     1.06638496    -1.00641019 -2788.89599271    -0.00000051    -0.00000006  0.26D-08  0.67D-08  4059.55
    7     2     2     1.06721973    -1.00822846 -2788.88543716    -0.00000085    -0.00000011  0.47D-08  0.13D-07  4059.55
    7     3     3     1.06721994    -1.00822835 -2788.88543704    -0.00000086    -0.00000011  0.48D-08  0.13D-07  4059.55
    7     4     4     1.06722206    -1.00822830 -2788.88543699    -0.00000082    -0.00000011  0.47D-08  0.12D-07  4059.55
    7     5     5     1.06722197    -1.00822827 -2788.88543696    -0.00000082    -0.00000011  0.47D-08  0.12D-07  4059.55
    7     6     6     1.06722236    -1.00822825 -2788.88543694    -0.00000080    -0.00000010  0.46D-08  0.11D-07  4059.55
    7     7     7     1.06778509    -1.00927527 -2788.87861405    -0.00000090    -0.00000012  0.51D-08  0.14D-07  4059.55
    7     8     8     1.06778518    -1.00927527 -2788.87861405    -0.00000091    -0.00000012  0.50D-08  0.14D-07  4059.55
    7     9     9     1.06778517    -1.00927525 -2788.87861403    -0.00000091    -0.00000012  0.51D-08  0.14D-07  4059.55
    8     1     1     1.06638496    -1.00641019 -2788.89599271    -0.00000000    -0.00000006  0.26D-08  0.67D-08  4671.08
    8     2     2     1.06722368    -1.00822861 -2788.88543730    -0.00000014    -0.00000002  0.12D-08  0.18D-08  4671.08
    8     3     3     1.06722355    -1.00822849 -2788.88543719    -0.00000014    -0.00000002  0.12D-08  0.18D-08  4671.08
    8     4     4     1.06722336    -1.00822843 -2788.88543712    -0.00000013    -0.00000002  0.12D-08  0.17D-08  4671.08
    8     5     5     1.06722334    -1.00822841 -2788.88543710    -0.00000013    -0.00000002  0.12D-08  0.17D-08  4671.08
    8     6     6     1.06722326    -1.00822837 -2788.88543706    -0.00000013    -0.00000002  0.11D-08  0.17D-08  4671.08
    8     7     7     1.06778827    -1.00927544 -2788.87861422    -0.00000017    -0.00000001  0.49D-09  0.16D-08  4671.08
    8     8     8     1.06778740    -1.00927542 -2788.87861420    -0.00000015    -0.00000002  0.14D-08  0.20D-08  4671.08
    8     9     9     1.06778735    -1.00927541 -2788.87861419    -0.00000016    -0.00000002  0.14D-08  0.21D-08  4671.08


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.3%   5.4%
 P   0.2%  46.8%  35.3%

 Initialization:   1.0%
 Other:           10.8%

 Total CPU:     4671.1 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 222222222222//00           0.5560360  -0.0284184   0.7845687  -0.0163787   0.0001564  -0.0002057  -0.0000000   0.0000000
                            0.0000002
 2222222222/2200/           0.5560371   0.6938103  -0.3676288   0.0099670  -0.0000682  -0.0001647   0.0000000   0.0000000
                           -0.0000001
 222222222222/0/0           0.0000001  -0.0022904   0.0141106   0.6798996   0.0010703   0.0001979  -0.0013100  -0.0000033
                           -0.6794330
 22222222222/2/00           0.0000001  -0.0022904   0.0141102   0.6798965   0.0010703   0.0001979   0.0013100   0.0000033
                            0.6794361
 2222222222/220/0          -0.0000000   0.0002614   0.0001772  -0.0002431   0.0269784   0.6795151  -0.0188518  -0.6791729
                            0.0000396
 222222222222/00/          -0.0000000  -0.0000118  -0.0001650  -0.0010585   0.6795146  -0.0269787   0.6791714  -0.0188517
                           -0.0013094
 22222222222/200/           0.0000000   0.0002614   0.0001772  -0.0002431   0.0269781   0.6795124   0.0188520   0.6791756
                           -0.0000396
 2222222222/22/00          -0.0000000  -0.0000118  -0.0001650  -0.0010584   0.6795114  -0.0269784  -0.6791744   0.0188521
                            0.0013094
 22222222222/20/0           0.5560392  -0.6653892  -0.4169370   0.0064114  -0.0000881   0.0003705   0.0000000  -0.0000000
                           -0.0000001
 2222222222/\20//          -0.0000000   0.0597110   0.0021662   0.0001562   0.0000009  -0.0000235  -0.0000000   0.0000000
                            0.0000000
 22222222222/\//0           0.0000004  -0.0279828  -0.0527833   0.0010012  -0.0000107   0.0000253   0.0000000  -0.0000000
                           -0.0000000
 2222222222/2\/0/           0.0000002   0.0317282  -0.0506173   0.0011574  -0.0000099   0.0000018  -0.0000000   0.0000000
                           -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.968372    0.000000   -0.000000    0.000000    0.000000    0.000002   -0.000000    0.000000    0.000000
 2           0.000002    0.629214   -0.000017    0.000372   -0.003260   -0.735585    0.000000   -0.000000   -0.000000
 3           0.000002   -0.735387   -0.000235    0.000252    0.020085   -0.629133    0.000000   -0.000000   -0.000000
 4          -0.000000    0.017382   -0.001507   -0.000346    0.967775    0.010579   -0.000000    0.000000   -0.000003
 5           0.000000   -0.000142    0.967227    0.038401    0.001523   -0.000131    0.000002   -0.000000   -0.000000
 6          -0.000000   -0.000038   -0.038402    0.967228    0.000282    0.000456   -0.000000   -0.000002   -0.000000
 7           0.000000    0.000000   -0.000002    0.000000    0.000000    0.000000    0.967359    0.026851    0.001866
 8          -0.000000    0.000000    0.000000    0.000002   -0.000000   -0.000000   -0.026851    0.967361    0.000005
 9          -0.000000   -0.000000    0.000000    0.000000    0.000002   -0.000000   -0.001865   -0.000056    0.967732

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.968372    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.967990   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000   -0.000000    0.967990    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.967991   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000    0.000000   -0.000000    0.967991    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.967991   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.967734    0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.967734    0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.967734


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96837215 (fixed)   0.96837217 (relaxed)   0.96837215 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324   -0.00001395   -0.90186795
 Singles      0.01311611   -0.04467190   -0.05426639
 Pairs        0.05326906   -0.00000002   -0.05027586
 Total        1.06638841   -0.04468587   -1.00641019
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.88958252
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.22083813
 One electron energy                -3865.45187847
 Two electron energy                 1076.55588577
 Virial quotient                       -0.93142629
 Correlation energy                    -1.00641019
 !MRCI STATE 1.1 Energy             -2788.895992706624

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.96280668 (Davidson, fixed reference)
 Cluster corrected energies         -2788.96280664 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.96280668 (Davidson, rotated reference)

 Cluster corrected energies         -2788.96080121 (Pople, fixed reference)
 Cluster corrected energies         -2788.96080116 (Pople, relaxed reference)
 Cluster corrected energies         -2788.96080121 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.73558478 (fixed)   0.96799044 (relaxed)   0.96799041 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000561   -0.00002828   -0.90227346
 Singles      0.01357173   -0.04530126   -0.05526831
 Pairs        0.05365232    0.00000001   -0.05068683
 Total        1.06722967   -0.04532954   -1.00822861
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87720869
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23148439
 One electron energy                -3865.47183396
 Two electron energy                 1076.58639666
 Virial quotient                       -0.93141945
 Correlation energy                    -1.00822861
 !MRCI STATE 2.1 Energy             -2788.885437298105

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95322017 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95322010 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95322017 (Davidson, rotated reference)

 Cluster corrected energies         -2788.95123377 (Pople, fixed reference)
 Cluster corrected energies         -2788.95123370 (Pople, relaxed reference)
 Cluster corrected energies         -2788.95123377 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.73538676 (fixed)   0.96799050 (relaxed)   0.96799047 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000561   -0.00002828   -0.90227390
 Singles      0.01357164   -0.04530110   -0.05526811
 Pairs        0.05365228    0.00000031   -0.05068649
 Total        1.06722954   -0.04532907   -1.00822849
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87720869
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23145602
 One electron energy                -3865.47181704
 Two electron energy                 1076.58637986
 Virial quotient                       -0.93141946
 Correlation energy                    -1.00822850
 !MRCI STATE 3.1 Energy             -2788.885437186736

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95321992 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95321986 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95321992 (Davidson, rotated reference)

 Cluster corrected energies         -2788.95123352 (Pople, fixed reference)
 Cluster corrected energies         -2788.95123345 (Pople, relaxed reference)
 Cluster corrected energies         -2788.95123352 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96777543 (fixed)   0.96799058 (relaxed)   0.96799055 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000561   -0.00002827   -0.90227624
 Singles      0.01357151   -0.04530089   -0.05526800
 Pairs        0.05365223    0.00000249   -0.05068419
 Total        1.06722935   -0.04532667   -1.00822843
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87720869
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23155125
 One electron energy                -3865.47188235
 Two electron energy                 1076.58644523
 Virial quotient                       -0.93141943
 Correlation energy                    -1.00822843
 !MRCI STATE 4.1 Energy             -2788.885437121274

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95321967 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95321960 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95321967 (Davidson, rotated reference)

 Cluster corrected energies         -2788.95123326 (Pople, fixed reference)
 Cluster corrected energies         -2788.95123319 (Pople, relaxed reference)
 Cluster corrected energies         -2788.95123326 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96722734 (fixed)   0.96799060 (relaxed)   0.96799057 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000561   -0.00002827   -0.90227393
 Singles      0.01357150   -0.04530087   -0.05526796
 Pairs        0.05365221   -0.00000000   -0.05068652
 Total        1.06722932   -0.04532913   -1.00822841
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87720869
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23155327
 One electron energy                -3865.47188424
 Two electron energy                 1076.58644715
 Virial quotient                       -0.93141943
 Correlation energy                    -1.00822840
 !MRCI STATE 5.1 Energy             -2788.885437095730

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95321961 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95321954 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95321961 (Davidson, rotated reference)

 Cluster corrected energies         -2788.95123320 (Pople, fixed reference)
 Cluster corrected energies         -2788.95123313 (Pople, relaxed reference)
 Cluster corrected energies         -2788.95123320 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96722843 (fixed)   0.96799063 (relaxed)   0.96799060 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000561   -0.00002827   -0.90227403
 Singles      0.01357146   -0.04530080   -0.05526792
 Pairs        0.05365218    0.00000001   -0.05068642
 Total        1.06722925   -0.04532906   -1.00822837
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.87720869
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23161626
 One electron energy                -3865.47192843
 Two electron energy                 1076.58649136
 Virial quotient                       -0.93141941
 Correlation energy                    -1.00822837
 !MRCI STATE 6.1 Energy             -2788.885437064004

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.95321950 (Davidson, fixed reference)
 Cluster corrected energies         -2788.95321943 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.95321950 (Davidson, rotated reference)

 Cluster corrected energies         -2788.95123309 (Pople, fixed reference)
 Cluster corrected energies         -2788.95123302 (Pople, relaxed reference)
 Cluster corrected energies         -2788.95123309 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96735918 (fixed)   0.96773447 (relaxed)   0.96773356 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000749   -0.00002996   -0.90076113
 Singles      0.01393053   -0.04559567   -0.05586848
 Pairs        0.05385825   -0.00185796   -0.05264583
 Total        1.06779626   -0.04748359   -1.00927544
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86933878
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.24095960
 One electron energy                -3865.47753133
 Two electron energy                 1076.59891711
 Virial quotient                       -0.93141422
 Correlation energy                    -1.00927544
 !MRCI STATE 7.1 Energy             -2788.878614221049

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94703932 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94703730 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94703932 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94506688 (Pople, fixed reference)
 Cluster corrected energies         -2788.94506480 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94506688 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96736137 (fixed)   0.96773486 (relaxed)   0.96773395 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000749   -0.00002996   -0.90249704
 Singles      0.01393052   -0.04559616   -0.05586792
 Pairs        0.05385738   -0.00000464   -0.05091046
 Total        1.06779539   -0.04563075   -1.00927542
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86933878
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23892003
 One electron energy                -3865.47626059
 Two electron energy                 1076.59764638
 Virial quotient                       -0.93141486
 Correlation energy                    -1.00927542
 !MRCI STATE 8.1 Energy             -2788.878614200926

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94703843 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94703640 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94703843 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94506596 (Pople, fixed reference)
 Cluster corrected energies         -2788.94506388 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94506596 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.96773218 (fixed)   0.96773488 (relaxed)   0.96773398 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000749   -0.00002996   -0.00003681
 Singles      0.01393053   -0.04559616   -0.05586791
 Pairs        0.05385733   -0.96364750   -0.95337069
 Total        1.06779534   -1.00927362   -1.00927541
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                   -2787.86933878
 Nuclear energy                         0.00000000
 Kinetic energy                      2994.23887940
 One electron energy                -3865.47623702
 Two electron energy                 1076.59762283
 Virial quotient                       -0.93141487
 Correlation energy                    -1.00927541
 !MRCI STATE 9.1 Energy             -2788.878614186103

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies         -2788.94703836 (Davidson, fixed reference)
 Cluster corrected energies         -2788.94703633 (Davidson, relaxed reference)
 Cluster corrected energies         -2788.94703836 (Davidson, rotated reference)

 Cluster corrected energies         -2788.94506589 (Pople, fixed reference)
 Cluster corrected energies         -2788.94506381 (Pople, relaxed reference)
 Cluster corrected energies         -2788.94506589 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24       76.53       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3265.70       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9892.67   5121.44   4760.18      6.94      0.32      3.58
 REAL TIME  *     10181.56 SEC
 DISK USED  *         3.26 GB (local),       45.97 GB (total)
 SF USED    *        16.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =     -2788.96280664  AU                              
 SETTING HLSDIAG(12)    =     -2788.95322010  AU                              
 SETTING HLSDIAG(13)    =     -2788.95321986  AU                              
 SETTING HLSDIAG(14)    =     -2788.95321960  AU                              
 SETTING HLSDIAG(15)    =     -2788.95321954  AU                              
 SETTING HLSDIAG(16)    =     -2788.95321943  AU                              
 SETTING HLSDIAG(17)    =     -2788.94703730  AU                              
 SETTING HLSDIAG(18)    =     -2788.94703640  AU                              
 SETTING HLSDIAG(19)    =     -2788.94703633  AU                              


         HLSDIAG
    -2789.382146
    -2788.950501
    -2788.950501
    -2788.950501
    -2788.950501
    -2788.950501
    -2788.947457
    -2788.947457
    -2788.947457
    -2788.931636
    -2788.962807
    -2788.953220
    -2788.953220
    -2788.953220
    -2788.953220
    -2788.953219
    -2788.947037
    -2788.947036
    -2788.947036
                                                  

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

 Time for Seward_LS:      23.14 sec

       75158808. SPIN-ORBIT INTEGRALS WRITTEN OUT IN    22502 RECORDS ON RECORD     11290 OF FILE 1


 CPU time:     23.14 sec, REAL time:     23.56 sec


 SORTLS1 read    92085891. and wrote    92085891. SO integrals in   366 records. CPU time:      0.63 sec, REAL time:      1.18 sec
 SORTLS2 read    92085891. and wrote   453674553. SO integrals in    42 records. CPU time:      0.14 sec, REAL time:      0.81 sec

 FILE SIZES: FILE 1:  1555.1 MBYTE, FILE 4:     0.0 MBYTE, TOTAL:  1555.1 MBYTE


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1483.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3265.70       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *      9917.91     25.19   5121.44   4760.18      6.94      0.32      3.58
 REAL TIME  *     10208.49 SEC
 DISK USED  *         3.26 GB (local),       50.58 GB (total)
 SF USED    *        16.21 GB
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

 Original energies:  -2789.316092  -2788.882292  -2788.882292  -2788.882292  -2788.882292  -2788.882292  -2788.878803  -2788.878803
                     -2788.878803  -2788.858713
 Replaced energies:  -2789.382146  -2788.950501  -2788.950501  -2788.950501  -2788.950501  -2788.950501  -2788.947457  -2788.947457
                     -2788.947457  -2788.931636

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:  -2788.895993  -2788.885437  -2788.885437  -2788.885437  -2788.885437  -2788.885437  -2788.878614  -2788.878614
                     -2788.878614
 Replaced energies:  -2788.962807  -2788.953220  -2788.953220  -2788.953220  -2788.953220  -2788.953219  -2788.947037  -2788.947036
                     -2788.947036



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0= -2789.38214648

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   94735.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   94735.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   94735.34       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   94735.16       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   94735.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95403.34       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95403.31       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95403.33       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   98875.67
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -7.96      -0.62     981.01      -0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00     -47.88    -979.88      -1.01       0.00

   12   2.1  1.0  1.0       0.00       1.03       1.11     644.96      -1.29       3.80       4.72       0.39    -609.83      -0.00
                           -0.00      -7.64   -1376.23       2.42      -1.65       0.63       0.79     -25.04       0.00       0.00

   13   3.1  1.0  1.0       0.00       2.24       1.92    1216.53      20.20     -22.52      -2.78      -0.34     323.13       0.00
                           -0.00      14.09     -49.98       0.23      -0.38      -0.02      21.27     689.41       0.76      -0.00

   14   4.1  1.0  1.0       0.00      -0.83      -2.35     -24.86     834.64   -1094.99       0.24      -0.93      -8.76       0.00
                            0.00     688.40      -6.27      -0.30       1.07      -0.13    -597.61      14.79      -3.91       0.00

   15   5.1  1.0  1.0      -0.00     -24.65     688.14      -0.90       1.85      -2.06       5.46     597.73       0.48      -0.00
                           -0.00      -0.25      -1.18    -687.91     -55.82      -7.07       3.91       0.56    -597.27      -0.00

   16   6.1  1.0  1.0       0.00    -688.14     -24.65       0.84      -0.37      -0.11    -597.70       5.47      -4.70      -0.00
                           -0.00       1.38       1.61      30.57   -1364.80    -175.28      -0.38      -0.19      23.71      -0.00

   17   7.1  1.0  1.0      -1.48     -14.23     595.80      -1.00      -0.58      -1.10      14.46     686.02       0.55      -1.75
                           21.31       2.34       1.02     595.73       3.84     -18.84      -6.89      -0.37     685.88      25.21

   18   8.1  1.0  1.0      -0.00    -595.80     -14.23       1.22      -0.52       0.17    -686.00      14.46      -5.56      -0.00
                          767.60      -0.30      -0.44     -16.63      87.58    -682.30       0.15       0.01     -19.04     908.20

   19   9.1  1.0  1.0    -767.90       0.38      -0.91       1.37    -547.28    -417.19      -0.02      -1.32      -0.00    -908.55
                           -0.04     595.95      -2.31      -2.34       0.50      -0.13    -685.33      33.49      -6.86      -0.05

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00      -0.00       0.00       0.00   -1385.70      67.72     -11.20       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1034.21       0.73       1.70      -0.87       0.32    -825.98      43.21      -6.35      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1649.95      13.81      -3.59       1.60      -0.03    -518.53       7.78      -3.98       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -33.96     973.72      -1.28       1.93       2.32     -33.28    -844.56      -1.11      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.39       1.17     -36.56    -750.52   -1795.56      -0.45      -1.34      33.53       0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.02      -1.39    -973.11      27.49      71.13      -6.40      -0.80     844.67      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1085.52       0.92      -0.66      25.45    -897.54     375.15       0.31       1.89     -26.92    1284.41

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -30.13       1.67       1.43     842.43      26.91     -10.27       7.87       0.62    -969.99     -35.65

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.09      -3.26    -842.81       1.42       1.04      -0.30      47.36     969.25       1.06      -2.48

   29   1.1  1.0 -1.0      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -7.96      -0.62     981.01      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      47.88     979.88       1.01      -0.00

   30   2.1  1.0 -1.0       0.00       1.03       1.11     644.96      -1.29       3.80       4.72       0.39    -609.83      -0.00
                            0.00       7.64    1376.23      -2.42       1.65      -0.63      -0.79      25.04      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       2.24       1.92    1216.53      20.20     -22.52      -2.78      -0.34     323.13       0.00
                            0.00     -14.09      49.98      -0.23       0.38       0.02     -21.27    -689.41      -0.76       0.00

   32   4.1  1.0 -1.0       0.00      -0.83      -2.35     -24.86     834.64   -1094.99       0.24      -0.93      -8.76       0.00
                           -0.00    -688.40       6.27       0.30      -1.07       0.13     597.61     -14.79       3.91      -0.00

   33   5.1  1.0 -1.0      -0.00     -24.65     688.14      -0.90       1.85      -2.06       5.46     597.73       0.48      -0.00
                            0.00       0.25       1.18     687.91      55.82       7.07      -3.91      -0.56     597.27       0.00

   34   6.1  1.0 -1.0       0.00    -688.14     -24.65       0.84      -0.37      -0.11    -597.70       5.47      -4.70      -0.00
                            0.00      -1.38      -1.61     -30.57    1364.80     175.28       0.38       0.19     -23.71       0.00

   35   7.1  1.0 -1.0      -1.48     -14.23     595.80      -1.00      -0.58      -1.10      14.46     686.02       0.55      -1.75
                          -21.31      -2.34      -1.02    -595.73      -3.84      18.84       6.89       0.37    -685.88     -25.21

   36   8.1  1.0 -1.0      -0.00    -595.80     -14.23       1.22      -0.52       0.17    -686.00      14.46      -5.56      -0.00
                         -767.60       0.30       0.44      16.63     -87.58     682.30      -0.15      -0.01      19.04    -908.20

   37   9.1  1.0 -1.0    -767.90       0.38      -0.91       1.37    -547.28    -417.19      -0.02      -1.32      -0.00    -908.55
                            0.04    -595.95       2.31       2.34      -0.50       0.13     685.33     -33.49       6.86       0.05


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00      -0.00       0.00      -1.48      -0.00    -767.90       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00     -21.31    -767.60       0.04       0.00

    2   2.1  0.0  0.0      -0.00       1.03       2.24      -0.83     -24.65    -688.14     -14.23    -595.80       0.38       0.00
                           -0.00       7.64     -14.09    -688.40       0.25      -1.38      -2.34       0.30    -595.95       0.01

    3   3.1  0.0  0.0      -0.00       1.11       1.92      -2.35     688.14     -24.65     595.80     -14.23      -0.91       0.00
                            0.00    1376.23      49.98       6.27       1.18      -1.61      -1.02       0.44       2.31      -0.00

    4   4.1  0.0  0.0      -0.00     644.96    1216.53     -24.86      -0.90       0.84      -1.00       1.22       1.37       0.00
                           -0.00      -2.42      -0.23       0.30     687.91     -30.57    -595.73      16.63       2.34       0.00

    5   5.1  0.0  0.0       0.00      -1.29      20.20     834.64       1.85      -0.37      -0.58      -0.52    -547.28       0.00
                            0.00       1.65       0.38      -1.07      55.82    1364.80      -3.84     -87.58      -0.50      -0.00

    6   6.1  0.0  0.0      -0.00       3.80     -22.52   -1094.99      -2.06      -0.11      -1.10       0.17    -417.19       0.00
                            0.00      -0.63       0.02       0.13       7.07     175.28      18.84     682.30       0.13      -0.00

    7   7.1  0.0  0.0      -7.96       4.72      -2.78       0.24       5.46    -597.70      14.46    -686.00      -0.02       0.00
                           47.88      -0.79     -21.27     597.61      -3.91       0.38       6.89      -0.15     685.33    1385.70

    8   8.1  0.0  0.0      -0.62       0.39      -0.34      -0.93     597.73       5.47     686.02      14.46      -1.32       0.00
                          979.88      25.04    -689.41     -14.79      -0.56       0.19       0.37      -0.01     -33.49     -67.72

    9   9.1  0.0  0.0     981.01    -609.83     323.13      -8.76       0.48      -4.70       0.55      -5.56      -0.00       0.00
                            1.01      -0.00      -0.76       3.91     597.27     -23.71    -685.88      19.04       6.86      11.20

   10  10.1  0.0  0.0      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -1.75      -0.00    -908.55       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00     -25.21    -908.20       0.05      -0.00

   11   1.1  1.0  1.0   92034.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.01       0.00   -1585.74      44.02       3.06       0.00

   12   2.1  1.0  1.0       0.00   94138.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.24       1.08    -900.92      32.91    -949.43      29.62       2.20       0.00

   13   3.1  1.0  1.0       0.00       0.00   94138.51       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.24      -0.00      -2.47    1437.78     -39.46    -595.54      -3.62       1.40       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   94138.57       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -1.08       2.47       0.00       0.81     849.32     -17.78    -970.48      -0.31      -0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   94138.58       0.00       0.00       0.00       0.00      -0.00
                            0.01     900.92   -1437.78      -0.81      -0.00       1.37      -0.09      -1.52      38.51       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   94138.61       0.00       0.00       0.00      -0.00
                           -0.00     -32.91      39.46    -849.32      -1.37       0.00       2.39      -0.29     970.05       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   95495.43       0.00       0.00       2.16
                         1585.74     949.43     595.54      17.78       0.09      -2.39       0.00       1.63     -23.43     -31.12

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95495.62       0.00       0.01
                          -44.02     -29.62       3.62     970.48       1.52       0.29      -1.63       0.00    -844.23   -1121.30

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95495.64    1121.72
                           -3.06      -2.20      -1.40       0.31     -38.51    -970.05      23.43     844.23      -0.00       0.07

   20   1.1  1.0  0.0       0.00      -0.00      -0.00      -0.01      -0.00      -0.00       2.16       0.01    1121.72   92034.46
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      31.12    1121.30      -0.07       0.00

   21   2.1  1.0  0.0       0.00       0.00      15.24     562.02       0.65       0.16      -1.61      -0.01    -700.36       0.00
                            0.00       0.00       0.30      -0.44      49.61    1198.66      -1.51      28.74      -0.01      -0.00

   22   3.1  1.0  0.0       0.00     -15.24       0.00    1060.68       1.50       0.18       0.53      -0.16     371.10       0.00
                            0.00      -0.30      -0.00      -0.14     -10.72      43.98      -7.74    -792.06      -0.15      -0.00

   23   4.1  1.0  0.0       0.01    -562.02   -1060.68      -0.00      -0.07      -0.44       0.20      -1.07     -10.06       0.00
                           -0.00       0.44       0.14       0.00    -599.51      26.94     686.51      -2.52      -2.39      -0.00

   24   5.1  1.0  0.0       0.00      -0.65      -1.50       0.07       0.00     600.24      -8.19     686.42       0.08       0.00
                            0.00     -49.61      10.72     599.51      -0.00       0.25       2.40      -0.18     685.93      -0.00

   25   6.1  1.0  0.0       0.00      -0.16      -0.18       0.44    -600.24       0.00    -686.42      -8.19       1.49       0.00
                            0.00   -1198.66     -43.98     -26.94      -0.25      -0.00       0.15       0.20     -27.23      -0.00

   26   7.1  1.0  0.0      -2.16       1.61      -0.53      -0.20       8.19     686.42      -0.00     597.20      -0.00       0.00
                          -31.12       1.51       7.74    -686.51      -2.40      -0.15      -0.00      -0.03    -596.97      -0.00

   27   8.1  1.0  0.0      -0.01       0.01       0.16       1.07    -686.42       8.19    -597.20      -0.00       1.15       0.00
                        -1121.30     -28.74     792.06       2.52       0.18      -0.20       0.03      -0.00      16.57      -0.00

   28   9.1  1.0  0.0   -1121.72     700.36    -371.10      10.06      -0.08      -1.49       0.00      -1.15      -0.00       0.00
                            0.07       0.01       0.15       2.39    -685.93      27.23     596.97     -16.57      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.16
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -31.12

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1121.30

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1121.72
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.07


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00   -1085.52      30.13       2.09       0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.03
                         1034.21   -1649.95      33.96      -0.39       2.02      -0.92      -1.67       3.26       0.00      -7.64

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       1.11
                           -0.73     -13.81    -973.72      -1.17       1.39       0.66      -1.43     842.81      -0.00   -1376.23

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     644.96
                           -1.70       3.59       1.28      36.56     973.11     -25.45    -842.43      -1.42       0.00       2.42

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.29
                            0.87      -1.60      -1.93     750.52     -27.49     897.54     -26.91      -1.04      -0.00      -1.65

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       3.80
                           -0.32       0.03      -2.32    1795.56     -71.13    -375.15      10.27       0.30      -0.00       0.63

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -7.96       4.72
                          825.98     518.53      33.28       0.45       6.40      -0.31      -7.87     -47.36     -47.88       0.79

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.62       0.39
                          -43.21      -7.78     844.56       1.34       0.80      -1.89      -0.62    -969.25    -979.88     -25.04

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     981.01    -609.83
                            6.35       3.98       1.11     -33.53    -844.67      26.92     969.99      -1.06      -1.01       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00       0.00   -1284.41      35.65       2.48       0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00       0.01       0.00       0.00      -2.16      -0.01   -1121.72       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      31.12    1121.30      -0.07       0.00       0.00

   12   2.1  1.0  1.0       0.00     -15.24    -562.02      -0.65      -0.16       1.61       0.01     700.36       0.00       0.00
                           -0.00       0.30      -0.44      49.61    1198.66      -1.51      28.74      -0.01       0.00       0.00

   13   3.1  1.0  1.0      15.24       0.00   -1060.68      -1.50      -0.18      -0.53       0.16    -371.10       0.00       0.00
                           -0.30       0.00      -0.14     -10.72      43.98      -7.74    -792.06      -0.15       0.00       0.00

   14   4.1  1.0  1.0     562.02    1060.68      -0.00       0.07       0.44      -0.20       1.07      10.06       0.00       0.00
                            0.44       0.14      -0.00    -599.51      26.94     686.51      -2.52      -2.39       0.00       0.00

   15   5.1  1.0  1.0       0.65       1.50      -0.07       0.00    -600.24       8.19    -686.42      -0.08       0.00       0.00
                          -49.61      10.72     599.51       0.00       0.25       2.40      -0.18     685.93       0.00       0.00

   16   6.1  1.0  1.0       0.16       0.18      -0.44     600.24       0.00     686.42       8.19      -1.49       0.00       0.00
                        -1198.66     -43.98     -26.94      -0.25       0.00       0.15       0.20     -27.23       0.00       0.00

   17   7.1  1.0  1.0      -1.61       0.53       0.20      -8.19    -686.42      -0.00    -597.20       0.00       0.00       0.00
                            1.51       7.74    -686.51      -2.40      -0.15       0.00      -0.03    -596.97       0.00       0.00

   18   8.1  1.0  1.0      -0.01      -0.16      -1.07     686.42      -8.19     597.20      -0.00      -1.15       0.00       0.00
                          -28.74     792.06       2.52       0.18      -0.20       0.03       0.00      16.57       0.00       0.00

   19   9.1  1.0  1.0    -700.36     371.10     -10.06       0.08       1.49      -0.00       1.15      -0.00       0.00       0.00
                            0.01       0.15       2.39    -685.93      27.23     596.97     -16.57       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   21   2.1  1.0  0.0   94138.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   3.1  1.0  0.0       0.00   94138.51       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      15.24
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.30

   23   4.1  1.0  0.0       0.00       0.00   94138.57       0.00       0.00       0.00       0.00       0.00      -0.01     562.02
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.44

   24   5.1  1.0  0.0       0.00       0.00       0.00   94138.58       0.00       0.00       0.00       0.00      -0.00       0.65
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     -49.61

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   94138.61       0.00       0.00       0.00      -0.00       0.16
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00   -1198.66

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   95495.43       0.00       0.00       2.16      -1.61
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -31.12       1.51

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95495.62       0.00       0.01      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1121.30     -28.74

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95495.64    1121.72    -700.36
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.07       0.01

   29   1.1  1.0 -1.0      -0.00      -0.00      -0.01      -0.00      -0.00       2.16       0.01    1121.72   92034.46       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      31.12    1121.30      -0.07       0.00       0.00

   30   2.1  1.0 -1.0       0.00      15.24     562.02       0.65       0.16      -1.61      -0.01    -700.36       0.00   94138.46
                            0.00       0.30      -0.44      49.61    1198.66      -1.51      28.74      -0.01      -0.00       0.00

   31   3.1  1.0 -1.0     -15.24       0.00    1060.68       1.50       0.18       0.53      -0.16     371.10       0.00       0.00
                           -0.30      -0.00      -0.14     -10.72      43.98      -7.74    -792.06      -0.15       0.00       0.24

   32   4.1  1.0 -1.0    -562.02   -1060.68      -0.00      -0.07      -0.44       0.20      -1.07     -10.06       0.00       0.00
                            0.44       0.14       0.00    -599.51      26.94     686.51      -2.52      -2.39       0.00       1.08

   33   5.1  1.0 -1.0      -0.65      -1.50       0.07       0.00     600.24      -8.19     686.42       0.08       0.00       0.00
                          -49.61      10.72     599.51      -0.00       0.25       2.40      -0.18     685.93      -0.01    -900.92

   34   6.1  1.0 -1.0      -0.16      -0.18       0.44    -600.24       0.00    -686.42      -8.19       1.49       0.00       0.00
                        -1198.66     -43.98     -26.94      -0.25      -0.00       0.15       0.20     -27.23       0.00      32.91

   35   7.1  1.0 -1.0       1.61      -0.53      -0.20       8.19     686.42      -0.00     597.20      -0.00       0.00       0.00
                            1.51       7.74    -686.51      -2.40      -0.15      -0.00      -0.03    -596.97   -1585.74    -949.43

   36   8.1  1.0 -1.0       0.01       0.16       1.07    -686.42       8.19    -597.20      -0.00       1.15       0.00       0.00
                          -28.74     792.06       2.52       0.18      -0.20       0.03      -0.00      16.57      44.02      29.62

   37   9.1  1.0 -1.0     700.36    -371.10      10.06      -0.08      -1.49       0.00      -1.15      -0.00       0.00       0.00
                            0.01       0.15       2.39    -685.93      27.23     596.97     -16.57      -0.00       3.06       2.20


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00      -1.48      -0.00    -767.90
                           -0.00       0.00      -0.00      -0.00      21.31     767.60      -0.04

    2   2.1  0.0  0.0       2.24      -0.83     -24.65    -688.14     -14.23    -595.80       0.38
                           14.09     688.40      -0.25       1.38       2.34      -0.30     595.95

    3   3.1  0.0  0.0       1.92      -2.35     688.14     -24.65     595.80     -14.23      -0.91
                          -49.98      -6.27      -1.18       1.61       1.02      -0.44      -2.31

    4   4.1  0.0  0.0    1216.53     -24.86      -0.90       0.84      -1.00       1.22       1.37
                            0.23      -0.30    -687.91      30.57     595.73     -16.63      -2.34

    5   5.1  0.0  0.0      20.20     834.64       1.85      -0.37      -0.58      -0.52    -547.28
                           -0.38       1.07     -55.82   -1364.80       3.84      87.58       0.50

    6   6.1  0.0  0.0     -22.52   -1094.99      -2.06      -0.11      -1.10       0.17    -417.19
                           -0.02      -0.13      -7.07    -175.28     -18.84    -682.30      -0.13

    7   7.1  0.0  0.0      -2.78       0.24       5.46    -597.70      14.46    -686.00      -0.02
                           21.27    -597.61       3.91      -0.38      -6.89       0.15    -685.33

    8   8.1  0.0  0.0      -0.34      -0.93     597.73       5.47     686.02      14.46      -1.32
                          689.41      14.79       0.56      -0.19      -0.37       0.01      33.49

    9   9.1  0.0  0.0     323.13      -8.76       0.48      -4.70       0.55      -5.56      -0.00
                            0.76      -3.91    -597.27      23.71     685.88     -19.04      -6.86

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -1.75      -0.00    -908.55
                           -0.00       0.00      -0.00      -0.00      25.21     908.20      -0.05

   11   1.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.01       0.00       0.00      -2.16      -0.01   -1121.72
                           -0.00       0.00      -0.00      -0.00      31.12    1121.30      -0.07

   21   2.1  1.0  0.0     -15.24    -562.02      -0.65      -0.16       1.61       0.01     700.36
                            0.30      -0.44      49.61    1198.66      -1.51      28.74      -0.01

   22   3.1  1.0  0.0       0.00   -1060.68      -1.50      -0.18      -0.53       0.16    -371.10
                            0.00      -0.14     -10.72      43.98      -7.74    -792.06      -0.15

   23   4.1  1.0  0.0    1060.68      -0.00       0.07       0.44      -0.20       1.07      10.06
                            0.14      -0.00    -599.51      26.94     686.51      -2.52      -2.39

   24   5.1  1.0  0.0       1.50      -0.07       0.00    -600.24       8.19    -686.42      -0.08
                           10.72     599.51       0.00       0.25       2.40      -0.18     685.93

   25   6.1  1.0  0.0       0.18      -0.44     600.24       0.00     686.42       8.19      -1.49
                          -43.98     -26.94      -0.25       0.00       0.15       0.20     -27.23

   26   7.1  1.0  0.0       0.53       0.20      -8.19    -686.42      -0.00    -597.20       0.00
                            7.74    -686.51      -2.40      -0.15       0.00      -0.03    -596.97

   27   8.1  1.0  0.0      -0.16      -1.07     686.42      -8.19     597.20      -0.00      -1.15
                          792.06       2.52       0.18      -0.20       0.03       0.00      16.57

   28   9.1  1.0  0.0     371.10     -10.06       0.08       1.49      -0.00       1.15      -0.00
                            0.15       2.39    -685.93      27.23     596.97     -16.57       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      -0.00    1585.74     -44.02      -3.06

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.24      -1.08     900.92     -32.91     949.43     -29.62      -2.20

   31   3.1  1.0 -1.0   94138.51       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.47   -1437.78      39.46     595.54       3.62      -1.40

   32   4.1  1.0 -1.0       0.00   94138.57       0.00       0.00       0.00       0.00       0.00
                           -2.47      -0.00      -0.81    -849.32      17.78     970.48       0.31

   33   5.1  1.0 -1.0       0.00       0.00   94138.58       0.00       0.00       0.00       0.00
                         1437.78       0.81       0.00      -1.37       0.09       1.52     -38.51

   34   6.1  1.0 -1.0       0.00       0.00       0.00   94138.61       0.00       0.00       0.00
                          -39.46     849.32       1.37      -0.00      -2.39       0.29    -970.05

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   95495.43       0.00       0.00
                         -595.54     -17.78      -0.09       2.39      -0.00      -1.63      23.43

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   95495.62       0.00
                           -3.62    -970.48      -1.52      -0.29       1.63      -0.00     844.23

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   95495.64
                            1.40      -0.31      38.51     970.05     -23.43    -844.23       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by  -2789.38214648 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   94735.325       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   94735.284       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   94735.336       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   94735.163       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   94735.242       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   95403.337       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   95403.313
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000      -0.000      -0.000      -0.005       0.000      -0.000     -11.255      -0.881
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000       1.460       1.572     912.117      -1.818       5.369       6.671       0.549
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       3.166       2.712    1720.439      28.572     -31.850      -3.937      -0.484
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.002      -1.171      -3.318     -35.162    1180.366   -1548.551       0.338      -1.321
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000     -34.867     973.175      -1.273       2.620      -2.919       7.727     845.316
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000    -973.178     -34.864       1.189      -0.519      -0.161    -845.282       7.731
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -2.094     -20.124     842.587      -1.418      -0.825      -1.557      20.447     970.179
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -0.005    -842.589     -20.121       1.727      -0.741       0.243    -970.148      20.453
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+          -1085.968       0.544      -1.290       1.933    -773.971    -590.000      -0.035      -1.871
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.013       0.000      -0.000       0.000       0.000   -1385.704      67.717

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1034.210       0.726       1.701      -0.872       0.320    -825.978      43.215

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1649.953      13.813      -3.591       1.604      -0.032    -518.526       7.778

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -33.957     973.717      -1.277       1.931       2.315     -33.283    -844.558

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.394       1.172     -36.558    -750.524   -1795.563      -0.447      -1.345

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -2.015      -1.392    -973.112      27.491      71.126      -6.404      -0.804

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1085.525       0.917      -0.663      25.447    -897.543     375.150       0.310       1.886

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -30.131       1.666       1.431     842.434      26.909     -10.272       7.869       0.620

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.093      -3.263    -842.809       1.416       1.043      -0.297      47.357     969.246

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.004       0.000      -0.000      -0.000     -67.709   -1385.755

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -10.811   -1946.288       3.419      -2.332       0.889       1.120     -35.416

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      19.932     -70.680       0.320      -0.543      -0.034      30.075     974.972

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     973.550      -8.861      -0.425       1.520      -0.179    -845.146      20.916

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.356      -1.664    -972.846     -78.936     -10.004       5.533       0.795

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.003       1.954       2.283      43.235   -1930.121    -247.878      -0.530      -0.264

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               30.132       3.304       1.438     842.492       5.435     -26.643      -9.738      -0.524

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1085.553      -0.419      -0.628     -23.516     123.858    -964.920       0.214       0.017

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.063     842.806      -3.268      -3.311       0.707      -0.178    -969.205      47.366

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000       0.000       0.000       0.002      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000      -0.000       1.460       3.166      -1.171     -34.867    -973.178
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000       1.572       2.712      -3.318     973.175     -34.864
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.005     912.117    1720.439     -35.162      -1.273       1.189
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000      -1.818      28.572    1180.366       2.620      -0.519
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000      -0.000       5.369     -31.850   -1548.551      -2.919      -0.161
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000     -11.255       6.671      -3.937       0.338       7.727    -845.282
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000      -0.881       0.549      -0.484      -1.321     845.316       7.731
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           95403.329       0.000    1387.357    -862.430     456.979     -12.389       0.684      -6.647
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   98875.671      -0.000      -0.000       0.000       0.003      -0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+           1387.357      -0.000   92034.458       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+           -862.430      -0.000       0.000   94138.459       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+            456.979       0.000       0.000       0.000   94138.514       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+            -12.389       0.003       0.000       0.000       0.000   94138.570       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.684      -0.000       0.000       0.000       0.000       0.000   94138.582       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -6.647      -0.000       0.000       0.000       0.000       0.000       0.000   94138.606
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+              0.782      -2.478       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             -7.857      -0.006       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.001   -1284.883       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000
                              -11.198       0.000       0.000      -0.000      -0.000       0.000      -0.001      -0.006

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000
                               -6.348      -0.000       0.000       0.000       0.417      -0.627      70.163    1695.160

    3    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000       0.000
                               -3.981       0.000       0.000      -0.417       0.000      -0.202     -15.157      62.201

    4    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                               -1.108      -0.000      -0.000       0.627       0.202       0.000    -847.831      38.102

    5    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000
                               33.533       0.002       0.001     -70.163      15.157     847.831       0.000       0.351

    6    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              844.668      -0.000       0.006   -1695.160     -62.201     -38.102      -0.351       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000      -0.000
                              -26.922    1284.409     -44.016       2.142      10.941    -970.872      -3.391      -0.216

    8    1  |1 0>               0.000       0.000       0.000      -0.000      -0.000       0.000       0.000      -0.000
                             -969.994     -35.652   -1585.752     -40.651    1120.148       3.559       0.261      -0.286

    9    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                                1.056      -2.476       0.092       0.013       0.209       3.383    -970.047      38.514

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.429       0.000      -0.000      -0.000       0.000       0.000      -0.005       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001       0.000       0.000      -0.000       0.236       1.077    -900.920      32.908

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.068      -0.000      -0.000      -0.236      -0.000      -2.474    1437.784     -39.457

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -5.527       0.000      -0.000      -1.077       2.474       0.000       0.809     849.321

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -844.673      -0.000       0.005     900.920   -1437.784      -0.809      -0.000       1.365

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               33.533      -0.004      -0.000     -32.908      39.457    -849.321      -1.365       0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              969.984      35.651    1585.743     949.432     595.542      17.782       0.094      -2.391

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -26.925    1284.395     -44.016     -29.624       3.621     970.482       1.524       0.292

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.703      -0.075      -3.057      -2.204      -1.401       0.308     -38.513    -970.050

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -2.094      -0.005   -1085.968       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.001

    2    1  |0 0>             -20.124    -842.589       0.544       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.013    1034.210   -1649.953      33.957      -0.394

    3    1  |0 0>             842.587     -20.121      -1.290       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.726     -13.813    -973.717      -1.172

    4    1  |0 0>              -1.418       1.727       1.933       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.701       3.591       1.277      36.558

    5    1  |0 0>              -0.825      -0.741    -773.971       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.872      -1.604      -1.931     750.524

    6    1  |0 0>              -1.557       0.243    -590.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.320       0.032      -2.315    1795.563

    7    1  |0 0>              20.447    -970.148      -0.035       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1385.704     825.978     518.526      33.283       0.447

    8    1  |0 0>             970.179      20.453      -1.871       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -67.717     -43.215      -7.778     844.558       1.345

    9    1  |0 0>               0.782      -7.857      -0.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      11.198       6.348       3.981       1.108     -33.533

   10    1  |0 0>              -2.478      -0.006   -1284.883       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.002

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.001

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.000       0.417      -0.627      70.163

    3    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.417       0.000      -0.202     -15.157

    4    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000      -0.000       0.627       0.202       0.000    -847.831

    5    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.001     -70.163      15.157     847.831       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.006   -1695.160     -62.201     -38.102      -0.351

    7    1  |1 1>+          95495.427       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000     -44.016       2.142      10.941    -970.872      -3.391

    8    1  |1 1>+              0.000   95495.624       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000   -1585.752     -40.651    1120.148       3.559       0.261

    9    1  |1 1>+              0.000       0.000   95495.640      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.092       0.013       0.209       3.383    -970.047

    1    1  |1 0>              -0.000       0.000      -0.000   92034.458       0.000       0.000       0.000       0.000
                               44.016    1585.752      -0.092       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000      -0.000       0.000       0.000   94138.459       0.000       0.000       0.000
                               -2.142      40.651      -0.013      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.000       0.000       0.000       0.000   94138.514       0.000       0.000
                              -10.941   -1120.148      -0.209      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000   94138.570       0.000
                              970.872      -3.559      -3.383      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000       0.000       0.000   94138.582
                                3.391      -0.261     970.047      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.216       0.286     -38.514      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.049    -844.244      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.049       0.000      23.434      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              844.244     -23.434       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.001       0.007       0.000
                            -1585.743      44.016       3.057       0.000      -0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000     -21.549    -794.823      -0.926
                             -949.432      29.624       2.204      -0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.001      21.549       0.000   -1500.025      -2.125
                             -595.542      -3.621       1.401       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.007     794.823    1500.025       0.000       0.099
                              -17.782    -970.482      -0.308       0.000       0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000       0.926       2.125      -0.099       0.000
                               -0.094      -1.524      38.513      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.000       0.227       0.254      -0.621     848.869
                                2.391      -0.292     970.050       0.000       0.000       0.000      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       3.059      -2.283       0.753       0.278     -11.582
                                0.000       1.628     -23.433      -0.000       0.000      -0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000       0.008      -0.011      -0.226      -1.520     970.750
                               -1.628       0.000    -844.229      -0.000      -0.000       0.000      -0.000      -0.000

    9    1  |1 1>-              0.000       0.000       0.000    1586.356    -990.452     524.821     -14.230       0.115
                               23.433     844.229      -0.000      -0.000      -0.000      -0.000       0.000       0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1085.525      30.131       2.093      -0.000       0.000       0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.015      -0.917      -1.666       3.263      -0.000      10.811     -19.932    -973.550

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.392       0.663      -1.431     842.809       0.004    1946.288      70.680       8.861

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              973.112     -25.447    -842.434      -1.416      -0.000      -3.419      -0.320       0.425

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -27.491     897.543     -26.909      -1.043       0.000       2.332       0.543      -1.520

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -71.126    -375.150      10.272       0.297       0.000      -0.889       0.034       0.179

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.404      -0.310      -7.869     -47.357      67.709      -1.120     -30.075     845.146

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.804      -1.886      -0.620    -969.246    1385.755      35.416    -974.972     -20.916

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -844.668      26.922     969.994      -1.056       1.429      -0.001      -1.068       5.527

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000   -1284.409      35.652       2.476      -0.000      -0.000       0.000      -0.000

    1    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.006      44.016    1585.752      -0.092      -0.000      -0.000       0.000       0.000

    2    1  |1 1>+             -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             1695.160      -2.142      40.651      -0.013       0.000      -0.000       0.236       1.077

    3    1  |1 1>+              0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               62.201     -10.941   -1120.148      -0.209      -0.000      -0.236      -0.000      -2.474

    4    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               38.102     970.872      -3.559      -3.383      -0.000      -1.077       2.474       0.000

    5    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                0.351       3.391      -0.261     970.047       0.005     900.920   -1437.784      -0.809

    6    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000       0.216       0.286     -38.514      -0.000     -32.908      39.457    -849.321

    7    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.216       0.000      -0.049    -844.244    1585.743     949.432     595.542      17.782

    8    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.286       0.049       0.000      23.434     -44.016     -29.624       3.621     970.482

    9    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               38.514     844.244     -23.434       0.000      -3.057      -2.204      -1.401       0.308

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.001      -0.007
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000      21.549     794.823
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.001     -21.549       0.000    1500.025
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.007    -794.823   -1500.025       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.926      -2.125       0.099
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    6    1  |1 0>           94138.606       0.000       0.000       0.000       0.000      -0.227      -0.254       0.621
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.000

    7    1  |1 0>               0.000   95495.427       0.000       0.000      -3.059       2.283      -0.753      -0.278
                               -0.000       0.000       0.000       0.000       0.000      -0.000       0.000      -0.000

    8    1  |1 0>               0.000       0.000   95495.624       0.000      -0.008       0.011       0.226       1.520
                               -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    9    1  |1 0>               0.000       0.000       0.000   95495.640   -1586.356     990.452    -524.821      14.230
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000      -0.000

    1    1  |1 1>-              0.000      -3.059      -0.008   -1586.356   92034.458       0.000       0.000       0.000
                                0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -0.227       2.283       0.011     990.452       0.000   94138.459       0.000       0.000
                                0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -0.254      -0.753       0.226    -524.821       0.000       0.000   94138.514       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.621      -0.278       1.520      14.230       0.000       0.000       0.000   94138.570
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-           -848.869      11.582    -970.750      -0.115       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000     970.743      11.584      -2.107       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-           -970.743       0.000    -844.562       0.004       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-            -11.584     844.562       0.000      -1.628       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              2.107      -0.004       1.628       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.003     -30.132   -1085.553       0.063

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.356      -1.954      -3.304       0.419    -842.806

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                1.664      -2.283      -1.438       0.628       3.268

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              972.846     -43.235    -842.492      23.516       3.311

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               78.936    1930.121      -5.435    -123.858      -0.707

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               10.004     247.878      26.643     964.920       0.178

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -5.533       0.530       9.738      -0.214     969.205

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.795       0.264       0.524      -0.017     -47.366

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              844.673     -33.533    -969.984      26.925       9.703

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.000       0.004     -35.651   -1284.395       0.075

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.005       0.000   -1585.743      44.016       3.057

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -900.920      32.908    -949.432      29.624       2.204

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             1437.784     -39.457    -595.542      -3.621       1.401

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.809     849.321     -17.782    -970.482      -0.308

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000       1.365      -0.094      -1.524      38.513

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -1.365       0.000       2.391      -0.292     970.050

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.094      -2.391       0.000       1.628     -23.433

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                1.524       0.292      -1.628       0.000    -844.229

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -38.513    -970.050      23.433     844.229      -0.000

    1    1  |1 0>              -0.000      -0.000       3.059       0.008    1586.356
                                0.000      -0.000       0.000       0.000       0.000

    2    1  |1 0>               0.926       0.227      -2.283      -0.011    -990.452
                                0.000      -0.000      -0.000       0.000       0.000

    3    1  |1 0>               2.125       0.254       0.753      -0.226     524.821
                               -0.000      -0.000       0.000      -0.000       0.000

    4    1  |1 0>              -0.099      -0.621       0.278      -1.520     -14.230
                                0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000     848.869     -11.582     970.750       0.115
                               -0.000       0.000      -0.000       0.000      -0.000

    6    1  |1 0>            -848.869       0.000    -970.743     -11.584       2.107
                                0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              11.582     970.743       0.000     844.562      -0.004
                               -0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>            -970.750      11.584    -844.562       0.000       1.628
                                0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.115      -2.107       0.004      -1.628       0.000
                               -0.000      -0.000       0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          94138.582       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   94138.606       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   95495.427       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   95495.624       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   95495.640
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1 -2789.38231238    -0.00016589      -36.41      0.00000000        0.00      0.0000
    2 -2788.96781211     0.41433437    90935.88      0.41450027    90972.29     11.2791
    3 -2788.96781211     0.41433437    90935.88      0.41450027    90972.29     11.2791
    4 -2788.96781206     0.41433443    90935.90      0.41450032    90972.30     11.2791
    5 -2788.96109229     0.42105419    92410.71      0.42122009    92447.12     11.4620
    6 -2788.96109227     0.42105421    92410.72      0.42122010    92447.13     11.4620
    7 -2788.96109215     0.42105434    92410.75      0.42122023    92447.16     11.4620
    8 -2788.96109211     0.42105437    92410.75      0.42122026    92447.16     11.4620
    9 -2788.96109209     0.42105439    92410.76      0.42122029    92447.17     11.4620
   10 -2788.96095525     0.42119123    92440.79      0.42135713    92477.20     11.4657
   11 -2788.96095525     0.42119123    92440.79      0.42135713    92477.20     11.4657
   12 -2788.96095519     0.42119130    92440.80      0.42135719    92477.21     11.4657
   13 -2788.96095517     0.42119132    92440.81      0.42135721    92477.22     11.4657
   14 -2788.96095509     0.42119139    92440.83      0.42135728    92477.23     11.4657
   15 -2788.96095507     0.42119141    92440.83      0.42135731    92477.24     11.4657
   16 -2788.96095498     0.42119150    92440.85      0.42135739    92477.26     11.4657
   17 -2788.95712939     0.42501709    93280.47      0.42518299    93316.88     11.5698
   18 -2788.95712937     0.42501712    93280.48      0.42518301    93316.88     11.5698
   19 -2788.95712923     0.42501726    93280.51      0.42518315    93316.92     11.5698
   20 -2788.95571880     0.42642769    93590.06      0.42659358    93626.47     11.6082
   21 -2788.95571853     0.42642795    93590.12      0.42659385    93626.53     11.6082
   22 -2788.95571850     0.42642798    93590.12      0.42659387    93626.53     11.6082
   23 -2788.95571825     0.42642823    93590.18      0.42659413    93626.59     11.6082
   24 -2788.95571814     0.42642835    93590.20      0.42659424    93626.61     11.6082
   25 -2788.94622149     0.43592500    95674.48      0.43609089    95710.89     11.8666
   26 -2788.93649341     0.44565307    97809.54      0.44581897    97845.95     12.1314
   27 -2788.93649341     0.44565307    97809.54      0.44581897    97845.95     12.1314
   28 -2788.93649340     0.44565309    97809.55      0.44581898    97845.96     12.1314
   29 -2788.93392711     0.44821937    98372.78      0.44838527    98409.19     12.2012
   30 -2788.93392710     0.44821938    98372.78      0.44838528    98409.19     12.2012
   31 -2788.93392697     0.44821952    98372.81      0.44838541    98409.22     12.2012
   32 -2788.93392688     0.44821960    98372.83      0.44838550    98409.24     12.2012
   33 -2788.93392688     0.44821960    98372.83      0.44838550    98409.24     12.2012
   34 -2788.93363398     0.44851251    98437.12      0.44867840    98473.53     12.2092
   35 -2788.93363397     0.44851252    98437.12      0.44867841    98473.53     12.2092
   36 -2788.93363369     0.44851279    98437.18      0.44867869    98473.59     12.2092
   37 -2788.92458886     0.45755763   100422.29      0.45772352   100458.70     12.4553

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99981261 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000001  0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00000000 -0.00000005  0.00000002  0.00000225  0.00185866  0.00064231 -0.00047179  0.64714799
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00000000 -0.00000066  0.00000001 -0.00000002  0.64702452 -0.01258732  0.00056422 -0.00184410
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000000 -0.00000000  0.00000211  0.00000001 -0.00054401  0.00600574 -0.00771918  0.00098778
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000000  0.00000005 -0.00000000 -0.00000001  0.01248326  0.64420402  0.06050689 -0.00063922
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000002 -0.00000001 -0.00000002 -0.00174394 -0.06040592  0.64429029  0.00054738
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000000  0.00303311  0.00163410  0.16941086 -0.00000040  0.00000001  0.00000004 -0.00000429
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000000  0.16941718 -0.00022551 -0.00303107 -0.00001086  0.00000017 -0.00000003  0.00000029
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.00019623 -0.16943368  0.00163792 -0.00000002 -0.00000027  0.00000024 -0.00000006
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>           0.00043545 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000232 -0.00000054 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000  0.00178682  0.92204283 -0.00144491  0.00000001  0.00000028 -0.00000028  0.00000004
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00003251  0.01682084 -0.00003269 -0.00023396 -0.00188679  0.00176475 -0.00088033
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00000000 -0.00002113 -0.00890942  0.00000955 -0.00058847 -0.01456489  0.01526429 -0.00176390
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000002 -0.00002536  0.00024183  0.00000471 -0.00727992 -0.40601247  0.44025286  0.00113606
                           0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |1 1>+          0.00000000  0.01648284 -0.00003382 -0.00014390 -0.29846006  0.00493597  0.00054501  0.01155843
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00000000 -0.00014430 -0.00002955 -0.01648081  0.01154637  0.00023883 -0.00013984  0.29854839
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00002154  0.24517396 -0.00047389  0.00078209  0.14594460 -0.00296234 -0.00014917 -0.00390311
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00000005  0.00078138 -0.00038569 -0.24516348 -0.00390734 -0.00020594  0.00012971 -0.14596357
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.01117374 -0.00047268  0.00000091 -0.00000033 -0.00253413 -0.12390548 -0.11428498  0.00014130
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.02852075  0.00149949  0.92160510  0.00000017 -0.00000001  0.00000000 -0.00000133

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000000  0.00055434 -0.00003269 -0.01611898  0.00069865  0.00059237 -0.00029924  0.31885974

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000 -0.00002937 -0.00002008 -0.01011287 -0.00570202 -0.00090374  0.00031716 -0.50784393

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000000 -0.01648065  0.00003728 -0.00035450 -0.29869098  0.00530140 -0.00103757  0.01129503

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000001 -0.00002714 -0.00065402 -0.00000192  0.00259872  0.17853468  0.57137018  0.00013581

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00003700 -0.01647401  0.00003464  0.00007380 -0.00361453 -0.02612566  0.00106298

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01116920  0.00048567  0.00680188  0.00000396 -0.00329232 -0.16079219  0.05011584  0.00037453

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00031002  0.00047609  0.24506589 -0.00038401  0.00022075  0.00615599 -0.00307701  0.00050456

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00002154  0.24504071 -0.00047727  0.00758414 -0.14598630  0.00302645 -0.00016418 -0.00014898

   1    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.92160288 -0.00174127  0.02852362 -0.00000659  0.00000013 -0.00000000  0.00000012

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000 -0.00068643  0.00000110  0.00003422  0.59953645 -0.01092837  0.00032699  0.00161418

   3    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.01901924 -0.00004047  0.00024661  0.02170576 -0.00026428  0.00005141 -0.00620775

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00011293 -0.00005169 -0.01648227  0.00186159 -0.00081907  0.00023002 -0.29922194

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00003651  0.01646816 -0.00005161  0.00072029  0.02664670  0.00178441  0.00054304

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000003 -0.00000611 -0.00065386 -0.00000392  0.01055258  0.58368679  0.13162279 -0.00114119

   7    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00031003 -0.00046032 -0.24508156 -0.00008843  0.00015868  0.00271848 -0.00624852  0.00078983

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01116947  0.00001322  0.00680229 -0.00001184  0.00075880  0.03692773 -0.16435614 -0.00024108

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000065  0.00758419  0.00007377 -0.24504578 -0.00014398  0.00027540 -0.00011938  0.14601553

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00099798 -0.00006776 -0.00040656  0.00001971 -0.00001820 -0.00061593 -0.00000112 -0.00000017
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00067036  0.00000104  0.00000294 -0.00081063  0.00048848 -0.00004747  0.00000056 -0.00000012
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.64706934  0.00037594 -0.00006283  0.00000104 -0.00000057 -0.00000114  0.00060540 -0.00000037
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>          -0.00524569 -0.00000379  0.00000050 -0.00000129  0.00000073 -0.00000045 -0.00000171  0.00016954
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00824468  0.00000245 -0.00000051  0.00000041 -0.00000086  0.00000005 -0.00001481 -0.00005344
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000008  0.00000349  0.00002168 -0.00000005  0.00000005  0.00000835  0.00000001 -0.00000000
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |0 0>           0.00000002 -0.00000014 -0.00000074 -0.00000262 -0.00000954 -0.00000027 -0.00000000  0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000823  0.00002019 -0.00000325 -0.00000000  0.00000000  0.00000006  0.00000317  0.00000041
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000010
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000590 -0.00000368  0.00000063 -0.00000000  0.00000000 -0.00000000  0.00000057 -0.00000014
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.28121652  0.69774884 -0.11789756 -0.00001960  0.00001517 -0.00064893  0.20105423  0.00441297
                           0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.52937090 -0.30638840  0.05177438 -0.00029314  0.00006585 -0.00218006  0.54302602 -0.00305967
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.01983117  0.00050483  0.00018122 -0.00017406  0.00113607  0.00002569  0.00059309  0.57725481
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+          0.00008267 -0.00340093 -0.01977649  0.29660012 -0.66714122  0.01976932  0.00022640  0.00086550
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.00081434 -0.07940910 -0.47057769 -0.00200797 -0.00292307 -0.55320893 -0.00201095  0.00014558
                           0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

   7    1  |1 1>+         -0.00009142  0.00000047  0.00000296 -0.00017811  0.00011436 -0.00000741 -0.00000009 -0.00000004
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+          0.00052217  0.00001659  0.00009837  0.00000004  0.00000159  0.00014065  0.00000053  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.00011919  0.00000055 -0.00000011  0.00000047 -0.00000019  0.00000001  0.00000294 -0.00002558
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000001  0.00000063  0.00000371 -0.00000001  0.00000002  0.00000040 -0.00000000 -0.00000000

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00101968  0.11188024  0.66226544 -0.00402572  0.01467013  0.27027850  0.00093179 -0.00004742

   3    1  |1 0>           0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                           0.00188772  0.06435036  0.37928324  0.02992048 -0.02334612 -0.50884142 -0.00176610 -0.00002457

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                           0.00006201 -0.00211084 -0.01093013  0.72005860  0.12092864  0.02247875  0.00018989  0.00052424

   5    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.01638394  0.02789384 -0.00472246  0.00084490  0.00009552 -0.00000168  0.00984773 -0.57683054

   6    1  |1 0>           0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.29835989  0.49461242 -0.08368010  0.00005951 -0.00000016 -0.00163569  0.53049564  0.01989866

   7    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00649656  0.00000388 -0.00000073  0.00000050 -0.00000034 -0.00000004  0.00000309 -0.00004369

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.14587994  0.00009242 -0.00001563 -0.00000008  0.00000006 -0.00000055  0.00013619  0.00000126

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00009288 -0.00000005 -0.00000044  0.00018277 -0.00010301  0.00001085  0.00000010  0.00000008

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000001  0.00000001  0.00000006 -0.00000027 -0.00000057 -0.00000007 -0.00000000  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00044623 -0.00031326 -0.00169626  0.49380855 -0.29698213  0.02520931  0.00022533  0.00002392

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00006783 -0.00204262 -0.01228006  0.38499096  0.67163094 -0.01316325  0.00003805 -0.00014296

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                           0.00059967 -0.06874908 -0.40954879 -0.02370641  0.01555547  0.60022889  0.00127263  0.00000426

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.29876317 -0.38222296  0.06406353 -0.00020007  0.00007904 -0.00138511  0.61886020  0.00530075

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.01713115  0.00690556 -0.00119871 -0.00000540  0.00002879  0.00011635 -0.01337364  0.57757200

   7    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.14589103  0.00007337 -0.00001258 -0.00000007  0.00000005 -0.00000078  0.00012969  0.00000049

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00637703 -0.00000276  0.00000053 -0.00000001  0.00000017  0.00000006  0.00000006  0.00001884

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00080068 -0.00001397 -0.00008208  0.00000517 -0.00000420 -0.00013214 -0.00000074 -0.00000000

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000047  0.00000000  0.00000002  0.00000006 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00000173  0.00000021  0.00001003 -0.00032625  0.00957326 -0.00212322  0.00016078  0.48824351
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |0 0>           0.00008090  0.00000028  0.00000115  0.00048950 -0.48824500  0.00036453  0.00157849  0.00957442
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000028  0.00007285 -0.00000013 -0.00908737 -0.00036121 -0.48797327  0.01667779 -0.00212649
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00000011  0.00000232 -0.00000003  0.45223028  0.00105147 -0.00212730  0.18421355  0.00021166
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>           0.00000001 -0.00000269 -0.00000008 -0.18401270  0.00128649  0.01887309  0.45193337 -0.00021493
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>           0.00928407 -0.00610616  0.71701961  0.00000002  0.00000259 -0.00000102  0.00000011 -0.00001145
                           0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.71704487  0.00091431 -0.00927669  0.00000008  0.00011185 -0.00000035 -0.00000028  0.00000053
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00083521  0.71707817  0.00611750 -0.00000291  0.00000034  0.00010136 -0.00000095  0.00000003
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000 -0.00000000 -0.00000000 -0.00001627  0.00000006 -0.00000034 -0.00000153  0.00000002
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   1    1  |1 1>+          0.00012361 -0.06491089 -0.00002774 -0.00000020  0.00000002  0.00000643 -0.00000004 -0.00000001
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00053275  0.28027568  0.00022557 -0.00165703 -0.00017667 -0.07292703  0.00283781 -0.00019892
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00034686 -0.14850291  0.00001038  0.00051762 -0.00031591 -0.13780292  0.00320900 -0.00034010
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.00042316  0.00402777 -0.00008107  0.13434677  0.00014281 -0.00239106 -0.07922371  0.00000887
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.27473714 -0.00055120  0.00104167  0.00036423 -0.07802601  0.00016236  0.00011041 -0.00126330
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00104111 -0.00018212  0.27475942  0.00001387  0.00126431  0.00024124 -0.00005904 -0.07799057
                           0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+         -0.33915218 -0.00064470 -0.00276153 -0.00050496  0.60203928 -0.00148380 -0.00065440  0.00256687
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00276037 -0.00015019  0.33906955  0.00019063 -0.00256993 -0.00138281  0.00024146  0.60207902
                          -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.00065366  0.00000126  0.00000365  0.35323906  0.00137297  0.01526170  0.59860600 -0.00031001
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00232899 -0.00003220  0.06485899  0.00000000  0.00000019  0.00000002  0.00000001  0.00000025

   2    1  |1 0>           0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01056949 -0.00024060  0.26858222 -0.00002147 -0.00168319  0.00022520 -0.00002502 -0.08281446

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00034745 -0.00014434  0.16853397  0.00003815  0.00148493 -0.00028703  0.00008334  0.13214139

   4    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.27460482  0.00061806  0.00726816  0.00015532 -0.07798005  0.00017865  0.00047763 -0.00118961

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00045159 -0.01089889  0.00004649 -0.00142861 -0.00059932 -0.00237265 -0.15589206  0.00008336

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00060814 -0.27454733 -0.00026413  0.00134394  0.00018561  0.07804566  0.00344186  0.00017426

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00067141  0.00940892 -0.00001943  0.69514106  0.00020173  0.00501887 -0.00675694 -0.00017086

   8    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00064694  0.33886218  0.00014509 -0.00937095  0.00142210  0.60176588 -0.02101791  0.00139943

   9    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.33876710 -0.00065969 -0.01216633 -0.00014952 -0.60196552  0.00146193  0.00182777  0.01413944

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.06486587  0.00012253  0.00232902 -0.00000002 -0.00000683  0.00000001 -0.00000000 -0.00000002

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.01149086  0.00001733 -0.00051303 -0.00036054  0.15582409 -0.00038260 -0.00049932 -0.00392329

   3    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.31694915 -0.00066784 -0.00567673 -0.00004652  0.00564082 -0.00003659 -0.00003578  0.00148483

   4    1  |1 1>-          0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00324325 -0.00055133  0.27474577  0.00006595  0.00223817 -0.00030672  0.00005489  0.07794313

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00060144  0.27452324  0.00054731 -0.00410519  0.00017469  0.07788991 -0.00578897  0.00030581

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00010096 -0.01089976  0.00007826 -0.13576405 -0.00056750 -0.00355586 -0.07658837  0.00008673

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00062217 -0.33902724  0.00050849  0.00043369  0.00146782  0.60210862 -0.00440822  0.00023034

   8    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00001791  0.00940613  0.00000560 -0.34198242  0.00117024  0.01024087  0.60513830 -0.00010684

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.01216604  0.00048539  0.33884845 -0.00015515 -0.01414053  0.00026322 -0.00018267 -0.60192694

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01614007 -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>          -0.00000004 -0.00000023 -0.00000307  0.00000882 -0.00015906 -0.00277312  0.00292678  0.02019310
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000009 -0.00000030 -0.00000427 -0.00000155  0.01869312  0.58511581  0.00033114  0.00049021
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00000104 -0.00001295  0.00000076  0.00000005  0.00090597 -0.00035425  0.58529674  0.01166660
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   5    1  |0 0>           0.00002139  0.00000021  0.00000011 -0.00000000  0.55469180 -0.01784457 -0.00461543  0.18612073
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000657 -0.00000020  0.00000007 -0.00000007 -0.18620477  0.00558048 -0.01087093  0.55454555
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000001 -0.01106444 -0.13722110  0.49663051  0.00000005  0.00000632 -0.00000231  0.00000080
                          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000001  0.02998248  0.49573002  0.13764068  0.00000816  0.00027240 -0.00000045 -0.00000039
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000001  0.51436133 -0.03184785  0.00265989  0.00001259  0.00000003  0.00024469 -0.00000322
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.57074543  0.00000003 -0.00000001 -0.00000001 -0.00001541  0.00000048  0.00000102  0.00000017
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000001  0.07582729 -0.00457668 -0.00021464  0.00001089 -0.00000020  0.00020043 -0.00000300
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |1 1>+         -0.00000036 -0.47114345  0.02848483  0.00116239 -0.00053484  0.00030570  0.24924277  0.00621268
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00000048  0.24963194 -0.01513584 -0.00085636  0.01091668  0.00013117  0.47015804  0.00363823
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+          0.00001258 -0.00681250 -0.00032574 -0.00004975  0.44022899 -0.01476624 -0.00429341 -0.29853503
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000007  0.02719757  0.44385839  0.12763386  0.00942478  0.26578171 -0.00023581 -0.00064085
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+          0.00000000  0.00654735  0.12747455 -0.44469716 -0.00035182 -0.00825912 -0.00100837 -0.00926189
                           0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00091383 -0.00509573 -0.08325348 -0.02502103  0.01077559  0.34093654 -0.00040752 -0.00070970
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   8    1  |1 1>+          0.00000228 -0.00127213 -0.02498827  0.08340419 -0.00048116 -0.00650935 -0.00100912 -0.01174945
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.47399742  0.00000988  0.00016060  0.00004785 -0.22069324  0.00674255  0.00768020 -0.32550033
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00123271  0.02380716 -0.07213076  0.00000023  0.00000608  0.00000020 -0.00000087

   2    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.00761353  0.14332645 -0.42931408 -0.00016977  0.00154315 -0.00094796 -0.00973210

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00416538  0.07978472 -0.27232649  0.00041465  0.00162436  0.00127196  0.01566840

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000004 -0.02710479 -0.43971931 -0.14100274  0.00879993  0.26606671 -0.00026081  0.00066291

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000185  0.01827938 -0.00177708 -0.00033727 -0.03827327  0.00190024  0.00073954 -0.53024873

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00000046  0.46143995 -0.02805824 -0.00110926  0.00050948 -0.00026030 -0.26635814  0.01548386

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.47378238  0.00240178 -0.00030469 -0.00005951 -0.39214890  0.01223441  0.01032586  0.02852767

   8    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01315151  0.08688831 -0.00524467 -0.00024612  0.01216129 -0.00000186  0.34029513  0.00634213

   9    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00091350 -0.00506332 -0.08252443 -0.02732424 -0.01043329 -0.34031326  0.00037176 -0.00029959

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.00441304 -0.07199822 -0.02383930 -0.00000701 -0.00023082  0.00000029  0.00000023

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.00000008 -0.00113998 -0.01880600 -0.00458544 -0.01766295 -0.53158332  0.00061899 -0.00050107

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000  0.03127267  0.50884070  0.15837179 -0.00075789 -0.01939620  0.00010522  0.00011742

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000  0.00757724  0.13435148 -0.44267651  0.00025921 -0.00369417  0.00121012  0.00925920

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000010 -0.46142016  0.02817983  0.00064827 -0.01999410  0.00033823 -0.26554857 -0.01475194

   6    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00001396  0.01831436 -0.00119624 -0.00022363 -0.47823007  0.01604724  0.01723139 -0.23162470

   7    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.01315095 -0.08689923  0.00519214  0.00040543  0.00607133  0.00019884  0.34110096 -0.00267556

   8    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.47381248  0.00241215 -0.00014571 -0.00000640  0.17154930 -0.00549369 -0.00266563 -0.35390238

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00002764 -0.00124563 -0.02730119  0.08268413  0.00015727 -0.00293479  0.00036342  0.01174987

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01068837
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.58505708  0.00000108  0.00001019  0.00004170  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   3    1  |0 0>           0.00275983  0.00000005 -0.00035073  0.00000308 -0.00000001
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |0 0>          -0.00333205  0.00030539  0.00000027 -0.00000012 -0.00000029
                          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>          -0.00633460  0.00001189  0.00000067 -0.00000009  0.00000304
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.01910979 -0.00001531  0.00000018 -0.00000015 -0.00000123
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.00002423  0.00417115  0.00620223 -0.43749022 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>          -0.00000648  0.00070487  0.43751234  0.00620958  0.00000000
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |0 0>           0.00000000 -0.43754244  0.00076396 -0.00416061 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000 -0.00000001 -0.00000000  0.82112695
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000017 -0.37396132  0.00037256 -0.00052607 -0.00000001
                           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00106051 -0.10293608  0.00010295 -0.00018390 -0.00000014
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   3    1  |1 1>+         -0.00160818  0.05485784 -0.00003101  0.00004965 -0.00000010
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   4    1  |1 1>+          0.01005481 -0.00146780  0.00016063  0.00002862  0.00000348
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00824706 -0.00008994 -0.10118642 -0.00050874 -0.00000001
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+         -0.26582928  0.00016677  0.00051060 -0.10104635 -0.00000001
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   7    1  |1 1>+         -0.00650713  0.00056636  0.56309444 -0.00387869 -0.00063524
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.34061028 -0.00078886  0.00387962  0.56328905 -0.00000159
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.01138809 -0.00000077 -0.00108622  0.00000493 -0.32946573
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00002900 -0.00051286  0.01295110  0.37373400  0.00000000

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                          -0.28244963  0.00017373 -0.00376827 -0.09879552 -0.00000001

   3    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.45066295  0.00011376 -0.00004449 -0.06193829  0.00000001

   4    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00804586  0.00006788  0.10081554 -0.00254553 -0.00000001

   5    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.01840397  0.00401125  0.00015392 -0.00001275  0.00000031

   6    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00024572  0.10080419 -0.00006916  0.00019600  0.00000010

   7    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00071380  0.01562505  0.00106972 -0.00001559  0.32932743

   8    1  |1 0>           0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00124508  0.56329813 -0.00055846  0.00079206 -0.00914163

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00293641  0.00055577  0.56320598 -0.01951058 -0.00063491

   1    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000461 -0.00039055 -0.37373659  0.01295037  0.00000000

   2    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00546667  0.00000613  0.00455177  0.00019077  0.00000001

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00535618 -0.00009428 -0.11654537  0.00194188 -0.00000000

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.26589840  0.00029872 -0.00106005 -0.10100712  0.00000001

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00173655 -0.10108436  0.00007196 -0.00030008 -0.00000005

   6    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00838879  0.00400513  0.00002460 -0.00002465 -0.00000373

   7    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00027333 -0.56291841  0.00059843  0.00029334  0.00914102

   8    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01207920  0.01563679 -0.00001537  0.00002479  0.32933894

   9    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.34057275  0.00031300  0.01951516  0.56301860 -0.00001919


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1  -2789.38231238     -0.00016589      -36.41      0.00000000        0.00      0.0000
     2   1  -2788.96781211      0.41433437    90935.88      0.41450027    90972.29     11.2791
     3   1  -2788.96781211      0.41433437    90935.88      0.41450027    90972.29     11.2791
     4   1  -2788.96781206      0.41433443    90935.90      0.41450032    90972.30     11.2791
     5   1  -2788.96109229      0.42105419    92410.71      0.42122009    92447.12     11.4620
     6   1  -2788.96109227      0.42105421    92410.72      0.42122010    92447.13     11.4620
     7   1  -2788.96109215      0.42105434    92410.75      0.42122023    92447.16     11.4620
     8   1  -2788.96109211      0.42105437    92410.75      0.42122026    92447.16     11.4620
     9   1  -2788.96109209      0.42105439    92410.76      0.42122029    92447.17     11.4620
    10   1  -2788.96095525      0.42119123    92440.79      0.42135713    92477.20     11.4657
    11   1  -2788.96095525      0.42119123    92440.79      0.42135713    92477.20     11.4657
    12   1  -2788.96095519      0.42119130    92440.80      0.42135719    92477.21     11.4657
    13   1  -2788.96095517      0.42119132    92440.81      0.42135721    92477.22     11.4657
    14   1  -2788.96095509      0.42119139    92440.83      0.42135728    92477.23     11.4657
    15   1  -2788.96095507      0.42119141    92440.83      0.42135731    92477.24     11.4657
    16   1  -2788.96095498      0.42119150    92440.85      0.42135739    92477.26     11.4657
    17   1  -2788.95712939      0.42501709    93280.47      0.42518299    93316.88     11.5698
    18   1  -2788.95712937      0.42501712    93280.48      0.42518301    93316.88     11.5698
    19   1  -2788.95712923      0.42501726    93280.51      0.42518315    93316.92     11.5698
    20   1  -2788.95571880      0.42642769    93590.06      0.42659358    93626.47     11.6082
    21   1  -2788.95571853      0.42642795    93590.12      0.42659385    93626.53     11.6082
    22   1  -2788.95571850      0.42642798    93590.12      0.42659387    93626.53     11.6082
    23   1  -2788.95571825      0.42642823    93590.18      0.42659413    93626.59     11.6082
    24   1  -2788.95571814      0.42642835    93590.20      0.42659424    93626.61     11.6082
    25   1  -2788.94622149      0.43592500    95674.48      0.43609089    95710.89     11.8666
    26   1  -2788.93649341      0.44565307    97809.54      0.44581897    97845.95     12.1314
    27   1  -2788.93649341      0.44565307    97809.54      0.44581897    97845.95     12.1314
    28   1  -2788.93649340      0.44565309    97809.55      0.44581898    97845.96     12.1314
    29   1  -2788.93392711      0.44821937    98372.78      0.44838527    98409.19     12.2012
    30   1  -2788.93392710      0.44821938    98372.78      0.44838528    98409.19     12.2012
    31   1  -2788.93392697      0.44821952    98372.81      0.44838541    98409.22     12.2012
    32   1  -2788.93392688      0.44821960    98372.83      0.44838550    98409.24     12.2012
    33   1  -2788.93392688      0.44821960    98372.83      0.44838550    98409.24     12.2012
    34   1  -2788.93363398      0.44851251    98437.12      0.44867840    98473.53     12.2092
    35   1  -2788.93363397      0.44851252    98437.12      0.44867841    98473.53     12.2092
    36   1  -2788.93363369      0.44851279    98437.18      0.44867869    98473.59     12.2092
    37   1  -2788.92458886      0.45755763   100422.29      0.45772352   100458.70     12.4553

 E0 =  -2789.38214648 is the energy of the lowest zeroth-order state
 E1 =  -2789.38231238 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99981261 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000006  0.00000001  0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000000 -0.00000005  0.00000002  0.00000225  0.00185866  0.00064231 -0.00047179  0.64714799
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000000 -0.00000066  0.00000001 -0.00000002  0.64702452 -0.01258732  0.00056422 -0.00184410
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000000 -0.00000000  0.00000211  0.00000001 -0.00054401  0.00600574 -0.00771918  0.00098778
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000000  0.00000005 -0.00000000 -0.00000001  0.01248326  0.64420402  0.06050689 -0.00063922
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000002 -0.00000001 -0.00000002 -0.00174394 -0.06040592  0.64429029  0.00054738
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000000  0.00303311  0.00163410  0.16941086 -0.00000040  0.00000001  0.00000004 -0.00000429
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000000  0.16941718 -0.00022551 -0.00303107 -0.00001086  0.00000017 -0.00000003  0.00000029
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.00019623 -0.16943368  0.00163792 -0.00000002 -0.00000027  0.00000024 -0.00000006
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00043545 -0.00000000 -0.00000000  0.00000000  0.00000005  0.00000232 -0.00000054 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000  0.00178682  0.92204283 -0.00144491  0.00000001  0.00000028 -0.00000028  0.00000004
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000000  0.00003251  0.01682084 -0.00003269 -0.00023396 -0.00188679  0.00176475 -0.00088033
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00000000 -0.00002113 -0.00890942  0.00000955 -0.00058847 -0.01456489  0.01526429 -0.00176390
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000002 -0.00002536  0.00024183  0.00000471 -0.00727992 -0.40601247  0.44025286  0.00113606
                                0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00000000  0.01648284 -0.00003382 -0.00014390 -0.29846006  0.00493597  0.00054501  0.01155843
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00000000 -0.00014430 -0.00002955 -0.01648081  0.01154637  0.00023883 -0.00013984  0.29854839
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00002154  0.24517396 -0.00047389  0.00078209  0.14594460 -0.00296234 -0.00014917 -0.00390311
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00000005  0.00078138 -0.00038569 -0.24516348 -0.00390734 -0.00020594  0.00012971 -0.14596357
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.01117374 -0.00047268  0.00000091 -0.00000033 -0.00253413 -0.12390548 -0.11428498  0.00014130
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.02852075  0.00149949  0.92160510  0.00000017 -0.00000001  0.00000000 -0.00000133

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000000  0.00055434 -0.00003269 -0.01611898  0.00069865  0.00059237 -0.00029924  0.31885974

 22  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000 -0.00002937 -0.00002008 -0.01011287 -0.00570202 -0.00090374  0.00031716 -0.50784393

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000000 -0.01648065  0.00003728 -0.00035450 -0.29869098  0.00530140 -0.00103757  0.01129503

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000001 -0.00002714 -0.00065402 -0.00000192  0.00259872  0.17853468  0.57137018  0.00013581

 25  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00003700 -0.01647401  0.00003464  0.00007380 -0.00361453 -0.02612566  0.00106298

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01116920  0.00048567  0.00680188  0.00000396 -0.00329232 -0.16079219  0.05011584  0.00037453

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00031002  0.00047609  0.24506589 -0.00038401  0.00022075  0.00615599 -0.00307701  0.00050456

 28  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00002154  0.24504071 -0.00047727  0.00758414 -0.14598630  0.00302645 -0.00016418 -0.00014898

 29  1     1    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.92160288 -0.00174127  0.02852362 -0.00000659  0.00000013 -0.00000000  0.00000012

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000 -0.00068643  0.00000110  0.00003422  0.59953645 -0.01092837  0.00032699  0.00161418

 31  1     3    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.01901924 -0.00004047  0.00024661  0.02170576 -0.00026428  0.00005141 -0.00620775

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00011293 -0.00005169 -0.01648227  0.00186159 -0.00081907  0.00023002 -0.29922194

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00003651  0.01646816 -0.00005161  0.00072029  0.02664670  0.00178441  0.00054304

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000003 -0.00000611 -0.00065386 -0.00000392  0.01055258  0.58368679  0.13162279 -0.00114119

 35  1     7    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00031003 -0.00046032 -0.24508156 -0.00008843  0.00015868  0.00271848 -0.00624852  0.00078983

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01116947  0.00001322  0.00680229 -0.00001184  0.00075880  0.03692773 -0.16435614 -0.00024108

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000065  0.00758419  0.00007377 -0.24504578 -0.00014398  0.00027540 -0.00011938  0.14601553


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00099798 -0.00006776 -0.00040656  0.00001971 -0.00001820 -0.00061593 -0.00000112 -0.00000017
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00067036  0.00000104  0.00000294 -0.00081063  0.00048848 -0.00004747  0.00000056 -0.00000012
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.64706934  0.00037594 -0.00006283  0.00000104 -0.00000057 -0.00000114  0.00060540 -0.00000037
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00524569 -0.00000379  0.00000050 -0.00000129  0.00000073 -0.00000045 -0.00000171  0.00016954
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00824468  0.00000245 -0.00000051  0.00000041 -0.00000086  0.00000005 -0.00001481 -0.00005344
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000008  0.00000349  0.00002168 -0.00000005  0.00000005  0.00000835  0.00000001 -0.00000000
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  8  1     8    1  |0 0>        0.00000002 -0.00000014 -0.00000074 -0.00000262 -0.00000954 -0.00000027 -0.00000000  0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000823  0.00002019 -0.00000325 -0.00000000  0.00000000  0.00000006  0.00000317  0.00000041
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000010  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000010
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00000590 -0.00000368  0.00000063 -0.00000000  0.00000000 -0.00000000  0.00000057 -0.00000014
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.28121652  0.69774884 -0.11789756 -0.00001960  0.00001517 -0.00064893  0.20105423  0.00441297
                                0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.52937090 -0.30638840  0.05177438 -0.00029314  0.00006585 -0.00218006  0.54302602 -0.00305967
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.01983117  0.00050483  0.00018122 -0.00017406  0.00113607  0.00002569  0.00059309  0.57725481
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+       0.00008267 -0.00340093 -0.01977649  0.29660012 -0.66714122  0.01976932  0.00022640  0.00086550
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00081434 -0.07940910 -0.47057769 -0.00200797 -0.00292307 -0.55320893 -0.00201095  0.00014558
                                0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000  0.00000001  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00009142  0.00000047  0.00000296 -0.00017811  0.00011436 -0.00000741 -0.00000009 -0.00000004
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.00052217  0.00001659  0.00009837  0.00000004  0.00000159  0.00014065  0.00000053  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.00011919  0.00000055 -0.00000011  0.00000047 -0.00000019  0.00000001  0.00000294 -0.00002558
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000001  0.00000063  0.00000371 -0.00000001  0.00000002  0.00000040 -0.00000000 -0.00000000

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000003 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00101968  0.11188024  0.66226544 -0.00402572  0.01467013  0.27027850  0.00093179 -0.00004742

 22  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000002 -0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000
                                0.00188772  0.06435036  0.37928324  0.02992048 -0.02334612 -0.50884142 -0.00176610 -0.00002457

 23  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                                0.00006201 -0.00211084 -0.01093013  0.72005860  0.12092864  0.02247875  0.00018989  0.00052424

 24  1     5    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.01638394  0.02789384 -0.00472246  0.00084490  0.00009552 -0.00000168  0.00984773 -0.57683054

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.29835989  0.49461242 -0.08368010  0.00005951 -0.00000016 -0.00163569  0.53049564  0.01989866

 26  1     7    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00649656  0.00000388 -0.00000073  0.00000050 -0.00000034 -0.00000004  0.00000309 -0.00004369

 27  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.14587994  0.00009242 -0.00001563 -0.00000008  0.00000006 -0.00000055  0.00013619  0.00000126

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00009288 -0.00000005 -0.00000044  0.00018277 -0.00010301  0.00001085  0.00000010  0.00000008

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000001  0.00000001  0.00000006 -0.00000027 -0.00000057 -0.00000007 -0.00000000  0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00044623 -0.00031326 -0.00169626  0.49380855 -0.29698213  0.02520931  0.00022533  0.00002392

 31  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00006783 -0.00204262 -0.01228006  0.38499096  0.67163094 -0.01316325  0.00003805 -0.00014296

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000  0.00000001  0.00000000  0.00000000
                                0.00059967 -0.06874908 -0.40954879 -0.02370641  0.01555547  0.60022889  0.00127263  0.00000426

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.29876317 -0.38222296  0.06406353 -0.00020007  0.00007904 -0.00138511  0.61886020  0.00530075

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.01713115  0.00690556 -0.00119871 -0.00000540  0.00002879  0.00011635 -0.01337364  0.57757200

 35  1     7    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.14589103  0.00007337 -0.00001258 -0.00000007  0.00000005 -0.00000078  0.00012969  0.00000049

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00637703 -0.00000276  0.00000053 -0.00000001  0.00000017  0.00000006  0.00000006  0.00001884

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00080068 -0.00001397 -0.00008208  0.00000517 -0.00000420 -0.00013214 -0.00000074 -0.00000000


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000047  0.00000000  0.00000002  0.00000006 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000173  0.00000021  0.00001003 -0.00032625  0.00957326 -0.00212322  0.00016078  0.48824351
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00008090  0.00000028  0.00000115  0.00048950 -0.48824500  0.00036453  0.00157849  0.00957442
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000028  0.00007285 -0.00000013 -0.00908737 -0.00036121 -0.48797327  0.01667779 -0.00212649
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00000011  0.00000232 -0.00000003  0.45223028  0.00105147 -0.00212730  0.18421355  0.00021166
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>        0.00000001 -0.00000269 -0.00000008 -0.18401270  0.00128649  0.01887309  0.45193337 -0.00021493
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00928407 -0.00610616  0.71701961  0.00000002  0.00000259 -0.00000102  0.00000011 -0.00001145
                                0.00000000 -0.00000000  0.00000002 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.71704487  0.00091431 -0.00927669  0.00000008  0.00011185 -0.00000035 -0.00000028  0.00000053
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00083521  0.71707817  0.00611750 -0.00000291  0.00000034  0.00010136 -0.00000095  0.00000003
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000 -0.00000000 -0.00000000 -0.00001627  0.00000006 -0.00000034 -0.00000153  0.00000002
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00012361 -0.06491089 -0.00002774 -0.00000020  0.00000002  0.00000643 -0.00000004 -0.00000001
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00053275  0.28027568  0.00022557 -0.00165703 -0.00017667 -0.07292703  0.00283781 -0.00019892
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00034686 -0.14850291  0.00001038  0.00051762 -0.00031591 -0.13780292  0.00320900 -0.00034010
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.00042316  0.00402777 -0.00008107  0.13434677  0.00014281 -0.00239106 -0.07922371  0.00000887
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.27473714 -0.00055120  0.00104167  0.00036423 -0.07802601  0.00016236  0.00011041 -0.00126330
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00104111 -0.00018212  0.27475942  0.00001387  0.00126431  0.00024124 -0.00005904 -0.07799057
                                0.00000000 -0.00000000  0.00000001  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.33915218 -0.00064470 -0.00276153 -0.00050496  0.60203928 -0.00148380 -0.00065440  0.00256687
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00276037 -0.00015019  0.33906955  0.00019063 -0.00256993 -0.00138281  0.00024146  0.60207902
                               -0.00000000 -0.00000000  0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00065366  0.00000126  0.00000365  0.35323906  0.00137297  0.01526170  0.59860600 -0.00031001
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00232899 -0.00003220  0.06485899  0.00000000  0.00000019  0.00000002  0.00000001  0.00000025

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01056949 -0.00024060  0.26858222 -0.00002147 -0.00168319  0.00022520 -0.00002502 -0.08281446

 22  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00034745 -0.00014434  0.16853397  0.00003815  0.00148493 -0.00028703  0.00008334  0.13214139

 23  1     4    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.27460482  0.00061806  0.00726816  0.00015532 -0.07798005  0.00017865  0.00047763 -0.00118961

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00045159 -0.01089889  0.00004649 -0.00142861 -0.00059932 -0.00237265 -0.15589206  0.00008336

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00060814 -0.27454733 -0.00026413  0.00134394  0.00018561  0.07804566  0.00344186  0.00017426

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00067141  0.00940892 -0.00001943  0.69514106  0.00020173  0.00501887 -0.00675694 -0.00017086

 27  1     8    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00064694  0.33886218  0.00014509 -0.00937095  0.00142210  0.60176588 -0.02101791  0.00139943

 28  1     9    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.33876710 -0.00065969 -0.01216633 -0.00014952 -0.60196552  0.00146193  0.00182777  0.01413944

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.06486587  0.00012253  0.00232902 -0.00000002 -0.00000683  0.00000001 -0.00000000 -0.00000002

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.01149086  0.00001733 -0.00051303 -0.00036054  0.15582409 -0.00038260 -0.00049932 -0.00392329

 31  1     3    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.31694915 -0.00066784 -0.00567673 -0.00004652  0.00564082 -0.00003659 -0.00003578  0.00148483

 32  1     4    1  |1 1>-       0.00000000  0.00000000 -0.00000001  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00324325 -0.00055133  0.27474577  0.00006595  0.00223817 -0.00030672  0.00005489  0.07794313

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00060144  0.27452324  0.00054731 -0.00410519  0.00017469  0.07788991 -0.00578897  0.00030581

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00010096 -0.01089976  0.00007826 -0.13576405 -0.00056750 -0.00355586 -0.07658837  0.00008673

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00062217 -0.33902724  0.00050849  0.00043369  0.00146782  0.60210862 -0.00440822  0.00023034

 36  1     8    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00001791  0.00940613  0.00000560 -0.34198242  0.00117024  0.01024087  0.60513830 -0.00010684

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000001 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.01216604  0.00048539  0.33884845 -0.00015515 -0.01414053  0.00026322 -0.00018267 -0.60192694


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01614007 -0.00000000  0.00000000  0.00000000  0.00000023 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00000004 -0.00000023 -0.00000307  0.00000882 -0.00015906 -0.00277312  0.00292678  0.02019310
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000009 -0.00000030 -0.00000427 -0.00000155  0.01869312  0.58511581  0.00033114  0.00049021
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00000104 -0.00001295  0.00000076  0.00000005  0.00090597 -0.00035425  0.58529674  0.01166660
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00002139  0.00000021  0.00000011 -0.00000000  0.55469180 -0.01784457 -0.00461543  0.18612073
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000657 -0.00000020  0.00000007 -0.00000007 -0.18620477  0.00558048 -0.01087093  0.55454555
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000001 -0.01106444 -0.13722110  0.49663051  0.00000005  0.00000632 -0.00000231  0.00000080
                               -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000001  0.02998248  0.49573002  0.13764068  0.00000816  0.00027240 -0.00000045 -0.00000039
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000001  0.51436133 -0.03184785  0.00265989  0.00001259  0.00000003  0.00024469 -0.00000322
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.57074543  0.00000003 -0.00000001 -0.00000001 -0.00001541  0.00000048  0.00000102  0.00000017
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00000001  0.07582729 -0.00457668 -0.00021464  0.00001089 -0.00000020  0.00020043 -0.00000300
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000036 -0.47114345  0.02848483  0.00116239 -0.00053484  0.00030570  0.24924277  0.00621268
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00000048  0.24963194 -0.01513584 -0.00085636  0.01091668  0.00013117  0.47015804  0.00363823
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+       0.00001258 -0.00681250 -0.00032574 -0.00004975  0.44022899 -0.01476624 -0.00429341 -0.29853503
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000007  0.02719757  0.44385839  0.12763386  0.00942478  0.26578171 -0.00023581 -0.00064085
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00000000  0.00654735  0.12747455 -0.44469716 -0.00035182 -0.00825912 -0.00100837 -0.00926189
                                0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00091383 -0.00509573 -0.08325348 -0.02502103  0.01077559  0.34093654 -0.00040752 -0.00070970
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.00000228 -0.00127213 -0.02498827  0.08340419 -0.00048116 -0.00650935 -0.00100912 -0.01174945
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.47399742  0.00000988  0.00016060  0.00004785 -0.22069324  0.00674255  0.00768020 -0.32550033
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00123271  0.02380716 -0.07213076  0.00000023  0.00000608  0.00000020 -0.00000087

 21  1     2    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.00761353  0.14332645 -0.42931408 -0.00016977  0.00154315 -0.00094796 -0.00973210

 22  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00416538  0.07978472 -0.27232649  0.00041465  0.00162436  0.00127196  0.01566840

 23  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000004 -0.02710479 -0.43971931 -0.14100274  0.00879993  0.26606671 -0.00026081  0.00066291

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000185  0.01827938 -0.00177708 -0.00033727 -0.03827327  0.00190024  0.00073954 -0.53024873

 25  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00000046  0.46143995 -0.02805824 -0.00110926  0.00050948 -0.00026030 -0.26635814  0.01548386

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.47378238  0.00240178 -0.00030469 -0.00005951 -0.39214890  0.01223441  0.01032586  0.02852767

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01315151  0.08688831 -0.00524467 -0.00024612  0.01216129 -0.00000186  0.34029513  0.00634213

 28  1     9    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00091350 -0.00506332 -0.08252443 -0.02732424 -0.01043329 -0.34031326  0.00037176 -0.00029959

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.00441304 -0.07199822 -0.02383930 -0.00000701 -0.00023082  0.00000029  0.00000023

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.00000008 -0.00113998 -0.01880600 -0.00458544 -0.01766295 -0.53158332  0.00061899 -0.00050107

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000  0.03127267  0.50884070  0.15837179 -0.00075789 -0.01939620  0.00010522  0.00011742

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000001  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000  0.00757724  0.13435148 -0.44267651  0.00025921 -0.00369417  0.00121012  0.00925920

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000010 -0.46142016  0.02817983  0.00064827 -0.01999410  0.00033823 -0.26554857 -0.01475194

 34  1     6    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00001396  0.01831436 -0.00119624 -0.00022363 -0.47823007  0.01604724  0.01723139 -0.23162470

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.01315095 -0.08689923  0.00519214  0.00040543  0.00607133  0.00019884  0.34110096 -0.00267556

 36  1     8    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.47381248  0.00241215 -0.00014571 -0.00000640  0.17154930 -0.00549369 -0.00266563 -0.35390238

 37  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00002764 -0.00124563 -0.02730119  0.08268413  0.00015727 -0.00293479  0.00036342  0.01174987


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.01068837
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.58505708  0.00000108  0.00001019  0.00004170  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00275983  0.00000005 -0.00035073  0.00000308 -0.00000001
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00333205  0.00030539  0.00000027 -0.00000012 -0.00000029
                               -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>       -0.00633460  0.00001189  0.00000067 -0.00000009  0.00000304
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.01910979 -0.00001531  0.00000018 -0.00000015 -0.00000123
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.00002423  0.00417115  0.00620223 -0.43749022 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000648  0.00070487  0.43751234  0.00620958  0.00000000
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00000000 -0.43754244  0.00076396 -0.00416061 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000 -0.00000001 -0.00000000  0.82112695
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000017 -0.37396132  0.00037256 -0.00052607 -0.00000001
                                0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00106051 -0.10293608  0.00010295 -0.00018390 -0.00000014
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00160818  0.05485784 -0.00003101  0.00004965 -0.00000010
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.01005481 -0.00146780  0.00016063  0.00002862  0.00000348
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00824706 -0.00008994 -0.10118642 -0.00050874 -0.00000001
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.26582928  0.00016677  0.00051060 -0.10104635 -0.00000001
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00650713  0.00056636  0.56309444 -0.00387869 -0.00063524
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.34061028 -0.00078886  0.00387962  0.56328905 -0.00000159
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.01138809 -0.00000077 -0.00108622  0.00000493 -0.32946573
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00002900 -0.00051286  0.01295110  0.37373400  0.00000000

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                               -0.28244963  0.00017373 -0.00376827 -0.09879552 -0.00000001

 22  1     3    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.45066295  0.00011376 -0.00004449 -0.06193829  0.00000001

 23  1     4    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00804586  0.00006788  0.10081554 -0.00254553 -0.00000001

 24  1     5    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.01840397  0.00401125  0.00015392 -0.00001275  0.00000031

 25  1     6    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00024572  0.10080419 -0.00006916  0.00019600  0.00000010

 26  1     7    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00071380  0.01562505  0.00106972 -0.00001559  0.32932743

 27  1     8    1  |1 0>        0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00124508  0.56329813 -0.00055846  0.00079206 -0.00914163

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00293641  0.00055577  0.56320598 -0.01951058 -0.00063491

 29  1     1    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000461 -0.00039055 -0.37373659  0.01295037  0.00000000

 30  1     2    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00546667  0.00000613  0.00455177  0.00019077  0.00000001

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00535618 -0.00009428 -0.11654537  0.00194188 -0.00000000

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.26589840  0.00029872 -0.00106005 -0.10100712  0.00000001

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00173655 -0.10108436  0.00007196 -0.00030008 -0.00000005

 34  1     6    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00838879  0.00400513  0.00002460 -0.00002465 -0.00000373

 35  1     7    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00027333 -0.56291841  0.00059843  0.00029334  0.00914102

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01207920  0.01563679 -0.00001537  0.00002479  0.32933894

 37  1     9    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.34057275  0.00031300  0.01951516  0.56301860 -0.00001919



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.96%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   41.88%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   41.86%    0.02%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%   41.50%    0.37%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.36%   41.51%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    2.87%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    2.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    2.87%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%   85.02%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.02%    0.02%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.01%   16.48%   19.38%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    8.91%    0.00%    0.00%    0.01%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.03%    0.01%    0.00%    0.00%    8.91%
 17  1     7    1  |1 1>+         0.00%    6.01%    0.00%    0.00%    2.13%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    6.01%    0.00%    0.00%    0.00%    2.13%
 19  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%    1.54%    1.31%    0.00%
 20  1     1    1  |1 0>          0.00%    0.08%    0.00%   84.94%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%   10.17%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.00%   25.79%
 23  1     4    1  |1 0>          0.00%    0.03%    0.00%    0.00%    8.92%    0.00%    0.00%    0.01%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    3.19%   32.65%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    0.07%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    2.59%    0.25%    0.00%
 27  1     8    1  |1 0>          0.00%    0.00%    6.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    6.00%    0.00%    0.01%    2.13%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   84.94%    0.00%    0.08%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   35.94%    0.01%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.04%    0.00%    0.00%    0.05%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.03%    0.00%    0.00%    0.00%    8.95%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.03%    0.00%    0.00%    0.07%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.01%   34.07%    1.73%    0.00%
 35  1     7    1  |1 1>-         0.00%    0.00%    6.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%    0.14%    2.70%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.01%    0.00%    6.00%    0.00%    0.00%    0.00%    2.13%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>         41.87%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         7.91%   48.69%    1.39%    0.00%    0.00%    0.00%    4.04%    0.00%
 13  1     3    1  |1 1>+        28.02%    9.39%    0.27%    0.00%    0.00%    0.00%   29.49%    0.00%
 14  1     4    1  |1 1>+         0.04%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   33.32%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.04%    8.80%   44.51%    0.04%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.63%   22.14%    0.00%    0.00%   30.60%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    1.25%   43.86%    0.00%    0.02%    7.31%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.41%   14.39%    0.09%    0.05%   25.89%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.01%   51.85%    1.46%    0.05%    0.00%    0.00%
 24  1     5    1  |1 0>          0.03%    0.08%    0.00%    0.00%    0.00%    0.00%    0.01%   33.27%
 25  1     6    1  |1 0>          8.90%   24.46%    0.70%    0.00%    0.00%    0.00%   28.14%    0.04%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          2.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%   24.38%    8.82%    0.06%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.02%   14.82%   45.11%    0.02%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.47%   16.77%    0.06%    0.02%   36.03%    0.00%    0.00%
 33  1     5    1  |1 1>-         8.93%   14.61%    0.41%    0.00%    0.00%    0.00%   38.30%    0.00%
 34  1     6    1  |1 1>-         0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.02%   33.36%
 35  1     7    1  |1 1>-         2.13%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.00%   23.84%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   23.84%    0.00%    0.00%    0.01%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.01%    0.00%   23.81%    0.03%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   20.45%    0.00%    0.00%    3.39%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    3.39%    0.00%    0.04%   20.42%    0.00%
  7  1     7    1  |0 0>          0.01%    0.00%   51.41%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         51.42%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   51.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    7.86%    0.00%    0.00%    0.00%    0.53%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    2.21%    0.00%    0.00%    0.00%    1.90%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    1.80%    0.00%    0.00%    0.63%    0.00%
 15  1     5    1  |1 1>+         7.55%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    7.55%    0.00%    0.00%    0.00%    0.00%    0.61%
 17  1     7    1  |1 1>+        11.50%    0.00%    0.00%    0.00%   36.25%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%   11.50%    0.00%    0.00%    0.00%    0.00%   36.25%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%   12.48%    0.00%    0.02%   35.83%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.42%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.01%    0.00%    7.21%    0.00%    0.00%    0.00%    0.00%    0.69%
 22  1     3    1  |1 0>          0.00%    0.00%    2.84%    0.00%    0.00%    0.00%    0.00%    1.75%
 23  1     4    1  |1 0>          7.54%    0.00%    0.01%    0.00%    0.61%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    2.43%    0.00%
 25  1     6    1  |1 0>          0.00%    7.54%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.01%    0.00%   48.32%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%   11.48%    0.00%    0.01%    0.00%   36.21%    0.04%    0.00%
 28  1     9    1  |1 0>         11.48%    0.00%    0.01%    0.00%   36.24%    0.00%    0.00%    0.02%
 29  1     1    1  |1 1>-         0.42%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    2.43%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-        10.05%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    7.55%    0.00%    0.00%    0.00%    0.00%    0.61%
 33  1     5    1  |1 1>-         0.00%    7.54%    0.00%    0.00%    0.00%    0.61%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.01%    0.00%    1.84%    0.00%    0.00%    0.59%    0.00%
 35  1     7    1  |1 1>-         0.00%   11.49%    0.00%    0.00%    0.00%   36.25%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.01%    0.00%   11.70%    0.00%    0.01%   36.62%    0.00%
 37  1     9    1  |1 1>-         0.01%    0.00%   11.48%    0.00%    0.02%    0.00%    0.00%   36.23%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.04%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.03%   34.24%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   34.26%    0.01%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   30.77%    0.03%    0.00%    3.46%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    3.47%    0.00%    0.01%   30.75%
  7  1     7    1  |0 0>          0.00%    0.01%    1.88%   24.66%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.09%   24.57%    1.89%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   26.46%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         32.58%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.57%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   22.20%    0.08%    0.00%    0.00%    0.00%    6.21%    0.00%
 13  1     3    1  |1 1>+         0.00%    6.23%    0.02%    0.00%    0.01%    0.00%   22.10%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   19.38%    0.02%    0.00%    8.91%
 15  1     5    1  |1 1>+         0.00%    0.07%   19.70%    1.63%    0.01%    7.06%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    1.62%   19.78%    0.00%    0.01%    0.00%    0.01%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.69%    0.06%    0.01%   11.62%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.06%    0.70%    0.00%    0.00%    0.00%    0.01%
 19  1     9    1  |1 1>+        22.47%    0.00%    0.00%    0.00%    4.87%    0.00%    0.01%   10.60%
 20  1     1    1  |1 0>          0.00%    0.00%    0.06%    0.52%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.01%    2.05%   18.43%    0.00%    0.00%    0.00%    0.01%
 22  1     3    1  |1 0>          0.00%    0.00%    0.64%    7.42%    0.00%    0.00%    0.00%    0.02%
 23  1     4    1  |1 0>          0.00%    0.07%   19.34%    1.99%    0.01%    7.08%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%    0.03%    0.00%    0.00%    0.15%    0.00%    0.00%   28.12%
 25  1     6    1  |1 0>          0.00%   21.29%    0.08%    0.00%    0.00%    0.00%    7.09%    0.02%
 26  1     7    1  |1 0>         22.45%    0.00%    0.00%    0.00%   15.38%    0.01%    0.01%    0.08%
 27  1     8    1  |1 0>          0.02%    0.75%    0.00%    0.00%    0.01%    0.00%   11.58%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.68%    0.07%    0.01%   11.58%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.52%    0.06%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.04%    0.00%    0.03%   28.26%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.10%   25.89%    2.51%    0.00%    0.04%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.01%    1.81%   19.60%    0.00%    0.00%    0.00%    0.01%
 33  1     5    1  |1 1>-         0.00%   21.29%    0.08%    0.00%    0.04%    0.00%    7.05%    0.02%
 34  1     6    1  |1 1>-         0.00%    0.03%    0.00%    0.00%   22.87%    0.03%    0.03%    5.36%
 35  1     7    1  |1 1>-         0.02%    0.76%    0.00%    0.00%    0.00%    0.00%   11.63%    0.00%
 36  1     8    1  |1 1>-        22.45%    0.00%    0.00%    0.00%    2.94%    0.00%    0.00%   12.52%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.07%    0.68%    0.00%    0.00%    0.00%    0.01%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>         34.23%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.04%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%   19.14%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%   19.14%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%   19.14%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   67.42%
 11  1     1    1  |1 1>+         0.00%   13.98%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    1.06%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.30%    0.00%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.01%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.01%    0.00%    1.02%    0.00%    0.00%
 16  1     6    1  |1 1>+         7.07%    0.00%    0.00%    1.02%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.00%   31.71%    0.00%    0.00%
 18  1     8    1  |1 1>+        11.60%    0.00%    0.00%   31.73%    0.00%
 19  1     9    1  |1 1>+         0.01%    0.00%    0.00%    0.00%   10.85%
 20  1     1    1  |1 0>          0.00%    0.00%    0.02%   13.97%    0.00%
 21  1     2    1  |1 0>          7.98%    0.00%    0.00%    0.98%    0.00%
 22  1     3    1  |1 0>         20.31%    0.00%    0.00%    0.38%    0.00%
 23  1     4    1  |1 0>          0.01%    0.00%    1.02%    0.00%    0.00%
 24  1     5    1  |1 0>          0.03%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    1.02%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.02%    0.00%    0.00%   10.85%
 27  1     8    1  |1 0>          0.00%   31.73%    0.00%    0.00%    0.01%
 28  1     9    1  |1 0>          0.00%    0.00%   31.72%    0.04%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%   13.97%    0.02%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    1.36%    0.00%    0.00%
 32  1     4    1  |1 1>-         7.07%    0.00%    0.00%    1.02%    0.00%
 33  1     5    1  |1 1>-         0.00%    1.02%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.01%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%   31.69%    0.00%    0.00%    0.01%
 36  1     8    1  |1 1>-         0.01%    0.02%    0.00%    0.00%   10.85%
 37  1     9    1  |1 1>-        11.60%    0.00%    0.04%   31.70%    0.00%


 No matrix element <i|DMX|i> larger than 5E-7
 No matrix element <i|DMX|1> larger than 5E-7


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      24     1483.10       500      610      700      900      950      970     1000      129      960     1700   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS    OPER   
                                         1101     1401     1411     1412     1650     1100     1400     1410     1200     1210   
                                          SR      EKINR    POTR     PVPR    MOLCAS      S      EKIN      POT      H0       H01  
                                         1080     1600     1380     1700(1)
                                         AOSYM     SMH     JKOP     OPER   

              2       7     3265.70       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI     LSINT        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     81260.93  71343.03     25.19   5121.44   4760.18      6.94      0.32      3.58
 REAL TIME  *     82142.18 SEC
 DISK USED  *         3.26 GB (local),       50.58 GB (total)
 SF USED    *        16.21 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/USERDEF energy=  -2788.924588856801

              CI              CI           MULTI         RHF-SCF
  -2788.87861419  -2788.85871333  -2787.86933878  -2787.15563624
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
