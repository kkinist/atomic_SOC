
 Working directory              : /wrk/irikura/molpro.SPe6pLdtNs/
 Global scratch directory       : /wrk/irikura/molpro.SPe6pLdtNs/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.SPe6pLdtNs/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   15
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1042), CPU time= 0.00 sec
 ***,Kr SO-CI
                                                                                 ! active space (8/8)
 memory,4000,M;
 
 gprint,orbitals,civector;
                                                                                 !gthresh,energy=1.d-10,coeff=1.d-8;
 
 symmetry,xyz
 geometry={Kr};
 
 basis=aug-cc-pwCVQZ-PP
 
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
 Commands initialized (847), CPU time= 0.02 sec, 718 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2024.1 linked Mon Jun 17 07:53:25 2024


 **********************************************************************************************************************************
 LABEL *   Kr SO-CI                                                                                                                                                      
  (64 PROC) 64 bit mpp version                                                           DATE: 27-Jun-24          TIME: 13:51:16  
 **********************************************************************************************************************************

 SHA1:             0134236b472f03f1f5189f93707d8671e415b05c
 **********************************************************************************************************************************

 Memory per process:      4000 MW
 Total memory per node:  60000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 4000.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    AUG-CC-PWCVQZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Kr   ECP ECP10MDF                 selected for group  1
 Library entry KR     S aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry KR     P aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry KR     D aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry KR     F aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry KR     G aug-cc-pwCVQZ-PP     selected for orbital group  1
 Library entry KR     H aug-cc-pwCVQZ-PP     selected for orbital group  1


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
 NUMBER OF PRIMITIVE AOS:         300
 NUMBER OF SYMMETRY AOS:          232
 NUMBER OF CONTRACTIONS:          166   (   86Ag  +   80Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     9   (    6Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        4   (    1Ag  +    3Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 1 1 1   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6   2 3 4 5 6 2 3 4 5 6
                                        2 3 4 5 6 2 3 4 5 6   7 8 9101112131415 7   8 9101112131415 7 8   9101112131415 7 8 9
                                       101112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 1 2 3 1 2 3 4 5 6   7 8 910 4 5 6 7 8 9
                                       10 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8   910 4 5 6 7 8 91011  12131415161718192021


 Eigenvalues of metric

         1 0.128E-03 0.110E-02 0.286E-02 0.915E-02 0.915E-02 0.915E-02 0.915E-02 0.915E-02
         2 0.325E-03 0.325E-03 0.325E-03 0.153E-02 0.153E-02 0.153E-02 0.236E-01 0.236E-01


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     93.585 MB (compressed) written to integral file ( 13.4%)

     Node minimum: 2.621 MB, node maximum: 9.961 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:    3242583.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:    3242583      RECORD LENGTH: 524288

 Memory used in sort:       3.80 MW

 SORT1 READ    86907878. AND WROTE      584617. INTEGRALS IN      2 RECORDS. CPU TIME:     0.39 SEC, REAL TIME:     0.41 SEC
 SORT2 READ     8938358. AND WROTE    48612351. INTEGRALS IN    150 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.07 SEC

 Node minimum:     3238863.  Node maximum:     3242583. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         2.23      2.03
 REAL TIME  *         4.17 SEC
 DISK USED  *        29.71 MB (local),      621.75 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************


 Program * Restricted Hartree-Fock

 Orbital guess generated from atomic densities.

 Initial occupancy:   7   6

 NELEC=   26   SYM=1   MS2= 0   THRE=1.0D-08   THRD=3.2D-06   THRG=3.2D-06  HFMA2=F  DIIS_START=2   DIIS_MAX=10   DIIS_INCORE=F

 Level shifts:    0.00 (CLOSED)    0.00 (OPEN)    0.30 (GAP_MIN)

 ITER           ETOT              DE          GRAD        DDIFF     DIIS  NEXP   TIME(IT)  TIME(TOT)  DIAG
   1     -462.19986458    -462.19986458     0.00D+00     0.86D-01     0     0       0.02      0.04    start
   2     -462.19986748      -0.00000290     0.47D-04     0.21D-03     1     0       0.02      0.06    diag
   3     -462.19986760      -0.00000012     0.60D-05     0.26D-04     2     0       0.02      0.08    diag
   4     -462.19986760      -0.00000000     0.10D-05     0.25D-05     3     0       0.02      0.10    diag
   5     -462.19986760      -0.00000000     0.39D-06     0.46D-06     0     0       0.02      0.12    diag

 Final occupancy:   7   6

 !RHF STATE 1.1 Energy               -462.199867598385
  RHF One-electron energy            -808.823517413757
  RHF Two-electron energy             346.623649815373
  RHF Kinetic energy                  329.240769588185
  RHF Nuclear energy                    0.000000000000
  RHF Virial quotient                  -1.403835461132

 !RHF STATE 1.1 Dipole moment           0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 ELECTRON ORBITALS
 =================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -10.80717     1  1  s    1.00022
    2.1     2.00000    -3.75339     1  1  d1+  0.39624    1  1  d1-  0.91815
    3.1     2.00000    -3.75339     1  1  d1+  0.91815    1  1  d1- -0.39624
    4.1     2.00000    -3.75339     1  1  d2+  0.99953
    5.1     2.00000    -3.75339     1  1  d2-  0.99953
    6.1     2.00000    -3.75339     1  1  d0   1.00001
    7.1     2.00000    -1.18773     1  1  s   -0.41319    1  4  s    0.53192    1  5  s    0.59813    1  9  s   -0.26616
    1.2     2.00000    -8.48549     1  1  py   1.00004
    2.2     2.00000    -8.48549     1  1  px   1.00004
    3.2     2.00000    -8.48549     1  1  pz   1.00004
    4.2     2.00000    -0.52324     1  2  px   1.00396
    5.2     2.00000    -0.52324     1  2  py   1.00396
    6.2     2.00000    -0.52324     1  2  pz   1.00396


 HOMO      6.2    -0.523240 =     -14.2381eV
 LUMO      8.1     0.079996 =       2.1768eV
 LUMO-HOMO         0.603236 =      16.4149eV

 Orbitals saved in record  2100.2


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       29.35       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

              2       4        0.61       700     1000      520     2100   
                                         GEOM     BASIS   MCVARS     RHF  

 PROGRAMS   *        TOTAL   RHF-SCF       INT
 CPU TIMES  *         2.36      0.13      2.03
 REAL TIME  *         4.31 SEC
 DISK USED  *        30.70 MB (local),      636.51 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of closed-shell orbitals:   9 (    6    3)
 Number of active  orbitals:        8 (    2    6)
 Number of external orbitals:     149 (   78   71)

 State symmetry 1

 Number of active electrons:   8    Spin symmetry=Singlet   Space symmetry=1
 Number of states:            10
 Number of CSFs:             924   (2500 determinants, 4900 intermediate states)

 State symmetry 2

 Number of active electrons:   8    Spin symmetry=Triplet   Space symmetry=1
 Number of states:             9
 Number of CSFs:            1176   (1576 determinants, 3136 intermediate states)

 Molecular orbitals read from record     2100.2  Type=RHF/CANONICAL  
 *** IN SYMMETRY 1 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.302D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.316D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.313D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.173D-04 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 4 5 3 2 1 1 5 3   4 6 2 1 6 4 3 5 2 2   6 4 3 51415131012 8   7 911 1 5 3 4 6 2 7
                                       1013141512 8 911 1 5   3 2 6 41415 7 91112   81310 1 5 3 2 4 6 1  1415 812 711 91310 5
                                        3 6 4 2 1 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.194D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.194D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.208D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.953D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.244D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  7 SYMMETRY CONTAMINATION OF 0.143D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  9 SYMMETRY CONTAMINATION OF 0.143D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 3 1 2 2   1 3 5 4 9 710 8 6 2   1 3 9 7 6 810 5 4 1   2 3 9 7 5 410 8 6 7
                                        9 4 510 8 6 1 2 315  17121120181416132119  10 8 9 7 5 4 6 1 2 3   9 710 8 6 5 4 1 2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263
 
 Number of orbital rotations:  1293  ( 30 closed/active, 681 closed/virtual, 0 active/active, 582 active/virtual )
 Total number of variables:    40477
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1   12   50    0   -461.77855254    -461.82473300   -0.04618046    0.28037480 0.00356389 0.00236236  0.10E+01      8.85
   2    8   35    0   -461.80897222    -461.81335743   -0.00438521    0.23876319 0.00016145 0.00020650  0.11E+00     16.74
   3    9   36    0   -461.81338733    -461.81338802   -0.00000068    0.00181756 0.00000201 0.00000700  0.63E-02     23.53
   4    5   22    0   -461.81338802    -461.81338802   -0.00000000    0.00000045 0.00000000 0.00000006  0.40E-04     28.80

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.19E-07)
                       Final energy:   -461.81338802
 
 Results for state 1.1 Singlet
 =============================
 !MCSCF STATE 1.1 Singlet Energy              -462.185071104939
 Nuclear energy                                  0.00000000
 Kinetic energy                                330.03360860
 One electron energy                          -810.59931781
 Two electron energy                           348.41424670
 Virial ratio                                    2.40041820
 
 !MCSCF STATE 1.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Singlet
 =============================
 !MCSCF STATE 2.1 Singlet Energy              -461.794096598235
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96834202
 One electron energy                          -801.98452294
 Two electron energy                           340.19042635
 Virial ratio                                    2.40376455
 
 !MCSCF STATE 2.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Singlet
 =============================
 !MCSCF STATE 3.1 Singlet Energy              -461.794096598235
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96834202
 One electron energy                          -801.98452294
 Two electron energy                           340.19042635
 Virial ratio                                    2.40376455
 
 !MCSCF STATE 3.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Singlet
 =============================
 !MCSCF STATE 4.1 Singlet Energy              -461.794096598223
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96834202
 One electron energy                          -801.98452294
 Two electron energy                           340.19042635
 Virial ratio                                    2.40376455
 
 !MCSCF STATE 4.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Singlet
 =============================
 !MCSCF STATE 5.1 Singlet Energy              -461.794096598199
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96834202
 One electron energy                          -801.98452294
 Two electron energy                           340.19042635
 Virial ratio                                    2.40376455
 
 !MCSCF STATE 5.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Singlet
 =============================
 !MCSCF STATE 6.1 Singlet Energy              -461.794096598183
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96834202
 One electron energy                          -801.98452294
 Two electron energy                           340.19042635
 Virial ratio                                    2.40376455
 
 !MCSCF STATE 6.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Singlet
 =============================
 !MCSCF STATE 7.1 Singlet Energy              -461.790094147331
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96264221
 One electron energy                          -801.96715986
 Two electron energy                           340.17706572
 Virial ratio                                    2.40377671
 
 !MCSCF STATE 7.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Singlet
 =============================
 !MCSCF STATE 8.1 Singlet Energy              -461.790094147331
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96264221
 One electron energy                          -801.96715986
 Two electron energy                           340.17706572
 Virial ratio                                    2.40377671
 
 !MCSCF STATE 8.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Singlet
 =============================
 !MCSCF STATE 9.1 Singlet Energy              -461.790094147319
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96264221
 One electron energy                          -801.96715986
 Two electron energy                           340.17706572
 Virial ratio                                    2.40377671
 
 !MCSCF STATE 9.1 Singlet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Singlet
 ==============================
 !MCSCF STATE 10.1 Singlet Energy             -461.768497911773
 Nuclear energy                                  0.00000000
 Kinetic energy                                329.26724188
 One electron energy                          -803.12770808
 Two electron energy                           341.35921016
 Virial ratio                                    2.40241251
 
 !MCSCF STATE 10.1 Singlet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Triplet
 =============================
 !MCSCF STATE 1.1 Triplet Energy              -461.806580271566
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.94097903
 One electron energy                          -801.89426470
 Two electron energy                           340.08768443
 Virial ratio                                    2.40391927
 
 !MCSCF STATE 1.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Triplet
 =============================
 !MCSCF STATE 2.1 Triplet Energy              -461.796498956361
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95450496
 One electron energy                          -801.94022996
 Two electron energy                           340.14373101
 Virial ratio                                    2.40383090
 
 !MCSCF STATE 2.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Triplet
 =============================
 !MCSCF STATE 3.1 Triplet Energy              -461.796498956361
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95450496
 One electron energy                          -801.94022996
 Two electron energy                           340.14373101
 Virial ratio                                    2.40383090
 
 !MCSCF STATE 3.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Triplet
 =============================
 !MCSCF STATE 4.1 Triplet Energy              -461.796498956359
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95450496
 One electron energy                          -801.94022996
 Two electron energy                           340.14373101
 Virial ratio                                    2.40383090
 
 !MCSCF STATE 4.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Triplet
 =============================
 !MCSCF STATE 5.1 Triplet Energy              -461.796498956349
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95450496
 One electron energy                          -801.94022996
 Two electron energy                           340.14373101
 Virial ratio                                    2.40383090
 
 !MCSCF STATE 5.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Triplet
 =============================
 !MCSCF STATE 6.1 Triplet Energy              -461.796498956343
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.95450496
 One electron energy                          -801.94022996
 Two electron energy                           340.14373101
 Virial ratio                                    2.40383090
 
 !MCSCF STATE 6.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Triplet
 =============================
 !MCSCF STATE 7.1 Triplet Energy              -461.790320929065
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96073830
 One electron energy                          -801.95966413
 Two electron energy                           340.16934320
 Virial ratio                                    2.40378552
 
 !MCSCF STATE 7.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Triplet
 =============================
 !MCSCF STATE 8.1 Triplet Energy              -461.790320929065
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96073830
 One electron energy                          -801.95966413
 Two electron energy                           340.16934320
 Virial ratio                                    2.40378552
 
 !MCSCF STATE 8.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Triplet
 =============================
 !MCSCF STATE 9.1 Triplet Energy              -461.790320929052
 Nuclear energy                                  0.00000000
 Kinetic energy                                328.96073830
 One electron energy                          -801.95966413
 Two electron energy                           340.16934320
 Virial ratio                                    2.40378552
 
 !MCSCF STATE 9.1 Triplet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Singlet|LXLX|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LXLX|2.1 Singlet>     3.151871912676
 !MCSCF expec      <3.1 Singlet|LXLX|3.1 Singlet>     1.848126728396
 !MCSCF expec      <4.1 Singlet|LXLX|4.1 Singlet>     1.000001379685
 !MCSCF expec      <5.1 Singlet|LXLX|5.1 Singlet>     2.998122238153
 !MCSCF expec      <6.1 Singlet|LXLX|6.1 Singlet>     1.001877741089
 !MCSCF expec      <7.1 Singlet|LXLX|7.1 Singlet>     0.088637985735
 !MCSCF expec      <8.1 Singlet|LXLX|8.1 Singlet>     0.911363815760
 !MCSCF expec      <9.1 Singlet|LXLX|9.1 Singlet>     0.999998198505
 !MCSCF expec    <10.1 Singlet|LXLX|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LXLX|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LXLX|2.1 Triplet>     3.576230750392
 !MCSCF expec      <3.1 Triplet|LXLX|3.1 Triplet>     1.423755095199
 !MCSCF expec      <4.1 Triplet|LXLX|4.1 Triplet>     3.001863176799
 !MCSCF expec      <5.1 Triplet|LXLX|5.1 Triplet>     1.000001914188
 !MCSCF expec      <6.1 Triplet|LXLX|6.1 Triplet>     0.998149063421
 !MCSCF expec      <7.1 Triplet|LXLX|7.1 Triplet>     0.687801099360
 !MCSCF expec      <8.1 Triplet|LXLX|8.1 Triplet>     0.312199094048
 !MCSCF expec      <9.1 Triplet|LXLX|9.1 Triplet>     0.999999806592
 
 !MCSCF expec      <1.1 Singlet|LYLY|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LYLY|2.1 Singlet>     1.848124951739
 !MCSCF expec      <3.1 Singlet|LYLY|3.1 Singlet>     3.151872879645
 !MCSCF expec      <4.1 Singlet|LYLY|4.1 Singlet>     1.000002175078
 !MCSCF expec      <5.1 Singlet|LYLY|5.1 Singlet>     3.001876556769
 !MCSCF expec      <6.1 Singlet|LYLY|6.1 Singlet>     0.998123436769
 !MCSCF expec      <7.1 Singlet|LYLY|7.1 Singlet>     0.911363680797
 !MCSCF expec      <8.1 Singlet|LYLY|8.1 Singlet>     0.088636320245
 !MCSCF expec      <9.1 Singlet|LYLY|9.1 Singlet>     0.999999998958
 !MCSCF expec    <10.1 Singlet|LYLY|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LYLY|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LYLY|2.1 Triplet>     1.423772247927
 !MCSCF expec      <3.1 Triplet|LYLY|3.1 Triplet>     3.576245436647
 !MCSCF expec      <4.1 Triplet|LYLY|4.1 Triplet>     2.998125618292
 !MCSCF expec      <5.1 Triplet|LYLY|5.1 Triplet>     1.000003623279
 !MCSCF expec      <6.1 Triplet|LYLY|6.1 Triplet>     1.001853073854
 !MCSCF expec      <7.1 Triplet|LYLY|7.1 Triplet>     0.312199043012
 !MCSCF expec      <8.1 Triplet|LYLY|8.1 Triplet>     0.687801521383
 !MCSCF expec      <9.1 Triplet|LYLY|9.1 Triplet>     0.999999435605
 
 !MCSCF expec      <1.1 Singlet|LZLZ|1.1 Singlet>    -0.000000000000
 !MCSCF expec      <2.1 Singlet|LZLZ|2.1 Singlet>     1.000003135585
 !MCSCF expec      <3.1 Singlet|LZLZ|3.1 Singlet>     1.000000391959
 !MCSCF expec      <4.1 Singlet|LZLZ|4.1 Singlet>     3.999996445237
 !MCSCF expec      <5.1 Singlet|LZLZ|5.1 Singlet>     0.000001205077
 !MCSCF expec      <6.1 Singlet|LZLZ|6.1 Singlet>     3.999998822142
 !MCSCF expec      <7.1 Singlet|LZLZ|7.1 Singlet>     0.999998333468
 !MCSCF expec      <8.1 Singlet|LZLZ|8.1 Singlet>     0.999999863995
 !MCSCF expec      <9.1 Singlet|LZLZ|9.1 Singlet>     0.000001802536
 !MCSCF expec    <10.1 Singlet|LZLZ|10.1 Singlet>    -0.000000000000
 !MCSCF expec      <1.1 Triplet|LZLZ|1.1 Triplet>    -0.000000000000
 !MCSCF expec      <2.1 Triplet|LZLZ|2.1 Triplet>     0.999997001681
 !MCSCF expec      <3.1 Triplet|LZLZ|3.1 Triplet>     0.999999468153
 !MCSCF expec      <4.1 Triplet|LZLZ|4.1 Triplet>     0.000011204908
 !MCSCF expec      <5.1 Triplet|LZLZ|5.1 Triplet>     3.999994462532
 !MCSCF expec      <6.1 Triplet|LZLZ|6.1 Triplet>     3.999997862725
 !MCSCF expec      <7.1 Triplet|LZLZ|7.1 Triplet>     0.999999857627
 !MCSCF expec      <8.1 Triplet|LZLZ|8.1 Triplet>     0.999999384569
 !MCSCF expec      <9.1 Triplet|LZLZ|9.1 Triplet>     0.000000757803
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 3 5 2 1 1 1 3   5 6 4 2 6 4 5 3 2 1   6 4 2 3 51415 81213  10 911 7 6 4 3 5 2 7
                                       1310141511 9 812 1 3   5 2 4 61415 711 9 8  121310 1 2 3 5 6 4 1  1415 812 7 9111310 2
                                        3 5 4 6 1 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 1 2 2   1 3 4 5 9 7 810 6 1   2 3 9 7 810 6 4 5 1   2 3 9 7 5 4 810 6 9
                                        7 5 4 810 6 1 2 315  17111220181921131416   810 7 9 4 5 6 1 2 3  10 8 9 7 6 4 5 1 2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000   -11.03250     1  1  s    0.97633
    2.1     2.00000    -4.00566     1  1  d1+  1.00037
    3.1     2.00000    -4.00566     1  1  d1-  1.00037
    4.1     2.00000    -4.00566     1  1  d2-  1.00037
    5.1     2.00000    -4.00566     1  1  d2+  1.00037
    6.1     2.00000    -4.00566     1  1  d0   1.00037
    7.1     1.99896    -1.41494     1  1  s   -0.47737    1  4  s    0.57566    1  5  s    0.61350    1  9  s   -0.27217
    8.1     0.00145     0.87978     1  1  s    0.59087    1  3  s   -0.62674    1  4  s   -2.34222    1  5  s    1.65492
                                    1  6  s    0.37495    1  7  s    0.26708    1  8  s   -0.58866    1  9  s    1.11820
    1.2     2.00000    -8.73723     1  1  px   1.00027
    2.2     2.00000    -8.73723     1  1  py   1.00027
    3.2     2.00000    -8.73723     1  1  pz   1.00027
    4.2     1.68390    -0.66014     1  2  pz   1.06972
    5.2     1.68390    -0.66014     1  2  py   1.06972
    6.2     1.68390    -0.66014     1  2  px   1.06972
    7.2     0.31597     0.03626     1  5  pz  -0.31387    1  9  pz   1.22483
    8.2     0.31597     0.03626     1  5  px  -0.31387    1  9  px   1.22483
    9.2     0.31597     0.03626     1  5  py  -0.31387    1  9  py   1.22483
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Singlet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 222000      0.98368147      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 20 a22b00      0.06928790     -0.00002198      0.00002938      0.00004697      0.57702352     -0.00031268     -0.00000000
 20 b22a00     -0.06928790      0.00002198     -0.00002938     -0.00004697     -0.57702352      0.00031268      0.00000000
 20 2a200b      0.06928790     -0.00000274     -0.00000540     -0.00003579     -0.28824097      0.49987337      0.00000000
 20 2b200a     -0.06928790      0.00000274      0.00000540      0.00003579      0.28824097     -0.49987337     -0.00000000
 20 22b00a      0.00000000     -0.00051082      0.00018099     -0.49971681      0.00004064     -0.00001235     -0.00064518
 20 22a00b     -0.00000000      0.00051082     -0.00018099      0.49971681     -0.00004064      0.00001235      0.00064518
 20 2a20b0     -0.00000000      0.00051082     -0.00018099      0.49971681     -0.00004064      0.00001235     -0.00064518
 20 2b20a0      0.00000000     -0.00051082      0.00018099     -0.49971681      0.00004064     -0.00001235      0.00064518
 20 22b0a0     -0.06928790     -0.00002472      0.00002398      0.00001118      0.28878255      0.49956069      0.00000000
 20 22a0b0      0.06928790      0.00002472     -0.00002398     -0.00001118     -0.28878255     -0.49956069     -0.00000000
 20 22ab00     -0.00000000     -0.26570119      0.42322557      0.00042488     -0.00003171     -0.00001514     -0.14879147
 20 22ba00      0.00000000      0.26570119     -0.42322557     -0.00042488      0.00003171      0.00001514      0.14879147
 20 a220b0     -0.00000000     -0.26570120      0.42322557      0.00042488     -0.00003171     -0.00001514      0.14879147
 20 b220a0      0.00000000      0.26570120     -0.42322557     -0.00042488      0.00003171      0.00001514     -0.14879147
 20 2b2a00     -0.00000000     -0.42322547     -0.26570147      0.00033640     -0.00000262     -0.00000668     -0.47710904
 20 2a2b00      0.00000000      0.42322547      0.26570147     -0.00033640      0.00000262      0.00000668      0.47710904
 20 a2200b     -0.00000000      0.42322547      0.26570148     -0.00033640      0.00000262      0.00000668     -0.47710904
 20 b2200a      0.00000000     -0.42322547     -0.26570148      0.00033640     -0.00000262     -0.00000668      0.47710904
 
 Energy:     -462.18507110   -461.79409660   -461.79409660   -461.79409660   -461.79409660   -461.79409660   -461.79009415

 State:              8               9              10
 20 222000     -0.00000000      0.00000000     -0.16860039
 20 a22b00     -0.00000000      0.00000000      0.40185850
 20 b22a00      0.00000000     -0.00000000     -0.40185850
 20 2a200b     -0.00000000     -0.00000000      0.40185850
 20 2b200a      0.00000000      0.00000000     -0.40185850
 20 22b00a     -0.00018431     -0.49977186     -0.00000000
 20 22a00b      0.00018431      0.49977186      0.00000000
 20 2a20b0     -0.00018431     -0.49977186     -0.00000000
 20 2b20a0      0.00018431      0.49977186      0.00000000
 20 22b0a0     -0.00000000      0.00000000     -0.40185850
 20 22a0b0      0.00000000     -0.00000000      0.40185850
 20 22ab00      0.47710948      0.00001613     -0.00000000
 20 22ba00     -0.47710948     -0.00001613      0.00000000
 20 a220b0     -0.47710948     -0.00001613      0.00000000
 20 b220a0      0.47710948      0.00001613     -0.00000000
 20 2b2a00     -0.14879136      0.00067079      0.00000000
 20 2a2b00      0.14879136     -0.00067079     -0.00000000
 20 a2200b     -0.14879136      0.00067079      0.00000000
 20 b2200a      0.14879136     -0.00067079     -0.00000000
 
 Energy:     -461.79009415   -461.79009415   -461.76849791
 
 
 CI Coefficients of symmetry 1 (Triplet)
 =======================================

 State:              1               2               3               4               5               6               7
 20 a22a00      0.57700101      0.00191694     -0.00125400      0.81614344      0.00060183     -0.00043644     -0.00000000
 20 22a0a0      0.57700101     -0.00129451      0.00085423     -0.40769265     -0.00024810      0.70702204      0.00000000
 20 22a00a      0.00000000      0.00055358      0.00050292     -0.00052175      0.70680344     -0.00005243     -0.00026667
 20 2a20a0     -0.00000000      0.00055358      0.00050292     -0.00052175      0.70680344     -0.00005243      0.00026667
 20 2a200a      0.57700101     -0.00062243      0.00039977     -0.40845079     -0.00035372     -0.70658559     -0.00000000
 20 a220a0      0.00000000      0.26564217      0.65498517      0.00038290     -0.00067383     -0.00008443     -0.58613235
 20 22aa00     -0.00000000      0.26564217      0.65498517      0.00038290     -0.00067383     -0.00008443      0.58613235
 20 a2200a     -0.00000000      0.65498321     -0.26564052     -0.00194611     -0.00032539      0.00039787      0.39489350
 20 2a2a00     -0.00000000      0.65498321     -0.26564052     -0.00194611     -0.00032539      0.00039787     -0.39489350
 
 Energy:     -461.80658027   -461.79649896   -461.79649896   -461.79649896   -461.79649896   -461.79649896   -461.79032093

 State:              8               9
 20 a22a00     -0.00000000     -0.00000000
 20 22a0a0     -0.00000000     -0.00000000
 20 22a00a     -0.00055444     -0.70674727
 20 2a20a0      0.00055444      0.70674727
 20 2a200a      0.00000000      0.00000000
 20 a220a0     -0.39489323      0.00053095
 20 22aa00      0.39489324     -0.00053095
 20 a2200a     -0.58613233      0.00031082
 20 2a2a00      0.58613233     -0.00031082
 
 Energy:     -461.79032093   -461.79032093
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5        1.25       700     1000      520     2100     2140   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF   

 PROGRAMS   *        TOTAL     MULTI   RHF-SCF       INT
 CPU TIMES  *         8.99      6.62      0.13      2.03
 REAL TIME  *        33.86 SEC
 DISK USED  *        55.56 MB (local),     1009.50 MB (total)
 SF USED    *        67.05 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and &lt;L**2&gt; values

         ENERGY     LL
    -462.1850711  -0.0
    -461.7940966   6.0
    -461.7940966   6.0
    -461.7940966   6.0
    -461.7940966   6.0
    -461.7940966   6.0
    -461.7900941   2.0
    -461.7900941   2.0
    -461.7900941   2.0
    -461.7684979  -0.0
    -461.8065803  -0.0
    -461.7964990   6.0
    -461.7964990   6.0
    -461.7964990   6.0
    -461.7964990   6.0
    -461.7964990   6.0
    -461.7903209   2.0
    -461.7903209   2.0
    -461.7903209   2.0
                                                  


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
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  10

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -462.18507110
     2      -461.79409660
     3      -461.79409660
     4      -461.79409660
     5      -461.79409660
     6      -461.79409660
     7      -461.79009415
     8      -461.79009415
     9      -461.79009415
    10      -461.76849791

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1024D-06

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1995D-06

 Number of blocks in overlap matrix:   923   Smallest eigenvalue:  0.10D-06
 Number of N-2 electron functions:    2847
 Number of N-1 electron functions:  278292

 Number of internal configurations:                65352
 Number of singly external configurations:      20731676
 Number of doubly external configurations:      15811513
 Total number of contracted configurations:     36608541
 Total number of uncontracted configurations: 1586368004

 Diagonal Coupling coefficients finished.               Storage:  74681119 words, CPU-Time:    406.32 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   2975173 words, CPU-time:      1.21 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -462.18507110    -0.00000000    -1.15697579  0.35D-01  0.57D-01   435.47
    1     2     2     1.00000000     0.00000000  -461.79409660     0.00000000    -1.14182248  0.21D-01  0.60D-01   435.47
    1     3     3     1.00000000     0.00000000  -461.79409660    -0.00000000    -1.14181649  0.21D-01  0.60D-01   435.47
    1     4     4     1.00000000     0.00000000  -461.79409660    -0.00000000    -1.14220239  0.21D-01  0.60D-01   435.47
    1     5     5     1.00000000     0.00000000  -461.79409660     0.00000000    -1.15051405  0.21D-01  0.65D-01   435.47
    1     6     6     1.00000000     0.00000000  -461.79409660     0.00000000    -1.14945531  0.21D-01  0.64D-01   435.47
    1     7     7     1.00000000     0.00000000  -461.79009415    -0.00000000    -1.14462600  0.22D-01  0.61D-01   435.47
    1     8     8     1.00000000     0.00000000  -461.79009415     0.00000000    -1.14463139  0.22D-01  0.61D-01   435.47
    1     9     9     1.00000000     0.00000000  -461.79009415    -0.00000000    -1.14471107  0.22D-01  0.61D-01   435.47
    1    10    10     1.00000000     0.00000000  -461.76849791     0.00000000    -1.16628322  0.46D-01  0.64D-01   435.47
    2     1     1     1.07117904    -1.01831547  -463.20338657    -1.01831547    -0.03018976  0.58D-02  0.15D-02  2999.14
    2     2     2     1.06234754    -1.00190975  -462.79600634    -1.00190975    -0.01923851  0.16D-02  0.98D-03  2999.14
    2     3     3     1.06234558    -1.00190750  -462.79600410    -1.00190750    -0.01924042  0.16D-02  0.98D-03  2999.14
    2     4     4     1.06238897    -1.00187139  -462.79596799    -1.00187139    -0.01927956  0.16D-02  0.98D-03  2999.14
    2     5     5     1.06494523    -1.00096960  -462.79506620    -1.00096960    -0.02020591  0.16D-02  0.12D-02  2999.14
    2     6     6     1.06470634    -1.00086575  -462.79496235    -1.00086575    -0.02028798  0.16D-02  0.13D-02  2999.14
    2     7     7     1.06318373    -1.00234997  -462.79244412    -1.00234997    -0.01928052  0.15D-02  0.10D-02  2999.14
    2     8     8     1.06318617    -1.00234976  -462.79244390    -1.00234976    -0.01928036  0.15D-02  0.10D-02  2999.14
    2     9     9     1.06318467    -1.00229678  -462.79239093    -1.00229678    -0.01931475  0.15D-02  0.10D-02  2999.14
    2    10    10     1.07911029    -0.99575672  -462.76425463    -0.99575672    -0.03242218  0.91D-02  0.12D-02  2999.14
    3     1     1     1.06392797    -1.04891128  -463.23398238    -0.03059581    -0.00155133  0.59D-04  0.16D-03  5555.84
    3     2     2     1.05978869    -1.02012265  -462.81421925    -0.01821290    -0.00068474  0.26D-04  0.77D-04  5555.84
    3     3     3     1.05978765    -1.02012252  -462.81421911    -0.01821501    -0.00068495  0.26D-04  0.77D-04  5555.84
    3     4     4     1.05978882    -1.02011849  -462.81421509    -0.01824710    -0.00068664  0.26D-04  0.78D-04  5555.84
    3     5     5     1.06010480    -1.02010318  -462.81419978    -0.01913358    -0.00069279  0.25D-04  0.83D-04  5555.84
    3     6     6     1.06002604    -1.02008614  -462.81418274    -0.01922039    -0.00070308  0.25D-04  0.84D-04  5555.84
    3     7     7     1.06016572    -1.02062838  -462.81072253    -0.01827841    -0.00068208  0.26D-04  0.78D-04  5555.84
    3     8     8     1.06016607    -1.02062816  -462.81072230    -0.01827840    -0.00068212  0.26D-04  0.78D-04  5555.84
    3     9     9     1.06014776    -1.02061604  -462.81071019    -0.01831926    -0.00068889  0.26D-04  0.79D-04  5555.84
    3    10    10     1.06225851    -1.02630958  -462.79480750    -0.03055286    -0.00121710  0.12D-03  0.11D-03  5555.84
    4     1     1     1.06769377    -1.05077835  -463.23584946    -0.00186708    -0.00012446  0.46D-05  0.11D-04  8118.04
    4     2     2     1.06163044    -1.02096329  -462.81505989    -0.00084064    -0.00006892  0.23D-05  0.72D-05  8118.04
    4     3     3     1.06163039    -1.02096320  -462.81505980    -0.00084069    -0.00006894  0.23D-05  0.72D-05  8118.04
    4     4     4     1.06162715    -1.02096223  -462.81505882    -0.00084373    -0.00006956  0.23D-05  0.73D-05  8118.04
    4     5     5     1.06154657    -1.02095668  -462.81505328    -0.00085350    -0.00007415  0.24D-05  0.82D-05  8118.04
    4     6     6     1.06155260    -1.02095580  -462.81505239    -0.00086966    -0.00007491  0.24D-05  0.81D-05  8118.04
    4     7     7     1.06187753    -1.02146933  -462.81156348    -0.00084095    -0.00006994  0.24D-05  0.72D-05  8118.04
    4     8     8     1.06187734    -1.02146924  -462.81156339    -0.00084108    -0.00006998  0.24D-05  0.72D-05  8118.04
    4     9     9     1.06187145    -1.02146755  -462.81156170    -0.00085151    -0.00007121  0.24D-05  0.73D-05  8118.04
    4    10    10     1.06312061    -1.02768750  -462.79618541    -0.00137791    -0.00011019  0.37D-05  0.13D-04  8118.04
    5     1     1     1.06865351    -1.05092360  -463.23599470    -0.00014524    -0.00000946  0.16D-06  0.96D-06 10681.19
    5     2     2     1.06226913    -1.02105058  -462.81514718    -0.00008729    -0.00000638  0.21D-06  0.68D-06 10681.19
    5     3     3     1.06226957    -1.02105035  -462.81514695    -0.00008715    -0.00000652  0.21D-06  0.70D-06 10681.19
    5     4     4     1.06228026    -1.02105033  -462.81514693    -0.00008810    -0.00000636  0.20D-06  0.68D-06 10681.19
    5     5     5     1.06228036    -1.02105030  -462.81514690    -0.00009362    -0.00000637  0.20D-06  0.68D-06 10681.19
    5     6     6     1.06228087    -1.02105018  -462.81514678    -0.00009438    -0.00000644  0.21D-06  0.69D-06 10681.19
    5     7     7     1.06253820    -1.02155705  -462.81165119    -0.00008772    -0.00000612  0.19D-06  0.65D-06 10681.19
    5     8     8     1.06253821    -1.02155702  -462.81165117    -0.00008779    -0.00000614  0.19D-06  0.65D-06 10681.19
    5     9     9     1.06253818    -1.02155687  -462.81165102    -0.00008932    -0.00000624  0.19D-06  0.66D-06 10681.19
    5    10    10     1.06387025    -1.02782784  -462.79632575    -0.00014034    -0.00001220  0.45D-06  0.13D-05 10681.19
    6     1     1     1.06868248    -1.05093521  -463.23600632    -0.00001162    -0.00000093  0.28D-07  0.87D-07 13240.44
    6     2     2     1.06226327    -1.02105860  -462.81515520    -0.00000802    -0.00000080  0.36D-07  0.87D-07 13240.44
    6     3     3     1.06226219    -1.02105857  -462.81515516    -0.00000821    -0.00000082  0.36D-07  0.90D-07 13240.44
    6     4     4     1.06226443    -1.02105855  -462.81515515    -0.00000822    -0.00000084  0.36D-07  0.87D-07 13240.44
    6     5     5     1.06226440    -1.02105855  -462.81515514    -0.00000824    -0.00000085  0.36D-07  0.87D-07 13240.44
    6     6     6     1.06226413    -1.02105852  -462.81515512    -0.00000834    -0.00000086  0.36D-07  0.89D-07 13240.44
    6     7     7     1.06252672    -1.02156483  -462.81165897    -0.00000778    -0.00000075  0.35D-07  0.77D-07 13240.44
    6     8     8     1.06252668    -1.02156482  -462.81165897    -0.00000780    -0.00000076  0.36D-07  0.78D-07 13240.44
    6     9     9     1.06252615    -1.02156479  -462.81165894    -0.00000792    -0.00000077  0.36D-07  0.79D-07 13240.44
    6    10    10     1.06389464    -1.02784334  -462.79634125    -0.00001550    -0.00000178  0.10D-06  0.18D-06 13240.44
    7     1     1     1.06870759    -1.05093633  -463.23600743    -0.00000112    -0.00000011  0.46D-08  0.10D-07 15801.64
    7     2     2     1.06227145    -1.02105960  -462.81515620    -0.00000100    -0.00000013  0.72D-08  0.13D-07 15801.64
    7     3     3     1.06227037    -1.02105960  -462.81515620    -0.00000104    -0.00000014  0.69D-08  0.13D-07 15801.64
    7     4     4     1.06227038    -1.02105960  -462.81515620    -0.00000105    -0.00000014  0.69D-08  0.13D-07 15801.64
    7     5     5     1.06227134    -1.02105960  -462.81515620    -0.00000106    -0.00000014  0.74D-08  0.13D-07 15801.64
    7     6     6     1.06227020    -1.02105959  -462.81515619    -0.00000107    -0.00000014  0.71D-08  0.14D-07 15801.64
    7     7     7     1.06253482    -1.02156577  -462.81165992    -0.00000094    -0.00000012  0.60D-08  0.12D-07 15801.64
    7     8     8     1.06253480    -1.02156577  -462.81165991    -0.00000094    -0.00000012  0.60D-08  0.12D-07 15801.64
    7     9     9     1.06253457    -1.02156576  -462.81165990    -0.00000096    -0.00000012  0.61D-08  0.12D-07 15801.64
    7    10    10     1.06391109    -1.02784557  -462.79634348    -0.00000223    -0.00000032  0.18D-07  0.32D-07 15801.64
    8     1     1     1.06871441    -1.05093646  -463.23600756    -0.00000013    -0.00000002  0.51D-09  0.14D-08 18361.18
    8     2     2     1.06227735    -1.02105977  -462.81515637    -0.00000017    -0.00000002  0.11D-08  0.20D-08 18361.18
    8     3     3     1.06227735    -1.02105977  -462.81515637    -0.00000017    -0.00000002  0.11D-08  0.20D-08 18361.18
    8     4     4     1.06227779    -1.02105977  -462.81515637    -0.00000017    -0.00000002  0.10D-08  0.20D-08 18361.18
    8     5     5     1.06227786    -1.02105977  -462.81515637    -0.00000017    -0.00000002  0.97D-09  0.19D-08 18361.18
    8     6     6     1.06227730    -1.02105977  -462.81515636    -0.00000017    -0.00000002  0.11D-08  0.21D-08 18361.18
    8     7     7     1.06254168    -1.02156592  -462.81166006    -0.00000015    -0.00000002  0.88D-09  0.18D-08 18361.18
    8     8     8     1.06254167    -1.02156592  -462.81166006    -0.00000015    -0.00000002  0.89D-09  0.18D-08 18361.18
    8     9     9     1.06254162    -1.02156591  -462.81166006    -0.00000015    -0.00000002  0.91D-09  0.18D-08 18361.18
    8    10    10     1.06391307    -1.02784597  -462.79634388    -0.00000040    -0.00000006  0.38D-08  0.55D-08 18361.18


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.4%
 S   0.3%  34.9%
 P   0.2%  40.2%  18.1%

 Initialization:   2.2%
 Other:            3.6%

 Total CPU:    18361.2 seconds
 =====================================



 Wavefunction saved on  5201.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222222000           0.9577042  -0.0000000   0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000
                             0.0000000  -0.1220990
 22222220222/22\00           0.0724797   0.0113435   0.0001620  -0.1911955   0.7677687   0.0245400   0.0000000  -0.0000000
                             0.0000000   0.5545839
 222222202222/200\           0.0724797   0.0019839  -0.0052983   0.7608682  -0.2183758  -0.0106894  -0.0000000   0.0000000
                            -0.0000000   0.5545847
 222222202222/20\0           0.0000000  -0.0005859   0.0037699   0.0036304  -0.0209913   0.6852722   0.0000000   0.0000000
                             0.6856199   0.0000000
 2222222022222/00\          -0.0000000  -0.0005859   0.0037699   0.0036304  -0.0209913   0.6852723  -0.0000000   0.0000000
                            -0.6856198   0.0000000
 2222222022222/\00          -0.0000000  -0.0139145   0.6854431   0.0051787   0.0014709  -0.0037652  -0.6845368   0.0384877
                             0.0000000  -0.0000000
 22222220222/220\0          -0.0000000  -0.0139145   0.6854393   0.0051786   0.0014709  -0.0037651   0.6845406  -0.0384879
                            -0.0000000   0.0000000
 222222202222/2\00          -0.0000000   0.6853611   0.0139757  -0.0049497  -0.0113675   0.0001871  -0.0384877  -0.6845369
                            -0.0000000  -0.0000000
 22222220222/2200\          -0.0000000   0.6853575   0.0139756  -0.0049497  -0.0113674   0.0001871   0.0384880   0.6845405
                            -0.0000000   0.0000000
 2222222022222/0\0           0.0724797  -0.0133274   0.0051363  -0.5696730  -0.5493920  -0.0138506  -0.0000000  -0.0000000
                            -0.0000000   0.5545846

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.966486   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.038948
 2           0.000000    0.969809   -0.019690   -0.000829    0.013826   -0.010929    0.000000   -0.000003    0.000000    0.000000
 3           0.000000    0.019776    0.969925    0.005335    0.000249    0.007381   -0.000003   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.007004    0.007328    0.005137   -0.240786   -0.939745   -0.000000   -0.000000    0.000000   -0.000000
 5          -0.000000   -0.016085    0.002081   -0.029703    0.939231   -0.240681   -0.000000    0.000000   -0.000000    0.000001
 6          -0.000000    0.000265   -0.005328    0.969686    0.030057   -0.002444    0.000000   -0.000000   -0.000000    0.000000
 7          -0.000000    0.000000    0.000003   -0.000000    0.000000    0.000000    0.968522    0.054455    0.000000   -0.000000
 8          -0.000000    0.000003   -0.000000    0.000000   -0.000000   -0.000000   -0.054455    0.968522   -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.970051   -0.000000
 10          0.042217   -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000000    0.000000    0.000000    0.968484

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.967269   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.001591
 2          -0.000000    0.970169    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000    0.000000    0.970169    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.970169    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.970169   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.970169    0.000000   -0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.970051    0.000000   -0.000000    0.000000
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.970051    0.000000    0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970051   -0.000000
 10          0.001591   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.969403


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.96648574 (fixed)   0.96730700 (relaxed)   0.96726889 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00010108   -0.00034692   -0.98970950
 Singles      0.00941647   -0.05422253   -0.05999273
 Pairs        0.05930489    0.06100356   -0.00123423
 Total        1.06882243    0.00643411   -1.05093646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -462.18433943
 Nuclear energy                         0.00000000
 Kinetic energy                       330.02821666
 One electron energy                 -808.91089325
 Two electron energy                  345.67488569
 Virial quotient                       -1.40362546
 Correlation energy                    -1.05166814
 !MRCI STATE 1.1 Energy              -463.236007563847

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -463.30838592 (Davidson, fixed reference)
 Cluster corrected energies          -463.30829735 (Davidson, relaxed reference)
 Cluster corrected energies          -463.30838592 (Davidson, rotated reference)

 Cluster corrected energies          -463.30692274 (Pople, fixed reference)
 Cluster corrected energies          -463.30683067 (Pople, relaxed reference)
 Cluster corrected energies          -463.30692274 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.96980885 (fixed)   0.97022092 (relaxed)   0.97016914 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015467   -0.00054057   -0.90176013
 Singles      0.01040054   -0.06315017   -0.06943439
 Pairs        0.05188644   -0.00000001   -0.04986526
 Total        1.06244165   -0.06369075   -1.02105977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79409660
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52197472
 One electron energy                 -801.24299573
 Two electron energy                  338.42783936
 Virial quotient                       -1.40450468
 Correlation energy                    -1.02105977
 !MRCI STATE 2.1 Energy              -462.815156369818

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87891302 (Davidson, fixed reference)
 Cluster corrected energies          -462.87879723 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87891302 (Davidson, rotated reference)

 Cluster corrected energies          -462.87727243 (Pople, fixed reference)
 Cluster corrected energies          -462.87715341 (Pople, relaxed reference)
 Cluster corrected energies          -462.87727243 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.96992477 (fixed)   0.97022092 (relaxed)   0.97016914 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015467   -0.00054057   -0.90176013
 Singles      0.01040053   -0.06315018   -0.06943439
 Pairs        0.05188645   -0.00000000   -0.04986526
 Total        1.06244165   -0.06369075   -1.02105977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79409660
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52198021
 One electron energy                 -801.24299768
 Two electron energy                  338.42784131
 Virial quotient                       -1.40450466
 Correlation energy                    -1.02105977
 !MRCI STATE 3.1 Energy              -462.815156368370

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87891303 (Davidson, fixed reference)
 Cluster corrected energies          -462.87879723 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87891303 (Davidson, rotated reference)

 Cluster corrected energies          -462.87727243 (Pople, fixed reference)
 Cluster corrected energies          -462.87715341 (Pople, relaxed reference)
 Cluster corrected energies          -462.87727243 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.93974497 (fixed)   0.97022072 (relaxed)   0.97016894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015467   -0.00054057   -0.90176018
 Singles      0.01040041   -0.06314988   -0.06943422
 Pairs        0.05188701    0.00000016   -0.04986537
 Total        1.06244209   -0.06369030   -1.02105977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79409660
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52205892
 One electron energy                 -801.24300836
 Two electron energy                  338.42785199
 Virial quotient                       -1.40450432
 Correlation energy                    -1.02105977
 !MRCI STATE 4.1 Energy              -462.815156367518

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87891347 (Davidson, fixed reference)
 Cluster corrected energies          -462.87879768 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87891347 (Davidson, rotated reference)

 Cluster corrected energies          -462.87727289 (Pople, fixed reference)
 Cluster corrected energies          -462.87715387 (Pople, relaxed reference)
 Cluster corrected energies          -462.87727289 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.93923111 (fixed)   0.97022069 (relaxed)   0.97016891 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015466   -0.00054057   -0.90175932
 Singles      0.01040047   -0.06315001   -0.06943431
 Pairs        0.05188702   -0.00000056   -0.04986614
 Total        1.06244215   -0.06369115   -1.02105977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79409660
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52209814
 One electron energy                 -801.24301865
 Two electron energy                  338.42786228
 Virial quotient                       -1.40450416
 Correlation energy                    -1.02105977
 !MRCI STATE 5.1 Energy              -462.815156365103

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87891353 (Davidson, fixed reference)
 Cluster corrected energies          -462.87879775 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87891353 (Davidson, rotated reference)

 Cluster corrected energies          -462.87727296 (Pople, fixed reference)
 Cluster corrected energies          -462.87715394 (Pople, relaxed reference)
 Cluster corrected energies          -462.87727296 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.96968571 (fixed)   0.97022095 (relaxed)   0.97016916 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015467   -0.00054057   -0.90176014
 Singles      0.01040053   -0.06315020   -0.06943438
 Pairs        0.05188640   -0.00000001   -0.04986524
 Total        1.06244160   -0.06369078   -1.02105977
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79409660
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52195649
 One electron energy                 -801.24298931
 Two electron energy                  338.42783295
 Virial quotient                       -1.40450476
 Correlation energy                    -1.02105977
 !MRCI STATE 6.1 Energy              -462.815156363988

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87891297 (Davidson, fixed reference)
 Cluster corrected energies          -462.87879717 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87891297 (Davidson, rotated reference)

 Cluster corrected energies          -462.87727237 (Pople, fixed reference)
 Cluster corrected energies          -462.87715335 (Pople, relaxed reference)
 Cluster corrected energies          -462.87727237 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.96852170 (fixed)   0.97010037 (relaxed)   0.97005134 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014872   -0.00053484   -0.90130379
 Singles      0.01071683   -0.06390258   -0.07043457
 Pairs        0.05183416    0.00000000   -0.04982755
 Total        1.06269971   -0.06443742   -1.02156592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79009415
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52048624
 One electron energy                 -801.23386722
 Two electron energy                  338.42220716
 Virial quotient                       -1.40450042
 Correlation energy                    -1.02156592
 !MRCI STATE 7.1 Energy              -462.811660063512

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87571195 (Davidson, fixed reference)
 Cluster corrected energies          -462.87560221 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87571195 (Davidson, rotated reference)

 Cluster corrected energies          -462.87407798 (Pople, fixed reference)
 Cluster corrected energies          -462.87396513 (Pople, relaxed reference)
 Cluster corrected energies          -462.87407798 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.96852171 (fixed)   0.97010037 (relaxed)   0.97005134 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014872   -0.00053484   -0.90130381
 Singles      0.01071682   -0.06390257   -0.07043457
 Pairs        0.05183415    0.00000001   -0.04982754
 Total        1.06269970   -0.06443741   -1.02156592
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79009415
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52048143
 One electron energy                 -801.23386539
 Two electron energy                  338.42220533
 Virial quotient                       -1.40450044
 Correlation energy                    -1.02156592
 !MRCI STATE 8.1 Energy              -462.811660062602

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87571194 (Davidson, fixed reference)
 Cluster corrected energies          -462.87560220 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87571194 (Davidson, rotated reference)

 Cluster corrected energies          -462.87407797 (Pople, fixed reference)
 Cluster corrected energies          -462.87396512 (Pople, relaxed reference)
 Cluster corrected energies          -462.87407797 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.97005137 (fixed)   0.97010040 (relaxed)   0.97005137 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014873   -0.00053484   -0.90130386
 Singles      0.01071681   -0.06390256   -0.07043454
 Pairs        0.05183411    0.00000000   -0.04982752
 Total        1.06269964   -0.06443740   -1.02156591
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79009415
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52046211
 One electron energy                 -801.23385901
 Two electron energy                  338.42219895
 Virial quotient                       -1.40450052
 Correlation energy                    -1.02156591
 !MRCI STATE 9.1 Energy              -462.811660055762

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87571187 (Davidson, fixed reference)
 Cluster corrected energies          -462.87560214 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87571187 (Davidson, rotated reference)

 Cluster corrected energies          -462.87407791 (Pople, fixed reference)
 Cluster corrected energies          -462.87396506 (Pople, relaxed reference)
 Cluster corrected energies          -462.87407791 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.96848410 (fixed)   0.96947606 (relaxed)   0.96940250 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00019708   -0.00054928   -0.00136349
 Singles      0.01146242   -0.06486100   -0.07202560
 Pairs        0.05246325   -0.96173661   -0.95445687
 Total        1.06412275   -1.02714689   -1.02784597
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.76922959
 Nuclear energy                         0.00000000
 Kinetic energy                       329.62186944
 One electron energy                 -801.72934741
 Two electron energy                  338.93300353
 Virial quotient                       -1.40402196
 Correlation energy                    -1.02711429
 !MRCI STATE 10.1 Energy             -462.796343877983

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.86220527 (Davidson, fixed reference)
 Cluster corrected energies          -462.86203942 (Davidson, relaxed reference)
 Cluster corrected energies          -462.86220527 (Davidson, rotated reference)

 Cluster corrected energies          -462.86060588 (Pople, fixed reference)
 Cluster corrected energies          -462.86043492 (Pople, relaxed reference)
 Cluster corrected energies          -462.86060588 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6     2814.04       700     1000      520     2100     2140     5201   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     21604.76  21595.76      6.62      0.13      2.03
 REAL TIME  *     21904.97 SEC
 DISK USED  *         2.80 GB (local),       42.19 GB (total)
 SF USED    *        28.98 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -463.30838592  AU                              
 SETTING HLSDIAG(2)     =      -462.87891302  AU                              
 SETTING HLSDIAG(3)     =      -462.87891303  AU                              
 SETTING HLSDIAG(4)     =      -462.87891347  AU                              
 SETTING HLSDIAG(5)     =      -462.87891353  AU                              
 SETTING HLSDIAG(6)     =      -462.87891297  AU                              
 SETTING HLSDIAG(7)     =      -462.87571195  AU                              
 SETTING HLSDIAG(8)     =      -462.87571194  AU                              
 SETTING HLSDIAG(9)     =      -462.87571187  AU                              
 SETTING HLSDIAG(10)    =      -462.86220527  AU                              


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
 Number of external orbitals:     149 (  78  71 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:   9

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -461.80658027
     2      -461.79649896
     3      -461.79649896
     4      -461.79649896
     5      -461.79649896
     6      -461.79649896
     7      -461.79032093
     8      -461.79032093
     9      -461.79032093

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1398D-06

 Number of blocks in overlap matrix:   843   Smallest eigenvalue:  0.14D-06
 Number of N-2 electron functions:    2556
 Number of N-1 electron functions:  505086

 Number of internal configurations:               107628
 Number of singly external configurations:      37628004
 Number of doubly external configurations:      14194044
 Total number of contracted configurations:     51929676
 Total number of uncontracted configurations: 3011853216

 Diagonal Coupling coefficients finished.               Storage: 101617479 words, CPU-Time:    759.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:   4065664 words, CPU-time:      1.50 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -461.80658027    -0.00000000    -1.15365561  0.24D-01  0.66D-01   795.14
    1     2     2     1.00000000     0.00000000  -461.79649896     0.00000000    -1.15037277  0.22D-01  0.64D-01   795.14
    1     3     3     1.00000000     0.00000000  -461.79649896     0.00000000    -1.15051954  0.22D-01  0.64D-01   795.14
    1     4     4     1.00000000     0.00000000  -461.79649896     0.00000000    -1.15299558  0.22D-01  0.66D-01   795.14
    1     5     5     1.00000000     0.00000000  -461.79649896     0.00000000    -1.15105388  0.22D-01  0.65D-01   795.14
    1     6     6     1.00000000     0.00000000  -461.79649896     0.00000000    -1.15182531  0.22D-01  0.65D-01   795.14
    1     7     7     1.00000000     0.00000000  -461.79032093     0.00000000    -1.15045483  0.22D-01  0.64D-01   795.14
    1     8     8     1.00000000     0.00000000  -461.79032093     0.00000000    -1.15044722  0.22D-01  0.64D-01   795.14
    1     9     9     1.00000000     0.00000000  -461.79032093     0.00000000    -1.15096567  0.22D-01  0.65D-01   795.14
    2     1     1     1.06714816    -0.99990300  -462.80648327    -0.99990300    -0.02069207  0.19D-02  0.12D-02  4641.53
    2     2     2     1.06533891    -1.00143000  -462.79792895    -1.00143000    -0.01989282  0.16D-02  0.11D-02  4641.53
    2     3     3     1.06529721    -1.00138561  -462.79788457    -1.00138561    -0.01991706  0.16D-02  0.12D-02  4641.53
    2     4     4     1.06549974    -1.00130711  -462.79780606    -1.00130711    -0.02001512  0.16D-02  0.12D-02  4641.53
    2     5     5     1.06594975    -1.00098432  -462.79748328    -1.00098432    -0.02026506  0.16D-02  0.13D-02  4641.53
    2     6     6     1.06572208    -1.00078056  -462.79727951    -1.00078056    -0.02040218  0.16D-02  0.13D-02  4641.53
    2     7     7     1.06511443    -1.00216267  -462.79248359    -1.00216267    -0.01946193  0.15D-02  0.11D-02  4641.53
    2     8     8     1.06511585    -1.00215821  -462.79247914    -1.00215821    -0.01946673  0.15D-02  0.11D-02  4641.53
    2     9     9     1.06526995    -1.00204893  -462.79236986    -1.00204893    -0.01957442  0.15D-02  0.12D-02  4641.53
    3     1     1     1.06064862    -1.01933686  -462.82591713    -0.01943386    -0.00058397  0.29D-04  0.66D-04  8484.91
    3     2     2     1.06049224    -1.02012417  -462.81662313    -0.01869417    -0.00060058  0.23D-04  0.70D-04  8484.91
    3     3     3     1.06049198    -1.02011988  -462.81661884    -0.01873427    -0.00060336  0.23D-04  0.71D-04  8484.91
    3     4     4     1.06046621    -1.02011320  -462.81661216    -0.01880609    -0.00060718  0.23D-04  0.71D-04  8484.91
    3     5     5     1.06047610    -1.02006845  -462.81656741    -0.01908413    -0.00063239  0.23D-04  0.77D-04  8484.91
    3     6     6     1.06036160    -1.02003492  -462.81653387    -0.01925436    -0.00065349  0.23D-04  0.79D-04  8484.91
    3     7     7     1.06058994    -1.02046728  -462.81078821    -0.01830462    -0.00059184  0.24D-04  0.69D-04  8484.91
    3     8     8     1.06058862    -1.02046718  -462.81078811    -0.01830897    -0.00059188  0.24D-04  0.69D-04  8484.91
    3     9     9     1.06058892    -1.02046435  -462.81078527    -0.01841542    -0.00059363  0.24D-04  0.70D-04  8484.91
    4     1     1     1.06153498    -1.02001108  -462.82659135    -0.00067422    -0.00004847  0.15D-05  0.58D-05 12333.65
    4     2     2     1.06168235    -1.02083246  -462.81733142    -0.00070829    -0.00005317  0.17D-05  0.61D-05 12333.65
    4     3     3     1.06167524    -1.02083167  -462.81733062    -0.00071178    -0.00005362  0.17D-05  0.62D-05 12333.65
    4     4     4     1.06167699    -1.02083123  -462.81733019    -0.00071803    -0.00005416  0.17D-05  0.62D-05 12333.65
    4     5     5     1.06162958    -1.02082354  -462.81732250    -0.00075509    -0.00005995  0.19D-05  0.69D-05 12333.65
    4     6     6     1.06162007    -1.02082064  -462.81731960    -0.00078573    -0.00006226  0.20D-05  0.70D-05 12333.65
    4     7     7     1.06176195    -1.02116572  -462.81148665    -0.00069844    -0.00005332  0.17D-05  0.61D-05 12333.65
    4     8     8     1.06176171    -1.02116571  -462.81148663    -0.00069852    -0.00005333  0.17D-05  0.61D-05 12333.65
    4     9     9     1.06175420    -1.02116495  -462.81148588    -0.00070061    -0.00005373  0.17D-05  0.62D-05 12333.65
    5     1     1     1.06209331    -1.02007106  -462.82665133    -0.00005998    -0.00000357  0.15D-06  0.38D-06 16181.61
    5     2     2     1.06227927    -1.02089817  -462.81739712    -0.00006571    -0.00000396  0.14D-06  0.43D-06 16181.61
    5     3     3     1.06227931    -1.02089811  -462.81739707    -0.00006644    -0.00000402  0.14D-06  0.43D-06 16181.61
    5     4     4     1.06227961    -1.02089804  -462.81739699    -0.00006681    -0.00000404  0.14D-06  0.44D-06 16181.61
    5     5     5     1.06227771    -1.02089785  -462.81739681    -0.00007431    -0.00000434  0.15D-06  0.45D-06 16181.61
    5     6     6     1.06227930    -1.02089754  -462.81739650    -0.00007690    -0.00000455  0.15D-06  0.48D-06 16181.61
    5     7     7     1.06235891    -1.02123161  -462.81155254    -0.00006589    -0.00000398  0.13D-06  0.43D-06 16181.61
    5     8     8     1.06235890    -1.02123161  -462.81155254    -0.00006591    -0.00000398  0.13D-06  0.43D-06 16181.61
    5     9     9     1.06235959    -1.02123148  -462.81155241    -0.00006653    -0.00000406  0.13D-06  0.44D-06 16181.61
    6     1     1     1.06211549    -1.02007536  -462.82665563    -0.00000431    -0.00000033  0.18D-07  0.38D-07 20025.04
    6     2     2     1.06229273    -1.02090305  -462.81740201    -0.00000488    -0.00000041  0.22D-07  0.47D-07 20025.04
    6     3     3     1.06229505    -1.02090301  -462.81740197    -0.00000490    -0.00000041  0.22D-07  0.45D-07 20025.04
    6     4     4     1.06229171    -1.02090301  -462.81740196    -0.00000497    -0.00000044  0.23D-07  0.50D-07 20025.04
    6     5     5     1.06229459    -1.02090300  -462.81740196    -0.00000515    -0.00000041  0.22D-07  0.46D-07 20025.04
    6     6     6     1.06229514    -1.02090298  -462.81740194    -0.00000544    -0.00000042  0.22D-07  0.47D-07 20025.04
    6     7     7     1.06237422    -1.02123646  -462.81155739    -0.00000484    -0.00000040  0.22D-07  0.45D-07 20025.04
    6     8     8     1.06237425    -1.02123646  -462.81155739    -0.00000484    -0.00000040  0.22D-07  0.45D-07 20025.04
    6     9     9     1.06237434    -1.02123644  -462.81155737    -0.00000495    -0.00000042  0.22D-07  0.46D-07 20025.04
    7     1     1     1.06212272    -1.02007576  -462.82665603    -0.00000040    -0.00000005  0.27D-08  0.51D-08 23870.47
    7     2     2     1.06230154    -1.02090355  -462.81740251    -0.00000050    -0.00000006  0.34D-08  0.65D-08 23870.47
    7     3     3     1.06230110    -1.02090355  -462.81740250    -0.00000054    -0.00000006  0.36D-08  0.69D-08 23870.47
    7     4     4     1.06230225    -1.02090351  -462.81740246    -0.00000050    -0.00000006  0.33D-08  0.64D-08 23870.47
    7     5     5     1.06230210    -1.02090350  -462.81740246    -0.00000050    -0.00000006  0.33D-08  0.64D-08 23870.47
    7     6     6     1.06230226    -1.02090350  -462.81740245    -0.00000052    -0.00000006  0.35D-08  0.66D-08 23870.47
    7     7     7     1.06238074    -1.02123695  -462.81155788    -0.00000049    -0.00000006  0.32D-08  0.64D-08 23870.47
    7     8     8     1.06238074    -1.02123695  -462.81155788    -0.00000049    -0.00000006  0.32D-08  0.64D-08 23870.47
    7     9     9     1.06238071    -1.02123695  -462.81155788    -0.00000051    -0.00000006  0.34D-08  0.66D-08 23870.47
    8     1     1     1.06212272    -1.02007576  -462.82665603    -0.00000000    -0.00000005  0.27D-08  0.51D-08 26042.29
    8     2     2     1.06230508    -1.02090363  -462.81740259    -0.00000008    -0.00000001  0.21D-09  0.71D-09 26042.29
    8     3     3     1.06230518    -1.02090358  -462.81740254    -0.00000004    -0.00000001  0.20D-09  0.67D-09 26042.29
    8     4     4     1.06230154    -1.02090355  -462.81740251    -0.00000005    -0.00000006  0.34D-08  0.65D-08 26042.29
    8     5     5     1.06230225    -1.02090351  -462.81740246    -0.00000000    -0.00000006  0.33D-08  0.64D-08 26042.29
    8     6     6     1.06230210    -1.02090350  -462.81740246    -0.00000001    -0.00000006  0.33D-08  0.64D-08 26042.29
    8     7     7     1.06238404    -1.02123703  -462.81155796    -0.00000008    -0.00000001  0.21D-09  0.67D-09 26042.29
    8     8     8     1.06238074    -1.02123695  -462.81155788    -0.00000000    -0.00000006  0.32D-08  0.64D-08 26042.29
    8     9     9     1.06238075    -1.02123695  -462.81155788    -0.00000000    -0.00000006  0.32D-08  0.64D-08 26042.29


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.3%  39.0%
 P   0.2%  40.6%  14.7%

 Initialization:   2.9%
 Other:            2.0%

 Total CPU:    26042.3 seconds
 =====================================



 Wavefunction saved on  5202.2

 Reference coefficients greater than 0.0500000
 =============================================
 22222220222/22/00           0.5598349  -0.0105299   0.0064016   0.7917125   0.0000977   0.0007982   0.0000000   0.0000000
                            -0.0000000
 222222202222/200/           0.5598346   0.6909289  -0.0030530  -0.3867393   0.0001260   0.0006873  -0.0000001  -0.0000000
                             0.0000000
 2222222022222/00/           0.0000001  -0.0000742   0.6857031  -0.0055455  -0.0000010  -0.0000057  -0.6855115   0.0034263
                             0.0122041
 222222202222/20/0           0.0000001  -0.0000741   0.6857029  -0.0055455  -0.0000010  -0.0000057   0.6855118  -0.0034263
                            -0.0122041
 222222202222/2/00          -0.0000000  -0.0000707   0.0000003  -0.0000196   0.6826319  -0.0650723  -0.0114967   0.1099714
                            -0.6766554
 22222220222/2200/           0.0000000  -0.0000707   0.0000003  -0.0000195   0.6826319  -0.0650723   0.0114967  -0.1099715
                             0.6766553
 22222220222/220/0           0.0000000  -0.0010887  -0.0000001  -0.0007107   0.0650721   0.6826307   0.0053389   0.6767444
                             0.1098952
 2222222022222//00           0.0000000  -0.0010887  -0.0000001  -0.0007107   0.0650720   0.6826307  -0.0053389  -0.6767443
                            -0.1098953
 2222222022222/0/0           0.5598345  -0.6803990  -0.0033488  -0.4049736  -0.0002237  -0.0014855   0.0000001   0.0000000
                             0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.970239    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
 2          -0.000000   -0.001540   -0.000100   -0.014694   -0.000105   -0.970047    0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.000000    0.007843    0.970128   -0.000224   -0.000000    0.000000   -0.000000
 4          -0.000000   -0.001006   -0.000028    0.970017   -0.007846   -0.014691   -0.000000    0.000000    0.000000
 5          -0.000000    0.092063    0.965783    0.000119   -0.000001   -0.000248    0.000000   -0.000000   -0.000000
 6          -0.000000    0.965781   -0.092064    0.000975   -0.000008   -0.001539    0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.007554    0.016267    0.969953
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.957548   -0.155602   -0.004848
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.155494    0.957422   -0.017268

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.970239   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.970159    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000    0.000000    0.970159    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.970161    0.000000    0.000000   -0.000000    0.000000   -0.000000
 5           0.000000    0.000000   -0.000000    0.000000    0.970161    0.000000   -0.000000    0.000000   -0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.970161    0.000000    0.000000    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.970119    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.970121    0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.970121


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.97023897 (fixed)   0.97029274 (relaxed)   0.97023897 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015631   -0.00052362   -0.90063445
 Singles      0.01060286   -0.06350137   -0.06995152
 Pairs        0.05152957   -0.00000000   -0.04948979
 Total        1.06228873   -0.06402499   -1.02007576
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.80658027
 Nuclear energy                         0.00000000
 Kinetic energy                       329.50855683
 One electron energy                 -801.19925821
 Two electron energy                  338.37260218
 Virial quotient                       -1.40459677
 Correlation energy                    -1.02007576
 !MRCI STATE 1.1 Energy              -462.826656030650

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.89019526 (Davidson, fixed reference)
 Cluster corrected energies          -462.89007515 (Davidson, relaxed reference)
 Cluster corrected energies          -462.89019526 (Davidson, rotated reference)

 Cluster corrected energies          -462.88806891 (Pople, fixed reference)
 Cluster corrected energies          -462.88794655 (Pople, relaxed reference)
 Cluster corrected energies          -462.88806891 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.97004682 (fixed)   0.97020883 (relaxed)   0.97015933 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014878   -0.00052895   -0.90110903
 Singles      0.01059145   -0.06366032   -0.07009643
 Pairs        0.05172290   -0.00000008   -0.04969816
 Total        1.06246313   -0.06418936   -1.02090363
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79649896
 Nuclear energy                         0.00000000
 Kinetic energy                       329.51612193
 One electron energy                 -801.22040172
 Two electron energy                  338.40299914
 Virial quotient                       -1.40453645
 Correlation energy                    -1.02090363
 !MRCI STATE 2.1 Energy              -462.817402587194

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.88117142 (Davidson, fixed reference)
 Cluster corrected energies          -462.88106074 (Davidson, relaxed reference)
 Cluster corrected energies          -462.88117142 (Davidson, rotated reference)

 Cluster corrected energies          -462.87904671 (Pople, fixed reference)
 Cluster corrected energies          -462.87893393 (Pople, relaxed reference)
 Cluster corrected energies          -462.87904671 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.97012756 (fixed)   0.97020878 (relaxed)   0.97015929 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014878   -0.00052895   -0.90110910
 Singles      0.01059151   -0.06366036   -0.07009646
 Pairs        0.05172295    0.00000018   -0.04969803
 Total        1.06246323   -0.06418914   -1.02090358
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79649896
 Nuclear energy                         0.00000000
 Kinetic energy                       329.51613606
 One electron energy                 -801.22040970
 Two electron energy                  338.40300716
 Virial quotient                       -1.40453639
 Correlation energy                    -1.02090358
 !MRCI STATE 3.1 Energy              -462.817402536825

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.88117148 (Davidson, fixed reference)
 Cluster corrected energies          -462.88106080 (Davidson, relaxed reference)
 Cluster corrected energies          -462.88117148 (Davidson, rotated reference)

 Cluster corrected energies          -462.87904677 (Pople, fixed reference)
 Cluster corrected energies          -462.87893399 (Pople, relaxed reference)
 Cluster corrected energies          -462.87904677 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.97001745 (fixed)   0.97021045 (relaxed)   0.97016094 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014880   -0.00052894   -0.90109998
 Singles      0.01059482   -0.06367313   -0.07010195
 Pairs        0.05171599   -0.00000000   -0.04970162
 Total        1.06245961   -0.06420207   -1.02090355
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79649896
 Nuclear energy                         0.00000000
 Kinetic energy                       329.51738928
 One electron energy                 -801.22071875
 Two electron energy                  338.40331624
 Virial quotient                       -1.40453104
 Correlation energy                    -1.02090355
 !MRCI STATE 4.1 Energy              -462.817402509580

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.88116775 (Davidson, fixed reference)
 Cluster corrected energies          -462.88105706 (Davidson, relaxed reference)
 Cluster corrected energies          -462.88116775 (Davidson, rotated reference)

 Cluster corrected energies          -462.87904298 (Pople, fixed reference)
 Cluster corrected energies          -462.87893018 (Pople, relaxed reference)
 Cluster corrected energies          -462.87904298 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.96578251 (fixed)   0.97021012 (relaxed)   0.97016062 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014880   -0.00052894   -0.90109931
 Singles      0.01059476   -0.06367316   -0.07010193
 Pairs        0.05171676    0.00000001   -0.04970227
 Total        1.06246032   -0.06420210   -1.02090351
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79649896
 Nuclear energy                         0.00000000
 Kinetic energy                       329.51734814
 One electron energy                 -801.22068566
 Two electron energy                  338.40328320
 Virial quotient                       -1.40453122
 Correlation energy                    -1.02090351
 !MRCI STATE 5.1 Energy              -462.817402463274

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.88116842 (Davidson, fixed reference)
 Cluster corrected energies          -462.88105773 (Davidson, relaxed reference)
 Cluster corrected energies          -462.88116842 (Davidson, rotated reference)

 Cluster corrected energies          -462.87904366 (Pople, fixed reference)
 Cluster corrected energies          -462.87893087 (Pople, relaxed reference)
 Cluster corrected energies          -462.87904366 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.96578087 (fixed)   0.97021019 (relaxed)   0.97016069 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00014880   -0.00052894   -0.90109943
 Singles      0.01059475   -0.06367316   -0.07010192
 Pairs        0.05171662    0.00000000   -0.04970215
 Total        1.06246017   -0.06420210   -1.02090350
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79649896
 Nuclear energy                         0.00000000
 Kinetic energy                       329.51735051
 One electron energy                 -801.22068835
 Two electron energy                  338.40328589
 Virial quotient                       -1.40453121
 Correlation energy                    -1.02090350
 !MRCI STATE 6.1 Energy              -462.817402460877

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.88116827 (Davidson, fixed reference)
 Cluster corrected energies          -462.88105758 (Davidson, relaxed reference)
 Cluster corrected energies          -462.88116827 (Davidson, rotated reference)

 Cluster corrected energies          -462.87904350 (Pople, fixed reference)
 Cluster corrected energies          -462.87893071 (Pople, relaxed reference)
 Cluster corrected energies          -462.87904350 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.96995342 (fixed)   0.97017243 (relaxed)   0.97011923 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015712   -0.00053741   -0.00081077
 Singles      0.01052990   -0.06344210   -0.06982924
 Pairs        0.05186395   -0.95709391   -0.95059702
 Total        1.06255097   -1.02107342   -1.02123703
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79032093
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52050732
 One electron energy                 -801.22939210
 Two electron energy                  338.41783414
 Virial quotient                       -1.40450002
 Correlation energy                    -1.02123703
 !MRCI STATE 7.1 Energy              -462.811557959844

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87543732 (Davidson, fixed reference)
 Cluster corrected energies          -462.87531833 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87543732 (Davidson, rotated reference)

 Cluster corrected energies          -462.87331364 (Pople, fixed reference)
 Cluster corrected energies          -462.87319237 (Pople, relaxed reference)
 Cluster corrected energies          -462.87331364 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95754826 (fixed)   0.97017393 (relaxed)   0.97012075 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015711   -0.00053740   -0.90605515
 Singles      0.01053260   -0.06345427   -0.06983415
 Pairs        0.05185795    0.00478365   -0.04534765
 Total        1.06254765   -0.05920802   -1.02123695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79032093
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52176571
 One electron energy                 -801.22968893
 Two electron energy                  338.41813105
 Virial quotient                       -1.40449465
 Correlation energy                    -1.02123695
 !MRCI STATE 8.1 Energy              -462.811557879954

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87543385 (Davidson, fixed reference)
 Cluster corrected energies          -462.87531488 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87543385 (Davidson, rotated reference)

 Cluster corrected energies          -462.87331011 (Pople, fixed reference)
 Cluster corrected energies          -462.87318886 (Pople, relaxed reference)
 Cluster corrected energies          -462.87331011 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95742235 (fixed)   0.97017393 (relaxed)   0.97012074 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00015711   -0.00053740   -0.91758885
 Singles      0.01053260   -0.06345426   -0.06983415
 Pairs        0.05185795    0.01703874   -0.03381396
 Total        1.06254765   -0.04695292   -1.02123695
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -461.79032093
 Nuclear energy                         0.00000000
 Kinetic energy                       329.52176600
 One electron energy                 -801.22968904
 Two electron energy                  338.41813116
 Virial quotient                       -1.40449465
 Correlation energy                    -1.02123695
 !MRCI STATE 9.1 Energy              -462.811557878585

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -462.87543385 (Davidson, fixed reference)
 Cluster corrected energies          -462.87531488 (Davidson, relaxed reference)
 Cluster corrected energies          -462.87543385 (Davidson, rotated reference)

 Cluster corrected energies          -462.87331011 (Pople, fixed reference)
 Cluster corrected energies          -462.87318886 (Pople, relaxed reference)
 Cluster corrected energies          -462.87331011 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6401.45       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *     52200.92  30596.14  21595.76      6.62      0.13      2.03
 REAL TIME  *     52826.09 SEC
 DISK USED  *         6.30 GB (local),       94.74 GB (total)
 SF USED    *        37.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -462.89007515  AU                              
 SETTING HLSDIAG(12)    =      -462.88106074  AU                              
 SETTING HLSDIAG(13)    =      -462.88106080  AU                              
 SETTING HLSDIAG(14)    =      -462.88105706  AU                              
 SETTING HLSDIAG(15)    =      -462.88105773  AU                              
 SETTING HLSDIAG(16)    =      -462.88105758  AU                              
 SETTING HLSDIAG(17)    =      -462.87531833  AU                              
 SETTING HLSDIAG(18)    =      -462.87531488  AU                              
 SETTING HLSDIAG(19)    =      -462.87531488  AU                              


         HLSDIAG
    -463.3083859
    -462.8789130
    -462.8789130
    -462.8789135
    -462.8789135
    -462.8789130
    -462.8757119
    -462.8757119
    -462.8757119
    -462.8622053
    -462.8900751
    -462.8810607
    -462.8810608
    -462.8810571
    -462.8810577
    -462.8810576
    -462.8753183
    -462.8753149
    -462.8753149
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5201.2  Symmetry=1  S= 0.0  NSTATE=  10

 Original energies:   -463.236008   -462.815156   -462.815156   -462.815156   -462.815156   -462.815156   -462.811660   -462.811660
                      -462.811660   -462.796344
 Replaced energies:   -463.308386   -462.878913   -462.878913   -462.878913   -462.878914   -462.878913   -462.875712   -462.875712
                      -462.875712   -462.862205

 Wavefunction restored from record  5202.2  Symmetry=1  S= 1.0  NSTATE=   9

 Original energies:   -462.826656   -462.817403   -462.817403   -462.817403   -462.817402   -462.817402   -462.811558   -462.811558
                      -462.811558
 Replaced energies:   -462.890075   -462.881061   -462.881061   -462.881057   -462.881058   -462.881058   -462.875318   -462.875315
                      -462.875315



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -463.30838592

 Wigner-Eckart theorem used for 10 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  0.0  0.0       0.00   94258.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  0.0  0.0       0.00       0.00   94258.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  0.0  0.0       0.00       0.00       0.00   94258.31       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00   94258.29       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00   94258.42       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   94960.96       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94960.96       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   94960.98       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   97925.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00     980.14     -55.11      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00     -55.11    -980.14       0.00      -0.00

   12   2.1  1.0  1.0      -0.00      12.92    -641.79      -5.42      -3.38       3.53    -602.13      33.79      -0.06      -0.00
                            0.00    -671.98     -13.64       4.75      11.28      -1.22     -33.27    -592.96      -0.95       0.00

   13   3.1  1.0  1.0       0.00     657.08       4.05      -4.81     -10.92       0.23      36.26     597.43       0.00       0.00
                            0.00      22.39    -656.79      -5.03      -1.56       3.61    -597.74      30.68      -0.00       0.00

   14   4.1  1.0  1.0       0.00      17.94   -1146.63      -9.00      -3.68       6.28     336.76     -23.78      -0.02       0.00
                            0.00    1128.81      28.33      -8.14     -18.67      -0.40     -15.01    -353.19      -0.62       0.00

   15   5.1  1.0  1.0      -0.00       2.81      -4.36      30.96     139.83    -650.36      -0.11       0.01     595.83      -0.00
                            0.00      -9.01      -4.87     908.75    -942.84      28.71      -0.01      -0.19      56.80       0.00

   16   6.1  1.0  1.0      -0.00      23.53      -6.59     361.44    1254.86      98.97      -0.60       0.03     -56.80      -0.00
                           -0.00       0.40       4.10     -83.13      69.66     657.06      -0.07      -1.29     595.83       0.00

   17   7.1  1.0  1.0      -4.87    -596.38     -12.25       9.41       8.72     -10.24     -36.77    -654.02      10.99      -7.20
                           10.49      12.30    -596.52       3.83       6.60       8.12    -654.02      36.77       5.10      15.51

   18   8.1  1.0  1.0    -617.43       4.60      -3.96     654.12    -190.58      86.48       0.18       3.27    -105.08    -912.78
                         -100.33      -2.42       6.94     -76.38     -94.72     586.74       3.27      -0.18     646.66    -148.33

   19   9.1  1.0  1.0    -100.26      11.40      -3.76     102.95     -12.61    -590.10       0.65      11.64     646.58    -148.22
                          617.35      11.15       6.73     489.91     469.00     107.44      11.64      -0.65     105.01     912.66

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00    1388.32       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.11     -10.15     -10.03      56.88   -1857.63      -0.01       1.35      13.00      -0.00

   22   3.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      20.75     -14.15    1803.51     448.70       3.88       0.00       0.00      -7.90       0.00

   23   4.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -1.11      -0.01     -14.71      -2.86     -24.74       0.03       0.88    -977.28       0.00

   24   5.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     106.93    -923.13      -7.63      -3.43       4.63     836.79    -127.50      -0.12       0.00

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     923.02     107.01      -6.04     -15.06      -3.18    -127.50    -836.79      -0.99      -0.00

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -884.54       7.10      14.21    -235.14     945.00      30.12     -15.11       8.08       0.00   -1307.59

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            4.42    -829.97    -152.30       6.17       8.80       0.37     199.71     904.73      -0.00       6.54

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           15.75    -152.36     829.88      11.46     -12.79      -5.15    -904.62     199.60       0.00      23.28

   29   1.1  1.0 -1.0       0.00       0.00      -0.00      -0.00      -0.00       0.00     980.14     -55.11      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00      -0.00      55.11     980.14      -0.00       0.00

   30   2.1  1.0 -1.0      -0.00      12.92    -641.79      -5.42      -3.38       3.53    -602.13      33.79      -0.06      -0.00
                           -0.00     671.98      13.64      -4.75     -11.28       1.22      33.27     592.96       0.95      -0.00

   31   3.1  1.0 -1.0       0.00     657.08       4.05      -4.81     -10.92       0.23      36.26     597.43       0.00       0.00
                           -0.00     -22.39     656.79       5.03       1.56      -3.61     597.74     -30.68       0.00      -0.00

   32   4.1  1.0 -1.0       0.00      17.94   -1146.63      -9.00      -3.68       6.28     336.76     -23.78      -0.02       0.00
                           -0.00   -1128.81     -28.33       8.14      18.67       0.40      15.01     353.19       0.62      -0.00

   33   5.1  1.0 -1.0      -0.00       2.81      -4.36      30.96     139.83    -650.36      -0.11       0.01     595.83      -0.00
                           -0.00       9.01       4.87    -908.75     942.84     -28.71       0.01       0.19     -56.80      -0.00

   34   6.1  1.0 -1.0      -0.00      23.53      -6.59     361.44    1254.86      98.97      -0.60       0.03     -56.80      -0.00
                            0.00      -0.40      -4.10      83.13     -69.66    -657.06       0.07       1.29    -595.83      -0.00

   35   7.1  1.0 -1.0      -4.87    -596.38     -12.25       9.41       8.72     -10.24     -36.77    -654.02      10.99      -7.20
                          -10.49     -12.30     596.52      -3.83      -6.60      -8.12     654.02     -36.77      -5.10     -15.51

   36   8.1  1.0 -1.0    -617.43       4.60      -3.96     654.12    -190.58      86.48       0.18       3.27    -105.08    -912.78
                          100.33       2.42      -6.94      76.38      94.72    -586.74      -3.27       0.18    -646.66     148.33

   37   9.1  1.0 -1.0    -100.26      11.40      -3.76     102.95     -12.61    -590.10       0.65      11.64     646.58    -148.22
                         -617.35     -11.15      -6.73    -489.91    -469.00    -107.44     -11.64       0.65    -105.01    -912.66


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00      -4.87    -617.43    -100.26       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00     -10.49     100.33    -617.35      -0.00

    2   2.1  0.0  0.0       0.00      12.92     657.08      17.94       2.81      23.53    -596.38       4.60      11.40       0.00
                           -0.00     671.98     -22.39   -1128.81       9.01      -0.40     -12.30       2.42     -11.15      -0.00

    3   3.1  0.0  0.0      -0.00    -641.79       4.05   -1146.63      -4.36      -6.59     -12.25      -3.96      -3.76       0.00
                           -0.00      13.64     656.79     -28.33       4.87      -4.10     596.52      -6.94      -6.73       0.00

    4   4.1  0.0  0.0      -0.00      -5.42      -4.81      -9.00      30.96     361.44       9.41     654.12     102.95       0.00
                            0.00      -4.75       5.03       8.14    -908.75      83.13      -3.83      76.38    -489.91      -0.00

    5   5.1  0.0  0.0      -0.00      -3.38     -10.92      -3.68     139.83    1254.86       8.72    -190.58     -12.61       0.00
                            0.00     -11.28       1.56      18.67     942.84     -69.66      -6.60      94.72    -469.00       0.00

    6   6.1  0.0  0.0       0.00       3.53       0.23       6.28    -650.36      98.97     -10.24      86.48    -590.10       0.00
                           -0.00       1.22      -3.61       0.40     -28.71    -657.06      -8.12    -586.74    -107.44       0.00

    7   7.1  0.0  0.0     980.14    -602.13      36.26     336.76      -0.11      -0.60     -36.77       0.18       0.65       0.00
                           55.11      33.27     597.74      15.01       0.01       0.07     654.02      -3.27     -11.64      -0.00

    8   8.1  0.0  0.0     -55.11      33.79     597.43     -23.78       0.01       0.03    -654.02       3.27      11.64       0.00
                          980.14     592.96     -30.68     353.19       0.19       1.29     -36.77       0.18       0.65       0.00

    9   9.1  0.0  0.0      -0.00      -0.06       0.00      -0.02     595.83     -56.80      10.99    -105.08     646.58       0.00
                           -0.00       0.95       0.00       0.62     -56.80    -595.83      -5.10    -646.66    -105.01   -1388.32

   10  10.1  0.0  0.0       0.00      -0.00       0.00       0.00      -0.00      -0.00      -7.20    -912.78    -148.22       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -15.51     148.33    -912.66      -0.00

   11   1.1  1.0  1.0   91808.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00    1513.68      -7.57     -26.95      -0.00

   12   2.1  1.0  1.0       0.00   93787.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00   -1698.95      13.74      -1.33       0.23      14.25      -0.40       1.18      -0.00

   13   3.1  1.0  1.0       0.00       0.00   93787.02       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00    1698.95       0.00      22.59       0.43       2.69      -8.65       0.04       0.15       0.00

   14   4.1  1.0  1.0       0.00       0.00       0.00   93787.85       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -13.74     -22.59      -0.00      -0.88       0.09   -1069.71       5.17      19.99      -0.00

   15   5.1  1.0  1.0       0.00       0.00       0.00       0.00   93787.70       0.00       0.00       0.00       0.00       0.00
                            0.00       1.33      -0.43       0.88      -0.00    -849.56       5.58     924.63      61.08       0.00

   16   6.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00   93787.73       0.00       0.00       0.00      -0.00
                            0.00      -0.23      -2.69      -0.09     849.56      -0.00     -17.23      61.17    -924.48      -0.00

   17   7.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00   95047.35       0.00       0.00       8.34
                        -1513.68     -14.25       8.65    1069.71      -5.58      17.23      -0.00     -15.04       4.22     -17.95

   18   8.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95048.11       0.00    1056.67
                            7.57       0.40      -0.04      -5.17    -924.63     -61.17      15.04       0.00     844.88     171.71

   19   9.1  1.0  1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95048.11     171.59
                           26.95      -1.18      -0.15     -19.99     -61.08     924.48      -4.22    -844.88       0.00   -1056.53

   20   1.1  1.0  0.0       0.00       0.00      -0.00       0.00       0.00      -0.00       8.34    1056.67     171.59   91808.60
                            0.00       0.00      -0.00       0.00      -0.00       0.00      17.95    -171.71    1056.53       0.00

   21   2.1  1.0  0.0       0.00       0.00       0.05      -1.06     -55.75    -584.19      -5.21    -651.69    -105.90       0.00
                           -0.00      -0.00       0.95      -0.13     611.74     -58.38      11.94    -104.36     641.66      -0.00

   22   3.1  1.0  0.0       0.00      -0.05       0.00      -0.01     597.20     -65.51      11.01    -102.22     647.16       0.00
                           -0.00      -0.95      -0.00      -0.62      48.76     598.79       5.16     646.26     108.19      -0.00

   23   4.1  1.0  0.0       0.00       1.06       0.01      -0.00    -104.32   -1043.17       2.77     365.63      54.01       0.00
                           -0.00       0.13       0.62       0.00   -1028.19      93.13       7.13     -67.31     381.07      -0.00

   24   5.1  1.0  0.0      -0.00      55.75    -597.20     104.32       0.00      -0.09     652.22      -3.38     -11.63       0.00
                            0.00    -611.74     -48.76    1028.19       0.00       0.09     -62.17       0.28       1.32      -0.00

   25   6.1  1.0  0.0       0.00     584.19      65.51    1043.17       0.09      -0.00     -62.18      -0.34       1.00       0.00
                           -0.00      58.38    -598.79     -93.13      -0.09      -0.00    -652.19       3.03      13.01      -0.00

   26   7.1  1.0  0.0      -8.34       5.21     -11.01      -2.77    -652.19      62.18      -0.00      95.77    -589.79       0.00
                          -17.95     -11.94      -5.16      -7.13      62.17     652.17       0.00     589.71      95.84      -0.00

   27   8.1  1.0  0.0   -1056.63     651.67     102.22    -365.61       3.38       0.34     -95.78      -0.00       4.65       0.00
                          171.70     104.36    -646.24      67.30      -0.28      -3.03    -589.71       0.00      10.02      -0.00

   28   9.1  1.0  0.0    -171.58     105.89    -647.13     -54.00      11.63      -1.00     589.79      -4.65       0.00       0.00
                        -1056.50    -641.63    -108.18    -381.05      -1.32     -13.01     -95.84     -10.02      -0.00      -0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   4.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   34   6.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -8.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -17.95

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   -1056.63
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     171.70

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -171.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00   -1056.50


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00     884.54      -4.42     -15.75      -0.00       0.00

    2   2.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      12.92
                           -0.11     -20.75       1.11    -106.93    -923.02      -7.10     829.97     152.36       0.00    -671.98

    3   3.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -641.79
                           10.15      14.15       0.01     923.13    -107.01     -14.21     152.30    -829.88       0.00     -13.64

    4   4.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -5.42
                           10.03   -1803.51      14.71       7.63       6.04     235.14      -6.17     -11.46      -0.00       4.75

    5   5.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -3.38
                          -56.88    -448.70       2.86       3.43      15.06    -945.00      -8.80      12.79      -0.00      11.28

    6   6.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       3.53
                         1857.63      -3.88      24.74      -4.63       3.18     -30.12      -0.37       5.15       0.00      -1.22

    7   7.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     980.14    -602.13
                            0.01      -0.00      -0.03    -836.79     127.50      15.11    -199.71     904.62     -55.11     -33.27

    8   8.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -55.11      33.79
                           -1.35      -0.00      -0.88     127.50     836.79      -8.08    -904.73    -199.60    -980.14    -592.96

    9   9.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.06
                          -13.00       7.90     977.28       0.12       0.99      -0.00       0.00      -0.00       0.00      -0.95

   10  10.1  0.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00    1307.59      -6.54     -23.28      -0.00       0.00

   11   1.1  1.0  1.0       0.00       0.00       0.00      -0.00       0.00      -8.34   -1056.63    -171.58       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      17.95    -171.70    1056.50       0.00       0.00

   12   2.1  1.0  1.0       0.00      -0.05       1.06      55.75     584.19       5.21     651.67     105.89       0.00       0.00
                            0.00       0.95      -0.13     611.74     -58.38      11.94    -104.36     641.63       0.00       0.00

   13   3.1  1.0  1.0       0.05       0.00       0.01    -597.20      65.51     -11.01     102.22    -647.13       0.00       0.00
                           -0.95       0.00      -0.62      48.76     598.79       5.16     646.24     108.18       0.00       0.00

   14   4.1  1.0  1.0      -1.06      -0.01      -0.00     104.32    1043.17      -2.77    -365.61     -54.00       0.00       0.00
                            0.13       0.62      -0.00   -1028.19      93.13       7.13     -67.30     381.05       0.00       0.00

   15   5.1  1.0  1.0     -55.75     597.20    -104.32       0.00       0.09    -652.19       3.38      11.63       0.00       0.00
                         -611.74     -48.76    1028.19      -0.00       0.09     -62.17       0.28       1.32       0.00       0.00

   16   6.1  1.0  1.0    -584.19     -65.51   -1043.17      -0.09      -0.00      62.18       0.34      -1.00       0.00       0.00
                           58.38    -598.79     -93.13      -0.09       0.00    -652.17       3.03      13.01       0.00       0.00

   17   7.1  1.0  1.0      -5.21      11.01       2.77     652.22     -62.18      -0.00     -95.78     589.79       0.00       0.00
                          -11.94      -5.16      -7.13      62.17     652.19      -0.00     589.71      95.84       0.00       0.00

   18   8.1  1.0  1.0    -651.69    -102.22     365.63      -3.38      -0.34      95.77      -0.00      -4.65       0.00       0.00
                          104.36    -646.26      67.31      -0.28      -3.03    -589.71      -0.00      10.02       0.00       0.00

   19   9.1  1.0  1.0    -105.90     647.16      54.01     -11.63       1.00    -589.79       4.65       0.00       0.00       0.00
                         -641.66    -108.19    -381.07      -1.32     -13.01     -95.84     -10.02       0.00       0.00       0.00

   20   1.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   21   2.1  1.0  0.0   93787.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   22   3.1  1.0  0.0       0.00   93787.02       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.05
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.95

   23   4.1  1.0  0.0       0.00       0.00   93787.85       0.00       0.00       0.00       0.00       0.00       0.00      -1.06
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.13

   24   5.1  1.0  0.0       0.00       0.00       0.00   93787.70       0.00       0.00       0.00       0.00       0.00     -55.75
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    -611.74

   25   6.1  1.0  0.0       0.00       0.00       0.00       0.00   93787.73       0.00       0.00       0.00      -0.00    -584.19
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      58.38

   26   7.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00   95047.35       0.00       0.00       8.34      -5.21
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     -17.95     -11.94

   27   8.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00   95048.11       0.00    1056.67    -651.69
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     171.71     104.36

   28   9.1  1.0  0.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00   95048.11     171.59    -105.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00   -1056.53    -641.66

   29   1.1  1.0 -1.0       0.00      -0.00       0.00       0.00      -0.00       8.34    1056.67     171.59   91808.60       0.00
                            0.00      -0.00       0.00      -0.00       0.00      17.95    -171.71    1056.53      -0.00       0.00

   30   2.1  1.0 -1.0       0.00       0.05      -1.06     -55.75    -584.19      -5.21    -651.69    -105.90       0.00   93787.04
                           -0.00       0.95      -0.13     611.74     -58.38      11.94    -104.36     641.66      -0.00       0.00

   31   3.1  1.0 -1.0      -0.05       0.00      -0.01     597.20     -65.51      11.01    -102.22     647.16       0.00       0.00
                           -0.95      -0.00      -0.62      48.76     598.79       5.16     646.26     108.19      -0.00   -1698.95

   32   4.1  1.0 -1.0       1.06       0.01      -0.00    -104.32   -1043.17       2.77     365.63      54.01       0.00       0.00
                            0.13       0.62       0.00   -1028.19      93.13       7.13     -67.31     381.07      -0.00      13.74

   33   5.1  1.0 -1.0      55.75    -597.20     104.32       0.00      -0.09     652.22      -3.38     -11.63       0.00       0.00
                         -611.74     -48.76    1028.19       0.00       0.09     -62.17       0.28       1.32      -0.00      -1.33

   34   6.1  1.0 -1.0     584.19      65.51    1043.17       0.09      -0.00     -62.18      -0.34       1.00       0.00       0.00
                           58.38    -598.79     -93.13      -0.09      -0.00    -652.19       3.03      13.01      -0.00       0.23

   35   7.1  1.0 -1.0       5.21     -11.01      -2.77    -652.19      62.18      -0.00      95.77    -589.79       0.00       0.00
                          -11.94      -5.16      -7.13      62.17     652.17       0.00     589.71      95.84    1513.68      14.25

   36   8.1  1.0 -1.0     651.67     102.22    -365.61       3.38       0.34     -95.78      -0.00       4.65       0.00       0.00
                          104.36    -646.24      67.30      -0.28      -3.03    -589.71       0.00      10.02      -7.57      -0.40

   37   9.1  1.0 -1.0     105.89    -647.13     -54.00      11.63      -1.00     589.79      -4.65       0.00       0.00       0.00
                         -641.63    -108.18    -381.05      -1.32     -13.01     -95.84     -10.02      -0.00     -26.95       1.18


   Nr   State  S   Sz       31         32         33         34         35         36         37

    1   1.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -4.87    -617.43    -100.26
                            0.00       0.00       0.00      -0.00      10.49    -100.33     617.35

    2   2.1  0.0  0.0     657.08      17.94       2.81      23.53    -596.38       4.60      11.40
                           22.39    1128.81      -9.01       0.40      12.30      -2.42      11.15

    3   3.1  0.0  0.0       4.05   -1146.63      -4.36      -6.59     -12.25      -3.96      -3.76
                         -656.79      28.33      -4.87       4.10    -596.52       6.94       6.73

    4   4.1  0.0  0.0      -4.81      -9.00      30.96     361.44       9.41     654.12     102.95
                           -5.03      -8.14     908.75     -83.13       3.83     -76.38     489.91

    5   5.1  0.0  0.0     -10.92      -3.68     139.83    1254.86       8.72    -190.58     -12.61
                           -1.56     -18.67    -942.84      69.66       6.60     -94.72     469.00

    6   6.1  0.0  0.0       0.23       6.28    -650.36      98.97     -10.24      86.48    -590.10
                            3.61      -0.40      28.71     657.06       8.12     586.74     107.44

    7   7.1  0.0  0.0      36.26     336.76      -0.11      -0.60     -36.77       0.18       0.65
                         -597.74     -15.01      -0.01      -0.07    -654.02       3.27      11.64

    8   8.1  0.0  0.0     597.43     -23.78       0.01       0.03    -654.02       3.27      11.64
                           30.68    -353.19      -0.19      -1.29      36.77      -0.18      -0.65

    9   9.1  0.0  0.0       0.00      -0.02     595.83     -56.80      10.99    -105.08     646.58
                           -0.00      -0.62      56.80     595.83       5.10     646.66     105.01

   10  10.1  0.0  0.0       0.00       0.00      -0.00      -0.00      -7.20    -912.78    -148.22
                            0.00       0.00       0.00       0.00      15.51    -148.33     912.66

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

   20   1.1  1.0  0.0       0.00       0.00      -0.00       0.00      -8.34   -1056.63    -171.58
                            0.00       0.00      -0.00       0.00      17.95    -171.70    1056.50

   21   2.1  1.0  0.0      -0.05       1.06      55.75     584.19       5.21     651.67     105.89
                            0.95      -0.13     611.74     -58.38      11.94    -104.36     641.63

   22   3.1  1.0  0.0       0.00       0.01    -597.20      65.51     -11.01     102.22    -647.13
                            0.00      -0.62      48.76     598.79       5.16     646.24     108.18

   23   4.1  1.0  0.0      -0.01      -0.00     104.32    1043.17      -2.77    -365.61     -54.00
                            0.62      -0.00   -1028.19      93.13       7.13     -67.30     381.05

   24   5.1  1.0  0.0     597.20    -104.32       0.00       0.09    -652.19       3.38      11.63
                          -48.76    1028.19      -0.00       0.09     -62.17       0.28       1.32

   25   6.1  1.0  0.0     -65.51   -1043.17      -0.09      -0.00      62.18       0.34      -1.00
                         -598.79     -93.13      -0.09       0.00    -652.17       3.03      13.01

   26   7.1  1.0  0.0      11.01       2.77     652.22     -62.18      -0.00     -95.78     589.79
                           -5.16      -7.13      62.17     652.19      -0.00     589.71      95.84

   27   8.1  1.0  0.0    -102.22     365.63      -3.38      -0.34      95.77      -0.00      -4.65
                         -646.26      67.31      -0.28      -3.03    -589.71      -0.00      10.02

   28   9.1  1.0  0.0     647.16      54.01     -11.63       1.00    -589.79       4.65       0.00
                         -108.19    -381.07      -1.32     -13.01     -95.84     -10.02       0.00

   29   1.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00   -1513.68       7.57      26.95

   30   2.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1698.95     -13.74       1.33      -0.23     -14.25       0.40      -1.18

   31   3.1  1.0 -1.0   93787.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -22.59      -0.43      -2.69       8.65      -0.04      -0.15

   32   4.1  1.0 -1.0       0.00   93787.85       0.00       0.00       0.00       0.00       0.00
                           22.59       0.00       0.88      -0.09    1069.71      -5.17     -19.99

   33   5.1  1.0 -1.0       0.00       0.00   93787.70       0.00       0.00       0.00       0.00
                            0.43      -0.88       0.00     849.56      -5.58    -924.63     -61.08

   34   6.1  1.0 -1.0       0.00       0.00       0.00   93787.73       0.00       0.00       0.00
                            2.69       0.09    -849.56       0.00      17.23     -61.17     924.48

   35   7.1  1.0 -1.0       0.00       0.00       0.00       0.00   95047.35       0.00       0.00
                           -8.65   -1069.71       5.58     -17.23       0.00      15.04      -4.22

   36   8.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00   95048.11       0.00
                            0.04       5.17     924.63      61.17     -15.04      -0.00    -844.88

   37   9.1  1.0 -1.0       0.00       0.00       0.00       0.00       0.00       0.00   95048.11
                            0.15      19.99      61.08    -924.48       4.22     844.88      -0.00




   Spin-orbit calculation in the basis of symmetry adapted wave functions
   ======================================================================


 >>> Hamiltonian transformed to symmetry adapted basis <<<


  Results for symmetry 1
  ======================

 => Spin-Orbit Matrixblock (CM-1)  (dimension: 37)

    The diagonal matrixelements are shifted by   -463.30838592 a.u.

  State Sym Spin    / Nr.        1           2           3           4           5           6           7           8

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000   94258.407       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000   94258.406       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000       0.000   94258.308       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000       0.000       0.000   94258.295       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000   94258.419       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000   94960.961       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000   94960.964
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000       0.000

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000      -0.005      -0.000      -0.000       0.000    1386.127     -77.934
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.000      18.272    -907.632      -7.671      -4.784       4.999    -851.547      47.786
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000     929.253       5.732      -6.809     -15.437       0.326      51.278     844.891
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+              0.000      25.368   -1621.580     -12.728      -5.206       8.877     476.245     -33.633
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+             -0.000       3.971      -6.162      43.782     197.751    -919.752      -0.155       0.008
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+             -0.001      33.270      -9.322     511.153    1774.642     139.967      -0.847       0.041
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             -6.889    -843.412     -17.328      13.309      12.330     -14.476     -52.003    -924.922
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -873.183       6.510      -5.607     925.066    -269.520     122.303       0.260       4.623
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+           -141.794      16.118      -5.319     145.590     -17.833    -834.533       0.926      16.466
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000      -0.000       0.000      -0.000      -0.000       0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.109     -10.152     -10.025      56.879   -1857.633      -0.012       1.347

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      20.754     -14.146    1803.512     448.696       3.884       0.000       0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000      -1.110      -0.015     -14.709      -2.856     -24.735       0.025       0.877

    5    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     106.934    -923.128      -7.630      -3.433       4.631     836.791    -127.499

    6    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     923.024     107.011      -6.043     -15.063      -3.175    -127.499    -836.790

    7    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -884.541       7.104      14.213    -235.142     945.001      30.121     -15.107       8.076

    8    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                4.421    -829.968    -152.302       6.167       8.797       0.365     199.712     904.731

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.746    -152.363     829.875      11.456     -12.792      -5.148    -904.617     199.603

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.004       0.000      -0.000      -0.000       0.000     -77.934   -1386.128

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    -950.330     -19.286       6.723      15.946      -1.730     -47.057    -838.570

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      31.670    -928.834      -7.112      -2.207       5.107    -845.334      43.388

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1596.385      40.065     -11.515     -26.397      -0.567     -21.227    -499.486

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.001     -12.743      -6.883    1285.163   -1333.384      40.609      -0.014      -0.276

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.563       5.800    -117.567      98.521     929.223      -0.096      -1.831

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               14.835      17.394    -843.614       5.419       9.328      11.488    -924.922      52.003

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -141.893      -3.428       9.810    -108.024    -133.956     829.780       4.623      -0.260

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              873.068      15.769       9.522     692.835     663.261     151.937      16.466      -0.926

  State Sym Spin    / Nr.        9          10          11          12          13          14          15          16

    1    1  |0 0>               0.000       0.000       0.000      -0.000       0.000       0.000      -0.000      -0.001
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |0 0>               0.000       0.000       0.000      18.272     929.253      25.368       3.971      33.270
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |0 0>               0.000       0.000      -0.005    -907.632       5.732   -1621.580      -6.162      -9.322
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |0 0>               0.000       0.000      -0.000      -7.671      -6.809     -12.728      43.782     511.153
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |0 0>               0.000       0.000      -0.000      -4.784     -15.437      -5.206     197.751    1774.642
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |0 0>               0.000       0.000       0.000       4.999       0.326       8.877    -919.752     139.967
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |0 0>               0.000       0.000    1386.127    -851.547      51.278     476.245      -0.155      -0.847
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |0 0>               0.000       0.000     -77.934      47.786     844.891     -33.633       0.008       0.041
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |0 0>           94960.978       0.000      -0.000      -0.087       0.000      -0.024     842.631     -80.324
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

   10    1  |0 0>               0.000   97925.335       0.000      -0.000       0.000       0.000      -0.000      -0.001
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 1>+             -0.000       0.000   91808.604       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>+             -0.087      -0.000       0.000   93787.037       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>+              0.000       0.000       0.000       0.000   93787.024       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>+             -0.024       0.000       0.000       0.000       0.000   93787.846       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>+            842.631      -0.000       0.000       0.000       0.000       0.000   93787.697       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>+            -80.324      -0.001       0.000       0.000       0.000       0.000       0.000   93787.731
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>+             15.536     -10.184       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>+           -148.610   -1290.863       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>+            914.398    -209.621       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

    1    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       0.000       0.000       0.000
                             1388.316       0.000       0.000       0.000       0.000       0.000      -0.000       0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.001       0.000       0.001
                               12.998      -0.000      -0.000       0.000       1.348      -0.186     865.132     -82.561

    3    1  |1 0>               0.000       0.000      -0.000       0.000       0.000       0.000      -0.000       0.000
                               -7.902       0.000      -0.000      -1.348       0.000      -0.880      68.957     846.819

    4    1  |1 0>               0.000       0.000       0.000       0.001       0.000      -0.000      -0.000      -0.000
                             -977.281       0.000      -0.000       0.186       0.880       0.000   -1454.074     131.709

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      -0.000       0.000      -0.000
                               -0.121       0.000       0.000    -865.132     -68.957    1454.074       0.000       0.133

    6    1  |1 0>               0.000       0.000       0.000       0.001       0.000      -0.000      -0.000      -0.001
                               -0.985      -0.000      -0.000      82.561    -846.819    -131.709      -0.133       0.000

    7    1  |1 0>               0.000       0.000       0.000      -0.000       0.000       0.000       0.020      -0.002
                                0.000   -1307.592     -25.386     -16.889      -7.292     -10.079      87.919     922.322

    8    1  |1 0>               0.000       0.000       0.025      -0.019      -0.003       0.011      -0.000      -0.000
                               -0.000       6.536     242.830     147.589    -913.933      95.182      -0.390      -4.280

    9    1  |1 0>               0.000       0.000       0.004      -0.003       0.019       0.002      -0.000      -0.000
                                0.000      23.279   -1494.136    -907.422    -152.996    -538.897      -1.863     -18.400

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000      -0.000       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -1.344       0.000       0.000      -0.000   -1698.949      13.737      -1.332       0.229

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000    1698.949       0.000      22.593       0.433       2.691

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.877       0.000       0.000     -13.737     -22.593      -0.000      -0.878       0.086

    5    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               80.324       0.001       0.000       1.332      -0.433       0.878      -0.000    -849.559

    6    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              842.630       0.000       0.000      -0.229      -2.691      -0.086     849.559      -0.000

    7    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                7.215      21.930   -1513.679     -14.251       8.650    1069.707      -5.577      17.232

    8    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              914.518    -209.766       7.566       0.401      -0.044      -5.166    -924.634     -61.170

    9    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              148.507    1290.693      26.948      -1.183      -0.154     -19.988     -61.076     924.484

  State Sym Spin    / Nr.       17          18          19          20          21          22          23          24

    1    1  |0 0>              -6.889    -873.183    -141.794       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000       0.000      -0.000

    2    1  |0 0>            -843.412       6.510      16.118       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      -0.109     -20.754       1.110    -106.934

    3    1  |0 0>             -17.328      -5.607      -5.319       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      10.152      14.146       0.015     923.128

    4    1  |0 0>              13.309     925.066     145.590       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000      10.025   -1803.512      14.709       7.630

    5    1  |0 0>              12.330    -269.520     -17.833       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000     -56.879    -448.696       2.856       3.433

    6    1  |0 0>             -14.476     122.303    -834.533       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000    1857.633      -3.884      24.735      -4.631

    7    1  |0 0>             -52.003       0.260       0.926       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.012      -0.000      -0.025    -836.791

    8    1  |0 0>            -924.922       4.623      16.466       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000      -1.347      -0.000      -0.877     127.499

    9    1  |0 0>              15.536    -148.610     914.398       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000   -1388.316     -12.998       7.902     977.281       0.121

   10    1  |0 0>             -10.184   -1290.863    -209.621       0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000       0.000      -0.000

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000       0.000       0.001       0.000
                                0.000       0.000       0.000      -0.000       0.000       1.348      -0.186     865.132

    3    1  |1 1>+              0.000       0.000       0.000      -0.000       0.000       0.000       0.000      -0.000
                                0.000       0.000       0.000      -0.000      -1.348       0.000      -0.880      68.957

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.001       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000       0.186       0.880       0.000   -1454.074

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000    -865.132     -68.957    1454.074       0.000

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.001       0.000      -0.000      -0.000
                                0.000       0.000       0.000      -0.000      82.561    -846.819    -131.709      -0.133

    7    1  |1 1>+          95047.351       0.000       0.000       0.000      -0.000       0.000       0.000       0.020
                                0.000       0.000       0.000     -25.386     -16.889      -7.292     -10.079      87.919

    8    1  |1 1>+              0.000   95048.108       0.000       0.025      -0.019      -0.003       0.011      -0.000
                                0.000       0.000       0.000     242.830     147.589    -913.933      95.182      -0.390

    9    1  |1 1>+              0.000       0.000   95048.108       0.004      -0.003       0.019       0.002      -0.000
                                0.000       0.000       0.000   -1494.136    -907.422    -152.996    -538.897      -1.863

    1    1  |1 0>               0.000       0.025       0.004   91808.604       0.000       0.000       0.000       0.000
                               25.386    -242.830    1494.136       0.000       0.000       0.000       0.000       0.000

    2    1  |1 0>              -0.000      -0.019      -0.003       0.000   93787.037       0.000       0.000       0.000
                               16.889    -147.589     907.422      -0.000       0.000       0.000       0.000       0.000

    3    1  |1 0>               0.000      -0.003       0.019       0.000       0.000   93787.024       0.000       0.000
                                7.292     913.933     152.996      -0.000      -0.000       0.000       0.000       0.000

    4    1  |1 0>               0.000       0.011       0.002       0.000       0.000       0.000   93787.846       0.000
                               10.079     -95.182     538.897      -0.000      -0.000      -0.000       0.000       0.000

    5    1  |1 0>               0.020      -0.000      -0.000       0.000       0.000       0.000       0.000   93787.697
                              -87.919       0.390       1.863      -0.000      -0.000      -0.000      -0.000       0.000

    6    1  |1 0>              -0.002      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                             -922.322       4.280      18.400      -0.000      -0.000      -0.000      -0.000      -0.000

    7    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000     833.980     135.540      -0.000      -0.000      -0.000      -0.000      -0.000

    8    1  |1 0>              -0.000      -0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -833.980       0.000      14.170      -0.000      -0.000      -0.000      -0.000      -0.000

    9    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -135.540     -14.170       0.000      -0.000      -0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000
                             1513.679      -7.566     -26.948      -0.000      -0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000      -0.000       0.000      -0.069       1.494      78.848
                               14.251      -0.401       1.183      -0.000       0.000      -0.000      -0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000      -0.000       0.069       0.000       0.012    -844.562
                               -8.650       0.044       0.154       0.000      -0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000      -1.494      -0.012       0.000     147.531
                            -1069.707       5.166      19.988       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 1>-              0.000       0.000       0.000       0.000     -78.848     844.562    -147.531       0.000
                                5.577     924.634      61.076       0.000       0.000       0.000       0.000      -0.000

    6    1  |1 1>-              0.000       0.000       0.000      -0.000    -826.174     -92.643   -1475.260      -0.121
                              -17.232      61.170    -924.484      -0.000      -0.000       0.001      -0.000      -0.000

    7    1  |1 1>-              0.000       0.000       0.000      11.789      -7.368      15.571       3.918     922.355
                               -0.000     -15.041       4.223      -0.000      -0.000      -0.000      -0.001       0.002

    8    1  |1 1>-              0.000       0.000       0.000    1494.332    -921.613    -144.561     517.066      -4.778
                               15.041       0.000     844.885       0.004       0.003      -0.019       0.002       0.000

    9    1  |1 1>-              0.000       0.000       0.000     242.662    -149.759     915.200      76.375     -16.449
                               -4.223    -844.885       0.000      -0.025      -0.019      -0.003      -0.011      -0.000

  State Sym Spin    / Nr.       25          26          27          28          29          30          31          32

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               -0.000     884.541      -4.421     -15.746       0.000      -0.000      -0.000      -0.000

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -923.024      -7.104     829.968     152.363      -0.004     950.330     -31.670   -1596.385

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                             -107.011     -14.213     152.302    -829.875      -0.000      19.286     928.834     -40.065

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                6.043     235.142      -6.167     -11.456       0.000      -6.723       7.112      11.515

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                               15.063    -945.001      -8.797      12.792       0.000     -15.946       2.207      26.397

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                3.175     -30.121      -0.365       5.148      -0.000       1.730      -5.107       0.567

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              127.499      15.107    -199.712     904.617      77.934      47.057     845.334      21.227

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              836.790      -8.076    -904.731    -199.603    1386.128     838.570     -43.388     499.486

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.985      -0.000       0.000      -0.000      -0.000       1.344       0.000       0.877

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                                0.000    1307.592      -6.536     -23.279       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>+              0.000       0.000       0.025       0.004       0.000       0.000       0.000       0.000
                                0.000      25.386    -242.830    1494.136       0.000      -0.000      -0.000      -0.000

    2    1  |1 1>+              0.001      -0.000      -0.019      -0.003       0.000       0.000       0.000       0.000
                              -82.561      16.889    -147.589     907.422       0.000      -0.000   -1698.949      13.737

    3    1  |1 1>+              0.000       0.000      -0.003       0.019       0.000       0.000       0.000       0.000
                              846.819       7.292     913.933     152.996       0.000    1698.949       0.000      22.593

    4    1  |1 1>+             -0.000       0.000       0.011       0.002       0.000       0.000       0.000       0.000
                              131.709      10.079     -95.182     538.897       0.000     -13.737     -22.593      -0.000

    5    1  |1 1>+             -0.000       0.020      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.133     -87.919       0.390       1.863       0.000       1.332      -0.433       0.878

    6    1  |1 1>+             -0.001      -0.002      -0.000      -0.000       0.000       0.000       0.000       0.000
                                0.000    -922.322       4.280      18.400       0.000      -0.229      -2.691      -0.086

    7    1  |1 1>+             -0.002      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                              922.322       0.000     833.980     135.540   -1513.679     -14.251       8.650    1069.707

    8    1  |1 1>+             -0.000      -0.000      -0.000       0.000       0.000       0.000       0.000       0.000
                               -4.280    -833.980       0.000      14.170       7.566       0.401      -0.044      -5.166

    9    1  |1 1>+             -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000
                              -18.400    -135.540     -14.170       0.000      26.948      -1.183      -0.154     -19.988

    1    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.000      -0.000       0.000
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.000      -0.000

    2    1  |1 0>               0.000       0.000       0.000       0.000       0.000       0.000       0.069      -1.494
                                0.000       0.000       0.000       0.000       0.000      -0.000       0.000       0.000

    3    1  |1 0>               0.000       0.000       0.000       0.000       0.000      -0.069       0.000      -0.012
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000      -0.000

    4    1  |1 0>               0.000       0.000       0.000       0.000      -0.000       1.494       0.012       0.000
                                0.000       0.000       0.000       0.000      -0.000       0.000      -0.000       0.000

    5    1  |1 0>               0.000       0.000       0.000       0.000      -0.000      78.848    -844.562     147.531
                                0.000       0.000       0.000       0.000      -0.000      -0.000      -0.000      -0.000

    6    1  |1 0>           93787.731       0.000       0.000       0.000       0.000     826.174      92.643    1475.260
                                0.000       0.000       0.000       0.000       0.000       0.000      -0.001       0.000

    7    1  |1 0>               0.000   95047.351       0.000       0.000     -11.789       7.368     -15.571      -3.918
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.001

    8    1  |1 0>               0.000       0.000   95048.108       0.000   -1494.332     921.613     144.561    -517.066
                               -0.000      -0.000       0.000       0.000      -0.004      -0.003       0.019      -0.002

    9    1  |1 0>               0.000       0.000       0.000   95048.108    -242.662     149.759    -915.200     -76.375
                               -0.000      -0.000      -0.000       0.000       0.025       0.019       0.003       0.011

    1    1  |1 1>-              0.000     -11.789   -1494.332    -242.662   91808.604       0.000       0.000       0.000
                               -0.000      -0.000       0.004      -0.025       0.000       0.000       0.000       0.000

    2    1  |1 1>-            826.174       7.368     921.613     149.759       0.000   93787.037       0.000       0.000
                               -0.000      -0.000       0.003      -0.019       0.000       0.000       0.000       0.000

    3    1  |1 1>-             92.643     -15.571     144.561    -915.200       0.000       0.000   93787.024       0.000
                                0.001      -0.000      -0.019      -0.003       0.000       0.000       0.000       0.000

    4    1  |1 1>-           1475.260      -3.918    -517.066     -76.375       0.000       0.000       0.000   93787.846
                               -0.000      -0.001       0.002      -0.011       0.000       0.000       0.000       0.000

    5    1  |1 1>-              0.121    -922.355       4.778      16.449       0.000       0.000       0.000       0.000
                               -0.000       0.002       0.000      -0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000      87.932       0.476      -1.409       0.000       0.000       0.000       0.000
                                0.000       0.020      -0.000      -0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-            -87.932       0.000    -135.446     834.089       0.000       0.000       0.000       0.000
                                0.020      -0.000       0.001       0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-             -0.476     135.446       0.000      -6.580       0.000       0.000       0.000       0.000
                               -0.000       0.001      -0.000       0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              1.409    -834.089       6.580       0.000       0.000       0.000       0.000       0.000
                               -0.000       0.000       0.000       0.000       0.000       0.000       0.000       0.000

  State Sym Spin    / Nr.       33          34          35          36          37

    1    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.001       0.000     -14.835     141.893    -873.068

    2    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               12.743      -0.563     -17.394       3.428     -15.769

    3    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                6.883      -5.800     843.614      -9.810      -9.522

    4    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                            -1285.163     117.567      -5.419     108.024    -692.835

    5    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                             1333.384     -98.521      -9.328     133.956    -663.261

    6    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -40.609    -929.223     -11.488    -829.780    -151.937

    7    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.014       0.096     924.922      -4.623     -16.466

    8    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                                0.276       1.831     -52.003       0.260       0.926

    9    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                              -80.324    -842.630      -7.215    -914.518    -148.507

   10    1  |0 0>               0.000       0.000       0.000       0.000       0.000
                               -0.001      -0.000     -21.930     209.766   -1290.693

    1    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000      -0.000    1513.679      -7.566     -26.948

    2    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -1.332       0.229      14.251      -0.401       1.183

    3    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                                0.433       2.691      -8.650       0.044       0.154

    4    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.878       0.086   -1069.707       5.166      19.988

    5    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -0.000    -849.559       5.577     924.634      61.076

    6    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              849.559      -0.000     -17.232      61.170    -924.484

    7    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                               -5.577      17.232      -0.000     -15.041       4.223

    8    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                             -924.634     -61.170      15.041       0.000     844.885

    9    1  |1 1>+              0.000       0.000       0.000       0.000       0.000
                              -61.076     924.484      -4.223    -844.885       0.000

    1    1  |1 0>               0.000      -0.000      11.789    1494.332     242.662
                               -0.000       0.000       0.000      -0.004       0.025

    2    1  |1 0>             -78.848    -826.174      -7.368    -921.613    -149.759
                               -0.000       0.000       0.000      -0.003       0.019

    3    1  |1 0>             844.562     -92.643      15.571    -144.561     915.200
                               -0.000      -0.001       0.000       0.019       0.003

    4    1  |1 0>            -147.531   -1475.260       3.918     517.066      76.375
                               -0.000       0.000       0.001      -0.002       0.011

    5    1  |1 0>               0.000      -0.121     922.355      -4.778     -16.449
                                0.000       0.000      -0.002      -0.000       0.000

    6    1  |1 0>               0.121       0.000     -87.932      -0.476       1.409
                                0.000      -0.000      -0.020       0.000       0.000

    7    1  |1 0>            -922.355      87.932       0.000     135.446    -834.089
                               -0.002      -0.020       0.000      -0.001      -0.000

    8    1  |1 0>               4.778       0.476    -135.446       0.000       6.580
                               -0.000       0.000      -0.001       0.000      -0.000

    9    1  |1 0>              16.449      -1.409     834.089      -6.580       0.000
                                0.000       0.000      -0.000      -0.000      -0.000

    1    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    2    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    3    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    4    1  |1 1>-              0.000       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    5    1  |1 1>-          93787.697       0.000       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    6    1  |1 1>-              0.000   93787.731       0.000       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    7    1  |1 1>-              0.000       0.000   95047.351       0.000       0.000
                                0.000       0.000       0.000       0.000       0.000

    8    1  |1 1>-              0.000       0.000       0.000   95048.108       0.000
                                0.000       0.000       0.000       0.000       0.000

    9    1  |1 1>-              0.000       0.000       0.000       0.000   95048.108
                                0.000       0.000       0.000       0.000       0.000

 => Eigenvalues of spin-orbit matrix in ascending order  (E0 = Emin,ges)
    (symmetry =  1)

    Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
             (au)           (au)        (cm-1)           (au)       (cm-1)        (eV)
    1  -463.30849654    -0.00011062      -24.28      0.00000000        0.00      0.0000
    2  -462.89496829     0.41341763    90734.68      0.41352825    90758.96     11.2527
    3  -462.89496819     0.41341773    90734.70      0.41352835    90758.98     11.2527
    4  -462.89496808     0.41341784    90734.73      0.41352846    90759.01     11.2527
    5  -462.88880270     0.41958322    92087.87      0.41969384    92112.15     11.4205
    6  -462.88880270     0.41958322    92087.87      0.41969384    92112.15     11.4205
    7  -462.88880054     0.41958539    92088.35      0.41969601    92112.63     11.4205
    8  -462.88880052     0.41958541    92088.35      0.41969602    92112.63     11.4205
    9  -462.88879947     0.41958645    92088.58      0.41969707    92112.86     11.4205
   10  -462.88879937     0.41958656    92088.61      0.41969718    92112.88     11.4205
   11  -462.88879908     0.41958684    92088.67      0.41969746    92112.95     11.4205
   12  -462.88862248     0.41976345    92127.43      0.41987407    92151.71     11.4254
   13  -462.88862222     0.41976370    92127.48      0.41987432    92151.76     11.4254
   14  -462.88862160     0.41976432    92127.62      0.41987494    92151.90     11.4254
   15  -462.88862157     0.41976436    92127.63      0.41987497    92151.91     11.4254
   16  -462.88862140     0.41976453    92127.66      0.41987514    92151.94     11.4254
   17  -462.88499097     0.42339495    92924.45      0.42350557    92948.73     11.5242
   18  -462.88499085     0.42339507    92924.48      0.42350569    92948.76     11.5242
   19  -462.88498988     0.42339604    92924.69      0.42350666    92948.97     11.5242
   20  -462.88399017     0.42439575    93144.10      0.42450637    93168.38     11.5514
   21  -462.88398967     0.42439625    93144.21      0.42450687    93168.49     11.5514
   22  -462.88398963     0.42439629    93144.22      0.42450691    93168.50     11.5514
   23  -462.88398847     0.42439746    93144.48      0.42450808    93168.75     11.5515
   24  -462.88398833     0.42439759    93144.51      0.42450821    93168.78     11.5515
   25  -462.87550956     0.43287637    95005.38      0.43298699    95029.66     11.7822
   26  -462.86444025     0.44394567    97434.81      0.44405629    97459.09     12.0834
   27  -462.86444017     0.44394575    97434.83      0.44405637    97459.11     12.0834
   28  -462.86443884     0.44394709    97435.12      0.44405770    97459.40     12.0834
   29  -462.86265649     0.44572943    97826.30      0.44584005    97850.58     12.1319
   30  -462.86265627     0.44572966    97826.35      0.44584027    97850.63     12.1319
   31  -462.86265621     0.44572971    97826.36      0.44584033    97850.64     12.1319
   32  -462.86265619     0.44572974    97826.37      0.44584035    97850.65     12.1319
   33  -462.86265612     0.44572980    97826.38      0.44584042    97850.66     12.1319
   34  -462.86230072     0.44608520    97904.39      0.44619582    97928.66     12.1416
   35  -462.86230069     0.44608524    97904.39      0.44619586    97928.67     12.1416
   36  -462.86229961     0.44608632    97904.63      0.44619693    97928.91     12.1416
   37  -462.85420058     0.45418535    99682.16      0.45429596    99706.44     12.3620

 => Eigenvectors of spin-orbit matrix columnwise and corresponding to the
    eigenvalues in ascending order (symmetry =  1)

  Basis states          Eigenvectors (columnwise)

 State Sym Spin     / Nr.      1           2           3           4           5           6           7           8

   1    1  |0 0>           0.99987444 -0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>           0.00000000 -0.00000356 -0.00000320  0.00000004  0.00001403  0.00002530 -0.00004885 -0.00000220
                          -0.00000000 -0.00000514  0.00000643 -0.00000013  0.00001715 -0.00001446 -0.00000732 -0.00000786

   3    1  |0 0>          -0.00000000  0.00000513  0.00000641 -0.00000012 -0.00002504 -0.00008987  0.00003675 -0.00001716
                           0.00000000 -0.00000346  0.00000308 -0.00000007 -0.00002969  0.00005145 -0.00000232  0.00001847

   4    1  |0 0>           0.00000000  0.00000006  0.00000004  0.00000020 -0.00000147 -0.00000152 -0.00408022 -0.00029441
                           0.00000000  0.00000008 -0.00000008  0.00000003 -0.00000104  0.00000129 -0.00017271 -0.00061268

   5    1  |0 0>          -0.00000001 -0.00000004 -0.00000010 -0.00000075  0.00000234  0.00000352 -0.00118176  0.00000630
                          -0.00000000  0.00000010 -0.00000012  0.00000000  0.00000307 -0.00000173 -0.00003492 -0.00022251

   6    1  |0 0>          -0.00000000 -0.00000009 -0.00000012 -0.00000004 -0.00000054  0.00000110 -0.00003183 -0.00369134
                           0.00000000 -0.00000001  0.00000006 -0.00000002  0.00000115  0.00000021 -0.00061894  0.00194905

   7    1  |0 0>          -0.00000000 -0.10846914 -0.11856538  0.00134353 -0.00000091 -0.00000027  0.00000026  0.00000000
                           0.00000000  0.07994990 -0.06348462  0.00256523 -0.00000108  0.00000019 -0.00000000 -0.00000001

   8    1  |0 0>          -0.00000000  0.07981274  0.06363578 -0.00086784 -0.00000198  0.00000140  0.00000006  0.00000026
                           0.00000000  0.10825778 -0.11871941  0.00442306 -0.00000241 -0.00000081 -0.00000000 -0.00000011

   9    1  |0 0>          -0.00000000 -0.00032264  0.00021346  0.00004443  0.00000004 -0.00000011  0.00000159 -0.00000239
                          -0.00000000 -0.00246347  0.00474151  0.19034461  0.00000011  0.00000011 -0.00000036  0.00000152

  10    1  |0 0>           0.00036637  0.00000002 -0.00000004 -0.00000164 -0.00000000  0.00000001 -0.00000007 -0.00000001
                          -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000000  0.54566488  0.59003734 -0.00672586  0.00000017 -0.00000016 -0.00000010 -0.00000005
                          -0.00000000 -0.35681423  0.27443029 -0.01118995  0.00000019  0.00000006 -0.00000002 -0.00000006

   2    1  |1 1>+          0.00000000  0.00646670  0.00699211 -0.00007977  0.28275841  0.47915597  0.00034692 -0.00002910
                          -0.00000000 -0.00422938  0.00325273 -0.00013374  0.34189005 -0.27315748 -0.00000898 -0.00014152

   3    1  |1 1>+         -0.00000000  0.00415977  0.00320567 -0.00004464  0.35091211 -0.38647099 -0.00013551 -0.00050505
                          -0.00000000  0.00642542 -0.00696224  0.00026012  0.42641800  0.21908337  0.00025143  0.00020321

   4    1  |1 1>+          0.00000000 -0.00365769 -0.00394679  0.00004505  0.00109250  0.00599799  0.00009443  0.00015697
                           0.00000000  0.00231789 -0.00176737  0.00007181  0.00135303 -0.00342991 -0.00006172  0.00043202

   5    1  |1 1>+          0.00000000 -0.00001708  0.00001341  0.00000234  0.00024765 -0.00018646 -0.04967716  0.51321428
                          -0.00000000 -0.00014033  0.00026912  0.01077884  0.00032535  0.00014215  0.08987127 -0.28062466

   6    1  |1 1>+         -0.00000000  0.00000775  0.00000536 -0.00000200  0.00012946  0.00043259 -0.56563210 -0.08551531
                           0.00000000  0.00000922 -0.00002239 -0.00102757  0.00019997 -0.00023028 -0.03231388 -0.05533432

   7    1  |1 1>+          0.00007123 -0.09255278 -0.07151980  0.00099560 -0.00000339 -0.00000376 -0.00000617  0.00001153
                           0.00000000 -0.14161000  0.15363157 -0.00171987 -0.00000413  0.00000209  0.00000267 -0.00000736

   8    1  |1 1>+          0.00902773  0.00052757  0.00031420 -0.00001961 -0.00000041 -0.00000033 -0.00077293 -0.00016679
                           0.00000000  0.00120414 -0.00172338 -0.03835807 -0.00000033  0.00000028 -0.00004932 -0.00006762

   9    1  |1 1>+          0.00146600  0.00124676  0.00153784  0.00003649  0.00000011 -0.00000005 -0.00012260  0.00068138
                          -0.00000000 -0.00053753  0.00315118  0.23629596 -0.00000021 -0.00000012  0.00010175 -0.00038550

   1    1  |1 0>          -0.00000001 -0.01191922  0.02294038  0.92088651 -0.00000001  0.00000005 -0.00000005  0.00000002
                           0.00000000  0.00156107 -0.00103274 -0.00021493  0.00000003  0.00000000 -0.00000020  0.00000001

   2    1  |1 0>           0.00000000 -0.00000774  0.00000664 -0.00016680  0.00029128  0.00018241  0.09029715 -0.26825845
                           0.00000000  0.00000722  0.00000614 -0.00000006 -0.00030452  0.00038371 -0.00226745 -0.50733461

   3    1  |1 0>          -0.00000000 -0.00000143  0.00000263  0.00010116 -0.00031117  0.00022007 -0.02390918 -0.08252230
                          -0.00000000  0.00000006 -0.00000019 -0.00000000  0.00029490  0.00035186  0.57360237  0.03697819

   4    1  |1 0>          -0.00000000 -0.00016844  0.00031869  0.01250419  0.00003651 -0.00001595 -0.00401310  0.01203648
                           0.00000000  0.00002573 -0.00001046 -0.00000296 -0.00017243  0.00018901 -0.00104786  0.02233546

   5    1  |1 0>           0.00000000 -0.00357246  0.00255638 -0.00010485 -0.00019170  0.00211323 -0.00021939  0.00036189
                          -0.00000000 -0.00679122 -0.00722256  0.00008310  0.00020500  0.00375170  0.00054700 -0.00022474

   6    1  |1 0>           0.00000000  0.00678020 -0.00722955  0.00028345 -0.00551506 -0.00112669 -0.00141448 -0.00007494
                          -0.00000000 -0.00356269 -0.00256606  0.00003734  0.00456114 -0.00195052 -0.00025053 -0.00023994

   7    1  |1 0>          -0.00000000  0.00045276 -0.00000041  0.00000412 -0.00000067  0.00000023  0.00000238  0.00000106
                           0.00914525  0.00309937  0.00312894 -0.00003456  0.00000049  0.00000057 -0.00003493 -0.00000775

   8    1  |1 0>           0.00000000 -0.15459169  0.16296435 -0.00612573  0.00000101 -0.00000123 -0.00000114  0.00000013
                          -0.00004571  0.06859796  0.04599614 -0.00070135 -0.00000078 -0.00000224 -0.00000014 -0.00000000

   9    1  |1 0>          -0.00000000  0.06882717 -0.04577645  0.00195102  0.00000622 -0.00001021 -0.00000016 -0.00000054
                          -0.00016280  0.15478534  0.16278837 -0.00188435 -0.00000540 -0.00001778  0.00000146  0.00000026

   1    1  |1 1>-         -0.00000000 -0.54468114  0.59074044 -0.02206209  0.00000037 -0.00000001  0.00000001 -0.00000001
                           0.00000000  0.35609460  0.27520269 -0.00382730 -0.00000031 -0.00000003  0.00000005  0.00000004

   2    1  |1 1>-         -0.00000000  0.00635612 -0.00689296  0.00027466 -0.42367226 -0.21862436  0.00037836  0.00001598
                          -0.00000000 -0.00415675 -0.00321249  0.00004468  0.34863960 -0.38568020  0.00002200  0.00001203

   3    1  |1 1>-         -0.00000000  0.00422819 -0.00326161  0.00013292  0.34209358 -0.27209315 -0.00007354 -0.00010208
                           0.00000000  0.00639748  0.00692346 -0.00007888 -0.28290364 -0.47726761  0.00084948 -0.00004610

   4    1  |1 1>-         -0.00000000  0.00375357 -0.00408365  0.00016335 -0.00360800  0.00007584  0.00126890 -0.00006224
                           0.00000000 -0.00252809 -0.00197080  0.00002727  0.00295678  0.00007796  0.00017492  0.00004364

   5    1  |1 1>-          0.00000000  0.00001532 -0.00002778 -0.00102747  0.00022790 -0.00025613  0.03173889  0.05698224
                           0.00000000 -0.00000292  0.00000032  0.00000185 -0.00024044 -0.00039697 -0.56548492 -0.08235287

   6    1  |1 1>-          0.00000000  0.00015349 -0.00028371 -0.01077828 -0.00040143 -0.00015170  0.08365415 -0.26345462
                          -0.00000000 -0.00002750  0.00000491  0.00000246  0.00018858 -0.00008450  0.05385861 -0.47943378

   7    1  |1 1>-         -0.00000000  0.09275717 -0.07137001  0.00104415 -0.00000511  0.00000955  0.00000138 -0.00000011
                          -0.00015338  0.14181058  0.15335094 -0.00174751  0.00000447  0.00001667 -0.00001438 -0.00000665

   8    1  |1 1>-          0.00000000  0.00259396 -0.00552808 -0.23623952 -0.00000002 -0.00000013  0.00010111 -0.00038435
                           0.00146701 -0.00110901 -0.00050135  0.00006295 -0.00000023  0.00000001  0.00012692 -0.00067798

   9    1  |1 1>-          0.00000000 -0.00115398  0.00031385 -0.03841190 -0.00000031 -0.00000002  0.00005161  0.00006896
                          -0.00902654 -0.00258903 -0.00268610  0.00004573  0.00000008  0.00000023 -0.00080750 -0.00017395

 State Sym Spin     / Nr.      9          10          11          12          13          14          15          16

   1    1  |0 0>          -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000001 -0.00000001 -0.00000038
                           0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

   2    1  |0 0>          -0.00005357 -0.00006253  0.00000081  0.00539627  0.00307904  0.57396413  0.01569474  0.02196581
                           0.00002072  0.00197670 -0.00000043 -0.00050111  0.00012152 -0.11652054 -0.33222027  0.00298632

   3    1  |0 0>           0.00212899  0.00008061  0.00000086 -0.00472037  0.00331415 -0.26741183  0.45324925 -0.00397676
                          -0.00012662  0.00005431 -0.00000159 -0.00046307  0.00005632 -0.19795454 -0.37145503  0.00121095

   4    1  |0 0>           0.00002262 -0.00000700 -0.00001261  0.65187414  0.01791516 -0.00191581  0.00177410 -0.15275218
                          -0.00000220 -0.00001337  0.00004836  0.03649177 -0.06490619 -0.00192936 -0.00197495 -0.00024953

   5    1  |0 0>           0.00000908 -0.00000559  0.00005359  0.15168026 -0.02743656 -0.02029823  0.00495424  0.65528396
                          -0.00000088 -0.00003274  0.00001463  0.01153180 -0.01937075  0.00426941  0.00917791 -0.00002047

   6    1  |0 0>          -0.00001194 -0.00000013 -0.00000012  0.00297929  0.66202199 -0.00248933 -0.00250142  0.03109922
                          -0.00000015  0.00000122 -0.00016776 -0.06838362  0.10085927  0.00224733  0.00318014  0.00053092

   7    1  |0 0>           0.00003885  0.00000017  0.00000002  0.00000068  0.00000016 -0.00002662  0.00004875  0.00000067
                          -0.00000237  0.00000397 -0.00000003  0.00000004 -0.00000013 -0.00002177 -0.00004113  0.00000013

   8    1  |0 0>          -0.00000098 -0.00000121  0.00000001 -0.00000002 -0.00000020  0.00006606 -0.00000009  0.00000091
                          -0.00000081  0.00004018 -0.00000019 -0.00000001 -0.00000002 -0.00001239 -0.00003591  0.00000035

   9    1  |0 0>           0.00000002  0.00000001  0.00000015 -0.00000061 -0.00000346  0.00000043  0.00000022 -0.00000004
                           0.00000002  0.00000006  0.00001714  0.00000031 -0.00000044 -0.00000023 -0.00000037  0.00000041

  10    1  |0 0>           0.00000003  0.00000003  0.00000003 -0.00000011 -0.00000010 -0.00000027  0.00000017  0.00000747
                          -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

   1    1  |1 1>+         -0.00000123  0.00000018 -0.00000001 -0.00000035 -0.00000014 -0.00000232  0.00000248 -0.00000068
                           0.00000006 -0.00000009  0.00000001  0.00000002  0.00000004 -0.00000303 -0.00000289 -0.00000001

   2    1  |1 1>+          0.18834511  0.00282393  0.00056208  0.00062256 -0.00016459 -0.11861176  0.19247370 -0.00103818
                          -0.01130806  0.00413271  0.00004332  0.00012489 -0.00048984 -0.08309513 -0.15495501  0.00048705

   3    1  |1 1>+         -0.00086188  0.00536153  0.00002094  0.00083836 -0.00159341 -0.24908287 -0.00801027 -0.00530115
                           0.00273254 -0.17686710 -0.00000382  0.00042944 -0.00041525  0.05124085  0.14558564 -0.00130455

   4    1  |1 1>+         -0.62716028 -0.00959348 -0.00140605  0.00060337 -0.00023462 -0.21102442  0.34575434 -0.00273628
                           0.03745728 -0.00230663  0.00014456  0.00018591 -0.00081338 -0.14974834 -0.27953862  0.00088373

   5    1  |1 1>+         -0.00009599 -0.00013746 -0.00372796 -0.02647795  0.29126718 -0.00101492 -0.00029384 -0.04419226
                           0.00052865  0.00024709 -0.42031220 -0.03174010  0.04719840  0.00026298  0.00011265  0.00027583

   6    1  |1 1>+          0.00006169 -0.00113698  0.00023205 -0.28643270 -0.02534782  0.00738254 -0.00264189 -0.51118081
                          -0.00010743  0.00005597  0.03739779 -0.01401780  0.02533209 -0.00228267 -0.00381317 -0.00000261

   7    1  |1 1>+          0.00000195  0.00001103 -0.00000009  0.00126587 -0.00258966 -0.10062976 -0.00440110 -0.00269831
                          -0.00001506 -0.00035667  0.00000031  0.00043015 -0.00055951  0.02133574  0.06013472 -0.00053498

   8    1  |1 1>+          0.00000104 -0.00000115 -0.00001223  0.11801832  0.02201444  0.00181047 -0.00051222 -0.06585505
                          -0.00000015  0.00000198  0.00000570  0.00467317 -0.00890266 -0.00048433 -0.00083687 -0.00003068

   9    1  |1 1>+          0.00000021 -0.00000048 -0.00000166  0.01884384 -0.11526027  0.00269152  0.00002098 -0.01248252
                           0.00000039  0.00000601  0.00002512  0.01305381 -0.01956796 -0.00064131 -0.00135980 -0.00009272

   1    1  |1 0>           0.00000002 -0.00000003 -0.00000164  0.00000004  0.00000002 -0.00000011 -0.00000022 -0.00000195
                          -0.00000001 -0.00000001  0.00000002  0.00000005  0.00000029 -0.00000025 -0.00000017 -0.00000001

   2    1  |1 0>          -0.00042334 -0.00045947  0.01475648  0.05929669 -0.08750843 -0.00089407 -0.00075800 -0.00046478
                          -0.00000472  0.00002232 -0.00011639  0.00157951  0.57383452 -0.00292008 -0.00014730  0.00879104

   3    1  |1 0>          -0.00009325  0.00008262  0.00366958  0.03294440 -0.05842776 -0.00054679 -0.00050137 -0.00019305
                          -0.00041509  0.00115586  0.00001687 -0.57948452 -0.01052970 -0.00145689  0.00031210 -0.00878376

   4    1  |1 0>          -0.00172200  0.00006902  0.77408047  0.00052171 -0.00068431  0.00004289  0.00014234 -0.00007801
                          -0.00006466  0.00002026 -0.00682229  0.00478608  0.00773302  0.00022570 -0.00000149  0.00019465

   5    1  |1 0>           0.04237205  0.06496216  0.00017237 -0.00012046  0.00046370  0.07913819  0.14292078 -0.00036982
                           0.72695819  0.01326441  0.00162869  0.00024843 -0.00013451 -0.14336924  0.19383822 -0.00236595

   6    1  |1 0>          -0.01509294  0.72778915 -0.00002308 -0.00031925  0.00022262 -0.05989345 -0.16126944  0.00134796
                          -0.06454456  0.02122643 -0.00012197  0.00081890 -0.00064425 -0.23333000 -0.02923247 -0.00502666

   7    1  |1 0>           0.00000054  0.00000301  0.00000069 -0.00005166  0.00000045 -0.00019166 -0.00033380 -0.00001967
                           0.00000771 -0.00000033  0.00002592 -0.00207548 -0.00212491 -0.00388850  0.00225483  0.13767576

   8    1  |1 0>           0.00000996  0.00038959 -0.00000006 -0.00016549  0.00013513 -0.02663507 -0.06975909  0.00055908
                          -0.00006689  0.00000769 -0.00000015  0.00033499 -0.00061959 -0.09148123 -0.01721405 -0.00268459

   9    1  |1 0>           0.00002699  0.00005935  0.00000002 -0.00006609  0.00020714  0.03077678  0.05410976 -0.00011421
                           0.00041599  0.00002845 -0.00000040  0.00016168 -0.00012016 -0.06488282  0.07843610 -0.00355354

   1    1  |1 1>-          0.00000017 -0.00000148  0.00000005 -0.00000001  0.00000008 -0.00000159 -0.00000119  0.00000006
                           0.00000008 -0.00000004  0.00000000  0.00000016 -0.00000036 -0.00000430 -0.00000122 -0.00000037

   2    1  |1 1>-          0.00292782 -0.18148136 -0.00033693  0.00048321 -0.00048543  0.05362491  0.15118041 -0.00134180
                           0.00185293 -0.00554154  0.00001911 -0.00082317  0.00208451  0.25307935  0.01099037  0.00534991

   3    1  |1 1>-          0.01116447 -0.00328474  0.00007843 -0.00010258  0.00045649  0.08428569  0.15649167 -0.00047994
                           0.18636181  0.00280253  0.00027402  0.00019012 -0.00015579 -0.12469639  0.19672955 -0.00195216

   4    1  |1 1>-          0.00950950 -0.63298718  0.00023594 -0.00070915  0.00065861 -0.09132657 -0.25663328  0.00226306
                          -0.00556775 -0.01941911 -0.00003277  0.00145231 -0.00244640 -0.42641758 -0.02028568 -0.00910629

   5    1  |1 1>-         -0.00005899 -0.00008831  0.04740281  0.01365258 -0.02536015 -0.00245631 -0.00368282 -0.00015358
                           0.00041024 -0.00113670 -0.00041748 -0.30169992 -0.04092256 -0.00892669  0.00363604  0.50097626

   6    1  |1 1>-         -0.00144391  0.00024963  0.46923051 -0.03170568  0.04720870  0.00071749  0.00082883  0.00020932
                           0.00001121  0.00016909 -0.00412093  0.02802789 -0.28975716  0.00251023 -0.00028153 -0.05229158

   7    1  |1 1>-         -0.00002289  0.00000215  0.00000013  0.00002071 -0.00012205 -0.03462218 -0.06454799  0.00020237
                          -0.00038521 -0.00002662  0.00000021  0.00190137  0.00098734  0.04937154 -0.08014694  0.00196753

   8    1  |1 1>-          0.00000025 -0.00000029  0.00004044  0.01306729 -0.01957348  0.00000863  0.00018512 -0.00009768
                           0.00000159  0.00000056 -0.00000261 -0.01852876  0.11562954 -0.00078229  0.00030647 -0.00956102

   9    1  |1 1>-          0.00000064 -0.00000023 -0.00000250 -0.00472417  0.00890325  0.00039549  0.00074931  0.00000995
                           0.00000842 -0.00000162  0.00001318  0.11595394  0.01990626 -0.00181691  0.00182405  0.07002226

 State Sym Spin     / Nr.     17          18          19          20          21          22          23          24

   1    1  |0 0>           0.00000000  0.00000000 -0.00000006 -0.00000235  0.00000001  0.00000001 -0.00000000  0.00000000
                          -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.00007571  0.00001179 -0.00000007  0.00025888  0.05139361  0.04373009  0.00805085 -0.00827941
                          -0.00004853  0.00012647 -0.00000545  0.00009731  0.32155071 -0.31804927 -0.00462538 -0.00227746

   3    1  |0 0>          -0.00006871 -0.00010964 -0.00000046 -0.01135155  0.31392435  0.32444576  0.00183986  0.00548295
                           0.00009826  0.00000774 -0.00000250 -0.00010422 -0.06713649  0.02744043 -0.00482912 -0.00181563

   4    1  |0 0>           0.00000364  0.00000121  0.00000331  0.10997673 -0.00267117 -0.00226460  0.28362778 -0.00611225
                           0.00000010 -0.00000405  0.00000132  0.00001190 -0.00605662  0.00609149 -0.31267780 -0.13723643

   5    1  |0 0>           0.00000442  0.00000762 -0.00001313 -0.44366326 -0.00847763 -0.00880721  0.07333489 -0.01446817
                          -0.00000840  0.00000073  0.00000005 -0.00005637  0.00025722  0.00087369 -0.07455477 -0.03317468

   6    1  |0 0>          -0.00000194  0.00000308 -0.00000049 -0.01309751 -0.00332410 -0.00357400 -0.10452832  0.43374741
                          -0.00000491  0.00000512  0.00000735  0.00006549  0.00704389 -0.00626152 -0.09531668 -0.02914219

   7    1  |0 0>          -0.33138136 -0.44807685 -0.00040709 -0.00000620 -0.00028009 -0.00031430  0.00000095  0.00000091
                           0.44969571  0.04908181  0.00278863 -0.00000021  0.00004999 -0.00001618 -0.00000157 -0.00000036

   8    1  |0 0>          -0.36699646  0.06950657  0.00019636  0.00000192 -0.00003471 -0.00003014  0.00000066 -0.00000244
                          -0.26170571  0.55425911  0.00444806 -0.00000080 -0.00028477  0.00030527  0.00000032  0.00000016

   9    1  |0 0>           0.00323523  0.00143575 -0.00034710 -0.00000015  0.00000415  0.00000456  0.00000058 -0.00000472
                          -0.00021129 -0.00389789  0.71779806 -0.00002322  0.00000594 -0.00000651  0.00000149  0.00000067

  10    1  |0 0>          -0.00000001 -0.00000001  0.00000151  0.00005852 -0.00000017 -0.00000015  0.00000006 -0.00000011
                          -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000000

   1    1  |1 1>+          0.01784541  0.02595668  0.00002402 -0.00000007 -0.00002748 -0.00002020 -0.00000003 -0.00000001
                          -0.02666989 -0.00102903 -0.00014547  0.00000010  0.00000626 -0.00000190  0.00000013 -0.00000009

   2    1  |1 1>+         -0.11827722 -0.17200632 -0.00015914  0.00250725 -0.06196721 -0.06409794 -0.00099603 -0.00061927
                           0.17673134  0.00684197  0.00099479  0.00002103  0.01459857 -0.00672375  0.00143274  0.00058225

   3    1  |1 1>+          0.14616748 -0.01597588 -0.00006481  0.00136569  0.01084876  0.00931094  0.00095718 -0.00158049
                           0.08851119 -0.21040084 -0.00174474  0.00002004  0.06512881 -0.06448768 -0.00023469 -0.00015032

   4    1  |1 1>+          0.06507866  0.09650934  0.00008976  0.00418608 -0.11056238 -0.11431014 -0.00167828 -0.00111123
                          -0.09974391 -0.00211822 -0.00051867  0.00003762  0.02551277 -0.01147408  0.00244923  0.00099104

   5    1  |1 1>+         -0.00123961 -0.00057226  0.00013041 -0.01542781 -0.00010321 -0.00008458  0.02683184 -0.08765942
                           0.00011221  0.00146873 -0.27036327 -0.00000076 -0.00109222  0.00104126  0.01291470  0.00310307

   6    1  |1 1>+         -0.00000174 -0.00011706 -0.00001597 -0.15968606 -0.00394261 -0.00410960  0.05685015  0.00688368
                           0.00016487 -0.00013073  0.02577492 -0.00001894  0.00210701 -0.00153602 -0.06662649 -0.02903131

   7    1  |1 1>+         -0.18488908  0.02123239  0.00008596  0.00604675  0.07695422  0.06705786  0.00099272 -0.00055223
                          -0.11333388  0.26707171 -0.00357431  0.00012853  0.42543305 -0.42187545 -0.00044683 -0.00021820

   8    1  |1 1>+          0.00116973  0.00000413 -0.00003509 -0.34608257  0.00317720  0.00266506 -0.36200827 -0.08064396
                           0.00054849 -0.00163005  0.05521494 -0.00005696  0.00368817 -0.00379596  0.44223716  0.19148797

   9    1  |1 1>+          0.00175592 -0.00105512  0.00016150 -0.05498515 -0.00267115 -0.00281954 -0.20052201  0.57129955
                           0.00211227 -0.00290153 -0.33984888  0.00008597  0.00192713 -0.00129683 -0.05558291 -0.00772027

   1    1  |1 0>          -0.00001216 -0.00022450  0.04124780 -0.00000671 -0.00000043  0.00000023  0.00000007  0.00000005
                          -0.00018638 -0.00008266  0.00001994  0.00000000  0.00000036  0.00000016 -0.00000001  0.00000023

   2    1  |1 0>          -0.00016226  0.00031214  0.00417406  0.00002701  0.00267626 -0.00246220 -0.03832463 -0.01168441
                           0.00020094 -0.00005318  0.00000187 -0.00041319  0.00055264  0.00062539  0.04256630 -0.17568739

   3    1  |1 0>           0.00000173  0.00001452 -0.00253394  0.00000002  0.00068779 -0.00095093  0.13021896  0.05720949
                           0.00001278  0.00000634 -0.00000123 -0.00013360 -0.00261491 -0.00255518  0.11854226 -0.00350431

   4    1  |1 0>          -0.00000541  0.00192104 -0.31360641 -0.00000576  0.00009325 -0.00008800 -0.00156400 -0.00061864
                           0.00156128  0.00060501 -0.00015172 -0.00000589  0.00002041  0.00002220 -0.00039374 -0.00230826

   5    1  |1 0>           0.18323242 -0.01323603  0.00075103 -0.00002315 -0.02096027  0.01291756 -0.00134298 -0.00053601
                           0.10309942  0.17166670  0.00016348  0.00242574 -0.06178152 -0.06408536 -0.00081449 -0.00083741

   6    1  |1 0>           0.07230405 -0.21024287 -0.00213921 -0.00001733 -0.06294903  0.06318792  0.00032040  0.00019059
                          -0.15625458  0.00046161  0.00005011  0.00110767  0.01764497  0.01635656  0.00111974 -0.00178257

   7    1  |1 0>          -0.00461944  0.00193666 -0.00000339 -0.00008644  0.00505382 -0.00419584  0.00015070 -0.00000058
                          -0.00105938 -0.00380133  0.00001778  0.70201930  0.00418292  0.00468611  0.00071695 -0.00133622

   8    1  |1 0>          -0.07601181  0.26440077  0.00237772 -0.00010311 -0.40435849  0.40934008  0.00307951  0.00160315
                           0.20595746  0.01375579 -0.00004991  0.00270134  0.14265877  0.13517043  0.00725359 -0.00949604

   9    1  |1 0>          -0.23741228  0.03425285 -0.00084786 -0.00015865 -0.16511868  0.11235960 -0.00856778 -0.00339791
                          -0.11715313 -0.21679283 -0.00021072  0.00386452 -0.39821413 -0.41384354 -0.00496009 -0.00581669

   1    1  |1 1>-          0.01357712 -0.03198857 -0.00026380  0.00000018 -0.00002805  0.00001981 -0.00000003 -0.00000002
                          -0.02214560  0.00254488  0.00000996  0.00000003  0.00000529  0.00000337  0.00000017 -0.00000004

   2    1  |1 1>-          0.08862220 -0.20874416 -0.00215765  0.00002022  0.06640831 -0.06586796 -0.00029697 -0.00017395
                          -0.14450634  0.01662614  0.00006480 -0.00138067 -0.01201018 -0.01046813 -0.00096483  0.00146816

   3    1  |1 1>-         -0.17496512 -0.00779508 -0.00096772 -0.00002168 -0.01584509  0.00777615 -0.00135933 -0.00054797
                          -0.11807624 -0.17062244 -0.00015751  0.00232449 -0.06326992 -0.06547159 -0.00090771 -0.00066745

   4    1  |1 1>-          0.05420361 -0.12430693 -0.00130026 -0.00003279 -0.11120708  0.11033153  0.00042566  0.00026921
                          -0.08514505  0.01127580  0.00003989  0.00226885  0.02066230  0.01808930  0.00169640 -0.00278815

   5    1  |1 1>-          0.00001999 -0.00020743  0.02577101 -0.00002154  0.00250100 -0.00223900  0.06676080  0.02905618
                          -0.00016359 -0.00004711  0.00001591  0.15959527  0.00107196  0.00128491  0.05720137  0.00634810

   6    1  |1 1>-          0.00011616 -0.00192489  0.27036532 -0.00002608 -0.00153907  0.00140630  0.01290180  0.00310069
                          -0.00153351 -0.00050262  0.00013054 -0.01500720 -0.00038513 -0.00044118 -0.02686630  0.08771268

   7    1  |1 1>-         -0.22263400 -0.00860571  0.00146815  0.00014145  0.09805539 -0.04520457  0.00080244  0.00016431
                          -0.14898139 -0.21669569 -0.00019939 -0.00927637  0.41575481  0.42994946  0.00061780 -0.00007007

   8    1  |1 1>-          0.00100936 -0.00179652  0.33986614  0.00008566  0.00740913 -0.00726411 -0.05567079 -0.00774858
                          -0.00078345  0.00040207  0.00016412 -0.05758979 -0.00247298 -0.00235091  0.20031600 -0.57101875

   9    1  |1 1>-          0.00393623 -0.00014608  0.05521132 -0.00003069  0.00232526 -0.00142677 -0.44203443 -0.19146714
                           0.00239705  0.00373676  0.00003809  0.34669790  0.00658326  0.00657705 -0.36129060 -0.08187681

 State Sym Spin     / Nr.     25          26          27          28          29          30          31          32

   1    1  |0 0>          -0.01274233 -0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000003 -0.00000012 -0.00000002
                           0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

   2    1  |0 0>          -0.00000005 -0.00001056  0.00020799 -0.00000014 -0.00022432  0.03929472 -0.04971184  0.34929132
                           0.00000002 -0.00008494 -0.00002283  0.00000067  0.00325286 -0.01567722 -0.03593943  0.25217783

   3    1  |0 0>           0.00000221  0.00019898 -0.00001581 -0.00000014 -0.01256918 -0.01500275  0.05806658 -0.27684235
                          -0.00000000 -0.00004338 -0.00006607  0.00000027  0.00178939  0.00551153 -0.02806914  0.25550638

   4    1  |0 0>          -0.00001737  0.00000200 -0.00000134  0.00000226  0.53378432  0.08977311 -0.09145155 -0.01807531
                          -0.00000000  0.00000001 -0.00000090 -0.00000137 -0.11264072  0.14598222  0.02396989  0.00310788

   5    1  |0 0>           0.00006958  0.00000176 -0.00000405 -0.00000888  0.09797704 -0.11204422  0.55056269  0.08968130
                           0.00000001  0.00000118 -0.00000040 -0.00000002 -0.03242013  0.04219329  0.00773451 -0.00659185

   6    1  |0 0>           0.00000214 -0.00000087 -0.00000069 -0.00000033  0.03563087  0.49046627  0.12374427 -0.01645527
                          -0.00000001  0.00000037  0.00000036 -0.00001152  0.16389553 -0.22419988 -0.03477913 -0.01888126

   7    1  |0 0>          -0.00000003  0.45731733 -0.02085488 -0.00045373 -0.00001916 -0.00001411  0.00002385 -0.00022639
                          -0.00000001 -0.10693884 -0.17211164  0.00007826  0.00000116  0.00000539 -0.00002574  0.00022665

   8    1  |0 0>          -0.00000002 -0.03567505  0.46740596  0.00004239 -0.00000922  0.00004225 -0.00003528  0.00029273
                          -0.00000001 -0.16962681 -0.04603499 -0.00051280  0.00000830 -0.00002075 -0.00003135  0.00019947

   9    1  |0 0>           0.00000000 -0.00002517  0.00063536 -0.00028383  0.00000348  0.00001261  0.00000358 -0.00000572
                          -0.00000240  0.00025961 -0.00007870  0.50068676  0.00000449 -0.00000247 -0.00001000 -0.00001119

  10    1  |0 0>           0.61289946  0.00000004  0.00000000  0.00000651  0.00000376  0.00001282 -0.00006180 -0.00000900
                           0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000009  0.00000009  0.00000003  0.00000000

   1    1  |1 1>+         -0.00000000  0.06583774 -0.00675791 -0.00006553 -0.00001698 -0.00001723  0.00003369 -0.00025974
                          -0.00000000 -0.01396190 -0.02431262  0.00001556  0.00000049  0.00000739 -0.00002552  0.00023042

   2    1  |1 1>+         -0.00000091 -0.43075935  0.04415349  0.00042756  0.00348357  0.00826079 -0.02728063  0.12776452
                           0.00000001  0.09136105  0.15896155 -0.00014827  0.00013605 -0.00383894  0.01212891 -0.11291734

   3    1  |1 1>+         -0.00000040 -0.00737576  0.43372621  0.00001383 -0.00268878  0.01872468 -0.02666954  0.15977374
                           0.00000002 -0.16389512 -0.05255116 -0.00047291  0.00216109 -0.00807181 -0.01680998  0.11713384

   4    1  |1 1>+         -0.00000148  0.24101066 -0.02823268 -0.00023928  0.00666037  0.01448413 -0.04776048  0.22751313
                           0.00000000 -0.04976898 -0.08849713  0.00004628  0.00011852 -0.00666710  0.02186112 -0.20298858

   5    1  |1 1>+          0.00000487 -0.00010219  0.00059657 -0.00026391  0.00499831 -0.23322998 -0.00472063  0.01748835
                          -0.00000166  0.00025811 -0.00004383  0.46450349 -0.08058945  0.10980368  0.01721255  0.00777237

   6    1  |1 1>+          0.00005058 -0.00042519 -0.00001620  0.00001831  0.22465520 -0.04119877  0.47009428  0.08045680
                           0.00000016  0.00006907  0.00016493 -0.04428012 -0.04578461  0.05844665  0.01003126 -0.00335356

   7    1  |1 1>+          0.00355131 -0.00190751  0.08908947  0.00000418  0.00572461 -0.02802470  0.03117868 -0.20142384
                           0.00000009 -0.03358498 -0.01064465 -0.00170587 -0.00491645  0.01314157  0.02213020 -0.15132350

   8    1  |1 1>+          0.45026793  0.00000879 -0.00042576 -0.00000597  0.32842957  0.12082016 -0.15208412 -0.02719655
                          -0.00000083  0.00017581  0.00005062  0.01537617 -0.05249244  0.06691088  0.01097362  0.00178038

   9    1  |1 1>+          0.07311817  0.00003895 -0.00170508  0.00005406  0.03222898 -0.27393049 -0.08875720  0.01156100
                           0.00000506  0.00054824  0.00020416 -0.09461014 -0.10618841  0.14431993  0.02221606  0.01324088

   1    1  |1 0>           0.00000344 -0.00003704  0.00001141 -0.07194775 -0.00000244 -0.00000069  0.00001141  0.00000963
                          -0.00000000 -0.00000345  0.00009168 -0.00004078  0.00000198  0.00000553  0.00000183 -0.00000448

   2    1  |1 0>           0.00000003  0.00024655  0.00006716 -0.00717414  0.15172450 -0.20749246 -0.03235888 -0.01595946
                           0.00000005 -0.00005934  0.00070298 -0.00000396 -0.03273206 -0.45649893 -0.09855253  0.01923902

   3    1  |1 0>          -0.00000003  0.00000261  0.00000003  0.00435677  0.10789269 -0.13967433 -0.02297751 -0.00208463
                          -0.00000007  0.00000105 -0.00000531  0.00000252  0.50062283  0.05695876  0.04013583  0.00931801

   4    1  |1 0>          -0.00000205  0.00044662 -0.00003525  0.53873841  0.00114904 -0.00164345 -0.00025194 -0.00007449
                           0.00000001  0.00000559 -0.00023193  0.00030544 -0.00448223 -0.00655820 -0.00160931  0.00001563

   5    1  |1 0>          -0.00000001  0.07470981  0.15208685 -0.00007726 -0.00021204  0.00451075 -0.01080035  0.10402428
                          -0.00000093  0.42633627 -0.08482168 -0.00042373  0.00365248  0.00996635 -0.02963097  0.14567533

   6    1  |1 0>          -0.00000005 -0.17130071 -0.06656807  0.00008046 -0.00191410  0.00731145  0.01808311 -0.12954274
                          -0.00000032 -0.03132613 -0.42767878  0.00002491 -0.00317011  0.01705140 -0.02379373  0.14514258

   7    1  |1 0>           0.00000001  0.00005077  0.00046168 -0.00000109 -0.00058096  0.00086334  0.00001992  0.00146916
                           0.45598306  0.00149207 -0.00084769 -0.00000462 -0.02229579 -0.07806004  0.38001887  0.06059999

   8    1  |1 0>           0.00000002 -0.03625444 -0.01574833 -0.00009334  0.00269683 -0.00927128 -0.02381784  0.17237978
                          -0.00227968 -0.01223436 -0.08676654  0.00001079  0.00434368 -0.02122462  0.02551750 -0.17155750

   9    1  |1 0>          -0.00000001  0.01302752  0.03033760 -0.00003567  0.00050686 -0.00642112  0.01212435 -0.12069563
                          -0.00811984  0.08721833 -0.02324052 -0.00008642 -0.00395711 -0.01284010  0.03267278 -0.19735823

   1    1  |1 1>-         -0.00000000 -0.02516600 -0.00798751 -0.00007245  0.00000807 -0.00002044 -0.00003511  0.00023139
                           0.00000001  0.00142559 -0.06683885 -0.00000241  0.00000971 -0.00004274  0.00004040 -0.00030558

   2    1  |1 1>-          0.00000002 -0.16221861 -0.05143182  0.00027082  0.00232506 -0.00835995 -0.01740115  0.12148840
                           0.00000042  0.00925203 -0.43057447 -0.00001522  0.00275300 -0.01941004  0.02685610 -0.16153442

   3    1  |1 1>-          0.00000001 -0.09145060 -0.15800726  0.00009719 -0.00007483  0.00391893 -0.01220007  0.11393950
                          -0.00000085 -0.42745892  0.04174903  0.00042419  0.00389041  0.00858858 -0.02753751  0.13311990

   4    1  |1 1>-          0.00000005 -0.09574637 -0.02932467  0.00020238 -0.00364397  0.01366624  0.02932698 -0.20541104
                          -0.00000068  0.00893090 -0.25644245 -0.00001245 -0.00478300  0.03172289 -0.04505635  0.27077526

   5    1  |1 1>-          0.00000017 -0.00007612 -0.00000982 -0.04427746  0.04720207 -0.06086401 -0.00981169 -0.00350320
                          -0.00005075  0.00000087 -0.00008494 -0.00001787  0.27690153  0.14135668 -0.42084233 -0.07260627

   6    1  |1 1>-          0.00000168 -0.00059475 -0.00003815 -0.46449626 -0.08072752  0.11004601  0.01717198  0.00841728
                           0.00000479  0.00000017 -0.00035193 -0.00026407 -0.00997699  0.21584480  0.08964422 -0.00285245

   7    1  |1 1>-         -0.00000004  0.01861664  0.03238052  0.00072663  0.00033688  0.00440593 -0.01594908  0.14752002
                          -0.00764737  0.08779444 -0.00900694 -0.00008656  0.01033749  0.01284466 -0.03053391  0.16757577

   8    1  |1 1>-         -0.00000507 -0.00004356 -0.00017664  0.09463770 -0.10616669  0.14433450  0.02273980  0.00939485
                           0.07316888 -0.00043380 -0.00007476  0.00005451 -0.02877816  0.28680449  0.02753416 -0.01924037

   9    1  |1 1>-         -0.00000081 -0.00032322 -0.00057837  0.01536923  0.05191260 -0.06604219 -0.01086895 -0.00092427
                          -0.45020878 -0.00156164  0.00014080  0.00000753  0.30636073  0.04377568  0.22300178  0.03293645

 State Sym Spin     / Nr.     33          34          35          36          37

   1    1  |0 0>           0.00000000  0.00000000  0.00000000  0.00000000  0.00942017
                           0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

   2    1  |0 0>          -0.32108312  0.00028409  0.00047826 -0.00000007 -0.00000002
                           0.20571073  0.00041392 -0.00038494  0.00000479  0.00000001

   3    1  |0 0>           0.15310963  0.00048841  0.00034284  0.00000119  0.00000060
                           0.40820138 -0.00033993  0.00041470  0.00000208 -0.00000000

   4    1  |0 0>           0.00692265 -0.00000781 -0.00001040 -0.00000554 -0.00000456
                           0.01611426 -0.00000680  0.00000633 -0.00000187 -0.00000000

   5    1  |0 0>          -0.01539677 -0.00001854 -0.00001294  0.00002143  0.00001814
                          -0.00859097  0.00001140 -0.00001219  0.00000030  0.00000000

   6    1  |0 0>           0.02092431 -0.00000149  0.00000507  0.00000038  0.00000055
                          -0.00575220  0.00001426 -0.00001422 -0.00000871 -0.00000001

   7    1  |0 0>           0.00011402 -0.28216797 -0.19366293 -0.00034599 -0.00000001
                           0.00033966  0.18437612 -0.21622125  0.00359560 -0.00000000

   8    1  |0 0>          -0.00025407 -0.15366515 -0.25564045  0.00004266 -0.00000001
                           0.00015100 -0.24620720  0.21966806  0.00666237 -0.00000000

   9    1  |0 0>           0.00000669  0.00438949  0.00560578 -0.00589207  0.00000000
                          -0.00000944  0.00205126 -0.00159465  0.44463281  0.00000031

  10    1  |0 0>           0.00000118 -0.00000005  0.00000000 -0.00000631  0.79016082
                          -0.00000005  0.00000007  0.00000012 -0.00000009  0.00000000

   1    1  |1 1>+          0.00013753 -0.23332403 -0.15292892 -0.00029711 -0.00000000
                           0.00035411  0.16908398 -0.19496512  0.00274775 -0.00000001

   2    1  |1 1>+         -0.07186802 -0.05681990 -0.03723718 -0.00007259 -0.00000030
                          -0.18218841  0.04116743 -0.04745955  0.00067532 -0.00000001

   3    1  |1 1>+         -0.14764911  0.03520027  0.05509835 -0.00000447 -0.00000014
                           0.09610400  0.04844463 -0.04256488 -0.00141084  0.00000001

   4    1  |1 1>+         -0.12745574  0.03101054  0.02004413  0.00003925 -0.00000055
                          -0.32674703 -0.02307166  0.02646753 -0.00036082  0.00000000

   5    1  |1 1>+         -0.01203582 -0.00091187 -0.00115901  0.00120935  0.00000139
                           0.00129328 -0.00041659  0.00032143 -0.09112054 -0.00000270

   6    1  |1 1>+         -0.01639151  0.00001308  0.00006475 -0.00009762  0.00001462
                          -0.00237433  0.00009825 -0.00009622  0.00868653  0.00000026

   7    1  |1 1>+          0.18678862  0.21339763  0.33542491 -0.00015355 -0.00275478
                          -0.12584153  0.29678242 -0.26109337  0.00075905  0.00000005

   8    1  |1 1>+          0.00707157 -0.00195779 -0.00281504  0.00118451 -0.34925035
                           0.01084136 -0.00190182  0.00163062 -0.08994821 -0.00000039

   9    1  |1 1>+         -0.01543274  0.00166639  0.00100496 -0.00733810 -0.05671408
                           0.00587270 -0.00273673  0.00266993  0.55386451  0.00000241

   1    1  |1 0>           0.00000760 -0.00175270  0.00136243 -0.37993539 -0.00000328
                           0.00000515  0.00375049  0.00478959 -0.00503473  0.00000000

   2    1  |1 0>          -0.00293982 -0.00006351  0.00005676  0.00139969  0.00000003
                          -0.02058419  0.00003406  0.00005863  0.00001891  0.00000002

   3    1  |1 0>          -0.01177295 -0.00000706  0.00000702 -0.00085285 -0.00000002
                          -0.00157688 -0.00000321  0.00000108 -0.00001152  0.00000002

   4    1  |1 0>           0.00015291 -0.00053851  0.00042387 -0.10568945 -0.00000310
                          -0.00010930  0.00107743  0.00138715 -0.00140058  0.00000000

   5    1  |1 0>           0.17666550  0.04494546 -0.05054191  0.00051256 -0.00000000
                          -0.08738905  0.05241074  0.03131480  0.00007073 -0.00000030

   6    1  |1 0>          -0.11627620  0.04418802 -0.03780295 -0.00157565  0.00000001
                          -0.13929615 -0.03983831 -0.05772614 -0.00000370 -0.00000011

   7    1  |1 0>           0.00336065  0.00649136 -0.00685436  0.00000030 -0.00000001
                          -0.01090144  0.00410911  0.00117132  0.00002366 -0.35371547

   8    1  |1 0>           0.16172065  0.25338160 -0.21198357 -0.00918306  0.00000002
                           0.16881440 -0.26625967 -0.36788660 -0.00004164  0.00176823

   9    1  |1 0>          -0.21370009  0.29427024 -0.32629566  0.00261764 -0.00000000
                           0.12233009  0.30605700  0.16920228  0.00043800  0.00629824

   1    1  |1 1>-          0.00018510 -0.20117828  0.17700292  0.00585599 -0.00000001
                           0.00027039  0.14461356  0.22734420 -0.00001973  0.00000001

   2    1  |1 1>-          0.10101080  0.04825717 -0.04245022 -0.00154214  0.00000000
                           0.14996422 -0.03467978 -0.05451302  0.00000284  0.00000014

   3    1  |1 1>-          0.18512832 -0.04063217  0.04690545 -0.00066760  0.00000000
                          -0.07563844 -0.05656143 -0.03721852 -0.00007187 -0.00000029

   4    1  |1 1>-         -0.17149956  0.02861492 -0.02524126 -0.00092629 -0.00000002
                          -0.25174777 -0.01987356 -0.03162943  0.00000176 -0.00000023

   5    1  |1 1>-         -0.01317665  0.00006903 -0.00005798  0.00868762  0.00000026
                           0.01656449 -0.00009319 -0.00012942  0.00009733 -0.00001469

   6    1  |1 1>-          0.00278425  0.00051889 -0.00041278  0.09112586  0.00000270
                           0.00885942 -0.00097386 -0.00126301  0.00120912  0.00000140

   7    1  |1 1>-          0.23779308  0.24937394 -0.28752934 -0.00031076 -0.00000003
                          -0.09391188  0.34418858  0.22560212  0.00038002  0.00593211

   8    1  |1 1>-          0.00144453 -0.00380681  0.00342825 -0.55379392 -0.00000240
                           0.01482145  0.00374889  0.00585869 -0.00734207 -0.05675346

   9    1  |1 1>-         -0.00816908 -0.00486491  0.00545239 -0.08999768 -0.00000039
                          -0.00406112 -0.00525120 -0.00288879 -0.00119164  0.34920436


  No SO block in symmetry 2


 Summary of SO results
 =====================

 Eigenvalues of the spin-orbit matrix
 ....................................

     Nr  Sym         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
                   (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1   1   -463.30849654     -0.00011062      -24.28      0.00000000        0.00      0.0000
     2   1   -462.89496829      0.41341763    90734.68      0.41352825    90758.96     11.2527
     3   1   -462.89496819      0.41341773    90734.70      0.41352835    90758.98     11.2527
     4   1   -462.89496808      0.41341784    90734.73      0.41352846    90759.01     11.2527
     5   1   -462.88880270      0.41958322    92087.87      0.41969384    92112.15     11.4205
     6   1   -462.88880270      0.41958322    92087.87      0.41969384    92112.15     11.4205
     7   1   -462.88880054      0.41958539    92088.35      0.41969601    92112.63     11.4205
     8   1   -462.88880052      0.41958541    92088.35      0.41969602    92112.63     11.4205
     9   1   -462.88879947      0.41958645    92088.58      0.41969707    92112.86     11.4205
    10   1   -462.88879937      0.41958656    92088.61      0.41969718    92112.88     11.4205
    11   1   -462.88879908      0.41958684    92088.67      0.41969746    92112.95     11.4205
    12   1   -462.88862248      0.41976345    92127.43      0.41987407    92151.71     11.4254
    13   1   -462.88862222      0.41976370    92127.48      0.41987432    92151.76     11.4254
    14   1   -462.88862160      0.41976432    92127.62      0.41987494    92151.90     11.4254
    15   1   -462.88862157      0.41976436    92127.63      0.41987497    92151.91     11.4254
    16   1   -462.88862140      0.41976453    92127.66      0.41987514    92151.94     11.4254
    17   1   -462.88499097      0.42339495    92924.45      0.42350557    92948.73     11.5242
    18   1   -462.88499085      0.42339507    92924.48      0.42350569    92948.76     11.5242
    19   1   -462.88498988      0.42339604    92924.69      0.42350666    92948.97     11.5242
    20   1   -462.88399017      0.42439575    93144.10      0.42450637    93168.38     11.5514
    21   1   -462.88398967      0.42439625    93144.21      0.42450687    93168.49     11.5514
    22   1   -462.88398963      0.42439629    93144.22      0.42450691    93168.50     11.5514
    23   1   -462.88398847      0.42439746    93144.48      0.42450808    93168.75     11.5515
    24   1   -462.88398833      0.42439759    93144.51      0.42450821    93168.78     11.5515
    25   1   -462.87550956      0.43287637    95005.38      0.43298699    95029.66     11.7822
    26   1   -462.86444025      0.44394567    97434.81      0.44405629    97459.09     12.0834
    27   1   -462.86444017      0.44394575    97434.83      0.44405637    97459.11     12.0834
    28   1   -462.86443884      0.44394709    97435.12      0.44405770    97459.40     12.0834
    29   1   -462.86265649      0.44572943    97826.30      0.44584005    97850.58     12.1319
    30   1   -462.86265627      0.44572966    97826.35      0.44584027    97850.63     12.1319
    31   1   -462.86265621      0.44572971    97826.36      0.44584033    97850.64     12.1319
    32   1   -462.86265619      0.44572974    97826.37      0.44584035    97850.65     12.1319
    33   1   -462.86265612      0.44572980    97826.38      0.44584042    97850.66     12.1319
    34   1   -462.86230072      0.44608520    97904.39      0.44619582    97928.66     12.1416
    35   1   -462.86230069      0.44608524    97904.39      0.44619586    97928.67     12.1416
    36   1   -462.86229961      0.44608632    97904.63      0.44619693    97928.91     12.1416
    37   1   -462.85420058      0.45418535    99682.16      0.45429596    99706.44     12.3620

 E0 =   -463.30838592 is the energy of the lowest zeroth-order state
 E1 =   -463.30849654 is the energy of the lowest SO-state


 Spin-orbit eigenvectors   (columnwise and corresponding to the eigenvalues in ascending order)
 .......................

        Basis states           Eigenvectors (columnwise)

   Total
 Nr Sym  State Sym Spin / Nr.        1           2           3           4           5           6           7           8

  1  1     1    1  |0 0>        0.99987444 -0.00000000  0.00000000  0.00000009  0.00000000 -0.00000000  0.00000000  0.00000000
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>        0.00000000 -0.00000356 -0.00000320  0.00000004  0.00001403  0.00002530 -0.00004885 -0.00000220
                               -0.00000000 -0.00000514  0.00000643 -0.00000013  0.00001715 -0.00001446 -0.00000732 -0.00000786

  3  1     3    1  |0 0>       -0.00000000  0.00000513  0.00000641 -0.00000012 -0.00002504 -0.00008987  0.00003675 -0.00001716
                                0.00000000 -0.00000346  0.00000308 -0.00000007 -0.00002969  0.00005145 -0.00000232  0.00001847

  4  1     4    1  |0 0>        0.00000000  0.00000006  0.00000004  0.00000020 -0.00000147 -0.00000152 -0.00408022 -0.00029441
                                0.00000000  0.00000008 -0.00000008  0.00000003 -0.00000104  0.00000129 -0.00017271 -0.00061268

  5  1     5    1  |0 0>       -0.00000001 -0.00000004 -0.00000010 -0.00000075  0.00000234  0.00000352 -0.00118176  0.00000630
                               -0.00000000  0.00000010 -0.00000012  0.00000000  0.00000307 -0.00000173 -0.00003492 -0.00022251

  6  1     6    1  |0 0>       -0.00000000 -0.00000009 -0.00000012 -0.00000004 -0.00000054  0.00000110 -0.00003183 -0.00369134
                                0.00000000 -0.00000001  0.00000006 -0.00000002  0.00000115  0.00000021 -0.00061894  0.00194905

  7  1     7    1  |0 0>       -0.00000000 -0.10846914 -0.11856538  0.00134353 -0.00000091 -0.00000027  0.00000026  0.00000000
                                0.00000000  0.07994990 -0.06348462  0.00256523 -0.00000108  0.00000019 -0.00000000 -0.00000001

  8  1     8    1  |0 0>       -0.00000000  0.07981274  0.06363578 -0.00086784 -0.00000198  0.00000140  0.00000006  0.00000026
                                0.00000000  0.10825778 -0.11871941  0.00442306 -0.00000241 -0.00000081 -0.00000000 -0.00000011

  9  1     9    1  |0 0>       -0.00000000 -0.00032264  0.00021346  0.00004443  0.00000004 -0.00000011  0.00000159 -0.00000239
                               -0.00000000 -0.00246347  0.00474151  0.19034461  0.00000011  0.00000011 -0.00000036  0.00000152

 10  1    10    1  |0 0>        0.00036637  0.00000002 -0.00000004 -0.00000164 -0.00000000  0.00000001 -0.00000007 -0.00000001
                               -0.00000000 -0.00000000  0.00000000  0.00000000  0.00000000  0.00000000 -0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.54566488  0.59003734 -0.00672586  0.00000017 -0.00000016 -0.00000010 -0.00000005
                               -0.00000000 -0.35681423  0.27443029 -0.01118995  0.00000019  0.00000006 -0.00000002 -0.00000006

 12  1     2    1  |1 1>+       0.00000000  0.00646670  0.00699211 -0.00007977  0.28275841  0.47915597  0.00034692 -0.00002910
                               -0.00000000 -0.00422938  0.00325273 -0.00013374  0.34189005 -0.27315748 -0.00000898 -0.00014152

 13  1     3    1  |1 1>+      -0.00000000  0.00415977  0.00320567 -0.00004464  0.35091211 -0.38647099 -0.00013551 -0.00050505
                               -0.00000000  0.00642542 -0.00696224  0.00026012  0.42641800  0.21908337  0.00025143  0.00020321

 14  1     4    1  |1 1>+       0.00000000 -0.00365769 -0.00394679  0.00004505  0.00109250  0.00599799  0.00009443  0.00015697
                                0.00000000  0.00231789 -0.00176737  0.00007181  0.00135303 -0.00342991 -0.00006172  0.00043202

 15  1     5    1  |1 1>+       0.00000000 -0.00001708  0.00001341  0.00000234  0.00024765 -0.00018646 -0.04967716  0.51321428
                               -0.00000000 -0.00014033  0.00026912  0.01077884  0.00032535  0.00014215  0.08987127 -0.28062466

 16  1     6    1  |1 1>+      -0.00000000  0.00000775  0.00000536 -0.00000200  0.00012946  0.00043259 -0.56563210 -0.08551531
                                0.00000000  0.00000922 -0.00002239 -0.00102757  0.00019997 -0.00023028 -0.03231388 -0.05533432

 17  1     7    1  |1 1>+       0.00007123 -0.09255278 -0.07151980  0.00099560 -0.00000339 -0.00000376 -0.00000617  0.00001153
                                0.00000000 -0.14161000  0.15363157 -0.00171987 -0.00000413  0.00000209  0.00000267 -0.00000736

 18  1     8    1  |1 1>+       0.00902773  0.00052757  0.00031420 -0.00001961 -0.00000041 -0.00000033 -0.00077293 -0.00016679
                                0.00000000  0.00120414 -0.00172338 -0.03835807 -0.00000033  0.00000028 -0.00004932 -0.00006762

 19  1     9    1  |1 1>+       0.00146600  0.00124676  0.00153784  0.00003649  0.00000011 -0.00000005 -0.00012260  0.00068138
                               -0.00000000 -0.00053753  0.00315118  0.23629596 -0.00000021 -0.00000012  0.00010175 -0.00038550

 20  1     1    1  |1 0>       -0.00000001 -0.01191922  0.02294038  0.92088651 -0.00000001  0.00000005 -0.00000005  0.00000002
                                0.00000000  0.00156107 -0.00103274 -0.00021493  0.00000003  0.00000000 -0.00000020  0.00000001

 21  1     2    1  |1 0>        0.00000000 -0.00000774  0.00000664 -0.00016680  0.00029128  0.00018241  0.09029715 -0.26825845
                                0.00000000  0.00000722  0.00000614 -0.00000006 -0.00030452  0.00038371 -0.00226745 -0.50733461

 22  1     3    1  |1 0>       -0.00000000 -0.00000143  0.00000263  0.00010116 -0.00031117  0.00022007 -0.02390918 -0.08252230
                               -0.00000000  0.00000006 -0.00000019 -0.00000000  0.00029490  0.00035186  0.57360237  0.03697819

 23  1     4    1  |1 0>       -0.00000000 -0.00016844  0.00031869  0.01250419  0.00003651 -0.00001595 -0.00401310  0.01203648
                                0.00000000  0.00002573 -0.00001046 -0.00000296 -0.00017243  0.00018901 -0.00104786  0.02233546

 24  1     5    1  |1 0>        0.00000000 -0.00357246  0.00255638 -0.00010485 -0.00019170  0.00211323 -0.00021939  0.00036189
                               -0.00000000 -0.00679122 -0.00722256  0.00008310  0.00020500  0.00375170  0.00054700 -0.00022474

 25  1     6    1  |1 0>        0.00000000  0.00678020 -0.00722955  0.00028345 -0.00551506 -0.00112669 -0.00141448 -0.00007494
                               -0.00000000 -0.00356269 -0.00256606  0.00003734  0.00456114 -0.00195052 -0.00025053 -0.00023994

 26  1     7    1  |1 0>       -0.00000000  0.00045276 -0.00000041  0.00000412 -0.00000067  0.00000023  0.00000238  0.00000106
                                0.00914525  0.00309937  0.00312894 -0.00003456  0.00000049  0.00000057 -0.00003493 -0.00000775

 27  1     8    1  |1 0>        0.00000000 -0.15459169  0.16296435 -0.00612573  0.00000101 -0.00000123 -0.00000114  0.00000013
                               -0.00004571  0.06859796  0.04599614 -0.00070135 -0.00000078 -0.00000224 -0.00000014 -0.00000000

 28  1     9    1  |1 0>       -0.00000000  0.06882717 -0.04577645  0.00195102  0.00000622 -0.00001021 -0.00000016 -0.00000054
                               -0.00016280  0.15478534  0.16278837 -0.00188435 -0.00000540 -0.00001778  0.00000146  0.00000026

 29  1     1    1  |1 1>-      -0.00000000 -0.54468114  0.59074044 -0.02206209  0.00000037 -0.00000001  0.00000001 -0.00000001
                                0.00000000  0.35609460  0.27520269 -0.00382730 -0.00000031 -0.00000003  0.00000005  0.00000004

 30  1     2    1  |1 1>-      -0.00000000  0.00635612 -0.00689296  0.00027466 -0.42367226 -0.21862436  0.00037836  0.00001598
                               -0.00000000 -0.00415675 -0.00321249  0.00004468  0.34863960 -0.38568020  0.00002200  0.00001203

 31  1     3    1  |1 1>-      -0.00000000  0.00422819 -0.00326161  0.00013292  0.34209358 -0.27209315 -0.00007354 -0.00010208
                                0.00000000  0.00639748  0.00692346 -0.00007888 -0.28290364 -0.47726761  0.00084948 -0.00004610

 32  1     4    1  |1 1>-      -0.00000000  0.00375357 -0.00408365  0.00016335 -0.00360800  0.00007584  0.00126890 -0.00006224
                                0.00000000 -0.00252809 -0.00197080  0.00002727  0.00295678  0.00007796  0.00017492  0.00004364

 33  1     5    1  |1 1>-       0.00000000  0.00001532 -0.00002778 -0.00102747  0.00022790 -0.00025613  0.03173889  0.05698224
                                0.00000000 -0.00000292  0.00000032  0.00000185 -0.00024044 -0.00039697 -0.56548492 -0.08235287

 34  1     6    1  |1 1>-       0.00000000  0.00015349 -0.00028371 -0.01077828 -0.00040143 -0.00015170  0.08365415 -0.26345462
                               -0.00000000 -0.00002750  0.00000491  0.00000246  0.00018858 -0.00008450  0.05385861 -0.47943378

 35  1     7    1  |1 1>-      -0.00000000  0.09275717 -0.07137001  0.00104415 -0.00000511  0.00000955  0.00000138 -0.00000011
                               -0.00015338  0.14181058  0.15335094 -0.00174751  0.00000447  0.00001667 -0.00001438 -0.00000665

 36  1     8    1  |1 1>-       0.00000000  0.00259396 -0.00552808 -0.23623952 -0.00000002 -0.00000013  0.00010111 -0.00038435
                                0.00146701 -0.00110901 -0.00050135  0.00006295 -0.00000023  0.00000001  0.00012692 -0.00067798

 37  1     9    1  |1 1>-       0.00000000 -0.00115398  0.00031385 -0.03841190 -0.00000031 -0.00000002  0.00005161  0.00006896
                               -0.00902654 -0.00258903 -0.00268610  0.00004573  0.00000008  0.00000023 -0.00080750 -0.00017395


   Total
 Nr Sym  State Sym Spin / Nr.        9          10          11          12          13          14          15          16

  1  1     1    1  |0 0>       -0.00000000 -0.00000000 -0.00000000  0.00000001  0.00000001  0.00000001 -0.00000001 -0.00000038
                                0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000 -0.00000000

  2  1     2    1  |0 0>       -0.00005357 -0.00006253  0.00000081  0.00539627  0.00307904  0.57396413  0.01569474  0.02196581
                                0.00002072  0.00197670 -0.00000043 -0.00050111  0.00012152 -0.11652054 -0.33222027  0.00298632

  3  1     3    1  |0 0>        0.00212899  0.00008061  0.00000086 -0.00472037  0.00331415 -0.26741183  0.45324925 -0.00397676
                               -0.00012662  0.00005431 -0.00000159 -0.00046307  0.00005632 -0.19795454 -0.37145503  0.00121095

  4  1     4    1  |0 0>        0.00002262 -0.00000700 -0.00001261  0.65187414  0.01791516 -0.00191581  0.00177410 -0.15275218
                               -0.00000220 -0.00001337  0.00004836  0.03649177 -0.06490619 -0.00192936 -0.00197495 -0.00024953

  5  1     5    1  |0 0>        0.00000908 -0.00000559  0.00005359  0.15168026 -0.02743656 -0.02029823  0.00495424  0.65528396
                               -0.00000088 -0.00003274  0.00001463  0.01153180 -0.01937075  0.00426941  0.00917791 -0.00002047

  6  1     6    1  |0 0>       -0.00001194 -0.00000013 -0.00000012  0.00297929  0.66202199 -0.00248933 -0.00250142  0.03109922
                               -0.00000015  0.00000122 -0.00016776 -0.06838362  0.10085927  0.00224733  0.00318014  0.00053092

  7  1     7    1  |0 0>        0.00003885  0.00000017  0.00000002  0.00000068  0.00000016 -0.00002662  0.00004875  0.00000067
                               -0.00000237  0.00000397 -0.00000003  0.00000004 -0.00000013 -0.00002177 -0.00004113  0.00000013

  8  1     8    1  |0 0>       -0.00000098 -0.00000121  0.00000001 -0.00000002 -0.00000020  0.00006606 -0.00000009  0.00000091
                               -0.00000081  0.00004018 -0.00000019 -0.00000001 -0.00000002 -0.00001239 -0.00003591  0.00000035

  9  1     9    1  |0 0>        0.00000002  0.00000001  0.00000015 -0.00000061 -0.00000346  0.00000043  0.00000022 -0.00000004
                                0.00000002  0.00000006  0.00001714  0.00000031 -0.00000044 -0.00000023 -0.00000037  0.00000041

 10  1    10    1  |0 0>        0.00000003  0.00000003  0.00000003 -0.00000011 -0.00000010 -0.00000027  0.00000017  0.00000747
                               -0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000

 11  1     1    1  |1 1>+      -0.00000123  0.00000018 -0.00000001 -0.00000035 -0.00000014 -0.00000232  0.00000248 -0.00000068
                                0.00000006 -0.00000009  0.00000001  0.00000002  0.00000004 -0.00000303 -0.00000289 -0.00000001

 12  1     2    1  |1 1>+       0.18834511  0.00282393  0.00056208  0.00062256 -0.00016459 -0.11861176  0.19247370 -0.00103818
                               -0.01130806  0.00413271  0.00004332  0.00012489 -0.00048984 -0.08309513 -0.15495501  0.00048705

 13  1     3    1  |1 1>+      -0.00086188  0.00536153  0.00002094  0.00083836 -0.00159341 -0.24908287 -0.00801027 -0.00530115
                                0.00273254 -0.17686710 -0.00000382  0.00042944 -0.00041525  0.05124085  0.14558564 -0.00130455

 14  1     4    1  |1 1>+      -0.62716028 -0.00959348 -0.00140605  0.00060337 -0.00023462 -0.21102442  0.34575434 -0.00273628
                                0.03745728 -0.00230663  0.00014456  0.00018591 -0.00081338 -0.14974834 -0.27953862  0.00088373

 15  1     5    1  |1 1>+      -0.00009599 -0.00013746 -0.00372796 -0.02647795  0.29126718 -0.00101492 -0.00029384 -0.04419226
                                0.00052865  0.00024709 -0.42031220 -0.03174010  0.04719840  0.00026298  0.00011265  0.00027583

 16  1     6    1  |1 1>+       0.00006169 -0.00113698  0.00023205 -0.28643270 -0.02534782  0.00738254 -0.00264189 -0.51118081
                               -0.00010743  0.00005597  0.03739779 -0.01401780  0.02533209 -0.00228267 -0.00381317 -0.00000261

 17  1     7    1  |1 1>+       0.00000195  0.00001103 -0.00000009  0.00126587 -0.00258966 -0.10062976 -0.00440110 -0.00269831
                               -0.00001506 -0.00035667  0.00000031  0.00043015 -0.00055951  0.02133574  0.06013472 -0.00053498

 18  1     8    1  |1 1>+       0.00000104 -0.00000115 -0.00001223  0.11801832  0.02201444  0.00181047 -0.00051222 -0.06585505
                               -0.00000015  0.00000198  0.00000570  0.00467317 -0.00890266 -0.00048433 -0.00083687 -0.00003068

 19  1     9    1  |1 1>+       0.00000021 -0.00000048 -0.00000166  0.01884384 -0.11526027  0.00269152  0.00002098 -0.01248252
                                0.00000039  0.00000601  0.00002512  0.01305381 -0.01956796 -0.00064131 -0.00135980 -0.00009272

 20  1     1    1  |1 0>        0.00000002 -0.00000003 -0.00000164  0.00000004  0.00000002 -0.00000011 -0.00000022 -0.00000195
                               -0.00000001 -0.00000001  0.00000002  0.00000005  0.00000029 -0.00000025 -0.00000017 -0.00000001

 21  1     2    1  |1 0>       -0.00042334 -0.00045947  0.01475648  0.05929669 -0.08750843 -0.00089407 -0.00075800 -0.00046478
                               -0.00000472  0.00002232 -0.00011639  0.00157951  0.57383452 -0.00292008 -0.00014730  0.00879104

 22  1     3    1  |1 0>       -0.00009325  0.00008262  0.00366958  0.03294440 -0.05842776 -0.00054679 -0.00050137 -0.00019305
                               -0.00041509  0.00115586  0.00001687 -0.57948452 -0.01052970 -0.00145689  0.00031210 -0.00878376

 23  1     4    1  |1 0>       -0.00172200  0.00006902  0.77408047  0.00052171 -0.00068431  0.00004289  0.00014234 -0.00007801
                               -0.00006466  0.00002026 -0.00682229  0.00478608  0.00773302  0.00022570 -0.00000149  0.00019465

 24  1     5    1  |1 0>        0.04237205  0.06496216  0.00017237 -0.00012046  0.00046370  0.07913819  0.14292078 -0.00036982
                                0.72695819  0.01326441  0.00162869  0.00024843 -0.00013451 -0.14336924  0.19383822 -0.00236595

 25  1     6    1  |1 0>       -0.01509294  0.72778915 -0.00002308 -0.00031925  0.00022262 -0.05989345 -0.16126944  0.00134796
                               -0.06454456  0.02122643 -0.00012197  0.00081890 -0.00064425 -0.23333000 -0.02923247 -0.00502666

 26  1     7    1  |1 0>        0.00000054  0.00000301  0.00000069 -0.00005166  0.00000045 -0.00019166 -0.00033380 -0.00001967
                                0.00000771 -0.00000033  0.00002592 -0.00207548 -0.00212491 -0.00388850  0.00225483  0.13767576

 27  1     8    1  |1 0>        0.00000996  0.00038959 -0.00000006 -0.00016549  0.00013513 -0.02663507 -0.06975909  0.00055908
                               -0.00006689  0.00000769 -0.00000015  0.00033499 -0.00061959 -0.09148123 -0.01721405 -0.00268459

 28  1     9    1  |1 0>        0.00002699  0.00005935  0.00000002 -0.00006609  0.00020714  0.03077678  0.05410976 -0.00011421
                                0.00041599  0.00002845 -0.00000040  0.00016168 -0.00012016 -0.06488282  0.07843610 -0.00355354

 29  1     1    1  |1 1>-       0.00000017 -0.00000148  0.00000005 -0.00000001  0.00000008 -0.00000159 -0.00000119  0.00000006
                                0.00000008 -0.00000004  0.00000000  0.00000016 -0.00000036 -0.00000430 -0.00000122 -0.00000037

 30  1     2    1  |1 1>-       0.00292782 -0.18148136 -0.00033693  0.00048321 -0.00048543  0.05362491  0.15118041 -0.00134180
                                0.00185293 -0.00554154  0.00001911 -0.00082317  0.00208451  0.25307935  0.01099037  0.00534991

 31  1     3    1  |1 1>-       0.01116447 -0.00328474  0.00007843 -0.00010258  0.00045649  0.08428569  0.15649167 -0.00047994
                                0.18636181  0.00280253  0.00027402  0.00019012 -0.00015579 -0.12469639  0.19672955 -0.00195216

 32  1     4    1  |1 1>-       0.00950950 -0.63298718  0.00023594 -0.00070915  0.00065861 -0.09132657 -0.25663328  0.00226306
                               -0.00556775 -0.01941911 -0.00003277  0.00145231 -0.00244640 -0.42641758 -0.02028568 -0.00910629

 33  1     5    1  |1 1>-      -0.00005899 -0.00008831  0.04740281  0.01365258 -0.02536015 -0.00245631 -0.00368282 -0.00015358
                                0.00041024 -0.00113670 -0.00041748 -0.30169992 -0.04092256 -0.00892669  0.00363604  0.50097626

 34  1     6    1  |1 1>-      -0.00144391  0.00024963  0.46923051 -0.03170568  0.04720870  0.00071749  0.00082883  0.00020932
                                0.00001121  0.00016909 -0.00412093  0.02802789 -0.28975716  0.00251023 -0.00028153 -0.05229158

 35  1     7    1  |1 1>-      -0.00002289  0.00000215  0.00000013  0.00002071 -0.00012205 -0.03462218 -0.06454799  0.00020237
                               -0.00038521 -0.00002662  0.00000021  0.00190137  0.00098734  0.04937154 -0.08014694  0.00196753

 36  1     8    1  |1 1>-       0.00000025 -0.00000029  0.00004044  0.01306729 -0.01957348  0.00000863  0.00018512 -0.00009768
                                0.00000159  0.00000056 -0.00000261 -0.01852876  0.11562954 -0.00078229  0.00030647 -0.00956102

 37  1     9    1  |1 1>-       0.00000064 -0.00000023 -0.00000250 -0.00472417  0.00890325  0.00039549  0.00074931  0.00000995
                                0.00000842 -0.00000162  0.00001318  0.11595394  0.01990626 -0.00181691  0.00182405  0.07002226


   Total
 Nr Sym  State Sym Spin / Nr.       17          18          19          20          21          22          23          24

  1  1     1    1  |0 0>        0.00000000  0.00000000 -0.00000006 -0.00000235  0.00000001  0.00000001 -0.00000000  0.00000000
                               -0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00007571  0.00001179 -0.00000007  0.00025888  0.05139361  0.04373009  0.00805085 -0.00827941
                               -0.00004853  0.00012647 -0.00000545  0.00009731  0.32155071 -0.31804927 -0.00462538 -0.00227746

  3  1     3    1  |0 0>       -0.00006871 -0.00010964 -0.00000046 -0.01135155  0.31392435  0.32444576  0.00183986  0.00548295
                                0.00009826  0.00000774 -0.00000250 -0.00010422 -0.06713649  0.02744043 -0.00482912 -0.00181563

  4  1     4    1  |0 0>        0.00000364  0.00000121  0.00000331  0.10997673 -0.00267117 -0.00226460  0.28362778 -0.00611225
                                0.00000010 -0.00000405  0.00000132  0.00001190 -0.00605662  0.00609149 -0.31267780 -0.13723643

  5  1     5    1  |0 0>        0.00000442  0.00000762 -0.00001313 -0.44366326 -0.00847763 -0.00880721  0.07333489 -0.01446817
                               -0.00000840  0.00000073  0.00000005 -0.00005637  0.00025722  0.00087369 -0.07455477 -0.03317468

  6  1     6    1  |0 0>       -0.00000194  0.00000308 -0.00000049 -0.01309751 -0.00332410 -0.00357400 -0.10452832  0.43374741
                               -0.00000491  0.00000512  0.00000735  0.00006549  0.00704389 -0.00626152 -0.09531668 -0.02914219

  7  1     7    1  |0 0>       -0.33138136 -0.44807685 -0.00040709 -0.00000620 -0.00028009 -0.00031430  0.00000095  0.00000091
                                0.44969571  0.04908181  0.00278863 -0.00000021  0.00004999 -0.00001618 -0.00000157 -0.00000036

  8  1     8    1  |0 0>       -0.36699646  0.06950657  0.00019636  0.00000192 -0.00003471 -0.00003014  0.00000066 -0.00000244
                               -0.26170571  0.55425911  0.00444806 -0.00000080 -0.00028477  0.00030527  0.00000032  0.00000016

  9  1     9    1  |0 0>        0.00323523  0.00143575 -0.00034710 -0.00000015  0.00000415  0.00000456  0.00000058 -0.00000472
                               -0.00021129 -0.00389789  0.71779806 -0.00002322  0.00000594 -0.00000651  0.00000149  0.00000067

 10  1    10    1  |0 0>       -0.00000001 -0.00000001  0.00000151  0.00005852 -0.00000017 -0.00000015  0.00000006 -0.00000011
                               -0.00000000  0.00000000 -0.00000000 -0.00000000 -0.00000001  0.00000001 -0.00000001 -0.00000000

 11  1     1    1  |1 1>+       0.01784541  0.02595668  0.00002402 -0.00000007 -0.00002748 -0.00002020 -0.00000003 -0.00000001
                               -0.02666989 -0.00102903 -0.00014547  0.00000010  0.00000626 -0.00000190  0.00000013 -0.00000009

 12  1     2    1  |1 1>+      -0.11827722 -0.17200632 -0.00015914  0.00250725 -0.06196721 -0.06409794 -0.00099603 -0.00061927
                                0.17673134  0.00684197  0.00099479  0.00002103  0.01459857 -0.00672375  0.00143274  0.00058225

 13  1     3    1  |1 1>+       0.14616748 -0.01597588 -0.00006481  0.00136569  0.01084876  0.00931094  0.00095718 -0.00158049
                                0.08851119 -0.21040084 -0.00174474  0.00002004  0.06512881 -0.06448768 -0.00023469 -0.00015032

 14  1     4    1  |1 1>+       0.06507866  0.09650934  0.00008976  0.00418608 -0.11056238 -0.11431014 -0.00167828 -0.00111123
                               -0.09974391 -0.00211822 -0.00051867  0.00003762  0.02551277 -0.01147408  0.00244923  0.00099104

 15  1     5    1  |1 1>+      -0.00123961 -0.00057226  0.00013041 -0.01542781 -0.00010321 -0.00008458  0.02683184 -0.08765942
                                0.00011221  0.00146873 -0.27036327 -0.00000076 -0.00109222  0.00104126  0.01291470  0.00310307

 16  1     6    1  |1 1>+      -0.00000174 -0.00011706 -0.00001597 -0.15968606 -0.00394261 -0.00410960  0.05685015  0.00688368
                                0.00016487 -0.00013073  0.02577492 -0.00001894  0.00210701 -0.00153602 -0.06662649 -0.02903131

 17  1     7    1  |1 1>+      -0.18488908  0.02123239  0.00008596  0.00604675  0.07695422  0.06705786  0.00099272 -0.00055223
                               -0.11333388  0.26707171 -0.00357431  0.00012853  0.42543305 -0.42187545 -0.00044683 -0.00021820

 18  1     8    1  |1 1>+       0.00116973  0.00000413 -0.00003509 -0.34608257  0.00317720  0.00266506 -0.36200827 -0.08064396
                                0.00054849 -0.00163005  0.05521494 -0.00005696  0.00368817 -0.00379596  0.44223716  0.19148797

 19  1     9    1  |1 1>+       0.00175592 -0.00105512  0.00016150 -0.05498515 -0.00267115 -0.00281954 -0.20052201  0.57129955
                                0.00211227 -0.00290153 -0.33984888  0.00008597  0.00192713 -0.00129683 -0.05558291 -0.00772027

 20  1     1    1  |1 0>       -0.00001216 -0.00022450  0.04124780 -0.00000671 -0.00000043  0.00000023  0.00000007  0.00000005
                               -0.00018638 -0.00008266  0.00001994  0.00000000  0.00000036  0.00000016 -0.00000001  0.00000023

 21  1     2    1  |1 0>       -0.00016226  0.00031214  0.00417406  0.00002701  0.00267626 -0.00246220 -0.03832463 -0.01168441
                                0.00020094 -0.00005318  0.00000187 -0.00041319  0.00055264  0.00062539  0.04256630 -0.17568739

 22  1     3    1  |1 0>        0.00000173  0.00001452 -0.00253394  0.00000002  0.00068779 -0.00095093  0.13021896  0.05720949
                                0.00001278  0.00000634 -0.00000123 -0.00013360 -0.00261491 -0.00255518  0.11854226 -0.00350431

 23  1     4    1  |1 0>       -0.00000541  0.00192104 -0.31360641 -0.00000576  0.00009325 -0.00008800 -0.00156400 -0.00061864
                                0.00156128  0.00060501 -0.00015172 -0.00000589  0.00002041  0.00002220 -0.00039374 -0.00230826

 24  1     5    1  |1 0>        0.18323242 -0.01323603  0.00075103 -0.00002315 -0.02096027  0.01291756 -0.00134298 -0.00053601
                                0.10309942  0.17166670  0.00016348  0.00242574 -0.06178152 -0.06408536 -0.00081449 -0.00083741

 25  1     6    1  |1 0>        0.07230405 -0.21024287 -0.00213921 -0.00001733 -0.06294903  0.06318792  0.00032040  0.00019059
                               -0.15625458  0.00046161  0.00005011  0.00110767  0.01764497  0.01635656  0.00111974 -0.00178257

 26  1     7    1  |1 0>       -0.00461944  0.00193666 -0.00000339 -0.00008644  0.00505382 -0.00419584  0.00015070 -0.00000058
                               -0.00105938 -0.00380133  0.00001778  0.70201930  0.00418292  0.00468611  0.00071695 -0.00133622

 27  1     8    1  |1 0>       -0.07601181  0.26440077  0.00237772 -0.00010311 -0.40435849  0.40934008  0.00307951  0.00160315
                                0.20595746  0.01375579 -0.00004991  0.00270134  0.14265877  0.13517043  0.00725359 -0.00949604

 28  1     9    1  |1 0>       -0.23741228  0.03425285 -0.00084786 -0.00015865 -0.16511868  0.11235960 -0.00856778 -0.00339791
                               -0.11715313 -0.21679283 -0.00021072  0.00386452 -0.39821413 -0.41384354 -0.00496009 -0.00581669

 29  1     1    1  |1 1>-       0.01357712 -0.03198857 -0.00026380  0.00000018 -0.00002805  0.00001981 -0.00000003 -0.00000002
                               -0.02214560  0.00254488  0.00000996  0.00000003  0.00000529  0.00000337  0.00000017 -0.00000004

 30  1     2    1  |1 1>-       0.08862220 -0.20874416 -0.00215765  0.00002022  0.06640831 -0.06586796 -0.00029697 -0.00017395
                               -0.14450634  0.01662614  0.00006480 -0.00138067 -0.01201018 -0.01046813 -0.00096483  0.00146816

 31  1     3    1  |1 1>-      -0.17496512 -0.00779508 -0.00096772 -0.00002168 -0.01584509  0.00777615 -0.00135933 -0.00054797
                               -0.11807624 -0.17062244 -0.00015751  0.00232449 -0.06326992 -0.06547159 -0.00090771 -0.00066745

 32  1     4    1  |1 1>-       0.05420361 -0.12430693 -0.00130026 -0.00003279 -0.11120708  0.11033153  0.00042566  0.00026921
                               -0.08514505  0.01127580  0.00003989  0.00226885  0.02066230  0.01808930  0.00169640 -0.00278815

 33  1     5    1  |1 1>-       0.00001999 -0.00020743  0.02577101 -0.00002154  0.00250100 -0.00223900  0.06676080  0.02905618
                               -0.00016359 -0.00004711  0.00001591  0.15959527  0.00107196  0.00128491  0.05720137  0.00634810

 34  1     6    1  |1 1>-       0.00011616 -0.00192489  0.27036532 -0.00002608 -0.00153907  0.00140630  0.01290180  0.00310069
                               -0.00153351 -0.00050262  0.00013054 -0.01500720 -0.00038513 -0.00044118 -0.02686630  0.08771268

 35  1     7    1  |1 1>-      -0.22263400 -0.00860571  0.00146815  0.00014145  0.09805539 -0.04520457  0.00080244  0.00016431
                               -0.14898139 -0.21669569 -0.00019939 -0.00927637  0.41575481  0.42994946  0.00061780 -0.00007007

 36  1     8    1  |1 1>-       0.00100936 -0.00179652  0.33986614  0.00008566  0.00740913 -0.00726411 -0.05567079 -0.00774858
                               -0.00078345  0.00040207  0.00016412 -0.05758979 -0.00247298 -0.00235091  0.20031600 -0.57101875

 37  1     9    1  |1 1>-       0.00393623 -0.00014608  0.05521132 -0.00003069  0.00232526 -0.00142677 -0.44203443 -0.19146714
                                0.00239705  0.00373676  0.00003809  0.34669790  0.00658326  0.00657705 -0.36129060 -0.08187681


   Total
 Nr Sym  State Sym Spin / Nr.       25          26          27          28          29          30          31          32

  1  1     1    1  |0 0>       -0.01274233 -0.00000000 -0.00000000 -0.00000002  0.00000001  0.00000003 -0.00000012 -0.00000002
                                0.00000000 -0.00000000 -0.00000000  0.00000000 -0.00000000 -0.00000000  0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.00000005 -0.00001056  0.00020799 -0.00000014 -0.00022432  0.03929472 -0.04971184  0.34929132
                                0.00000002 -0.00008494 -0.00002283  0.00000067  0.00325286 -0.01567722 -0.03593943  0.25217783

  3  1     3    1  |0 0>        0.00000221  0.00019898 -0.00001581 -0.00000014 -0.01256918 -0.01500275  0.05806658 -0.27684235
                               -0.00000000 -0.00004338 -0.00006607  0.00000027  0.00178939  0.00551153 -0.02806914  0.25550638

  4  1     4    1  |0 0>       -0.00001737  0.00000200 -0.00000134  0.00000226  0.53378432  0.08977311 -0.09145155 -0.01807531
                               -0.00000000  0.00000001 -0.00000090 -0.00000137 -0.11264072  0.14598222  0.02396989  0.00310788

  5  1     5    1  |0 0>        0.00006958  0.00000176 -0.00000405 -0.00000888  0.09797704 -0.11204422  0.55056269  0.08968130
                                0.00000001  0.00000118 -0.00000040 -0.00000002 -0.03242013  0.04219329  0.00773451 -0.00659185

  6  1     6    1  |0 0>        0.00000214 -0.00000087 -0.00000069 -0.00000033  0.03563087  0.49046627  0.12374427 -0.01645527
                               -0.00000001  0.00000037  0.00000036 -0.00001152  0.16389553 -0.22419988 -0.03477913 -0.01888126

  7  1     7    1  |0 0>       -0.00000003  0.45731733 -0.02085488 -0.00045373 -0.00001916 -0.00001411  0.00002385 -0.00022639
                               -0.00000001 -0.10693884 -0.17211164  0.00007826  0.00000116  0.00000539 -0.00002574  0.00022665

  8  1     8    1  |0 0>       -0.00000002 -0.03567505  0.46740596  0.00004239 -0.00000922  0.00004225 -0.00003528  0.00029273
                               -0.00000001 -0.16962681 -0.04603499 -0.00051280  0.00000830 -0.00002075 -0.00003135  0.00019947

  9  1     9    1  |0 0>        0.00000000 -0.00002517  0.00063536 -0.00028383  0.00000348  0.00001261  0.00000358 -0.00000572
                               -0.00000240  0.00025961 -0.00007870  0.50068676  0.00000449 -0.00000247 -0.00001000 -0.00001119

 10  1    10    1  |0 0>        0.61289946  0.00000004  0.00000000  0.00000651  0.00000376  0.00001282 -0.00006180 -0.00000900
                                0.00000000  0.00000000 -0.00000001  0.00000000 -0.00000009  0.00000009  0.00000003  0.00000000

 11  1     1    1  |1 1>+      -0.00000000  0.06583774 -0.00675791 -0.00006553 -0.00001698 -0.00001723  0.00003369 -0.00025974
                               -0.00000000 -0.01396190 -0.02431262  0.00001556  0.00000049  0.00000739 -0.00002552  0.00023042

 12  1     2    1  |1 1>+      -0.00000091 -0.43075935  0.04415349  0.00042756  0.00348357  0.00826079 -0.02728063  0.12776452
                                0.00000001  0.09136105  0.15896155 -0.00014827  0.00013605 -0.00383894  0.01212891 -0.11291734

 13  1     3    1  |1 1>+      -0.00000040 -0.00737576  0.43372621  0.00001383 -0.00268878  0.01872468 -0.02666954  0.15977374
                                0.00000002 -0.16389512 -0.05255116 -0.00047291  0.00216109 -0.00807181 -0.01680998  0.11713384

 14  1     4    1  |1 1>+      -0.00000148  0.24101066 -0.02823268 -0.00023928  0.00666037  0.01448413 -0.04776048  0.22751313
                                0.00000000 -0.04976898 -0.08849713  0.00004628  0.00011852 -0.00666710  0.02186112 -0.20298858

 15  1     5    1  |1 1>+       0.00000487 -0.00010219  0.00059657 -0.00026391  0.00499831 -0.23322998 -0.00472063  0.01748835
                               -0.00000166  0.00025811 -0.00004383  0.46450349 -0.08058945  0.10980368  0.01721255  0.00777237

 16  1     6    1  |1 1>+       0.00005058 -0.00042519 -0.00001620  0.00001831  0.22465520 -0.04119877  0.47009428  0.08045680
                                0.00000016  0.00006907  0.00016493 -0.04428012 -0.04578461  0.05844665  0.01003126 -0.00335356

 17  1     7    1  |1 1>+       0.00355131 -0.00190751  0.08908947  0.00000418  0.00572461 -0.02802470  0.03117868 -0.20142384
                                0.00000009 -0.03358498 -0.01064465 -0.00170587 -0.00491645  0.01314157  0.02213020 -0.15132350

 18  1     8    1  |1 1>+       0.45026793  0.00000879 -0.00042576 -0.00000597  0.32842957  0.12082016 -0.15208412 -0.02719655
                               -0.00000083  0.00017581  0.00005062  0.01537617 -0.05249244  0.06691088  0.01097362  0.00178038

 19  1     9    1  |1 1>+       0.07311817  0.00003895 -0.00170508  0.00005406  0.03222898 -0.27393049 -0.08875720  0.01156100
                                0.00000506  0.00054824  0.00020416 -0.09461014 -0.10618841  0.14431993  0.02221606  0.01324088

 20  1     1    1  |1 0>        0.00000344 -0.00003704  0.00001141 -0.07194775 -0.00000244 -0.00000069  0.00001141  0.00000963
                               -0.00000000 -0.00000345  0.00009168 -0.00004078  0.00000198  0.00000553  0.00000183 -0.00000448

 21  1     2    1  |1 0>        0.00000003  0.00024655  0.00006716 -0.00717414  0.15172450 -0.20749246 -0.03235888 -0.01595946
                                0.00000005 -0.00005934  0.00070298 -0.00000396 -0.03273206 -0.45649893 -0.09855253  0.01923902

 22  1     3    1  |1 0>       -0.00000003  0.00000261  0.00000003  0.00435677  0.10789269 -0.13967433 -0.02297751 -0.00208463
                               -0.00000007  0.00000105 -0.00000531  0.00000252  0.50062283  0.05695876  0.04013583  0.00931801

 23  1     4    1  |1 0>       -0.00000205  0.00044662 -0.00003525  0.53873841  0.00114904 -0.00164345 -0.00025194 -0.00007449
                                0.00000001  0.00000559 -0.00023193  0.00030544 -0.00448223 -0.00655820 -0.00160931  0.00001563

 24  1     5    1  |1 0>       -0.00000001  0.07470981  0.15208685 -0.00007726 -0.00021204  0.00451075 -0.01080035  0.10402428
                               -0.00000093  0.42633627 -0.08482168 -0.00042373  0.00365248  0.00996635 -0.02963097  0.14567533

 25  1     6    1  |1 0>       -0.00000005 -0.17130071 -0.06656807  0.00008046 -0.00191410  0.00731145  0.01808311 -0.12954274
                               -0.00000032 -0.03132613 -0.42767878  0.00002491 -0.00317011  0.01705140 -0.02379373  0.14514258

 26  1     7    1  |1 0>        0.00000001  0.00005077  0.00046168 -0.00000109 -0.00058096  0.00086334  0.00001992  0.00146916
                                0.45598306  0.00149207 -0.00084769 -0.00000462 -0.02229579 -0.07806004  0.38001887  0.06059999

 27  1     8    1  |1 0>        0.00000002 -0.03625444 -0.01574833 -0.00009334  0.00269683 -0.00927128 -0.02381784  0.17237978
                               -0.00227968 -0.01223436 -0.08676654  0.00001079  0.00434368 -0.02122462  0.02551750 -0.17155750

 28  1     9    1  |1 0>       -0.00000001  0.01302752  0.03033760 -0.00003567  0.00050686 -0.00642112  0.01212435 -0.12069563
                               -0.00811984  0.08721833 -0.02324052 -0.00008642 -0.00395711 -0.01284010  0.03267278 -0.19735823

 29  1     1    1  |1 1>-      -0.00000000 -0.02516600 -0.00798751 -0.00007245  0.00000807 -0.00002044 -0.00003511  0.00023139
                                0.00000001  0.00142559 -0.06683885 -0.00000241  0.00000971 -0.00004274  0.00004040 -0.00030558

 30  1     2    1  |1 1>-       0.00000002 -0.16221861 -0.05143182  0.00027082  0.00232506 -0.00835995 -0.01740115  0.12148840
                                0.00000042  0.00925203 -0.43057447 -0.00001522  0.00275300 -0.01941004  0.02685610 -0.16153442

 31  1     3    1  |1 1>-       0.00000001 -0.09145060 -0.15800726  0.00009719 -0.00007483  0.00391893 -0.01220007  0.11393950
                               -0.00000085 -0.42745892  0.04174903  0.00042419  0.00389041  0.00858858 -0.02753751  0.13311990

 32  1     4    1  |1 1>-       0.00000005 -0.09574637 -0.02932467  0.00020238 -0.00364397  0.01366624  0.02932698 -0.20541104
                               -0.00000068  0.00893090 -0.25644245 -0.00001245 -0.00478300  0.03172289 -0.04505635  0.27077526

 33  1     5    1  |1 1>-       0.00000017 -0.00007612 -0.00000982 -0.04427746  0.04720207 -0.06086401 -0.00981169 -0.00350320
                               -0.00005075  0.00000087 -0.00008494 -0.00001787  0.27690153  0.14135668 -0.42084233 -0.07260627

 34  1     6    1  |1 1>-       0.00000168 -0.00059475 -0.00003815 -0.46449626 -0.08072752  0.11004601  0.01717198  0.00841728
                                0.00000479  0.00000017 -0.00035193 -0.00026407 -0.00997699  0.21584480  0.08964422 -0.00285245

 35  1     7    1  |1 1>-      -0.00000004  0.01861664  0.03238052  0.00072663  0.00033688  0.00440593 -0.01594908  0.14752002
                               -0.00764737  0.08779444 -0.00900694 -0.00008656  0.01033749  0.01284466 -0.03053391  0.16757577

 36  1     8    1  |1 1>-      -0.00000507 -0.00004356 -0.00017664  0.09463770 -0.10616669  0.14433450  0.02273980  0.00939485
                                0.07316888 -0.00043380 -0.00007476  0.00005451 -0.02877816  0.28680449  0.02753416 -0.01924037

 37  1     9    1  |1 1>-      -0.00000081 -0.00032322 -0.00057837  0.01536923  0.05191260 -0.06604219 -0.01086895 -0.00092427
                               -0.45020878 -0.00156164  0.00014080  0.00000753  0.30636073  0.04377568  0.22300178  0.03293645


   Total
 Nr Sym  State Sym Spin / Nr.       33          34          35          36          37

  1  1     1    1  |0 0>        0.00000000  0.00000000  0.00000000  0.00000000  0.00942017
                                0.00000000 -0.00000000  0.00000000 -0.00000000  0.00000000

  2  1     2    1  |0 0>       -0.32108312  0.00028409  0.00047826 -0.00000007 -0.00000002
                                0.20571073  0.00041392 -0.00038494  0.00000479  0.00000001

  3  1     3    1  |0 0>        0.15310963  0.00048841  0.00034284  0.00000119  0.00000060
                                0.40820138 -0.00033993  0.00041470  0.00000208 -0.00000000

  4  1     4    1  |0 0>        0.00692265 -0.00000781 -0.00001040 -0.00000554 -0.00000456
                                0.01611426 -0.00000680  0.00000633 -0.00000187 -0.00000000

  5  1     5    1  |0 0>       -0.01539677 -0.00001854 -0.00001294  0.00002143  0.00001814
                               -0.00859097  0.00001140 -0.00001219  0.00000030  0.00000000

  6  1     6    1  |0 0>        0.02092431 -0.00000149  0.00000507  0.00000038  0.00000055
                               -0.00575220  0.00001426 -0.00001422 -0.00000871 -0.00000001

  7  1     7    1  |0 0>        0.00011402 -0.28216797 -0.19366293 -0.00034599 -0.00000001
                                0.00033966  0.18437612 -0.21622125  0.00359560 -0.00000000

  8  1     8    1  |0 0>       -0.00025407 -0.15366515 -0.25564045  0.00004266 -0.00000001
                                0.00015100 -0.24620720  0.21966806  0.00666237 -0.00000000

  9  1     9    1  |0 0>        0.00000669  0.00438949  0.00560578 -0.00589207  0.00000000
                               -0.00000944  0.00205126 -0.00159465  0.44463281  0.00000031

 10  1    10    1  |0 0>        0.00000118 -0.00000005  0.00000000 -0.00000631  0.79016082
                               -0.00000005  0.00000007  0.00000012 -0.00000009  0.00000000

 11  1     1    1  |1 1>+       0.00013753 -0.23332403 -0.15292892 -0.00029711 -0.00000000
                                0.00035411  0.16908398 -0.19496512  0.00274775 -0.00000001

 12  1     2    1  |1 1>+      -0.07186802 -0.05681990 -0.03723718 -0.00007259 -0.00000030
                               -0.18218841  0.04116743 -0.04745955  0.00067532 -0.00000001

 13  1     3    1  |1 1>+      -0.14764911  0.03520027  0.05509835 -0.00000447 -0.00000014
                                0.09610400  0.04844463 -0.04256488 -0.00141084  0.00000001

 14  1     4    1  |1 1>+      -0.12745574  0.03101054  0.02004413  0.00003925 -0.00000055
                               -0.32674703 -0.02307166  0.02646753 -0.00036082  0.00000000

 15  1     5    1  |1 1>+      -0.01203582 -0.00091187 -0.00115901  0.00120935  0.00000139
                                0.00129328 -0.00041659  0.00032143 -0.09112054 -0.00000270

 16  1     6    1  |1 1>+      -0.01639151  0.00001308  0.00006475 -0.00009762  0.00001462
                               -0.00237433  0.00009825 -0.00009622  0.00868653  0.00000026

 17  1     7    1  |1 1>+       0.18678862  0.21339763  0.33542491 -0.00015355 -0.00275478
                               -0.12584153  0.29678242 -0.26109337  0.00075905  0.00000005

 18  1     8    1  |1 1>+       0.00707157 -0.00195779 -0.00281504  0.00118451 -0.34925035
                                0.01084136 -0.00190182  0.00163062 -0.08994821 -0.00000039

 19  1     9    1  |1 1>+      -0.01543274  0.00166639  0.00100496 -0.00733810 -0.05671408
                                0.00587270 -0.00273673  0.00266993  0.55386451  0.00000241

 20  1     1    1  |1 0>        0.00000760 -0.00175270  0.00136243 -0.37993539 -0.00000328
                                0.00000515  0.00375049  0.00478959 -0.00503473  0.00000000

 21  1     2    1  |1 0>       -0.00293982 -0.00006351  0.00005676  0.00139969  0.00000003
                               -0.02058419  0.00003406  0.00005863  0.00001891  0.00000002

 22  1     3    1  |1 0>       -0.01177295 -0.00000706  0.00000702 -0.00085285 -0.00000002
                               -0.00157688 -0.00000321  0.00000108 -0.00001152  0.00000002

 23  1     4    1  |1 0>        0.00015291 -0.00053851  0.00042387 -0.10568945 -0.00000310
                               -0.00010930  0.00107743  0.00138715 -0.00140058  0.00000000

 24  1     5    1  |1 0>        0.17666550  0.04494546 -0.05054191  0.00051256 -0.00000000
                               -0.08738905  0.05241074  0.03131480  0.00007073 -0.00000030

 25  1     6    1  |1 0>       -0.11627620  0.04418802 -0.03780295 -0.00157565  0.00000001
                               -0.13929615 -0.03983831 -0.05772614 -0.00000370 -0.00000011

 26  1     7    1  |1 0>        0.00336065  0.00649136 -0.00685436  0.00000030 -0.00000001
                               -0.01090144  0.00410911  0.00117132  0.00002366 -0.35371547

 27  1     8    1  |1 0>        0.16172065  0.25338160 -0.21198357 -0.00918306  0.00000002
                                0.16881440 -0.26625967 -0.36788660 -0.00004164  0.00176823

 28  1     9    1  |1 0>       -0.21370009  0.29427024 -0.32629566  0.00261764 -0.00000000
                                0.12233009  0.30605700  0.16920228  0.00043800  0.00629824

 29  1     1    1  |1 1>-       0.00018510 -0.20117828  0.17700292  0.00585599 -0.00000001
                                0.00027039  0.14461356  0.22734420 -0.00001973  0.00000001

 30  1     2    1  |1 1>-       0.10101080  0.04825717 -0.04245022 -0.00154214  0.00000000
                                0.14996422 -0.03467978 -0.05451302  0.00000284  0.00000014

 31  1     3    1  |1 1>-       0.18512832 -0.04063217  0.04690545 -0.00066760  0.00000000
                               -0.07563844 -0.05656143 -0.03721852 -0.00007187 -0.00000029

 32  1     4    1  |1 1>-      -0.17149956  0.02861492 -0.02524126 -0.00092629 -0.00000002
                               -0.25174777 -0.01987356 -0.03162943  0.00000176 -0.00000023

 33  1     5    1  |1 1>-      -0.01317665  0.00006903 -0.00005798  0.00868762  0.00000026
                                0.01656449 -0.00009319 -0.00012942  0.00009733 -0.00001469

 34  1     6    1  |1 1>-       0.00278425  0.00051889 -0.00041278  0.09112586  0.00000270
                                0.00885942 -0.00097386 -0.00126301  0.00120912  0.00000140

 35  1     7    1  |1 1>-       0.23779308  0.24937394 -0.28752934 -0.00031076 -0.00000003
                               -0.09391188  0.34418858  0.22560212  0.00038002  0.00593211

 36  1     8    1  |1 1>-       0.00144453 -0.00380681  0.00342825 -0.55379392 -0.00000240
                                0.01482145  0.00374889  0.00585869 -0.00734207 -0.05675346

 37  1     9    1  |1 1>-      -0.00816908 -0.00486491  0.00545239 -0.08999768 -0.00000039
                               -0.00406112 -0.00525120 -0.00288879 -0.00119164  0.34920436



 Composition of spin-orbit eigenvectors
 ======================================
   Total
 Nr Sym  State Sym Spin / Nr.      1        2        3        4        5        6        7        8

  1  1     1    1  |0 0>         99.97%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%    1.82%    1.81%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    1.81%    1.81%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    3.62%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%   42.51%   42.35%    0.02%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%    0.01%    0.01%    0.00%   19.68%   30.42%    0.00%    0.00%
 13  1     3    1  |1 1>+         0.00%    0.01%    0.01%    0.00%   30.50%   19.74%    0.00%    0.00%
 14  1     4    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    1.05%   34.21%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.10%    1.04%
 17  1     7    1  |1 1>+         0.00%    2.86%    2.87%    0.00%    0.00%    0.00%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.01%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    5.58%    0.00%    0.00%    0.00%    0.00%
 20  1     1    1  |1 0>          0.00%    0.01%    0.05%   84.80%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.82%   32.94%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.96%    0.82%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    0.02%    0.00%    0.00%    0.00%    0.06%
 24  1     5    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.00%    0.00%    0.00%    0.00%
 25  1     6    1  |1 0>          0.00%    0.01%    0.01%    0.00%    0.01%    0.00%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          0.00%    2.86%    2.87%    0.00%    0.00%    0.00%    0.00%    0.00%
 28  1     9    1  |1 0>          0.00%    2.87%    2.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%   42.35%   42.47%    0.05%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    0.01%    0.01%    0.00%   30.10%   19.65%    0.00%    0.00%
 31  1     3    1  |1 1>-         0.00%    0.01%    0.01%    0.00%   19.71%   30.18%    0.00%    0.00%
 32  1     4    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%   32.08%    1.00%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%    0.01%    0.00%    0.00%    0.99%   29.93%
 35  1     7    1  |1 1>-         0.00%    2.87%    2.86%    0.00%    0.00%    0.00%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    5.58%    0.00%    0.00%    0.00%    0.00%
 37  1     9    1  |1 1>-         0.01%    0.00%    0.00%    0.15%    0.00%    0.00%    0.00%    0.00%

   Total
 Nr Sym  State Sym Spin / Nr.      9       10       11       12       13       14       15       16

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   34.30%   11.06%    0.05%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%   11.07%   34.34%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%   42.63%    0.45%    0.00%    0.00%    2.33%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    2.31%    0.11%    0.04%    0.01%   42.94%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.47%   44.84%    0.00%    0.00%    0.10%
  7  1     7    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         3.56%    0.00%    0.00%    0.00%    0.00%    2.10%    6.11%    0.00%
 13  1     3    1  |1 1>+         0.00%    3.13%    0.00%    0.00%    0.00%    6.47%    2.13%    0.00%
 14  1     4    1  |1 1>+        39.47%    0.01%    0.00%    0.00%    0.00%    6.70%   19.77%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%   17.67%    0.17%    8.71%    0.00%    0.00%    0.20%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.14%    8.22%    0.13%    0.01%    0.00%   26.13%
 17  1     7    1  |1 1>+         0.00%    0.00%    0.00%    0.00%    0.00%    1.06%    0.36%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.00%    1.40%    0.06%    0.00%    0.00%    0.43%
 19  1     9    1  |1 1>+         0.00%    0.00%    0.00%    0.05%    1.37%    0.00%    0.00%    0.02%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.02%    0.35%   33.69%    0.00%    0.00%    0.01%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%   33.69%    0.35%    0.00%    0.00%    0.01%
 23  1     4    1  |1 0>          0.00%    0.00%   59.92%    0.00%    0.01%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>         53.03%    0.44%    0.00%    0.00%    0.00%    2.68%    5.80%    0.00%
 25  1     6    1  |1 0>          0.44%   53.01%    0.00%    0.00%    0.00%    5.80%    2.69%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    1.90%
 27  1     8    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.91%    0.52%    0.00%
 28  1     9    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.52%    0.91%    0.00%
 29  1     1    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    3.30%    0.00%    0.00%    0.00%    6.69%    2.30%    0.00%
 31  1     3    1  |1 1>-         3.49%    0.00%    0.00%    0.00%    0.00%    2.27%    6.32%    0.00%
 32  1     4    1  |1 1>-         0.01%   40.10%    0.00%    0.00%    0.00%   19.02%    6.63%    0.01%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.22%    9.12%    0.23%    0.01%    0.00%   25.10%
 34  1     6    1  |1 1>-         0.00%    0.00%   22.02%    0.18%    8.62%    0.00%    0.00%    0.27%
 35  1     7    1  |1 1>-         0.00%    0.00%    0.00%    0.00%    0.00%    0.36%    1.06%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%    0.00%    0.05%    1.38%    0.00%    0.00%    0.01%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.00%    1.35%    0.05%    0.00%    0.00%    0.49%

   Total
 Nr Sym  State Sym Spin / Nr.     17       18       19       20       21       22       23       24

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%   10.60%   10.31%    0.01%    0.01%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.01%   10.31%   10.60%    0.00%    0.00%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    1.21%    0.00%    0.00%   17.82%    1.89%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%   19.68%    0.01%    0.01%    1.09%    0.13%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.02%    0.01%    0.01%    2.00%   18.90%
  7  1     7    1  |0 0>         31.20%   20.32%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>         20.32%   31.20%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%   51.52%    0.00%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.10%    0.07%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         4.52%    2.96%    0.00%    0.00%    0.41%    0.42%    0.00%    0.00%
 13  1     3    1  |1 1>+         2.92%    4.45%    0.00%    0.00%    0.44%    0.42%    0.00%    0.00%
 14  1     4    1  |1 1>+         1.42%    0.93%    0.00%    0.00%    1.29%    1.32%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.00%    0.00%    7.31%    0.02%    0.00%    0.00%    0.09%    0.77%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.07%    2.55%    0.00%    0.00%    0.77%    0.09%
 17  1     7    1  |1 1>+         4.70%    7.18%    0.00%    0.00%   18.69%   18.25%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.00%    0.00%    0.30%   11.98%    0.00%    0.00%   32.66%    4.32%
 19  1     9    1  |1 1>+         0.00%    0.00%   11.55%    0.30%    0.00%    0.00%    4.33%   32.64%
 20  1     1    1  |1 0>          0.00%    0.00%    0.17%    0.00%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.33%    3.10%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    3.10%    0.33%
 23  1     4    1  |1 0>          0.00%    0.00%    9.83%    0.00%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          4.42%    2.96%    0.00%    0.00%    0.43%    0.43%    0.00%    0.00%
 25  1     6    1  |1 0>          2.96%    4.42%    0.00%    0.00%    0.43%    0.43%    0.00%    0.00%
 26  1     7    1  |1 0>          0.00%    0.00%    0.00%   49.28%    0.00%    0.00%    0.00%    0.00%
 27  1     8    1  |1 0>          4.82%    7.01%    0.00%    0.00%   18.39%   18.58%    0.01%    0.01%
 28  1     9    1  |1 0>          7.01%    4.82%    0.00%    0.00%   18.58%   18.39%    0.01%    0.00%
 29  1     1    1  |1 1>-         0.07%    0.10%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         2.87%    4.39%    0.00%    0.00%    0.46%    0.44%    0.00%    0.00%
 31  1     3    1  |1 1>-         4.46%    2.92%    0.00%    0.00%    0.43%    0.43%    0.00%    0.00%
 32  1     4    1  |1 1>-         1.02%    1.56%    0.00%    0.00%    1.28%    1.25%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.07%    2.55%    0.00%    0.00%    0.77%    0.09%
 34  1     6    1  |1 1>-         0.00%    0.00%    7.31%    0.02%    0.00%    0.00%    0.09%    0.77%
 35  1     7    1  |1 1>-         7.18%    4.70%    0.00%    0.01%   18.25%   18.69%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.00%    0.00%   11.55%    0.33%    0.01%    0.01%    4.32%   32.61%
 37  1     9    1  |1 1>-         0.00%    0.00%    0.30%   12.02%    0.00%    0.00%   32.59%    4.34%

   Total
 Nr Sym  State Sym Spin / Nr.     25       26       27       28       29       30       31       32

  1  1     1    1  |0 0>          0.02%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
  2  1     2    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.00%    0.18%    0.38%   18.56%
  3  1     3    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.02%    0.03%    0.42%   14.19%
  4  1     4    1  |0 0>          0.00%    0.00%    0.00%    0.00%   29.76%    2.94%    0.89%    0.03%
  5  1     5    1  |0 0>          0.00%    0.00%    0.00%    0.00%    1.07%    1.43%   30.32%    0.81%
  6  1     6    1  |0 0>          0.00%    0.00%    0.00%    0.00%    2.81%   29.08%    1.65%    0.06%
  7  1     7    1  |0 0>          0.00%   22.06%    3.01%    0.00%    0.00%    0.00%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    3.00%   22.06%    0.00%    0.00%    0.00%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   25.07%    0.00%    0.00%    0.00%    0.00%
 10  1    10    1  |0 0>         37.56%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%    0.00%
 11  1     1    1  |1 1>+         0.00%    0.45%    0.06%    0.00%    0.00%    0.00%    0.00%    0.00%
 12  1     2    1  |1 1>+         0.00%   19.39%    2.72%    0.00%    0.00%    0.01%    0.09%    2.91%
 13  1     3    1  |1 1>+         0.00%    2.69%   19.09%    0.00%    0.00%    0.04%    0.10%    3.92%
 14  1     4    1  |1 1>+         0.00%    6.06%    0.86%    0.00%    0.00%    0.03%    0.28%    9.30%
 15  1     5    1  |1 1>+         0.00%    0.00%    0.00%   21.58%    0.65%    6.65%    0.03%    0.04%
 16  1     6    1  |1 1>+         0.00%    0.00%    0.00%    0.20%    5.26%    0.51%   22.11%    0.65%
 17  1     7    1  |1 1>+         0.00%    0.11%    0.81%    0.00%    0.01%    0.10%    0.15%    6.35%
 18  1     8    1  |1 1>+        20.27%    0.00%    0.00%    0.02%   11.06%    1.91%    2.33%    0.07%
 19  1     9    1  |1 1>+         0.53%    0.00%    0.00%    0.90%    1.23%    9.59%    0.84%    0.03%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%    0.52%    0.00%    0.00%    0.00%    0.00%
 21  1     2    1  |1 0>          0.00%    0.00%    0.00%    0.01%    2.41%   25.14%    1.08%    0.06%
 22  1     3    1  |1 0>          0.00%    0.00%    0.00%    0.00%   26.23%    2.28%    0.21%    0.01%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%   29.02%    0.00%    0.00%    0.00%    0.00%
 24  1     5    1  |1 0>          0.00%   18.73%    3.03%    0.00%    0.00%    0.01%    0.10%    3.20%
 25  1     6    1  |1 0>          0.00%    3.03%   18.73%    0.00%    0.00%    0.03%    0.09%    3.78%
 26  1     7    1  |1 0>         20.79%    0.00%    0.00%    0.00%    0.05%    0.61%   14.44%    0.37%
 27  1     8    1  |1 0>          0.00%    0.15%    0.78%    0.00%    0.00%    0.05%    0.12%    5.91%
 28  1     9    1  |1 0>          0.01%    0.78%    0.15%    0.00%    0.00%    0.02%    0.12%    5.35%
 29  1     1    1  |1 1>-         0.00%    0.06%    0.45%    0.00%    0.00%    0.00%    0.00%    0.00%
 30  1     2    1  |1 1>-         0.00%    2.64%   18.80%    0.00%    0.00%    0.04%    0.10%    4.09%
 31  1     3    1  |1 1>-         0.00%   19.11%    2.67%    0.00%    0.00%    0.01%    0.09%    3.07%
 32  1     4    1  |1 1>-         0.00%    0.92%    6.66%    0.00%    0.00%    0.12%    0.29%   11.55%
 33  1     5    1  |1 1>-         0.00%    0.00%    0.00%    0.20%    7.89%    2.37%   17.72%    0.53%
 34  1     6    1  |1 1>-         0.00%    0.00%    0.00%   21.58%    0.66%    5.87%    0.83%    0.01%
 35  1     7    1  |1 1>-         0.01%    0.81%    0.11%    0.00%    0.01%    0.02%    0.12%    4.98%
 36  1     8    1  |1 1>-         0.54%    0.00%    0.00%    0.90%    1.21%   10.31%    0.13%    0.05%
 37  1     9    1  |1 1>-        20.27%    0.00%    0.00%    0.02%    9.66%    0.63%    4.98%    0.11%

   Total
 Nr Sym  State Sym Spin / Nr.     33       34       35       36       37

  1  1     1    1  |0 0>          0.00%    0.00%    0.00%    0.00%    0.01%
  2  1     2    1  |0 0>         14.54%    0.00%    0.00%    0.00%    0.00%
  3  1     3    1  |0 0>         19.01%    0.00%    0.00%    0.00%    0.00%
  4  1     4    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%
  5  1     5    1  |0 0>          0.03%    0.00%    0.00%    0.00%    0.00%
  6  1     6    1  |0 0>          0.05%    0.00%    0.00%    0.00%    0.00%
  7  1     7    1  |0 0>          0.00%   11.36%    8.43%    0.00%    0.00%
  8  1     8    1  |0 0>          0.00%    8.42%   11.36%    0.00%    0.00%
  9  1     9    1  |0 0>          0.00%    0.00%    0.00%   19.77%    0.00%
 10  1    10    1  |0 0>          0.00%    0.00%    0.00%    0.00%   62.44%
 11  1     1    1  |1 1>+         0.00%    8.30%    6.14%    0.00%    0.00%
 12  1     2    1  |1 1>+         3.84%    0.49%    0.36%    0.00%    0.00%
 13  1     3    1  |1 1>+         3.10%    0.36%    0.48%    0.00%    0.00%
 14  1     4    1  |1 1>+        12.30%    0.15%    0.11%    0.00%    0.00%
 15  1     5    1  |1 1>+         0.01%    0.00%    0.00%    0.83%    0.00%
 16  1     6    1  |1 1>+         0.03%    0.00%    0.00%    0.01%    0.00%
 17  1     7    1  |1 1>+         5.07%   13.36%   18.07%    0.00%    0.00%
 18  1     8    1  |1 1>+         0.02%    0.00%    0.00%    0.81%   12.20%
 19  1     9    1  |1 1>+         0.03%    0.00%    0.00%   30.68%    0.32%
 20  1     1    1  |1 0>          0.00%    0.00%    0.00%   14.44%    0.00%
 21  1     2    1  |1 0>          0.04%    0.00%    0.00%    0.00%    0.00%
 22  1     3    1  |1 0>          0.01%    0.00%    0.00%    0.00%    0.00%
 23  1     4    1  |1 0>          0.00%    0.00%    0.00%    1.12%    0.00%
 24  1     5    1  |1 0>          3.88%    0.48%    0.35%    0.00%    0.00%
 25  1     6    1  |1 0>          3.29%    0.35%    0.48%    0.00%    0.00%
 26  1     7    1  |1 0>          0.01%    0.01%    0.00%    0.00%   12.51%
 27  1     8    1  |1 0>          5.47%   13.51%   18.03%    0.01%    0.00%
 28  1     9    1  |1 0>          6.06%   18.03%   13.51%    0.00%    0.00%
 29  1     1    1  |1 1>-         0.00%    6.14%    8.30%    0.00%    0.00%
 30  1     2    1  |1 1>-         3.27%    0.35%    0.48%    0.00%    0.00%
 31  1     3    1  |1 1>-         4.00%    0.49%    0.36%    0.00%    0.00%
 32  1     4    1  |1 1>-         9.28%    0.12%    0.16%    0.00%    0.00%
 33  1     5    1  |1 1>-         0.04%    0.00%    0.00%    0.01%    0.00%
 34  1     6    1  |1 1>-         0.01%    0.00%    0.00%    0.83%    0.00%
 35  1     7    1  |1 1>-         6.54%   18.07%   13.36%    0.00%    0.00%
 36  1     8    1  |1 1>-         0.02%    0.00%    0.00%   30.67%    0.32%
 37  1     9    1  |1 1>-         0.01%    0.01%    0.00%    0.81%   12.19%



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       54.22       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       7     6401.45       700     1000      520     2100     2140     5201     5202   
                                         GEOM     BASIS   MCVARS     RHF     MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI   RHF-SCF       INT
 CPU TIMES  *   2187472.102135271.18  30596.14  21595.76      6.62      0.13      2.03
 REAL TIME  *   2201565.18 SEC
 DISK USED  *         6.30 GB (local),       94.74 GB (total)
 SF USED    *        37.64 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/aug-cc-pWCVQZ-PP energy=   -462.854200579417

              CI              CI           MULTI         RHF-SCF
   -462.81155788   -462.79634388   -461.79032093   -462.19986760
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
