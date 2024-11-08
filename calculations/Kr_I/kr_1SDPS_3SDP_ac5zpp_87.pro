
 Working directory              : /wrk/irikura/molpro.0jBOhYrJUV/
 Global scratch directory       : /wrk/irikura/molpro.0jBOhYrJUV/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.0jBOhYrJUV/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   14
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.01 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/8)
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Kr};
 
 basis=aug-cc-pwCV5Z-PP
 
 rhf
 
 {multi,wmk
     occ,7,9
     wf,sym=1,spin=0;state,10;
     wf,sym=1,spin=2;state,9;
     expec2,lxx,lyy,lzz;
 }
 table, energy, ll
 title, Energies and &lt;L**2&gt; values
 
 core,0,0
 
 {ci;wf,sym=1,spin=0;state,10; save,5201.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=2;state,9; save,5202.2}
 hlsdiag(11) = energd
 
 table,hlsdiag
 
 {ci;hlsmat,ecp,5201.2,5202.2;print,vls=0,hls=0}                                 !compute and diagonalize SO matrix
 Commands initialized (847), CPU time= 0.01 sec, 718 directives.
 Default parameters read. Elapsed time= 0.15 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 25-Sep-24          TIME: 10:14:02  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  56000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCV5Z-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Kr   ECP ECP10MDF                 selected for group  1
 Library entry KR     S aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     P aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     D aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     F aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     G aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     H aug-cc-pwCV5Z-PP     selected for orbital group  1
 Library entry KR     I aug-cc-pwCV5Z-PP     selected for orbital group  1


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

   1  KR     26.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   26
 NUMBER OF PRIMITIVE AOS:         465
 NUMBER OF SYMMETRY AOS:          332
 NUMBER OF CONTRACTIONS:          265   (  129Ag  +  136Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   1 1 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4
                                        5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 7 8 91011121314  15 7 8 9101112131415
                                        7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9  10111213141516171819
                                       202122232425262728
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 1 2 3   1 2 3 1 2 3 4 5 6 7
                                        8 910 4 5 6 7 8 910   4 5 6 7 8 910 4 5 6   7 8 910 4 5 6 7 8 9  10 4 5 6 7 8 910 4 5
                                        6 7 8 910 4 5 6 7 8   9101112131415161718  19202111121314151617  18192021111213141516
                                       17181920211112131415  161718192021


 Eigenvalues of metric

         1 0.549E-04 0.126E-03 0.540E-03 0.104E-02 0.104E-02 0.104E-02 0.104E-02 0.104E-02
         2 0.275E-04 0.275E-04 0.275E-04 0.398E-03 0.398E-03 0.398E-03 0.296E-02 0.296E-02


 Contracted 2-electron integrals neglected if value below      1.0D-12
 AO integral compression algorithm  1   Integral accuracy      1.0D-12

     560.988 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 29.360 MB, node maximum: 50.594 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   22335719.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15996659      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   511790813. AND WROTE     3785086. INTEGRALS IN     12 RECORDS. CPU TIME:     2.07 SEC, REAL TIME:     2.16 SEC
 SORT2 READ    53582001. AND WROTE   312900871. INTEGRALS IN   2226 RECORDS. CPU TIME:     0.29 SEC, REAL TIME:     0.33 SEC

 Node minimum:    22335257.  Node maximum:    22368464. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         6.78      6.57
 REAL TIME  *         8.63 SEC
 DISK USED  *        30.87 MB (local),        1.49 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -462.20021095    -462.20021095     0.00D+00     0.50D-01     0     0       0.11      0.24    start
   2     -462.20021380      -0.00000286     0.39D-04     0.59D-04     1     0       0.12      0.36    diag
   3     -462.20021392      -0.00000011     0.49D-05     0.95D-05     2     0       0.11      0.47    diag
   4     -462.20021392      -0.00000000     0.14D-05     0.10D-05     3     0       0.12      0.59    diag
   5     -462.20021392      -0.00000000     0.54D-06     0.28D-06     0     0       0.12      0.71    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.200213922397
  RHF One-electron energy            -808.825824379897
  RHF Two-electron energy             346.625610457500
  RHF Kinetic energy                  329.246622531183
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403811557334

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80713     1  1  s    1.00004
    2.1     2.00000    -3.75330     1  1  d0   0.99995
    3.1     2.00000    -3.75330     1  1  d2- -0.33658    1  1  d1+  0.27971    1  1  d1-  0.89893
    4.1     2.00000    -3.75330     1  1  d1+ -0.63903    1  1  d2+  0.73811
    5.1     2.00000    -3.75330     1  1  d1+  0.71366    1  1  d2+  0.67290
    6.1     2.00000    -3.75330     1  1  d2-  0.92664    1  1  d1-  0.36791
    7.1     2.00000    -1.18782     1  1  s   -0.44482    1  5  s    0.53692    1  6  s    0.59428
    1.2     2.00000    -8.48542     1  1  py   0.99954
    2.2     2.00000    -8.48542     1  1  px   0.99955
    3.2     2.00000    -8.48542     1  1  pz   0.99954
    4.2     2.00000    -0.52322     1  1  py  -0.30375    1  4  py   0.31112    1  5  py   0.44313    1  6  py   0.32547
    5.2     2.00000    -0.52322     1  1  px  -0.30410    1  4  px   0.31148    1  5  px   0.44364    1  6  px   0.32585
    6.2     2.00000    -0.52322     1  1  pz  -0.30375    1  4  pz   0.31112    1  5  pz   0.44313    1  6  pz   0.32547


 HOMO      6.2    -0.523223 =     -14.2376eV
 LUMO      7.2     0.071020 =       1.9325eV
 LUMO-HOMO         0.594242 =      16.1702eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.96       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         7.49      0.71      6.57
 REAL TIME  *         9.38 SEC
 DISK USED  *        33.17 MB (local),        1.52 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        7 (    1    6)
 Number of external orbitals:     249 (  122  127)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             280   (625 determinants, 1225 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:             294   (345 determinants, 735 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.121D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.415D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.563D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.569D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.339D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 5 4 3 1 1 3 5   4 6 2 1 3 5 2 4 613  10 711 91514 812 2 3   5 4 6 1 7151411 913
                                       10 812 3 5 6 4 2 1 7  151411 9 8121013 5 3   4 6 2 112 8 711 915  141310 5 3 4 6 22326
                                       24191721201825272228  16 81211 9 713101514   1 5 3 4 6 2 1 5 4 3   6 2 9111310 812 715
                                       14 1 5 3 2 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.340D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.680D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.395D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.460D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.460D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.926D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.922D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.128D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 2 1 3 3 2 1 3   2 1 810 7 9 4 5 6 3   1 2 810 6 9 7 5 4 3   2 1 810 6 9 7 5 418
                                       20211311121914161517   6 810 9 7 5 4 3 1 2  20181911122113141615  17 610 8 9 7 5 4 1 2
                                        3191211201816141517  2113 610 8 5 4 9 7 2   1 310 8 4 5 6 7 918  21192013111512161714
                                        2 3 1 810 6 4 5 7 9   2 3 1 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  2021  ( 24 closed/active, 1113 closed/virtual, 0 active/active, 884 active/virtual )
 Total number of variables:    11376
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    8   22    0   -461.77725057    -461.82772428   -0.05047371    0.29267331 0.00051483 0.00152816  0.49E+00      3.79
   2    9   28    0   -461.80738048    -461.81365022   -0.00626974    0.28770590 0.00001376 0.00000769  0.45E-01      9.21
   3    7   19    0   -461.81369824    -461.81369931   -0.00000107    0.00266606 0.00000004 0.00000008  0.16E-02     13.29
   4   21   47    0   -461.81369931    -461.81369931   -0.00000000    0.00000052 0.00000002 0.00000000  0.51E-06     20.57

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.24E-07)
                       Final energy:   -461.81369931
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.176275446251
 Nuclear energy                                  0.00000000
 Kinetic energy                                330.33149328
 One electron energy                          -811.35248604
 Two electron energy                           349.17621060
 Virial ratio                                    2.39912871
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.794920205136
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94534597
 One electron energy                          -801.79774728
 Two electron energy                           340.00282708
 Virial ratio                                    2.40386519
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.794920205134
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94534597
 One electron energy                          -801.79774728
 Two electron energy                           340.00282708
 Virial ratio                                    2.40386519
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.794920205040
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94534597
 One electron energy                          -801.79774726
 Two electron energy                           340.00282705
 Virial ratio                                    2.40386519
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.794920205022
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94534597
 One electron energy                          -801.79774728
 Two electron energy                           340.00282707
 Virial ratio                                    2.40386519
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.794920204997
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94534597
 One electron energy                          -801.79774727
 Two electron energy                           340.00282706
 Virial ratio                                    2.40386519
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.791175170855
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94052827
 One electron energy                          -801.78344402
 Two electron energy                           339.99226885
 Virial ratio                                    2.40387436
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.791175170794
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94052827
 One electron energy                          -801.78344400
 Two electron energy                           339.99226883
 Virial ratio                                    2.40387436
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.791175170747
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94052828
 One electron energy                          -801.78344402
 Two electron energy                           339.99226885
 Virial ratio                                    2.40387436
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.771002876435
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.26727973
 One electron energy                          -802.99345873
 Two electron energy                           341.22245585
 Virial ratio                                    2.40241995
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.805799342716
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.92071331
 One electron energy                          -801.71866859
 Two electron energy                           339.91286925
 Virial ratio                                    2.40400340
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.796986289300
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93308746
 One electron energy                          -801.75943543
 Two electron energy                           339.96244914
 Virial ratio                                    2.40392379
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.796986289300
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93308746
 One electron energy                          -801.75943543
 Two electron energy                           339.96244914
 Virial ratio                                    2.40392379
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.796986289140
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93308747
 One electron energy                          -801.75943542
 Two electron energy                           339.96244913
 Virial ratio                                    2.40392379
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.796986289126
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93308746
 One electron energy                          -801.75943540
 Two electron energy                           339.96244911
 Virial ratio                                    2.40392379
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.796986289076
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93308746
 One electron energy                          -801.75943541
 Two electron energy                           339.96244912
 Virial ratio                                    2.40392379
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.791383744874
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93836257
 One electron energy                          -801.77546464
 Two electron energy                           339.98408089
 Virial ratio                                    2.40388424
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.791383744804
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93836257
 One electron energy                          -801.77546461
 Two electron energy                           339.98408087
 Virial ratio                                    2.40388424
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.791383744761
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93836257
 One electron energy                          -801.77546463
 Two electron energy                           339.98408089
 Virial ratio                                    2.40388424
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     1.270841120853
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.000000081149
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     3.999999869410
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.000000000505
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     2.729158928083
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.999999998289
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.000000069310
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999999932402
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.000000001976
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     0.881266070534
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     1.000000001042
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     3.999999992944
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.118766199400
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.999999988845
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.000000003583
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999999509
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     0.751741763560
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     1.000000003395
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000000004068
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.999999994438
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     3.248258234539
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999999990609
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.999999932400
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.000000076991
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.000000000305
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     1.123635166556
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     3.999999998521
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000000000155
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     2.876329839334
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999999999428
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.999999999324
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.000000001343
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.977417115587
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     3.999999915455
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     1.000000126522
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000000005057
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     0.022582837379
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.000000011102
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999998291
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.999999990607
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.999999997718
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     3.995098762910
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     1.000000000438
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     1.000000006900
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.004903961266
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.000000011727
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999997093
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.999999999148
 
 !MCSCF expec      <1.1 Singlet|L**2|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|L**2|2.1 Singlet>     6.000000000000
 !MCSCF expec      <3.1 Singlet|L**2|3.1 Singlet>     6.000000000000
 !MCSCF expec      <4.1 Singlet|L**2|4.1 Singlet>     6.000000000000
 !MCSCF expec      <5.1 Singlet|L**2|5.1 Singlet>     6.000000000000
 !MCSCF expec      <6.1 Singlet|L**2|6.1 Singlet>     6.000000000000
 !MCSCF expec      <7.1 Singlet|L**2|7.1 Singlet>     2.000000000000
 !MCSCF expec      <8.1 Singlet|L**2|8.1 Singlet>     2.000000000000
 !MCSCF expec      <9.1 Singlet|L**2|9.1 Singlet>     2.000000000000
 !MCSCF expec    <10.1 Singlet|L**2|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|L**2|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|L**2|2.1 Triplet>     6.000000000000
 !MCSCF expec      <3.1 Triplet|L**2|3.1 Triplet>     6.000000000000
 !MCSCF expec      <4.1 Triplet|L**2|4.1 Triplet>     6.000000000000
 !MCSCF expec      <5.1 Triplet|L**2|5.1 Triplet>     6.000000000000
 !MCSCF expec      <6.1 Triplet|L**2|6.1 Triplet>     6.000000000000
 !MCSCF expec      <7.1 Triplet|L**2|7.1 Triplet>     2.000000000000
 !MCSCF expec      <8.1 Triplet|L**2|8.1 Triplet>     2.000000000000
 !MCSCF expec      <9.1 Triplet|L**2|9.1 Triplet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 5 2 4 1 1 6 3   5 2 4 1 6 2 3 5 411  13101415 812 7 9 6 3   5 2 4 11113101514 8
                                       12 7 9 6 3 5 2 4 111  10131514 812 7 9 6 5   3 2 4 11113101415 8  12 7 9 6 5 3 2 42722
                                       16182024192326172125  281113101415 812 7 9   1 6 5 3 2 4 1 6 3 5   2 41113101415 812 7
                                        9 1 6 5 3 2 4 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 2 3 1 1   3 2 5 7 9 810 6 4 2   3 1 5 7 9 810 6 4 2   3 1 5 9 7 810 6 412
                                       20181517141621131911   5 9 7 810 6 4 2 3 1  12201815171416132119  11 5 7 910 8 6 4 2 3
                                        1122018151714162113  1911 5 7 910 8 6 4 2   3 1 5 7 910 8 6 412  18201517161421131911
                                        2 3 1 5 7 910 8 6 4   2 3 1 2 3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.06477     1  1  s    1.00463
    2.1     2.00000    -4.01112     1  1  d1-  1.00037
    3.1     2.00000    -4.01112     1  1  d2-  1.00037
    4.1     2.00000    -4.01112     1  1  d2+  1.00037
    5.1     2.00000    -4.01112     1  1  d0   1.00037
    6.1     2.00000    -4.01112     1  1  d1+  1.00037
    7.1     1.99993    -1.39407     1  1  s   -0.44786    1  5  s    0.58551    1  6  s    0.61020
    1.2     2.00000    -8.74271     1  1  py   0.99912
    2.2     2.00000    -8.74271     1  1  pz   0.99912
    3.2     2.00000    -8.74271     1  1  px   0.99912
    4.2     1.68414    -0.66562     1  1  px  -0.32282    1  4  px   0.33810    1  5  px   0.49164    1  6  px   0.28550
    5.2     1.68414    -0.66562     1  1  pz  -0.32282    1  4  pz   0.33810    1  5  pz   0.49164    1  6  pz   0.28550
    6.2     1.68414    -0.66562     1  1  py  -0.32282    1  4  py   0.33810    1  5  py   0.49164    1  6  py   0.28550
    7.2     0.31589     0.02899     1  7  py  -0.37523    1 12  py   1.25622
    8.2     0.31589     0.02899     1  7  pz  -0.37523    1 12  pz   1.25622
    9.2     0.31589     0.02899     1  7  px  -0.37523    1 12  px   1.25622
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 222000       0.98530603     -0.00000001      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2 2b20a0      -0.06950298      0.04337337     -0.00000221     -0.00000424     -0.00000394     -0.57561824     -0.00000000
 2 2a20b0       0.06950298     -0.04337337      0.00000221      0.00000424      0.00000394      0.57561824      0.00000000
 2 22ab00       0.06950299      0.52018670     -0.00003735      0.00006006      0.00000607     -0.25024667     -0.00000000
 2 22ba00      -0.06950299     -0.52018670      0.00003735     -0.00006006     -0.00000607      0.25024667      0.00000000
 2 22b00a      -0.00000000     -0.00003628     -0.49991319     -0.00008172     -0.00001899     -0.00000082     -0.49996111
 2 22a00b       0.00000000      0.00003628      0.49991319      0.00008172      0.00001899      0.00000082      0.49996111
 2 a22b00      -0.00000000      0.00003628      0.49991319      0.00008172      0.00001899      0.00000082     -0.49996111
 2 b22a00       0.00000000     -0.00003628     -0.49991319     -0.00008172     -0.00001899     -0.00000082      0.49996111
 2 2b2a00       0.00000000      0.00006173      0.00008172     -0.49991318     -0.00000813      0.00000834     -0.00002068
 2 2a2b00      -0.00000000     -0.00006173     -0.00008172      0.49991318      0.00000813     -0.00000834      0.00002068
 2 2a200b      -0.00000000     -0.00000776     -0.00001898     -0.00000813      0.49991318     -0.00000401      0.00004845
 2 2b200a       0.00000000      0.00000776      0.00001898      0.00000813     -0.49991318      0.00000401     -0.00004845
 2 22a0b0       0.00000000     -0.00006173     -0.00008172      0.49991319      0.00000813     -0.00000834     -0.00002068
 2 22b0a0      -0.00000000      0.00006173      0.00008172     -0.49991319     -0.00000813      0.00000834      0.00002068
 2 a220b0       0.00000000     -0.00000776     -0.00001898     -0.00000813      0.49991321     -0.00000401     -0.00004845
 2 b220a0      -0.00000000      0.00000776      0.00001898      0.00000813     -0.49991321      0.00000401      0.00004845
 2 b2200a      -0.06950299      0.47681332     -0.00003514      0.00006430      0.00001001      0.32537156     -0.00000000
 2 a2200b       0.06950299     -0.47681332      0.00003514     -0.00006430     -0.00001001     -0.32537156      0.00000000
 
 Energy:     -462.17627545   -461.79492021   -461.79492021   -461.79492021   -461.79492021   -461.79492020   -461.79117517

 State:              8               9              10
 2 222000       0.00000000      0.00000000     -0.17023934
 2 2b20a0       0.00000000     -0.00000000     -0.40213232
 2 2a20b0      -0.00000000      0.00000000      0.40213232
 2 22ab00      -0.00000000      0.00000000      0.40213233
 2 22ba00       0.00000000     -0.00000000     -0.40213233
 2 22b00a      -0.00002067      0.00004845      0.00000000
 2 22a00b       0.00002067     -0.00004845     -0.00000000
 2 a22b00      -0.00002067      0.00004845      0.00000000
 2 b22a00       0.00002067     -0.00004845     -0.00000000
 2 2b2a00       0.49996110     -0.00012999      0.00000000
 2 2a2b00      -0.49996110      0.00012999     -0.00000000
 2 2a200b       0.00012999      0.49996110     -0.00000000
 2 2b200a      -0.00012999     -0.49996110      0.00000000
 2 22a0b0       0.49996109     -0.00012999      0.00000000
 2 22b0a0      -0.49996109      0.00012999     -0.00000000
 2 a220b0      -0.00012999     -0.49996108      0.00000000
 2 b220a0       0.00012999      0.49996108     -0.00000000
 2 b2200a      -0.00000000     -0.00000000     -0.40213233
 2 a2200b       0.00000000      0.00000000      0.40213233
 
 Energy:     -461.79117517   -461.79117517   -461.77100288
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 2 2a20a0       0.57729580      0.00000145     -0.02857944     -0.00000024     -0.00000112      0.81595193      0.00000000
 2 a2200a       0.57729584     -0.00003460      0.72092480      0.00000010      0.00000043     -0.38322543      0.00000000
 2 22a0a0       0.00000000     -0.00001942      0.00000010      0.00001317      0.70706842      0.00000098      0.00007467
 2 a220a0       0.00000000     -0.00000093      0.00000002      0.70706842     -0.00001317      0.00000021      0.00001691
 2 22a00a       0.00000000      0.70706841      0.00003390      0.00000093      0.00001942     -0.00000006     -0.70701768
 2 a22a00      -0.00000000      0.70706841      0.00003390      0.00000093      0.00001942     -0.00000006      0.70701768
 2 2a200a      -0.00000000     -0.00000093      0.00000002      0.70706841     -0.00001317      0.00000021     -0.00001691
 2 2a2a00      -0.00000000     -0.00001942      0.00000010      0.00001317      0.70706841      0.00000098     -0.00007468
 2 22aa00       0.57729583      0.00003315     -0.69234537      0.00000015      0.00000070     -0.43272646     -0.00000000
 
 Energy:     -461.80579934   -461.79698629   -461.79698629   -461.79698629   -461.79698629   -461.79698629   -461.79138374

 State:              8               9
 2 2a20a0      -0.00000000     -0.00000000
 2 a2200a      -0.00000000     -0.00000000
 2 22a0a0      -0.70701768      0.00001839
 2 a220a0       0.00001839      0.70701768
 2 22a00a      -0.00007467      0.00001691
 2 a22a00       0.00007467     -0.00001691
 2 2a200a      -0.00001839     -0.70701769
 2 2a2a00       0.70701769     -0.00001839
 2 22aa00       0.00000000     -0.00000000
 
 Energy:     -461.79138374   -461.79138374
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.42       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.44     13.95      0.71      6.57
 REAL TIME  *        31.60 SEC
 DISK USED  *        89.48 MB (local),        2.29 GB (total)
 SF USED    *       148.67 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1762754  -0.0
    -461.7949202   6.0
    -461.7949202   6.0
    -461.7949202   6.0
    -461.7949202   6.0
    -461.7949202   6.0
    -461.7911752   2.0
    -461.7911752   2.0
    -461.7911752   2.0
    -461.7710029  -0.0
    -461.8057993  -0.0
    -461.7969863   6.0
    -461.7969863   6.0
    -461.7969863   6.0
    -461.7969863   6.0
    -461.7969863   6.0
    -461.7913837   2.0
    -461.7913837   2.0
    -461.7913837   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 26
 Maximum number of shells:             6
 Maximum number of spin couplings:    42

 Reference space:      231 conf      280 CSFs
 N elec internal:     9996 conf    21280 CSFs
 N-1 el internal:    15576 conf    58240 CSFs
 N-2 el internal:    14289 conf    77596 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -462.17627545
     2      -461.79492021
     3      -461.79492021
     4      -461.79492021
     5      -461.79492021
     6      -461.79492020
     7      -461.79117517
     8      -461.79117517
     9      -461.79117517
    10      -461.77100288

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1018D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1830D-06

 Number of blocks in overlap matrix:  1014   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2450
 Number of N-1 electron functions:   58240

 Number of internal configurations:                10822
 Number of singly external configurations:       7252070
 Number of doubly external configurations:      37990364
 Total number of contracted configurations:     45253256
 Total number of uncontracted configurations: 1209033556

 Diagonal Coupling coefficients finished.               Storage:  15157971 words, CPU-Time:     30.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3681883 words, CPU-time:      3.15 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.17627545    -0.00000000    -1.25156326  0.36D-01  0.67D-01    40.04
    1     2     2     1.00000000     0.00000000  -461.79492021     0.00000000    -1.22131017  0.16D-01  0.70D-01    40.04
    1     3     3     1.00000000     0.00000000  -461.79492021    -0.00000000    -1.21304785  0.16D-01  0.66D-01    40.04
    1     4     4     1.00000000     0.00000000  -461.79492021     0.00000000    -1.21313641  0.16D-01  0.66D-01    40.04
    1     5     5     1.00000000     0.00000000  -461.79492021     0.00000000    -1.21303323  0.16D-01  0.66D-01    40.04
    1     6     6     1.00000000     0.00000000  -461.79492020    -0.00000000    -1.22204953  0.16D-01  0.71D-01    40.04
    1     7     7     1.00000000     0.00000000  -461.79117517    -0.00000000    -1.21417799  0.17D-01  0.66D-01    40.04
    1     8     8     1.00000000     0.00000000  -461.79117517     0.00000000    -1.21410631  0.17D-01  0.66D-01    40.04
    1     9     9     1.00000000     0.00000000  -461.79117517     0.00000000    -1.21406758  0.17D-01  0.66D-01    40.04
    1    10    10     1.00000000     0.00000000  -461.77100288     0.00000000    -1.23631911  0.42D-01  0.68D-01    40.04
    2     1     1     1.07799914    -1.09284322  -463.26911866    -1.09284322    -0.03233851  0.77D-02  0.12D-02  1567.93
    2     2     2     1.06437643    -1.07368723  -462.86860744    -1.07368723    -0.01733322  0.16D-02  0.81D-03  1567.93
    2     3     3     1.06441557    -1.07366561  -462.86858581    -1.07366561    -0.01735940  0.16D-02  0.81D-03  1567.93
    2     4     4     1.06438699    -1.07365128  -462.86857148    -1.07365128    -0.01736113  0.16D-02  0.81D-03  1567.93
    2     5     5     1.06692339    -1.07264006  -462.86756026    -1.07264006    -0.01843989  0.16D-02  0.11D-02  1567.93
    2     6     6     1.06723338    -1.07239089  -462.86731109    -1.07239089    -0.01862091  0.16D-02  0.11D-02  1567.93
    2     7     7     1.06463845    -1.07399727  -462.86517244    -1.07399727    -0.01737026  0.15D-02  0.86D-03  1567.93
    2     8     8     1.06462729    -1.07397347  -462.86514864    -1.07397347    -0.01738715  0.15D-02  0.86D-03  1567.93
    2     9     9     1.06463965    -1.07397272  -462.86514789    -1.07397272    -0.01739245  0.15D-02  0.86D-03  1567.93
    2    10    10     1.08050557    -1.06653503  -462.83753790    -1.06653503    -0.03164525  0.99D-02  0.89D-03  1567.93
    3     1     1     1.06527117    -1.12571980  -463.30199524    -0.03287658    -0.00097991  0.39D-04  0.96D-04  3090.06
    3     2     2     1.06027575    -1.09034766  -462.88526787    -0.01666043    -0.00045098  0.16D-04  0.54D-04  3090.06
    3     3     3     1.06027510    -1.09034685  -462.88526706    -0.01668124    -0.00045157  0.16D-04  0.54D-04  3090.06
    3     4     4     1.06058949    -1.09034453  -462.88526473    -0.01669325    -0.00045612  0.15D-04  0.58D-04  3090.06
    3     5     5     1.06026380    -1.09034266  -462.88526286    -0.01770260    -0.00045396  0.16D-04  0.54D-04  3090.06
    3     6     6     1.06056674    -1.09032413  -462.88524434    -0.01793325    -0.00046898  0.15D-04  0.61D-04  3090.06
    3     7     7     1.06044439    -1.09075142  -462.88192659    -0.01675415    -0.00048187  0.17D-04  0.59D-04  3090.06
    3     8     8     1.06043663    -1.09075095  -462.88192612    -0.01677748    -0.00048283  0.17D-04  0.59D-04  3090.06
    3     9     9     1.06043354    -1.09074801  -462.88192318    -0.01677529    -0.00048390  0.17D-04  0.59D-04  3090.06
    3    10    10     1.06222127    -1.09699376  -462.86799663    -0.03045873    -0.00088027  0.87D-04  0.78D-04  3090.06
    4     1     1     1.06785424    -1.12687795  -463.30315340    -0.00115816    -0.00006718  0.28D-05  0.59D-05  4612.09
    4     2     2     1.06124746    -1.09090703  -462.88582724    -0.00055937    -0.00004320  0.14D-05  0.51D-05  4612.09
    4     3     3     1.06128690    -1.09090653  -462.88582673    -0.00055968    -0.00004265  0.15D-05  0.48D-05  4612.09
    4     4     4     1.06128657    -1.09090632  -462.88582653    -0.00056179    -0.00004270  0.15D-05  0.48D-05  4612.09
    4     5     5     1.06128428    -1.09090598  -462.88582618    -0.00056332    -0.00004307  0.15D-05  0.49D-05  4612.09
    4     6     6     1.06121833    -1.09090398  -462.88582418    -0.00057984    -0.00004507  0.14D-05  0.54D-05  4612.09
    4     7     7     1.06147075    -1.09135852  -462.88253370    -0.00060710    -0.00004746  0.16D-05  0.52D-05  4612.09
    4     8     8     1.06147178    -1.09135838  -462.88253356    -0.00060743    -0.00004759  0.16D-05  0.52D-05  4612.09
    4     9     9     1.06147003    -1.09135801  -462.88253318    -0.00061001    -0.00004786  0.16D-05  0.53D-05  4612.09
    4    10    10     1.06269154    -1.09797967  -462.86898255    -0.00098591    -0.00006936  0.30D-05  0.80D-05  4612.09
    5     1     1     1.06860224    -1.12695740  -463.30323285    -0.00007945    -0.00000503  0.13D-06  0.46D-06  6138.79
    5     2     2     1.06175497    -1.09096218  -462.88588239    -0.00005515    -0.00000387  0.17D-06  0.37D-06  6138.79
    5     3     3     1.06175592    -1.09096174  -462.88588194    -0.00005521    -0.00000411  0.18D-06  0.40D-06  6138.79
    5     4     4     1.06177287    -1.09096129  -462.88588149    -0.00005496    -0.00000427  0.19D-06  0.42D-06  6138.79
    5     5     5     1.06177288    -1.09096124  -462.88588145    -0.00005526    -0.00000431  0.19D-06  0.43D-06  6138.79
    5     6     6     1.06177313    -1.09096119  -462.88588139    -0.00005721    -0.00000432  0.19D-06  0.43D-06  6138.79
    5     7     7     1.06198576    -1.09141875  -462.88259392    -0.00006022    -0.00000442  0.19D-06  0.42D-06  6138.79
    5     8     8     1.06198608    -1.09141872  -462.88259389    -0.00006033    -0.00000445  0.19D-06  0.43D-06  6138.79
    5     9     9     1.06198649    -1.09141871  -462.88259388    -0.00006070    -0.00000443  0.19D-06  0.43D-06  6138.79
    5    10    10     1.06320755    -1.09806713  -462.86907001    -0.00008746    -0.00000814  0.41D-06  0.84D-06  6138.79
    6     1     1     1.06861560    -1.12696331  -463.30323876    -0.00000591    -0.00000046  0.12D-07  0.44D-07  7662.55
    6     2     2     1.06179494    -1.09096679  -462.88588700    -0.00000461    -0.00000040  0.15D-07  0.48D-07  7662.55
    6     3     3     1.06179589    -1.09096667  -462.88588688    -0.00000493    -0.00000044  0.16D-07  0.53D-07  7662.55
    6     4     4     1.06179730    -1.09096660  -462.88588681    -0.00000532    -0.00000054  0.18D-07  0.61D-07  7662.55
    6     5     5     1.06179717    -1.09096660  -462.88588680    -0.00000536    -0.00000054  0.18D-07  0.62D-07  7662.55
    6     6     6     1.06179774    -1.09096659  -462.88588680    -0.00000540    -0.00000055  0.18D-07  0.63D-07  7662.55
    6     7     7     1.06201417    -1.09142411  -462.88259928    -0.00000536    -0.00000050  0.17D-07  0.58D-07  7662.55
    6     8     8     1.06201412    -1.09142411  -462.88259928    -0.00000539    -0.00000051  0.17D-07  0.58D-07  7662.55
    6     9     9     1.06201477    -1.09142410  -462.88259927    -0.00000539    -0.00000051  0.17D-07  0.58D-07  7662.55
    6    10    10     1.06325180    -1.09807744  -462.86908032    -0.00001032    -0.00000108  0.44D-07  0.12D-06  7662.55
    7     1     1     1.06861732    -1.12696387  -463.30323932    -0.00000056    -0.00000005  0.12D-08  0.45D-08  9186.90
    7     2     2     1.06179008    -1.09096732  -462.88588752    -0.00000053    -0.00000009  0.35D-08  0.94D-08  9186.90
    7     3     3     1.06179216    -1.09096731  -462.88588752    -0.00000064    -0.00000006  0.25D-08  0.66D-08  9186.90
    7     4     4     1.06179004    -1.09096731  -462.88588751    -0.00000071    -0.00000009  0.34D-08  0.92D-08  9186.90
    7     5     5     1.06179013    -1.09096730  -462.88588751    -0.00000070    -0.00000009  0.34D-08  0.91D-08  9186.90
    7     6     6     1.06179167    -1.09096724  -462.88588745    -0.00000065    -0.00000007  0.28D-08  0.72D-08  9186.90
    7     7     7     1.06201013    -1.09142477  -462.88259994    -0.00000065    -0.00000008  0.29D-08  0.87D-08  9186.90
    7     8     8     1.06201001    -1.09142476  -462.88259994    -0.00000065    -0.00000008  0.28D-08  0.84D-08  9186.90
    7     9     9     1.06201007    -1.09142476  -462.88259993    -0.00000066    -0.00000008  0.28D-08  0.84D-08  9186.90
    7    10    10     1.06325246    -1.09807885  -462.86908173    -0.00000141    -0.00000018  0.96D-08  0.18D-07  9186.90
    8     1     1     1.06861732    -1.12696387  -463.30323932     0.00000000    -0.00000005  0.12D-08  0.45D-08 10427.33
    8     2     2     1.06179300    -1.09096743  -462.88588764    -0.00000012    -0.00000001  0.68D-09  0.13D-08 10427.33
    8     3     3     1.06179304    -1.09096742  -462.88588763    -0.00000011    -0.00000001  0.65D-09  0.13D-08 10427.33
    8     4     4     1.06179304    -1.09096741  -462.88588762    -0.00000011    -0.00000001  0.64D-09  0.12D-08 10427.33
    8     5     5     1.06179348    -1.09096733  -462.88588753    -0.00000003    -0.00000001  0.53D-09  0.12D-08 10427.33
    8     6     6     1.06179233    -1.09096731  -462.88588751    -0.00000007    -0.00000006  0.24D-08  0.62D-08 10427.33
    8     7     7     1.06201359    -1.09142488  -462.88260005    -0.00000011    -0.00000001  0.13D-09  0.85D-09 10427.33
    8     8     8     1.06201354    -1.09142487  -462.88260004    -0.00000010    -0.00000001  0.55D-09  0.11D-08 10427.33
    8     9     9     1.06201355    -1.09142486  -462.88260003    -0.00000010    -0.00000001  0.54D-09  0.11D-08 10427.33
    8    10    10     1.06325217    -1.09807910  -462.86908198    -0.00000025    -0.00000002  0.58D-09  0.18D-08 10427.33


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   2.3%
 P   0.2%  24.1%  56.1%

 Initialization:   0.3%
 Other:           16.8%

 Total CPU:    10427.3 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222222222222000           0.9594732  -0.0000000  -0.0000000  -0.0000000  -0.0000004  -0.0000002   0.0000000   0.0000000
                            0.0000000  -0.1201197
 22222222222/20\0           0.0708037   0.0074334  -0.0229271  -0.0072713   0.7757983  -0.1585311  -0.0000000   0.0000000
                           -0.0000001   0.5554009
 222222222222/\00           0.0708037  -0.0137512   0.0430384   0.0047246  -0.2496975   0.7504763  -0.0000000   0.0000000
                           -0.0000000   0.5554027
 222222222222/0\0           0.0000000   0.0061620  -0.0091285   0.6859768   0.0057384  -0.0017729  -0.0106066   0.0613571
                            0.6832603  -0.0000000
 22222222222/2\00          -0.0000000   0.0061620  -0.0091285   0.6859743   0.0057383  -0.0017729   0.0106067  -0.0613573
                           -0.6832628  -0.0000000
 2222222222/22\00           0.0000000   0.6857745   0.0166579  -0.0058782  -0.0040273   0.0103074  -0.6840213   0.0510483
                           -0.0152026  -0.0000000
 222222222222/00\          -0.0000000   0.6857726   0.0166578  -0.0058782  -0.0040273   0.0103075   0.6840232  -0.0510484
                            0.0152026  -0.0000000
 2222222222/220\0           0.0000000  -0.0159501   0.6848234   0.0090544   0.0132825  -0.0352034   0.0521964   0.6814233
                           -0.0603818   0.0000000
 22222222222/200\           0.0000000  -0.0159495   0.6848011   0.0090541   0.0132822  -0.0352021  -0.0521980  -0.6814456
                            0.0603838  -0.0000000
 2222222222/2200\           0.0708036   0.0063179  -0.0201113   0.0025467  -0.5260954  -0.5919428   0.0000000  -0.0000000
                            0.0000000   0.5554055

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966426    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.042522
 2           0.000000   -0.014847    0.970011    0.008716   -0.022561    0.007996   -0.000001   -0.000000   -0.000000    0.000000
 3          -0.000000    0.046675    0.023562   -0.012912    0.968651   -0.024595   -0.000000   -0.000000    0.000016    0.000000
 4           0.000000    0.002215   -0.008315    0.970297    0.012807   -0.008764    0.000000    0.000002    0.000000    0.000000
 5           0.000000    0.122399   -0.005697    0.008117    0.018788    0.962474    0.000000    0.000000    0.000000    0.000003
 6           0.000000    0.961460    0.014580   -0.002508   -0.049793   -0.121191    0.000000    0.000000   -0.000001    0.000001
 7           0.000000   -0.000000    0.000001    0.000000   -0.000001   -0.000000    0.967430   -0.015001    0.073824   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000016    0.000000   -0.072199    0.086779    0.963770   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000002    0.000001   -0.000000    0.021501    0.966354   -0.085401   -0.000000
 10          0.045537   -0.000002   -0.000000   -0.000000    0.000000   -0.000003    0.000000    0.000000    0.000000    0.968712

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967360    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.001454
 2           0.000000    0.970459    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.970459    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 4          -0.000000    0.000000    0.000000    0.970459    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.970459   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970459    0.000000    0.000000   -0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970359   -0.000000   -0.000000    0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970359    0.000000   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970359   -0.000000
 10          0.001454    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.969781


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96642578 (fixed)   0.96736106 (relaxed)   0.96735969 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000419   -0.00003402   -1.10127702
 Singles      0.00621698   -0.02129563   -0.02648282
 Pairs        0.06240062    0.07117566    0.00079596
 Total        1.06862180    0.04984600   -1.12696387
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.17543798
 Nuclear energy                         0.00000000
 Kinetic energy                       330.26662701
 One electron energy                 -809.25357716
 Two electron energy                  345.95033784
 Virial quotient                       -1.40281579
 Correlation energy                    -1.12780134
 !MRCI STATE 1.1 Energy              -463.303239321098

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.38063108 (Davidson, fixed reference)
 Cluster corrected energies          -463.38062765 (Davidson, relaxed reference)
 Cluster corrected energies          -463.38063108 (Davidson, rotated reference)

 Cluster corrected energies          -463.37905306 (Pople, fixed reference)
 Cluster corrected energies          -463.37904950 (Pople, relaxed reference)
 Cluster corrected energies          -463.37905306 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97001087 (fixed)   0.97046339 (relaxed)   0.97045886 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001354   -0.00001936   -0.99794353
 Singles      0.00715315   -0.03135838   -0.03688243
 Pairs        0.05464069   -0.00000003   -0.05614148
 Total        1.06180737   -0.03137777   -1.09096743
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79492021
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64935554
 One electron energy                 -801.07206154
 Two electron energy                  338.18617390
 Virial quotient                       -1.40417653
 Correlation energy                    -1.09096743
 !MRCI STATE 2.1 Energy              -462.885887639050

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95331747 (Davidson, fixed reference)
 Cluster corrected energies          -462.95330667 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95331747 (Davidson, rotated reference)

 Cluster corrected energies          -462.95154559 (Pople, fixed reference)
 Cluster corrected energies          -462.95153450 (Pople, relaxed reference)
 Cluster corrected energies          -462.95154559 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.96865113 (fixed)   0.97046337 (relaxed)   0.97045885 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001354   -0.00001936   -0.99794349
 Singles      0.00715315   -0.03135838   -0.03688244
 Pairs        0.05464073   -0.00000001   -0.05614149
 Total        1.06180742   -0.03137775   -1.09096742
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79492021
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64939049
 One electron energy                 -801.07207582
 Two electron energy                  338.18618819
 Virial quotient                       -1.40417638
 Correlation energy                    -1.09096742
 !MRCI STATE 3.1 Energy              -462.885887626084

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95331750 (Davidson, fixed reference)
 Cluster corrected energies          -462.95330670 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95331750 (Davidson, rotated reference)

 Cluster corrected energies          -462.95154562 (Pople, fixed reference)
 Cluster corrected energies          -462.95153453 (Pople, relaxed reference)
 Cluster corrected energies          -462.95154562 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97029661 (fixed)   0.97046337 (relaxed)   0.97045884 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001354   -0.00001936   -0.99794349
 Singles      0.00715315   -0.03135837   -0.03688244
 Pairs        0.05464073   -0.00000001   -0.05614148
 Total        1.06180742   -0.03137774   -1.09096741
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79492021
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64940086
 One electron energy                 -801.07207994
 Two electron energy                  338.18619232
 Virial quotient                       -1.40417634
 Correlation energy                    -1.09096741
 !MRCI STATE 4.1 Energy              -462.885887619465

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95331750 (Davidson, fixed reference)
 Cluster corrected energies          -462.95330670 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95331750 (Davidson, rotated reference)

 Cluster corrected energies          -462.95154562 (Pople, fixed reference)
 Cluster corrected energies          -462.95153453 (Pople, relaxed reference)
 Cluster corrected energies          -462.95154562 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96247445 (fixed)   0.97046317 (relaxed)   0.97045864 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001354   -0.00001936   -0.99793949
 Singles      0.00715329   -0.03135872   -0.03688280
 Pairs        0.05464103   -0.00000339   -0.05614504
 Total        1.06180786   -0.03138147   -1.09096733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79492020
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64984617
 One electron energy                 -801.07224046
 Two electron energy                  338.18635293
 Virial quotient                       -1.40417444
 Correlation energy                    -1.09096733
 !MRCI STATE 5.1 Energy              -462.885887533672

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95331789 (Davidson, fixed reference)
 Cluster corrected energies          -462.95330708 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95331789 (Davidson, rotated reference)

 Cluster corrected energies          -462.95154602 (Pople, fixed reference)
 Cluster corrected energies          -462.95153493 (Pople, relaxed reference)
 Cluster corrected energies          -462.95154602 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96146004 (fixed)   0.97046370 (relaxed)   0.97045917 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001353   -0.00001936   -0.99793638
 Singles      0.00715597   -0.03136508   -0.03688875
 Pairs        0.05463720   -0.00000147   -0.05614218
 Total        1.06180670   -0.03138590   -1.09096731
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79492021
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65174253
 One electron energy                 -801.07271924
 Two electron energy                  338.18683172
 Virial quotient                       -1.40416636
 Correlation energy                    -1.09096731
 !MRCI STATE 6.1 Energy              -462.885887514419

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95331660 (Davidson, fixed reference)
 Cluster corrected energies          -462.95330581 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95331660 (Davidson, rotated reference)

 Cluster corrected energies          -462.95154470 (Pople, fixed reference)
 Cluster corrected energies          -462.95153362 (Pople, relaxed reference)
 Cluster corrected energies          -462.95154470 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96743041 (fixed)   0.97036255 (relaxed)   0.97035900 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001161   -0.00001906   -0.99758084
 Singles      0.00739481   -0.03198085   -0.03771268
 Pairs        0.05461950    0.00000001   -0.05613137
 Total        1.06202593   -0.03199990   -1.09142488
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79117517
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64933258
 One electron energy                 -801.06472724
 Two electron energy                  338.18212719
 Virial quotient                       -1.40416665
 Correlation energy                    -1.09142488
 !MRCI STATE 7.1 Energy              -462.882600049445

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95029669 (Davidson, fixed reference)
 Cluster corrected energies          -462.95028822 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95029669 (Davidson, rotated reference)

 Cluster corrected energies          -462.94853051 (Pople, fixed reference)
 Cluster corrected energies          -462.94852181 (Pople, relaxed reference)
 Cluster corrected energies          -462.94853051 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96377038 (fixed)   0.97036257 (relaxed)   0.97035902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001162   -0.00001906   -0.99758095
 Singles      0.00739434   -0.03198077   -0.03771174
 Pairs        0.05461992    0.00000001   -0.05613218
 Total        1.06202589   -0.03199982   -1.09142487
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79117517
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64808124
 One electron energy                 -801.06421857
 Two electron energy                  338.18161853
 Virial quotient                       -1.40417198
 Correlation energy                    -1.09142487
 !MRCI STATE 8.1 Energy              -462.882600036306

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95029663 (Davidson, fixed reference)
 Cluster corrected energies          -462.95028815 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95029663 (Davidson, rotated reference)

 Cluster corrected energies          -462.94853046 (Pople, fixed reference)
 Cluster corrected energies          -462.94852174 (Pople, relaxed reference)
 Cluster corrected energies          -462.94853046 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96635448 (fixed)   0.97036257 (relaxed)   0.97035902 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001162   -0.00001906   -0.99758094
 Singles      0.00739434   -0.03198077   -0.03771173
 Pairs        0.05461993    0.00000001   -0.05613219
 Total        1.06202590   -0.03199982   -1.09142486
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79117517
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64808499
 One electron energy                 -801.06421953
 Two electron energy                  338.18161950
 Virial quotient                       -1.40417197
 Correlation energy                    -1.09142486
 !MRCI STATE 9.1 Energy              -462.882600032392

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95029664 (Davidson, fixed reference)
 Cluster corrected energies          -462.95028815 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95029664 (Davidson, rotated reference)

 Cluster corrected energies          -462.94853046 (Pople, fixed reference)
 Cluster corrected energies          -462.94852174 (Pople, relaxed reference)
 Cluster corrected energies          -462.94853046 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96871193 (fixed)   0.96979728 (relaxed)   0.96978053 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00003868   -0.00005301   -0.00095194
 Singles      0.00814465   -0.03316419   -0.03960232
 Pairs        0.05510997   -1.06394520   -1.05752484
 Total        1.06329330   -1.09716240   -1.09807910
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77184034
 Nuclear energy                         0.00000000
 Kinetic energy                       329.75270825
 One electron energy                 -801.56336491
 Two electron energy                  338.69428293
 Virial quotient                       -1.40368546
 Correlation energy                    -1.09724164
 !MRCI STATE 10.1 Energy             -462.869081977890

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.93853002 (Davidson, fixed reference)
 Cluster corrected energies          -462.93848971 (Davidson, relaxed reference)
 Cluster corrected energies          -462.93853002 (Davidson, rotated reference)

 Cluster corrected energies          -462.93679389 (Pople, fixed reference)
 Cluster corrected energies          -462.93675239 (Pople, relaxed reference)
 Cluster corrected energies          -462.93679389 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     3470.95       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     10931.16  10909.71     13.95      0.71      6.57
 REAL TIME  *     11231.35 SEC
 DISK USED  *         3.47 GB (local),       49.71 GB (total)
 SF USED    *        33.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.38063108  AU                              
 SETTING HLSDIAG(2)     =      -462.95331747  AU                              
 SETTING HLSDIAG(3)     =      -462.95331750  AU                              
 SETTING HLSDIAG(4)     =      -462.95331750  AU                              
 SETTING HLSDIAG(5)     =      -462.95331789  AU                              
 SETTING HLSDIAG(6)     =      -462.95331660  AU                              
 SETTING HLSDIAG(7)     =      -462.95029669  AU                              
 SETTING HLSDIAG(8)     =      -462.95029663  AU                              
 SETTING HLSDIAG(9)     =      -462.95029664  AU                              
 SETTING HLSDIAG(10)    =      -462.93853002  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 26
 Maximum number of shells:             5
 Maximum number of spin couplings:    90

 Reference space:      196 conf      294 CSFs
 N elec internal:     9772 conf    32340 CSFs
 N-1 el internal:    14901 conf    99969 CSFs
 N-2 el internal:    12534 conf   138597 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  6
 Maximum number of open shell orbitals in internal spaces: 10


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        7 (   1   6 )
 Number of external orbitals:     249 ( 122 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -461.80579934
     2      -461.79698629
     3      -461.79698629
     4      -461.79698629
     5      -461.79698629
     6      -461.79698629
     7      -461.79138374
     8      -461.79138374
     9      -461.79138374

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1421D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1949D-06

 Number of blocks in overlap matrix:   913   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2231
 Number of N-1 electron functions:   99969

 Number of internal configurations:                16224
 Number of singly external configurations:      12447468
 Number of doubly external configurations:      34591409
 Total number of contracted configurations:     47055101
 Total number of uncontracted configurations: 2157661008

 Diagonal Coupling coefficients finished.               Storage:  18352459 words, CPU-Time:     46.83 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   3678700 words, CPU-time:      2.80 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.80579934     0.00000000    -1.22534002  0.20D-01  0.72D-01    56.51
    1     2     2     1.00000000     0.00000000  -461.79698629     0.00000000    -1.22265487  0.17D-01  0.71D-01    56.51
    1     3     3     1.00000000     0.00000000  -461.79698629     0.00000000    -1.22277774  0.17D-01  0.71D-01    56.51
    1     4     4     1.00000000     0.00000000  -461.79698629     0.00000000    -1.22261782  0.17D-01  0.71D-01    56.51
    1     5     5     1.00000000     0.00000000  -461.79698629     0.00000000    -1.22278452  0.17D-01  0.71D-01    56.51
    1     6     6     1.00000000     0.00000000  -461.79698629     0.00000000    -1.22353327  0.17D-01  0.71D-01    56.51
    1     7     7     1.00000000     0.00000000  -461.79138374    -0.00000000    -1.22204353  0.16D-01  0.71D-01    56.51
    1     8     8     1.00000000     0.00000000  -461.79138374     0.00000000    -1.22202843  0.16D-01  0.71D-01    56.51
    1     9     9     1.00000000     0.00000000  -461.79138374     0.00000000    -1.22196436  0.16D-01  0.71D-01    56.51
    2     1     1     1.07009390    -1.07051450  -462.87631384    -1.07051450    -0.01999395  0.23D-02  0.11D-02  1514.62
    2     2     2     1.06774308    -1.07298313  -462.86996942    -1.07298313    -0.01822797  0.17D-02  0.99D-03  1514.62
    2     3     3     1.06780945    -1.07293221  -462.86991850    -1.07293221    -0.01827203  0.17D-02  0.10D-02  1514.62
    2     4     4     1.06777034    -1.07288590  -462.86987219    -1.07288590    -0.01830157  0.17D-02  0.10D-02  1514.62
    2     5     5     1.06786821    -1.07214628  -462.86913256    -1.07214628    -0.01887580  0.17D-02  0.11D-02  1514.62
    2     6     6     1.06795231    -1.07210067  -462.86908696    -1.07210067    -0.01891325  0.16D-02  0.11D-02  1514.62
    2     7     7     1.06734248    -1.07362101  -462.86500475    -1.07362101    -0.01781953  0.15D-02  0.99D-03  1514.62
    2     8     8     1.06733482    -1.07361246  -462.86499620    -1.07361246    -0.01782604  0.15D-02  0.10D-02  1514.62
    2     9     9     1.06732943    -1.07360721  -462.86499096    -1.07360721    -0.01783044  0.15D-02  0.99D-03  1514.62
    3     1     1     1.06105806    -1.08971077  -462.89551011    -0.01919627    -0.00043556  0.27D-04  0.51D-04  2973.62
    3     2     2     1.06102291    -1.09036973  -462.88735602    -0.01738660    -0.00039646  0.15D-04  0.49D-04  2973.62
    3     3     3     1.06102101    -1.09036870  -462.88735499    -0.01743649    -0.00039766  0.15D-04  0.49D-04  2973.62
    3     4     4     1.06099673    -1.09036027  -462.88734656    -0.01747437    -0.00040296  0.15D-04  0.50D-04  2973.62
    3     5     5     1.06079879    -1.09027183  -462.88725812    -0.01812556    -0.00045629  0.15D-04  0.60D-04  2973.62
    3     6     6     1.06074713    -1.09025492  -462.88724121    -0.01815425    -0.00046561  0.15D-04  0.61D-04  2973.62
    3     7     7     1.06104812    -1.09065108  -462.88203483    -0.01703007    -0.00039241  0.15D-04  0.48D-04  2973.62
    3     8     8     1.06104259    -1.09064954  -462.88203328    -0.01703708    -0.00039376  0.15D-04  0.49D-04  2973.62
    3     9     9     1.06104228    -1.09064786  -462.88203161    -0.01704065    -0.00039412  0.15D-04  0.49D-04  2973.62
    4     1     1     1.06130468    -1.09021341  -462.89601275    -0.00050263    -0.00003185  0.11D-05  0.41D-05  4437.13
    4     2     2     1.06139139    -1.09083322  -462.88781950    -0.00046348    -0.00003088  0.94D-06  0.39D-05  4437.13
    4     3     3     1.06139377    -1.09083291  -462.88781920    -0.00046421    -0.00003102  0.94D-06  0.40D-05  4437.13
    4     4     4     1.06138534    -1.09083239  -462.88781868    -0.00047212    -0.00003158  0.96D-06  0.40D-05  4437.13
    4     5     5     1.06130282    -1.09082160  -462.88780789    -0.00054977    -0.00003977  0.12D-05  0.49D-05  4437.13
    4     6     6     1.06129538    -1.09081949  -462.88780578    -0.00056457    -0.00004127  0.13D-05  0.50D-05  4437.13
    4     7     7     1.06145152    -1.09111131  -462.88249506    -0.00046023    -0.00003095  0.89D-06  0.39D-05  4437.13
    4     8     8     1.06145173    -1.09111118  -462.88249493    -0.00046164    -0.00003094  0.89D-06  0.40D-05  4437.13
    4     9     9     1.06144879    -1.09111062  -462.88249436    -0.00046276    -0.00003129  0.89D-06  0.40D-05  4437.13
    5     1     1     1.06170356    -1.09025339  -462.89605273    -0.00003998    -0.00000261  0.16D-06  0.25D-06  5899.90
    5     2     2     1.06179177    -1.09087180  -462.88785809    -0.00003858    -0.00000250  0.12D-06  0.24D-06  5899.90
    5     3     3     1.06179173    -1.09087178  -462.88785807    -0.00003887    -0.00000253  0.13D-06  0.24D-06  5899.90
    5     4     4     1.06179211    -1.09087173  -462.88785802    -0.00003934    -0.00000257  0.13D-06  0.25D-06  5899.90
    5     5     5     1.06179252    -1.09087128  -462.88785757    -0.00004968    -0.00000304  0.15D-06  0.28D-06  5899.90
    5     6     6     1.06179239    -1.09087108  -462.88785737    -0.00005159    -0.00000316  0.15D-06  0.29D-06  5899.90
    5     7     7     1.06185826    -1.09114989  -462.88253363    -0.00003858    -0.00000254  0.12D-06  0.25D-06  5899.90
    5     8     8     1.06185838    -1.09114982  -462.88253356    -0.00003863    -0.00000257  0.12D-06  0.26D-06  5899.90
    5     9     9     1.06185825    -1.09114975  -462.88253350    -0.00003913    -0.00000262  0.12D-06  0.26D-06  5899.90
    6     1     1     1.06175458    -1.09025639  -462.89605573    -0.00000300    -0.00000020  0.10D-07  0.24D-07  7366.39
    6     2     2     1.06184204    -1.09087472  -462.88786101    -0.00000292    -0.00000023  0.99D-08  0.27D-07  7366.39
    6     3     3     1.06184416    -1.09087469  -462.88786098    -0.00000291    -0.00000022  0.88D-08  0.27D-07  7366.39
    6     4     4     1.06184354    -1.09087467  -462.88786096    -0.00000294    -0.00000020  0.87D-08  0.24D-07  7366.39
    6     5     5     1.06184386    -1.09087467  -462.88786096    -0.00000339    -0.00000020  0.87D-08  0.24D-07  7366.39
    6     6     6     1.06184140    -1.09087466  -462.88786095    -0.00000357    -0.00000024  0.10D-07  0.28D-07  7366.39
    6     7     7     1.06190928    -1.09115284  -462.88253658    -0.00000295    -0.00000022  0.89D-08  0.27D-07  7366.39
    6     8     8     1.06190958    -1.09115282  -462.88253656    -0.00000300    -0.00000023  0.91D-08  0.28D-07  7366.39
    6     9     9     1.06190972    -1.09115282  -462.88253656    -0.00000307    -0.00000023  0.93D-08  0.29D-07  7366.39
    7     1     1     1.06175556    -1.09025663  -462.89605597    -0.00000024    -0.00000002  0.10D-08  0.30D-08  8833.89
    7     2     2     1.06184336    -1.09087499  -462.88786128    -0.00000027    -0.00000002  0.95D-09  0.33D-08  8833.89
    7     3     3     1.06184461    -1.09087495  -462.88786124    -0.00000026    -0.00000003  0.92D-09  0.38D-08  8833.89
    7     4     4     1.06184325    -1.09087494  -462.88786123    -0.00000027    -0.00000003  0.10D-08  0.35D-08  8833.89
    7     5     5     1.06184459    -1.09087492  -462.88786120    -0.00000024    -0.00000002  0.92D-09  0.32D-08  8833.89
    7     6     6     1.06184444    -1.09087491  -462.88786120    -0.00000025    -0.00000002  0.86D-09  0.31D-08  8833.89
    7     7     7     1.06190864    -1.09115310  -462.88253685    -0.00000027    -0.00000003  0.12D-08  0.40D-08  8833.89
    7     8     8     1.06190863    -1.09115310  -462.88253685    -0.00000028    -0.00000003  0.10D-08  0.35D-08  8833.89
    7     9     9     1.06190865    -1.09115309  -462.88253684    -0.00000028    -0.00000003  0.11D-08  0.37D-08  8833.89


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.2%   3.6%
 P   0.2%  35.7%  45.0%

 Initialization:   0.6%
 Other:           14.6%

 Total CPU:     8833.9 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222222222/20/0           0.5602728   0.7864937   0.0013704  -0.0959271   0.0000287  -0.0002444   0.0000000  -0.0000000
                           -0.0000000
 2222222222/2200/           0.5602722  -0.3101718  -0.0004511   0.7290884  -0.0002219   0.0004791   0.0000000  -0.0000000
                           -0.0000000
 2222222222/22/00           0.0000001  -0.0012065   0.6861716  -0.0000888  -0.0001933  -0.0000141  -0.6857804   0.0205403
                            0.0026187
 222222222222/00/           0.0000000  -0.0012065   0.6861700  -0.0000888  -0.0001933  -0.0000141   0.6857820  -0.0205403
                           -0.0026187
 22222222222/2/00          -0.0000000  -0.0000010   0.0001932   0.0002115   0.6861574  -0.0046107  -0.0034393  -0.0274275
                           -0.6855356
 22222222222/200/          -0.0000000   0.0001668   0.0000157  -0.0003785   0.0046108   0.6861564  -0.0204189  -0.6852374
                            0.0275180
 2222222222/220/0          -0.0000000   0.0001668   0.0000156  -0.0003784   0.0046108   0.6861563   0.0204189   0.6852376
                           -0.0275180
 222222222222/0/0           0.0000000  -0.0000010   0.0001932   0.0002115   0.6861554  -0.0046107   0.0034393   0.0274276
                            0.6855377
 222222222222//00           0.5602725  -0.4763224  -0.0009195  -0.6331609   0.0001931  -0.0002347  -0.0000000   0.0000000
                            0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970477    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000   -0.001706    0.083879    0.000236   -0.000001    0.966803   -0.000000    0.000000    0.000000
 3          -0.000000    0.970434    0.000273    0.000022    0.000273    0.001689   -0.000001   -0.000000   -0.000000
 4           0.000000   -0.000126    0.966805   -0.000535    0.000299   -0.083879   -0.000000    0.000000    0.000000
 5           0.000000   -0.000273   -0.000295    0.006521    0.970414    0.000025   -0.000000   -0.000001   -0.000000
 6           0.000000   -0.000020    0.000515    0.970414   -0.006521   -0.000282   -0.000000    0.000000   -0.000000
 7           0.000000    0.000001    0.000000    0.000000    0.000000    0.000000    0.969964    0.004864    0.028880
 8           0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.029052    0.038793    0.969195
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000002   -0.000000   -0.003704    0.969618   -0.038921

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970477   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.970437    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.970436    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.970437   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.970436    0.000000   -0.000000    0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970436    0.000000    0.000000   -0.000000
 7          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970406    0.000000   -0.000000
 8           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.970406   -0.000000
 9           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.970406


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97047654 (fixed)   0.97048135 (relaxed)   0.97047654 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001237   -0.00000720   -0.99664459
 Singles      0.00750626   -0.03206409   -0.03790389
 Pairs        0.05425007    0.00000001   -0.05570814
 Total        1.06176870   -0.03207128   -1.09025663
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80579934
 Nuclear energy                         0.00000000
 Kinetic energy                       329.63746607
 One electron energy                 -801.03356461
 Two electron energy                  338.13750864
 Virial quotient                       -1.40425802
 Correlation energy                    -1.09025663
 !MRCI STATE 1.1 Energy              -462.896055970018

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.96339970 (Davidson, fixed reference)
 Cluster corrected energies          -462.96338822 (Davidson, relaxed reference)
 Cluster corrected energies          -462.96339970 (Davidson, rotated reference)

 Cluster corrected energies          -462.96111667 (Pople, fixed reference)
 Cluster corrected energies          -462.96110498 (Pople, relaxed reference)
 Cluster corrected energies          -462.96111667 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96680320 (fixed)   0.97044067 (relaxed)   0.97043655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001210   -0.00001454   -0.99731301
 Singles      0.00734975   -0.03188517   -0.03757618
 Pairs        0.05449436   -0.00000001   -0.05598580
 Total        1.06185621   -0.03189971   -1.09087499
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79698629
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64534197
 One electron energy                 -801.05314104
 Two electron energy                  338.16527976
 Virial quotient                       -1.40419961
 Correlation energy                    -1.09087499
 !MRCI STATE 2.1 Energy              -462.887861276440

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95533867 (Davidson, fixed reference)
 Cluster corrected energies          -462.95532882 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95533867 (Davidson, rotated reference)

 Cluster corrected energies          -462.95305605 (Pople, fixed reference)
 Cluster corrected energies          -462.95304603 (Pople, relaxed reference)
 Cluster corrected energies          -462.95305605 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97043443 (fixed)   0.97044010 (relaxed)   0.97043598 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001210   -0.00001453   -0.99731196
 Singles      0.00734978   -0.03188504   -0.03757614
 Pairs        0.05449558    0.00000003   -0.05598685
 Total        1.06185745   -0.03189954   -1.09087495
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79698629
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64554264
 One electron energy                 -801.05323642
 Two electron energy                  338.16537519
 Virial quotient                       -1.40419876
 Correlation energy                    -1.09087495
 !MRCI STATE 3.1 Energy              -462.887861235067

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95533998 (Davidson, fixed reference)
 Cluster corrected energies          -462.95533014 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95533998 (Davidson, rotated reference)

 Cluster corrected energies          -462.95305739 (Pople, fixed reference)
 Cluster corrected energies          -462.95304737 (Pople, relaxed reference)
 Cluster corrected energies          -462.95305739 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96680457 (fixed)   0.97044072 (relaxed)   0.97043660 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001210   -0.00001454   -0.99731288
 Singles      0.00734984   -0.03188534   -0.03757627
 Pairs        0.05449416   -0.00000005   -0.05598579
 Total        1.06185610   -0.03189993   -1.09087494
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79698629
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64532555
 One electron energy                 -801.05312911
 Two electron energy                  338.16526787
 Virial quotient                       -1.40419968
 Correlation energy                    -1.09087494
 !MRCI STATE 4.1 Energy              -462.887861232330

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95533850 (Davidson, fixed reference)
 Cluster corrected energies          -462.95532865 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95533850 (Davidson, rotated reference)

 Cluster corrected energies          -462.95305588 (Pople, fixed reference)
 Cluster corrected energies          -462.95304586 (Pople, relaxed reference)
 Cluster corrected energies          -462.95305588 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.97041400 (fixed)   0.97044011 (relaxed)   0.97043599 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001210   -0.00001453   -0.99731190
 Singles      0.00734974   -0.03188506   -0.03757606
 Pairs        0.05449559    0.00000000   -0.05598695
 Total        1.06185743   -0.03189959   -1.09087492
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79698629
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64535351
 One electron energy                 -801.05315170
 Two electron energy                  338.16529049
 Virial quotient                       -1.40419956
 Correlation energy                    -1.09087492
 !MRCI STATE 5.1 Energy              -462.887861204659

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95533993 (Davidson, fixed reference)
 Cluster corrected energies          -462.95533008 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95533993 (Davidson, rotated reference)

 Cluster corrected energies          -462.95305734 (Pople, fixed reference)
 Cluster corrected energies          -462.95304732 (Pople, relaxed reference)
 Cluster corrected energies          -462.95305734 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.97041397 (fixed)   0.97044018 (relaxed)   0.97043606 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001210   -0.00001453   -0.99731226
 Singles      0.00734968   -0.03188490   -0.03757592
 Pairs        0.05449551    0.00000008   -0.05598673
 Total        1.06185728   -0.03189935   -1.09087491
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79698629
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64537038
 One electron energy                 -801.05316972
 Two electron energy                  338.16530852
 Virial quotient                       -1.40419949
 Correlation energy                    -1.09087491
 !MRCI STATE 6.1 Energy              -462.887861199917

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95533976 (Davidson, fixed reference)
 Cluster corrected energies          -462.95532991 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95533976 (Davidson, rotated reference)

 Cluster corrected energies          -462.95305717 (Pople, fixed reference)
 Cluster corrected energies          -462.95304714 (Pople, relaxed reference)
 Cluster corrected energies          -462.95305717 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96996360 (fixed)   0.97041078 (relaxed)   0.97040565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001430   -0.00001592   -0.96802823
 Singles      0.00728049   -0.03166542   -0.03729755
 Pairs        0.05462904   -0.03153105   -0.08582732
 Total        1.06192383   -0.06321239   -1.09115310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79138374
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64910464
 One electron energy                 -801.05958235
 Two electron energy                  338.17704550
 Virial quotient                       -1.40416743
 Correlation energy                    -1.09115310
 !MRCI STATE 7.1 Energy              -462.882536849680

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95010523 (Davidson, fixed reference)
 Cluster corrected energies          -462.95009298 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95010523 (Davidson, rotated reference)

 Cluster corrected energies          -462.94782337 (Pople, fixed reference)
 Cluster corrected energies          -462.94781089 (Pople, relaxed reference)
 Cluster corrected energies          -462.94782337 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96919462 (fixed)   0.97041079 (relaxed)   0.97040566 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001430   -0.00001592   -0.00127478
 Singles      0.00728032   -0.03166506   -0.03729722
 Pairs        0.05462919   -1.05814992   -1.05258110
 Total        1.06192381   -1.08983091   -1.09115310
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79138374
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64906440
 One electron energy                 -801.05958271
 Two electron energy                  338.17704586
 Virial quotient                       -1.40416760
 Correlation energy                    -1.09115310
 !MRCI STATE 8.1 Energy              -462.882536846447

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95010521 (Davidson, fixed reference)
 Cluster corrected energies          -462.95009295 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95010521 (Davidson, rotated reference)

 Cluster corrected energies          -462.94782334 (Pople, fixed reference)
 Cluster corrected energies          -462.94781087 (Pople, relaxed reference)
 Cluster corrected energies          -462.94782334 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.96961773 (fixed)   0.97041078 (relaxed)   0.97040565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00001430   -0.00001592   -1.03773637
 Singles      0.00728039   -0.03166523   -0.03729738
 Pairs        0.05462914    0.04249351   -0.01611935
 Total        1.06192383    0.01081236   -1.09115309
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79138374
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64907917
 One electron energy                 -801.05957873
 Two electron energy                  338.17704189
 Virial quotient                       -1.40416754
 Correlation energy                    -1.09115309
 !MRCI STATE 9.1 Energy              -462.882536839295

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95010522 (Davidson, fixed reference)
 Cluster corrected energies          -462.95009297 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95010522 (Davidson, rotated reference)

 Cluster corrected energies          -462.94782336 (Pople, fixed reference)
 Cluster corrected energies          -462.94781088 (Pople, relaxed reference)
 Cluster corrected energies          -462.94782336 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6714.00       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     20308.60   9377.43  10909.71     13.95      0.71      6.57
 REAL TIME  *     20837.24 SEC
 DISK USED  *         6.64 GB (local),       94.05 GB (total)
 SF USED    *        33.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.96338822  AU                              
 SETTING HLSDIAG(12)    =      -462.95532882  AU                              
 SETTING HLSDIAG(13)    =      -462.95533014  AU                              
 SETTING HLSDIAG(14)    =      -462.95532865  AU                              
 SETTING HLSDIAG(15)    =      -462.95533008  AU                              
 SETTING HLSDIAG(16)    =      -462.95532991  AU                              
 SETTING HLSDIAG(17)    =      -462.95009298  AU                              
 SETTING HLSDIAG(18)    =      -462.95009295  AU                              
 SETTING HLSDIAG(19)    =      -462.95009297  AU                              


         HLSDIAG
    -463.3806311
    -462.9533175
    -462.9533175
    -462.9533175
    -462.9533179
    -462.9533166
    -462.9502967
    -462.9502966
    -462.9502966
    -462.9385300
    -462.9633882
    -462.9553288
    -462.9553301
    -462.9553287
    -462.9553301
    -462.9553299
    -462.9500930
    -462.9500930
    -462.9500930
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.303239   -462.885888   -462.885888   -462.885888   -462.885888   -462.885888   -462.882600   -462.882600
                      -462.882600   -462.869082
 Replaced energies:   -463.380631   -462.953317   -462.953318   -462.953317   -462.953318   -462.953317   -462.950297   -462.950297
                      -462.950297   -462.938530

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.896056   -462.887861   -462.887861   -462.887861   -462.887861   -462.887861   -462.882537   -462.882537
                      -462.882537
 Replaced energies:   -462.963388   -462.955329   -462.955330   -462.955329   -462.955330   -462.955330   -462.950093   -462.950093
                      -462.950093



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.38063108

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   93784.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   93784.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   93784.49       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   93784.40       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   93784.69       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94447.48       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94447.49       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94447.49       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   97029.97
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0      -0.00       0.00      -0.02      -0.00      -0.00       0.00     -75.11    -980.51      86.88      -0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00     -15.26      88.29     983.14       0.00

   12   2.1  1.0  1.0       0.00      24.23   -1040.86     -14.91     -19.90      53.61     -31.81    -415.02      37.84      -0.00
                           -0.00      10.92     -14.83    1200.62      10.07      -3.16      -4.14      23.28     271.15      -0.00

   13   3.1  1.0  1.0      -0.00       5.72     -10.41     652.34       5.45      -1.59       9.42     -54.66    -599.55      -0.00
                           -0.00      15.20    -651.26      -6.43     -12.89      33.71      45.82     598.07     -52.60      -0.00

   14   4.1  1.0  1.0       0.00     -18.44     783.03      10.28      14.50     -40.48     -42.09    -551.84      48.98       0.00
                           -0.00       4.22      -6.70     510.77       3.98      -1.06       9.55     -57.27    -637.13      -0.00

   15   5.1  1.0  1.0       0.00    -652.15     -16.09       5.34      12.14      -7.02     600.29     -44.62      13.50      -0.00
                            0.00     -15.77      63.02      11.22    -975.25     864.49       4.02      -0.45       0.30       0.00

   16   6.1  1.0  1.0       0.00       5.43      -1.88      -9.38    1238.07     412.20      -4.05       0.10      -0.06      -0.00
                            0.00     652.29      15.43      -5.68       2.72       3.99     600.29     -44.85      12.92      -0.00

   17   7.1  1.0  1.0      17.45      -2.02       6.94    -600.50       1.47     -17.96     -13.31      58.40     647.60      27.81
                           -2.94      -3.88    -599.84      -7.76     -13.83      27.94      30.17     647.39     -57.67      -4.68

   18   8.1  1.0  1.0     585.52      36.19     -37.29      13.64     218.37    -655.95     -25.63       0.19     -19.98     933.25
                          -23.44    -599.89       2.68       5.47     -14.54     -30.66    -649.36      29.00     -12.68     -37.35

   19   9.1  1.0  1.0     -23.51     599.50      16.05      -2.68     -12.27      35.37    -648.12      48.15     -16.88     -37.48
                         -585.77      29.56     -14.72       2.05    -460.37    -517.62      25.83      -4.41       0.80    -933.65

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00    1391.91    -103.88      30.94      -0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     223.38       5.27      -1.70      -1.96       0.18    -973.07      72.64     -21.42       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -26.36      84.69       2.94     371.73    1805.45      -1.71      -0.11       0.00      -0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1831.07      44.19     -16.21     -10.81      27.30     118.67      -9.16       2.19      -0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      20.96    -921.13      -5.97     -17.91      46.81     -64.90    -845.18      80.64       0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       9.10      -6.07     922.64       7.82      -2.73     -12.43      81.81     847.48       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -828.70       9.53     -32.96      16.22     960.32    -196.05      -0.77      -2.13      27.68   -1320.86

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           24.82       8.13     -44.34     848.17     -22.32       5.43     -17.01      45.65     918.46      39.56

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            3.16      19.39    -846.73     -45.24     -20.39      44.39     -69.38    -916.46      44.16       5.04

   29   1.1  1.0 -1.0      -0.00       0.00      -0.02      -0.00      -0.00       0.00     -75.11    -980.51      86.88      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      15.26     -88.29    -983.14      -0.00

   30   2.1  1.0 -1.0       0.00      24.23   -1040.86     -14.91     -19.90      53.61     -31.81    -415.02      37.84      -0.00
                            0.00     -10.92      14.83   -1200.62     -10.07       3.16       4.14     -23.28    -271.15       0.00

   31   3.1  1.0 -1.0      -0.00       5.72     -10.41     652.34       5.45      -1.59       9.42     -54.66    -599.55      -0.00
                            0.00     -15.20     651.26       6.43      12.89     -33.71     -45.82    -598.07      52.60       0.00

   32   4.1  1.0 -1.0       0.00     -18.44     783.03      10.28      14.50     -40.48     -42.09    -551.84      48.98       0.00
                            0.00      -4.22       6.70    -510.77      -3.98       1.06      -9.55      57.27     637.13       0.00

   33   5.1  1.0 -1.0       0.00    -652.15     -16.09       5.34      12.14      -7.02     600.29     -44.62      13.50      -0.00
                           -0.00      15.77     -63.02     -11.22     975.25    -864.49      -4.02       0.45      -0.30      -0.00

   34   6.1  1.0 -1.0       0.00       5.43      -1.88      -9.38    1238.07     412.20      -4.05       0.10      -0.06      -0.00
                           -0.00    -652.29     -15.43       5.68      -2.72      -3.99    -600.29      44.85     -12.92       0.00

   35   7.1  1.0 -1.0      17.45      -2.02       6.94    -600.50       1.47     -17.96     -13.31      58.40     647.60      27.81
                            2.94       3.88     599.84       7.76      13.83     -27.94     -30.17    -647.39      57.67       4.68

   36   8.1  1.0 -1.0     585.52      36.19     -37.29      13.64     218.37    -655.95     -25.63       0.19     -19.98     933.25
                           23.44     599.89      -2.68      -5.47      14.54      30.66     649.36     -29.00      12.68      37.35

   37   9.1  1.0 -1.0     -23.51     599.50      16.05      -2.68     -12.27      35.37    -648.12      48.15     -16.88     -37.48
                          585.77     -29.56      14.72      -2.05     460.37     517.62     -25.83       4.41      -0.80     933.65


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0      -0.00       0.00      -0.00       0.00       0.00       0.00      17.45     585.52     -23.51       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00       2.94      23.44     585.77      -0.00

    2   2.1  0.0  0.0       0.00      24.23       5.72     -18.44    -652.15       5.43      -2.02      36.19     599.50       0.00
                           -0.00     -10.92     -15.20      -4.22      15.77    -652.29       3.88     599.89     -29.56       0.00

    3   3.1  0.0  0.0      -0.02   -1040.86     -10.41     783.03     -16.09      -1.88       6.94     -37.29      16.05       0.00
                           -0.00      14.83     651.26       6.70     -63.02     -15.43     599.84      -2.68      14.72       0.00

    4   4.1  0.0  0.0      -0.00     -14.91     652.34      10.28       5.34      -9.38    -600.50      13.64      -2.68       0.00
                           -0.00   -1200.62       6.43    -510.77     -11.22       5.68       7.76      -5.47      -2.05      -0.00

    5   5.1  0.0  0.0      -0.00     -19.90       5.45      14.50      12.14    1238.07       1.47     218.37     -12.27       0.00
                           -0.00     -10.07      12.89      -3.98     975.25      -2.72      13.83      14.54     460.37      -0.00

    6   6.1  0.0  0.0       0.00      53.61      -1.59     -40.48      -7.02     412.20     -17.96    -655.95      35.37       0.00
                           -0.00       3.16     -33.71       1.06    -864.49      -3.99     -27.94      30.66     517.62       0.00

    7   7.1  0.0  0.0     -75.11     -31.81       9.42     -42.09     600.29      -4.05     -13.31     -25.63    -648.12       0.00
                           15.26       4.14     -45.82      -9.55      -4.02    -600.29     -30.17     649.36     -25.83   -1391.91

    8   8.1  0.0  0.0    -980.51    -415.02     -54.66    -551.84     -44.62       0.10      58.40       0.19      48.15       0.00
                          -88.29     -23.28    -598.07      57.27       0.45      44.85    -647.39     -29.00       4.41     103.88

    9   9.1  0.0  0.0      86.88      37.84    -599.55      48.98      13.50      -0.06     647.60     -19.98     -16.88       0.00
                         -983.14    -271.15      52.60     637.13      -0.30     -12.92      57.67      12.68      -0.80     -30.94

   10  10.1  0.0  0.0      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      27.81     933.25     -37.48       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       4.68      37.35     933.65       0.00

   11   1.1  1.0  1.0   91574.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    1503.07     -45.02      -5.74       0.00

   12   2.1  1.0  1.0       0.00   93343.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     206.84       2.96       0.15      -0.00   -1054.42      31.59       4.25       0.00

   13   3.1  1.0  1.0       0.00       0.00   93342.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -206.84      -0.00   -1695.86       0.53      -1.13      -1.85      -0.20       0.04       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   93343.09       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -2.96    1695.86       0.00      -0.95      -0.29     128.60      -4.16      -0.99       0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   93342.78       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.15      -0.53       0.95       0.00    -854.22     -27.40    -918.93      43.09      -0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   93342.82       0.00       0.00       0.00      -0.00
                            0.00       0.00       1.13       0.29     854.22      -0.00       5.13      42.96     919.33       0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   94492.19       0.00       0.00     -31.65
                        -1503.07    1054.42       1.85    -128.60      27.40      -5.13       0.00      -3.25      25.46       5.33

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94492.20       0.00   -1061.99
                           45.02     -31.59       0.20       4.16     918.93     -42.96       3.25      -0.00     850.02      42.51

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94492.19      42.65
                            5.74      -4.25      -0.04       0.99     -43.09    -919.33     -25.46    -850.02      -0.00    1062.45

   20   1.1  1.0  0.0      -0.00       0.00       0.00      -0.00      -0.00      -0.00     -31.65   -1061.99      42.65   91574.22
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -5.33     -42.51   -1062.45       0.00

   21   2.1  1.0  0.0      -0.00      -0.00      -0.02       0.36      -7.55    -965.34     -13.44    -451.15      19.26       0.00
                            0.00       0.00      -0.46      -0.34   -1111.61       6.41      -1.60     -10.61    -293.98      -0.00

   22   3.1  1.0  0.0      -0.00       0.02      -0.00       0.17     604.00      -5.66      -3.11     -26.89    -650.22       0.00
                            0.00       0.46       0.00      -0.20       2.04     604.02     -19.38    -649.98      25.67      -0.00

   23   4.1  1.0  0.0       0.00      -0.36      -0.17      -0.00       4.80     726.23     -17.67    -599.76      24.17       0.00
                            0.00       0.34       0.20      -0.00    -472.91       3.10       3.83      27.72     690.92      -0.00

   24   5.1  1.0  0.0       0.00       7.55    -604.00      -4.80      -0.00      -0.21     650.48     -19.29      -2.31       0.00
                           -0.00    1111.61      -2.04     472.91       0.00      -0.18      -4.37       0.31      -0.20      -0.00

   25   6.1  1.0  0.0       0.00     965.34       5.66    -726.23       0.21      -0.00      -4.38      -0.09       0.04       0.00
                            0.00      -6.41    -604.02      -3.10       0.18       0.00    -650.47      19.51       2.94      -0.00

   26   7.1  1.0  0.0      31.65      13.44       3.11      17.67    -650.48       4.38      -0.00      24.12     600.57       0.00
                            5.33       1.60      19.38      -3.83       4.37     650.47      -0.00    -600.84      24.04      -0.00

   27   8.1  1.0  0.0    1061.99     451.15      26.89     599.76      19.29       0.09     -24.12      -0.00     -17.90       0.00
                           42.51      10.61     649.98     -27.72      -0.31     -19.51     600.84      -0.00      -3.01      -0.00

   28   9.1  1.0  0.0     -42.65     -19.26     650.22     -24.17       2.31      -0.04    -600.57      17.90       0.00       0.00
                         1062.45     293.98     -25.67    -690.92       0.20      -2.94     -24.04       3.01       0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      31.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       5.33

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    1061.99
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      42.51

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -42.65
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1062.45


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00     828.70     -24.82      -3.16      -0.00      -0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      24.23
                         -223.38      26.36   -1831.07     -20.96      -9.10      -9.53      -8.13     -19.39       0.00      10.92

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02   -1040.86
                           -5.27     -84.69     -44.19     921.13       6.07      32.96      44.34     846.73       0.00     -14.83

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -14.91
                            1.70      -2.94      16.21       5.97    -922.64     -16.22    -848.17      45.24       0.00    1200.62

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -19.90
                            1.96    -371.73      10.81      17.91      -7.82    -960.32      22.32      20.39       0.00      10.07

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      53.61
                           -0.18   -1805.45     -27.30     -46.81       2.73     196.05      -5.43     -44.39       0.00      -3.16

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -75.11     -31.81
                          973.07       1.71    -118.67      64.90      12.43       0.77      17.01      69.38     -15.26      -4.14

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -980.51    -415.02
                          -72.64       0.11       9.16     845.18     -81.81       2.13     -45.65     916.46      88.29      23.28

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      86.88      37.84
                           21.42      -0.00      -2.19     -80.64    -847.48     -27.68    -918.46     -44.16     983.14     271.15

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00    1320.86     -39.56      -5.04       0.00      -0.00

   11   1.1  1.0  1.0      -0.00      -0.00       0.00       0.00       0.00      31.65    1061.99     -42.65       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -5.33     -42.51   -1062.45       0.00       0.00

   12   2.1  1.0  1.0      -0.00       0.02      -0.36       7.55     965.34      13.44     451.15     -19.26       0.00       0.00
                           -0.00      -0.46      -0.34   -1111.61       6.41      -1.60     -10.61    -293.98       0.00       0.00

   13   3.1  1.0  1.0      -0.02      -0.00      -0.17    -604.00       5.66       3.11      26.89     650.22       0.00       0.00
                            0.46      -0.00      -0.20       2.04     604.02     -19.38    -649.98      25.67       0.00       0.00

   14   4.1  1.0  1.0       0.36       0.17      -0.00      -4.80    -726.23      17.67     599.76     -24.17       0.00       0.00
                            0.34       0.20       0.00    -472.91       3.10       3.83      27.72     690.92       0.00       0.00

   15   5.1  1.0  1.0      -7.55     604.00       4.80      -0.00       0.21    -650.48      19.29       2.31       0.00       0.00
                         1111.61      -2.04     472.91      -0.00      -0.18      -4.37       0.31      -0.20       0.00       0.00

   16   6.1  1.0  1.0    -965.34      -5.66     726.23      -0.21      -0.00       4.38       0.09      -0.04       0.00       0.00
                           -6.41    -604.02      -3.10       0.18      -0.00    -650.47      19.51       2.94       0.00       0.00

   17   7.1  1.0  1.0     -13.44      -3.11     -17.67     650.48      -4.38      -0.00     -24.12    -600.57       0.00       0.00
                            1.60      19.38      -3.83       4.37     650.47       0.00    -600.84      24.04       0.00       0.00

   18   8.1  1.0  1.0    -451.15     -26.89    -599.76     -19.29      -0.09      24.12      -0.00      17.90       0.00       0.00
                           10.61     649.98     -27.72      -0.31     -19.51     600.84       0.00      -3.01       0.00       0.00

   19   9.1  1.0  1.0      19.26    -650.22      24.17      -2.31       0.04     600.57     -17.90       0.00       0.00       0.00
                          293.98     -25.67    -690.92       0.20      -2.94     -24.04       3.01      -0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   21   2.1  1.0  0.0   93343.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   3.1  1.0  0.0       0.00   93342.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.46

   23   4.1  1.0  0.0       0.00       0.00   93343.09       0.00       0.00       0.00       0.00       0.00      -0.00       0.36
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.34

   24   5.1  1.0  0.0       0.00       0.00       0.00   93342.78       0.00       0.00       0.00       0.00      -0.00      -7.55
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    1111.61

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   93342.82       0.00       0.00       0.00      -0.00    -965.34
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -6.41

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   94492.19       0.00       0.00     -31.65     -13.44
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       5.33       1.60

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94492.20       0.00   -1061.99    -451.15
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      42.51      10.61

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94492.19      42.65      19.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    1062.45     293.98

   29   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00     -31.65   -1061.99      42.65   91574.22       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -5.33     -42.51   -1062.45       0.00       0.00

   30   2.1  1.0 -1.0      -0.00      -0.02       0.36      -7.55    -965.34     -13.44    -451.15      19.26       0.00   93343.05
                            0.00      -0.46      -0.34   -1111.61       6.41      -1.60     -10.61    -293.98      -0.00       0.00

   31   3.1  1.0 -1.0       0.02      -0.00       0.17     604.00      -5.66      -3.11     -26.89    -650.22       0.00       0.00
                            0.46       0.00      -0.20       2.04     604.02     -19.38    -649.98      25.67      -0.00     206.84

   32   4.1  1.0 -1.0      -0.36      -0.17      -0.00       4.80     726.23     -17.67    -599.76      24.17       0.00       0.00
                            0.34       0.20      -0.00    -472.91       3.10       3.83      27.72     690.92       0.00       2.96

   33   5.1  1.0 -1.0       7.55    -604.00      -4.80      -0.00      -0.21     650.48     -19.29      -2.31       0.00       0.00
                         1111.61      -2.04     472.91       0.00      -0.18      -4.37       0.31      -0.20      -0.00       0.15

   34   6.1  1.0 -1.0     965.34       5.66    -726.23       0.21      -0.00      -4.38      -0.09       0.04       0.00       0.00
                           -6.41    -604.02      -3.10       0.18       0.00    -650.47      19.51       2.94      -0.00      -0.00

   35   7.1  1.0 -1.0      13.44       3.11      17.67    -650.48       4.38      -0.00      24.12     600.57       0.00       0.00
                            1.60      19.38      -3.83       4.37     650.47      -0.00    -600.84      24.04    1503.07   -1054.42

   36   8.1  1.0 -1.0     451.15      26.89     599.76      19.29       0.09     -24.12      -0.00     -17.90       0.00       0.00
                           10.61     649.98     -27.72      -0.31     -19.51     600.84      -0.00      -3.01     -45.02      31.59

   37   9.1  1.0 -1.0     -19.26     650.22     -24.17       2.31      -0.04    -600.57      17.90       0.00       0.00       0.00
                          293.98     -25.67    -690.92       0.20      -2.94     -24.04       3.01       0.00      -5.74       4.25


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0      -0.00       0.00       0.00       0.00      17.45     585.52     -23.51
                           -0.00      -0.00       0.00       0.00      -2.94     -23.44    -585.77

    2   2.1  0.0  0.0       5.72     -18.44    -652.15       5.43      -2.02      36.19     599.50
                           15.20       4.22     -15.77     652.29      -3.88    -599.89      29.56

    3   3.1  0.0  0.0     -10.41     783.03     -16.09      -1.88       6.94     -37.29      16.05
                         -651.26      -6.70      63.02      15.43    -599.84       2.68     -14.72

    4   4.1  0.0  0.0     652.34      10.28       5.34      -9.38    -600.50      13.64      -2.68
                           -6.43     510.77      11.22      -5.68      -7.76       5.47       2.05

    5   5.1  0.0  0.0       5.45      14.50      12.14    1238.07       1.47     218.37     -12.27
                          -12.89       3.98    -975.25       2.72     -13.83     -14.54    -460.37

    6   6.1  0.0  0.0      -1.59     -40.48      -7.02     412.20     -17.96    -655.95      35.37
                           33.71      -1.06     864.49       3.99      27.94     -30.66    -517.62

    7   7.1  0.0  0.0       9.42     -42.09     600.29      -4.05     -13.31     -25.63    -648.12
                           45.82       9.55       4.02     600.29      30.17    -649.36      25.83

    8   8.1  0.0  0.0     -54.66    -551.84     -44.62       0.10      58.40       0.19      48.15
                          598.07     -57.27      -0.45     -44.85     647.39      29.00      -4.41

    9   9.1  0.0  0.0    -599.55      48.98      13.50      -0.06     647.60     -19.98     -16.88
                          -52.60    -637.13       0.30      12.92     -57.67     -12.68       0.80

   10  10.1  0.0  0.0      -0.00       0.00      -0.00      -0.00      27.81     933.25     -37.48
                           -0.00      -0.00       0.00      -0.00      -4.68     -37.35    -933.65

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

   20   1.1  1.0  0.0      -0.00       0.00       0.00       0.00      31.65    1061.99     -42.65
                           -0.00      -0.00       0.00      -0.00      -5.33     -42.51   -1062.45

   21   2.1  1.0  0.0       0.02      -0.36       7.55     965.34      13.44     451.15     -19.26
                           -0.46      -0.34   -1111.61       6.41      -1.60     -10.61    -293.98

   22   3.1  1.0  0.0      -0.00      -0.17    -604.00       5.66       3.11      26.89     650.22
                           -0.00      -0.20       2.04     604.02     -19.38    -649.98      25.67

   23   4.1  1.0  0.0       0.17      -0.00      -4.80    -726.23      17.67     599.76     -24.17
                            0.20       0.00    -472.91       3.10       3.83      27.72     690.92

   24   5.1  1.0  0.0     604.00       4.80      -0.00       0.21    -650.48      19.29       2.31
                           -2.04     472.91      -0.00      -0.18      -4.37       0.31      -0.20

   25   6.1  1.0  0.0      -5.66     726.23      -0.21      -0.00       4.38       0.09      -0.04
                         -604.02      -3.10       0.18      -0.00    -650.47      19.51       2.94

   26   7.1  1.0  0.0      -3.11     -17.67     650.48      -4.38      -0.00     -24.12    -600.57
                           19.38      -3.83       4.37     650.47       0.00    -600.84      24.04

   27   8.1  1.0  0.0     -26.89    -599.76     -19.29      -0.09      24.12      -0.00      17.90
                          649.98     -27.72      -0.31     -19.51     600.84       0.00      -3.01

   28   9.1  1.0  0.0    -650.22      24.17      -2.31       0.04     600.57     -17.90       0.00
                          -25.67    -690.92       0.20      -2.94     -24.04       3.01      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00   -1503.07      45.02       5.74

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -206.84      -2.96      -0.15       0.00    1054.42     -31.59      -4.25

   31   3.1  1.0 -1.0   93342.77       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1695.86      -0.53       1.13       1.85       0.20      -0.04

   32   4.1  1.0 -1.0       0.00   93343.09       0.00       0.00       0.00       0.00       0.00
                        -1695.86      -0.00       0.95       0.29    -128.60       4.16       0.99

   33   5.1  1.0 -1.0       0.00       0.00   93342.78       0.00       0.00       0.00       0.00
                            0.53      -0.95      -0.00     854.22      27.40     918.93     -43.09

   34   6.1  1.0 -1.0       0.00       0.00       0.00   93342.82       0.00       0.00       0.00
                           -1.13      -0.29    -854.22       0.00      -5.13     -42.96    -919.33

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   94492.19       0.00       0.00
                           -1.85     128.60     -27.40       5.13      -0.00       3.25     -25.46

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   94492.20       0.00
                           -0.20      -4.16    -918.93      42.96      -3.25       0.00    -850.02

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   94492.19
                            0.04      -0.99      43.09     919.33      25.46     850.02       0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.38063108 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   93784.496       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   93784.489       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   93784.490       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   93784.405       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   93784.686       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   94447.481       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   94447.493
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+             -0.000       0.001      -0.023      -0.000      -0.000       0.001    -106.216   -1386.646
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      34.272   -1472.001     -21.088     -28.138      75.814     -44.993    -586.928
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+             -0.000       8.085     -14.728     922.553       7.712      -2.249      13.316     -77.302
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000     -26.078    1107.371      14.531      20.513     -57.249     -59.519    -780.423
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+              0.000    -922.279     -22.762       7.553      17.173      -9.927     848.942     -63.096
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000       7.675      -2.665     -13.263    1750.892     582.933      -5.727       0.138
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             24.674      -2.863       9.816    -849.228       2.075     -25.398     -18.817      82.596
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            828.045      51.181     -52.740      19.296     308.817    -927.656     -36.248       0.273
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -33.253     847.815      22.704      -3.796     -17.357      50.015    -916.586      68.094
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.002      -0.000       0.000       0.000      -0.000    1391.913    -103.878

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     223.381       5.274      -1.695      -1.963       0.181    -973.070      72.639

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     -26.356      84.688       2.941     371.732    1805.446      -1.715      -0.110

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1831.066      44.189     -16.208     -10.811      27.303     118.674      -9.160

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      20.957    -921.132      -5.974     -17.913      46.811     -64.904    -845.184

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       9.103      -6.067     922.640       7.824      -2.725     -12.426      81.809

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -828.700       9.526     -32.964      16.224     960.315    -196.052      -0.774      -2.132

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               24.821       8.134     -44.339     848.172     -22.320       5.427     -17.006      45.653

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.164      19.393    -846.734     -45.236     -20.385      44.392     -69.377    -916.460

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.003       0.000       0.000     -21.583     124.855

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      15.439     -20.970    1697.927      14.235      -4.470      -5.858      32.920

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      21.492    -921.020      -9.094     -18.226      47.680      64.794     845.796

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       5.968      -9.478     722.341       5.623      -1.504      13.511     -80.988

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001     -22.302      89.130      15.862   -1379.209    1222.575       5.682      -0.639

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     922.482      21.826      -8.027       3.852       5.647     848.937     -63.426

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.156      -5.492    -848.306     -10.974     -19.556      39.514      42.672     915.550

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.143    -848.376       3.790       7.731     -20.570     -43.353    -918.340      41.017

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -828.404      41.800     -20.819       2.902    -651.057    -732.026      36.528      -6.234

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000      -0.000       0.000      -0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.001      34.272       8.085     -26.078    -922.279       7.675
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.023   -1472.001     -14.728    1107.371     -22.762      -2.665
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.000     -21.088     922.553      14.531       7.553     -13.263
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000     -28.138       7.712      20.513      17.173    1750.892
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.001      75.814      -2.249     -57.249      -9.927     582.933
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000    -106.216     -44.993      13.316     -59.519     848.942      -5.727
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000   -1386.646    -586.928     -77.302    -780.423     -63.096       0.138
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           94447.492       0.000     122.873      53.511    -847.898      69.269      19.085      -0.084
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   97029.966      -0.000      -0.000      -0.000       0.000      -0.000      -0.006
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+            122.873      -0.000   91574.223       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             53.511      -0.000       0.000   93343.055       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+           -847.898      -0.000       0.000       0.000   93342.766       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             69.269       0.000       0.000       0.000       0.000   93343.093       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             19.085      -0.000       0.000       0.000       0.000       0.000   93342.778       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.084      -0.006       0.000       0.000       0.000       0.000       0.000   93342.816
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            915.845      39.328       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+            -28.249    1319.810       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            -23.870     -53.001       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000      -0.000
                               30.936      -0.000       0.000      -0.000      -0.000      -0.000       0.002      -0.000

    2    1  |1 0>               0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000       0.000
                              -21.421       0.000       0.000       0.000      -0.650      -0.485   -1572.054       9.062

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                                0.003      -0.003       0.000       0.650       0.000      -0.284       2.889     854.216

    4    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                2.193      -0.000       0.000       0.485       0.284       0.000    -668.790       4.383

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000
                               80.636       0.000      -0.002    1572.054      -2.889     668.790       0.000      -0.254

    6    1  |1 0>               0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000
                              847.484       0.000       0.000      -9.062    -854.216      -4.383       0.254       0.000

    7    1  |1 0>               0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000
                               27.678   -1320.857       7.538       2.261      27.414      -5.413       6.175     919.902

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                              918.457      39.562      60.115      15.008     919.217     -39.197      -0.432     -27.597

    9    1  |1 0>               0.000       0.000      -0.000      -0.000      -0.000       0.000      -0.000       0.000
                               44.163       5.044    1502.535     415.753     -36.309    -977.105       0.284      -4.154

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1390.364       0.000      -0.000      -0.000      -0.002       0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              383.457      -0.000       0.000      -0.000     206.843       2.955       0.149      -0.003

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -74.386      -0.000       0.002    -206.843      -0.000   -1695.863       0.534      -1.129

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -901.041      -0.000      -0.000      -2.955    1695.863       0.000      -0.951      -0.295

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.422       0.005       0.000      -0.149      -0.534       0.951       0.000    -854.215

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               18.277      -0.000       0.000       0.003       1.129       0.295     854.215      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -81.554      -6.624   -1503.071    1054.423       1.845    -128.598      27.397      -5.125

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -17.939     -52.827      45.019     -31.592       0.203       4.156     918.926     -42.958

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                1.127   -1320.383       5.740      -4.250      -0.038       0.987     -43.092    -919.329

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              24.674     828.045     -33.253       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |0 0>              -2.863      51.181     847.815       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.002    -223.381      26.356   -1831.066     -20.957

    3    1  |0 0>               9.816     -52.740      22.704       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -5.274     -84.688     -44.189     921.132

    4    1  |0 0>            -849.228      19.296      -3.796       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       1.695      -2.941      16.208       5.974

    5    1  |0 0>               2.075     308.817     -17.357       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       1.963    -371.732      10.811      17.913

    6    1  |0 0>             -25.398    -927.656      50.015       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.181   -1805.446     -27.303     -46.811

    7    1  |0 0>             -18.817     -36.248    -916.586       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1391.913     973.070       1.715    -118.674      64.904

    8    1  |0 0>              82.596       0.273      68.094       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     103.878     -72.639       0.110       9.160     845.184

    9    1  |0 0>             915.845     -28.249     -23.870       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000     -30.936      21.421      -0.003      -2.193     -80.636

   10    1  |0 0>              39.328    1319.810     -53.001       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.003       0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000       0.002

    2    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.650      -0.485   -1572.054

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.650       0.000      -0.284       2.889

    4    1  |1 1>+              0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000       0.485       0.284       0.000    -668.790

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.002    1572.054      -2.889     668.790       0.000

    6    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000       0.000      -9.062    -854.216      -4.383       0.254

    7    1  |1 1>+          94492.190       0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       7.538       2.261      27.414      -5.413       6.175

    8    1  |1 1>+              0.000   94492.195       0.000       0.000       0.000       0.000      -0.000      -0.000
                                0.000       0.000       0.000      60.115      15.008     919.217     -39.197      -0.432

    9    1  |1 1>+              0.000       0.000   94492.192      -0.000      -0.000      -0.000       0.000      -0.000
                                0.000       0.000       0.000    1502.535     415.753     -36.309    -977.105       0.284

    1    1  |1 0>              -0.000       0.000      -0.000   91574.223       0.000       0.000       0.000       0.000
                               -7.538     -60.115   -1502.535       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>               0.000       0.000      -0.000       0.000   93343.055       0.000       0.000       0.000
                               -2.261     -15.008    -415.753      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -0.000       0.000      -0.000       0.000       0.000   93342.766       0.000       0.000
                              -27.414    -919.217      36.309      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000   93343.093       0.000
                                5.413      39.197     977.105      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.000      -0.000      -0.000       0.000       0.000       0.000       0.000   93342.778
                               -6.175       0.432      -0.284      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -919.902      27.597       4.154      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -849.715      33.996      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              849.715       0.000      -4.263      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -33.996       4.263       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000
                             1503.071     -45.019      -5.740       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.030      -0.503      10.676
                            -1054.423      31.592       4.250       0.000      -0.000       0.000       0.000      -0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000      -0.030       0.000      -0.241    -854.184
                               -1.845      -0.203       0.038       0.000       0.000      -0.000      -0.000      -0.000

    4    1  |1 1>-              0.000       0.000       0.000      -0.000       0.503       0.241       0.000      -6.791
                              128.598      -4.156      -0.987       0.000       0.000      -0.000       0.000      -0.000

    5    1  |1 1>-              0.000       0.000       0.000      -0.000     -10.676     854.184       6.791       0.000
                              -27.397    -918.926      43.092      -0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.001   -1365.200      -8.007    1027.042      -0.299
                                5.125      42.958     919.329      -0.000      -0.000       0.000      -0.000       0.000

    7    1  |1 1>-              0.000       0.000       0.000     -44.753     -19.007      -4.391     -24.990     919.912
                                0.000      -3.246      25.459      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 1>-              0.000       0.000       0.000   -1501.880    -638.017     -38.031    -848.186     -27.284
                                3.246      -0.000     850.019       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000      60.313      27.241    -919.546      34.179      -3.264
                              -25.459    -850.019      -0.000       0.000       0.000       0.000       0.000      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     828.700     -24.821      -3.164       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -9.103      -9.526      -8.134     -19.393      -0.000     -15.439     -21.492      -5.968

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.067      32.964      44.339     846.734      -0.000      20.970     921.020       9.478

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -922.640     -16.224    -848.172      45.236      -0.003   -1697.927       9.094    -722.341

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -7.824    -960.315      22.320      20.385      -0.000     -14.235      18.226      -5.623

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                2.725     196.052      -5.427     -44.392      -0.000       4.470     -47.680       1.504

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               12.426       0.774      17.006      69.377      21.583       5.858     -64.794     -13.511

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -81.809       2.132     -45.653     916.460    -124.855     -32.920    -845.796      80.988

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -847.484     -27.678    -918.457     -44.163   -1390.364    -383.457      74.386     901.041

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    1320.857     -39.562      -5.044      -0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.000      -7.538     -60.115   -1502.535      -0.000      -0.000      -0.002       0.000

    2    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                                9.062      -2.261     -15.008    -415.753       0.000      -0.000     206.843       2.955

    3    1  |1 1>+              0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000
                              854.216     -27.414    -919.217      36.309       0.002    -206.843      -0.000   -1695.863

    4    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                                4.383       5.413      39.197     977.105      -0.000      -2.955    1695.863       0.000

    5    1  |1 1>+             -0.000       0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                               -0.254      -6.175       0.432      -0.284       0.000      -0.149      -0.534       0.951

    6    1  |1 1>+             -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -919.902      27.597       4.154       0.000       0.003       1.129       0.295

    7    1  |1 1>+             -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              919.902       0.000    -849.715      33.996   -1503.071    1054.423       1.845    -128.598

    8    1  |1 1>+              0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000
                              -27.597     849.715       0.000      -4.263      45.019     -31.592       0.203       4.156

    9    1  |1 1>+              0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -4.154     -33.996       4.263       0.000       5.740      -4.250      -0.038       0.987

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000      -0.030       0.503
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.030       0.000       0.241
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.503      -0.241       0.000
                                0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000      10.676    -854.184      -6.791
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 0>           93342.816       0.000       0.000       0.000       0.001    1365.200       8.007   -1027.042
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    7    1  |1 0>               0.000   94492.190       0.000       0.000      44.753      19.007       4.391      24.990
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 0>               0.000       0.000   94492.195       0.000    1501.880     638.017      38.031     848.186
                               -0.000      -0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000   94492.192     -60.313     -27.241     919.546     -34.179
                               -0.000      -0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.001      44.753    1501.880     -60.313   91574.223       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-           1365.200      19.007     638.017     -27.241       0.000   93343.055       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              8.007       4.391      38.031     919.546       0.000       0.000   93342.766       0.000
                                0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-          -1027.042      24.990     848.186     -34.179       0.000       0.000       0.000   93343.093
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.299    -919.912      27.284       3.264       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000       6.191       0.129      -0.055       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-             -6.191       0.000     -34.108    -849.341       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.129      34.108       0.000      25.309       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.055     849.341     -25.309       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000       4.156      33.143     828.404

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               22.302    -922.482       5.492     848.376     -41.800

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -89.130     -21.826     848.306      -3.790      20.819

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -15.862       8.027      10.974      -7.731      -2.902

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             1379.209      -3.852      19.556      20.570     651.057

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                            -1222.575      -5.647     -39.514      43.353     732.026

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -5.682    -848.937     -42.672     918.340     -36.528

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.639      63.426    -915.550     -41.017       6.234

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.422     -18.277      81.554      17.939      -1.127

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.005       0.000       6.624      52.827    1320.383

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1503.071     -45.019      -5.740

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.149      -0.003   -1054.423      31.592       4.250

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.534      -1.129      -1.845      -0.203       0.038

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.951      -0.295     128.598      -4.156      -0.987

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.000    -854.215     -27.397    -918.926      43.092

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              854.215      -0.000       5.125      42.958     919.329

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               27.397      -5.125       0.000      -3.246      25.459

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              918.926     -42.958       3.246      -0.000     850.019

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -43.092    -919.329     -25.459    -850.019      -0.000

    1    1  |1 0>              -0.000      -0.001     -44.753   -1501.880      60.313
                                0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>             -10.676   -1365.200     -19.007    -638.017      27.241
                                0.000       0.000       0.000      -0.000      -0.000

    3    1  |1 0>             854.184      -8.007      -4.391     -38.031    -919.546
                                0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               6.791    1027.042     -24.990    -848.186      34.179
                                0.000       0.000       0.000      -0.000      -0.000

    5    1  |1 0>               0.000      -0.299     919.912     -27.284      -3.264
                                0.000      -0.000       0.000      -0.000       0.000

    6    1  |1 0>               0.299       0.000      -6.191      -0.129       0.055
                               -0.000       0.000      -0.000       0.000      -0.000

    7    1  |1 0>            -919.912       6.191       0.000      34.108     849.341
                                0.000      -0.000      -0.000      -0.000       0.000

    8    1  |1 0>              27.284       0.129     -34.108       0.000     -25.309
                               -0.000       0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               3.264      -0.055    -849.341      25.309       0.000
                                0.000      -0.000       0.000      -0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          93342.778       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   93342.816       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   94492.190       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   94492.195       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   94492.192
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.38072878    -0.00009771      -21.44      0.00000000        0.00      0.0000
    2  -462.96847622     0.41215485    90457.53      0.41225256    90478.98     11.2180
    3  -462.96847622     0.41215485    90457.53      0.41225256    90478.98     11.2180
    4  -462.96847622     0.41215485    90457.53      0.41225256    90478.98     11.2180
    5  -462.96311425     0.41751683    91634.35      0.41761453    91655.80     11.3639
    6  -462.96311386     0.41751722    91634.44      0.41761492    91655.88     11.3639
    7  -462.96311382     0.41751725    91634.45      0.41761496    91655.89     11.3639
    8  -462.96311376     0.41751732    91634.46      0.41761503    91655.90     11.3639
    9  -462.96311348     0.41751760    91634.52      0.41761530    91655.97     11.3639
   10  -462.96311346     0.41751761    91634.52      0.41761532    91655.97     11.3639
   11  -462.96311341     0.41751766    91634.54      0.41761537    91655.98     11.3639
   12  -462.96286606     0.41776502    91688.82      0.41786273    91710.27     11.3706
   13  -462.96286552     0.41776556    91688.94      0.41786326    91710.39     11.3706
   14  -462.96286550     0.41776558    91688.95      0.41786329    91710.39     11.3706
   15  -462.96286543     0.41776564    91688.96      0.41786335    91710.41     11.3706
   16  -462.96286539     0.41776568    91688.97      0.41786339    91710.41     11.3706
   17  -462.95950943     0.42112165    92425.52      0.42121936    92446.96     11.4620
   18  -462.95950938     0.42112170    92425.53      0.42121940    92446.97     11.4620
   19  -462.95950937     0.42112171    92425.53      0.42121942    92446.98     11.4620
   20  -462.95870502     0.42192605    92602.06      0.42202376    92623.51     11.4839
   21  -462.95870490     0.42192617    92602.09      0.42202388    92623.54     11.4839
   22  -462.95870490     0.42192618    92602.09      0.42202389    92623.54     11.4839
   23  -462.95870489     0.42192619    92602.09      0.42202390    92623.54     11.4839
   24  -462.95870473     0.42192634    92602.13      0.42202405    92623.57     11.4839
   25  -462.95097966     0.42965141    94297.59      0.42974912    94319.03     11.6941
   26  -462.93870949     0.44192158    96990.58      0.44201929    97012.02     12.0280
   27  -462.93870948     0.44192159    96990.58      0.44201930    97012.02     12.0280
   28  -462.93870944     0.44192164    96990.59      0.44201935    97012.03     12.0280
   29  -462.93715241     0.44347867    97332.32      0.44357638    97353.76     12.0703
   30  -462.93715215     0.44347893    97332.37      0.44357664    97353.82     12.0703
   31  -462.93715191     0.44347917    97332.43      0.44357688    97353.87     12.0703
   32  -462.93715190     0.44347917    97332.43      0.44357688    97353.87     12.0703
   33  -462.93715185     0.44347923    97332.44      0.44357694    97353.88     12.0703
   34  -462.93686126     0.44376982    97396.22      0.44386753    97417.66     12.0783
   35  -462.93686124     0.44376983    97396.22      0.44386754    97417.66     12.0783
   36  -462.93686124     0.44376983    97396.22      0.44386754    97417.67     12.0783
   37  -462.92979616     0.45083492    98946.83      0.45093263    98968.27     12.2705

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99988845  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   2    1  |0 0>           0.00000000  0.00000002  0.00000006 -0.00000016  0.00000071 -0.00002971 -0.00000730  0.00118295
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |0 0>          -0.00000000 -0.00000197  0.00000197  0.00000297 -0.00000258  0.00119521  0.00002643  0.00003096
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000000 -0.00000040 -0.00000009 -0.00000000  0.00000108  0.00002441 -0.00111380 -0.00000673
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

   5    1  |0 0>           0.00000000 -0.00000004  0.00000003  0.00000002 -0.00015364  0.00002249 -0.00000883 -0.00000894
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |0 0>          -0.00000000  0.00000007  0.00000002 -0.00000026 -0.00011189 -0.00006165  0.00000244  0.00001742
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>          -0.00000000  0.02585422 -0.14470390  0.13292988  0.00000017 -0.00000011 -0.00000018 -0.00001255
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000000 -0.10949308  0.10071992  0.13093686 -0.00000003 -0.00000228  0.00000119  0.00000092
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |0 0>          -0.00000000 -0.16315768 -0.09052152 -0.06680586  0.00000001 -0.00000002  0.00001238 -0.00000037
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.00035215 -0.00000001  0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+          0.00000000 -0.42678154  0.44788735  0.67436899  0.00000004 -0.00000004  0.00000031  0.00000001
                           0.00000000  0.00000002  0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+         -0.00000000  0.00350657 -0.00370510 -0.00557270  0.00006998 -0.48297250 -0.00561374 -0.00100418
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+          0.00000000  0.00949277  0.00432463  0.00311513 -0.00018923 -0.00653320  0.60644010 -0.00162923
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000000  0.00468257 -0.00491830 -0.00739884  0.00002198  0.31535742  0.00226081  0.00064063
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.00000000  0.00166067 -0.00844598  0.00666456 -0.00383319 -0.00136582  0.00153482  0.64541740
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000017

   6    1  |1 1>+         -0.00000000 -0.00000968  0.00005494 -0.00004760 -0.57717569 -0.00003900 -0.00014383 -0.00424878
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |1 1>+         -0.00025657 -0.21599475 -0.09764723 -0.07184140  0.00000035 -0.00000160  0.00020812  0.00000050
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+         -0.00861011  0.00494882  0.01063931 -0.00393427  0.00001205  0.00000000 -0.00000621  0.00000884
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+          0.00034577 -0.03703968  0.19247928 -0.15127753 -0.00000035 -0.00000034 -0.00000021  0.00022269
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   1    1  |1 0>           0.00000000 -0.00000001 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000000 -0.13995088  0.71004482 -0.56015114  0.00000027  0.00000001 -0.00000005  0.00000178

   2    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005
                          -0.00000000 -0.00190999  0.00967769 -0.00763625 -0.00109610 -0.00047885  0.00010588  0.19929497

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00000204  0.00001501 -0.00001546  0.57747390  0.00050833  0.00013611  0.00033637

   4    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000014
                          -0.00000000  0.00023945 -0.00117984  0.00093058  0.00003524 -0.00082745  0.00156614  0.54780530

   5    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000000  0.00501236 -0.00535612 -0.00804240 -0.00044499  0.59925003  0.00922717  0.00103914

   6    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000000 -0.00951843 -0.00430131 -0.00306794 -0.00006228 -0.00835817  0.54656188 -0.00155983

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00861692 -0.00584624 -0.00354403 -0.00303177 -0.00002785 -0.00000126 -0.00000649 -0.00000042

   8    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00025809 -0.21101368 -0.10338073 -0.07832420  0.00000085 -0.00000754 -0.00021926  0.00000066

   9    1  |1 0>          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00003290  0.12412544 -0.11721917 -0.17959851  0.00000007 -0.00023083  0.00000656 -0.00000046

   1    1  |1 1>-         -0.00000000  0.00000001 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.79736463  0.36435206  0.26263342 -0.00000001  0.00000032 -0.00000114  0.00000005

   2    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00427717 -0.00197014 -0.00142434  0.00006465  0.00316788 -0.50887106  0.00153691

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00000000 -0.00508288  0.00532428  0.00801936 -0.00057210  0.55502209  0.00362589  0.00091881

   4    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00000000  0.01007503  0.00460800  0.00331400 -0.00003427  0.00300140 -0.27277381  0.00098018

   5    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001  0.00000953 -0.00005959  0.00004144 -0.57737485 -0.00049226 -0.00005324 -0.00323240

   6    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013
                          -0.00000000  0.00167132 -0.00844217  0.00666432  0.00372636  0.00085679 -0.00202527 -0.49354370

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00004321 -0.11663517  0.12694150  0.17800239  0.00000020 -0.00022869 -0.00000225 -0.00000735

   8    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00034463 -0.03438762  0.18838833 -0.15694959  0.00000173  0.00000727 -0.00000052 -0.00023310

   9    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00861385  0.00196096 -0.00817410  0.00538640  0.00003978  0.00000099 -0.00000002  0.00000973

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>           0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00017667 -0.00000596  0.00000071  0.00263627 -0.02666346  0.00496386  0.65956037  0.14707993
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   3    1  |0 0>          -0.00000579  0.00018182  0.00000002 -0.00911432  0.66190984 -0.00344517  0.05514363 -0.12700909
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   4    1  |0 0>           0.00000108 -0.00000066  0.00007781 -0.00414830  0.00117161  0.67616787 -0.00215426 -0.01287333
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |0 0>           0.00000083  0.00000252  0.00000017  0.67591783  0.00494316  0.00373032  0.00233860 -0.02183338
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>          -0.00000522 -0.00000915  0.00000005  0.02033215  0.13611048  0.01176822 -0.13899627  0.64722711
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   7    1  |0 0>          -0.00004696 -0.00000474  0.00000091  0.00000004 -0.00000022  0.00000003 -0.00000237 -0.00000054
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   8    1  |0 0>           0.00000406 -0.00005596 -0.00000574 -0.00000002 -0.00000297 -0.00000010 -0.00000003  0.00000082
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>          -0.00000123  0.00000581 -0.00005487 -0.00000008  0.00000029 -0.00000115  0.00000000 -0.00000006
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000000 -0.00000059 -0.00000002 -0.00000001  0.00000002 -0.00000011
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+          0.00000007 -0.00000556 -0.00000030  0.00000004 -0.00000026 -0.00000013 -0.00000002  0.00000006
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   2    1  |1 1>+         -0.00432924  0.44226884  0.00761618  0.00182448  0.45336181  0.00386330  0.03247347 -0.11366309
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+         -0.00087376  0.00719154 -0.40759632 -0.00069929  0.00427929 -0.29154648 -0.00133768  0.00487851
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00597681  0.63519853  0.00898097 -0.00116436 -0.34122207 -0.00248183 -0.02436504  0.08562200
                           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.34262075  0.00327481 -0.00094880 -0.00428862 -0.00386375 -0.00025911  0.28419502  0.06525950
                           0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   6    1  |1 1>+         -0.00238820  0.00012003  0.00009054 -0.56080377 -0.04036967 -0.00209874  0.03379497 -0.15990406
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.00000010  0.00000018  0.00000995  0.00089773  0.00044326 -0.11960327  0.00083671 -0.00150484
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+         -0.00000173 -0.00000012 -0.00000041  0.03963709 -0.03352940  0.00077241  0.03342107 -0.12355489
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   9    1  |1 1>+         -0.00005624 -0.00000054 -0.00000001 -0.00180490 -0.00017816  0.00043461  0.11520481  0.03218785
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000484  0.00000003 -0.00000006 -0.00000006 -0.00000007  0.00000002  0.00000059 -0.00000012

   2    1  |1 0>          -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.74581108  0.00727459 -0.00244656  0.00036464  0.00115258  0.00002868 -0.06937951 -0.01521380

   3    1  |1 0>          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00137491 -0.00000384 -0.00006683 -0.13452321 -0.14273780 -0.01135004  0.12325664 -0.53737342

   4    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.18955252 -0.00183504  0.00050972  0.00106360  0.00748335  0.00081757 -0.56678716 -0.13240944

   5    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00418408 -0.41799482 -0.00340200  0.00125295  0.28233922  0.00012948  0.02033885 -0.07051215

   6    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00191750 -0.00384764  0.48481752 -0.00069423  0.00164118 -0.29176394 -0.00190753  0.00547227

   7    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000010 -0.00000056  0.00000108  0.13434221 -0.00916252  0.00258190  0.00706704 -0.02968007

   8    1  |1 0>          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001 -0.00000349  0.00004045 -0.00376146 -0.00581636  0.11941887  0.00005956 -0.00001847

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000053 -0.00006170 -0.00000217 -0.00102394 -0.11554249 -0.00564681 -0.00833121  0.02917649

   1    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000003  0.00000014  0.00000630  0.00000001  0.00000013 -0.00000018  0.00000002 -0.00000003

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00152721  0.00371925 -0.33811758 -0.00127720  0.00603493 -0.53934680 -0.00282975  0.00945375

   3    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00449835  0.47531148  0.00586593  0.00133819  0.28210056  0.00110667  0.02021314 -0.07078906

   4    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00199959 -0.01034539  0.69591635 -0.00041121  0.00271067 -0.22964699 -0.00097811  0.00390791

   5    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00353821 -0.00019857 -0.00015599  0.42587891 -0.10284324 -0.00917239  0.08586453 -0.37845507

   6    1  |1 1>-         -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.53881683  0.00509243 -0.00152037 -0.00234015  0.00438286  0.00039375 -0.28456909 -0.06382111

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000037 -0.00000799  0.00000014 -0.00096819 -0.11576127 -0.00086028 -0.01164045  0.02770584

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00001224  0.00000036  0.00000004 -0.00355699  0.00398277  0.00008662 -0.11519339 -0.03184606

   9    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000005  0.00000017  0.00000001 -0.09463890 -0.02452292 -0.00183324  0.02637462 -0.09390138

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000353 -0.00000064 -0.00000000 -0.00029045 -0.00043121 -0.00026805  0.45203805  0.00307121
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>           0.00000113  0.00001092  0.00000030  0.00257243  0.45184763 -0.01044542  0.00048246 -0.00826905
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   4    1  |0 0>          -0.00000002  0.00000004  0.00000232  0.00051243  0.01042487  0.45192987  0.00028545 -0.00104767
                           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000006  0.00000013  0.00000018 -0.45166066  0.00223558  0.00041661 -0.00015955 -0.01883607
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |0 0>           0.00000011 -0.00000059 -0.00000012 -0.01878399  0.00839815  0.00087671 -0.00307293  0.45164747
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |0 0>           0.72039885 -0.00580219 -0.00610679  0.00000016 -0.00000146  0.00000000 -0.00000030  0.00000006
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>           0.00649632  0.71516275  0.08685924  0.00000008 -0.00001678  0.00000001  0.00000051  0.00000119
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |0 0>           0.00536244 -0.08690836  0.71516686  0.00000015  0.00000144 -0.00000153 -0.00000009  0.00000007
                          -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  10    1  |0 0>          -0.00000000  0.00000000  0.00000001 -0.00000041  0.00000001 -0.00000003 -0.00000000  0.00000014
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00355894  0.04200949  0.00133871  0.00000002 -0.00000156  0.00000003  0.00000002  0.00000010
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.01569687  0.18525084  0.00543168  0.00162997 -0.14488115  0.00128390  0.00317047  0.01025540
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |1 1>+         -0.00198391 -0.00800206  0.26771459 -0.00065547  0.00064426  0.09086903  0.00085329 -0.00043145
                           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+          0.02078025  0.24625986  0.00781167 -0.00116099  0.10898772 -0.00109724 -0.00241406 -0.00773334
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   5    1  |1 1>+         -0.26688725  0.02257638 -0.00130306 -0.00160316 -0.00214670  0.00084897 -0.09082700 -0.00162476
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00180135 -0.00006082  0.00000564 -0.17472258  0.00162616 -0.00103014  0.00030369  0.05017293
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   7    1  |1 1>+          0.00423662  0.01066742 -0.34603646  0.00138168  0.00735606  0.61057092  0.00231278  0.01702964
                          -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   8    1  |1 1>+          0.01372218 -0.00149476  0.01042775  0.19433057  0.04890195 -0.01363442 -0.04121660  0.67454586
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

   9    1  |1 1>+          0.34484661 -0.02930767  0.00290465 -0.01067123 -0.01627736  0.00340878 -0.60928282 -0.04028839
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                          -0.04202843  0.00356686 -0.00019296 -0.00000005  0.00000001 -0.00000001 -0.00000002  0.00000006

   2    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.30601407 -0.02596849  0.00133980  0.00018120  0.00049381 -0.00019219  0.02200715  0.00016636

   3    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00053947  0.00003009 -0.00000129 -0.04392675  0.01183032  0.00047693 -0.00380803  0.17590211

   4    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.03731655  0.00324502 -0.00002100  0.00085959  0.00418743 -0.00179974  0.18037709  0.00388049

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.02262324  0.26680748  0.00670110  0.00105311 -0.09062344  0.00151420  0.00193615  0.00635307

   6    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00169222  0.00658181 -0.26777082 -0.00065990  0.00149645  0.09086238  0.00095484 -0.00049381

   7    1  |1 0>           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                           0.00022101  0.00205146 -0.01024842  0.68405966  0.02262805 -0.01256735 -0.00754448  0.16910829

   8    1  |1 0>           0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00367284  0.02459670 -0.34533179 -0.01637617  0.01781164 -0.61033622 -0.00617813 -0.00377546

   9    1  |1 0>           0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.02910240  0.34426661  0.02486938 -0.00980703  0.60869478  0.01840708 -0.01305942 -0.04379728

   1    1  |1 1>-          0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00030538  0.00131745 -0.04215994  0.00000001 -0.00000004  0.00000050  0.00000000  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00085164  0.00425762 -0.12103702 -0.00120624  0.00178985  0.16727670  0.00162684 -0.00083780

   3    1  |1 1>-         -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.02260441 -0.26675190 -0.00867621  0.00108006 -0.09060963  0.00120682  0.00198782  0.00644009

   4    1  |1 1>-         -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00191096 -0.00887089  0.28456702 -0.00047236  0.00070719  0.07116847  0.00063271 -0.00031482

   5    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                          -0.00178635  0.00023005 -0.00009244  0.13079502  0.01037747  0.00146864 -0.00295653  0.12574280

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.26689216  0.02264955 -0.00103825 -0.00044936  0.00205607 -0.00089245  0.09085039  0.00111933

   7    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.01893981 -0.34567579 -0.01093984 -0.00939041  0.60933326 -0.00624955  0.00479212 -0.04011392

   8    1  |1 1>-          0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                           0.34558062 -0.01892635  0.00191167 -0.01648335 -0.00278162 -0.00578147  0.60968635  0.03472588

   9    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.01373116  0.00249138 -0.00002166 -0.48941148  0.02703025 -0.00096162 -0.03377738  0.50574040

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01167308 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000003 -0.00000158  0.00001381  0.00000023  0.00399875 -0.01100760  0.00624903 -0.00732691
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   3    1  |0 0>          -0.00000004  0.00002017  0.00000211  0.00000056 -0.01279388  0.03882243 -0.16808093  0.55519501
                          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>           0.00000003  0.00000019 -0.00000019  0.00000410 -0.00361661  0.00164561  0.55665968  0.16839188
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   5    1  |0 0>           0.00000103  0.00000034  0.00000005 -0.00000001  0.56490401  0.13827156  0.00204599  0.00398944
                          -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |0 0>          -0.00000027 -0.00000110  0.00000031 -0.00000012 -0.13765569  0.56349696  0.00957489 -0.03986631
                           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |0 0>           0.00000001  0.07676908 -0.48084431  0.00251956 -0.00000077  0.00000360 -0.00000034 -0.00000061
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |0 0>          -0.00000000  0.48011004  0.07650918 -0.02735284  0.00000069 -0.00000019 -0.00000087 -0.00000699
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000002 -0.02661312 -0.00679622 -0.48616517  0.00000053 -0.00000024 -0.00000366 -0.00000219
                          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  10    1  |0 0>           0.64210030 -0.00000001  0.00000001 -0.00000001 -0.00000169  0.00000068 -0.00000002 -0.00000002
                          -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

   1    1  |1 1>+         -0.00000000 -0.06764455 -0.00557931 -0.00220490 -0.00000062 -0.00000041  0.00000508 -0.00001003
                          -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

   2    1  |1 1>+         -0.00000000 -0.32507279 -0.02680085 -0.01142449 -0.00366153 -0.00941213  0.11888073 -0.41418778
                           0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00000004 -0.01533544 -0.00743181  0.46981495  0.00077917  0.00032980  0.25933622  0.07398843
                           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |1 1>+         -0.00000003 -0.43211256 -0.03578534 -0.01415023  0.00258556  0.00697532 -0.08981585  0.31150494
                          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   5    1  |1 1>+          0.00000000  0.03897176 -0.46846084 -0.00613856  0.00384150  0.00304557  0.00110891 -0.00208209
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   6    1  |1 1>+          0.00000148 -0.00042089  0.00313508  0.00002546  0.45679085  0.28662804  0.00114399 -0.01006217
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   7    1  |1 1>+         -0.01317098 -0.00320274 -0.00211646  0.10361459  0.00516522 -0.01019626 -0.32243609 -0.09273878
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   8    1  |1 1>+         -0.44200505  0.00043980 -0.00408435 -0.00315659  0.20580624 -0.32783600  0.00793144  0.00802079
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   9    1  |1 1>+          0.01775019  0.00857410 -0.10327391 -0.00172091 -0.00922166  0.01176530 -0.00012729  0.00250774
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                          -0.00000001  0.00561036 -0.06767666 -0.00086818 -0.00000072  0.00000306 -0.00000025 -0.00000023

   2    1  |1 0>          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                          -0.00000001 -0.04451238  0.53700316  0.00677550 -0.00015206 -0.00121865 -0.00021929  0.00049775

   3    1  |1 0>          -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000007 -0.00020913  0.00092519 -0.00000308 -0.01996773  0.53887834  0.00265612 -0.01145058

   4    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000001  0.00527621 -0.06550121 -0.00058571 -0.00153305 -0.00230004 -0.00239630  0.00364702

   5    1  |1 0>           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00000001 -0.46818514 -0.03855579 -0.01842308 -0.00234805 -0.00608054  0.07640099 -0.25853953

   6    1  |1 0>           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000001  0.01787918  0.00734068 -0.46972663  0.00079001  0.00036628  0.25864037  0.07642195

   7    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.44235729  0.00042128 -0.00000481  0.00310231  0.38713126  0.01423338  0.00999840 -0.00271200

   8    1  |1 0>          -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.01324934  0.00088742 -0.00125645  0.10367873 -0.01074850 -0.00030148  0.32582515  0.08004747

   9    1  |1 0>          -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                          -0.00168917  0.10337243  0.00857960 -0.00079188 -0.00445212 -0.00744894  0.07992322 -0.32588666

   1    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000000  0.00212674  0.00104724 -0.06787316  0.00000056 -0.00000021 -0.00000473 -0.00000283

   2    1  |1 1>-          0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003  0.00583970  0.00309464 -0.21241617  0.00143042  0.00063310  0.47681481  0.13790046

   3    1  |1 1>-         -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00000001  0.46828957  0.03861783  0.01495720 -0.00249145 -0.00586026  0.07553390 -0.25882295

   4    1  |1 1>-         -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00000003 -0.01572250 -0.00744854  0.49925444  0.00046046  0.00034433  0.20289184  0.05850284

   5    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.00000139  0.00013383 -0.00315645 -0.00019662 -0.47676080  0.25223757  0.00130337 -0.00096614

   6    1  |1 1>-         -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000003  0.03881522 -0.46847086 -0.00568267  0.00243097 -0.00281766 -0.00116096  0.00190851

   7    1  |1 1>-          0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.00221845 -0.10303984 -0.01159658 -0.00340739 -0.00381422 -0.00905420  0.09290928 -0.32227762

   8    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                           0.01769177  0.01165300 -0.10299450 -0.00122400 -0.00619508 -0.01207890 -0.00142060  0.00765455

   9    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.44219638  0.00005076  0.00417872  0.00006609 -0.18110496 -0.34221869 -0.00201432  0.01033159

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00000000 -0.00000000 -0.00000000  0.00000000  0.00931776
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.58139967  0.00000068  0.00000041 -0.00000221  0.00000003
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |0 0>           0.00962620 -0.00001146  0.00000149  0.00000051 -0.00000003
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   4    1  |0 0>          -0.00380496  0.00000248  0.00000956 -0.00000070  0.00000000
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   5    1  |0 0>          -0.00123903 -0.00000099 -0.00000068  0.00000009  0.00000053
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   6    1  |0 0>           0.01100979  0.00000069  0.00000042  0.00000451 -0.00000056
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   7    1  |0 0>           0.00000870  0.01536291 -0.01445394 -0.45179697 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   8    1  |0 0>          -0.00000105  0.44804931  0.06037521  0.01330324  0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   9    1  |0 0>          -0.00000005 -0.05988555  0.44800859 -0.01636925  0.00000001
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  10    1  |0 0>          -0.00000004 -0.00000000 -0.00000002 -0.00000003  0.76662055
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+          0.00000044 -0.39434114 -0.01697831  0.01722445 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |1 1>+          0.00336980  0.05836047  0.00236334 -0.00254621 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   3    1  |1 1>+          0.00050953 -0.00357190  0.08411591 -0.00149451 -0.00000001
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   4    1  |1 1>+         -0.00261991  0.07754230  0.00332976 -0.00336093  0.00000002
                           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   5    1  |1 1>+         -0.26964377  0.00357889  0.00164617  0.08410806 -0.00000000
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   6    1  |1 1>+          0.00438974  0.00000396 -0.00001228 -0.00056498 -0.00000097
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   7    1  |1 1>+          0.00093634 -0.02416911  0.55402270 -0.00718706  0.01103181
                           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   8    1  |1 1>+          0.01262155  0.00167603 -0.01615257  0.02245164  0.37021597
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   9    1  |1 1>+          0.33539636  0.02380788  0.00888680  0.55381673 -0.01486722
                          -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

   1    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00000038 -0.01690005 -0.00784029 -0.39464187 -0.00000001

   2    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.06528786 -0.00412777 -0.00193594 -0.09640940  0.00000001

   3    1  |1 0>          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00246114  0.00001653 -0.00000393 -0.00016470 -0.00000090

   4    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.53541857  0.00052776  0.00028151  0.01175452  0.00000002

   5    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00194835  0.08407080  0.00305295 -0.00366439 -0.00000001

   6    1  |1 0>           0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                           0.00084627  0.00312462 -0.08412571  0.00156719  0.00000000

   7    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.00123032 -0.00349967  0.01637438 -0.00017605 -0.37050899

   8    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00078949 -0.04640445  0.55258564 -0.00899115  0.01109737

   9    1  |1 0>           0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00258902 -0.55237093 -0.04605478  0.02456967  0.00141480

   1    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                          -0.00000027 -0.01730134  0.39463843 -0.00709935  0.00000001

   2    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.00112916  0.00181760 -0.03800700  0.00069732 -0.00000001

   3    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00211653 -0.08402835 -0.00367476  0.00367344 -0.00000001

   4    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00030482 -0.00390789  0.08937557 -0.00165477 -0.00000001

   5    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                           0.00150798  0.00004967 -0.00001407  0.00056739  0.00000027

   6    1  |1 1>-          0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                           0.26968517  0.00360105  0.00173007  0.08410429  0.00000000

   7    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                          -0.00737647  0.55426965  0.02416033 -0.00768454 -0.00185815

   8    1  |1 1>-         -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                          -0.33536503  0.00712422  0.01028309  0.55426431 -0.01481831

   9    1  |1 1>-          0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                           0.01143819 -0.00306546 -0.00053252 -0.02213920 -0.37037603


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.38072878     -0.00009771      -21.44      0.00000000        0.00      0.0000
     2   1   -462.96847622      0.41215485    90457.53      0.41225256    90478.98     11.2180
     3   1   -462.96847622      0.41215485    90457.53      0.41225256    90478.98     11.2180
     4   1   -462.96847622      0.41215485    90457.53      0.41225256    90478.98     11.2180
     5   1   -462.96311425      0.41751683    91634.35      0.41761453    91655.80     11.3639
     6   1   -462.96311386      0.41751722    91634.44      0.41761492    91655.88     11.3639
     7   1   -462.96311382      0.41751725    91634.45      0.41761496    91655.89     11.3639
     8   1   -462.96311376      0.41751732    91634.46      0.41761503    91655.90     11.3639
     9   1   -462.96311348      0.41751760    91634.52      0.41761530    91655.97     11.3639
    10   1   -462.96311346      0.41751761    91634.52      0.41761532    91655.97     11.3639
    11   1   -462.96311341      0.41751766    91634.54      0.41761537    91655.98     11.3639
    12   1   -462.96286606      0.41776502    91688.82      0.41786273    91710.27     11.3706
    13   1   -462.96286552      0.41776556    91688.94      0.41786326    91710.39     11.3706
    14   1   -462.96286550      0.41776558    91688.95      0.41786329    91710.39     11.3706
    15   1   -462.96286543      0.41776564    91688.96      0.41786335    91710.41     11.3706
    16   1   -462.96286539      0.41776568    91688.97      0.41786339    91710.41     11.3706
    17   1   -462.95950943      0.42112165    92425.52      0.42121936    92446.96     11.4620
    18   1   -462.95950938      0.42112170    92425.53      0.42121940    92446.97     11.4620
    19   1   -462.95950937      0.42112171    92425.53      0.42121942    92446.98     11.4620
    20   1   -462.95870502      0.42192605    92602.06      0.42202376    92623.51     11.4839
    21   1   -462.95870490      0.42192617    92602.09      0.42202388    92623.54     11.4839
    22   1   -462.95870490      0.42192618    92602.09      0.42202389    92623.54     11.4839
    23   1   -462.95870489      0.42192619    92602.09      0.42202390    92623.54     11.4839
    24   1   -462.95870473      0.42192634    92602.13      0.42202405    92623.57     11.4839
    25   1   -462.95097966      0.42965141    94297.59      0.42974912    94319.03     11.6941
    26   1   -462.93870949      0.44192158    96990.58      0.44201929    97012.02     12.0280
    27   1   -462.93870948      0.44192159    96990.58      0.44201930    97012.02     12.0280
    28   1   -462.93870944      0.44192164    96990.59      0.44201935    97012.03     12.0280
    29   1   -462.93715241      0.44347867    97332.32      0.44357638    97353.76     12.0703
    30   1   -462.93715215      0.44347893    97332.37      0.44357664    97353.82     12.0703
    31   1   -462.93715191      0.44347917    97332.43      0.44357688    97353.87     12.0703
    32   1   -462.93715190      0.44347917    97332.43      0.44357688    97353.87     12.0703
    33   1   -462.93715185      0.44347923    97332.44      0.44357694    97353.88     12.0703
    34   1   -462.93686126      0.44376982    97396.22      0.44386753    97417.66     12.0783
    35   1   -462.93686124      0.44376983    97396.22      0.44386754    97417.66     12.0783
    36   1   -462.93686124      0.44376983    97396.22      0.44386754    97417.67     12.0783
    37   1   -462.92979616      0.45083492    98946.83      0.45093263    98968.27     12.2705

 E0 =   -463.38063108 is the energy of the lowest zeroth-order state
 E1 =   -463.38072878 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99988845  0.00000000  0.00000000 -0.00000000 -0.00000001 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000  0.00000002  0.00000006 -0.00000016  0.00000071 -0.00002971 -0.00000730  0.00118295
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>       -0.00000000 -0.00000197  0.00000197  0.00000297 -0.00000258  0.00119521  0.00002643  0.00003096
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000000 -0.00000040 -0.00000009 -0.00000000  0.00000108  0.00002441 -0.00111380 -0.00000673
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000000 -0.00000004  0.00000003  0.00000002 -0.00015364  0.00002249 -0.00000883 -0.00000894
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000000  0.00000007  0.00000002 -0.00000026 -0.00011189 -0.00006165  0.00000244  0.00001742
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>       -0.00000000  0.02585422 -0.14470390  0.13292988  0.00000017 -0.00000011 -0.00000018 -0.00001255
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000000 -0.10949308  0.10071992  0.13093686 -0.00000003 -0.00000228  0.00000119  0.00000092
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000000 -0.16315768 -0.09052152 -0.06680586  0.00000001 -0.00000002  0.00001238 -0.00000037
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.00035215 -0.00000001  0.00000000 -0.00000000  0.00000010 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000000 -0.42678154  0.44788735  0.67436899  0.00000004 -0.00000004  0.00000031  0.00000001
                                0.00000000  0.00000002  0.00000001  0.00000001 -0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+      -0.00000000  0.00350657 -0.00370510 -0.00557270  0.00006998 -0.48297250 -0.00561374 -0.00100418
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+       0.00000000  0.00949277  0.00432463  0.00311513 -0.00018923 -0.00653320  0.60644010 -0.00162923
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000000  0.00468257 -0.00491830 -0.00739884  0.00002198  0.31535742  0.00226081  0.00064063
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.00000000  0.00166067 -0.00844598  0.00666456 -0.00383319 -0.00136582  0.00153482  0.64541740
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000017

 16  1     6    1  |1 1>+      -0.00000000 -0.00000968  0.00005494 -0.00004760 -0.57717569 -0.00003900 -0.00014383 -0.00424878
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 17  1     7    1  |1 1>+      -0.00025657 -0.21599475 -0.09764723 -0.07184140  0.00000035 -0.00000160  0.00020812  0.00000050
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.00861011  0.00494882  0.01063931 -0.00393427  0.00001205  0.00000000 -0.00000621  0.00000884
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.00034577 -0.03703968  0.19247928 -0.15127753 -0.00000035 -0.00000034 -0.00000021  0.00022269
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000 -0.00000001 -0.00000001  0.00000001  0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000000 -0.13995088  0.71004482 -0.56015114  0.00000027  0.00000001 -0.00000005  0.00000178

 21  1     2    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000005
                               -0.00000000 -0.00190999  0.00967769 -0.00763625 -0.00109610 -0.00047885  0.00010588  0.19929497

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00000204  0.00001501 -0.00001546  0.57747390  0.00050833  0.00013611  0.00033637

 23  1     4    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000014
                               -0.00000000  0.00023945 -0.00117984  0.00093058  0.00003524 -0.00082745  0.00156614  0.54780530

 24  1     5    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000000  0.00501236 -0.00535612 -0.00804240 -0.00044499  0.59925003  0.00922717  0.00103914

 25  1     6    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000000 -0.00951843 -0.00430131 -0.00306794 -0.00006228 -0.00835817  0.54656188 -0.00155983

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00861692 -0.00584624 -0.00354403 -0.00303177 -0.00002785 -0.00000126 -0.00000649 -0.00000042

 27  1     8    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00025809 -0.21101368 -0.10338073 -0.07832420  0.00000085 -0.00000754 -0.00021926  0.00000066

 28  1     9    1  |1 0>       -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00003290  0.12412544 -0.11721917 -0.17959851  0.00000007 -0.00023083  0.00000656 -0.00000046

 29  1     1    1  |1 1>-      -0.00000000  0.00000001 -0.00000001 -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.79736463  0.36435206  0.26263342 -0.00000001  0.00000032 -0.00000114  0.00000005

 30  1     2    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00427717 -0.00197014 -0.00142434  0.00006465  0.00316788 -0.50887106  0.00153691

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00000000 -0.00508288  0.00532428  0.00801936 -0.00057210  0.55502209  0.00362589  0.00091881

 32  1     4    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00000000  0.01007503  0.00460800  0.00331400 -0.00003427  0.00300140 -0.27277381  0.00098018

 33  1     5    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001  0.00000953 -0.00005959  0.00004144 -0.57737485 -0.00049226 -0.00005324 -0.00323240

 34  1     6    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000013
                               -0.00000000  0.00167132 -0.00844217  0.00666432  0.00372636  0.00085679 -0.00202527 -0.49354370

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00004321 -0.11663517  0.12694150  0.17800239  0.00000020 -0.00022869 -0.00000225 -0.00000735

 36  1     8    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00034463 -0.03438762  0.18838833 -0.15694959  0.00000173  0.00000727 -0.00000052 -0.00023310

 37  1     9    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00861385  0.00196096 -0.00817410  0.00538640  0.00003978  0.00000099 -0.00000002  0.00000973


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>        0.00000000 -0.00000000  0.00000000 -0.00000001 -0.00000000 -0.00000000  0.00000000 -0.00000000
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00017667 -0.00000596  0.00000071  0.00263627 -0.02666346  0.00496386  0.65956037  0.14707993
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000579  0.00018182  0.00000002 -0.00911432  0.66190984 -0.00344517  0.05514363 -0.12700909
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>        0.00000108 -0.00000066  0.00007781 -0.00414830  0.00117161  0.67616787 -0.00215426 -0.01287333
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  5  1     5    1  |0 0>        0.00000083  0.00000252  0.00000017  0.67591783  0.00494316  0.00373032  0.00233860 -0.02183338
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>       -0.00000522 -0.00000915  0.00000005  0.02033215  0.13611048  0.01176822 -0.13899627  0.64722711
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

  7  1     7    1  |0 0>       -0.00004696 -0.00000474  0.00000091  0.00000004 -0.00000022  0.00000003 -0.00000237 -0.00000054
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00000406 -0.00005596 -0.00000574 -0.00000002 -0.00000297 -0.00000010 -0.00000003  0.00000082
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>       -0.00000123  0.00000581 -0.00005487 -0.00000008  0.00000029 -0.00000115  0.00000000 -0.00000006
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000000 -0.00000059 -0.00000002 -0.00000001  0.00000002 -0.00000011
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+       0.00000007 -0.00000556 -0.00000030  0.00000004 -0.00000026 -0.00000013 -0.00000002  0.00000006
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00432924  0.44226884  0.00761618  0.00182448  0.45336181  0.00386330  0.03247347 -0.11366309
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+      -0.00087376  0.00719154 -0.40759632 -0.00069929  0.00427929 -0.29154648 -0.00133768  0.00487851
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00597681  0.63519853  0.00898097 -0.00116436 -0.34122207 -0.00248183 -0.02436504  0.08562200
                                0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.34262075  0.00327481 -0.00094880 -0.00428862 -0.00386375 -0.00025911  0.28419502  0.06525950
                                0.00000001  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 16  1     6    1  |1 1>+      -0.00238820  0.00012003  0.00009054 -0.56080377 -0.04036967 -0.00209874  0.03379497 -0.15990406
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.00000010  0.00000018  0.00000995  0.00089773  0.00044326 -0.11960327  0.00083671 -0.00150484
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+      -0.00000173 -0.00000012 -0.00000041  0.03963709 -0.03352940  0.00077241  0.03342107 -0.12355489
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 19  1     9    1  |1 1>+      -0.00005624 -0.00000054 -0.00000001 -0.00180490 -0.00017816  0.00043461  0.11520481  0.03218785
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000484  0.00000003 -0.00000006 -0.00000006 -0.00000007  0.00000002  0.00000059 -0.00000012

 21  1     2    1  |1 0>       -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.74581108  0.00727459 -0.00244656  0.00036464  0.00115258  0.00002868 -0.06937951 -0.01521380

 22  1     3    1  |1 0>       -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00137491 -0.00000384 -0.00006683 -0.13452321 -0.14273780 -0.01135004  0.12325664 -0.53737342

 23  1     4    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.18955252 -0.00183504  0.00050972  0.00106360  0.00748335  0.00081757 -0.56678716 -0.13240944

 24  1     5    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00418408 -0.41799482 -0.00340200  0.00125295  0.28233922  0.00012948  0.02033885 -0.07051215

 25  1     6    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00191750 -0.00384764  0.48481752 -0.00069423  0.00164118 -0.29176394 -0.00190753  0.00547227

 26  1     7    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000010 -0.00000056  0.00000108  0.13434221 -0.00916252  0.00258190  0.00706704 -0.02968007

 27  1     8    1  |1 0>       -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001 -0.00000349  0.00004045 -0.00376146 -0.00581636  0.11941887  0.00005956 -0.00001847

 28  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000053 -0.00006170 -0.00000217 -0.00102394 -0.11554249 -0.00564681 -0.00833121  0.02917649

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000003  0.00000014  0.00000630  0.00000001  0.00000013 -0.00000018  0.00000002 -0.00000003

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00152721  0.00371925 -0.33811758 -0.00127720  0.00603493 -0.53934680 -0.00282975  0.00945375

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00449835  0.47531148  0.00586593  0.00133819  0.28210056  0.00110667  0.02021314 -0.07078906

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00199959 -0.01034539  0.69591635 -0.00041121  0.00271067 -0.22964699 -0.00097811  0.00390791

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00353821 -0.00019857 -0.00015599  0.42587891 -0.10284324 -0.00917239  0.08586453 -0.37845507

 34  1     6    1  |1 1>-      -0.00000001 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.53881683  0.00509243 -0.00152037 -0.00234015  0.00438286  0.00039375 -0.28456909 -0.06382111

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000037 -0.00000799  0.00000014 -0.00096819 -0.11576127 -0.00086028 -0.01164045  0.02770584

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00001224  0.00000036  0.00000004 -0.00355699  0.00398277  0.00008662 -0.11519339 -0.03184606

 37  1     9    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000005  0.00000017  0.00000001 -0.09463890 -0.02452292 -0.00183324  0.02637462 -0.09390138


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000002  0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000353 -0.00000064 -0.00000000 -0.00029045 -0.00043121 -0.00026805  0.45203805  0.00307121
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>        0.00000113  0.00001092  0.00000030  0.00257243  0.45184763 -0.01044542  0.00048246 -0.00826905
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  4  1     4    1  |0 0>       -0.00000002  0.00000004  0.00000232  0.00051243  0.01042487  0.45192987  0.00028545 -0.00104767
                                0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000006  0.00000013  0.00000018 -0.45166066  0.00223558  0.00041661 -0.00015955 -0.01883607
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  6  1     6    1  |0 0>        0.00000011 -0.00000059 -0.00000012 -0.01878399  0.00839815  0.00087671 -0.00307293  0.45164747
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

  7  1     7    1  |0 0>        0.72039885 -0.00580219 -0.00610679  0.00000016 -0.00000146  0.00000000 -0.00000030  0.00000006
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>        0.00649632  0.71516275  0.08685924  0.00000008 -0.00001678  0.00000001  0.00000051  0.00000119
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  9  1     9    1  |0 0>        0.00536244 -0.08690836  0.71516686  0.00000015  0.00000144 -0.00000153 -0.00000009  0.00000007
                               -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 10  1    10    1  |0 0>       -0.00000000  0.00000000  0.00000001 -0.00000041  0.00000001 -0.00000003 -0.00000000  0.00000014
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00355894  0.04200949  0.00133871  0.00000002 -0.00000156  0.00000003  0.00000002  0.00000010
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.01569687  0.18525084  0.00543168  0.00162997 -0.14488115  0.00128390  0.00317047  0.01025540
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 13  1     3    1  |1 1>+      -0.00198391 -0.00800206  0.26771459 -0.00065547  0.00064426  0.09086903  0.00085329 -0.00043145
                                0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+       0.02078025  0.24625986  0.00781167 -0.00116099  0.10898772 -0.00109724 -0.00241406 -0.00773334
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 15  1     5    1  |1 1>+      -0.26688725  0.02257638 -0.00130306 -0.00160316 -0.00214670  0.00084897 -0.09082700 -0.00162476
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00180135 -0.00006082  0.00000564 -0.17472258  0.00162616 -0.00103014  0.00030369  0.05017293
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 17  1     7    1  |1 1>+       0.00423662  0.01066742 -0.34603646  0.00138168  0.00735606  0.61057092  0.00231278  0.01702964
                               -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 18  1     8    1  |1 1>+       0.01372218 -0.00149476  0.01042775  0.19433057  0.04890195 -0.01363442 -0.04121660  0.67454586
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.34484661 -0.02930767  0.00290465 -0.01067123 -0.01627736  0.00340878 -0.60928282 -0.04028839
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000
                               -0.04202843  0.00356686 -0.00019296 -0.00000005  0.00000001 -0.00000001 -0.00000002  0.00000006

 21  1     2    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.30601407 -0.02596849  0.00133980  0.00018120  0.00049381 -0.00019219  0.02200715  0.00016636

 22  1     3    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00053947  0.00003009 -0.00000129 -0.04392675  0.01183032  0.00047693 -0.00380803  0.17590211

 23  1     4    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.03731655  0.00324502 -0.00002100  0.00085959  0.00418743 -0.00179974  0.18037709  0.00388049

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.02262324  0.26680748  0.00670110  0.00105311 -0.09062344  0.00151420  0.00193615  0.00635307

 25  1     6    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00169222  0.00658181 -0.26777082 -0.00065990  0.00149645  0.09086238  0.00095484 -0.00049381

 26  1     7    1  |1 0>        0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                                0.00022101  0.00205146 -0.01024842  0.68405966  0.02262805 -0.01256735 -0.00754448  0.16910829

 27  1     8    1  |1 0>        0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00367284  0.02459670 -0.34533179 -0.01637617  0.01781164 -0.61033622 -0.00617813 -0.00377546

 28  1     9    1  |1 0>        0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.02910240  0.34426661  0.02486938 -0.00980703  0.60869478  0.01840708 -0.01305942 -0.04379728

 29  1     1    1  |1 1>-       0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00030538  0.00131745 -0.04215994  0.00000001 -0.00000004  0.00000050  0.00000000  0.00000001

 30  1     2    1  |1 1>-       0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00085164  0.00425762 -0.12103702 -0.00120624  0.00178985  0.16727670  0.00162684 -0.00083780

 31  1     3    1  |1 1>-      -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.02260441 -0.26675190 -0.00867621  0.00108006 -0.09060963  0.00120682  0.00198782  0.00644009

 32  1     4    1  |1 1>-      -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00191096 -0.00887089  0.28456702 -0.00047236  0.00070719  0.07116847  0.00063271 -0.00031482

 33  1     5    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000
                               -0.00178635  0.00023005 -0.00009244  0.13079502  0.01037747  0.00146864 -0.00295653  0.12574280

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.26689216  0.02264955 -0.00103825 -0.00044936  0.00205607 -0.00089245  0.09085039  0.00111933

 35  1     7    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.01893981 -0.34567579 -0.01093984 -0.00939041  0.60933326 -0.00624955  0.00479212 -0.04011392

 36  1     8    1  |1 1>-       0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000001  0.00000000
                                0.34558062 -0.01892635  0.00191167 -0.01648335 -0.00278162 -0.00578147  0.60968635  0.03472588

 37  1     9    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.01373116  0.00249138 -0.00002166 -0.48941148  0.02703025 -0.00096162 -0.03377738  0.50574040


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01167308 -0.00000000 -0.00000000  0.00000000  0.00000004  0.00000001  0.00000000 -0.00000000
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000003 -0.00000158  0.00001381  0.00000023  0.00399875 -0.01100760  0.00624903 -0.00732691
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  3  1     3    1  |0 0>       -0.00000004  0.00002017  0.00000211  0.00000056 -0.01279388  0.03882243 -0.16808093  0.55519501
                               -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>        0.00000003  0.00000019 -0.00000019  0.00000410 -0.00361661  0.00164561  0.55665968  0.16839188
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  5  1     5    1  |0 0>        0.00000103  0.00000034  0.00000005 -0.00000001  0.56490401  0.13827156  0.00204599  0.00398944
                               -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  6  1     6    1  |0 0>       -0.00000027 -0.00000110  0.00000031 -0.00000012 -0.13765569  0.56349696  0.00957489 -0.03986631
                                0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000001  0.07676908 -0.48084431  0.00251956 -0.00000077  0.00000360 -0.00000034 -0.00000061
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

  8  1     8    1  |0 0>       -0.00000000  0.48011004  0.07650918 -0.02735284  0.00000069 -0.00000019 -0.00000087 -0.00000699
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000002 -0.02661312 -0.00679622 -0.48616517  0.00000053 -0.00000024 -0.00000366 -0.00000219
                               -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 10  1    10    1  |0 0>        0.64210030 -0.00000001  0.00000001 -0.00000001 -0.00000169  0.00000068 -0.00000002 -0.00000002
                               -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000  0.00000000

 11  1     1    1  |1 1>+      -0.00000000 -0.06764455 -0.00557931 -0.00220490 -0.00000062 -0.00000041  0.00000508 -0.00001003
                               -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000

 12  1     2    1  |1 1>+      -0.00000000 -0.32507279 -0.02680085 -0.01142449 -0.00366153 -0.00941213  0.11888073 -0.41418778
                                0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00000004 -0.01533544 -0.00743181  0.46981495  0.00077917  0.00032980  0.25933622  0.07398843
                                0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 14  1     4    1  |1 1>+      -0.00000003 -0.43211256 -0.03578534 -0.01415023  0.00258556  0.00697532 -0.08981585  0.31150494
                               -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 15  1     5    1  |1 1>+       0.00000000  0.03897176 -0.46846084 -0.00613856  0.00384150  0.00304557  0.00110891 -0.00208209
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

 16  1     6    1  |1 1>+       0.00000148 -0.00042089  0.00313508  0.00002546  0.45679085  0.28662804  0.00114399 -0.01006217
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+      -0.01317098 -0.00320274 -0.00211646  0.10361459  0.00516522 -0.01019626 -0.32243609 -0.09273878
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 18  1     8    1  |1 1>+      -0.44200505  0.00043980 -0.00408435 -0.00315659  0.20580624 -0.32783600  0.00793144  0.00802079
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 19  1     9    1  |1 1>+       0.01775019  0.00857410 -0.10327391 -0.00172091 -0.00922166  0.01176530 -0.00012729  0.00250774
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000

 20  1     1    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000
                               -0.00000001  0.00561036 -0.06767666 -0.00086818 -0.00000072  0.00000306 -0.00000025 -0.00000023

 21  1     2    1  |1 0>       -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                               -0.00000001 -0.04451238  0.53700316  0.00677550 -0.00015206 -0.00121865 -0.00021929  0.00049775

 22  1     3    1  |1 0>       -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000007 -0.00020913  0.00092519 -0.00000308 -0.01996773  0.53887834  0.00265612 -0.01145058

 23  1     4    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000001  0.00527621 -0.06550121 -0.00058571 -0.00153305 -0.00230004 -0.00239630  0.00364702

 24  1     5    1  |1 0>        0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00000001 -0.46818514 -0.03855579 -0.01842308 -0.00234805 -0.00608054  0.07640099 -0.25853953

 25  1     6    1  |1 0>        0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000001  0.01787918  0.00734068 -0.46972663  0.00079001  0.00036628  0.25864037  0.07642195

 26  1     7    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.44235729  0.00042128 -0.00000481  0.00310231  0.38713126  0.01423338  0.00999840 -0.00271200

 27  1     8    1  |1 0>       -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.01324934  0.00088742 -0.00125645  0.10367873 -0.01074850 -0.00030148  0.32582515  0.08004747

 28  1     9    1  |1 0>       -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                               -0.00168917  0.10337243  0.00857960 -0.00079188 -0.00445212 -0.00744894  0.07992322 -0.32588666

 29  1     1    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000000  0.00212674  0.00104724 -0.06787316  0.00000056 -0.00000021 -0.00000473 -0.00000283

 30  1     2    1  |1 1>-       0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003  0.00583970  0.00309464 -0.21241617  0.00143042  0.00063310  0.47681481  0.13790046

 31  1     3    1  |1 1>-      -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00000001  0.46828957  0.03861783  0.01495720 -0.00249145 -0.00586026  0.07553390 -0.25882295

 32  1     4    1  |1 1>-      -0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00000003 -0.01572250 -0.00744854  0.49925444  0.00046046  0.00034433  0.20289184  0.05850284

 33  1     5    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.00000139  0.00013383 -0.00315645 -0.00019662 -0.47676080  0.25223757  0.00130337 -0.00096614

 34  1     6    1  |1 1>-      -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000003  0.03881522 -0.46847086 -0.00568267  0.00243097 -0.00281766 -0.00116096  0.00190851

 35  1     7    1  |1 1>-       0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.00221845 -0.10303984 -0.01159658 -0.00340739 -0.00381422 -0.00905420  0.09290928 -0.32227762

 36  1     8    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000
                                0.01769177  0.01165300 -0.10299450 -0.00122400 -0.00619508 -0.01207890 -0.00142060  0.00765455

 37  1     9    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.44219638  0.00005076  0.00417872  0.00006609 -0.18110496 -0.34221869 -0.00201432  0.01033159


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00000000 -0.00000000 -0.00000000  0.00000000  0.00931776
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.58139967  0.00000068  0.00000041 -0.00000221  0.00000003
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  3  1     3    1  |0 0>        0.00962620 -0.00001146  0.00000149  0.00000051 -0.00000003
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  4  1     4    1  |0 0>       -0.00380496  0.00000248  0.00000956 -0.00000070  0.00000000
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  5  1     5    1  |0 0>       -0.00123903 -0.00000099 -0.00000068  0.00000009  0.00000053
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  6  1     6    1  |0 0>        0.01100979  0.00000069  0.00000042  0.00000451 -0.00000056
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

  7  1     7    1  |0 0>        0.00000870  0.01536291 -0.01445394 -0.45179697 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

  8  1     8    1  |0 0>       -0.00000105  0.44804931  0.06037521  0.01330324  0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  9  1     9    1  |0 0>       -0.00000005 -0.05988555  0.44800859 -0.01636925  0.00000001
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 10  1    10    1  |0 0>       -0.00000004 -0.00000000 -0.00000002 -0.00000003  0.76662055
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+       0.00000044 -0.39434114 -0.01697831  0.01722445 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 12  1     2    1  |1 1>+       0.00336980  0.05836047  0.00236334 -0.00254621 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 13  1     3    1  |1 1>+       0.00050953 -0.00357190  0.08411591 -0.00149451 -0.00000001
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 14  1     4    1  |1 1>+      -0.00261991  0.07754230  0.00332976 -0.00336093  0.00000002
                                0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 15  1     5    1  |1 1>+      -0.26964377  0.00357889  0.00164617  0.08410806 -0.00000000
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

 16  1     6    1  |1 1>+       0.00438974  0.00000396 -0.00001228 -0.00056498 -0.00000097
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

 17  1     7    1  |1 1>+       0.00093634 -0.02416911  0.55402270 -0.00718706  0.01103181
                                0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 18  1     8    1  |1 1>+       0.01262155  0.00167603 -0.01615257  0.02245164  0.37021597
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 19  1     9    1  |1 1>+       0.33539636  0.02380788  0.00888680  0.55381673 -0.01486722
                               -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000

 20  1     1    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00000038 -0.01690005 -0.00784029 -0.39464187 -0.00000001

 21  1     2    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.06528786 -0.00412777 -0.00193594 -0.09640940  0.00000001

 22  1     3    1  |1 0>       -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00246114  0.00001653 -0.00000393 -0.00016470 -0.00000090

 23  1     4    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.53541857  0.00052776  0.00028151  0.01175452  0.00000002

 24  1     5    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00194835  0.08407080  0.00305295 -0.00366439 -0.00000001

 25  1     6    1  |1 0>        0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                                0.00084627  0.00312462 -0.08412571  0.00156719  0.00000000

 26  1     7    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.00123032 -0.00349967  0.01637438 -0.00017605 -0.37050899

 27  1     8    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00078949 -0.04640445  0.55258564 -0.00899115  0.01109737

 28  1     9    1  |1 0>        0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00258902 -0.55237093 -0.04605478  0.02456967  0.00141480

 29  1     1    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                               -0.00000027 -0.01730134  0.39463843 -0.00709935  0.00000001

 30  1     2    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.00112916  0.00181760 -0.03800700  0.00069732 -0.00000001

 31  1     3    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00211653 -0.08402835 -0.00367476  0.00367344 -0.00000001

 32  1     4    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00030482 -0.00390789  0.08937557 -0.00165477 -0.00000001

 33  1     5    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000
                                0.00150798  0.00004967 -0.00001407  0.00056739  0.00000027

 34  1     6    1  |1 1>-       0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                                0.26968517  0.00360105  0.00173007  0.08410429  0.00000000

 35  1     7    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000
                               -0.00737647  0.55426965  0.02416033 -0.00768454 -0.00185815

 36  1     8    1  |1 1>-      -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000
                               -0.33536503  0.00712422  0.01028309  0.55426431 -0.01481831

 37  1     9    1  |1 1>-       0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000
                                0.01143819 -0.00306546 -0.00053252 -0.02213920 -0.37037603



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.07%    2.09%    1.77%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    1.20%    1.01%    1.71%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    2.66%    0.82%    0.45%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   18.21%   20.06%   45.48%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%   23.33%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   36.78%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    9.95%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   41.66%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   33.31%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    4.67%    0.95%    0.52%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.14%    3.70%    2.29%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    1.96%   50.42%   31.38%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    3.97%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   33.35%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.01%
 24  1     5    1  |1 0>          0.00%    0.00%    0.00%    0.01%    0.00%   35.91%    0.01%    0.00%
 25  1     6    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.00%    0.01%   29.87%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    4.45%    1.07%    0.61%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    1.54%    1.37%    3.23%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   63.58%   13.28%    6.90%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   25.89%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%   30.80%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    7.44%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   33.34%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%   24.36%
 35  1     7    1  |1 1>-         0.00%    1.36%    1.61%    3.17%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.12%    3.55%    2.46%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.01%    0.00%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.07%    0.00%   43.50%    2.16%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.01%   43.81%    0.00%    0.30%    1.61%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   45.72%    0.00%    0.02%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   45.69%    0.00%    0.00%    0.00%    0.05%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.04%    1.85%    0.01%    1.93%   41.89%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   19.56%    0.01%    0.00%   20.55%    0.00%    0.11%    1.29%
 13  1     3    1  |1 1>+         0.00%    0.01%   16.61%    0.00%    0.00%    8.50%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%   40.35%    0.01%    0.00%   11.64%    0.00%    0.06%    0.73%
 15  1     5    1  |1 1>+        11.74%    0.00%    0.00%    0.00%    0.00%    0.00%    8.08%    0.43%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%   31.45%    0.16%    0.00%    0.11%    2.56%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    1.43%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    0.16%    0.11%    0.00%    0.11%    1.53%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.33%    0.10%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>         55.62%    0.01%    0.00%    0.00%    0.00%    0.00%    0.48%    0.02%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    1.81%    2.04%    0.01%    1.52%   28.88%
 23  1     4    1  |1 0>          3.59%    0.00%    0.00%    0.00%    0.01%    0.00%   32.12%    1.75%
 24  1     5    1  |1 0>          0.00%   17.47%    0.00%    0.00%    7.97%    0.00%    0.04%    0.50%
 25  1     6    1  |1 0>          0.00%    0.00%   23.50%    0.00%    0.00%    8.51%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    1.80%    0.01%    0.00%    0.00%    0.09%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    1.43%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    1.34%    0.00%    0.01%    0.09%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%   11.43%    0.00%    0.00%   29.09%    0.00%    0.01%
 31  1     3    1  |1 1>-         0.00%   22.59%    0.00%    0.00%    7.96%    0.00%    0.04%    0.50%
 32  1     4    1  |1 1>-         0.00%    0.01%   48.43%    0.00%    0.00%    5.27%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%   18.14%    1.06%    0.01%    0.74%   14.32%
 34  1     6    1  |1 1>-        29.03%    0.00%    0.00%    0.00%    0.00%    0.00%    8.10%    0.41%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    1.34%    0.00%    0.01%    0.08%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.33%    0.10%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    0.90%    0.06%    0.00%    0.07%    0.88%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   20.43%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%   20.42%    0.01%    0.00%    0.01%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%   20.42%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   20.40%    0.00%    0.00%    0.00%    0.04%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.04%    0.01%    0.00%    0.00%   20.40%
  7  1     7    1  |0 0>         51.90%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   51.15%    0.75%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.76%   51.15%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.02%    3.43%    0.00%    0.00%    2.10%    0.00%    0.00%    0.01%
 13  1     3    1  |1 1>+         0.00%    0.01%    7.17%    0.00%    0.00%    0.83%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.04%    6.06%    0.01%    0.00%    1.19%    0.00%    0.00%    0.01%
 15  1     5    1  |1 1>+         7.12%    0.05%    0.00%    0.00%    0.00%    0.00%    0.82%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    3.05%    0.00%    0.00%    0.00%    0.25%
 17  1     7    1  |1 1>+         0.00%    0.01%   11.97%    0.00%    0.01%   37.28%    0.00%    0.03%
 18  1     8    1  |1 1>+         0.02%    0.00%    0.01%    3.78%    0.24%    0.02%    0.17%   45.50%
 19  1     9    1  |1 1>+        11.89%    0.09%    0.00%    0.01%    0.03%    0.00%   37.12%    0.16%
 20  1     1    1  |1 0>          0.18%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          9.36%    0.07%    0.00%    0.00%    0.00%    0.00%    0.05%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.19%    0.01%    0.00%    0.00%    3.09%
 23  1     4    1  |1 0>          0.14%    0.00%    0.00%    0.00%    0.00%    0.00%    3.25%    0.00%
 24  1     5    1  |1 0>          0.05%    7.12%    0.00%    0.00%    0.82%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    7.17%    0.00%    0.00%    0.83%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.01%   46.79%    0.05%    0.02%    0.01%    2.86%
 27  1     8    1  |1 0>          0.00%    0.06%   11.93%    0.03%    0.03%   37.25%    0.00%    0.00%
 28  1     9    1  |1 0>          0.08%   11.85%    0.06%    0.01%   37.05%    0.03%    0.02%    0.19%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.18%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    1.46%    0.00%    0.00%    2.80%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.05%    7.12%    0.01%    0.00%    0.82%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.01%    8.10%    0.00%    0.00%    0.51%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    1.71%    0.01%    0.00%    0.00%    1.58%
 34  1     6    1  |1 1>-         7.12%    0.05%    0.00%    0.00%    0.00%    0.00%    0.83%    0.00%
 35  1     7    1  |1 1>-         0.04%   11.95%    0.01%    0.01%   37.13%    0.00%    0.00%    0.16%
 36  1     8    1  |1 1>-        11.94%    0.04%    0.00%    0.03%    0.00%    0.00%   37.17%    0.12%
 37  1     9    1  |1 1>-         0.02%    0.00%    0.00%   23.95%    0.07%    0.00%    0.11%   25.58%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.15%    2.83%   30.82%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   30.99%    2.84%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%   31.91%    1.91%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.89%   31.75%    0.01%    0.16%
  7  1     7    1  |0 0>          0.00%    0.59%   23.12%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%   23.05%    0.59%    0.07%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.07%    0.00%   23.64%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         41.23%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   10.57%    0.07%    0.01%    0.00%    0.01%    1.41%   17.16%
 13  1     3    1  |1 1>+         0.00%    0.02%    0.01%   22.07%    0.00%    0.00%    6.73%    0.55%
 14  1     4    1  |1 1>+         0.00%   18.67%    0.13%    0.02%    0.00%    0.00%    0.81%    9.70%
 15  1     5    1  |1 1>+         0.00%    0.15%   21.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%   20.87%    8.22%    0.00%    0.01%
 17  1     7    1  |1 1>+         0.02%    0.00%    0.00%    1.07%    0.00%    0.01%   10.40%    0.86%
 18  1     8    1  |1 1>+        19.54%    0.00%    0.00%    0.00%    4.24%   10.75%    0.01%    0.01%
 19  1     9    1  |1 1>+         0.03%    0.01%    1.07%    0.00%    0.01%    0.01%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.00%    0.46%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.20%   28.84%    0.00%    0.00%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.04%   29.04%    0.00%    0.01%
 23  1     4    1  |1 0>          0.00%    0.00%    0.43%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%   21.92%    0.15%    0.03%    0.00%    0.00%    0.58%    6.68%
 25  1     6    1  |1 0>          0.00%    0.03%    0.01%   22.06%    0.00%    0.00%    6.69%    0.58%
 26  1     7    1  |1 0>         19.57%    0.00%    0.00%    0.00%   14.99%    0.02%    0.01%    0.00%
 27  1     8    1  |1 0>          0.02%    0.00%    0.00%    1.07%    0.01%    0.00%   10.62%    0.64%
 28  1     9    1  |1 0>          0.00%    1.07%    0.01%    0.00%    0.00%    0.01%    0.64%   10.62%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.46%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.00%    4.51%    0.00%    0.00%   22.74%    1.90%
 31  1     3    1  |1 1>-         0.00%   21.93%    0.15%    0.02%    0.00%    0.00%    0.57%    6.70%
 32  1     4    1  |1 1>-         0.00%    0.02%    0.01%   24.93%    0.00%    0.00%    4.12%    0.34%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%   22.73%    6.36%    0.00%    0.00%
 34  1     6    1  |1 1>-         0.00%    0.15%   21.95%    0.00%    0.00%    0.00%    0.00%    0.00%
 35  1     7    1  |1 1>-         0.00%    1.06%    0.01%    0.00%    0.00%    0.01%    0.86%   10.39%
 36  1     8    1  |1 1>-         0.03%    0.01%    1.06%    0.00%    0.00%    0.01%    0.00%    0.01%
 37  1     9    1  |1 1>-        19.55%    0.00%    0.00%    0.00%    3.28%   11.71%    0.00%    0.01%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>         33.80%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    0.02%    0.02%   20.41%    0.00%
  8  1     8    1  |0 0>          0.00%   20.07%    0.36%    0.02%    0.00%
  9  1     9    1  |0 0>          0.00%    0.36%   20.07%    0.03%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   58.77%
 11  1     1    1  |1 1>+         0.00%   15.55%    0.03%    0.03%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.34%    0.00%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.00%    0.71%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.60%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         7.27%    0.00%    0.00%    0.71%    0.00%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%
 17  1     7    1  |1 1>+         0.00%    0.06%   30.69%    0.01%    0.01%
 18  1     8    1  |1 1>+         0.02%    0.00%    0.03%    0.05%   13.71%
 19  1     9    1  |1 1>+        11.25%    0.06%    0.01%   30.67%    0.02%
 20  1     1    1  |1 0>          0.00%    0.03%    0.01%   15.57%    0.00%
 21  1     2    1  |1 0>          0.43%    0.00%    0.00%    0.93%    0.00%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>         28.67%    0.00%    0.00%    0.01%    0.00%
 24  1     5    1  |1 0>          0.00%    0.71%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.00%    0.71%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.03%    0.00%   13.73%
 27  1     8    1  |1 0>          0.00%    0.22%   30.54%    0.01%    0.01%
 28  1     9    1  |1 0>          0.00%   30.51%    0.21%    0.06%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.03%   15.57%    0.01%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.00%    0.14%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.71%    0.00%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.80%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%
 34  1     6    1  |1 1>-         7.27%    0.00%    0.00%    0.71%    0.00%
 35  1     7    1  |1 1>-         0.01%   30.72%    0.06%    0.01%    0.00%
 36  1     8    1  |1 1>-        11.25%    0.01%    0.01%   30.72%    0.02%
 37  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.05%   13.72%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       86.94       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6714.00       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *    131613.67 111305.05   9377.43  10909.71     13.95      0.71      6.57
 REAL TIME  *    133161.32 SEC
 DISK USED  *         6.64 GB (local),       94.05 GB (total)
 SF USED    *        33.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -462.929796157335

              CI              CI           MULTI         RHF-SCF
   -462.88253684   -462.86908198   -461.79138374   -462.20021392
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
