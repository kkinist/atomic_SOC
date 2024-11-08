
 Working directory              : /wrk/irikura/molpro.DkCFaafSJw/
 Global scratch directory       : /wrk/irikura/molpro.DkCFaafSJw/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.DkCFaafSJw/

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
     occ,8,9
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
 Default parameters read. Elapsed time= 0.10 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 28-Aug-24          TIME: 10:32:50  
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

     561.250 MB (compressed) written to integral file ( 13.7%)

     Node minimum: 31.719 MB, node maximum: 49.283 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:   22335719.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   2  SEGMENT LENGTH:   15996659      RECORD LENGTH: 524288

 Memory used in sort:      16.55 MW

 SORT1 READ   511790813. AND WROTE     3785086. INTEGRALS IN     12 RECORDS. CPU TIME:     2.67 SEC, REAL TIME:     2.78 SEC
 SORT2 READ    53582001. AND WROTE   312900871. INTEGRALS IN   2632 RECORDS. CPU TIME:     0.41 SEC, REAL TIME:     0.48 SEC

 Node minimum:    22335257.  Node maximum:    22368464. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       30.46       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         7.48      7.28
 REAL TIME  *         9.70 SEC
 DISK USED  *        30.87 MB (local),        1.49 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -462.20021095    -462.20021095     0.00D+00     0.50D-01     0     0       0.11      0.23    start
   2     -462.20021380      -0.00000286     0.39D-04     0.59D-04     1     0       0.13      0.36    diag
   3     -462.20021392      -0.00000011     0.49D-05     0.95D-05     2     0       0.12      0.48    diag
   4     -462.20021392      -0.00000000     0.14D-05     0.10D-05     3     0       0.12      0.60    diag
   5     -462.20021392      -0.00000000     0.54D-06     0.28D-06     0     0       0.13      0.73    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.200213922396
  RHF One-electron energy            -808.825824379889
  RHF Two-electron energy             346.625610457493
  RHF Kinetic energy                  329.246622531192
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403811557334

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80713     1  1  s    1.00004
    2.1     2.00000    -3.75330     1  1  d0   0.99996
    3.1     2.00000    -3.75330     1  1  d2- -0.29551    1  1  d1+  0.78840    1  1  d2+ -0.52470
    4.1     2.00000    -3.75330     1  1  d1-  0.95965
    5.1     2.00000    -3.75330     1  1  d1+  0.60393    1  1  d2+  0.75805
    6.1     2.00000    -3.75330     1  1  d2-  0.92050    1  1  d2+ -0.30613
    7.1     2.00000    -1.18782     1  1  s   -0.44482    1  5  s    0.53692    1  6  s    0.59428
    1.2     2.00000    -8.48542     1  1  px   0.99955
    2.2     2.00000    -8.48542     1  1  pz   0.99954
    3.2     2.00000    -8.48542     1  1  py   0.99954
    4.2     2.00000    -0.52322     1  1  py  -0.30410    1  4  py   0.31147    1  5  py   0.44363    1  6  py   0.32584
    5.2     2.00000    -0.52322     1  1  px  -0.30410    1  4  px   0.31148    1  5  px   0.44364    1  6  px   0.32585
    6.2     2.00000    -0.52322     1  1  pz  -0.30410    1  4  pz   0.31147    1  5  pz   0.44363    1  6  pz   0.32584


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
 CPU TIMES  *         8.21      0.72      7.28
 REAL TIME  *        10.48 SEC
 DISK USED  *        33.17 MB (local),        1.52 GB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     248 (  121  127)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.116D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.546D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.310D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.556D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.408D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 5 3 1 1 3 5   6 4 2 1 3 5 2 6 413  10 711 91415 812 2 3   5 6 4 1 71514 91113
                                       10 812 3 5 6 4 2 1 7  1514 911 8121013 5 3   4 6 2 1 812 7 91115  141310 5 3 4 6 22623
                                       19241721201825272822  16 81211 9 713101415   1 5 3 4 6 2 1 5 4 3   6 2 9111310 812 715
                                       14 1 5 3 2 4 6 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.101D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.433D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.377D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.728D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.728D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.979D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  8 SYMMETRY CONTAMINATION OF 0.932D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.121D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 2 1 3 3 2 1 3   1 2 810 7 9 5 4 6 3   2 1 810 6 7 9 4 5 3   2 1 810 6 7 9 5 418
                                       20211311121914161517   6 810 9 7 5 4 3 1 2  18201911122113141615  17 610 8 7 9 5 4 1 2
                                        3191112201814161517  2113 610 8 5 4 7 9 1   2 310 8 4 5 6 7 919  20211813111716121514
                                        1 2 3 810 6 4 5 7 9   2 3 1 2 1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  2141  ( 30 closed/active, 1107 closed/virtual, 0 active/active, 1004 active/virtual )
 Total number of variables:    41325
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   14   58    0   -461.77870211    -461.82851540   -0.04981329    0.28550291 0.00401428 0.00243215  0.11E+01     11.82
   2    8   34    0   -461.81152991    -461.81622519   -0.00469528    0.24712204 0.00017512 0.00021940  0.11E+00     19.05
   3    9   36    0   -461.81625807    -461.81625887   -0.00000080    0.00194335 0.00000254 0.00000799  0.71E-02     27.41
   4    6   24    0   -461.81625887    -461.81625887   -0.00000000    0.00000050 0.00000000 0.00000007  0.49E-04     34.14

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.23E-07)
                       Final energy:   -461.81625887
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.184153588983
 Nuclear energy                                  0.00000000
 Kinetic energy                                330.06862699
 One electron energy                          -810.70375723
 Two electron energy                           348.51960364
 Virial ratio                                    2.40026684
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.797080669412
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96272602
 One electron energy                          -801.84015408
 Two electron energy                           340.04307341
 Virial ratio                                    2.40379759
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.797080669412
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96272602
 One electron energy                          -801.84015408
 Two electron energy                           340.04307341
 Virial ratio                                    2.40379759
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.797080669411
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96272602
 One electron energy                          -801.84015408
 Two electron energy                           340.04307341
 Virial ratio                                    2.40379759
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.797080669411
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96272602
 One electron energy                          -801.84015408
 Two electron energy                           340.04307341
 Virial ratio                                    2.40379759
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.797080669411
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96272602
 One electron energy                          -801.84015408
 Two electron energy                           340.04307341
 Virial ratio                                    2.40379759
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.793338537704
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95771543
 One electron energy                          -801.82490322
 Two electron energy                           340.03156468
 Virial ratio                                    2.40380759
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.793338537704
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95771543
 One electron energy                          -801.82490322
 Two electron energy                           340.03156468
 Virial ratio                                    2.40380759
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.793338537704
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95771543
 One electron energy                          -801.82490322
 Two electron energy                           340.03156468
 Virial ratio                                    2.40380759
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.773993506181
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.24006071
 One electron energy                          -802.90610772
 Two electron energy                           341.13211421
 Virial ratio                                    2.40254498
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.808508050520
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.93858059
 One electron energy                          -801.76053279
 Two electron energy                           339.95202474
 Virial ratio                                    2.40393537
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.799242901443
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95051155
 One electron energy                          -801.80104417
 Two electron energy                           340.00180127
 Virial ratio                                    2.40385628
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.799242901442
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95051155
 One electron energy                          -801.80104417
 Two electron energy                           340.00180127
 Virial ratio                                    2.40385628
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.799242901442
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95051155
 One electron energy                          -801.80104417
 Two electron energy                           340.00180127
 Virial ratio                                    2.40385628
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.799242901442
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95051155
 One electron energy                          -801.80104417
 Two electron energy                           340.00180127
 Virial ratio                                    2.40385628
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.799242901442
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95051155
 One electron energy                          -801.80104417
 Two electron energy                           340.00180127
 Virial ratio                                    2.40385628
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.793543279911
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95597785
 One electron energy                          -801.81806312
 Two electron energy                           340.02451984
 Virial ratio                                    2.40381563
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.793543279911
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95597785
 One electron energy                          -801.81806312
 Two electron energy                           340.02451984
 Virial ratio                                    2.40381563
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.793543279911
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95597785
 One electron energy                          -801.81806312
 Two electron energy                           340.02451984
 Virial ratio                                    2.40381563
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     0.996391682938
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     3.003568053139
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.010296019132
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     1.006904719609
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     3.982839525183
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.998607986178
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.993680521460
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.007711492362
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     1.001823718757
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.687557744646
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     2.262090412098
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     2.045800364485
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     3.002727760014
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.993219962082
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.648524199144
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.358255838774
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.003659962619
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     2.995995038744
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000252109045
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.993066691679
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     1.007026197913
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.999997117739
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.006341208341
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.993661673920
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.006999636977
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.298667196025
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     1.312291739347
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.384817320920
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     2.997224106730
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.999295248053
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.356428716673
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.644276035274
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     3.999948354443
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     0.000436908118
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.989451871823
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     1.000028588712
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     1.010134276904
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.001394896083
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999978270199
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.998626833718
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     3.991176644266
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     1.013775059328
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     2.425617848555
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     2.569382314594
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     0.000048133256
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.007484789865
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.995047084183
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.997468125952
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 3 5 2 1 1 1 3   5 6 4 2 3 5 2 6 4 1  1310 711 9 8121415 2   3 5 6 4 7 911151413
                                       10 812 3 5 6 4 2 1 7   9111514 8121013 2 5   3 6 4 1 7 911 81214  151310 2 5 3 4 62326
                                       24191721182025272822  16 812 7 91113101415   1 2 3 5 6 4 1 3 5 4   6 2 9111310 812 714
                                       15 1 5 3 6 4 2 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 3 2 1 2 1 3 3   1 2 810 4 5 9 7 6 3   1 2 810 6 9 7 4 5 3   1 2 810 6 9 7 4 520
                                       18211312111914161517   6 810 9 7 5 4 3 1 2  20181911122113141615  17 610 8 9 7 5 4 2 1
                                        3121119201814161521  131710 8 6 5 4 7 9 2   1 310 8 4 5 7 9 619  21131814162015171112
                                        2 1 3 810 6 4 5 7 9   2 1 3 2 1 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.03597     1  1  s    0.97344
    2.1     2.00000    -4.01113     1  1  d1-  1.00037
    3.1     2.00000    -4.01113     1  1  d1+  1.00037
    4.1     2.00000    -4.01113     1  1  d2-  1.00037
    5.1     2.00000    -4.01113     1  1  d2+  1.00037
    6.1     2.00000    -4.01113     1  1  d0   1.00037
    7.1     1.99899    -1.42246     1  1  s   -0.51220    1  5  s    0.58281    1  6  s    0.60835
    8.1     0.00141     0.88710     1  1  s    0.62734    1  3  s    0.79472    1  4  s   -0.90881    1  5  s   -2.01819
                                    1  6  s    1.54651    1  7  s    0.40484
    1.2     2.00000    -8.74272     1  1  pz   0.99910
    2.2     2.00000    -8.74272     1  1  px   0.99910
    3.2     2.00000    -8.74272     1  1  py   0.99910
    4.2     1.68392    -0.66539     1  1  pz  -0.32284    1  4  pz   0.33797    1  5  pz   0.49139    1  6  pz   0.28561
    5.2     1.68392    -0.66539     1  1  py  -0.32284    1  4  py   0.33797    1  5  py   0.49139    1  6  py   0.28561
    6.2     1.68392    -0.66539     1  1  px  -0.32284    1  4  px   0.33797    1  5  px   0.49139    1  6  px   0.28561
    7.2     0.31594     0.02927     1  7  py  -0.36433    1 12  py   1.24919
    8.2     0.31594     0.02927     1  7  px  -0.36433    1 12  px   1.24919
    9.2     0.31594     0.02927     1  7  pz  -0.36433    1 12  pz   1.24919
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.98463210     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 20 b2200a     -0.06709396      0.00060509     -0.57700543      0.00589334      0.00021167     -0.00353471      0.00000000
 20 a2200b      0.06709396     -0.00060509      0.57700543     -0.00589334     -0.00021167      0.00353471     -0.00000000
 20 22a0b0      0.06709396      0.50003533     -0.28796619      0.00336070      0.00162062     -0.00302143     -0.00000000
 20 22b0a0     -0.06709396     -0.50003533      0.28796619     -0.00336070     -0.00162062      0.00302143      0.00000000
 20 22ab00      0.00000000     -0.00034470      0.00491668      0.49886632     -0.00031067      0.02907208      0.49943679
 20 2b20a0     -0.00000000      0.00034470     -0.00491668     -0.49886632      0.00031067     -0.02907208      0.49943679
 20 2a20b0      0.00000000     -0.00034470      0.00491668      0.49886632     -0.00031067      0.02907208     -0.49943679
 20 22ba00     -0.00000000      0.00034470     -0.00491668     -0.49886632      0.00031067     -0.02907208     -0.49943679
 20 2a2b00      0.06709396     -0.49943023     -0.28903924      0.00253264     -0.00140895     -0.00051328      0.00000000
 20 2b2a00     -0.06709396      0.49943023      0.28903924     -0.00253264      0.00140895      0.00051328     -0.00000000
 20 a220b0      0.00000000     -0.00145204      0.00002369     -0.00108686      0.49915896      0.02396291     -0.00084850
 20 b220a0     -0.00000000      0.00145204     -0.00002369      0.00108686     -0.49915896     -0.02396291      0.00084850
 20 22a00b      0.00000000     -0.00145204      0.00002369     -0.00108686      0.49915896      0.02396291      0.00084850
 20 22b00a     -0.00000000      0.00145204     -0.00002369      0.00108686     -0.49915896     -0.02396291     -0.00084850
 20 a22b00     -0.00000000      0.00135082     -0.00335637     -0.02902023     -0.02398096      0.49830395      0.01864685
 20 b22a00      0.00000000     -0.00135082      0.00335637      0.02902023      0.02398096     -0.49830395     -0.01864685
 20 2a200b     -0.00000000      0.00135082     -0.00335637     -0.02902023     -0.02398096      0.49830395     -0.01864685
 20 2b200a      0.00000000     -0.00135082      0.00335637      0.02902023      0.02398096     -0.49830395      0.01864685
 
 Energy:     -462.18415359   -461.79708067   -461.79708067   -461.79708067   -461.79708067   -461.79708067   -461.79333854

 State:              8               9              10
 20 222000      0.00000000     -0.00000000     -0.16329182
 20 b2200a      0.00000000      0.00000000     -0.40228005
 20 a2200b     -0.00000000     -0.00000000      0.40228005
 20 22a0b0      0.00000000     -0.00000000      0.40228005
 20 22b0a0     -0.00000000      0.00000000     -0.40228005
 20 22ab00     -0.00232976      0.01852018      0.00000000
 20 2b20a0     -0.00232976      0.01852018      0.00000000
 20 2a20b0      0.00232976     -0.01852018     -0.00000000
 20 22ba00      0.00232976     -0.01852018     -0.00000000
 20 2a2b00     -0.00000000      0.00000000      0.40228005
 20 2b2a00      0.00000000     -0.00000000     -0.40228005
 20 a220b0     -0.49819834     -0.03978972     -0.00000000
 20 b220a0      0.49819834      0.03978972      0.00000000
 20 22a00b      0.49819834      0.03978972      0.00000000
 20 22b00a     -0.49819834     -0.03978972     -0.00000000
 20 a22b00      0.03973052     -0.49785471      0.00000000
 20 b22a00     -0.03973052      0.49785471     -0.00000000
 20 2a200b     -0.03973052      0.49785471     -0.00000000
 20 2b200a      0.03973052     -0.49785471      0.00000000
 
 Energy:     -461.79333854   -461.79333854   -461.77399351
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 a2200a      0.57702854      0.00260415      0.00147267     -0.00005479     -0.00076412      0.81615887     -0.00000000
 20 22aa00      0.00000000      0.70551692      0.03740182     -0.01469464      0.01481101     -0.00230572      0.70411897
 20 2a20a0      0.00000000      0.70551692      0.03740182     -0.01469464      0.01481101     -0.00230572     -0.70411897
 20 a220a0     -0.00000000     -0.03334743      0.61867170      0.22810744      0.25237537     -0.00075833     -0.01876271
 20 22a00a     -0.00000000     -0.03334743      0.61867170      0.22810744      0.25237537     -0.00075833      0.01876271
 20 22a0a0      0.57702854     -0.02058528     -0.03066330     -0.48699820      0.51139274     -0.40751817     -0.00000000
 20 2a2a00      0.57702854      0.01798113      0.02919063      0.48705299     -0.51062862     -0.40864070      0.00000000
 20 2a200a      0.00000000      0.01872249     -0.33844174      0.45842203      0.41779012      0.00097287     -0.05819605
 20 a22a00     -0.00000000      0.01872249     -0.33844174      0.45842203      0.41779012      0.00097287      0.05819605
 
 Energy:     -461.80850805   -461.79924290   -461.79924290   -461.79924290   -461.79924290   -461.79924290   -461.79354328

 State:              8               9
 20 a2200a     -0.00000000      0.00000000
 20 22aa00      0.04974025     -0.03556301
 20 2a20a0     -0.04974025      0.03556301
 20 a220a0      0.56699051      0.42153537
 20 22a00a     -0.56699051     -0.42153537
 20 22a0a0     -0.00000000     -0.00000000
 20 2a2a00      0.00000000     -0.00000000
 20 2a200a      0.41901076     -0.56618508
 20 a22a00     -0.41901076      0.56618508
 
 Energy:     -461.79354328   -461.79354328
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        2.42       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *        21.36     13.14      0.72      7.28
 REAL TIME  *        46.61 SEC
 DISK USED  *        96.32 MB (local),        2.39 GB (total)
 SF USED    *       170.16 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1841536  -0.0
    -461.7970807   6.0
    -461.7970807   6.0
    -461.7970807   6.0
    -461.7970807   6.0
    -461.7970807   6.0
    -461.7933385   2.0
    -461.7933385   2.0
    -461.7933385   2.0
    -461.7739935  -0.0
    -461.8085081  -0.0
    -461.7992429   6.0
    -461.7992429   6.0
    -461.7992429   6.0
    -461.7992429   6.0
    -461.7992429   6.0
    -461.7935433   2.0
    -461.7935433   2.0
    -461.7935433   2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

 Reference symmetry:                   1   Singlet 
 Number of electrons:                 26
 Maximum number of shells:             7
 Maximum number of spin couplings:   132

 Reference space:      603 conf      924 CSFs
 N elec internal:    45531 conf   130284 CSFs
 N-1 el internal:    56699 conf   278292 CSFs
 N-2 el internal:    37063 conf   282516 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -462.18415359
     2      -461.79708067
     3      -461.79708067
     4      -461.79708067
     5      -461.79708067
     6      -461.79708067
     7      -461.79333854
     8      -461.79333854
     9      -461.79333854
    10      -461.77399351

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1684D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1756D-06

 Number of blocks in overlap matrix:   904   Smallest eigenvalue:  0.17D-06
 Number of N-2 electron functions:    2844
 Number of N-1 electron functions:  278292

 Number of internal configurations:                65352
 Number of singly external configurations:      34509132
 Number of doubly external configurations:      43745884
 Total number of contracted configurations:     78320368
 Total number of uncontracted configurations: 4374227368

 Diagonal Coupling coefficients finished.               Storage:  74710394 words, CPU-Time:    583.40 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4894545 words, CPU-time:      7.16 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.18415359    -0.00000000    -1.23144662  0.36D-01  0.58D-01   625.93
    1     2     2     1.00000000     0.00000000  -461.79708067    -0.00000000    -1.22088262  0.21D-01  0.65D-01   625.93
    1     3     3     1.00000000     0.00000000  -461.79708067     0.00000000    -1.21966256  0.21D-01  0.64D-01   625.93
    1     4     4     1.00000000     0.00000000  -461.79708067    -0.00000000    -1.21180962  0.21D-01  0.60D-01   625.93
    1     5     5     1.00000000     0.00000000  -461.79708067     0.00000000    -1.21229614  0.21D-01  0.60D-01   625.93
    1     6     6     1.00000000     0.00000000  -461.79708067     0.00000000    -1.21183545  0.21D-01  0.60D-01   625.93
    1     7     7     1.00000000     0.00000000  -461.79333854     0.00000000    -1.21452134  0.21D-01  0.61D-01   625.93
    1     8     8     1.00000000     0.00000000  -461.79333854     0.00000000    -1.21469238  0.21D-01  0.61D-01   625.93
    1     9     9     1.00000000     0.00000000  -461.79333854     0.00000000    -1.21454591  0.21D-01  0.61D-01   625.93
    1    10    10     1.00000000     0.00000000  -461.77399351    -0.00000000    -1.23579085  0.45D-01  0.64D-01   625.93
    2     1     1     1.07321682    -1.08701646  -463.27117005    -1.08701646    -0.03251820  0.67D-02  0.14D-02  6299.61
    2     2     2     1.06310170    -1.07005745  -462.86713812    -1.07005745    -0.02006649  0.17D-02  0.94D-03  6299.61
    2     3     3     1.06312065    -1.07004444  -462.86712511    -1.07004444    -0.02007810  0.17D-02  0.94D-03  6299.61
    2     4     4     1.06319145    -1.06998235  -462.86706302    -1.06998235    -0.02014148  0.17D-02  0.94D-03  6299.61
    2     5     5     1.06582832    -1.06891060  -462.86599127    -1.06891060    -0.02126093  0.17D-02  0.12D-02  6299.61
    2     6     6     1.06555525    -1.06882060  -462.86590127    -1.06882060    -0.02130919  0.17D-02  0.12D-02  6299.61
    2     7     7     1.06387473    -1.07039961  -462.86373815    -1.07039961    -0.02013927  0.16D-02  0.10D-02  6299.61
    2     8     8     1.06389166    -1.07038859  -462.86372713    -1.07038859    -0.02014850  0.16D-02  0.10D-02  6299.61
    2     9     9     1.06391712    -1.07032357  -462.86366211    -1.07032357    -0.02019399  0.16D-02  0.10D-02  6299.61
    2    10    10     1.07984757    -1.06209238  -462.83608588    -1.06209238    -0.03451363  0.97D-02  0.12D-02  6299.61
    3     1     1     1.06366359    -1.11965310  -463.30380668    -0.03263664    -0.00149560  0.63D-04  0.15D-03 11971.09
    3     2     2     1.05939135    -1.08891074  -462.88599141    -0.01885329    -0.00063898  0.27D-04  0.68D-04 11971.09
    3     3     3     1.05939234    -1.08891035  -462.88599102    -0.01886591    -0.00063930  0.27D-04  0.68D-04 11971.09
    3     4     4     1.05939477    -1.08890531  -462.88598598    -0.01892296    -0.00064178  0.27D-04  0.69D-04 11971.09
    3     5     5     1.05974529    -1.08890159  -462.88598226    -0.01999099    -0.00064487  0.26D-04  0.75D-04 11971.09
    3     6     6     1.05965139    -1.08887784  -462.88595851    -0.02005724    -0.00065798  0.26D-04  0.76D-04 11971.09
    3     7     7     1.05972086    -1.08934642  -462.88268495    -0.01894681    -0.00063674  0.27D-04  0.69D-04 11971.09
    3     8     8     1.05972182    -1.08934608  -462.88268462    -0.01895749    -0.00063699  0.27D-04  0.69D-04 11971.09
    3     9     9     1.05970689    -1.08933414  -462.88267267    -0.01901057    -0.00064363  0.27D-04  0.70D-04 11971.09
    3    10    10     1.06157476    -1.09454762  -462.86854112    -0.03245524    -0.00119882  0.12D-03  0.10D-03 11971.09
    4     1     1     1.06689127    -1.12142933  -463.30558292    -0.00177624    -0.00011813  0.43D-05  0.10D-04 17642.34
    4     2     2     1.06088337    -1.08968804  -462.88676871    -0.00077730    -0.00006318  0.21D-05  0.65D-05 17642.34
    4     3     3     1.06088285    -1.08968801  -462.88676868    -0.00077765    -0.00006319  0.21D-05  0.65D-05 17642.34
    4     4     4     1.06087824    -1.08968684  -462.88676751    -0.00078153    -0.00006390  0.21D-05  0.66D-05 17642.34
    4     5     5     1.06081392    -1.08968329  -462.88676396    -0.00078171    -0.00006675  0.21D-05  0.74D-05 17642.34
    4     6     6     1.06081192    -1.08968105  -462.88676172    -0.00080321    -0.00006847  0.22D-05  0.74D-05 17642.34
    4     7     7     1.06108998    -1.09012413  -462.88346267    -0.00077771    -0.00006424  0.22D-05  0.66D-05 17642.34
    4     8     8     1.06108940    -1.09012406  -462.88346260    -0.00077798    -0.00006426  0.22D-05  0.66D-05 17642.34
    4     9     9     1.06108171    -1.09012223  -462.88346077    -0.00078810    -0.00006553  0.22D-05  0.67D-05 17642.34
    4    10    10     1.06214494    -1.09588946  -462.86988296    -0.00134184    -0.00010330  0.33D-05  0.12D-04 17642.34
    5     1     1     1.06786025    -1.12156700  -463.30572059    -0.00013767    -0.00000864  0.14D-06  0.86D-06 23324.78
    5     2     2     1.06150446    -1.08976813  -462.88684880    -0.00008009    -0.00000551  0.17D-06  0.56D-06 23324.78
    5     3     3     1.06151865    -1.08976782  -462.88684849    -0.00007982    -0.00000555  0.18D-06  0.57D-06 23324.78
    5     4     4     1.06151861    -1.08976781  -462.88684848    -0.00008097    -0.00000555  0.18D-06  0.57D-06 23324.78
    5     5     5     1.06150556    -1.08976772  -462.88684839    -0.00008443    -0.00000573  0.18D-06  0.60D-06 23324.78
    5     6     6     1.06151906    -1.08976766  -462.88684833    -0.00008661    -0.00000564  0.18D-06  0.58D-06 23324.78
    5     7     7     1.06173295    -1.09020479  -462.88354333    -0.00008066    -0.00000538  0.16D-06  0.55D-06 23324.78
    5     8     8     1.06173298    -1.09020477  -462.88354331    -0.00008071    -0.00000539  0.16D-06  0.55D-06 23324.78
    5     9     9     1.06173306    -1.09020460  -462.88354314    -0.00008236    -0.00000551  0.16D-06  0.56D-06 23324.78
    5    10    10     1.06284611    -1.09602065  -462.87001416    -0.00013119    -0.00001102  0.40D-06  0.12D-05 23324.78
    6     1     1     1.06789704    -1.12157757  -463.30573116    -0.00001056    -0.00000082  0.27D-07  0.75D-07 29006.38
    6     2     2     1.06151889    -1.08977501  -462.88685568    -0.00000688    -0.00000065  0.29D-07  0.69D-07 29006.38
    6     3     3     1.06152000    -1.08977494  -462.88685561    -0.00000712    -0.00000070  0.29D-07  0.71D-07 29006.38
    6     4     4     1.06151999    -1.08977494  -462.88685561    -0.00000713    -0.00000070  0.29D-07  0.71D-07 29006.38
    6     5     5     1.06151977    -1.08977492  -462.88685559    -0.00000719    -0.00000072  0.30D-07  0.73D-07 29006.38
    6     6     6     1.06151771    -1.08977491  -462.88685558    -0.00000724    -0.00000069  0.30D-07  0.74D-07 29006.38
    6     7     7     1.06173852    -1.09021159  -462.88355013    -0.00000679    -0.00000063  0.29D-07  0.64D-07 29006.38
    6     8     8     1.06173852    -1.09021159  -462.88355012    -0.00000681    -0.00000064  0.29D-07  0.64D-07 29006.38
    6     9     9     1.06173809    -1.09021157  -462.88355010    -0.00000697    -0.00000065  0.30D-07  0.66D-07 29006.38
    6    10    10     1.06288542    -1.09603455  -462.87002806    -0.00001390    -0.00000151  0.85D-07  0.15D-06 29006.38
    7     1     1     1.06791743    -1.12157855  -463.30573214    -0.00000098    -0.00000010  0.39D-08  0.85D-08 34683.43
    7     2     2     1.06152308    -1.08977582  -462.88685649    -0.00000081    -0.00000010  0.56D-08  0.10D-07 34683.43
    7     3     3     1.06152166    -1.08977582  -462.88685649    -0.00000087    -0.00000011  0.55D-08  0.10D-07 34683.43
    7     4     4     1.06152168    -1.08977582  -462.88685649    -0.00000087    -0.00000011  0.56D-08  0.10D-07 34683.43
    7     5     5     1.06152154    -1.08977581  -462.88685648    -0.00000089    -0.00000011  0.57D-08  0.11D-07 34683.43
    7     6     6     1.06152270    -1.08977577  -462.88685644    -0.00000086    -0.00000011  0.59D-08  0.11D-07 34683.43
    7     7     7     1.06174238    -1.09021238  -462.88355092    -0.00000079    -0.00000010  0.50D-08  0.95D-08 34683.43
    7     8     8     1.06174254    -1.09021238  -462.88355091    -0.00000079    -0.00000010  0.49D-08  0.93D-08 34683.43
    7     9     9     1.06174249    -1.09021238  -462.88355091    -0.00000081    -0.00000010  0.49D-08  0.93D-08 34683.43
    7    10    10     1.06289822    -1.09603642  -462.87002993    -0.00000187    -0.00000026  0.14D-07  0.26D-07 34683.43
    8     1     1     1.06792290    -1.12157866  -463.30573225    -0.00000011    -0.00000001  0.43D-09  0.12D-08 40362.99
    8     2     2     1.06152630    -1.08977595  -462.88685662    -0.00000013    -0.00000002  0.78D-09  0.15D-08 40362.99
    8     3     3     1.06152631    -1.08977595  -462.88685662    -0.00000014    -0.00000002  0.77D-09  0.15D-08 40362.99
    8     4     4     1.06152625    -1.08977595  -462.88685662    -0.00000013    -0.00000002  0.79D-09  0.16D-08 40362.99
    8     5     5     1.06152683    -1.08977595  -462.88685662    -0.00000014    -0.00000002  0.69D-09  0.14D-08 40362.99
    8     6     6     1.06152668    -1.08977591  -462.88685658    -0.00000014    -0.00000002  0.74D-09  0.15D-08 40362.99
    8     7     7     1.06174708    -1.09021250  -462.88355104    -0.00000012    -0.00000002  0.67D-09  0.14D-08 40362.99
    8     8     8     1.06174716    -1.09021250  -462.88355103    -0.00000012    -0.00000002  0.65D-09  0.14D-08 40362.99
    8     9     9     1.06174716    -1.09021250  -462.88355103    -0.00000012    -0.00000002  0.65D-09  0.14D-08 40362.99
    8    10    10     1.06289863    -1.09603674  -462.87003025    -0.00000032    -0.00000005  0.28D-08  0.42D-08 40362.99


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  32.3%
 P   0.2%  36.0%  22.9%

 Initialization:   1.5%
 Other:            6.7%

 Total CPU:    40363.0 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222222000           0.9587988  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                            -0.0000000  -0.1170198
 2222222022222/0\0           0.0693691  -0.0000673   0.0568293  -0.0054891   0.7898663  -0.0101197   0.0000000   0.0000003
                             0.0000000   0.5552858
 22222220222/2200\           0.0693691   0.0005856  -0.0219730   0.0024692  -0.3866118   0.6908638  -0.0000000  -0.0000004
                             0.0000000   0.5552862
 22222220222/220\0          -0.0000000   0.0000735   0.6840818   0.0029455  -0.0492727  -0.0058262   0.0024997   0.6858889
                            -0.0001644  -0.0000000
 2222222022222/00\           0.0000000   0.0000734   0.6840818   0.0029455  -0.0492722  -0.0058267  -0.0024997  -0.6858889
                             0.0001644  -0.0000000
 222222202222/2\00           0.0693691  -0.0005183  -0.0348562   0.0030199  -0.4032541  -0.6807440  -0.0000000   0.0000001
                            -0.0000000   0.5552862
 222222202222/20\0           0.0000000   0.6346352   0.0009152  -0.2601381  -0.0018273  -0.0006016   0.1053800  -0.0005465
                            -0.6777497   0.0000000
 2222222022222/\00           0.0000000   0.6346351   0.0009152  -0.2601385  -0.0018273  -0.0006016  -0.1053797   0.0005465
                             0.6777497  -0.0000000
 222222202222/200\           0.0000000   0.2601465  -0.0024285   0.6346140   0.0046072   0.0000123  -0.6777454   0.0024448
                            -0.1053809  -0.0000000
 22222220222/22\00           0.0000000   0.2601463  -0.0024285   0.6346141   0.0046072   0.0000123   0.6777453  -0.0024448
                             0.1053814   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966835    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.039172
 2          -0.000000   -0.000083   -0.000781    0.897995    0.368101    0.000104   -0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.069637   -0.009129    0.001295   -0.003436    0.967961    0.000000   -0.000000   -0.000000    0.000000
 4           0.000000   -0.006726    0.000391   -0.368090    0.897965    0.004168   -0.000000    0.000000    0.000000   -0.000000
 5          -0.000000    0.967905   -0.011977   -0.002586    0.006519   -0.069719   -0.000000   -0.000000   -0.000000    0.000000
 6           0.000000   -0.012604   -0.970395   -0.000851    0.000017   -0.008244   -0.000000    0.000000    0.000000    0.000000
 7          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.149093    0.958886    0.003537   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000773   -0.003459    0.970407    0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958892    0.149095   -0.000233    0.000000
 10          0.042164   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.968951

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967628   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.001450
 2          -0.000000    0.970512    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.970512    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.970512    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.970512   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 6           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970512   -0.000000   -0.000000    0.000000    0.000000
 7           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.970414    0.000000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970414   -0.000000    0.000000
 9          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.970414   -0.000000
 10          0.001450   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.969867


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96683540 (fixed)   0.96766584 (relaxed)   0.96762754 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010053   -0.00034130   -1.05998874
 Singles      0.00890974   -0.05340955   -0.05936672
 Pairs        0.05902000    0.06381819   -0.00222320
 Total        1.06803026    0.01006734   -1.12157866
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.18343075
 Nuclear energy                         0.00000000
 Kinetic energy                       330.19139515
 One electron energy                 -808.99257866
 Two electron energy                  345.68684642
 Virial quotient                       -1.40314296
 Correlation energy                    -1.12230150
 !MRCI STATE 1.1 Energy              -463.305732246337

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.38208271 (Davidson, fixed reference)
 Cluster corrected energies          -463.38198784 (Davidson, relaxed reference)
 Cluster corrected energies          -463.38208271 (Davidson, rotated reference)

 Cluster corrected energies          -463.38048671 (Pople, fixed reference)
 Cluster corrected energies          -463.38038823 (Pople, relaxed reference)
 Cluster corrected energies          -463.38048671 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.89799488 (fixed)   0.97056483 (relaxed)   0.97051229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015465   -0.00053635   -0.96788752
 Singles      0.00988333   -0.06234754   -0.06887033
 Pairs        0.05165248   -0.00000000   -0.05301810
 Total        1.06169047   -0.06288389   -1.08977595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79708067
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65658688
 One electron energy                 -801.09201655
 Two electron energy                  338.20515992
 Virial quotient                       -1.40414867
 Correlation energy                    -1.08977595
 !MRCI STATE 2.1 Energy              -462.886856620777

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95408541 (Davidson, fixed reference)
 Cluster corrected energies          -462.95396015 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95408541 (Davidson, rotated reference)

 Cluster corrected energies          -462.95231206 (Pople, fixed reference)
 Cluster corrected energies          -462.95218348 (Pople, relaxed reference)
 Cluster corrected energies          -462.95231206 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.96796072 (fixed)   0.97056483 (relaxed)   0.97051229 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015465   -0.00053635   -0.96788743
 Singles      0.00988333   -0.06234753   -0.06887033
 Pairs        0.05165250   -0.00000009   -0.05301820
 Total        1.06169048   -0.06288397   -1.08977595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79708067
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65658991
 One electron energy                 -801.09201763
 Two electron energy                  338.20516101
 Virial quotient                       -1.40414865
 Correlation energy                    -1.08977595
 !MRCI STATE 3.1 Energy              -462.886856620723

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95408542 (Davidson, fixed reference)
 Cluster corrected energies          -462.95396016 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95408542 (Davidson, rotated reference)

 Cluster corrected energies          -462.95231207 (Pople, fixed reference)
 Cluster corrected energies          -462.95218349 (Pople, relaxed reference)
 Cluster corrected energies          -462.95231207 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.89796502 (fixed)   0.97056486 (relaxed)   0.97051232 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015465   -0.00053635   -0.96788758
 Singles      0.00988332   -0.06234752   -0.06887031
 Pairs        0.05165245    0.00000000   -0.05301805
 Total        1.06169042   -0.06288387   -1.08977595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79708067
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65657371
 One electron energy                 -801.09201246
 Two electron energy                  338.20515584
 Virial quotient                       -1.40414872
 Correlation energy                    -1.08977595
 !MRCI STATE 4.1 Energy              -462.886856618561

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95408535 (Davidson, fixed reference)
 Cluster corrected energies          -462.95396009 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95408535 (Davidson, rotated reference)

 Cluster corrected energies          -462.95231200 (Pople, fixed reference)
 Cluster corrected energies          -462.95218342 (Pople, relaxed reference)
 Cluster corrected energies          -462.95231200 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96790506 (fixed)   0.97056459 (relaxed)   0.97051205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015465   -0.00053635   -0.96788681
 Singles      0.00988333   -0.06234748   -0.06887033
 Pairs        0.05165302   -0.00000029   -0.05301881
 Total        1.06169100   -0.06288412   -1.08977595
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79708067
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65671354
 One electron energy                 -801.09204409
 Two electron energy                  338.20518748
 Virial quotient                       -1.40414813
 Correlation energy                    -1.08977595
 !MRCI STATE 5.1 Energy              -462.886856617204

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95408598 (Davidson, fixed reference)
 Cluster corrected energies          -462.95396073 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95408598 (Davidson, rotated reference)

 Cluster corrected energies          -462.95231264 (Pople, fixed reference)
 Cluster corrected energies          -462.95218407 (Pople, relaxed reference)
 Cluster corrected energies          -462.95231264 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97039487 (fixed)   0.97056466 (relaxed)   0.97051212 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015465   -0.00053635   -0.96788731
 Singles      0.00988326   -0.06234730   -0.06887020
 Pairs        0.05165294   -0.00000004   -0.05301840
 Total        1.06169085   -0.06288369   -1.08977591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79708067
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65665866
 One electron energy                 -801.09202762
 Two electron energy                  338.20517105
 Virial quotient                       -1.40414836
 Correlation energy                    -1.08977591
 !MRCI STATE 6.1 Energy              -462.886856576192

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95408578 (Davidson, fixed reference)
 Cluster corrected energies          -462.95396052 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95408578 (Davidson, rotated reference)

 Cluster corrected energies          -462.95231244 (Pople, fixed reference)
 Cluster corrected energies          -462.95218385 (Pople, relaxed reference)
 Cluster corrected energies          -462.95231244 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95888556 (fixed)   0.97046405 (relaxed)   0.97041373 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014982   -0.00053092   -0.96748298
 Singles      0.01014453   -0.06299971   -0.06974272
 Pairs        0.05161180    0.00000000   -0.05298680
 Total        1.06190615   -0.06353062   -1.09021250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79333854
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65520633
 One electron energy                 -801.08361591
 Two electron energy                  338.20006487
 Virial quotient                       -1.40414452
 Correlation energy                    -1.09021250
 !MRCI STATE 7.1 Energy              -462.883551039862

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95104190 (Davidson, fixed reference)
 Cluster corrected energies          -462.95092184 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95104190 (Davidson, rotated reference)

 Cluster corrected energies          -462.94927415 (Pople, fixed reference)
 Cluster corrected energies          -462.94915085 (Pople, relaxed reference)
 Cluster corrected energies          -462.94927415 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.97040722 (fixed)   0.97046402 (relaxed)   0.97041369 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014982   -0.00053092   -0.96748289
 Singles      0.01014455   -0.06299972   -0.06974274
 Pairs        0.05161186    0.00000000   -0.05298687
 Total        1.06190623   -0.06353064   -1.09021250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79333854
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65522873
 One electron energy                 -801.08362400
 Two electron energy                  338.20007297
 Virial quotient                       -1.40414442
 Correlation energy                    -1.09021250
 !MRCI STATE 8.1 Energy              -462.883551034549

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95104197 (Davidson, fixed reference)
 Cluster corrected energies          -462.95092191 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95104197 (Davidson, rotated reference)

 Cluster corrected energies          -462.94927422 (Pople, fixed reference)
 Cluster corrected energies          -462.94915093 (Pople, relaxed reference)
 Cluster corrected energies          -462.94927422 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95889173 (fixed)   0.97046401 (relaxed)   0.97041369 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014982   -0.00053092   -0.96748287
 Singles      0.01014455   -0.06299973   -0.06974274
 Pairs        0.05161186   -0.00000000   -0.05298688
 Total        1.06190623   -0.06353066   -1.09021250
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79333854
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65523108
 One electron energy                 -801.08362495
 Two electron energy                  338.20007392
 Virial quotient                       -1.40414441
 Correlation energy                    -1.09021250
 !MRCI STATE 9.1 Energy              -462.883551034411

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95104198 (Davidson, fixed reference)
 Cluster corrected energies          -462.95092192 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95104198 (Davidson, rotated reference)

 Cluster corrected energies          -462.94927423 (Pople, fixed reference)
 Cluster corrected energies          -462.94915093 (Pople, relaxed reference)
 Cluster corrected energies          -462.94927423 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96895127 (fixed)   0.96993914 (relaxed)   0.96986714 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019266   -0.00054479   -0.00143360
 Singles      0.01072894   -0.06374529   -0.07102456
 Pairs        0.05218181   -1.03097855   -1.02357859
 Total        1.06310341   -1.09526864   -1.09603674
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.77471634
 Nuclear energy                         0.00000000
 Kinetic energy                       329.74918702
 One electron energy                 -801.54591424
 Two electron energy                  338.67588399
 Virial quotient                       -1.40370333
 Correlation energy                    -1.09531390
 !MRCI STATE 10.1 Energy             -462.870030248651

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.93914829 (Davidson, fixed reference)
 Cluster corrected energies          -462.93897541 (Davidson, relaxed reference)
 Cluster corrected energies          -462.93914829 (Davidson, rotated reference)

 Cluster corrected energies          -462.93740911 (Pople, fixed reference)
 Cluster corrected energies          -462.93723120 (Pople, relaxed reference)
 Cluster corrected energies          -462.93740911 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     6004.64       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     44598.56  44577.19     13.14      0.72      7.28
 REAL TIME  *     45178.74 SEC
 DISK USED  *         5.96 GB (local),       84.45 GB (total)
 SF USED    *        59.94 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.38208271  AU                              
 SETTING HLSDIAG(2)     =      -462.95408541  AU                              
 SETTING HLSDIAG(3)     =      -462.95408542  AU                              
 SETTING HLSDIAG(4)     =      -462.95408535  AU                              
 SETTING HLSDIAG(5)     =      -462.95408598  AU                              
 SETTING HLSDIAG(6)     =      -462.95408578  AU                              
 SETTING HLSDIAG(7)     =      -462.95104190  AU                              
 SETTING HLSDIAG(8)     =      -462.95104197  AU                              
 SETTING HLSDIAG(9)     =      -462.95104198  AU                              
 SETTING HLSDIAG(10)    =      -462.93914829  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 9  Roots:    1   2   3   4   5   6   7   8   9
 Number of reference states: 9  Roots:    1   2   3   4   5   6   7   8   9

 Reference symmetry:                   1   Triplet 
 Number of electrons:                 26
 Maximum number of shells:             6
 Maximum number of spin couplings:   297

 Reference space:      533 conf     1176 CSFs
 N elec internal:    44957 conf   215544 CSFs
 N-1 el internal:    55349 conf   505086 CSFs
 N-2 el internal:    33643 conf   537132 CSFs

 Number of electrons in valence space:                     26
 Maximum number of open shell orbitals in reference space:  8
 Maximum number of open shell orbitals in internal spaces: 12


 Number of closed-shell orbitals:   9 (   6   3 )
 Number of active  orbitals:        8 (   2   6 )
 Number of external orbitals:     248 ( 121 127 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -461.80850805
     2      -461.79924290
     3      -461.79924290
     4      -461.79924290
     5      -461.79924290
     6      -461.79924290
     7      -461.79354328
     8      -461.79354328
     9      -461.79354328

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1138D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.2953D-06

 Number of blocks in overlap matrix:   886   Smallest eigenvalue:  0.11D-06
 Number of N-2 electron functions:    2556
 Number of N-1 electron functions:  505086

 Number of internal configurations:               107628
 Number of singly external configurations:      62631438
 Number of doubly external configurations:      39314124
 Total number of contracted configurations:    102053190
 Total number of uncontracted configurations: 8309504970

 Diagonal Coupling coefficients finished.               Storage: 101579475 words, CPU-Time:   1161.53 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   5957460 words, CPU-time:      6.42 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.80850805     0.00000000    -1.22380620  0.23D-01  0.66D-01  1207.43
    1     2     2     1.00000000     0.00000000  -461.79924290    -0.00000000    -1.22093156  0.22D-01  0.65D-01  1207.43
    1     3     3     1.00000000     0.00000000  -461.79924290     0.00000000    -1.22034967  0.22D-01  0.64D-01  1207.43
    1     4     4     1.00000000     0.00000000  -461.79924290     0.00000000    -1.22034172  0.22D-01  0.64D-01  1207.43
    1     5     5     1.00000000     0.00000000  -461.79924290     0.00000000    -1.22180034  0.22D-01  0.65D-01  1207.43
    1     6     6     1.00000000     0.00000000  -461.79924290     0.00000000    -1.22292089  0.22D-01  0.66D-01  1207.43
    1     7     7     1.00000000     0.00000000  -461.79354328     0.00000000    -1.22032818  0.21D-01  0.65D-01  1207.43
    1     8     8     1.00000000     0.00000000  -461.79354328     0.00000000    -1.22083656  0.21D-01  0.65D-01  1207.43
    1     9     9     1.00000000     0.00000000  -461.79354328     0.00000000    -1.22025363  0.21D-01  0.64D-01  1207.43
    2     1     1     1.06794278    -1.06768446  -462.87619251    -1.06768446    -0.02187578  0.21D-02  0.12D-02  8443.85
    2     2     2     1.06605493    -1.06932435  -462.86856726    -1.06932435    -0.02091739  0.17D-02  0.11D-02  8443.85
    2     3     3     1.06605838    -1.06931979  -462.86856270    -1.06931979    -0.02092317  0.17D-02  0.11D-02  8443.85
    2     4     4     1.06623565    -1.06917321  -462.86841612    -1.06917321    -0.02106615  0.17D-02  0.12D-02  8443.85
    2     5     5     1.06669834    -1.06877037  -462.86801327    -1.06877037    -0.02138858  0.17D-02  0.13D-02  8443.85
    2     6     6     1.06649289    -1.06860543  -462.86784833    -1.06860543    -0.02150144  0.17D-02  0.13D-02  8443.85
    2     7     7     1.06580868    -1.07006557  -462.86360885    -1.07006557    -0.02046108  0.16D-02  0.11D-02  8443.85
    2     8     8     1.06578680    -1.07005744  -462.86360072    -1.07005744    -0.02046142  0.16D-02  0.11D-02  8443.85
    2     9     9     1.06596320    -1.06991945  -462.86346273    -1.06991945    -0.02059800  0.16D-02  0.11D-02  8443.85
    3     1     1     1.06022499    -1.08815288  -462.89666093    -0.02046842    -0.00056126  0.32D-04  0.60D-04 15693.42
    3     2     2     1.06006006    -1.08888040  -462.88812331    -0.01955605    -0.00057056  0.24D-04  0.63D-04 15693.42
    3     3     3     1.06006019    -1.08888032  -462.88812322    -0.01956053    -0.00057060  0.24D-04  0.63D-04 15693.42
    3     4     4     1.06006017    -1.08887599  -462.88811889    -0.01970278    -0.00057375  0.24D-04  0.64D-04 15693.42
    3     5     5     1.06003538    -1.08882126  -462.88806417    -0.02005090    -0.00060540  0.24D-04  0.70D-04 15693.42
    3     6     6     1.05993449    -1.08879445  -462.88803736    -0.02018903    -0.00062192  0.25D-04  0.72D-04 15693.42
    3     7     7     1.06014457    -1.08919957  -462.88274285    -0.01913400    -0.00055857  0.25D-04  0.62D-04 15693.42
    3     8     8     1.06013540    -1.08919593  -462.88273921    -0.01913849    -0.00056077  0.25D-04  0.62D-04 15693.42
    3     9     9     1.06013668    -1.08919307  -462.88273635    -0.01927362    -0.00056280  0.25D-04  0.63D-04 15693.42
    4     1     1     1.06081705    -1.08879263  -462.89730068    -0.00063975    -0.00004477  0.14D-05  0.54D-05 22954.54
    4     2     2     1.06094066    -1.08954614  -462.88878905    -0.00066574    -0.00004925  0.15D-05  0.56D-05 22954.54
    4     3     3     1.06094095    -1.08954612  -462.88878902    -0.00066580    -0.00004926  0.15D-05  0.56D-05 22954.54
    4     4     4     1.06093298    -1.08954549  -462.88878839    -0.00066950    -0.00004964  0.15D-05  0.57D-05 22954.54
    4     5     5     1.06088292    -1.08953678  -462.88877968    -0.00071551    -0.00005622  0.17D-05  0.64D-05 22954.54
    4     6     6     1.06087274    -1.08953445  -462.88877736    -0.00074000    -0.00005813  0.18D-05  0.65D-05 22954.54
    4     7     7     1.06101039    -1.08985119  -462.88339447    -0.00065162    -0.00004884  0.15D-05  0.56D-05 22954.54
    4     8     8     1.06100804    -1.08985078  -462.88339406    -0.00065484    -0.00004917  0.15D-05  0.56D-05 22954.54
    4     9     9     1.06100051    -1.08985010  -462.88339338    -0.00065703    -0.00004953  0.15D-05  0.57D-05 22954.54
    5     1     1     1.06134197    -1.08884820  -462.89735625    -0.00005556    -0.00000325  0.14D-06  0.34D-06 30216.84
    5     2     2     1.06150962    -1.08960715  -462.88885005    -0.00006101    -0.00000356  0.12D-06  0.37D-06 30216.84
    5     3     3     1.06150969    -1.08960715  -462.88885005    -0.00006103    -0.00000356  0.12D-06  0.37D-06 30216.84
    5     4     4     1.06150958    -1.08960705  -462.88884995    -0.00006156    -0.00000361  0.13D-06  0.38D-06 30216.84
    5     5     5     1.06150781    -1.08960677  -462.88884967    -0.00006999    -0.00000397  0.14D-06  0.40D-06 30216.84
    5     6     6     1.06150915    -1.08960653  -462.88884943    -0.00007207    -0.00000412  0.14D-06  0.42D-06 30216.84
    5     7     7     1.06157647    -1.08991173  -462.88345501    -0.00006054    -0.00000355  0.11D-06  0.37D-06 30216.84
    5     8     8     1.06157642    -1.08991171  -462.88345499    -0.00006094    -0.00000356  0.11D-06  0.37D-06 30216.84
    5     9     9     1.06157689    -1.08991160  -462.88345488    -0.00006150    -0.00000363  0.12D-06  0.38D-06 30216.84
    6     1     1     1.06137914    -1.08885211  -462.89736016    -0.00000392    -0.00000029  0.16D-07  0.32D-07 37473.27
    6     2     2     1.06153799    -1.08961150  -462.88885440    -0.00000435    -0.00000036  0.19D-07  0.39D-07 37473.27
    6     3     3     1.06154033    -1.08961147  -462.88885437    -0.00000433    -0.00000034  0.18D-07  0.37D-07 37473.27
    6     4     4     1.06154033    -1.08961147  -462.88885437    -0.00000442    -0.00000034  0.18D-07  0.37D-07 37473.27
    6     5     5     1.06153729    -1.08961147  -462.88885437    -0.00000470    -0.00000038  0.20D-07  0.41D-07 37473.27
    6     6     6     1.06154047    -1.08961145  -462.88885435    -0.00000492    -0.00000035  0.19D-07  0.39D-07 37473.27
    6     7     7     1.06160647    -1.08991604  -462.88345932    -0.00000430    -0.00000034  0.18D-07  0.37D-07 37473.27
    6     8     8     1.06160634    -1.08991603  -462.88345931    -0.00000432    -0.00000034  0.18D-07  0.37D-07 37473.27
    6     9     9     1.06160657    -1.08991602  -462.88345930    -0.00000442    -0.00000035  0.18D-07  0.38D-07 37473.27
    7     1     1     1.06138484    -1.08885246  -462.89736051    -0.00000034    -0.00000004  0.22D-08  0.41D-08 44734.46
    7     2     2     1.06154477    -1.08961193  -462.88885483    -0.00000043    -0.00000005  0.27D-08  0.52D-08 44734.46
    7     3     3     1.06154445    -1.08961192  -462.88885482    -0.00000045    -0.00000005  0.28D-08  0.55D-08 44734.46
    7     4     4     1.06154549    -1.08961189  -462.88885479    -0.00000042    -0.00000005  0.26D-08  0.50D-08 44734.46
    7     5     5     1.06154549    -1.08961189  -462.88885479    -0.00000042    -0.00000005  0.26D-08  0.50D-08 44734.46
    7     6     6     1.06154554    -1.08961188  -462.88885479    -0.00000043    -0.00000005  0.28D-08  0.52D-08 44734.46
    7     7     7     1.06161094    -1.08991645  -462.88345973    -0.00000041    -0.00000005  0.25D-08  0.50D-08 44734.46
    7     8     8     1.06161088    -1.08991645  -462.88345973    -0.00000041    -0.00000005  0.25D-08  0.50D-08 44734.46
    7     9     9     1.06161090    -1.08991645  -462.88345973    -0.00000043    -0.00000005  0.26D-08  0.52D-08 44734.46


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.2%  36.3%
 P   0.2%  41.2%  15.1%

 Initialization:   2.6%
 Other:            4.2%

 Total CPU:    44734.5 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/2200/           0.5600576   0.7919366  -0.0164097  -0.0003733  -0.0000039  -0.0003000  -0.0000000  -0.0000000
                            -0.0000000
 222222202222/2/00           0.5600576  -0.3817570   0.6940415   0.0007751   0.0000008  -0.0005919   0.0000000  -0.0000000
                            -0.0000000
 2222222022222//00           0.0000000   0.0002741   0.0007383  -0.0023107   0.0035958   0.6859706  -0.0000000   0.0000000
                             0.6858997
 222222202222/20/0           0.0000000   0.0002741   0.0007383  -0.0023106   0.0035958   0.6859703   0.0000000  -0.0000000
                            -0.6859000
 22222220222/22/00          -0.0000000   0.0003120  -0.0005926   0.6859685   0.0040071   0.0022902   0.0469498   0.6842911
                            -0.0000000
 222222202222/200/           0.0000000   0.0003120  -0.0005926   0.6859683   0.0040071   0.0022901  -0.0469498  -0.6842912
                             0.0000000
 22222220222/220/0          -0.0000000   0.0000001   0.0000007  -0.0039950   0.6859632  -0.0036092   0.6842910  -0.0469498
                             0.0000000
 2222222022222/00/          -0.0000000   0.0000001   0.0000007  -0.0039950   0.6859630  -0.0036092  -0.6842912   0.0469498
                            -0.0000000
 2222222022222/0/0           0.5600575  -0.4101794  -0.6776319  -0.0004018   0.0000031   0.0008919   0.0000000   0.0000000
                             0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970576    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.000388    0.000000    0.000441    0.020102    0.970298    0.000000    0.000000    0.000000
 3          -0.000000    0.001045    0.000001   -0.000838    0.970297   -0.020102    0.000000    0.000000    0.000000
 4          -0.000000   -0.003269   -0.005652    0.970483    0.000833   -0.000457    0.000000   -0.000000    0.000000
 5           0.000000    0.005087    0.970476    0.005669   -0.000002   -0.000005    0.000000   -0.000000    0.000000
 6          -0.000000    0.970486   -0.005106    0.003240   -0.001050   -0.000368    0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.968196   -0.000000    0.066429
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.066429    0.000000    0.968196
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970473   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970576    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.970506    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.970506    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.970506    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.970506   -0.000000    0.000000   -0.000000    0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970506   -0.000000    0.000000   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.970472    0.000000    0.000000
 8          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970473    0.000000
 9          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.970473


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97057614 (fixed)   0.97063055 (relaxed)   0.97057614 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015636   -0.00052125   -0.96686143
 Singles      0.01004914   -0.06265019   -0.06931796
 Pairs        0.05134530    0.00000000   -0.05267307
 Total        1.06155080   -0.06317144   -1.08885246
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80850805
 Nuclear energy                         0.00000000
 Kinetic energy                       329.64440041
 One electron energy                 -801.05336712
 Two electron energy                  338.15600661
 Virial quotient                       -1.40423244
 Correlation energy                    -1.08885246
 !MRCI STATE 1.1 Energy              -462.897360506866

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.96438025 (Davidson, fixed reference)
 Cluster corrected energies          -462.96425066 (Davidson, relaxed reference)
 Cluster corrected energies          -462.96438025 (Davidson, rotated reference)

 Cluster corrected energies          -462.96209596 (Pople, fixed reference)
 Cluster corrected energies          -462.96196412 (Pople, relaxed reference)
 Cluster corrected energies          -462.96209596 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97029774 (fixed)   0.97055691 (relaxed)   0.97050613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014996   -0.00052565   -0.96728555
 Singles      0.01004834   -0.06280443   -0.06945908
 Pairs        0.05150566   -0.00000000   -0.05286729
 Total        1.06170395   -0.06333008   -1.08961193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79924290
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65227084
 One electron energy                 -801.07203894
 Two electron energy                  338.18318411
 Virial quotient                       -1.40417311
 Correlation energy                    -1.08961193
 !MRCI STATE 2.1 Energy              -462.888854829399

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95608819 (Davidson, fixed reference)
 Cluster corrected energies          -462.95596715 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95608819 (Davidson, rotated reference)

 Cluster corrected energies          -462.95380525 (Pople, fixed reference)
 Cluster corrected energies          -462.95368207 (Pople, relaxed reference)
 Cluster corrected energies          -462.95380525 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97029713 (fixed)   0.97055705 (relaxed)   0.97050627 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014996   -0.00052565   -0.96728535
 Singles      0.01004845   -0.06280494   -0.06945933
 Pairs        0.05150523   -0.00000000   -0.05286724
 Total        1.06170364   -0.06333059   -1.08961192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79924290
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65229888
 One electron energy                 -801.07203767
 Two electron energy                  338.18318285
 Virial quotient                       -1.40417299
 Correlation energy                    -1.08961192
 !MRCI STATE 3.1 Energy              -462.888854824017

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95608784 (Davidson, fixed reference)
 Cluster corrected energies          -462.95596680 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95608784 (Davidson, rotated reference)

 Cluster corrected energies          -462.95380490 (Pople, fixed reference)
 Cluster corrected energies          -462.95368172 (Pople, relaxed reference)
 Cluster corrected energies          -462.95380490 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97048337 (fixed)   0.97055658 (relaxed)   0.97050580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014995   -0.00052565   -0.96728464
 Singles      0.01004827   -0.06280441   -0.06945905
 Pairs        0.05150645   -0.00000025   -0.05286821
 Total        1.06170467   -0.06333031   -1.08961189
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79924290
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65222855
 One electron energy                 -801.07200455
 Two electron energy                  338.18314976
 Virial quotient                       -1.40417329
 Correlation energy                    -1.08961189
 !MRCI STATE 4.1 Energy              -462.888854792226

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95608893 (Davidson, fixed reference)
 Cluster corrected energies          -462.95596790 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95608893 (Davidson, rotated reference)

 Cluster corrected energies          -462.95380601 (Pople, fixed reference)
 Cluster corrected energies          -462.95368284 (Pople, relaxed reference)
 Cluster corrected energies          -462.95380601 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.97047591 (fixed)   0.97055658 (relaxed)   0.97050580 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014995   -0.00052565   -0.96728487
 Singles      0.01004827   -0.06280441   -0.06945905
 Pairs        0.05150645   -0.00000000   -0.05286797
 Total        1.06170467   -0.06333006   -1.08961189
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79924290
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65222999
 One electron energy                 -801.07200503
 Two electron energy                  338.18315024
 Virial quotient                       -1.40417329
 Correlation energy                    -1.08961189
 !MRCI STATE 5.1 Energy              -462.888854789161

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95608893 (Davidson, fixed reference)
 Cluster corrected energies          -462.95596789 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95608893 (Davidson, rotated reference)

 Cluster corrected energies          -462.95380600 (Pople, fixed reference)
 Cluster corrected energies          -462.95368283 (Pople, relaxed reference)
 Cluster corrected energies          -462.95380600 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.97048630 (fixed)   0.97055655 (relaxed)   0.97050578 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014995   -0.00052565   -0.96728457
 Singles      0.01004836   -0.06280467   -0.06945917
 Pairs        0.05150642   -0.00000000   -0.05286814
 Total        1.06170472   -0.06333033   -1.08961188
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79924290
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65224260
 One electron energy                 -801.07200233
 Two electron energy                  338.18314755
 Virial quotient                       -1.40417323
 Correlation energy                    -1.08961188
 !MRCI STATE 6.1 Energy              -462.888854786048

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95608899 (Davidson, fixed reference)
 Cluster corrected energies          -462.95596795 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95608899 (Davidson, rotated reference)

 Cluster corrected energies          -462.95380606 (Pople, fixed reference)
 Cluster corrected energies          -462.95368289 (Pople, relaxed reference)
 Cluster corrected energies          -462.95380606 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96819630 (fixed)   0.97052633 (relaxed)   0.97047249 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015695   -0.00053357   -0.90150176
 Singles      0.00999072   -0.06261073   -0.06921602
 Pairs        0.05162988   -0.07028244   -0.11919867
 Total        1.06177755   -0.13342674   -1.08991645
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79354328
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65614661
 One electron energy                 -801.07961804
 Two electron energy                  338.19615831
 Virial quotient                       -1.40414024
 Correlation energy                    -1.08991645
 !MRCI STATE 7.1 Energy              -462.883459728270

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95079210 (Davidson, fixed reference)
 Cluster corrected energies          -462.95066370 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95079210 (Davidson, rotated reference)

 Cluster corrected energies          -462.94850995 (Pople, fixed reference)
 Cluster corrected energies          -462.94837927 (Pople, relaxed reference)
 Cluster corrected energies          -462.94850995 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96819633 (fixed)   0.97052636 (relaxed)   0.97047252 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015695   -0.00053357   -0.00293175
 Singles      0.00999072   -0.06261073   -0.06921602
 Pairs        0.05162983   -1.02436390   -1.01776868
 Total        1.06177750   -1.08750821   -1.08991645
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79354328
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65614802
 One electron energy                 -801.07961903
 Two electron energy                  338.19615930
 Virial quotient                       -1.40414023
 Correlation energy                    -1.08991645
 !MRCI STATE 8.1 Energy              -462.883459728112

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95079204 (Davidson, fixed reference)
 Cluster corrected energies          -462.95066364 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95079204 (Davidson, rotated reference)

 Cluster corrected energies          -462.94850989 (Pople, fixed reference)
 Cluster corrected energies          -462.94837921 (Pople, relaxed reference)
 Cluster corrected energies          -462.94850989 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.97047251 (fixed)   0.97052635 (relaxed)   0.97047251 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015695   -0.00053357   -0.96769475
 Singles      0.00999079   -0.06261098   -0.06921614
 Pairs        0.05162978    0.00000001   -0.05300556
 Total        1.06177751   -0.06314455   -1.08991645
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79354328
 Nuclear energy                         0.00000000
 Kinetic energy                       329.65616820
 One electron energy                 -801.07962000
 Two electron energy                  338.19616027
 Virial quotient                       -1.40414014
 Correlation energy                    -1.08991645
 !MRCI STATE 9.1 Energy              -462.883459726086

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.95079205 (Davidson, fixed reference)
 Cluster corrected energies          -462.95066365 (Davidson, relaxed reference)
 Cluster corrected energies          -462.95079205 (Davidson, rotated reference)

 Cluster corrected energies          -462.94850990 (Pople, fixed reference)
 Cluster corrected energies          -462.94837922 (Pople, relaxed reference)
 Cluster corrected energies          -462.94850990 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7    13037.55       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     95110.99  50512.42  44577.19     13.14      0.72      7.28
 REAL TIME  *     96254.02 SEC
 DISK USED  *        12.82 GB (local),      180.60 GB (total)
 SF USED    *        72.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.96425066  AU                              
 SETTING HLSDIAG(12)    =      -462.95596715  AU                              
 SETTING HLSDIAG(13)    =      -462.95596680  AU                              
 SETTING HLSDIAG(14)    =      -462.95596790  AU                              
 SETTING HLSDIAG(15)    =      -462.95596789  AU                              
 SETTING HLSDIAG(16)    =      -462.95596795  AU                              
 SETTING HLSDIAG(17)    =      -462.95066370  AU                              
 SETTING HLSDIAG(18)    =      -462.95066364  AU                              
 SETTING HLSDIAG(19)    =      -462.95066365  AU                              


         HLSDIAG
    -463.3820827
    -462.9540854
    -462.9540854
    -462.9540854
    -462.9540860
    -462.9540858
    -462.9510419
    -462.9510420
    -462.9510420
    -462.9391483
    -462.9642507
    -462.9559671
    -462.9559668
    -462.9559679
    -462.9559679
    -462.9559679
    -462.9506637
    -462.9506636
    -462.9506637
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.305732   -462.886857   -462.886857   -462.886857   -462.886857   -462.886857   -462.883551   -462.883551
                      -462.883551   -462.870030
 Replaced energies:   -463.382083   -462.954085   -462.954085   -462.954085   -462.954086   -462.954086   -462.951042   -462.951042
                      -462.951042   -462.939148

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.897361   -462.888855   -462.888855   -462.888855   -462.888855   -462.888855   -462.883460   -462.883460
                      -462.883460
 Replaced energies:   -462.964251   -462.955967   -462.955967   -462.955968   -462.955968   -462.955968   -462.950664   -462.950664
                      -462.950664



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.38208271

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   93934.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   93934.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   93934.56       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   93934.42       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   93934.47       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94602.52       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94602.51       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94602.51       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   97212.87
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00      -0.00       0.00      -0.00       0.00       3.60     987.67      -0.24       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00    -975.94       3.52    -151.75      -0.00

   12   2.1  1.0  1.0       0.00      -0.30   -1144.59      -4.57      82.44       9.75       1.50     335.27      -0.31       0.00
                            0.00     424.98      -4.23    1036.71       7.54      -0.57    -355.96       1.04     -55.35      -0.00

   13   3.1  1.0  1.0       0.00       0.72    -629.58      -2.27      45.35       5.36      -1.66    -609.53       0.76       0.00
                            0.00    -257.24       1.71    -627.54      -4.49       1.13    -588.06       1.47     -91.44       0.00

   14   4.1  1.0  1.0       0.00    -606.77      -0.46     246.29       8.27      -3.32      90.55      -1.15    -595.60       0.00
                            0.00      -5.00     -10.10       0.97     -16.05   -1309.58      -0.88       2.03       3.41       0.00

   15   5.1  1.0  1.0      -0.00      -1.61     -75.25      12.23   -1123.22     669.27       3.66      -0.02      -2.99       0.00
                            0.00     605.92      -2.62    -248.38      -1.59      -8.19      92.55      -3.64    -595.29       0.00

   16   6.1  1.0  1.0       0.00     246.35      -0.79     606.70      10.23      -3.52     595.60      -1.63      90.57      -0.00
                            0.00      -3.16    -653.19      -1.25      47.00       1.19      -1.91    -602.44       3.40       0.00

   17   7.1  1.0  1.0    -593.30     -38.51     -30.52      18.24    -352.31    -594.89       6.87      -0.04     -44.17    -933.08
                           40.71     554.64      -2.61    -227.02     -48.96       0.08     100.10      -0.52    -643.82      64.02

   18   8.1  1.0  1.0      40.71    -554.60       1.29     227.16      25.78      41.34     100.10      -0.52    -643.82      64.02
                          593.30     -37.99     -49.72      20.40    -690.18       8.88      -6.87       0.04      44.17     933.08

   19   9.1  1.0  1.0      -0.00     227.89      -2.13     555.92       4.04       0.01     645.32      -2.33     100.34      -0.00
                           -0.00       0.06     599.25       2.58     -43.16      -5.10       2.38     653.08      -0.16      -0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00     214.60      -1.11   -1380.20       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -35.51      -0.52      14.56      -0.51      -0.32    -151.12       1.17     971.92       0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1713.49      -1.81     702.38       3.14       0.64       3.13      -0.75     -20.14       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.61    -923.24      -8.40      71.92      10.92       8.08     851.96       0.10       0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     351.26      -9.32     856.91      -1.84      -4.68    -841.84       8.01    -130.90       0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.60    -126.86       6.21   -1610.82    -905.48       4.50       2.83       0.32       0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -321.52      61.01    -784.09      -9.87      -0.51     910.26     -66.50     141.58      -0.00

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      22.15     845.27      57.45     -60.51      -7.20     -65.83    -921.20      -9.49      -0.00

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          841.03      -0.73      27.22      -3.06     478.95    -855.87       0.00       0.00      -0.00    1322.67

   29   1.1  1.0 -1.0       0.00       0.00      -0.00       0.00      -0.00       0.00       3.60     987.67      -0.24       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     975.94      -3.52     151.75       0.00

   30   2.1  1.0 -1.0       0.00      -0.30   -1144.59      -4.57      82.44       9.75       1.50     335.27      -0.31       0.00
                           -0.00    -424.98       4.23   -1036.71      -7.54       0.57     355.96      -1.04      55.35       0.00

   31   3.1  1.0 -1.0       0.00       0.72    -629.58      -2.27      45.35       5.36      -1.66    -609.53       0.76       0.00
                           -0.00     257.24      -1.71     627.54       4.49      -1.13     588.06      -1.47      91.44      -0.00

   32   4.1  1.0 -1.0       0.00    -606.77      -0.46     246.29       8.27      -3.32      90.55      -1.15    -595.60       0.00
                           -0.00       5.00      10.10      -0.97      16.05    1309.58       0.88      -2.03      -3.41      -0.00

   33   5.1  1.0 -1.0      -0.00      -1.61     -75.25      12.23   -1123.22     669.27       3.66      -0.02      -2.99       0.00
                           -0.00    -605.92       2.62     248.38       1.59       8.19     -92.55       3.64     595.29      -0.00

   34   6.1  1.0 -1.0       0.00     246.35      -0.79     606.70      10.23      -3.52     595.60      -1.63      90.57      -0.00
                           -0.00       3.16     653.19       1.25     -47.00      -1.19       1.91     602.44      -3.40      -0.00

   35   7.1  1.0 -1.0    -593.30     -38.51     -30.52      18.24    -352.31    -594.89       6.87      -0.04     -44.17    -933.08
                          -40.71    -554.64       2.61     227.02      48.96      -0.08    -100.10       0.52     643.82     -64.02

   36   8.1  1.0 -1.0      40.71    -554.60       1.29     227.16      25.78      41.34     100.10      -0.52    -643.82      64.02
                         -593.30      37.99      49.72     -20.40     690.18      -8.88       6.87      -0.04     -44.17    -933.08

   37   9.1  1.0 -1.0      -0.00     227.89      -2.13     555.92       4.04       0.01     645.32      -2.33     100.34      -0.00
                            0.00      -0.06    -599.25      -2.58      43.16       5.10      -2.38    -653.08       0.16       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00      -0.00       0.00    -593.30      40.71      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -40.71    -593.30       0.00      -0.00

    2   2.1  0.0  0.0       0.00      -0.30       0.72    -606.77      -1.61     246.35     -38.51    -554.60     227.89       0.00
                           -0.00    -424.98     257.24       5.00    -605.92       3.16    -554.64      37.99      -0.06      -0.00

    3   3.1  0.0  0.0      -0.00   -1144.59    -629.58      -0.46     -75.25      -0.79     -30.52       1.29      -2.13       0.00
                           -0.00       4.23      -1.71      10.10       2.62     653.19       2.61      49.72    -599.25       0.00

    4   4.1  0.0  0.0       0.00      -4.57      -2.27     246.29      12.23     606.70      18.24     227.16     555.92       0.00
                           -0.00   -1036.71     627.54      -0.97     248.38       1.25     227.02     -20.40      -2.58      -0.00

    5   5.1  0.0  0.0      -0.00      82.44      45.35       8.27   -1123.22      10.23    -352.31      25.78       4.04       0.00
                           -0.00      -7.54       4.49      16.05       1.59     -47.00      48.96     690.18      43.16      -0.00

    6   6.1  0.0  0.0       0.00       9.75       5.36      -3.32     669.27      -3.52    -594.89      41.34       0.01       0.00
                            0.00       0.57      -1.13    1309.58       8.19      -1.19      -0.08      -8.88       5.10      -0.00

    7   7.1  0.0  0.0       3.60       1.50      -1.66      90.55       3.66     595.60       6.87     100.10     645.32       0.00
                          975.94     355.96     588.06       0.88     -92.55       1.91    -100.10       6.87      -2.38    -214.60

    8   8.1  0.0  0.0     987.67     335.27    -609.53      -1.15      -0.02      -1.63      -0.04      -0.52      -2.33       0.00
                           -3.52      -1.04      -1.47      -2.03       3.64     602.44       0.52      -0.04    -653.08       1.11

    9   9.1  0.0  0.0      -0.24      -0.31       0.76    -595.60      -2.99      90.57     -44.17    -643.82     100.34       0.00
                          151.75      55.35      91.44      -3.41     595.29      -3.40     643.82     -44.17       0.16    1380.20

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00      -0.00    -933.08      64.02      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00     -64.02    -933.08       0.00      -0.00

   11   1.1  1.0  1.0   91703.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04
                            0.30       0.37       0.03       5.39      25.02      -0.15     -25.11      -3.88   -1509.00      -0.31

   12   2.1  1.0  1.0       0.00   93521.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.20
                           -0.37       1.81       0.72     -13.66     -71.80     -35.23      71.78       9.14    1066.57      -0.21

   13   3.1  1.0  1.0       0.00       0.00   93521.63       0.00       0.00       0.00       0.00       0.00       0.00      -0.13
                           -0.03      -0.72       0.12       7.42      -3.35   -1709.49      -5.76      -1.11     -21.83      -0.46

   14   4.1  1.0  1.0       0.00       0.00       0.00   93521.39       0.00       0.00       0.00       0.00       0.00      -0.20
                           -5.39      13.66      -7.42      -6.78    -884.58      -0.01     952.00     -52.30      -4.06       0.57

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   93521.39       0.00       0.00       0.00       0.00      -0.17
                          -25.02      71.80       3.35     884.58       8.59       2.80     -66.50    -920.61      -0.03       1.16

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   93521.38       0.00       0.00       0.00       0.06
                            0.15      35.23    1709.49       0.01      -2.80       1.68     155.70      31.84       0.20      -6.73

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   94685.53       0.00       0.00    1065.71
                           25.11     -71.78       5.76    -952.00      66.50    -155.70     -43.07     843.28      -1.14     -74.13

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94685.54       0.00     -73.94
                            3.88      -9.14       1.11      52.30     920.61     -31.84    -843.28     -90.46       2.61   -1061.28

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94685.54      -0.24
                         1509.00   -1066.57      21.83       4.06       0.03      -0.20       1.14      -2.61       0.64      -0.04

   20   1.1  1.0  0.0       0.04      -0.20      -0.13      -0.20      -0.17       0.06    1065.71     -73.94      -0.24   91703.53
                            0.31       0.21       0.46      -0.57      -1.16       6.73      74.13    1061.28       0.04       0.00

   21   2.1  1.0  0.0      -0.01       0.07       0.12       6.19   -1059.11       3.61     361.87     -23.79      -1.05       0.00
                            0.43       0.34       1.22   -1032.89      -7.30       7.00      28.31     384.96      -0.14      -0.00

   22   3.1  1.0  0.0      -0.01       0.39       0.19       3.79    -582.43       3.13    -660.62      46.87       0.36       0.00
                            0.02      -0.66       0.02     627.18       4.25       2.97      44.98     643.92      -0.01      -0.00

   23   4.1  1.0  0.0      -0.02      -6.17      -3.88     -34.41      -3.75    -600.71      -0.57      14.87    -656.82       0.00
                            0.18    1033.46    -624.33       1.15      -5.02       3.77       8.91      -1.33      -4.23      -0.00

   24   5.1  1.0  0.0      -0.19    1058.58     582.95     -84.75      -0.10      89.99     -50.33    -732.81    -126.75       0.00
                            4.72      38.83      57.32       1.87    -162.01    -602.81     397.13     -27.23     653.78      -0.00

   25   6.1  1.0  0.0       0.14      -5.58      -3.57     604.99       4.20       2.92      46.57     653.42      -1.52       0.00
                           -0.05       3.26      -2.44      -2.49     605.33      -1.25     649.55     -45.06      -3.62      -0.00

   26   7.1  1.0  0.0   -1064.37    -362.09     658.87      89.50      -0.09    -139.10      50.53     735.18      81.98       0.00
                          -77.63     -60.19    -106.43       1.98     158.42    -654.31    -393.46      29.10     599.57      -0.00

   27   8.1  1.0  0.0      73.01      24.34     -46.15      31.06      -2.82    -649.67      -3.46     -62.95    -604.21       0.00
                        -1064.39    -389.95    -641.37      -1.29      -6.70      45.57      13.56       0.45     -41.06      -0.00

   28   9.1  1.0  0.0       0.19      -0.07      -0.51     653.19       3.29       6.07      42.05     597.23      -0.08       0.00
                            0.03      -0.02       0.05       5.12    -653.27       4.77    -599.98      41.23      -0.20      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.31

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.43

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.02

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.18

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       4.72

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.05

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1064.37
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -77.63

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      73.01
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1064.39

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.03


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -841.03       0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.30
                           35.51    1713.49       3.61    -351.26       0.60     321.52     -22.15       0.73       0.00     424.98

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00   -1144.59
                            0.52       1.81     923.24       9.32     126.86     -61.01    -845.27     -27.22       0.00      -4.23

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -4.57
                          -14.56    -702.38       8.40    -856.91      -6.21     784.09     -57.45       3.06       0.00    1036.71

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      82.44
                            0.51      -3.14     -71.92       1.84    1610.82       9.87      60.51    -478.95       0.00       7.54

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       9.75
                            0.32      -0.64     -10.92       4.68     905.48       0.51       7.20     855.87      -0.00      -0.57

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.60       1.50
                          151.12      -3.13      -8.08     841.84      -4.50    -910.26      65.83      -0.00    -975.94    -355.96

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     987.67     335.27
                           -1.17       0.75    -851.96      -8.01      -2.83      66.50     921.20      -0.00       3.52       1.04

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.24      -0.31
                         -971.92      20.14      -0.10     130.90      -0.32    -141.58       9.49       0.00    -151.75     -55.35

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1322.67      -0.00      -0.00

   11   1.1  1.0  1.0      -0.01      -0.01      -0.02      -0.19       0.14   -1064.37      73.01       0.19       0.00       0.00
                           -0.43      -0.02      -0.18      -4.72       0.05      77.63    1064.39      -0.03       0.00       0.00

   12   2.1  1.0  1.0       0.07       0.39      -6.17    1058.58      -5.58    -362.09      24.34      -0.07       0.00       0.00
                           -0.34       0.66   -1033.46     -38.83      -3.26      60.19     389.95       0.02       0.00       0.00

   13   3.1  1.0  1.0       0.12       0.19      -3.88     582.95      -3.57     658.87     -46.15      -0.51       0.00       0.00
                           -1.22      -0.02     624.33     -57.32       2.44     106.43     641.37      -0.05       0.00       0.00

   14   4.1  1.0  1.0       6.19       3.79     -34.41     -84.75     604.99      89.50      31.06     653.19       0.00       0.00
                         1032.89    -627.18      -1.15      -1.87       2.49      -1.98       1.29      -5.12       0.00       0.00

   15   5.1  1.0  1.0   -1059.11    -582.43      -3.75      -0.10       4.20      -0.09      -2.82       3.29       0.00       0.00
                            7.30      -4.25       5.02     162.01    -605.33    -158.42       6.70     653.27       0.00       0.00

   16   6.1  1.0  1.0       3.61       3.13    -600.71      89.99       2.92    -139.10    -649.67       6.07       0.00       0.00
                           -7.00      -2.97      -3.77     602.81       1.25     654.31     -45.57      -4.77       0.00       0.00

   17   7.1  1.0  1.0     361.87    -660.62      -0.57     -50.33      46.57      50.53      -3.46      42.05       0.00       0.00
                          -28.31     -44.98      -8.91    -397.13    -649.55     393.46     -13.56     599.98       0.00       0.00

   18   8.1  1.0  1.0     -23.79      46.87      14.87    -732.81     653.42     735.18     -62.95     597.23       0.00       0.00
                         -384.96    -643.92       1.33      27.23      45.06     -29.10      -0.45     -41.23       0.00       0.00

   19   9.1  1.0  1.0      -1.05       0.36    -656.82    -126.75      -1.52      81.98    -604.21      -0.08       0.00       0.00
                            0.14       0.01       4.23    -653.78       3.62    -599.57      41.06       0.20       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.04      -0.01
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.31      -0.43

   21   2.1  1.0  0.0   93521.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.20       0.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.21      -0.34

   22   3.1  1.0  0.0       0.00   93521.63       0.00       0.00       0.00       0.00       0.00       0.00      -0.13       0.12
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.46      -1.22

   23   4.1  1.0  0.0       0.00       0.00   93521.39       0.00       0.00       0.00       0.00       0.00      -0.20       6.19
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.57    1032.89

   24   5.1  1.0  0.0       0.00       0.00       0.00   93521.39       0.00       0.00       0.00       0.00      -0.17   -1059.11
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       1.16       7.30

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   93521.38       0.00       0.00       0.00       0.06       3.61
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -6.73      -7.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   94685.53       0.00       0.00    1065.71     361.87
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -74.13     -28.31

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94685.54       0.00     -73.94     -23.79
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00   -1061.28    -384.96

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94685.54      -0.24      -1.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.04       0.14

   29   1.1  1.0 -1.0      -0.20      -0.13      -0.20      -0.17       0.06    1065.71     -73.94      -0.24   91703.53       0.00
                            0.21       0.46      -0.57      -1.16       6.73      74.13    1061.28       0.04      -0.30      -0.37

   30   2.1  1.0 -1.0       0.07       0.12       6.19   -1059.11       3.61     361.87     -23.79      -1.05       0.00   93521.56
                            0.34       1.22   -1032.89      -7.30       7.00      28.31     384.96      -0.14       0.37      -1.81

   31   3.1  1.0 -1.0       0.39       0.19       3.79    -582.43       3.13    -660.62      46.87       0.36       0.00       0.00
                           -0.66       0.02     627.18       4.25       2.97      44.98     643.92      -0.01       0.03       0.72

   32   4.1  1.0 -1.0      -6.17      -3.88     -34.41      -3.75    -600.71      -0.57      14.87    -656.82       0.00       0.00
                         1033.46    -624.33       1.15      -5.02       3.77       8.91      -1.33      -4.23       5.39     -13.66

   33   5.1  1.0 -1.0    1058.58     582.95     -84.75      -0.10      89.99     -50.33    -732.81    -126.75       0.00       0.00
                           38.83      57.32       1.87    -162.01    -602.81     397.13     -27.23     653.78      25.02     -71.80

   34   6.1  1.0 -1.0      -5.58      -3.57     604.99       4.20       2.92      46.57     653.42      -1.52       0.00       0.00
                            3.26      -2.44      -2.49     605.33      -1.25     649.55     -45.06      -3.62      -0.15     -35.23

   35   7.1  1.0 -1.0    -362.09     658.87      89.50      -0.09    -139.10      50.53     735.18      81.98       0.00       0.00
                          -60.19    -106.43       1.98     158.42    -654.31    -393.46      29.10     599.57     -25.11      71.78

   36   8.1  1.0 -1.0      24.34     -46.15      31.06      -2.82    -649.67      -3.46     -62.95    -604.21       0.00       0.00
                         -389.95    -641.37      -1.29      -6.70      45.57      13.56       0.45     -41.06      -3.88       9.14

   37   9.1  1.0 -1.0      -0.07      -0.51     653.19       3.29       6.07      42.05     597.23      -0.08       0.00       0.00
                           -0.02       0.05       5.12    -653.27       4.77    -599.98      41.23      -0.20   -1509.00    1066.57


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00      -0.00       0.00    -593.30      40.71      -0.00
                            0.00       0.00       0.00       0.00      40.71     593.30      -0.00

    2   2.1  0.0  0.0       0.72    -606.77      -1.61     246.35     -38.51    -554.60     227.89
                         -257.24      -5.00     605.92      -3.16     554.64     -37.99       0.06

    3   3.1  0.0  0.0    -629.58      -0.46     -75.25      -0.79     -30.52       1.29      -2.13
                            1.71     -10.10      -2.62    -653.19      -2.61     -49.72     599.25

    4   4.1  0.0  0.0      -2.27     246.29      12.23     606.70      18.24     227.16     555.92
                         -627.54       0.97    -248.38      -1.25    -227.02      20.40       2.58

    5   5.1  0.0  0.0      45.35       8.27   -1123.22      10.23    -352.31      25.78       4.04
                           -4.49     -16.05      -1.59      47.00     -48.96    -690.18     -43.16

    6   6.1  0.0  0.0       5.36      -3.32     669.27      -3.52    -594.89      41.34       0.01
                            1.13   -1309.58      -8.19       1.19       0.08       8.88      -5.10

    7   7.1  0.0  0.0      -1.66      90.55       3.66     595.60       6.87     100.10     645.32
                         -588.06      -0.88      92.55      -1.91     100.10      -6.87       2.38

    8   8.1  0.0  0.0    -609.53      -1.15      -0.02      -1.63      -0.04      -0.52      -2.33
                            1.47       2.03      -3.64    -602.44      -0.52       0.04     653.08

    9   9.1  0.0  0.0       0.76    -595.60      -2.99      90.57     -44.17    -643.82     100.34
                          -91.44       3.41    -595.29       3.40    -643.82      44.17      -0.16

   10  10.1  0.0  0.0       0.00       0.00       0.00      -0.00    -933.08      64.02      -0.00
                            0.00       0.00       0.00       0.00      64.02     933.08      -0.00

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

   20   1.1  1.0  0.0      -0.01      -0.02      -0.19       0.14   -1064.37      73.01       0.19
                           -0.02      -0.18      -4.72       0.05      77.63    1064.39      -0.03

   21   2.1  1.0  0.0       0.39      -6.17    1058.58      -5.58    -362.09      24.34      -0.07
                            0.66   -1033.46     -38.83      -3.26      60.19     389.95       0.02

   22   3.1  1.0  0.0       0.19      -3.88     582.95      -3.57     658.87     -46.15      -0.51
                           -0.02     624.33     -57.32       2.44     106.43     641.37      -0.05

   23   4.1  1.0  0.0       3.79     -34.41     -84.75     604.99      89.50      31.06     653.19
                         -627.18      -1.15      -1.87       2.49      -1.98       1.29      -5.12

   24   5.1  1.0  0.0    -582.43      -3.75      -0.10       4.20      -0.09      -2.82       3.29
                           -4.25       5.02     162.01    -605.33    -158.42       6.70     653.27

   25   6.1  1.0  0.0       3.13    -600.71      89.99       2.92    -139.10    -649.67       6.07
                           -2.97      -3.77     602.81       1.25     654.31     -45.57      -4.77

   26   7.1  1.0  0.0    -660.62      -0.57     -50.33      46.57      50.53      -3.46      42.05
                          -44.98      -8.91    -397.13    -649.55     393.46     -13.56     599.98

   27   8.1  1.0  0.0      46.87      14.87    -732.81     653.42     735.18     -62.95     597.23
                         -643.92       1.33      27.23      45.06     -29.10      -0.45     -41.23

   28   9.1  1.0  0.0       0.36    -656.82    -126.75      -1.52      81.98    -604.21      -0.08
                            0.01       4.23    -653.78       3.62    -599.57      41.06       0.20

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -5.39     -25.02       0.15      25.11       3.88    1509.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.72      13.66      71.80      35.23     -71.78      -9.14   -1066.57

   31   3.1  1.0 -1.0   93521.63       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.12      -7.42       3.35    1709.49       5.76       1.11      21.83

   32   4.1  1.0 -1.0       0.00   93521.39       0.00       0.00       0.00       0.00       0.00
                            7.42       6.78     884.58       0.01    -952.00      52.30       4.06

   33   5.1  1.0 -1.0       0.00       0.00   93521.39       0.00       0.00       0.00       0.00
                           -3.35    -884.58      -8.59      -2.80      66.50     920.61       0.03

   34   6.1  1.0 -1.0       0.00       0.00       0.00   93521.38       0.00       0.00       0.00
                        -1709.49      -0.01       2.80      -1.68    -155.70     -31.84      -0.20

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   94685.53       0.00       0.00
                           -5.76     952.00     -66.50     155.70      43.07    -843.28       1.14

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   94685.54       0.00
                           -1.11     -52.30    -920.61      31.84     843.28      90.46      -2.61

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   94685.54
                          -21.83      -4.06      -0.03       0.20      -1.14       2.61      -0.64




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.38208271 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   93934.549       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   93934.547       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   93934.562       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   93934.425       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   93934.469       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   94602.523       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   94602.507
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.000       0.000      -0.000       0.000       5.091    1396.778
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+              0.000      -0.423   -1618.688      -6.468     116.592      13.787       2.124     474.147
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       1.023    -890.358      -3.215      64.133       7.583      -2.349    -862.011
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000    -858.100      -0.644     348.301      11.700      -4.700     128.059      -1.631
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.001      -2.283    -106.416      17.289   -1588.473     946.495       5.178      -0.022
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+              0.000     348.396      -1.119     858.008      14.472      -4.974     842.307      -2.304
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+           -839.059     -54.457     -43.158      25.792    -498.242    -841.304       9.713      -0.050
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+             57.569    -784.324       1.825     321.258      36.454      58.470     141.568      -0.734
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+             -0.000     322.279      -3.009     786.185       5.708       0.015     912.627      -3.292
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000       0.000       0.000     214.601      -1.113

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     -35.506      -0.521      14.556      -0.511      -0.325    -151.118       1.171

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000   -1713.494      -1.806     702.381       3.142       0.643       3.127      -0.752

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -3.613    -923.242      -8.404      71.924      10.919       8.079     851.962

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     351.257      -9.324     856.911      -1.835      -4.684    -841.839       8.014

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.604    -126.862       6.208   -1610.822    -905.483       4.497       2.828

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000    -321.518      61.011    -784.091      -9.872      -0.509     910.256     -66.504

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      22.151     845.275      57.455     -60.507      -7.200     -65.827    -921.202

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              841.030      -0.725      27.221      -3.059     478.951    -855.869       0.000       0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000      -0.000   -1380.194       4.979

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     601.008      -5.987    1466.129      10.660      -0.811    -503.402       1.475

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -363.796       2.417    -887.472      -6.352       1.591    -831.638       2.083

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001      -7.069     -14.286       1.368     -22.691   -1852.026      -1.245       2.876

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     856.894      -3.708    -351.269      -2.250     -11.589     130.885      -5.145

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -4.463    -923.745      -1.762      66.471       1.688      -2.699    -851.983

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               57.569     784.373      -3.688    -321.048     -69.238       0.115     141.568      -0.734

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              839.059     -53.733     -70.315      28.843    -976.068      12.558      -9.713       0.050

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.091     847.468       3.649     -61.041      -7.218       3.366     923.594

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000      -0.001       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000      -0.423       1.023    -858.100      -2.283     348.396
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.000   -1618.688    -890.358      -0.644    -106.416      -1.119
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000      -6.468      -3.215     348.301      17.289     858.008
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000     116.592      64.133      11.700   -1588.473      14.472
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000      13.787       7.583      -4.700     946.495      -4.974
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       5.091       2.124      -2.349     128.059       5.178     842.307
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000    1396.778     474.147    -862.011      -1.631      -0.022      -2.304
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           94602.505       0.000      -0.335      -0.444       1.075    -842.311      -4.232     128.090
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   97212.868       0.000       0.000       0.000       0.000       0.000      -0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.335       0.000   91703.535       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.444       0.000       0.000   93521.556       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              1.075       0.000       0.000       0.000   93521.632       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+           -842.311       0.000       0.000       0.000       0.000   93521.391       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -4.232       0.000       0.000       0.000       0.000       0.000   93521.392       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            128.090      -0.000       0.000       0.000       0.000       0.000       0.000   93521.380
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+            -62.470   -1319.569       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -910.493      90.537       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            141.903      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.054      -0.148      -0.096      -0.154      -0.256       0.143
                            -1380.202       0.000       0.000      -0.152       0.314      -0.533      -4.162       4.796

    2    1  |1 0>               0.000       0.000      -0.148       0.094       0.354       0.010      -0.372      -1.394
                              971.923       0.000       0.152       0.000       1.333   -1461.130     -32.615       2.647

    3    1  |1 0>               0.000       0.000      -0.096       0.354       0.274      -0.060       0.367      -0.312
                              -20.139       0.000      -0.314      -1.333       0.000     884.949     -37.525       3.824

    4    1  |1 0>               0.000       0.000      -0.154       0.010      -0.060     -48.669     -62.581       3.021
                                0.100       0.000       0.533    1461.130    -884.949       0.000      -4.873       4.428

    5    1  |1 0>               0.000       0.000      -0.256      -0.372       0.367     -62.581      -0.146      66.604
                             -130.904       0.000       4.162      32.615      37.525       4.873       0.000    -854.283

    6    1  |1 0>               0.000       0.000       0.143      -1.394      -0.312       3.021      66.604       4.127
                                0.320       0.001      -4.796      -2.647      -3.824      -4.428     854.283       0.000

    7    1  |1 0>               0.000       0.000       0.948      -0.155      -1.238      62.884     -35.655     -65.426
                              141.584      -0.000    -107.312     -62.577    -107.065      -4.900    -168.794    -921.966

    8    1  |1 0>               0.000       0.000      -0.658       0.390       0.508      32.480    -520.171       2.652
                               -9.492      -0.000   -1503.077    -547.947    -908.837       0.027      14.512      64.083

    9    1  |1 0>               0.000       0.000      -0.042      -0.794      -0.101      -2.568     -87.297       3.216
                               -0.000    1322.671      -0.009       0.088       0.038       6.615    -924.219       5.933

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -214.603      -0.000       0.302       0.372       0.029       5.389      25.023      -0.149

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -78.272      -0.000      -0.372       1.814       0.720     -13.658     -71.801     -35.232

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -129.310       0.000      -0.029      -0.720       0.121       7.421      -3.351   -1709.487

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.825       0.000      -5.389      13.658      -7.421      -6.783    -884.576      -0.008

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -841.862       0.000     -25.023      71.801       3.351     884.576       8.590       2.802

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.804       0.000       0.149      35.232    1709.487       0.008      -2.802       1.685

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -910.493      90.537      25.105     -71.782       5.757    -952.004      66.502    -155.696

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               62.470    1319.569       3.880      -9.142       1.111      52.302     920.610     -31.839

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.221      -0.000    1508.998   -1066.570      21.834       4.058       0.028      -0.203

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>            -839.059      57.569      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000      -0.000

    2    1  |0 0>             -54.457    -784.324     322.279       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      35.506    1713.494       3.613    -351.257

    3    1  |0 0>             -43.158       1.825      -3.009       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.521       1.806     923.242       9.324

    4    1  |0 0>              25.792     321.258     786.185       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000     -14.556    -702.381       8.404    -856.911

    5    1  |0 0>            -498.242      36.454       5.708       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.511      -3.142     -71.924       1.835

    6    1  |0 0>            -841.304      58.470       0.015       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.325      -0.643     -10.919       4.684

    7    1  |0 0>               9.713     141.568     912.627       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    -214.601     151.118      -3.127      -8.079     841.839

    8    1  |0 0>              -0.050      -0.734      -3.292       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       1.113      -1.171       0.752    -851.962      -8.014

    9    1  |0 0>             -62.470    -910.493     141.903       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000    1380.202    -971.923      20.139      -0.100     130.904

   10    1  |0 0>           -1319.569      90.537      -0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.054      -0.148      -0.096      -0.154      -0.256
                                0.000       0.000       0.000       0.000      -0.152       0.314      -0.533      -4.162

    2    1  |1 1>+              0.000       0.000       0.000      -0.148       0.094       0.354       0.010      -0.372
                                0.000       0.000       0.000       0.152       0.000       1.333   -1461.130     -32.615

    3    1  |1 1>+              0.000       0.000       0.000      -0.096       0.354       0.274      -0.060       0.367
                                0.000       0.000       0.000      -0.314      -1.333       0.000     884.949     -37.525

    4    1  |1 1>+              0.000       0.000       0.000      -0.154       0.010      -0.060     -48.669     -62.581
                                0.000       0.000       0.000       0.533    1461.130    -884.949       0.000      -4.873

    5    1  |1 1>+              0.000       0.000       0.000      -0.256      -0.372       0.367     -62.581      -0.146
                                0.000       0.000       0.000       4.162      32.615      37.525       4.873       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.143      -1.394      -0.312       3.021      66.604
                                0.000       0.000       0.000      -4.796      -2.647      -3.824      -4.428     854.283

    7    1  |1 1>+          94685.528       0.000       0.000       0.948      -0.155      -1.238      62.884     -35.655
                                0.000       0.000       0.000    -107.312     -62.577    -107.065      -4.900    -168.794

    8    1  |1 1>+              0.000   94685.541       0.000      -0.658       0.390       0.508      32.480    -520.171
                                0.000       0.000       0.000   -1503.077    -547.947    -908.837       0.027      14.512

    9    1  |1 1>+              0.000       0.000   94685.538      -0.042      -0.794      -0.101      -2.568     -87.297
                                0.000       0.000       0.000      -0.009       0.088       0.038       6.615    -924.219

    1    1  |1 0>               0.948      -0.658      -0.042   91703.535       0.000       0.000       0.000       0.000
                              107.312    1503.077       0.009       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.155       0.390      -0.794       0.000   93521.556       0.000       0.000       0.000
                               62.577     547.947      -0.088      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>              -1.238       0.508      -0.101       0.000       0.000   93521.632       0.000       0.000
                              107.065     908.837      -0.038      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>              62.884      32.480      -2.568       0.000       0.000       0.000   93521.391       0.000
                                4.900      -0.027      -6.615      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>             -35.655    -520.171     -87.297       0.000       0.000       0.000       0.000   93521.392
                              168.794     -14.512     924.219      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>             -65.426       2.652       3.216       0.000       0.000       0.000       0.000       0.000
                              921.966     -64.083      -5.933      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              71.464     517.402      87.707       0.000       0.000       0.000       0.000       0.000
                                0.000      10.987     848.209      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>             517.402     -89.025      -4.940       0.000       0.000       0.000       0.000       0.000
                              -10.987       0.000     -58.181      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>              87.707      -4.940      -0.108       0.000       0.000       0.000       0.000       0.000
                             -848.209      58.181       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.135       0.088       0.132      -0.018
                              -25.105      -3.880   -1508.998      -0.439      -0.452      -0.339       0.278      -2.517

    2    1  |1 1>-              0.000       0.000       0.000      -0.135       0.000       0.190      -8.741    1497.431
                               71.782       9.142    1066.570      -0.452      -0.478      -0.393      -0.407     -22.292

    3    1  |1 1>-              0.000       0.000       0.000      -0.088      -0.190       0.000      -5.425     824.052
                               -5.757      -1.111     -21.834      -0.339      -0.393      -0.035      -2.017     -43.538

    4    1  |1 1>-              0.000       0.000       0.000      -0.132       8.741       5.425       0.000     -57.277
                              952.004     -52.302      -4.058       0.278      -0.407      -2.017      -1.622       2.224

    5    1  |1 1>-              0.000       0.000       0.000       0.018   -1497.431    -824.052      57.277       0.000
                              -66.502    -920.610      -0.028      -2.517     -22.292     -43.538       2.224     229.114

    6    1  |1 1>-              0.000       0.000       0.000      -0.060       6.503       4.737    -852.558      60.667
                              155.696      31.839       0.203      -4.723      -7.252      -0.369      -0.903      -1.780

    7    1  |1 1>-              0.000       0.000       0.000    1506.192     511.922    -933.022     -63.693     -35.527
                              -43.074     843.282      -1.145       2.474      22.542      43.452      -7.695    -392.830

    8    1  |1 1>-              0.000       0.000       0.000    -103.907     -34.038      65.777     -11.444    -516.183
                             -843.282     -90.460       2.606       2.194       3.532      -1.808       1.854      23.992

    9    1  |1 1>-              0.000       0.000       0.000      -0.304      -0.693       0.615    -926.315     -91.948
                                1.145      -2.606       0.643      -0.051       0.114      -0.029      -0.631      -0.359

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000      -0.000    -841.030      -0.000      -0.000      -0.000      -0.001

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.604     321.518     -22.151       0.725      -0.000    -601.008     363.796       7.069

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              126.862     -61.011    -845.275     -27.221      -0.000       5.987      -2.417      14.286

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -6.208     784.091     -57.455       3.059      -0.000   -1466.129     887.472      -1.368

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             1610.822       9.872      60.507    -478.951      -0.000     -10.660       6.352      22.691

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              905.483       0.509       7.200     855.869       0.000       0.811      -1.591    1852.026

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -4.497    -910.256      65.827      -0.000    1380.194     503.402     831.638       1.245

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -2.828      66.504     921.202      -0.000      -4.979      -1.475      -2.083      -2.876

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.320    -141.584       9.492       0.000     214.603      78.272     129.310      -4.825

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000       0.000   -1322.671       0.000       0.000      -0.000      -0.000

    1    1  |1 1>+              0.143       0.948      -0.658      -0.042       0.000       0.000       0.000       0.000
                                4.796     107.312    1503.077       0.009       0.302       0.372       0.029       5.389

    2    1  |1 1>+             -1.394      -0.155       0.390      -0.794       0.000       0.000       0.000       0.000
                                2.647      62.577     547.947      -0.088      -0.372       1.814       0.720     -13.658

    3    1  |1 1>+             -0.312      -1.238       0.508      -0.101       0.000       0.000       0.000       0.000
                                3.824     107.065     908.837      -0.038      -0.029      -0.720       0.121       7.421

    4    1  |1 1>+              3.021      62.884      32.480      -2.568       0.000       0.000       0.000       0.000
                                4.428       4.900      -0.027      -6.615      -5.389      13.658      -7.421      -6.783

    5    1  |1 1>+             66.604     -35.655    -520.171     -87.297       0.000       0.000       0.000       0.000
                             -854.283     168.794     -14.512     924.219     -25.023      71.801       3.351     884.576

    6    1  |1 1>+              4.127     -65.426       2.652       3.216       0.000       0.000       0.000       0.000
                                0.000     921.966     -64.083      -5.933       0.149      35.232    1709.487       0.008

    7    1  |1 1>+            -65.426      71.464     517.402      87.707       0.000       0.000       0.000       0.000
                             -921.966       0.000      10.987     848.209      25.105     -71.782       5.757    -952.004

    8    1  |1 1>+              2.652     517.402     -89.025      -4.940       0.000       0.000       0.000       0.000
                               64.083     -10.987       0.000     -58.181       3.880      -9.142       1.111      52.302

    9    1  |1 1>+              3.216      87.707      -4.940      -0.108       0.000       0.000       0.000       0.000
                                5.933    -848.209      58.181       0.000    1508.998   -1066.570      21.834       4.058

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.135      -0.088      -0.132
                                0.000       0.000       0.000       0.000       0.439       0.452       0.339      -0.278

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.135       0.000      -0.190       8.741
                                0.000       0.000       0.000       0.000       0.452       0.478       0.393       0.407

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.088       0.190       0.000       5.425
                                0.000       0.000       0.000       0.000       0.339       0.393       0.035       2.017

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.132      -8.741      -5.425       0.000
                                0.000       0.000       0.000       0.000      -0.278       0.407       2.017       1.622

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.018    1497.431     824.052     -57.277
                                0.000       0.000       0.000       0.000       2.517      22.292      43.538      -2.224

    6    1  |1 0>           93521.380       0.000       0.000       0.000       0.060      -6.503      -4.737     852.558
                                0.000       0.000       0.000       0.000       4.723       7.252       0.369       0.903

    7    1  |1 0>               0.000   94685.528       0.000       0.000   -1506.192    -511.922     933.022      63.693
                               -0.000       0.000       0.000       0.000      -2.474     -22.542     -43.452       7.695

    8    1  |1 0>               0.000       0.000   94685.541       0.000     103.907      34.038     -65.777      11.444
                               -0.000      -0.000       0.000       0.000      -2.194      -3.532       1.808      -1.854

    9    1  |1 0>               0.000       0.000       0.000   94685.538       0.304       0.693      -0.615     926.315
                               -0.000      -0.000      -0.000       0.000       0.051      -0.114       0.029       0.631

    1    1  |1 1>-              0.060   -1506.192     103.907       0.304   91703.535       0.000       0.000       0.000
                               -4.723       2.474       2.194      -0.051       0.000       0.000       0.000       0.000

    2    1  |1 1>-             -6.503    -511.922      34.038       0.693       0.000   93521.556       0.000       0.000
                               -7.252      22.542       3.532       0.114       0.000       0.000       0.000       0.000

    3    1  |1 1>-             -4.737     933.022     -65.777      -0.615       0.000       0.000   93521.632       0.000
                               -0.369      43.452      -1.808      -0.029       0.000       0.000       0.000       0.000

    4    1  |1 1>-            852.558      63.693      11.444     926.315       0.000       0.000       0.000   93521.391
                               -0.903      -7.695       1.854      -0.631       0.000       0.000       0.000       0.000

    5    1  |1 1>-            -60.667      35.527     516.183      91.948       0.000       0.000       0.000       0.000
                               -1.780    -392.830      23.992      -0.359       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000    -131.286    -921.423       5.370       0.000       0.000       0.000       0.000
                                1.768       3.368      -0.357      -0.818       0.000       0.000       0.000       0.000

    7    1  |1 1>-            131.286       0.000    -522.299     -28.237       0.000       0.000       0.000       0.000
                                3.368     556.436     -30.167       0.293       0.000       0.000       0.000       0.000

    8    1  |1 1>-            921.423     522.299       0.000     849.546       0.000       0.000       0.000       0.000
                               -0.357     -30.167      -0.636      -0.120       0.000       0.000       0.000       0.000

    9    1  |1 1>-             -5.370      28.237    -849.546       0.000       0.000       0.000       0.000       0.000
                               -0.818       0.293      -0.120       0.284       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -57.569    -839.059       0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -856.894       4.463    -784.373      53.733      -0.091

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                3.708     923.745       3.688      70.315    -847.468

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              351.269       1.762     321.048     -28.843      -3.649

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                2.250     -66.471      69.238     976.068      61.041

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               11.589      -1.688      -0.115     -12.558       7.218

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             -130.885       2.699    -141.568       9.713      -3.366

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                5.145     851.983       0.734      -0.050    -923.594

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              841.862      -4.804     910.493     -62.470       0.221

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000     -90.537   -1319.569       0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               25.023      -0.149     -25.105      -3.880   -1508.998

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -71.801     -35.232      71.782       9.142    1066.570

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -3.351   -1709.487      -5.757      -1.111     -21.834

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -884.576      -0.008     952.004     -52.302      -4.058

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                8.590       2.802     -66.502    -920.610      -0.028

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -2.802       1.685     155.696      31.839       0.203

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               66.502    -155.696     -43.074     843.282      -1.145

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              920.610     -31.839    -843.282     -90.460       2.606

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.028      -0.203       1.145      -2.606       0.643

    1    1  |1 0>               0.018      -0.060    1506.192    -103.907      -0.304
                                2.517       4.723      -2.474      -2.194       0.051

    2    1  |1 0>           -1497.431       6.503     511.922     -34.038      -0.693
                               22.292       7.252     -22.542      -3.532      -0.114

    3    1  |1 0>            -824.052       4.737    -933.022      65.777       0.615
                               43.538       0.369     -43.452       1.808       0.029

    4    1  |1 0>              57.277    -852.558     -63.693     -11.444    -926.315
                               -2.224       0.903       7.695      -1.854       0.631

    5    1  |1 0>               0.000      60.667     -35.527    -516.183     -91.948
                             -229.114       1.780     392.830     -23.992       0.359

    6    1  |1 0>             -60.667       0.000     131.286     921.423      -5.370
                                1.780      -1.768      -3.368       0.357       0.818

    7    1  |1 0>              35.527    -131.286       0.000     522.299      28.237
                              392.830      -3.368    -556.436      30.167      -0.293

    8    1  |1 0>             516.183    -921.423    -522.299       0.000    -849.546
                              -23.992       0.357      30.167       0.636       0.120

    9    1  |1 0>              91.948       5.370     -28.237     849.546       0.000
                                0.359       0.818      -0.293       0.120      -0.284

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          93521.392       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   93521.380       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   94685.528       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   94685.541       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   94685.538
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.38218307    -0.00010036      -22.03      0.00000000        0.00      0.0000
    2  -462.96999691     0.41208580    90442.38      0.41218616    90464.40     11.2162
    3  -462.96940587     0.41267684    90572.10      0.41277720    90594.12     11.2322
    4  -462.96912290     0.41295981    90634.20      0.41306017    90656.23     11.2399
    5  -462.96565785     0.41642486    91394.69      0.41652522    91416.72     11.3342
    6  -462.96446881     0.41761391    91655.66      0.41771426    91677.68     11.3666
    7  -462.96393514     0.41814757    91772.78      0.41824793    91794.81     11.3811
    8  -462.96381663     0.41826608    91798.79      0.41836644    91820.82     11.3843
    9  -462.96379509     0.41828763    91803.52      0.41838798    91825.55     11.3849
   10  -462.96375020     0.41833251    91813.37      0.41843287    91835.40     11.3861
   11  -462.96367008     0.41841264    91830.96      0.41851299    91852.99     11.3883
   12  -462.96361815     0.41846456    91842.36      0.41856492    91864.38     11.3897
   13  -462.96361119     0.41847152    91843.88      0.41857188    91865.91     11.3899
   14  -462.96355053     0.41853218    91857.20      0.41863254    91879.22     11.3916
   15  -462.96345495     0.41862776    91878.17      0.41872812    91900.20     11.3942
   16  -462.96327351     0.41880920    91918.00      0.41890956    91940.02     11.3991
   17  -462.96117828     0.42090443    92377.84      0.42100478    92399.87     11.4561
   18  -462.96064847     0.42143424    92494.13      0.42153460    92516.15     11.4705
   19  -462.96003113     0.42205158    92629.61      0.42215194    92651.64     11.4873
   20  -462.95991447     0.42216824    92655.22      0.42226860    92677.24     11.4905
   21  -462.95961556     0.42246715    92720.82      0.42256751    92742.85     11.4986
   22  -462.95926683     0.42281588    92797.36      0.42291624    92819.39     11.5081
   23  -462.95827285     0.42380986    93015.51      0.42391022    93037.54     11.5352
   24  -462.95710092     0.42498179    93272.72      0.42508215    93294.75     11.5671
   25  -462.95146737     0.43061534    94509.14      0.43071570    94531.17     11.7204
   26  -462.94051475     0.44156796    96912.97      0.44166832    96934.99     12.0184
   27  -462.93957336     0.44250936    97119.58      0.44260971    97141.60     12.0440
   28  -462.93925697     0.44282575    97189.02      0.44292610    97211.04     12.0526
   29  -462.93881444     0.44326827    97286.14      0.44336863    97308.17     12.0647
   30  -462.93844974     0.44363297    97366.18      0.44373333    97388.21     12.0746
   31  -462.93778092     0.44430180    97512.97      0.44440215    97535.00     12.0928
   32  -462.93771671     0.44436600    97527.06      0.44446636    97549.09     12.0945
   33  -462.93766248     0.44442023    97538.97      0.44452059    97560.99     12.0960
   34  -462.93754606     0.44453665    97564.52      0.44463701    97586.54     12.0992
   35  -462.93641529     0.44566742    97812.69      0.44576778    97834.72     12.1300
   36  -462.93433220     0.44775052    98269.88      0.44785087    98291.91     12.1866
   37  -462.93015322     0.45192950    99187.06      0.45202985    99209.09     12.3004

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99988564  0.00026417 -0.00037774 -0.00007929  0.00040479  0.00110421 -0.00024964  0.00024908
                           0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.00000026 -0.01488625  0.00097674 -0.00687772 -0.02307545 -0.00161796 -0.04329852  0.02681375
                          -0.00000002  0.02025227  0.00353703 -0.00842114  0.13601589  0.01133957  0.08456247 -0.00364624

   3    1  |0 0>          -0.00000019 -0.00690394  0.00025618  0.00199645 -0.01874076 -0.01283267  0.01749181  0.10005750
                          -0.00000039 -0.00101640 -0.00134654  0.00004747  0.05733222 -0.09409857  0.14051415  0.06104205

   4    1  |0 0>           0.00000118 -0.03321822  0.00692772 -0.01608433 -0.05406370 -0.21337380 -0.06660930 -0.02179716
                          -0.00000001 -0.00540286 -0.00025322 -0.00252703 -0.02246120  0.00613741 -0.10934577  0.02066209

   5    1  |0 0>           0.00000001 -0.01013982 -0.02366795  0.00287338 -0.12678018  0.13085246  0.15840355  0.05729558
                          -0.00000021 -0.00639513 -0.00297846 -0.00195853 -0.02074367  0.10562254 -0.01751960  0.02034544

   6    1  |0 0>          -0.00000004  0.01615693  0.01714328 -0.00363908  0.07292737  0.00831985  0.00461768  0.13111213
                           0.00000017 -0.00138559  0.00095168 -0.00054358 -0.04905983  0.03523884 -0.02962790  0.01404543

   7    1  |0 0>          -0.00000098 -0.05801608  0.06044199  0.16022850  0.09964291  0.04055837  0.01255233 -0.00023172
                           0.00000001  0.03407381 -0.01570886  0.05127844 -0.05776176 -0.00736764  0.00590287 -0.00056372

   8    1  |0 0>          -0.00000009  0.00584431  0.00409156 -0.00363698  0.00282053 -0.00125137 -0.00952692  0.00584184
                           0.00000042 -0.04566764 -0.17442418  0.03920450  0.10879625 -0.07196118  0.01258747 -0.00448335

   9    1  |0 0>          -0.00000018 -0.02499171  0.02904627  0.05404647  0.06867600  0.00449993 -0.01148665 -0.00217722
                          -0.00000001 -0.10911224  0.02004420 -0.12155142  0.10074452  0.09471731 -0.02989661 -0.00489505

  10    1  |0 0>           0.00035621 -0.00554979  0.00810226  0.00171794 -0.01000012 -0.02864147  0.00662301 -0.00664183
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000001 -0.00000001

   1    1  |1 1>+          0.00000056 -0.04427419 -0.02013644  0.01744510 -0.01528235 -0.00357050  0.00754244 -0.00246304
                           0.00000078  0.28014661  0.83541993 -0.16862221 -0.14925640  0.07090909 -0.00572846  0.00276039

   2    1  |1 1>+         -0.00000124  0.00038867 -0.00065462 -0.00034628  0.00465881 -0.03682485 -0.25164094  0.03447622
                           0.00000012  0.01617741 -0.00181584  0.00679106  0.09475864 -0.03485669  0.39580857 -0.06728595

   3    1  |1 1>+          0.00000043 -0.00264843  0.00132224 -0.00189074  0.03645749  0.00367524 -0.06089598 -0.54502132
                           0.00000051  0.02178133  0.01545913  0.00306485  0.09824522 -0.12674821 -0.08274041  0.03490520

   4    1  |1 1>+         -0.00000070  0.00936303  0.00197223 -0.00211890  0.06544415  0.03984703  0.18560673 -0.19022898
                          -0.00000032  0.06021758  0.00807171 -0.00713969  0.23824652  0.11352003  0.24910068 -0.02411704

   5    1  |1 1>+         -0.00000032 -0.06874806 -0.06971106  0.01618660 -0.31043536  0.39108116  0.21732721 -0.04262631
                          -0.00000802  0.00103231 -0.00054425 -0.00037422  0.10898453  0.03829336  0.02054918 -0.04230074

   6    1  |1 1>+         -0.00000352  0.00268740 -0.00234991  0.00861391  0.03451350  0.19277205 -0.14557471  0.10343591
                           0.00000037  0.01143198  0.00022367  0.01833145 -0.02684304 -0.05949822  0.17044557 -0.09907055

   7    1  |1 1>+          0.00870789  0.02742603  0.04105202 -0.00865930  0.08419058 -0.08771882 -0.04377287 -0.09409786
                           0.00000818  0.02476147 -0.00229487  0.01461791  0.00265020 -0.02424106 -0.00161198 -0.01321789

   8    1  |1 1>+         -0.00060564  0.03434235 -0.02707373 -0.03073076  0.01279514 -0.03046974  0.00480154 -0.01367330
                          -0.00000107  0.19495080 -0.06167496  0.14572140 -0.03875523  0.11140321 -0.08364765  0.00441808

   9    1  |1 1>+          0.00000053 -0.11804509  0.08593643  0.18480323  0.06107036 -0.03923588 -0.00961991 -0.00055380
                          -0.00000011  0.03864035 -0.01583342  0.03595792 -0.00173225  0.01905379 -0.01646381  0.00137261

   1    1  |1 0>           0.00000012  0.64311546 -0.12737775  0.56160673 -0.18560414 -0.08458728  0.02436086  0.00332465
                          -0.00000025 -0.09843711  0.08850103  0.12606405  0.07844377  0.00192342 -0.01458348 -0.00021197

   2    1  |1 0>           0.00000050  0.05145849  0.01313455 -0.00715071  0.19658464 -0.03925279  0.00176067  0.06689415
                          -0.00000202 -0.00900891  0.00254299 -0.00289299 -0.08745878  0.00575859  0.24754596 -0.18368692

   3    1  |1 0>           0.00000023  0.01451504 -0.00142692 -0.00364967  0.08072367  0.09411146  0.06134560  0.03287424
                          -0.00000388 -0.01262822 -0.00348372 -0.00245661 -0.09709548  0.08528248 -0.07639726  0.13911432

   4    1  |1 0>          -0.00000552 -0.00719417  0.00522684 -0.00243963 -0.08377299  0.17161338  0.26083636 -0.15623715
                          -0.00000205 -0.00091626  0.00022975 -0.00306195  0.03137311  0.05089419  0.27120813  0.07052910

   5    1  |1 0>          -0.00000035  0.02137291  0.00441688 -0.01406354  0.15733959 -0.01949894 -0.00180072  0.01524668
                          -0.00006407  0.14094840 -0.02439112  0.05790162  0.33146700  0.49088613 -0.17915095  0.00184828

   6    1  |1 0>           0.00000611  0.01250578  0.00369740  0.00559326  0.08108394 -0.10258004  0.02381109 -0.08674031
                           0.00000043 -0.01041063  0.00850489  0.00461899 -0.04002681 -0.24829835  0.08199116  0.16108298

   7    1  |1 0>          -0.00000246 -0.04782636 -0.00769135 -0.03066931 -0.04610176  0.03576252 -0.02011365  0.00070207
                           0.00004807 -0.22334471  0.08609008  0.14311821 -0.14343167  0.01363432  0.00164072  0.00311443

   8    1  |1 0>          -0.00004843 -0.13686761 -0.24815720  0.03454967 -0.19793753  0.15494570 -0.05092685 -0.00517252
                          -0.00000257  0.00711727 -0.01613632 -0.00955520  0.05905030  0.03592468 -0.03694037  0.02380301

   9    1  |1 0>          -0.00000810 -0.01339774 -0.00427823 -0.00243979 -0.06023104  0.02988312 -0.00809334  0.00039277
                          -0.00872795 -0.01650080  0.00333307  0.00364365 -0.04704462 -0.05098506  0.02725364 -0.03638117

   1    1  |1 1>-          0.00000002 -0.11235287  0.04891307 -0.13976566  0.05067724  0.00547287 -0.00654847  0.00195518
                           0.00000317 -0.47367297  0.31275355  0.68050612  0.10763189  0.02635475  0.00862750  0.00009872

   2    1  |1 1>-          0.00000004 -0.00676078 -0.00335968  0.00739494 -0.09637319  0.03490125 -0.08010756  0.00617089
                          -0.00000530 -0.05774732  0.00173969 -0.03280488 -0.23857387 -0.16931952  0.24507296  0.01207419

   3    1  |1 1>-          0.00000004 -0.01133505  0.00040524 -0.00267823 -0.03167465  0.03099154 -0.11325580  0.08045623
                           0.00000049  0.00359517 -0.00102659 -0.01338618 -0.01566926 -0.13039481 -0.09619619  0.09634158

   4    1  |1 1>-          0.00000024  0.00699348 -0.00056027  0.00191390 -0.00037082 -0.03976395  0.01666467  0.04036672
                          -0.00000262 -0.00325656 -0.02961406  0.00057776 -0.05423766  0.39269351  0.08255064  0.10896382

   5    1  |1 1>-         -0.00000003  0.08678939  0.04591412 -0.03715277  0.42774828 -0.02932500  0.27803063  0.05489076
                           0.00000875 -0.00754940  0.00092907 -0.00585120 -0.12726328 -0.04363035  0.09537911 -0.02629957

   6    1  |1 1>-         -0.00000043 -0.01751663 -0.01752426  0.00161419 -0.11687388  0.12362053 -0.05781000 -0.07765121
                          -0.00001373 -0.00984022 -0.00174128  0.00373802 -0.01863295  0.01953099  0.18587531  0.65157359

   7    1  |1 1>-          0.00000022 -0.23638877  0.01372633 -0.13279954 -0.09798573  0.02377666 -0.05237743  0.01077660
                          -0.00060145  0.03569108 -0.02460724 -0.03270165  0.02449554  0.04092740 -0.02052802  0.01610001

   8    1  |1 1>-         -0.00000014  0.01826229  0.00140982  0.00693716  0.06178608  0.00029985  0.00757882  0.01238795
                          -0.00870879  0.06763560  0.00048213 -0.01652407  0.17287924  0.08328882 -0.09731575 -0.03054695

   9    1  |1 1>-         -0.00000050  0.05745441  0.21773528 -0.04901087 -0.12226909  0.09101414 -0.03470177 -0.00882668
                          -0.00000026  0.02169741  0.00141506 -0.00865165  0.04449806  0.03555228 -0.02441656  0.01860261

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00009213  0.00023336 -0.00013579  0.00013822  0.00002024 -0.00042122 -0.00020728  0.00031936
                           0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

   2    1  |0 0>           0.07680348  0.07392889 -0.21328948  0.04107748  0.40490844  0.18568649  0.15697393 -0.07876626
                           0.05424204 -0.00625335  0.08925199  0.12988362  0.15133057 -0.09762738  0.22405199 -0.12024369

   3    1  |0 0>           0.03324264 -0.05178665 -0.05393418  0.21463538 -0.04063420  0.00708014  0.14572000  0.21536250
                           0.05655341 -0.25268093 -0.00403196  0.05091738  0.13957559  0.18029226 -0.14480194  0.41069600

   4    1  |0 0>          -0.02926619  0.16743430 -0.17565644 -0.07234972 -0.29120541  0.18737857  0.33959922  0.11310354
                           0.02609016  0.02075793  0.22588593 -0.11090527  0.06758855 -0.06099764 -0.04963023 -0.06551795

   5    1  |0 0>           0.00216099 -0.13562084 -0.09685424  0.30758919 -0.13306563 -0.17066756  0.18324355  0.07601996
                          -0.00860440 -0.03530436 -0.14599728  0.10080409 -0.00559332 -0.17950560  0.00049017 -0.28615721

   6    1  |0 0>          -0.02436566  0.13669012  0.06270212  0.35548386 -0.11493986  0.37813806 -0.19177769 -0.20392798
                          -0.01658893  0.04483713  0.05326966  0.14903383 -0.02352313  0.08682351 -0.10238701 -0.08091435

   7    1  |0 0>          -0.00873020 -0.00752361  0.00711224 -0.00409941 -0.00320148  0.00597405  0.01812810 -0.04704068
                          -0.00113062 -0.00235639 -0.00323546  0.00111790 -0.00163199  0.00240061  0.00287296  0.00931943

   8    1  |0 0>          -0.01292286 -0.00481660  0.00179426  0.00032663 -0.00320522 -0.00436873 -0.01253330 -0.03241498
                           0.00328698  0.01367350  0.00630734  0.00203650  0.01583977 -0.00158770 -0.00792281 -0.06499554

   9    1  |0 0>           0.03135439 -0.00139789  0.00540902 -0.00208634  0.00042913 -0.00420042 -0.01163487  0.00226278
                          -0.00566298  0.03350341 -0.02822660  0.01999863  0.00128633 -0.04412415 -0.02064541  0.04977962

  10    1  |0 0>           0.00245890 -0.00624028  0.00364377 -0.00371736 -0.00054437  0.01136210  0.00561410 -0.00871898
                          -0.00000001  0.00000004  0.00000007  0.00000001 -0.00000001  0.00000008 -0.00000002  0.00000006

   1    1  |1 1>+          0.00906195  0.00250878  0.00114110 -0.00057718  0.00175918  0.00487108  0.00778683  0.01999214
                          -0.00285355 -0.00956743 -0.00231226 -0.00068493 -0.00935235  0.00227291  0.00875990  0.04169163

   2    1  |1 1>+         -0.13938508 -0.09952046 -0.23724210  0.12066357 -0.00113821  0.10498290  0.14028075  0.05906278
                           0.02909695 -0.17582588 -0.26501751 -0.05436224 -0.00808083  0.13016502 -0.32215671  0.23779432

   3    1  |1 1>+          0.18844604 -0.19685922  0.04721164  0.27807842 -0.06547249  0.04129559  0.01601618  0.05438356
                           0.04751475 -0.16059449  0.12731318  0.12687805  0.15636378  0.10554177  0.01142151  0.13040284

   4    1  |1 1>+         -0.05745947  0.36295003  0.21841358  0.11971371  0.22429271  0.01434555  0.11536351  0.03825952
                           0.21999596  0.05605258 -0.14288677 -0.10800800  0.07086861  0.10487578  0.10785297 -0.14044283

   5    1  |1 1>+         -0.00400357 -0.28426617  0.03788307 -0.08251244 -0.06463636 -0.00093980  0.37705371  0.13651568
                          -0.11300807  0.00896037 -0.08832854 -0.02609372 -0.01129196 -0.11650387  0.00858609 -0.09707587

   6    1  |1 1>+          0.55489842  0.00526003  0.13023116  0.02693708 -0.10006615 -0.14427200 -0.12570393  0.07587896
                           0.12966609  0.21861795 -0.17409223  0.00341301 -0.07013651 -0.01463475 -0.05083724  0.01203918

   7    1  |1 1>+          0.01298412 -0.02784191  0.00400889 -0.09066367  0.02413381 -0.02339288  0.02574550  0.00983496
                           0.00296405  0.00755697  0.00001442 -0.03413565 -0.00235566 -0.00881759  0.01192615  0.00076492

   8    1  |1 1>+         -0.03098218 -0.00257817  0.02003245 -0.00721199 -0.08016300 -0.00469461 -0.00698412  0.01871210
                          -0.02852100  0.01908632 -0.01607531 -0.00517864 -0.01401416 -0.03647954 -0.04198968  0.04064302

   9    1  |1 1>+          0.00232035  0.02974453 -0.04074827 -0.00862916 -0.01804866  0.04185470  0.06044385 -0.01371607
                           0.00675127  0.00778992  0.03893002 -0.00500640  0.02155079 -0.02063800  0.00641759  0.00074672

   1    1  |1 0>           0.00557147 -0.02434924  0.02063207 -0.01281161 -0.00256791  0.02838586  0.01799534 -0.03139792
                           0.02399658 -0.00015396  0.00356471  0.00034136  0.00335918 -0.00377927 -0.00493676  0.01126307

   2    1  |1 0>          -0.21043036 -0.23531693  0.15172028  0.08558735 -0.12145371 -0.12451887  0.14939300 -0.06926039
                          -0.07508561  0.31573811  0.11154405  0.12293495  0.27133665 -0.02746439  0.17514010  0.07379111

   3    1  |1 0>           0.03363287 -0.07157410 -0.04497158 -0.26691335 -0.13790611  0.11829173 -0.07996236 -0.09357123
                           0.16499488 -0.17397159 -0.31673895  0.03203208  0.53941957  0.08399626 -0.01445123 -0.13569409

   4    1  |1 0>          -0.04559603  0.12822549 -0.32047863 -0.11817336 -0.19663498 -0.09073120 -0.19120538 -0.19932968
                           0.20156468  0.06007887  0.20374709  0.10990156 -0.03760295 -0.12063844 -0.00627666  0.18340806

   5    1  |1 0>           0.01686778  0.00393116  0.02743871 -0.00905818  0.02913513 -0.01362345 -0.01130868  0.04425402
                          -0.05336976  0.06814409 -0.04720185  0.09741675  0.04213342 -0.22213731 -0.14148818  0.22153845

   6    1  |1 0>          -0.10979915  0.09680201  0.12826385 -0.17590632 -0.02502097  0.12323310  0.02069959  0.25859701
                           0.01314284  0.05579954 -0.17103475  0.53333484 -0.13123501 -0.22400143 -0.08545064 -0.04970551

   7    1  |1 0>           0.00474687  0.01265666  0.03208488  0.00014597  0.01658897 -0.02578845  0.00775522  0.02404588
                          -0.00006853 -0.02576691  0.03272432  0.01633976  0.02002300 -0.04857549 -0.07081310  0.06004341

   8    1  |1 0>          -0.01686051  0.02974492 -0.01394454 -0.00899540 -0.04700614 -0.02305265  0.02873513  0.06555584
                          -0.01690819 -0.00527261 -0.01710327  0.03378228 -0.00829834 -0.02292504 -0.00425331 -0.01617888

   9    1  |1 0>          -0.00557208  0.01257500  0.02265407  0.01632927 -0.00680512  0.03314082 -0.01212064  0.04111419
                           0.00732074 -0.05737158 -0.01288780 -0.04141218  0.00557836 -0.05066505  0.05809103 -0.00135278

   1    1  |1 1>-          0.00009624  0.00052623  0.00242702  0.00101518  0.00061525 -0.00203401 -0.00286124 -0.00473822
                          -0.00086030 -0.00571355  0.00405880 -0.00093160 -0.00044124  0.00167830  0.01077025 -0.02292456

   2    1  |1 1>-          0.03304762  0.01436511  0.24801950 -0.05032096  0.10713438 -0.09058697  0.05473838 -0.14459359
                           0.05364244 -0.26402080  0.31569727 -0.02757661  0.08494953 -0.07347618 -0.27554733 -0.25707761

   3    1  |1 1>-         -0.16246636 -0.23918177  0.01136436  0.02526579 -0.02275390  0.09824256  0.03416925  0.00430467
                           0.57743590  0.08307432 -0.00032794 -0.05879631 -0.20401847  0.12983911  0.20761313 -0.04693585

   4    1  |1 1>-          0.13566883 -0.10179060 -0.09001548 -0.09264084  0.04587966 -0.11781589  0.11078132 -0.01149679
                          -0.04653350  0.02137845  0.17818986  0.16003483 -0.11590683  0.56866349 -0.01617463 -0.13023437

   5    1  |1 1>-         -0.02087019 -0.24885289  0.05738079 -0.02467975 -0.06516714  0.00463996  0.29637407 -0.26632351
                          -0.00092552  0.00846963 -0.07771695  0.01853839  0.07214247 -0.05003321  0.06200900  0.04796639

   6    1  |1 1>-         -0.01564437  0.04605440 -0.05314584  0.03541430 -0.05302953 -0.05695283  0.00679196 -0.13636995
                          -0.08247072  0.19736323  0.02935575 -0.09946599  0.02129325 -0.10414567  0.04146831  0.12736003

   7    1  |1 1>-         -0.02232391 -0.01338972  0.00927160 -0.02570196 -0.01536392  0.00454821 -0.01950813 -0.01002776
                           0.05937555  0.00767945 -0.01621063  0.00961027  0.08134498  0.00062121 -0.01152273 -0.00492578

   8    1  |1 1>-          0.00219596 -0.01793322 -0.02446060  0.01917627  0.00926935 -0.02721580 -0.00131963 -0.03849903
                          -0.00638175  0.05484887  0.00180358 -0.03418972  0.02067623 -0.01844400 -0.05390875  0.04523060

   9    1  |1 1>-         -0.01307365  0.03985477 -0.00454501 -0.00793104 -0.03093749 -0.02633765  0.02658155 -0.00252744
                          -0.00522928 -0.00266925 -0.01722666  0.03665189 -0.00480893 -0.02059721  0.00449035  0.02047954

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00057056  0.00078932  0.00033969 -0.00038838  0.00020088  0.00011872  0.00161295  0.00010346
                           0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

   2    1  |0 0>           0.08693145 -0.06183410 -0.01153275 -0.09053586 -0.03970988  0.15003489 -0.08309039  0.08735521
                          -0.07559934  0.24332147  0.09437962  0.05311224  0.09743804  0.20942029 -0.17656212 -0.03889688

   3    1  |0 0>           0.05287157 -0.07953208 -0.14910933 -0.07372850  0.02928313  0.10560370  0.07163511 -0.09544371
                           0.04102987  0.16535773  0.15173462  0.05884435  0.05649857 -0.04593048  0.15648187  0.19026800

   4    1  |0 0>          -0.09566821  0.04735579  0.05106040 -0.00725507 -0.28167089 -0.05416714 -0.18828631  0.12295786
                          -0.01357790 -0.09404607 -0.02214001  0.03491255  0.13598902 -0.06035986  0.07690742  0.11899516

   5    1  |0 0>           0.15120146 -0.20511631 -0.00736642 -0.20189123  0.13548238  0.01721135 -0.20340064  0.11861220
                           0.11821051 -0.11561024 -0.07502030  0.03787238 -0.07449384 -0.08630876  0.00390452  0.09161940

   6    1  |0 0>          -0.06636042 -0.10658453 -0.03268098  0.09234743 -0.08878885  0.29552570  0.17264553  0.14348979
                           0.00606965 -0.04701591 -0.07892341  0.00294503 -0.03335750 -0.14397527 -0.04305610  0.00770838

   7    1  |0 0>           0.44800010  0.12222880  0.16793487 -0.24605718 -0.25772306  0.03821595  0.20045317 -0.12089918
                          -0.00788679 -0.13414715  0.01635686 -0.01694462  0.18104684 -0.05199689  0.06889585 -0.10332318

   8    1  |0 0>          -0.11219596  0.17494393 -0.41085842 -0.21989497  0.02488657  0.01441237  0.03225673  0.05752201
                          -0.05539717 -0.31268011  0.31885520  0.09483262  0.00049142 -0.03919684 -0.07416327 -0.13433397

   9    1  |0 0>          -0.03350487  0.12949012 -0.08066944 -0.02236114 -0.12265268 -0.07395721  0.06846068 -0.10778297
                           0.32059901  0.05143702 -0.21658284  0.48927408 -0.02993236  0.03129959 -0.19124696  0.07012602

  10    1  |0 0>          -0.01714396 -0.02433211 -0.01079679  0.01241725 -0.00652099 -0.00392405 -0.05621348 -0.00385176
                          -0.00000002  0.00000004  0.00000004  0.00000000  0.00000001  0.00000007  0.00000003  0.00000006

   1    1  |1 1>+          0.01861129 -0.01550736  0.01277902  0.00546900 -0.00026441 -0.00548766 -0.00027981  0.01507303
                           0.00758340  0.03891866 -0.00669112 -0.00172756  0.00089821 -0.00211076 -0.01178460 -0.04192298

   2    1  |1 1>+          0.02800446 -0.02530320  0.13096283  0.05540338 -0.00518207 -0.02644549 -0.03019489  0.04039282
                           0.01695178  0.02278941 -0.11125898 -0.04261575 -0.01799637  0.04060854 -0.06544283 -0.07036094

   3    1  |1 1>+         -0.04631160  0.10408954 -0.12474886 -0.07005664  0.00645914 -0.03798165 -0.01453569  0.04234379
                          -0.03611845 -0.12386062  0.11074853  0.02084996 -0.00453818  0.00252983 -0.06548618 -0.12399258

   4    1  |1 1>+         -0.00473156  0.02278980 -0.04926673  0.01550125 -0.04372111 -0.06403242  0.02926191 -0.07996011
                           0.03728669  0.06453564 -0.09167923  0.19692712 -0.03370833 -0.02764494 -0.04687791  0.13996741

   5    1  |1 1>+          0.00531003 -0.16264722 -0.04940860  0.06502169 -0.06399107  0.05122700  0.07289993 -0.13915408
                           0.05337939 -0.05188309 -0.00758554 -0.00735090  0.00662115  0.00021981 -0.01640175 -0.11369369

   6    1  |1 1>+         -0.24777477 -0.08270452 -0.04727294  0.06565714  0.03095728  0.02464042 -0.07288822  0.07057028
                          -0.04964272  0.09270949  0.03819129 -0.04154668 -0.00372717  0.04881284 -0.01460602  0.01674643

   7    1  |1 1>+          0.03935717 -0.31475183 -0.07892428 -0.03986445 -0.00623288  0.42004986  0.03163933  0.26912910
                           0.09976479 -0.09574980 -0.13943684  0.05648339 -0.09643119 -0.24487888 -0.07365843  0.04998720

   8    1  |1 1>+          0.04180863  0.03375271 -0.06395947 -0.09167383  0.06026047  0.15390810 -0.01321528  0.02924045
                           0.15349061  0.29148123  0.02728008  0.24789179  0.03713901  0.32851236 -0.32530290 -0.19455626

   9    1  |1 1>+         -0.04690239 -0.04957271 -0.13159273  0.19832999  0.52086050 -0.06765596  0.12868254 -0.13689477
                           0.03951220  0.02047039 -0.02295144 -0.07791992 -0.32623294 -0.01727741 -0.02489590 -0.04978449

   1    1  |1 0>          -0.07410980  0.00850807  0.01163947 -0.00084526 -0.00176951  0.00247984 -0.03130170  0.05469702
                          -0.02767835  0.02465716 -0.00108086  0.00102068  0.00342026  0.00559053 -0.00684943  0.03918871

   2    1  |1 0>           0.06163515  0.12052798 -0.06556614  0.23917303 -0.02700267  0.01765146 -0.07787346  0.13187898
                          -0.00343321  0.00832940  0.05195940 -0.00372448  0.04196186  0.03662430 -0.01485470  0.09474251

   3    1  |1 0>          -0.05316339  0.09824693  0.04315525  0.01792834  0.01407533  0.09301424 -0.09779309 -0.04208495
                          -0.04061893  0.01942450  0.00692309  0.02774393 -0.02814587 -0.06725238  0.00758386  0.00435698

   4    1  |1 0>          -0.02705608 -0.09840471  0.15114897  0.03257613  0.02259050  0.00454354  0.01630094  0.01693365
                           0.05669980 -0.07032441  0.17303657  0.08493758 -0.01070759  0.00049232 -0.02667931  0.01137625

   5    1  |1 0>           0.00970504 -0.00663459 -0.01970956 -0.00191460 -0.14479277 -0.00768748 -0.03728211  0.07751127
                          -0.06579656  0.00395483  0.06957260 -0.12525630 -0.20288498  0.03316185  0.12526780 -0.05712584

   6    1  |1 0>           0.03073627 -0.02113100 -0.02662789  0.01753349 -0.02880694 -0.06455470 -0.01491754  0.02121816
                          -0.02547877  0.09971103  0.02560715  0.05226136 -0.03177972 -0.07220259  0.05683280 -0.09829489

   7    1  |1 0>           0.08397508 -0.07638511 -0.04030849 -0.01831041 -0.15954936 -0.06587076  0.02186574 -0.08862225
                          -0.39018386 -0.07222917 -0.01384798  0.03278627 -0.26575006  0.03454787 -0.31371215  0.24405088

   8    1  |1 0>           0.03958310  0.37282047  0.06136682  0.02526113  0.09958273 -0.02421740  0.26248573  0.32801024
                          -0.04473969  0.15551132  0.00050564 -0.04510671  0.01161514 -0.09144231 -0.05932602  0.14451492

   9    1  |1 0>           0.01419693  0.05040717  0.06355757  0.02499901  0.00063965  0.12903308  0.06149656  0.13203723
                          -0.10807507 -0.12164385 -0.05904110  0.24492140 -0.21669734  0.37831055  0.41784738 -0.03376898

   1    1  |1 1>-         -0.00336653  0.01540502  0.00500528 -0.00497096 -0.00044294  0.00087320  0.00783675 -0.02117536
                           0.06116153  0.01081338  0.00434382 -0.00739886 -0.00392273 -0.00575723 -0.01279875  0.02144077

   2    1  |1 1>-         -0.01544777  0.04043638  0.00407682 -0.03235283 -0.06979243  0.00640826  0.00197275 -0.05245354
                           0.21614700  0.05225777  0.04615866 -0.05980931 -0.12062217  0.02636999 -0.09897084  0.08713335

   3    1  |1 1>-         -0.00926336  0.03830799 -0.00995114  0.00192907 -0.02063369  0.00092733 -0.00343084  0.04959929
                           0.26590611  0.06770821  0.05112632 -0.06908461 -0.01611201  0.01209229  0.07634782 -0.06892356

   4    1  |1 1>-         -0.01297116 -0.00401925 -0.02167626  0.00023275 -0.01221783 -0.05997719 -0.01630731  0.01025722
                          -0.00367613 -0.01631954  0.00060878 -0.02854377  0.03184531 -0.11708475 -0.11395448 -0.07605735

   5    1  |1 1>-         -0.24349352  0.07856812  0.08855792 -0.14886318  0.00874874 -0.05793646  0.11735939  0.09403024
                          -0.10397859  0.09347323 -0.02880891 -0.00412493 -0.01331274  0.00518922  0.00262678  0.03500695

   6    1  |1 1>-          0.00063860  0.13400560 -0.08206514 -0.03764282  0.02124076  0.02622317  0.08400589  0.12734274
                          -0.02055170  0.03400366 -0.13633063 -0.08432803  0.00834214  0.03070355 -0.00194138  0.06489978

   7    1  |1 1>-         -0.17457441  0.22684893  0.22913712 -0.20356673  0.08840509  0.28469480 -0.17161022 -0.22481847
                          -0.13569699  0.09498585 -0.02695388  0.08682164 -0.11671042 -0.24753810  0.02427860 -0.06908128

   8    1  |1 1>-         -0.09148634  0.04965873  0.06188040 -0.05056619  0.09227264  0.11854904  0.00147242 -0.18025826
                           0.21694506 -0.11464390  0.02399370 -0.32791644  0.23704547  0.06040457 -0.20914248  0.31721203

   9    1  |1 1>-         -0.01046670  0.05292519  0.35493221  0.11368858  0.08685587 -0.07008617  0.20945568  0.24499627
                           0.03838678 -0.01990870  0.38690582  0.16497854 -0.02793247 -0.10274399 -0.11247831  0.12482535

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01153626  0.00009293 -0.00004042  0.00000416 -0.00001239  0.00005799 -0.00000757  0.00001344
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.01894412 -0.07727074 -0.02362501  0.02165978 -0.12549346  0.04659160 -0.17861035 -0.22521758
                          -0.00404172  0.07917695 -0.05887756  0.05542145  0.08013256 -0.04341272  0.25990351  0.30879637

   3    1  |0 0>           0.01252598 -0.06587765 -0.00281407 -0.04929380 -0.05061553 -0.00169956  0.25635861 -0.14222214
                           0.04231361 -0.05788368 -0.05624224  0.03361726  0.01633207 -0.19416682  0.02337307 -0.17015712

   4    1  |0 0>          -0.07994105 -0.21166374  0.04640804  0.02735377 -0.22660437  0.16838333  0.04319587  0.09909091
                           0.00563426  0.05088684  0.00329772  0.03552614  0.03350347  0.09284601 -0.08603204 -0.07636259

   5    1  |0 0>          -0.00875253  0.05312852 -0.11462251 -0.01496314  0.06147285 -0.22509820 -0.32782526  0.11118464
                           0.00768090 -0.01585918  0.00642361  0.01814205  0.01410179 -0.03810173  0.07275621 -0.18460756

   6    1  |0 0>           0.00675439  0.05223965  0.11169940 -0.06057702  0.05008493  0.32494280 -0.17482324  0.15061764
                          -0.01547679 -0.02262305  0.01439804 -0.00817377 -0.03547551 -0.01633145  0.05590912 -0.03008497

   7    1  |0 0>           0.09010506  0.34723887 -0.30155282  0.12886640 -0.13654552  0.06487885 -0.02932237  0.00927681
                          -0.00149018 -0.12600793  0.02490059  0.07293919 -0.05775173  0.01297161 -0.01728057  0.05172183

   8    1  |0 0>           0.00938487 -0.02397571  0.10565728  0.44462740  0.09608892  0.00371802  0.03262013 -0.04260690
                          -0.03758460  0.02250894 -0.17727931 -0.14692438 -0.00925463  0.22922958  0.02419571 -0.13147764

   9    1  |0 0>           0.01583114  0.04117554 -0.06756851 -0.22241901  0.21118852  0.04753177  0.03936834 -0.01031204
                          -0.01128636 -0.04864881 -0.25922504  0.07856101  0.39485338  0.19553310  0.04486241 -0.08038273

  10    1  |0 0>           0.63418527 -0.04722702  0.06616986 -0.02664720 -0.02588026  0.05791815 -0.00386574  0.00656266
                           0.00000001 -0.00000021 -0.00000042  0.00000209 -0.00000074  0.00000097 -0.00000039  0.00000124

   1    1  |1 1>+         -0.00073801  0.02168486  0.04061467  0.11871572  0.03045603  0.00311754  0.04204786 -0.04300503
                          -0.02739392  0.08248301  0.03037177 -0.05163670 -0.00674172  0.17379411  0.01379414 -0.10530918

   2    1  |1 1>+         -0.00203253  0.02192152  0.03010648  0.22892660  0.08162153 -0.01047772 -0.24564928  0.13363424
                          -0.01591741 -0.01135947 -0.09892450 -0.07767289 -0.01301147  0.15057298 -0.00956768  0.13191830

   3    1  |1 1>+         -0.01396400  0.09310794 -0.05923422 -0.32199981 -0.04244208 -0.00465465 -0.09719926  0.04985571
                          -0.03833815  0.14035046  0.29079079  0.07777011 -0.00607198  0.09112961 -0.01449059  0.05942141

   4    1  |1 1>+          0.00665728  0.10617897  0.06373662  0.17500477 -0.06127688  0.00187121  0.08166200  0.12302300
                          -0.00343771  0.25251293  0.20030215 -0.08078553 -0.20165261 -0.08860743 -0.11155740 -0.16392986

   5    1  |1 1>+          0.00442954 -0.02953169  0.12270430 -0.00675414 -0.03216679  0.31152677  0.16493086 -0.00654252
                          -0.00352565  0.01734030  0.00783342 -0.01782956 -0.02516779  0.03721256 -0.03459720  0.14092556

   6    1  |1 1>+         -0.00027815  0.07210234 -0.27834644  0.12540090 -0.33827110  0.16169417  0.00292700  0.02399762
                           0.00038610 -0.00829767 -0.04969419  0.15302788  0.09848890  0.09198820 -0.00697017 -0.04247393

   7    1  |1 1>+          0.43063679 -0.03312409 -0.01085155  0.03084672 -0.04631491 -0.09443568  0.20985287 -0.11193287
                          -0.01821110 -0.00072698  0.00109627 -0.00350136 -0.00124221  0.02872961 -0.07253940  0.08005453

   8    1  |1 1>+         -0.03577711 -0.10760263 -0.01582208  0.00205395 -0.10689191 -0.01043114  0.04815887  0.15631511
                          -0.00200274 -0.29650530  0.04306653 -0.00486649 -0.20086059 -0.01192432 -0.21807960 -0.08484824

   9    1  |1 1>+         -0.00623981  0.00107253  0.07971359 -0.02624828  0.02573586  0.06867706 -0.06003996 -0.00771037
                          -0.00116407 -0.02137364  0.02466756 -0.04471239 -0.04347171  0.00955127  0.01822328  0.13289824

   1    1  |1 0>          -0.00695058  0.14179940 -0.08151780  0.01203504  0.18820197  0.06763684  0.04344852 -0.07464787
                          -0.00540904 -0.05540924 -0.01401670  0.06488660 -0.12254286 -0.02255002 -0.03155149  0.00421949

   2    1  |1 0>          -0.00570790  0.31209192  0.20326790 -0.06899596 -0.19934187 -0.14174265  0.02043969 -0.01007728
                          -0.00841531 -0.12585379 -0.05487319 -0.20820393  0.08915103  0.00876841  0.00578101 -0.00354315

   3    1  |1 0>          -0.00484823  0.04265974 -0.05618169  0.03462588  0.06101372 -0.06657657  0.25413624  0.29416750
                          -0.00425353 -0.00976974  0.03520373 -0.00405892  0.02611892  0.01645309  0.16855052  0.23028917

   4    1  |1 0>           0.00309761  0.08168602  0.23286301  0.10514682  0.00736360 -0.08621735  0.00093387 -0.08225774
                           0.00690958 -0.03185189  0.05297235  0.36366472  0.09251873 -0.00550251 -0.16139254  0.08908033

   5    1  |1 0>          -0.00109786 -0.05812305 -0.03994759  0.11015086  0.04853631  0.02989440 -0.02404590 -0.08100710
                           0.04656967 -0.22284567  0.30030681 -0.09489751  0.13066342 -0.01740408 -0.03071588 -0.01312091

   6    1  |1 0>          -0.00745401 -0.01920971  0.01178421  0.01137581 -0.00439880 -0.04716711  0.08635803 -0.17424190
                           0.00226552 -0.06371470  0.04057845  0.04173666 -0.07154838  0.03627505  0.32938586 -0.14909833

   7    1  |1 0>          -0.00125896  0.09515148 -0.03621138  0.09100040  0.10412054  0.08436591  0.00680576 -0.07733612
                          -0.03201211  0.16593169  0.04137697 -0.05880011  0.28757198 -0.12665799 -0.01618639 -0.01656373

   8    1  |1 0>           0.03659242  0.13327268  0.15764688 -0.04514733 -0.02275646  0.30847005  0.00549043 -0.04504233
                           0.01127280 -0.08514308 -0.02247586 -0.02313738 -0.05997928  0.01108713  0.10030793 -0.02479883

   9    1  |1 0>           0.00946538 -0.01773990  0.00139175 -0.00941185 -0.02553940  0.00096484  0.00852081  0.04678768
                          -0.42755222 -0.02318356 -0.08378028  0.02574572 -0.01658661 -0.24711365 -0.00118204 -0.05257334

   1    1  |1 1>-         -0.00019247 -0.06724136  0.01617559 -0.01643141 -0.03930722 -0.00377782  0.00063619  0.06277572
                          -0.02831662 -0.14338852  0.04623251 -0.00039940 -0.05981937 -0.00004461  0.02688692  0.00456709

   2    1  |1 1>-         -0.00290602 -0.08861848 -0.00957967  0.03387713 -0.00892341 -0.02111658 -0.02266410 -0.06877947
                          -0.06633243 -0.28158402  0.20049624 -0.03881532 -0.07140295  0.08210793 -0.03365647 -0.00483474

   3    1  |1 1>-          0.00038325 -0.01162816 -0.05108527  0.15298133  0.09630144  0.09090257 -0.00413040 -0.03127733
                           0.00717915 -0.06407620  0.27480729 -0.12468558  0.34338572 -0.16494026 -0.00068520 -0.01915159

   4    1  |1 1>-         -0.01193434 -0.01651013  0.01530415 -0.00707875 -0.03257389 -0.01736113  0.05479707 -0.03041203
                          -0.00324129 -0.04527454 -0.10556193  0.05737941 -0.04405417 -0.30335223  0.16516625 -0.14009173

   5    1  |1 1>-          0.00542403 -0.25951630 -0.14406687  0.03936824  0.15997828  0.17609284 -0.13832566 -0.13623247
                           0.00348032  0.09345467  0.02655569  0.18693646 -0.09834483 -0.02549287 -0.08836681 -0.10635489

   6    1  |1 1>-          0.03959113 -0.13893682 -0.28847775 -0.07621788  0.00643241 -0.09592938  0.01846660 -0.06285629
                           0.01041776  0.08936725 -0.05869321 -0.31647815 -0.04286177 -0.00798639 -0.09538667  0.05058510

   7    1  |1 1>-         -0.00503700  0.22017711 -0.00895381 -0.02196147  0.12772236  0.06458890 -0.09554110 -0.29417030
                          -0.03353159 -0.09181553 -0.04520962  0.01034378 -0.13141614 -0.02178799 -0.12897349 -0.14689684

   8    1  |1 1>-          0.00893167 -0.01694144  0.00107784  0.01410826  0.00429734 -0.03494639  0.05559110 -0.11259054
                          -0.43546155  0.01452968  0.07263503  0.00467145 -0.01477582  0.16219865  0.21570301 -0.05831942

   9    1  |1 1>-          0.05256030 -0.13255555 -0.12065476  0.01410717  0.00127356 -0.12513018 -0.02510582  0.23705672
                           0.00019548  0.02617063  0.02963121 -0.00434812 -0.01532738  0.00877040  0.23249253 -0.15249361

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>          -0.00001995 -0.00000470  0.00052492 -0.00056482  0.00943328
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.14460349  0.03302124  0.03319907 -0.06244792 -0.01075988
                          -0.04183528 -0.07432771  0.07717932 -0.06515434 -0.00622243

   3    1  |0 0>           0.28841340 -0.04569562 -0.06647107  0.04077507  0.01005925
                          -0.22433098 -0.05573159 -0.12250011 -0.05597210  0.01501564

   4    1  |0 0>          -0.06826544  0.28470912  0.16057316 -0.16553911 -0.04478204
                          -0.13251701 -0.01007901 -0.06606208 -0.06808967 -0.00064823

   5    1  |0 0>           0.04851011 -0.05629125  0.20293515 -0.02087123 -0.00903511
                          -0.22187560 -0.00929076 -0.06946234 -0.02410001  0.00637303

   6    1  |0 0>           0.00168231 -0.10319486 -0.27270471 -0.07422713  0.00629619
                          -0.21120348  0.09074146  0.03797376 -0.02315988 -0.00745994

   7    1  |0 0>           0.00987316  0.30107124 -0.10217921  0.17155981  0.03883220
                          -0.11780604 -0.04858392 -0.02089941  0.10704717  0.00531775

   8    1  |0 0>           0.11115582 -0.02649293  0.00864541 -0.01896141  0.00204290
                          -0.10506686 -0.11290741  0.21199695  0.10315661 -0.01695704

   9    1  |0 0>          -0.03253074  0.12211026 -0.00781264  0.10059310  0.00998432
                          -0.00752545  0.01209078  0.09754284 -0.13911823 -0.01127602

  10    1  |0 0>          -0.00938617 -0.00205194  0.13461603 -0.08258325  0.74536417
                           0.00000112  0.00000028  0.00000036  0.00000004 -0.00000001

   1    1  |1 1>+          0.09428258 -0.02067250  0.01875392 -0.03063952 -0.00205464
                          -0.08023122 -0.10430578  0.20686638  0.11455481 -0.01993744

   2    1  |1 1>+         -0.24208414  0.03429100  0.05496129 -0.02113884 -0.00623367
                           0.16892554  0.06320771  0.05757862  0.01146114 -0.00775809

   3    1  |1 1>+         -0.11108199  0.01570465  0.05762248 -0.04683793 -0.01179848
                           0.09187008 -0.00565003  0.12410572  0.07256056 -0.01593518

   4    1  |1 1>+         -0.08653811  0.04357295  0.01221986  0.04997799  0.00322675
                          -0.00198008  0.04905935 -0.07876889 -0.10310262 -0.00157229

   5    1  |1 1>+         -0.05687629 -0.00161016 -0.32403318 -0.05013565  0.01308391
                           0.08784374  0.05583384  0.08442707 -0.00241916 -0.01518931

   6    1  |1 1>+         -0.02705405  0.05807857  0.04548694 -0.04732789 -0.00727333
                          -0.04602431  0.00455301  0.01325874 -0.07188991 -0.00498557

   7    1  |1 1>+         -0.02889074  0.08180049  0.09648280  0.09054862 -0.37344779
                           0.20517874 -0.04929594 -0.00737954  0.05633216  0.00978131

   8    1  |1 1>+         -0.04603766 -0.04386847  0.00851590 -0.17033296  0.00280736
                          -0.03650791  0.00298084 -0.15301278  0.36643979  0.03407225

   9    1  |1 1>+          0.02280252  0.56950531  0.03203544  0.04253348 -0.00496763
                          -0.22440982 -0.09202098 -0.06226881  0.06207572  0.00639088

   1    1  |1 0>           0.00949397  0.02594908  0.05863312 -0.19973688 -0.01349946
                           0.03305539 -0.06154099 -0.00252773 -0.09122165 -0.00816942

   2    1  |1 0>           0.00276681  0.01971741 -0.03160567 -0.14187472 -0.00618198
                           0.01123642 -0.00826308  0.00858981 -0.05807604 -0.00959843

   3    1  |1 0>           0.01075257 -0.06126089  0.09216868 -0.03054744 -0.00529820
                          -0.14947292  0.07259532  0.03141995  0.00135944 -0.00848442

   4    1  |1 0>          -0.09621139 -0.05725256  0.01896225  0.02788575 -0.00483864
                          -0.14864814  0.01823938  0.01528870  0.00908731  0.00088656

   5    1  |1 0>           0.08561505  0.03847267  0.04490100  0.05232695  0.00188070
                           0.01560401  0.20796798  0.13573985 -0.17334622 -0.07700315

   6    1  |1 0>          -0.29065367  0.03011102 -0.05125126 -0.04060197  0.00573495
                          -0.05929118  0.09619211 -0.03447757  0.04678166  0.00360881

   7    1  |1 0>           0.06005909  0.04023289  0.04563690 -0.17873284 -0.01592483
                           0.03522734  0.24282358 -0.17859740  0.34966134  0.08473333

   8    1  |1 0>           0.01122390 -0.11943388  0.41007148  0.27386427 -0.06425595
                           0.03513545 -0.01194156 -0.07461939  0.07280943  0.01004250

   9    1  |1 0>          -0.04663751  0.05744327  0.05467336  0.00665500 -0.01152725
                           0.01759315  0.03974674  0.27305620  0.00673942  0.35790980

   1    1  |1 1>-         -0.10098305 -0.04747377 -0.02140812  0.07778822  0.00431957
                          -0.01536969 -0.28499056  0.05669575 -0.12852839 -0.02207518

   2    1  |1 1>-          0.12176785  0.04340166  0.04336632  0.05717401  0.00044428
                           0.00514026  0.26508331  0.15549593 -0.16012162 -0.05016681

   3    1  |1 1>-         -0.04665397  0.00159751  0.01218998 -0.06266315 -0.00427836
                           0.02337811 -0.06038668 -0.04638612  0.05520113  0.00686632

   4    1  |1 1>-         -0.20264003  0.08437788  0.03532454 -0.02489645 -0.00726673
                          -0.00488421  0.09771512  0.25252583  0.07532689 -0.00606758

   5    1  |1 1>-         -0.00821156  0.00922101  0.00479968  0.18665622  0.01004243
                           0.05982938 -0.02741538 -0.02119792  0.07683167  0.01688747

   6    1  |1 1>-         -0.10126512  0.00559064 -0.12393387 -0.07566730  0.01572515
                          -0.11776580  0.01885250  0.06347000 -0.04738463 -0.02010907

   7    1  |1 1>-         -0.00672752  0.08151873 -0.01177494 -0.35955822 -0.02125203
                           0.14100469 -0.12888048 -0.02691631 -0.16419549  0.01314296

   8    1  |1 1>-         -0.16047482 -0.01367101 -0.05711289 -0.01319147  0.00556889
                          -0.05536047  0.05326585 -0.11476159  0.04059410  0.38183722

   9    1  |1 1>-          0.22668603  0.18361558 -0.22946136 -0.13354949  0.01860824
                           0.29774719 -0.04970257 -0.01776436 -0.01391107  0.00307710


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.38218307     -0.00010036      -22.03      0.00000000        0.00      0.0000
     2   1   -462.96999691      0.41208580    90442.38      0.41218616    90464.40     11.2162
     3   1   -462.96940587      0.41267684    90572.10      0.41277720    90594.12     11.2322
     4   1   -462.96912290      0.41295981    90634.20      0.41306017    90656.23     11.2399
     5   1   -462.96565785      0.41642486    91394.69      0.41652522    91416.72     11.3342
     6   1   -462.96446881      0.41761391    91655.66      0.41771426    91677.68     11.3666
     7   1   -462.96393514      0.41814757    91772.78      0.41824793    91794.81     11.3811
     8   1   -462.96381663      0.41826608    91798.79      0.41836644    91820.82     11.3843
     9   1   -462.96379509      0.41828763    91803.52      0.41838798    91825.55     11.3849
    10   1   -462.96375020      0.41833251    91813.37      0.41843287    91835.40     11.3861
    11   1   -462.96367008      0.41841264    91830.96      0.41851299    91852.99     11.3883
    12   1   -462.96361815      0.41846456    91842.36      0.41856492    91864.38     11.3897
    13   1   -462.96361119      0.41847152    91843.88      0.41857188    91865.91     11.3899
    14   1   -462.96355053      0.41853218    91857.20      0.41863254    91879.22     11.3916
    15   1   -462.96345495      0.41862776    91878.17      0.41872812    91900.20     11.3942
    16   1   -462.96327351      0.41880920    91918.00      0.41890956    91940.02     11.3991
    17   1   -462.96117828      0.42090443    92377.84      0.42100478    92399.87     11.4561
    18   1   -462.96064847      0.42143424    92494.13      0.42153460    92516.15     11.4705
    19   1   -462.96003113      0.42205158    92629.61      0.42215194    92651.64     11.4873
    20   1   -462.95991447      0.42216824    92655.22      0.42226860    92677.24     11.4905
    21   1   -462.95961556      0.42246715    92720.82      0.42256751    92742.85     11.4986
    22   1   -462.95926683      0.42281588    92797.36      0.42291624    92819.39     11.5081
    23   1   -462.95827285      0.42380986    93015.51      0.42391022    93037.54     11.5352
    24   1   -462.95710092      0.42498179    93272.72      0.42508215    93294.75     11.5671
    25   1   -462.95146737      0.43061534    94509.14      0.43071570    94531.17     11.7204
    26   1   -462.94051475      0.44156796    96912.97      0.44166832    96934.99     12.0184
    27   1   -462.93957336      0.44250936    97119.58      0.44260971    97141.60     12.0440
    28   1   -462.93925697      0.44282575    97189.02      0.44292610    97211.04     12.0526
    29   1   -462.93881444      0.44326827    97286.14      0.44336863    97308.17     12.0647
    30   1   -462.93844974      0.44363297    97366.18      0.44373333    97388.21     12.0746
    31   1   -462.93778092      0.44430180    97512.97      0.44440215    97535.00     12.0928
    32   1   -462.93771671      0.44436600    97527.06      0.44446636    97549.09     12.0945
    33   1   -462.93766248      0.44442023    97538.97      0.44452059    97560.99     12.0960
    34   1   -462.93754606      0.44453665    97564.52      0.44463701    97586.54     12.0992
    35   1   -462.93641529      0.44566742    97812.69      0.44576778    97834.72     12.1300
    36   1   -462.93433220      0.44775052    98269.88      0.44785087    98291.91     12.1866
    37   1   -462.93015322      0.45192950    99187.06      0.45202985    99209.09     12.3004

 E0 =   -463.38208271 is the energy of the lowest zeroth-order state
 E1 =   -463.38218307 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99988564  0.00026417 -0.00037774 -0.00007929  0.00040479  0.00110421 -0.00024964  0.00024908
                                0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.00000026 -0.01488625  0.00097674 -0.00687772 -0.02307545 -0.00161796 -0.04329852  0.02681375
                               -0.00000002  0.02025227  0.00353703 -0.00842114  0.13601589  0.01133957  0.08456247 -0.00364624

  3  1     3    1  |0 0>       -0.00000019 -0.00690394  0.00025618  0.00199645 -0.01874076 -0.01283267  0.01749181  0.10005750
                               -0.00000039 -0.00101640 -0.00134654  0.00004747  0.05733222 -0.09409857  0.14051415  0.06104205

  4  1     4    1  |0 0>        0.00000118 -0.03321822  0.00692772 -0.01608433 -0.05406370 -0.21337380 -0.06660930 -0.02179716
                               -0.00000001 -0.00540286 -0.00025322 -0.00252703 -0.02246120  0.00613741 -0.10934577  0.02066209

  5  1     5    1  |0 0>        0.00000001 -0.01013982 -0.02366795  0.00287338 -0.12678018  0.13085246  0.15840355  0.05729558
                               -0.00000021 -0.00639513 -0.00297846 -0.00195853 -0.02074367  0.10562254 -0.01751960  0.02034544

  6  1     6    1  |0 0>       -0.00000004  0.01615693  0.01714328 -0.00363908  0.07292737  0.00831985  0.00461768  0.13111213
                                0.00000017 -0.00138559  0.00095168 -0.00054358 -0.04905983  0.03523884 -0.02962790  0.01404543

  7  1     7    1  |0 0>       -0.00000098 -0.05801608  0.06044199  0.16022850  0.09964291  0.04055837  0.01255233 -0.00023172
                                0.00000001  0.03407381 -0.01570886  0.05127844 -0.05776176 -0.00736764  0.00590287 -0.00056372

  8  1     8    1  |0 0>       -0.00000009  0.00584431  0.00409156 -0.00363698  0.00282053 -0.00125137 -0.00952692  0.00584184
                                0.00000042 -0.04566764 -0.17442418  0.03920450  0.10879625 -0.07196118  0.01258747 -0.00448335

  9  1     9    1  |0 0>       -0.00000018 -0.02499171  0.02904627  0.05404647  0.06867600  0.00449993 -0.01148665 -0.00217722
                               -0.00000001 -0.10911224  0.02004420 -0.12155142  0.10074452  0.09471731 -0.02989661 -0.00489505

 10  1    10    1  |0 0>        0.00035621 -0.00554979  0.00810226  0.00171794 -0.01000012 -0.02864147  0.00662301 -0.00664183
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000003 -0.00000001 -0.00000001 -0.00000001

 11  1     1    1  |1 1>+       0.00000056 -0.04427419 -0.02013644  0.01744510 -0.01528235 -0.00357050  0.00754244 -0.00246304
                                0.00000078  0.28014661  0.83541993 -0.16862221 -0.14925640  0.07090909 -0.00572846  0.00276039

 12  1     2    1  |1 1>+      -0.00000124  0.00038867 -0.00065462 -0.00034628  0.00465881 -0.03682485 -0.25164094  0.03447622
                                0.00000012  0.01617741 -0.00181584  0.00679106  0.09475864 -0.03485669  0.39580857 -0.06728595

 13  1     3    1  |1 1>+       0.00000043 -0.00264843  0.00132224 -0.00189074  0.03645749  0.00367524 -0.06089598 -0.54502132
                                0.00000051  0.02178133  0.01545913  0.00306485  0.09824522 -0.12674821 -0.08274041  0.03490520

 14  1     4    1  |1 1>+      -0.00000070  0.00936303  0.00197223 -0.00211890  0.06544415  0.03984703  0.18560673 -0.19022898
                               -0.00000032  0.06021758  0.00807171 -0.00713969  0.23824652  0.11352003  0.24910068 -0.02411704

 15  1     5    1  |1 1>+      -0.00000032 -0.06874806 -0.06971106  0.01618660 -0.31043536  0.39108116  0.21732721 -0.04262631
                               -0.00000802  0.00103231 -0.00054425 -0.00037422  0.10898453  0.03829336  0.02054918 -0.04230074

 16  1     6    1  |1 1>+      -0.00000352  0.00268740 -0.00234991  0.00861391  0.03451350  0.19277205 -0.14557471  0.10343591
                                0.00000037  0.01143198  0.00022367  0.01833145 -0.02684304 -0.05949822  0.17044557 -0.09907055

 17  1     7    1  |1 1>+       0.00870789  0.02742603  0.04105202 -0.00865930  0.08419058 -0.08771882 -0.04377287 -0.09409786
                                0.00000818  0.02476147 -0.00229487  0.01461791  0.00265020 -0.02424106 -0.00161198 -0.01321789

 18  1     8    1  |1 1>+      -0.00060564  0.03434235 -0.02707373 -0.03073076  0.01279514 -0.03046974  0.00480154 -0.01367330
                               -0.00000107  0.19495080 -0.06167496  0.14572140 -0.03875523  0.11140321 -0.08364765  0.00441808

 19  1     9    1  |1 1>+       0.00000053 -0.11804509  0.08593643  0.18480323  0.06107036 -0.03923588 -0.00961991 -0.00055380
                               -0.00000011  0.03864035 -0.01583342  0.03595792 -0.00173225  0.01905379 -0.01646381  0.00137261

 20  1     1    1  |1 0>        0.00000012  0.64311546 -0.12737775  0.56160673 -0.18560414 -0.08458728  0.02436086  0.00332465
                               -0.00000025 -0.09843711  0.08850103  0.12606405  0.07844377  0.00192342 -0.01458348 -0.00021197

 21  1     2    1  |1 0>        0.00000050  0.05145849  0.01313455 -0.00715071  0.19658464 -0.03925279  0.00176067  0.06689415
                               -0.00000202 -0.00900891  0.00254299 -0.00289299 -0.08745878  0.00575859  0.24754596 -0.18368692

 22  1     3    1  |1 0>        0.00000023  0.01451504 -0.00142692 -0.00364967  0.08072367  0.09411146  0.06134560  0.03287424
                               -0.00000388 -0.01262822 -0.00348372 -0.00245661 -0.09709548  0.08528248 -0.07639726  0.13911432

 23  1     4    1  |1 0>       -0.00000552 -0.00719417  0.00522684 -0.00243963 -0.08377299  0.17161338  0.26083636 -0.15623715
                               -0.00000205 -0.00091626  0.00022975 -0.00306195  0.03137311  0.05089419  0.27120813  0.07052910

 24  1     5    1  |1 0>       -0.00000035  0.02137291  0.00441688 -0.01406354  0.15733959 -0.01949894 -0.00180072  0.01524668
                               -0.00006407  0.14094840 -0.02439112  0.05790162  0.33146700  0.49088613 -0.17915095  0.00184828

 25  1     6    1  |1 0>        0.00000611  0.01250578  0.00369740  0.00559326  0.08108394 -0.10258004  0.02381109 -0.08674031
                                0.00000043 -0.01041063  0.00850489  0.00461899 -0.04002681 -0.24829835  0.08199116  0.16108298

 26  1     7    1  |1 0>       -0.00000246 -0.04782636 -0.00769135 -0.03066931 -0.04610176  0.03576252 -0.02011365  0.00070207
                                0.00004807 -0.22334471  0.08609008  0.14311821 -0.14343167  0.01363432  0.00164072  0.00311443

 27  1     8    1  |1 0>       -0.00004843 -0.13686761 -0.24815720  0.03454967 -0.19793753  0.15494570 -0.05092685 -0.00517252
                               -0.00000257  0.00711727 -0.01613632 -0.00955520  0.05905030  0.03592468 -0.03694037  0.02380301

 28  1     9    1  |1 0>       -0.00000810 -0.01339774 -0.00427823 -0.00243979 -0.06023104  0.02988312 -0.00809334  0.00039277
                               -0.00872795 -0.01650080  0.00333307  0.00364365 -0.04704462 -0.05098506  0.02725364 -0.03638117

 29  1     1    1  |1 1>-       0.00000002 -0.11235287  0.04891307 -0.13976566  0.05067724  0.00547287 -0.00654847  0.00195518
                                0.00000317 -0.47367297  0.31275355  0.68050612  0.10763189  0.02635475  0.00862750  0.00009872

 30  1     2    1  |1 1>-       0.00000004 -0.00676078 -0.00335968  0.00739494 -0.09637319  0.03490125 -0.08010756  0.00617089
                               -0.00000530 -0.05774732  0.00173969 -0.03280488 -0.23857387 -0.16931952  0.24507296  0.01207419

 31  1     3    1  |1 1>-       0.00000004 -0.01133505  0.00040524 -0.00267823 -0.03167465  0.03099154 -0.11325580  0.08045623
                                0.00000049  0.00359517 -0.00102659 -0.01338618 -0.01566926 -0.13039481 -0.09619619  0.09634158

 32  1     4    1  |1 1>-       0.00000024  0.00699348 -0.00056027  0.00191390 -0.00037082 -0.03976395  0.01666467  0.04036672
                               -0.00000262 -0.00325656 -0.02961406  0.00057776 -0.05423766  0.39269351  0.08255064  0.10896382

 33  1     5    1  |1 1>-      -0.00000003  0.08678939  0.04591412 -0.03715277  0.42774828 -0.02932500  0.27803063  0.05489076
                                0.00000875 -0.00754940  0.00092907 -0.00585120 -0.12726328 -0.04363035  0.09537911 -0.02629957

 34  1     6    1  |1 1>-      -0.00000043 -0.01751663 -0.01752426  0.00161419 -0.11687388  0.12362053 -0.05781000 -0.07765121
                               -0.00001373 -0.00984022 -0.00174128  0.00373802 -0.01863295  0.01953099  0.18587531  0.65157359

 35  1     7    1  |1 1>-       0.00000022 -0.23638877  0.01372633 -0.13279954 -0.09798573  0.02377666 -0.05237743  0.01077660
                               -0.00060145  0.03569108 -0.02460724 -0.03270165  0.02449554  0.04092740 -0.02052802  0.01610001

 36  1     8    1  |1 1>-      -0.00000014  0.01826229  0.00140982  0.00693716  0.06178608  0.00029985  0.00757882  0.01238795
                               -0.00870879  0.06763560  0.00048213 -0.01652407  0.17287924  0.08328882 -0.09731575 -0.03054695

 37  1     9    1  |1 1>-      -0.00000050  0.05745441  0.21773528 -0.04901087 -0.12226909  0.09101414 -0.03470177 -0.00882668
                               -0.00000026  0.02169741  0.00141506 -0.00865165  0.04449806  0.03555228 -0.02441656  0.01860261


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00009213  0.00023336 -0.00013579  0.00013822  0.00002024 -0.00042122 -0.00020728  0.00031936
                                0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>        0.07680348  0.07392889 -0.21328948  0.04107748  0.40490844  0.18568649  0.15697393 -0.07876626
                                0.05424204 -0.00625335  0.08925199  0.12988362  0.15133057 -0.09762738  0.22405199 -0.12024369

  3  1     3    1  |0 0>        0.03324264 -0.05178665 -0.05393418  0.21463538 -0.04063420  0.00708014  0.14572000  0.21536250
                                0.05655341 -0.25268093 -0.00403196  0.05091738  0.13957559  0.18029226 -0.14480194  0.41069600

  4  1     4    1  |0 0>       -0.02926619  0.16743430 -0.17565644 -0.07234972 -0.29120541  0.18737857  0.33959922  0.11310354
                                0.02609016  0.02075793  0.22588593 -0.11090527  0.06758855 -0.06099764 -0.04963023 -0.06551795

  5  1     5    1  |0 0>        0.00216099 -0.13562084 -0.09685424  0.30758919 -0.13306563 -0.17066756  0.18324355  0.07601996
                               -0.00860440 -0.03530436 -0.14599728  0.10080409 -0.00559332 -0.17950560  0.00049017 -0.28615721

  6  1     6    1  |0 0>       -0.02436566  0.13669012  0.06270212  0.35548386 -0.11493986  0.37813806 -0.19177769 -0.20392798
                               -0.01658893  0.04483713  0.05326966  0.14903383 -0.02352313  0.08682351 -0.10238701 -0.08091435

  7  1     7    1  |0 0>       -0.00873020 -0.00752361  0.00711224 -0.00409941 -0.00320148  0.00597405  0.01812810 -0.04704068
                               -0.00113062 -0.00235639 -0.00323546  0.00111790 -0.00163199  0.00240061  0.00287296  0.00931943

  8  1     8    1  |0 0>       -0.01292286 -0.00481660  0.00179426  0.00032663 -0.00320522 -0.00436873 -0.01253330 -0.03241498
                                0.00328698  0.01367350  0.00630734  0.00203650  0.01583977 -0.00158770 -0.00792281 -0.06499554

  9  1     9    1  |0 0>        0.03135439 -0.00139789  0.00540902 -0.00208634  0.00042913 -0.00420042 -0.01163487  0.00226278
                               -0.00566298  0.03350341 -0.02822660  0.01999863  0.00128633 -0.04412415 -0.02064541  0.04977962

 10  1    10    1  |0 0>        0.00245890 -0.00624028  0.00364377 -0.00371736 -0.00054437  0.01136210  0.00561410 -0.00871898
                               -0.00000001  0.00000004  0.00000007  0.00000001 -0.00000001  0.00000008 -0.00000002  0.00000006

 11  1     1    1  |1 1>+       0.00906195  0.00250878  0.00114110 -0.00057718  0.00175918  0.00487108  0.00778683  0.01999214
                               -0.00285355 -0.00956743 -0.00231226 -0.00068493 -0.00935235  0.00227291  0.00875990  0.04169163

 12  1     2    1  |1 1>+      -0.13938508 -0.09952046 -0.23724210  0.12066357 -0.00113821  0.10498290  0.14028075  0.05906278
                                0.02909695 -0.17582588 -0.26501751 -0.05436224 -0.00808083  0.13016502 -0.32215671  0.23779432

 13  1     3    1  |1 1>+       0.18844604 -0.19685922  0.04721164  0.27807842 -0.06547249  0.04129559  0.01601618  0.05438356
                                0.04751475 -0.16059449  0.12731318  0.12687805  0.15636378  0.10554177  0.01142151  0.13040284

 14  1     4    1  |1 1>+      -0.05745947  0.36295003  0.21841358  0.11971371  0.22429271  0.01434555  0.11536351  0.03825952
                                0.21999596  0.05605258 -0.14288677 -0.10800800  0.07086861  0.10487578  0.10785297 -0.14044283

 15  1     5    1  |1 1>+      -0.00400357 -0.28426617  0.03788307 -0.08251244 -0.06463636 -0.00093980  0.37705371  0.13651568
                               -0.11300807  0.00896037 -0.08832854 -0.02609372 -0.01129196 -0.11650387  0.00858609 -0.09707587

 16  1     6    1  |1 1>+       0.55489842  0.00526003  0.13023116  0.02693708 -0.10006615 -0.14427200 -0.12570393  0.07587896
                                0.12966609  0.21861795 -0.17409223  0.00341301 -0.07013651 -0.01463475 -0.05083724  0.01203918

 17  1     7    1  |1 1>+       0.01298412 -0.02784191  0.00400889 -0.09066367  0.02413381 -0.02339288  0.02574550  0.00983496
                                0.00296405  0.00755697  0.00001442 -0.03413565 -0.00235566 -0.00881759  0.01192615  0.00076492

 18  1     8    1  |1 1>+      -0.03098218 -0.00257817  0.02003245 -0.00721199 -0.08016300 -0.00469461 -0.00698412  0.01871210
                               -0.02852100  0.01908632 -0.01607531 -0.00517864 -0.01401416 -0.03647954 -0.04198968  0.04064302

 19  1     9    1  |1 1>+       0.00232035  0.02974453 -0.04074827 -0.00862916 -0.01804866  0.04185470  0.06044385 -0.01371607
                                0.00675127  0.00778992  0.03893002 -0.00500640  0.02155079 -0.02063800  0.00641759  0.00074672

 20  1     1    1  |1 0>        0.00557147 -0.02434924  0.02063207 -0.01281161 -0.00256791  0.02838586  0.01799534 -0.03139792
                                0.02399658 -0.00015396  0.00356471  0.00034136  0.00335918 -0.00377927 -0.00493676  0.01126307

 21  1     2    1  |1 0>       -0.21043036 -0.23531693  0.15172028  0.08558735 -0.12145371 -0.12451887  0.14939300 -0.06926039
                               -0.07508561  0.31573811  0.11154405  0.12293495  0.27133665 -0.02746439  0.17514010  0.07379111

 22  1     3    1  |1 0>        0.03363287 -0.07157410 -0.04497158 -0.26691335 -0.13790611  0.11829173 -0.07996236 -0.09357123
                                0.16499488 -0.17397159 -0.31673895  0.03203208  0.53941957  0.08399626 -0.01445123 -0.13569409

 23  1     4    1  |1 0>       -0.04559603  0.12822549 -0.32047863 -0.11817336 -0.19663498 -0.09073120 -0.19120538 -0.19932968
                                0.20156468  0.06007887  0.20374709  0.10990156 -0.03760295 -0.12063844 -0.00627666  0.18340806

 24  1     5    1  |1 0>        0.01686778  0.00393116  0.02743871 -0.00905818  0.02913513 -0.01362345 -0.01130868  0.04425402
                               -0.05336976  0.06814409 -0.04720185  0.09741675  0.04213342 -0.22213731 -0.14148818  0.22153845

 25  1     6    1  |1 0>       -0.10979915  0.09680201  0.12826385 -0.17590632 -0.02502097  0.12323310  0.02069959  0.25859701
                                0.01314284  0.05579954 -0.17103475  0.53333484 -0.13123501 -0.22400143 -0.08545064 -0.04970551

 26  1     7    1  |1 0>        0.00474687  0.01265666  0.03208488  0.00014597  0.01658897 -0.02578845  0.00775522  0.02404588
                               -0.00006853 -0.02576691  0.03272432  0.01633976  0.02002300 -0.04857549 -0.07081310  0.06004341

 27  1     8    1  |1 0>       -0.01686051  0.02974492 -0.01394454 -0.00899540 -0.04700614 -0.02305265  0.02873513  0.06555584
                               -0.01690819 -0.00527261 -0.01710327  0.03378228 -0.00829834 -0.02292504 -0.00425331 -0.01617888

 28  1     9    1  |1 0>       -0.00557208  0.01257500  0.02265407  0.01632927 -0.00680512  0.03314082 -0.01212064  0.04111419
                                0.00732074 -0.05737158 -0.01288780 -0.04141218  0.00557836 -0.05066505  0.05809103 -0.00135278

 29  1     1    1  |1 1>-       0.00009624  0.00052623  0.00242702  0.00101518  0.00061525 -0.00203401 -0.00286124 -0.00473822
                               -0.00086030 -0.00571355  0.00405880 -0.00093160 -0.00044124  0.00167830  0.01077025 -0.02292456

 30  1     2    1  |1 1>-       0.03304762  0.01436511  0.24801950 -0.05032096  0.10713438 -0.09058697  0.05473838 -0.14459359
                                0.05364244 -0.26402080  0.31569727 -0.02757661  0.08494953 -0.07347618 -0.27554733 -0.25707761

 31  1     3    1  |1 1>-      -0.16246636 -0.23918177  0.01136436  0.02526579 -0.02275390  0.09824256  0.03416925  0.00430467
                                0.57743590  0.08307432 -0.00032794 -0.05879631 -0.20401847  0.12983911  0.20761313 -0.04693585

 32  1     4    1  |1 1>-       0.13566883 -0.10179060 -0.09001548 -0.09264084  0.04587966 -0.11781589  0.11078132 -0.01149679
                               -0.04653350  0.02137845  0.17818986  0.16003483 -0.11590683  0.56866349 -0.01617463 -0.13023437

 33  1     5    1  |1 1>-      -0.02087019 -0.24885289  0.05738079 -0.02467975 -0.06516714  0.00463996  0.29637407 -0.26632351
                               -0.00092552  0.00846963 -0.07771695  0.01853839  0.07214247 -0.05003321  0.06200900  0.04796639

 34  1     6    1  |1 1>-      -0.01564437  0.04605440 -0.05314584  0.03541430 -0.05302953 -0.05695283  0.00679196 -0.13636995
                               -0.08247072  0.19736323  0.02935575 -0.09946599  0.02129325 -0.10414567  0.04146831  0.12736003

 35  1     7    1  |1 1>-      -0.02232391 -0.01338972  0.00927160 -0.02570196 -0.01536392  0.00454821 -0.01950813 -0.01002776
                                0.05937555  0.00767945 -0.01621063  0.00961027  0.08134498  0.00062121 -0.01152273 -0.00492578

 36  1     8    1  |1 1>-       0.00219596 -0.01793322 -0.02446060  0.01917627  0.00926935 -0.02721580 -0.00131963 -0.03849903
                               -0.00638175  0.05484887  0.00180358 -0.03418972  0.02067623 -0.01844400 -0.05390875  0.04523060

 37  1     9    1  |1 1>-      -0.01307365  0.03985477 -0.00454501 -0.00793104 -0.03093749 -0.02633765  0.02658155 -0.00252744
                               -0.00522928 -0.00266925 -0.01722666  0.03665189 -0.00480893 -0.02059721  0.00449035  0.02047954


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00057056  0.00078932  0.00033969 -0.00038838  0.00020088  0.00011872  0.00161295  0.00010346
                                0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>        0.08693145 -0.06183410 -0.01153275 -0.09053586 -0.03970988  0.15003489 -0.08309039  0.08735521
                               -0.07559934  0.24332147  0.09437962  0.05311224  0.09743804  0.20942029 -0.17656212 -0.03889688

  3  1     3    1  |0 0>        0.05287157 -0.07953208 -0.14910933 -0.07372850  0.02928313  0.10560370  0.07163511 -0.09544371
                                0.04102987  0.16535773  0.15173462  0.05884435  0.05649857 -0.04593048  0.15648187  0.19026800

  4  1     4    1  |0 0>       -0.09566821  0.04735579  0.05106040 -0.00725507 -0.28167089 -0.05416714 -0.18828631  0.12295786
                               -0.01357790 -0.09404607 -0.02214001  0.03491255  0.13598902 -0.06035986  0.07690742  0.11899516

  5  1     5    1  |0 0>        0.15120146 -0.20511631 -0.00736642 -0.20189123  0.13548238  0.01721135 -0.20340064  0.11861220
                                0.11821051 -0.11561024 -0.07502030  0.03787238 -0.07449384 -0.08630876  0.00390452  0.09161940

  6  1     6    1  |0 0>       -0.06636042 -0.10658453 -0.03268098  0.09234743 -0.08878885  0.29552570  0.17264553  0.14348979
                                0.00606965 -0.04701591 -0.07892341  0.00294503 -0.03335750 -0.14397527 -0.04305610  0.00770838

  7  1     7    1  |0 0>        0.44800010  0.12222880  0.16793487 -0.24605718 -0.25772306  0.03821595  0.20045317 -0.12089918
                               -0.00788679 -0.13414715  0.01635686 -0.01694462  0.18104684 -0.05199689  0.06889585 -0.10332318

  8  1     8    1  |0 0>       -0.11219596  0.17494393 -0.41085842 -0.21989497  0.02488657  0.01441237  0.03225673  0.05752201
                               -0.05539717 -0.31268011  0.31885520  0.09483262  0.00049142 -0.03919684 -0.07416327 -0.13433397

  9  1     9    1  |0 0>       -0.03350487  0.12949012 -0.08066944 -0.02236114 -0.12265268 -0.07395721  0.06846068 -0.10778297
                                0.32059901  0.05143702 -0.21658284  0.48927408 -0.02993236  0.03129959 -0.19124696  0.07012602

 10  1    10    1  |0 0>       -0.01714396 -0.02433211 -0.01079679  0.01241725 -0.00652099 -0.00392405 -0.05621348 -0.00385176
                               -0.00000002  0.00000004  0.00000004  0.00000000  0.00000001  0.00000007  0.00000003  0.00000006

 11  1     1    1  |1 1>+       0.01861129 -0.01550736  0.01277902  0.00546900 -0.00026441 -0.00548766 -0.00027981  0.01507303
                                0.00758340  0.03891866 -0.00669112 -0.00172756  0.00089821 -0.00211076 -0.01178460 -0.04192298

 12  1     2    1  |1 1>+       0.02800446 -0.02530320  0.13096283  0.05540338 -0.00518207 -0.02644549 -0.03019489  0.04039282
                                0.01695178  0.02278941 -0.11125898 -0.04261575 -0.01799637  0.04060854 -0.06544283 -0.07036094

 13  1     3    1  |1 1>+      -0.04631160  0.10408954 -0.12474886 -0.07005664  0.00645914 -0.03798165 -0.01453569  0.04234379
                               -0.03611845 -0.12386062  0.11074853  0.02084996 -0.00453818  0.00252983 -0.06548618 -0.12399258

 14  1     4    1  |1 1>+      -0.00473156  0.02278980 -0.04926673  0.01550125 -0.04372111 -0.06403242  0.02926191 -0.07996011
                                0.03728669  0.06453564 -0.09167923  0.19692712 -0.03370833 -0.02764494 -0.04687791  0.13996741

 15  1     5    1  |1 1>+       0.00531003 -0.16264722 -0.04940860  0.06502169 -0.06399107  0.05122700  0.07289993 -0.13915408
                                0.05337939 -0.05188309 -0.00758554 -0.00735090  0.00662115  0.00021981 -0.01640175 -0.11369369

 16  1     6    1  |1 1>+      -0.24777477 -0.08270452 -0.04727294  0.06565714  0.03095728  0.02464042 -0.07288822  0.07057028
                               -0.04964272  0.09270949  0.03819129 -0.04154668 -0.00372717  0.04881284 -0.01460602  0.01674643

 17  1     7    1  |1 1>+       0.03935717 -0.31475183 -0.07892428 -0.03986445 -0.00623288  0.42004986  0.03163933  0.26912910
                                0.09976479 -0.09574980 -0.13943684  0.05648339 -0.09643119 -0.24487888 -0.07365843  0.04998720

 18  1     8    1  |1 1>+       0.04180863  0.03375271 -0.06395947 -0.09167383  0.06026047  0.15390810 -0.01321528  0.02924045
                                0.15349061  0.29148123  0.02728008  0.24789179  0.03713901  0.32851236 -0.32530290 -0.19455626

 19  1     9    1  |1 1>+      -0.04690239 -0.04957271 -0.13159273  0.19832999  0.52086050 -0.06765596  0.12868254 -0.13689477
                                0.03951220  0.02047039 -0.02295144 -0.07791992 -0.32623294 -0.01727741 -0.02489590 -0.04978449

 20  1     1    1  |1 0>       -0.07410980  0.00850807  0.01163947 -0.00084526 -0.00176951  0.00247984 -0.03130170  0.05469702
                               -0.02767835  0.02465716 -0.00108086  0.00102068  0.00342026  0.00559053 -0.00684943  0.03918871

 21  1     2    1  |1 0>        0.06163515  0.12052798 -0.06556614  0.23917303 -0.02700267  0.01765146 -0.07787346  0.13187898
                               -0.00343321  0.00832940  0.05195940 -0.00372448  0.04196186  0.03662430 -0.01485470  0.09474251

 22  1     3    1  |1 0>       -0.05316339  0.09824693  0.04315525  0.01792834  0.01407533  0.09301424 -0.09779309 -0.04208495
                               -0.04061893  0.01942450  0.00692309  0.02774393 -0.02814587 -0.06725238  0.00758386  0.00435698

 23  1     4    1  |1 0>       -0.02705608 -0.09840471  0.15114897  0.03257613  0.02259050  0.00454354  0.01630094  0.01693365
                                0.05669980 -0.07032441  0.17303657  0.08493758 -0.01070759  0.00049232 -0.02667931  0.01137625

 24  1     5    1  |1 0>        0.00970504 -0.00663459 -0.01970956 -0.00191460 -0.14479277 -0.00768748 -0.03728211  0.07751127
                               -0.06579656  0.00395483  0.06957260 -0.12525630 -0.20288498  0.03316185  0.12526780 -0.05712584

 25  1     6    1  |1 0>        0.03073627 -0.02113100 -0.02662789  0.01753349 -0.02880694 -0.06455470 -0.01491754  0.02121816
                               -0.02547877  0.09971103  0.02560715  0.05226136 -0.03177972 -0.07220259  0.05683280 -0.09829489

 26  1     7    1  |1 0>        0.08397508 -0.07638511 -0.04030849 -0.01831041 -0.15954936 -0.06587076  0.02186574 -0.08862225
                               -0.39018386 -0.07222917 -0.01384798  0.03278627 -0.26575006  0.03454787 -0.31371215  0.24405088

 27  1     8    1  |1 0>        0.03958310  0.37282047  0.06136682  0.02526113  0.09958273 -0.02421740  0.26248573  0.32801024
                               -0.04473969  0.15551132  0.00050564 -0.04510671  0.01161514 -0.09144231 -0.05932602  0.14451492

 28  1     9    1  |1 0>        0.01419693  0.05040717  0.06355757  0.02499901  0.00063965  0.12903308  0.06149656  0.13203723
                               -0.10807507 -0.12164385 -0.05904110  0.24492140 -0.21669734  0.37831055  0.41784738 -0.03376898

 29  1     1    1  |1 1>-      -0.00336653  0.01540502  0.00500528 -0.00497096 -0.00044294  0.00087320  0.00783675 -0.02117536
                                0.06116153  0.01081338  0.00434382 -0.00739886 -0.00392273 -0.00575723 -0.01279875  0.02144077

 30  1     2    1  |1 1>-      -0.01544777  0.04043638  0.00407682 -0.03235283 -0.06979243  0.00640826  0.00197275 -0.05245354
                                0.21614700  0.05225777  0.04615866 -0.05980931 -0.12062217  0.02636999 -0.09897084  0.08713335

 31  1     3    1  |1 1>-      -0.00926336  0.03830799 -0.00995114  0.00192907 -0.02063369  0.00092733 -0.00343084  0.04959929
                                0.26590611  0.06770821  0.05112632 -0.06908461 -0.01611201  0.01209229  0.07634782 -0.06892356

 32  1     4    1  |1 1>-      -0.01297116 -0.00401925 -0.02167626  0.00023275 -0.01221783 -0.05997719 -0.01630731  0.01025722
                               -0.00367613 -0.01631954  0.00060878 -0.02854377  0.03184531 -0.11708475 -0.11395448 -0.07605735

 33  1     5    1  |1 1>-      -0.24349352  0.07856812  0.08855792 -0.14886318  0.00874874 -0.05793646  0.11735939  0.09403024
                               -0.10397859  0.09347323 -0.02880891 -0.00412493 -0.01331274  0.00518922  0.00262678  0.03500695

 34  1     6    1  |1 1>-       0.00063860  0.13400560 -0.08206514 -0.03764282  0.02124076  0.02622317  0.08400589  0.12734274
                               -0.02055170  0.03400366 -0.13633063 -0.08432803  0.00834214  0.03070355 -0.00194138  0.06489978

 35  1     7    1  |1 1>-      -0.17457441  0.22684893  0.22913712 -0.20356673  0.08840509  0.28469480 -0.17161022 -0.22481847
                               -0.13569699  0.09498585 -0.02695388  0.08682164 -0.11671042 -0.24753810  0.02427860 -0.06908128

 36  1     8    1  |1 1>-      -0.09148634  0.04965873  0.06188040 -0.05056619  0.09227264  0.11854904  0.00147242 -0.18025826
                                0.21694506 -0.11464390  0.02399370 -0.32791644  0.23704547  0.06040457 -0.20914248  0.31721203

 37  1     9    1  |1 1>-      -0.01046670  0.05292519  0.35493221  0.11368858  0.08685587 -0.07008617  0.20945568  0.24499627
                                0.03838678 -0.01990870  0.38690582  0.16497854 -0.02793247 -0.10274399 -0.11247831  0.12482535


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01153626  0.00009293 -0.00004042  0.00000416 -0.00001239  0.00005799 -0.00000757  0.00001344
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.01894412 -0.07727074 -0.02362501  0.02165978 -0.12549346  0.04659160 -0.17861035 -0.22521758
                               -0.00404172  0.07917695 -0.05887756  0.05542145  0.08013256 -0.04341272  0.25990351  0.30879637

  3  1     3    1  |0 0>        0.01252598 -0.06587765 -0.00281407 -0.04929380 -0.05061553 -0.00169956  0.25635861 -0.14222214
                                0.04231361 -0.05788368 -0.05624224  0.03361726  0.01633207 -0.19416682  0.02337307 -0.17015712

  4  1     4    1  |0 0>       -0.07994105 -0.21166374  0.04640804  0.02735377 -0.22660437  0.16838333  0.04319587  0.09909091
                                0.00563426  0.05088684  0.00329772  0.03552614  0.03350347  0.09284601 -0.08603204 -0.07636259

  5  1     5    1  |0 0>       -0.00875253  0.05312852 -0.11462251 -0.01496314  0.06147285 -0.22509820 -0.32782526  0.11118464
                                0.00768090 -0.01585918  0.00642361  0.01814205  0.01410179 -0.03810173  0.07275621 -0.18460756

  6  1     6    1  |0 0>        0.00675439  0.05223965  0.11169940 -0.06057702  0.05008493  0.32494280 -0.17482324  0.15061764
                               -0.01547679 -0.02262305  0.01439804 -0.00817377 -0.03547551 -0.01633145  0.05590912 -0.03008497

  7  1     7    1  |0 0>        0.09010506  0.34723887 -0.30155282  0.12886640 -0.13654552  0.06487885 -0.02932237  0.00927681
                               -0.00149018 -0.12600793  0.02490059  0.07293919 -0.05775173  0.01297161 -0.01728057  0.05172183

  8  1     8    1  |0 0>        0.00938487 -0.02397571  0.10565728  0.44462740  0.09608892  0.00371802  0.03262013 -0.04260690
                               -0.03758460  0.02250894 -0.17727931 -0.14692438 -0.00925463  0.22922958  0.02419571 -0.13147764

  9  1     9    1  |0 0>        0.01583114  0.04117554 -0.06756851 -0.22241901  0.21118852  0.04753177  0.03936834 -0.01031204
                               -0.01128636 -0.04864881 -0.25922504  0.07856101  0.39485338  0.19553310  0.04486241 -0.08038273

 10  1    10    1  |0 0>        0.63418527 -0.04722702  0.06616986 -0.02664720 -0.02588026  0.05791815 -0.00386574  0.00656266
                                0.00000001 -0.00000021 -0.00000042  0.00000209 -0.00000074  0.00000097 -0.00000039  0.00000124

 11  1     1    1  |1 1>+      -0.00073801  0.02168486  0.04061467  0.11871572  0.03045603  0.00311754  0.04204786 -0.04300503
                               -0.02739392  0.08248301  0.03037177 -0.05163670 -0.00674172  0.17379411  0.01379414 -0.10530918

 12  1     2    1  |1 1>+      -0.00203253  0.02192152  0.03010648  0.22892660  0.08162153 -0.01047772 -0.24564928  0.13363424
                               -0.01591741 -0.01135947 -0.09892450 -0.07767289 -0.01301147  0.15057298 -0.00956768  0.13191830

 13  1     3    1  |1 1>+      -0.01396400  0.09310794 -0.05923422 -0.32199981 -0.04244208 -0.00465465 -0.09719926  0.04985571
                               -0.03833815  0.14035046  0.29079079  0.07777011 -0.00607198  0.09112961 -0.01449059  0.05942141

 14  1     4    1  |1 1>+       0.00665728  0.10617897  0.06373662  0.17500477 -0.06127688  0.00187121  0.08166200  0.12302300
                               -0.00343771  0.25251293  0.20030215 -0.08078553 -0.20165261 -0.08860743 -0.11155740 -0.16392986

 15  1     5    1  |1 1>+       0.00442954 -0.02953169  0.12270430 -0.00675414 -0.03216679  0.31152677  0.16493086 -0.00654252
                               -0.00352565  0.01734030  0.00783342 -0.01782956 -0.02516779  0.03721256 -0.03459720  0.14092556

 16  1     6    1  |1 1>+      -0.00027815  0.07210234 -0.27834644  0.12540090 -0.33827110  0.16169417  0.00292700  0.02399762
                                0.00038610 -0.00829767 -0.04969419  0.15302788  0.09848890  0.09198820 -0.00697017 -0.04247393

 17  1     7    1  |1 1>+       0.43063679 -0.03312409 -0.01085155  0.03084672 -0.04631491 -0.09443568  0.20985287 -0.11193287
                               -0.01821110 -0.00072698  0.00109627 -0.00350136 -0.00124221  0.02872961 -0.07253940  0.08005453

 18  1     8    1  |1 1>+      -0.03577711 -0.10760263 -0.01582208  0.00205395 -0.10689191 -0.01043114  0.04815887  0.15631511
                               -0.00200274 -0.29650530  0.04306653 -0.00486649 -0.20086059 -0.01192432 -0.21807960 -0.08484824

 19  1     9    1  |1 1>+      -0.00623981  0.00107253  0.07971359 -0.02624828  0.02573586  0.06867706 -0.06003996 -0.00771037
                               -0.00116407 -0.02137364  0.02466756 -0.04471239 -0.04347171  0.00955127  0.01822328  0.13289824

 20  1     1    1  |1 0>       -0.00695058  0.14179940 -0.08151780  0.01203504  0.18820197  0.06763684  0.04344852 -0.07464787
                               -0.00540904 -0.05540924 -0.01401670  0.06488660 -0.12254286 -0.02255002 -0.03155149  0.00421949

 21  1     2    1  |1 0>       -0.00570790  0.31209192  0.20326790 -0.06899596 -0.19934187 -0.14174265  0.02043969 -0.01007728
                               -0.00841531 -0.12585379 -0.05487319 -0.20820393  0.08915103  0.00876841  0.00578101 -0.00354315

 22  1     3    1  |1 0>       -0.00484823  0.04265974 -0.05618169  0.03462588  0.06101372 -0.06657657  0.25413624  0.29416750
                               -0.00425353 -0.00976974  0.03520373 -0.00405892  0.02611892  0.01645309  0.16855052  0.23028917

 23  1     4    1  |1 0>        0.00309761  0.08168602  0.23286301  0.10514682  0.00736360 -0.08621735  0.00093387 -0.08225774
                                0.00690958 -0.03185189  0.05297235  0.36366472  0.09251873 -0.00550251 -0.16139254  0.08908033

 24  1     5    1  |1 0>       -0.00109786 -0.05812305 -0.03994759  0.11015086  0.04853631  0.02989440 -0.02404590 -0.08100710
                                0.04656967 -0.22284567  0.30030681 -0.09489751  0.13066342 -0.01740408 -0.03071588 -0.01312091

 25  1     6    1  |1 0>       -0.00745401 -0.01920971  0.01178421  0.01137581 -0.00439880 -0.04716711  0.08635803 -0.17424190
                                0.00226552 -0.06371470  0.04057845  0.04173666 -0.07154838  0.03627505  0.32938586 -0.14909833

 26  1     7    1  |1 0>       -0.00125896  0.09515148 -0.03621138  0.09100040  0.10412054  0.08436591  0.00680576 -0.07733612
                               -0.03201211  0.16593169  0.04137697 -0.05880011  0.28757198 -0.12665799 -0.01618639 -0.01656373

 27  1     8    1  |1 0>        0.03659242  0.13327268  0.15764688 -0.04514733 -0.02275646  0.30847005  0.00549043 -0.04504233
                                0.01127280 -0.08514308 -0.02247586 -0.02313738 -0.05997928  0.01108713  0.10030793 -0.02479883

 28  1     9    1  |1 0>        0.00946538 -0.01773990  0.00139175 -0.00941185 -0.02553940  0.00096484  0.00852081  0.04678768
                               -0.42755222 -0.02318356 -0.08378028  0.02574572 -0.01658661 -0.24711365 -0.00118204 -0.05257334

 29  1     1    1  |1 1>-      -0.00019247 -0.06724136  0.01617559 -0.01643141 -0.03930722 -0.00377782  0.00063619  0.06277572
                               -0.02831662 -0.14338852  0.04623251 -0.00039940 -0.05981937 -0.00004461  0.02688692  0.00456709

 30  1     2    1  |1 1>-      -0.00290602 -0.08861848 -0.00957967  0.03387713 -0.00892341 -0.02111658 -0.02266410 -0.06877947
                               -0.06633243 -0.28158402  0.20049624 -0.03881532 -0.07140295  0.08210793 -0.03365647 -0.00483474

 31  1     3    1  |1 1>-       0.00038325 -0.01162816 -0.05108527  0.15298133  0.09630144  0.09090257 -0.00413040 -0.03127733
                                0.00717915 -0.06407620  0.27480729 -0.12468558  0.34338572 -0.16494026 -0.00068520 -0.01915159

 32  1     4    1  |1 1>-      -0.01193434 -0.01651013  0.01530415 -0.00707875 -0.03257389 -0.01736113  0.05479707 -0.03041203
                               -0.00324129 -0.04527454 -0.10556193  0.05737941 -0.04405417 -0.30335223  0.16516625 -0.14009173

 33  1     5    1  |1 1>-       0.00542403 -0.25951630 -0.14406687  0.03936824  0.15997828  0.17609284 -0.13832566 -0.13623247
                                0.00348032  0.09345467  0.02655569  0.18693646 -0.09834483 -0.02549287 -0.08836681 -0.10635489

 34  1     6    1  |1 1>-       0.03959113 -0.13893682 -0.28847775 -0.07621788  0.00643241 -0.09592938  0.01846660 -0.06285629
                                0.01041776  0.08936725 -0.05869321 -0.31647815 -0.04286177 -0.00798639 -0.09538667  0.05058510

 35  1     7    1  |1 1>-      -0.00503700  0.22017711 -0.00895381 -0.02196147  0.12772236  0.06458890 -0.09554110 -0.29417030
                               -0.03353159 -0.09181553 -0.04520962  0.01034378 -0.13141614 -0.02178799 -0.12897349 -0.14689684

 36  1     8    1  |1 1>-       0.00893167 -0.01694144  0.00107784  0.01410826  0.00429734 -0.03494639  0.05559110 -0.11259054
                               -0.43546155  0.01452968  0.07263503  0.00467145 -0.01477582  0.16219865  0.21570301 -0.05831942

 37  1     9    1  |1 1>-       0.05256030 -0.13255555 -0.12065476  0.01410717  0.00127356 -0.12513018 -0.02510582  0.23705672
                                0.00019548  0.02617063  0.02963121 -0.00434812 -0.01532738  0.00877040  0.23249253 -0.15249361


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>       -0.00001995 -0.00000470  0.00052492 -0.00056482  0.00943328
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.14460349  0.03302124  0.03319907 -0.06244792 -0.01075988
                               -0.04183528 -0.07432771  0.07717932 -0.06515434 -0.00622243

  3  1     3    1  |0 0>        0.28841340 -0.04569562 -0.06647107  0.04077507  0.01005925
                               -0.22433098 -0.05573159 -0.12250011 -0.05597210  0.01501564

  4  1     4    1  |0 0>       -0.06826544  0.28470912  0.16057316 -0.16553911 -0.04478204
                               -0.13251701 -0.01007901 -0.06606208 -0.06808967 -0.00064823

  5  1     5    1  |0 0>        0.04851011 -0.05629125  0.20293515 -0.02087123 -0.00903511
                               -0.22187560 -0.00929076 -0.06946234 -0.02410001  0.00637303

  6  1     6    1  |0 0>        0.00168231 -0.10319486 -0.27270471 -0.07422713  0.00629619
                               -0.21120348  0.09074146  0.03797376 -0.02315988 -0.00745994

  7  1     7    1  |0 0>        0.00987316  0.30107124 -0.10217921  0.17155981  0.03883220
                               -0.11780604 -0.04858392 -0.02089941  0.10704717  0.00531775

  8  1     8    1  |0 0>        0.11115582 -0.02649293  0.00864541 -0.01896141  0.00204290
                               -0.10506686 -0.11290741  0.21199695  0.10315661 -0.01695704

  9  1     9    1  |0 0>       -0.03253074  0.12211026 -0.00781264  0.10059310  0.00998432
                               -0.00752545  0.01209078  0.09754284 -0.13911823 -0.01127602

 10  1    10    1  |0 0>       -0.00938617 -0.00205194  0.13461603 -0.08258325  0.74536417
                                0.00000112  0.00000028  0.00000036  0.00000004 -0.00000001

 11  1     1    1  |1 1>+       0.09428258 -0.02067250  0.01875392 -0.03063952 -0.00205464
                               -0.08023122 -0.10430578  0.20686638  0.11455481 -0.01993744

 12  1     2    1  |1 1>+      -0.24208414  0.03429100  0.05496129 -0.02113884 -0.00623367
                                0.16892554  0.06320771  0.05757862  0.01146114 -0.00775809

 13  1     3    1  |1 1>+      -0.11108199  0.01570465  0.05762248 -0.04683793 -0.01179848
                                0.09187008 -0.00565003  0.12410572  0.07256056 -0.01593518

 14  1     4    1  |1 1>+      -0.08653811  0.04357295  0.01221986  0.04997799  0.00322675
                               -0.00198008  0.04905935 -0.07876889 -0.10310262 -0.00157229

 15  1     5    1  |1 1>+      -0.05687629 -0.00161016 -0.32403318 -0.05013565  0.01308391
                                0.08784374  0.05583384  0.08442707 -0.00241916 -0.01518931

 16  1     6    1  |1 1>+      -0.02705405  0.05807857  0.04548694 -0.04732789 -0.00727333
                               -0.04602431  0.00455301  0.01325874 -0.07188991 -0.00498557

 17  1     7    1  |1 1>+      -0.02889074  0.08180049  0.09648280  0.09054862 -0.37344779
                                0.20517874 -0.04929594 -0.00737954  0.05633216  0.00978131

 18  1     8    1  |1 1>+      -0.04603766 -0.04386847  0.00851590 -0.17033296  0.00280736
                               -0.03650791  0.00298084 -0.15301278  0.36643979  0.03407225

 19  1     9    1  |1 1>+       0.02280252  0.56950531  0.03203544  0.04253348 -0.00496763
                               -0.22440982 -0.09202098 -0.06226881  0.06207572  0.00639088

 20  1     1    1  |1 0>        0.00949397  0.02594908  0.05863312 -0.19973688 -0.01349946
                                0.03305539 -0.06154099 -0.00252773 -0.09122165 -0.00816942

 21  1     2    1  |1 0>        0.00276681  0.01971741 -0.03160567 -0.14187472 -0.00618198
                                0.01123642 -0.00826308  0.00858981 -0.05807604 -0.00959843

 22  1     3    1  |1 0>        0.01075257 -0.06126089  0.09216868 -0.03054744 -0.00529820
                               -0.14947292  0.07259532  0.03141995  0.00135944 -0.00848442

 23  1     4    1  |1 0>       -0.09621139 -0.05725256  0.01896225  0.02788575 -0.00483864
                               -0.14864814  0.01823938  0.01528870  0.00908731  0.00088656

 24  1     5    1  |1 0>        0.08561505  0.03847267  0.04490100  0.05232695  0.00188070
                                0.01560401  0.20796798  0.13573985 -0.17334622 -0.07700315

 25  1     6    1  |1 0>       -0.29065367  0.03011102 -0.05125126 -0.04060197  0.00573495
                               -0.05929118  0.09619211 -0.03447757  0.04678166  0.00360881

 26  1     7    1  |1 0>        0.06005909  0.04023289  0.04563690 -0.17873284 -0.01592483
                                0.03522734  0.24282358 -0.17859740  0.34966134  0.08473333

 27  1     8    1  |1 0>        0.01122390 -0.11943388  0.41007148  0.27386427 -0.06425595
                                0.03513545 -0.01194156 -0.07461939  0.07280943  0.01004250

 28  1     9    1  |1 0>       -0.04663751  0.05744327  0.05467336  0.00665500 -0.01152725
                                0.01759315  0.03974674  0.27305620  0.00673942  0.35790980

 29  1     1    1  |1 1>-      -0.10098305 -0.04747377 -0.02140812  0.07778822  0.00431957
                               -0.01536969 -0.28499056  0.05669575 -0.12852839 -0.02207518

 30  1     2    1  |1 1>-       0.12176785  0.04340166  0.04336632  0.05717401  0.00044428
                                0.00514026  0.26508331  0.15549593 -0.16012162 -0.05016681

 31  1     3    1  |1 1>-      -0.04665397  0.00159751  0.01218998 -0.06266315 -0.00427836
                                0.02337811 -0.06038668 -0.04638612  0.05520113  0.00686632

 32  1     4    1  |1 1>-      -0.20264003  0.08437788  0.03532454 -0.02489645 -0.00726673
                               -0.00488421  0.09771512  0.25252583  0.07532689 -0.00606758

 33  1     5    1  |1 1>-      -0.00821156  0.00922101  0.00479968  0.18665622  0.01004243
                                0.05982938 -0.02741538 -0.02119792  0.07683167  0.01688747

 34  1     6    1  |1 1>-      -0.10126512  0.00559064 -0.12393387 -0.07566730  0.01572515
                               -0.11776580  0.01885250  0.06347000 -0.04738463 -0.02010907

 35  1     7    1  |1 1>-      -0.00672752  0.08151873 -0.01177494 -0.35955822 -0.02125203
                                0.14100469 -0.12888048 -0.02691631 -0.16419549  0.01314296

 36  1     8    1  |1 1>-      -0.16047482 -0.01367101 -0.05711289 -0.01319147  0.00556889
                               -0.05536047  0.05326585 -0.11476159  0.04059410  0.38183722

 37  1     9    1  |1 1>-       0.22668603  0.18361558 -0.22946136 -0.13354949  0.01860824
                                0.29774719 -0.04970257 -0.01776436 -0.01391107  0.00307710



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.98%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.06%    0.00%    0.01%    1.90%    0.01%    0.90%    0.07%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.36%    0.90%    2.01%    1.37%
  4  1     4    1  |0 0>          0.00%    0.11%    0.00%    0.03%    0.34%    4.56%    1.64%    0.09%
  5  1     5    1  |0 0>          0.00%    0.01%    0.06%    0.00%    1.65%    2.83%    2.54%    0.37%
  6  1     6    1  |0 0>          0.00%    0.03%    0.03%    0.00%    0.77%    0.13%    0.09%    1.74%
  7  1     7    1  |0 0>          0.00%    0.45%    0.39%    2.83%    1.33%    0.17%    0.02%    0.00%
  8  1     8    1  |0 0>          0.00%    0.21%    3.04%    0.16%    1.18%    0.52%    0.02%    0.01%
  9  1     9    1  |0 0>          0.00%    1.25%    0.12%    1.77%    1.49%    0.90%    0.10%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.01%    0.00%    0.01%    0.08%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    8.04%   69.83%    2.87%    2.25%    0.50%    0.01%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.03%    0.00%    0.00%    0.90%    0.26%   22.00%    0.57%
 13  1     3    1  |1 1>+         0.00%    0.05%    0.02%    0.00%    1.10%    1.61%    1.06%   29.83%
 14  1     4    1  |1 1>+         0.00%    0.37%    0.01%    0.01%    6.10%    1.45%    9.65%    3.68%
 15  1     5    1  |1 1>+         0.00%    0.47%    0.49%    0.03%   10.82%   15.44%    4.77%    0.36%
 16  1     6    1  |1 1>+         0.00%    0.01%    0.00%    0.04%    0.19%    4.07%    5.02%    2.05%
 17  1     7    1  |1 1>+         0.01%    0.14%    0.17%    0.03%    0.71%    0.83%    0.19%    0.90%
 18  1     8    1  |1 1>+         0.00%    3.92%    0.45%    2.22%    0.17%    1.33%    0.70%    0.02%
 19  1     9    1  |1 1>+         0.00%    1.54%    0.76%    3.54%    0.37%    0.19%    0.04%    0.00%
 20  1     1    1  |1 0>          0.00%   42.33%    2.41%   33.13%    4.06%    0.72%    0.08%    0.00%
 21  1     2    1  |1 0>          0.00%    0.27%    0.02%    0.01%    4.63%    0.16%    6.13%    3.82%
 22  1     3    1  |1 0>          0.00%    0.04%    0.00%    0.00%    1.59%    1.61%    0.96%    2.04%
 23  1     4    1  |1 0>          0.00%    0.01%    0.00%    0.00%    0.80%    3.20%   14.16%    2.94%
 24  1     5    1  |1 0>          0.00%    2.03%    0.06%    0.36%   13.46%   24.13%    3.21%    0.02%
 25  1     6    1  |1 0>          0.00%    0.03%    0.01%    0.01%    0.82%    7.22%    0.73%    3.35%
 26  1     7    1  |1 0>          0.00%    5.22%    0.75%    2.14%    2.27%    0.15%    0.04%    0.00%
 27  1     8    1  |1 0>          0.00%    1.88%    6.18%    0.13%    4.27%    2.53%    0.40%    0.06%
 28  1     9    1  |1 0>          0.01%    0.05%    0.00%    0.00%    0.58%    0.35%    0.08%    0.13%
 29  1     1    1  |1 1>-         0.00%   23.70%   10.02%   48.26%    1.42%    0.07%    0.01%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.34%    0.00%    0.11%    6.62%    2.99%    6.65%    0.02%
 31  1     3    1  |1 1>-         0.00%    0.01%    0.00%    0.02%    0.12%    1.80%    2.21%    1.58%
 32  1     4    1  |1 1>-         0.00%    0.01%    0.09%    0.00%    0.29%   15.58%    0.71%    1.35%
 33  1     5    1  |1 1>-         0.00%    0.76%    0.21%    0.14%   19.92%    0.28%    8.64%    0.37%
 34  1     6    1  |1 1>-         0.00%    0.04%    0.03%    0.00%    1.40%    1.57%    3.79%   43.06%
 35  1     7    1  |1 1>-         0.00%    5.72%    0.08%    1.87%    1.02%    0.22%    0.32%    0.04%
 36  1     8    1  |1 1>-         0.01%    0.49%    0.00%    0.03%    3.37%    0.69%    0.95%    0.11%
 37  1     9    1  |1 1>-         0.00%    0.38%    4.74%    0.25%    1.69%    0.95%    0.18%    0.04%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.88%    0.55%    5.35%    1.86%   18.69%    4.40%    7.48%    2.07%
  3  1     3    1  |0 0>          0.43%    6.65%    0.29%    4.87%    2.11%    3.26%    4.22%   21.51%
  4  1     4    1  |0 0>          0.15%    2.85%    8.19%    1.75%    8.94%    3.88%   11.78%    1.71%
  5  1     5    1  |0 0>          0.01%    1.96%    3.07%   10.48%    1.77%    6.13%    3.36%    8.77%
  6  1     6    1  |0 0>          0.09%    2.07%    0.68%   14.86%    1.38%   15.05%    4.73%    4.81%
  7  1     7    1  |0 0>          0.01%    0.01%    0.01%    0.00%    0.00%    0.00%    0.03%    0.23%
  8  1     8    1  |0 0>          0.02%    0.02%    0.00%    0.00%    0.03%    0.00%    0.02%    0.53%
  9  1     9    1  |0 0>          0.10%    0.11%    0.08%    0.04%    0.00%    0.20%    0.06%    0.25%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.00%    0.01%
 11  1     1    1  |1 1>+         0.01%    0.01%    0.00%    0.00%    0.01%    0.00%    0.01%    0.21%
 12  1     2    1  |1 1>+         2.03%    4.08%   12.65%    1.75%    0.01%    2.80%   12.35%    6.00%
 13  1     3    1  |1 1>+         3.78%    6.45%    1.84%    9.34%    2.87%    1.28%    0.04%    2.00%
 14  1     4    1  |1 1>+         5.17%   13.49%    6.81%    2.60%    5.53%    1.12%    2.49%    2.12%
 15  1     5    1  |1 1>+         1.28%    8.09%    0.92%    0.75%    0.43%    1.36%   14.22%    2.81%
 16  1     6    1  |1 1>+        32.47%    4.78%    4.73%    0.07%    1.49%    2.10%    1.84%    0.59%
 17  1     7    1  |1 1>+         0.02%    0.08%    0.00%    0.94%    0.06%    0.06%    0.08%    0.01%
 18  1     8    1  |1 1>+         0.18%    0.04%    0.07%    0.01%    0.66%    0.14%    0.18%    0.20%
 19  1     9    1  |1 1>+         0.01%    0.09%    0.32%    0.01%    0.08%    0.22%    0.37%    0.02%
 20  1     1    1  |1 0>          0.06%    0.06%    0.04%    0.02%    0.00%    0.08%    0.03%    0.11%
 21  1     2    1  |1 0>          4.99%   15.51%    3.55%    2.24%    8.84%    1.63%    5.30%    1.02%
 22  1     3    1  |1 0>          2.84%    3.54%   10.23%    7.23%   31.00%    2.10%    0.66%    2.72%
 23  1     4    1  |1 0>          4.27%    2.01%   14.42%    2.60%    4.01%    2.28%    3.66%    7.34%
 24  1     5    1  |1 0>          0.31%    0.47%    0.30%    0.96%    0.26%    4.95%    2.01%    5.10%
 25  1     6    1  |1 0>          1.22%    1.25%    4.57%   31.54%    1.78%    6.54%    0.77%    6.93%
 26  1     7    1  |1 0>          0.00%    0.08%    0.21%    0.03%    0.07%    0.30%    0.51%    0.42%
 27  1     8    1  |1 0>          0.06%    0.09%    0.05%    0.12%    0.23%    0.11%    0.08%    0.46%
 28  1     9    1  |1 0>          0.01%    0.34%    0.07%    0.20%    0.01%    0.37%    0.35%    0.17%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.01%    0.05%
 30  1     2    1  |1 1>-         0.40%    6.99%   16.12%    0.33%    1.87%    1.36%    7.89%    8.70%
 31  1     3    1  |1 1>-        35.98%    6.41%    0.01%    0.41%    4.21%    2.65%    4.43%    0.22%
 32  1     4    1  |1 1>-         2.06%    1.08%    3.99%    3.42%    1.55%   33.73%    1.25%    1.71%
 33  1     5    1  |1 1>-         0.04%    6.20%    0.93%    0.10%    0.95%    0.25%    9.17%    7.32%
 34  1     6    1  |1 1>-         0.70%    4.11%    0.37%    1.11%    0.33%    1.41%    0.18%    3.48%
 35  1     7    1  |1 1>-         0.40%    0.02%    0.03%    0.08%    0.69%    0.00%    0.05%    0.01%
 36  1     8    1  |1 1>-         0.00%    0.33%    0.06%    0.15%    0.05%    0.11%    0.29%    0.35%
 37  1     9    1  |1 1>-         0.02%    0.16%    0.03%    0.14%    0.10%    0.11%    0.07%    0.04%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          1.33%    6.30%    0.90%    1.10%    1.11%    6.64%    3.81%    0.91%
  3  1     3    1  |0 0>          0.45%    3.37%    4.53%    0.89%    0.40%    1.33%    2.96%    4.53%
  4  1     4    1  |0 0>          0.93%    1.11%    0.31%    0.13%    9.78%    0.66%    4.14%    2.93%
  5  1     5    1  |0 0>          3.68%    5.54%    0.57%    4.22%    2.39%    0.77%    4.14%    2.25%
  6  1     6    1  |0 0>          0.44%    1.36%    0.73%    0.85%    0.90%   10.81%    3.17%    2.06%
  7  1     7    1  |0 0>         20.08%    3.29%    2.85%    6.08%    9.92%    0.42%    4.49%    2.53%
  8  1     8    1  |0 0>          1.57%   12.84%   27.05%    5.73%    0.06%    0.17%    0.65%    2.14%
  9  1     9    1  |0 0>         10.39%    1.94%    5.34%   23.99%    1.59%    0.64%    4.13%    1.65%
 10  1    10    1  |0 0>          0.03%    0.06%    0.01%    0.02%    0.00%    0.00%    0.32%    0.00%
 11  1     1    1  |1 1>+         0.04%    0.18%    0.02%    0.00%    0.00%    0.00%    0.01%    0.20%
 12  1     2    1  |1 1>+         0.11%    0.12%    2.95%    0.49%    0.04%    0.23%    0.52%    0.66%
 13  1     3    1  |1 1>+         0.34%    2.62%    2.78%    0.53%    0.01%    0.14%    0.45%    1.72%
 14  1     4    1  |1 1>+         0.14%    0.47%    1.08%    3.90%    0.30%    0.49%    0.31%    2.60%
 15  1     5    1  |1 1>+         0.29%    2.91%    0.25%    0.43%    0.41%    0.26%    0.56%    3.23%
 16  1     6    1  |1 1>+         6.39%    1.54%    0.37%    0.60%    0.10%    0.30%    0.55%    0.53%
 17  1     7    1  |1 1>+         1.15%   10.82%    2.57%    0.48%    0.93%   23.64%    0.64%    7.49%
 18  1     8    1  |1 1>+         2.53%    8.61%    0.48%    6.99%    0.50%   13.16%   10.60%    3.87%
 19  1     9    1  |1 1>+         0.38%    0.29%    1.78%    4.54%   37.77%    0.49%    1.72%    2.12%
 20  1     1    1  |1 0>          0.63%    0.07%    0.01%    0.00%    0.00%    0.00%    0.10%    0.45%
 21  1     2    1  |1 0>          0.38%    1.46%    0.70%    5.72%    0.25%    0.17%    0.63%    2.64%
 22  1     3    1  |1 0>          0.45%    1.00%    0.19%    0.11%    0.10%    1.32%    0.96%    0.18%
 23  1     4    1  |1 0>          0.39%    1.46%    5.28%    0.83%    0.06%    0.00%    0.10%    0.04%
 24  1     5    1  |1 0>          0.44%    0.01%    0.52%    1.57%    6.21%    0.12%    1.71%    0.93%
 25  1     6    1  |1 0>          0.16%    1.04%    0.14%    0.30%    0.18%    0.94%    0.35%    1.01%
 26  1     7    1  |1 0>         15.93%    1.11%    0.18%    0.14%    9.61%    0.55%    9.89%    6.74%
 27  1     8    1  |1 0>          0.36%   16.32%    0.38%    0.27%    1.01%    0.89%    7.24%   12.85%
 28  1     9    1  |1 0>          1.19%    1.73%    0.75%    6.06%    4.70%   15.98%   17.84%    1.86%
 29  1     1    1  |1 1>-         0.38%    0.04%    0.00%    0.01%    0.00%    0.00%    0.02%    0.09%
 30  1     2    1  |1 1>-         4.70%    0.44%    0.21%    0.46%    1.94%    0.07%    0.98%    1.03%
 31  1     3    1  |1 1>-         7.08%    0.61%    0.27%    0.48%    0.07%    0.01%    0.58%    0.72%
 32  1     4    1  |1 1>-         0.02%    0.03%    0.05%    0.08%    0.12%    1.73%    1.33%    0.59%
 33  1     5    1  |1 1>-         7.01%    1.49%    0.87%    2.22%    0.03%    0.34%    1.38%    1.01%
 34  1     6    1  |1 1>-         0.04%    1.91%    2.53%    0.85%    0.05%    0.16%    0.71%    2.04%
 35  1     7    1  |1 1>-         4.89%    6.05%    5.32%    4.90%    2.14%   14.23%    3.00%    5.53%
 36  1     8    1  |1 1>-         5.54%    1.56%    0.44%   11.01%    6.47%    1.77%    4.37%   13.31%
 37  1     9    1  |1 1>-         0.16%    0.32%   27.57%    4.01%    0.83%    1.55%    5.65%    7.56%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.04%    1.22%    0.40%    0.35%    2.22%    0.41%    9.95%   14.61%
  3  1     3    1  |0 0>          0.19%    0.77%    0.32%    0.36%    0.28%    3.77%    6.63%    4.92%
  4  1     4    1  |0 0>          0.64%    4.74%    0.22%    0.20%    5.25%    3.70%    0.93%    1.57%
  5  1     5    1  |0 0>          0.01%    0.31%    1.32%    0.06%    0.40%    5.21%   11.28%    4.64%
  6  1     6    1  |0 0>          0.03%    0.32%    1.27%    0.37%    0.38%   10.59%    3.37%    2.36%
  7  1     7    1  |0 0>          0.81%   13.65%    9.16%    2.19%    2.20%    0.44%    0.12%    0.28%
  8  1     8    1  |0 0>          0.15%    0.11%    4.26%   21.93%    0.93%    5.26%    0.16%    1.91%
  9  1     9    1  |0 0>          0.04%    0.41%    7.18%    5.56%   20.05%    4.05%    0.36%    0.66%
 10  1    10    1  |0 0>         40.22%    0.22%    0.44%    0.07%    0.07%    0.34%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.08%    0.73%    0.26%    1.68%    0.10%    3.02%    0.20%    1.29%
 12  1     2    1  |1 1>+         0.03%    0.06%    1.07%    5.84%    0.68%    2.28%    6.04%    3.53%
 13  1     3    1  |1 1>+         0.17%    2.84%    8.81%   10.97%    0.18%    0.83%    0.97%    0.60%
 14  1     4    1  |1 1>+         0.01%    7.50%    4.42%    3.72%    4.44%    0.79%    1.91%    4.20%
 15  1     5    1  |1 1>+         0.00%    0.12%    1.51%    0.04%    0.17%    9.84%    2.84%    1.99%
 16  1     6    1  |1 1>+         0.00%    0.53%    7.99%    3.91%   12.41%    3.46%    0.01%    0.24%
 17  1     7    1  |1 1>+        18.58%    0.11%    0.01%    0.10%    0.21%    0.97%    4.93%    1.89%
 18  1     8    1  |1 1>+         0.13%    9.95%    0.21%    0.00%    5.18%    0.03%    4.99%    3.16%
 19  1     9    1  |1 1>+         0.00%    0.05%    0.70%    0.27%    0.26%    0.48%    0.39%    1.77%
 20  1     1    1  |1 0>          0.01%    2.32%    0.68%    0.44%    5.04%    0.51%    0.29%    0.56%
 21  1     2    1  |1 0>          0.01%   11.32%    4.43%    4.81%    4.77%    2.02%    0.05%    0.01%
 22  1     3    1  |1 0>          0.00%    0.19%    0.44%    0.12%    0.44%    0.47%    9.30%   13.96%
 23  1     4    1  |1 0>          0.01%    0.77%    5.70%   14.33%    0.86%    0.75%    2.60%    1.47%
 24  1     5    1  |1 0>          0.22%    5.30%    9.18%    2.11%    1.94%    0.12%    0.15%    0.67%
 25  1     6    1  |1 0>          0.01%    0.44%    0.18%    0.19%    0.51%    0.35%   11.60%    5.26%
 26  1     7    1  |1 0>          0.10%    3.66%    0.30%    1.17%    9.35%    2.32%    0.03%    0.63%
 27  1     8    1  |1 0>          0.15%    2.50%    2.54%    0.26%    0.41%    9.53%    1.01%    0.26%
 28  1     9    1  |1 0>         18.29%    0.09%    0.70%    0.08%    0.09%    6.11%    0.01%    0.50%
 29  1     1    1  |1 1>-         0.08%    2.51%    0.24%    0.03%    0.51%    0.00%    0.07%    0.40%
 30  1     2    1  |1 1>-         0.44%    8.71%    4.03%    0.27%    0.52%    0.72%    0.16%    0.48%
 31  1     3    1  |1 1>-         0.01%    0.42%    7.81%    3.89%   12.72%    3.55%    0.00%    0.13%
 32  1     4    1  |1 1>-         0.02%    0.23%    1.14%    0.33%    0.30%    9.23%    3.03%    2.06%
 33  1     5    1  |1 1>-         0.00%    7.61%    2.15%    3.65%    3.53%    3.17%    2.69%    2.99%
 34  1     6    1  |1 1>-         0.17%    2.73%    8.67%   10.60%    0.19%    0.93%    0.94%    0.65%
 35  1     7    1  |1 1>-         0.11%    5.69%    0.21%    0.06%    3.36%    0.46%    2.58%   10.81%
 36  1     8    1  |1 1>-        18.97%    0.05%    0.53%    0.02%    0.02%    2.75%    4.96%    1.61%
 37  1     9    1  |1 1>-         0.28%    1.83%    1.54%    0.02%    0.02%    1.57%    5.47%    7.95%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>          2.27%    0.66%    0.71%    0.81%    0.02%
  3  1     3    1  |0 0>         13.35%    0.52%    1.94%    0.48%    0.03%
  4  1     4    1  |0 0>          2.22%    8.12%    3.01%    3.20%    0.20%
  5  1     5    1  |0 0>          5.16%    0.33%    4.60%    0.10%    0.01%
  6  1     6    1  |0 0>          4.46%    1.89%    7.58%    0.60%    0.01%
  7  1     7    1  |0 0>          1.40%    9.30%    1.09%    4.09%    0.15%
  8  1     8    1  |0 0>          2.34%    1.34%    4.50%    1.10%    0.03%
  9  1     9    1  |0 0>          0.11%    1.51%    0.96%    2.95%    0.02%
 10  1    10    1  |0 0>          0.01%    0.00%    1.81%    0.68%   55.56%
 11  1     1    1  |1 1>+         1.53%    1.13%    4.31%    1.41%    0.04%
 12  1     2    1  |1 1>+         8.71%    0.52%    0.63%    0.06%    0.01%
 13  1     3    1  |1 1>+         2.08%    0.03%    1.87%    0.75%    0.04%
 14  1     4    1  |1 1>+         0.75%    0.43%    0.64%    1.31%    0.00%
 15  1     5    1  |1 1>+         1.10%    0.31%   11.21%    0.25%    0.04%
 16  1     6    1  |1 1>+         0.29%    0.34%    0.22%    0.74%    0.01%
 17  1     7    1  |1 1>+         4.29%    0.91%    0.94%    1.14%   13.96%
 18  1     8    1  |1 1>+         0.35%    0.19%    2.35%   16.33%    0.12%
 19  1     9    1  |1 1>+         5.09%   33.28%    0.49%    0.57%    0.01%
 20  1     1    1  |1 0>          0.12%    0.45%    0.34%    4.82%    0.02%
 21  1     2    1  |1 0>          0.01%    0.05%    0.11%    2.35%    0.01%
 22  1     3    1  |1 0>          2.25%    0.90%    0.95%    0.09%    0.01%
 23  1     4    1  |1 0>          3.14%    0.36%    0.06%    0.09%    0.00%
 24  1     5    1  |1 0>          0.76%    4.47%    2.04%    3.28%    0.59%
 25  1     6    1  |1 0>          8.80%    1.02%    0.38%    0.38%    0.00%
 26  1     7    1  |1 0>          0.48%    6.06%    3.40%   15.42%    0.74%
 27  1     8    1  |1 0>          0.14%    1.44%   17.37%    8.03%    0.42%
 28  1     9    1  |1 0>          0.25%    0.49%    7.75%    0.01%   12.82%
 29  1     1    1  |1 1>-         1.04%    8.35%    0.37%    2.26%    0.05%
 30  1     2    1  |1 1>-         1.49%    7.22%    2.61%    2.89%    0.25%
 31  1     3    1  |1 1>-         0.27%    0.36%    0.23%    0.70%    0.01%
 32  1     4    1  |1 1>-         4.11%    1.67%    6.50%    0.63%    0.01%
 33  1     5    1  |1 1>-         0.36%    0.08%    0.05%    4.07%    0.04%
 34  1     6    1  |1 1>-         2.41%    0.04%    1.94%    0.80%    0.07%
 35  1     7    1  |1 1>-         1.99%    2.33%    0.09%   15.62%    0.06%
 36  1     8    1  |1 1>-         2.88%    0.30%    1.64%    0.18%   14.58%
 37  1     9    1  |1 1>-        14.00%    3.62%    5.30%    1.80%    0.04%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       93.78       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7    13037.55       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   2125089.912029978.91  50512.42  44577.19     13.14      0.72      7.28
 REAL TIME  *   2140328.42 SEC
 DISK USED  *        12.82 GB (local),      180.60 GB (total)
 SF USED    *        72.14 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCV5Z-PP energy=   -462.930153215028

              CI              CI           MULTI         RHF-SCF
   -462.88345973   -462.87003025   -461.79354328   -462.20021392
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
