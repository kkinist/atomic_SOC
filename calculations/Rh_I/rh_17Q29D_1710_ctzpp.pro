
 Working directory              : /wrk/irikura/molpro.uLF1bxbs1e/
 Global scratch directory       : /wrk/irikura/molpro.uLF1bxbs1e/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.uLF1bxbs1e/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P,4F + 2F,2D,2P,2G,2D
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
     wf,nelec=17,sym=1,spin=1; state,29;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,29;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.02 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activ                                                                
  64 bit mpp version                                                                     DATE: 15-Feb-24          TIME: 10:06:29  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  45000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1500.0 MW


 ZSYMEL=XYZ

 SETTING BASIS          =    CC-PWCVTZ-PP


 Recomputing integrals since basis changed


 Using spherical harmonics

 Library entry Rh   ECP ECP28MDF                 selected for group  1
 Library entry RH     S cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     P cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     D cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     F cc-pwCVTZ-PP         selected for orbital group  1
 Library entry RH     G cc-pwCVTZ-PP         selected for orbital group  1


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

   1  RH     17.00    0.000000000    0.000000000    0.000000000

 NUCLEAR CHARGE:                   17
 NUMBER OF PRIMITIVE AOS:         165
 NUMBER OF SYMMETRY AOS:          134
 NUMBER OF CONTRACTIONS:           97   (   55Ag  +   42Au  )
 NUMBER OF INNER CORE ORBITALS:     0   (    0Ag  +    0Au  )
 NUMBER OF OUTER CORE ORBITALS:     4   (    1Ag  +    3Au  )
 NUMBER OF VALENCE ORBITALS:        6   (    6Ag  +    0Au  )


 LX: Ag           LY: Ag           LZ: Ag 


 NUCLEAR REPULSION ENERGY    0.00000000

 EXTRA SYMMETRY OF AOS IN SYMMETRY 1:   1 1 1 1 1 1 1 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 2 3 4   5 6 2 3 4 5 6 7 8 9
                                       101112131415 7 8 910  1112131415
 EXTRA SYMMETRY OF AOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   2 3 1 2 3 1 2 3 1 2   3 4 5 6 7 8 910 4 5   6 7 8 910 4 5 6 7 8
                                        910


 Eigenvalues of metric

         1 0.743E-03 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.223E-02 0.534E-02 0.439E-01
         2 0.905E-03 0.905E-03 0.905E-03 0.520E-02 0.520E-02 0.520E-02 0.207E+00 0.207E+00


 Contracted 2-electron integrals neglected if value below      1.0D-11
 AO integral compression algorithm  1   Integral accuracy      1.0D-11

     15.991 MB (compressed) written to integral file ( 19.1%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     192330.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     192330      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.09 SEC, REAL TIME:     0.12 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     60 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.01 SEC

 Node minimum:      190791.  Node maximum:      197199. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.68      1.35
 REAL TIME  *         2.57 SEC
 DISK USED  *        29.10 MB (local),     1002.23 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            17
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:            29
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.368D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.365D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.714D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.658D-01 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 3 5 1 4 6 2 5 3 2   6 4 5 3 1 711 91415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.250D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 9 7 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174
                                          0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174
                                          0.02174
 Weight factors for state symmetry  2:    0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174
                                          0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174
                                          0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174   0.02174
                                          0.02174   0.02174   0.02174   0.02174   0.02174
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    8104
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.30326351    -109.31963273   -0.01636922    0.21095399 0.00182498 0.00000000  0.15E+00      0.32
   2    3    6    0   -109.31917829    -109.31920535   -0.00002707    0.00751814 0.00005044 0.00000000  0.64E-02      0.66
   3   20   40    0   -109.31920539    -109.31920539   -0.00000000    0.00001399 0.00000029 0.00000000  0.14E-04      2.31
   4   20   40    0   -109.31920539    -109.31920539    0.00000000    0.00000056 0.00000018 0.00000000  0.21E-06      3.95

 CONVERGENCE REACHED!  Final gradient:    0.00000022 ( 0.22E-06)
                       Final energy:   -109.31920539
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380940224349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374460
 One electron energy                          -193.69357668
 Two electron energy                            84.31263645
 Virial ratio                                    3.66498443
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380940223914
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374469
 One electron energy                          -193.69357682
 Two electron energy                            84.31263659
 Virial ratio                                    3.66498442
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380940221631
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374485
 One electron energy                          -193.69357703
 Two electron energy                            84.31263680
 Virial ratio                                    3.66498441
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380940221172
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374487
 One electron energy                          -193.69357702
 Two electron energy                            84.31263680
 Virial ratio                                    3.66498441
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380940218422
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374494
 One electron energy                          -193.69357714
 Two electron energy                            84.31263692
 Virial ratio                                    3.66498441
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380940217492
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374505
 One electron energy                          -193.69357731
 Two electron energy                            84.31263709
 Virial ratio                                    3.66498440
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380940216551
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04374531
 One electron energy                          -193.69357760
 Two electron energy                            84.31263739
 Virial ratio                                    3.66498438
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327376147723
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04446859
 One electron energy                          -193.68397506
 Two electron energy                            84.35659892
 Virial ratio                                    3.66363239
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327376146882
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04446861
 One electron energy                          -193.68397505
 Two electron energy                            84.35659890
 Virial ratio                                    3.66363239
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327376139325
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04446889
 One electron energy                          -193.68397544
 Two electron energy                            84.35659930
 Virial ratio                                    3.66363237
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.288769141585
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64086035
 One electron energy                          -189.27632509
 Two electron energy                            79.98755595
 Virial ratio                                    3.82832132
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.288769135890
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64086024
 One electron energy                          -189.27632492
 Two electron energy                            79.98755578
 Virial ratio                                    3.82832133
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.288769132374
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64086013
 One electron energy                          -189.27632476
 Two electron energy                            79.98755563
 Virial ratio                                    3.82832134
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.288769130112
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64086006
 One electron energy                          -189.27632471
 Two electron energy                            79.98755558
 Virial ratio                                    3.82832134
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.288769125206
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64085994
 One electron energy                          -189.27632454
 Two electron energy                            79.98755541
 Virial ratio                                    3.82832135
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.288769121306
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64085985
 One electron energy                          -189.27632439
 Two electron energy                            79.98755527
 Virial ratio                                    3.82832136
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.288769112671
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.64085962
 One electron energy                          -189.27632413
 Two electron energy                            79.98755501
 Virial ratio                                    3.82832137
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.349775753441
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460946
 One electron energy                          -193.66080678
 Two electron energy                            84.31103102
 Virial ratio                                    3.66546781
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.349775751419
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460957
 One electron energy                          -193.66080695
 Two electron energy                            84.31103119
 Virial ratio                                    3.66546780
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.349775747654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460970
 One electron energy                          -193.66080712
 Two electron energy                            84.31103137
 Virial ratio                                    3.66546779
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.349775747275
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460975
 One electron energy                          -193.66080715
 Two electron energy                            84.31103140
 Virial ratio                                    3.66546779
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.349775743275
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460985
 One electron energy                          -193.66080730
 Two electron energy                            84.31103156
 Virial ratio                                    3.66546778
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.349775740918
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02460995
 One electron energy                          -193.66080745
 Two electron energy                            84.31103171
 Virial ratio                                    3.66546777
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.349775737528
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.02461018
 One electron energy                          -193.66080773
 Two electron energy                            84.31103199
 Virial ratio                                    3.66546776
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333261386644
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.11935402
 One electron energy                          -193.81383342
 Two electron energy                            84.48057203
 Virial ratio                                    3.65892459
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333261384850
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.11935416
 One electron energy                          -193.81383364
 Two electron energy                            84.48057226
 Virial ratio                                    3.65892458
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333261384687
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.11935421
 One electron energy                          -193.81383364
 Two electron energy                            84.48057225
 Virial ratio                                    3.65892457
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333261383856
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.11935421
 One electron energy                          -193.81383370
 Two electron energy                            84.48057231
 Virial ratio                                    3.65892457
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333261382773
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.11935435
 One electron energy                          -193.81383386
 Two electron energy                            84.48057248
 Virial ratio                                    3.65892457
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Doublet
 ==============================
 !MCSCF STATE 13.1 Doublet Energy             -109.305463901093
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.78906002
 One electron energy                          -193.20454622
 Two electron energy                            83.89908231
 Virial ratio                                    3.67977403
 
 !MCSCF STATE 13.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Doublet
 ==============================
 !MCSCF STATE 14.1 Doublet Energy             -109.305463900578
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.78906003
 One electron energy                          -193.20454619
 Two electron energy                            83.89908229
 Virial ratio                                    3.67977403
 
 !MCSCF STATE 14.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Doublet
 ==============================
 !MCSCF STATE 15.1 Doublet Energy             -109.305463891135
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.78906023
 One electron energy                          -193.20454644
 Two electron energy                            83.89908255
 Virial ratio                                    3.67977402
 
 !MCSCF STATE 15.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Doublet
 ==============================
 !MCSCF STATE 16.1 Doublet Energy             -109.294499534334
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738813
 One electron energy                          -193.55162196
 Two electron energy                            84.25712242
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 16.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Doublet
 ==============================
 !MCSCF STATE 17.1 Doublet Energy             -109.294499533924
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738814
 One electron energy                          -193.55162198
 Two electron energy                            84.25712245
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 17.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 18.1 Doublet
 ==============================
 !MCSCF STATE 18.1 Doublet Energy             -109.294499533168
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738811
 One electron energy                          -193.55162190
 Two electron energy                            84.25712236
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 18.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 19.1 Doublet
 ==============================
 !MCSCF STATE 19.1 Doublet Energy             -109.294499531310
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738822
 One electron energy                          -193.55162207
 Two electron energy                            84.25712254
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 19.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 20.1 Doublet
 ==============================
 !MCSCF STATE 20.1 Doublet Energy             -109.294499531225
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738803
 One electron energy                          -193.55162180
 Two electron energy                            84.25712227
 Virial ratio                                    3.66784154
 
 !MCSCF STATE 20.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 21.1 Doublet
 ==============================
 !MCSCF STATE 21.1 Doublet Energy             -109.294499527634
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738822
 One electron energy                          -193.55162206
 Two electron energy                            84.25712253
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 21.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 22.1 Doublet
 ==============================
 !MCSCF STATE 22.1 Doublet Energy             -109.294499527616
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738823
 One electron energy                          -193.55162208
 Two electron energy                            84.25712256
 Virial ratio                                    3.66784153
 
 !MCSCF STATE 22.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 23.1 Doublet
 ==============================
 !MCSCF STATE 23.1 Doublet Energy             -109.294499522479
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738855
 One electron energy                          -193.55162248
 Two electron energy                            84.25712296
 Virial ratio                                    3.66784151
 
 !MCSCF STATE 23.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 24.1 Doublet
 ==============================
 !MCSCF STATE 24.1 Doublet Energy             -109.294499522459
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96738855
 One electron energy                          -193.55162248
 Two electron energy                            84.25712296
 Virial ratio                                    3.66784151
 
 !MCSCF STATE 24.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 25.1 Doublet
 ==============================
 !MCSCF STATE 25.1 Doublet Energy             -109.266345919382
 Nuclear energy                                  0.00000000
 Kinetic energy                                 43.17686837
 One electron energy                          -197.63252193
 Two electron energy                            88.36617601
 Virial ratio                                    3.53066862
 
 !MCSCF STATE 25.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 26.1 Doublet
 ==============================
 !MCSCF STATE 26.1 Doublet Energy             -109.266345911350
 Nuclear energy                                  0.00000000
 Kinetic energy                                 43.17686847
 One electron energy                          -197.63252210
 Two electron energy                            88.36617619
 Virial ratio                                    3.53066861
 
 !MCSCF STATE 26.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 27.1 Doublet
 ==============================
 !MCSCF STATE 27.1 Doublet Energy             -109.266345909460
 Nuclear energy                                  0.00000000
 Kinetic energy                                 43.17686852
 One electron energy                          -197.63252214
 Two electron energy                            88.36617623
 Virial ratio                                    3.53066861
 
 !MCSCF STATE 27.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 28.1 Doublet
 ==============================
 !MCSCF STATE 28.1 Doublet Energy             -109.266345900719
 Nuclear energy                                  0.00000000
 Kinetic energy                                 43.17686863
 One electron energy                          -197.63252226
 Two electron energy                            88.36617636
 Virial ratio                                    3.53066861
 
 !MCSCF STATE 28.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 29.1 Doublet
 ==============================
 !MCSCF STATE 29.1 Doublet Energy             -109.266345876971
 Nuclear energy                                  0.00000000
 Kinetic energy                                 43.17686894
 One electron energy                          -197.63252269
 Two electron energy                            88.36617682
 Virial ratio                                    3.53066859
 
 !MCSCF STATE 29.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     2.436999013522
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     0.012471371529
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     1.693277648375
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.999999999705
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     8.306674500079
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     7.562991439987
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.987528025532
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999999993
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     1.000000000000
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.000000000009
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     4.334325419105
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     0.006205314783
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     6.055181874231
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     4.000000003945
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     3.944840025312
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     5.665658956557
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     3.993794868034
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.214843714633
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     0.010598838224
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     2.993079941995
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     3.999999957618
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     7.006873985702
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     6.785149386663
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.989400345368
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     3.996265610310
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000000001
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999999993906
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000000004778
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     0.003735870713
 !MCSCF expec    <13.1 Doublet|LXLX|13.1 Doublet>     0.999999999776
 !MCSCF expec    <14.1 Doublet|LXLX|14.1 Doublet>     0.999999999968
 !MCSCF expec    <15.1 Doublet|LXLX|15.1 Doublet>     0.000000000115
 !MCSCF expec    <16.1 Doublet|LXLX|16.1 Doublet>     0.111226283870
 !MCSCF expec    <17.1 Doublet|LXLX|17.1 Doublet>     1.019003082918
 !MCSCF expec    <18.1 Doublet|LXLX|18.1 Doublet>     1.023232117139
 !MCSCF expec    <19.1 Doublet|LXLX|19.1 Doublet>     4.005984808425
 !MCSCF expec    <20.1 Doublet|LXLX|20.1 Doublet>     3.894018266844
 !MCSCF expec    <21.1 Doublet|LXLX|21.1 Doublet>     8.976772304964
 !MCSCF expec    <22.1 Doublet|LXLX|22.1 Doublet>     8.981000384756
 !MCSCF expec    <23.1 Doublet|LXLX|23.1 Doublet>    15.994012198439
 !MCSCF expec    <24.1 Doublet|LXLX|24.1 Doublet>    15.994763626369
 !MCSCF expec    <25.1 Doublet|LXLX|25.1 Doublet>     1.000000000000
 !MCSCF expec    <26.1 Doublet|LXLX|26.1 Doublet>     1.000000002329
 !MCSCF expec    <27.1 Doublet|LXLX|27.1 Doublet>     1.528373072761
 !MCSCF expec    <28.1 Doublet|LXLX|28.1 Doublet>     2.471605809798
 !MCSCF expec    <29.1 Doublet|LXLX|29.1 Doublet>     3.999999999870
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     5.755885567938
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     6.425606038126
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     3.502948948809
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000000078
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     0.497023009292
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     4.244126642400
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.574383811436
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.000000000174
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     1.000000000000
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.999999999993
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.672977596774
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     6.301750298021
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     3.736000767848
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.999999998549
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     0.263993595468
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     6.327037351116
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     3.698254095373
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     4.829066931473
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     6.392897643065
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     3.925977348327
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     4.000000016445
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     0.074015537394
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     5.170940770079
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.607086943036
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     1.107662780627
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000000000010
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000000006269
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     3.999999971421
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     2.892315785189
 !MCSCF expec    <13.1 Doublet|LYLY|13.1 Doublet>     0.000000000449
 !MCSCF expec    <14.1 Doublet|LYLY|14.1 Doublet>     1.000000000000
 !MCSCF expec    <15.1 Doublet|LYLY|15.1 Doublet>     0.999999999886
 !MCSCF expec    <16.1 Doublet|LYLY|16.1 Doublet>    12.151302570761
 !MCSCF expec    <17.1 Doublet|LYLY|17.1 Doublet>    14.865007576180
 !MCSCF expec    <18.1 Doublet|LYLY|18.1 Doublet>     4.930012460021
 !MCSCF expec    <19.1 Doublet|LYLY|19.1 Doublet>     8.115149768057
 !MCSCF expec    <20.1 Doublet|LYLY|20.1 Doublet>     5.956587775202
 !MCSCF expec    <21.1 Doublet|LYLY|21.1 Doublet>     5.070028624664
 !MCSCF expec    <22.1 Doublet|LYLY|22.1 Doublet>     5.135024180740
 !MCSCF expec    <23.1 Doublet|LYLY|23.1 Doublet>     1.884822159323
 !MCSCF expec    <24.1 Doublet|LYLY|24.1 Doublet>     1.892185752851
 !MCSCF expec    <25.1 Doublet|LYLY|25.1 Doublet>     1.000000000000
 !MCSCF expec    <26.1 Doublet|LYLY|26.1 Doublet>     3.999999997058
 !MCSCF expec    <27.1 Doublet|LYLY|27.1 Doublet>     3.919017560175
 !MCSCF expec    <28.1 Doublet|LYLY|28.1 Doublet>     0.080988562064
 !MCSCF expec    <29.1 Doublet|LYLY|29.1 Doublet>     1.000000000053
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.807115418541
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     5.561922590346
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     6.803773402817
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000000218
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     3.196302490630
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     0.192881917613
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     4.438088163033
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999999834
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.000000000000
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999999
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     3.992696984122
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     5.692044387196
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     2.208817357922
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     3.999999997506
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     7.791166379220
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     0.007303692327
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     4.307951036594
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.956089353894
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     5.596503518711
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     5.080942709679
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     4.000000025938
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     4.919110476905
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     0.043909843259
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     4.403512711596
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     0.896071609064
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     3.999999999990
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     0.999999999826
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000023802
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.103948344098
 !MCSCF expec    <13.1 Doublet|LZLZ|13.1 Doublet>     0.999999999776
 !MCSCF expec    <14.1 Doublet|LZLZ|14.1 Doublet>     0.000000000034
 !MCSCF expec    <15.1 Doublet|LZLZ|15.1 Doublet>     1.000000000000
 !MCSCF expec    <16.1 Doublet|LZLZ|16.1 Doublet>     7.737471145369
 !MCSCF expec    <17.1 Doublet|LZLZ|17.1 Doublet>     4.115989340902
 !MCSCF expec    <18.1 Doublet|LZLZ|18.1 Doublet>    14.046755422840
 !MCSCF expec    <19.1 Doublet|LZLZ|19.1 Doublet>     7.878865423518
 !MCSCF expec    <20.1 Doublet|LZLZ|20.1 Doublet>    10.149393957954
 !MCSCF expec    <21.1 Doublet|LZLZ|21.1 Doublet>     5.953199070373
 !MCSCF expec    <22.1 Doublet|LZLZ|22.1 Doublet>     5.883975434504
 !MCSCF expec    <23.1 Doublet|LZLZ|23.1 Doublet>     2.121165642237
 !MCSCF expec    <24.1 Doublet|LZLZ|24.1 Doublet>     2.113050620780
 !MCSCF expec    <25.1 Doublet|LZLZ|25.1 Doublet>     4.000000000000
 !MCSCF expec    <26.1 Doublet|LZLZ|26.1 Doublet>     1.000000000614
 !MCSCF expec    <27.1 Doublet|LZLZ|27.1 Doublet>     0.552609367065
 !MCSCF expec    <28.1 Doublet|LZLZ|28.1 Doublet>     3.447405628138
 !MCSCF expec    <29.1 Doublet|LZLZ|29.1 Doublet>     1.000000000078
 
 !MCSCF expec      <1.1 Quartet|L**2|1.1 Quartet>    12.000000000000
 !MCSCF expec      <2.1 Quartet|L**2|2.1 Quartet>    12.000000000000
 !MCSCF expec      <3.1 Quartet|L**2|3.1 Quartet>    12.000000000000
 !MCSCF expec      <4.1 Quartet|L**2|4.1 Quartet>    12.000000000001
 !MCSCF expec      <5.1 Quartet|L**2|5.1 Quartet>    12.000000000000
 !MCSCF expec      <6.1 Quartet|L**2|6.1 Quartet>    12.000000000000
 !MCSCF expec      <7.1 Quartet|L**2|7.1 Quartet>    12.000000000000
 !MCSCF expec      <8.1 Quartet|L**2|8.1 Quartet>     2.000000000001
 !MCSCF expec      <9.1 Quartet|L**2|9.1 Quartet>     2.000000000001
 !MCSCF expec    <10.1 Quartet|L**2|10.1 Quartet>     2.000000000001
 !MCSCF expec    <11.1 Quartet|L**2|11.1 Quartet>    12.000000000000
 !MCSCF expec    <12.1 Quartet|L**2|12.1 Quartet>    12.000000000000
 !MCSCF expec    <13.1 Quartet|L**2|13.1 Quartet>    12.000000000000
 !MCSCF expec    <14.1 Quartet|L**2|14.1 Quartet>    12.000000000000
 !MCSCF expec    <15.1 Quartet|L**2|15.1 Quartet>    12.000000000000
 !MCSCF expec    <16.1 Quartet|L**2|16.1 Quartet>    12.000000000000
 !MCSCF expec    <17.1 Quartet|L**2|17.1 Quartet>    12.000000000000
 !MCSCF expec      <1.1 Doublet|L**2|1.1 Doublet>    12.000000000000
 !MCSCF expec      <2.1 Doublet|L**2|2.1 Doublet>    12.000000000000
 !MCSCF expec      <3.1 Doublet|L**2|3.1 Doublet>    12.000000000001
 !MCSCF expec      <4.1 Doublet|L**2|4.1 Doublet>    12.000000000001
 !MCSCF expec      <5.1 Doublet|L**2|5.1 Doublet>    12.000000000000
 !MCSCF expec      <6.1 Doublet|L**2|6.1 Doublet>    12.000000000000
 !MCSCF expec      <7.1 Doublet|L**2|7.1 Doublet>    12.000000000000
 !MCSCF expec      <8.1 Doublet|L**2|8.1 Doublet>     6.000000000001
 !MCSCF expec      <9.1 Doublet|L**2|9.1 Doublet>     6.000000000001
 !MCSCF expec    <10.1 Doublet|L**2|10.1 Doublet>     6.000000000001
 !MCSCF expec    <11.1 Doublet|L**2|11.1 Doublet>     6.000000000001
 !MCSCF expec    <12.1 Doublet|L**2|12.1 Doublet>     6.000000000001
 !MCSCF expec    <13.1 Doublet|L**2|13.1 Doublet>     2.000000000001
 !MCSCF expec    <14.1 Doublet|L**2|14.1 Doublet>     2.000000000001
 !MCSCF expec    <15.1 Doublet|L**2|15.1 Doublet>     2.000000000002
 !MCSCF expec    <16.1 Doublet|L**2|16.1 Doublet>    20.000000000001
 !MCSCF expec    <17.1 Doublet|L**2|17.1 Doublet>    20.000000000000
 !MCSCF expec    <18.1 Doublet|L**2|18.1 Doublet>    20.000000000000
 !MCSCF expec    <19.1 Doublet|L**2|19.1 Doublet>    20.000000000000
 !MCSCF expec    <20.1 Doublet|L**2|20.1 Doublet>    20.000000000000
 !MCSCF expec    <21.1 Doublet|L**2|21.1 Doublet>    20.000000000000
 !MCSCF expec    <22.1 Doublet|L**2|22.1 Doublet>    20.000000000000
 !MCSCF expec    <23.1 Doublet|L**2|23.1 Doublet>    19.999999999999
 !MCSCF expec    <24.1 Doublet|L**2|24.1 Doublet>    20.000000000000
 !MCSCF expec    <25.1 Doublet|L**2|25.1 Doublet>     6.000000000001
 !MCSCF expec    <26.1 Doublet|L**2|26.1 Doublet>     6.000000000001
 !MCSCF expec    <27.1 Doublet|L**2|27.1 Doublet>     6.000000000001
 !MCSCF expec    <28.1 Doublet|L**2|28.1 Doublet>     6.000000000001
 !MCSCF expec    <29.1 Doublet|L**2|29.1 Doublet>     6.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 5 6 4 1 1 3 4   2 5 6 1 4 2 3 5 6 4   2 3 5 6 1 912 7 814  15111310 4 2 6 3 5 1
                                        912 7 81415111310 4   2 6 5 3 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 3 2 1 3 2 1   3 2 4 6 7 9 8 510 1   3 2 4 6 8 7 910 5 1   3 2 410 6 8 5 7 9 3
                                        1 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99989    -3.73249     1  1  s    1.00165
    2.1     1.58707    -0.30840     1  1  d0   1.00334
    3.1     1.58707    -0.30840     1  1  d2-  1.00334
    4.1     1.58707    -0.30840     1  1  d2+  1.00334
    5.1     1.58707    -0.30840     1  1  d1-  1.00334
    6.1     1.58707    -0.30840     1  1  d1+  1.00334
    7.1     1.06576    -0.10789     1  2  s    0.98279
    1.2     1.99967    -2.36082     1  1  pz   1.00014
    2.2     1.99967    -2.36082     1  1  px   1.00014
    3.2     1.99967    -2.36082     1  1  py   1.00014
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a2a22a 222     -0.00000000     -0.00000254      0.00000109      0.99999812     -0.00000117     -0.00000017     -0.00000092
 22a2aa2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 222aaa2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2aa222a 222      0.97558971      0.00000008     -0.00000025      0.00000004     -0.00000340      0.21959272      0.00000000
 22aa22a 222      0.09820491     -0.00000015      0.00000051     -0.00000008      0.00000676     -0.43629702      0.00000000
 2a2aa22 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2aaa222 222      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a22aa 222      0.00000000      0.89303013      0.00000153      0.00000232      0.00001470     -0.00000031      0.04994262
 222a2aa 222     -0.00000000     -0.00000403      0.88925561     -0.00000086      0.09602865      0.00000252      0.00001654
 222aa2a 222     -0.00000000      0.17490075     -0.00001415      0.00000125     -0.00001276     -0.00000006      0.87715831
 2aa22a2 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2222aaa 222     -0.19640967      0.00000031     -0.00000102      0.00000015     -0.00001352      0.87259394     -0.00000000
 2a2a2a2 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22a2a2a 222      0.00000000     -0.00001379     -0.31529323      0.00000133      0.83701083      0.00001260      0.00000984
 2aa2a22 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2a22a2a 222      0.00000000      0.41461205      0.00000905      0.00000061      0.00001585     -0.00000015     -0.47759322
 2a222aa 222     -0.00000000     -0.00001029      0.33137726      0.00000027      0.53869065      0.00000873      0.00001523
 22aaa22 222     -0.00000000      0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa2a2 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22aa2 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000
 
 Energy:       -109.38094022   -109.38094022   -109.38094022   -109.38094022   -109.38094022   -109.38094022   -109.38094022

 State:                8               9              10              11              12              13              14
 2a2a22a 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22a2aa2 222      0.00000000      0.00000000     -0.00000000     -0.00000046      0.00000091     -0.00003364      0.99957711
 222aaa2 222      0.00000000     -0.00000002     -0.00000000      0.99866421     -0.00000004     -0.00000010      0.00000046
 2aa222a 222     -0.00000000     -0.00000005      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22aa22a 222     -0.00001152      0.89377393     -0.00000005      0.00000002     -0.00000000     -0.00000000      0.00000000
 2a2aa22 222      0.00000000     -0.00000000     -0.00007750      0.00000002      0.89335526      0.00000009     -0.00000077
 2aaa222 222     -0.00000000      0.00007750     -0.00000000      0.03820166      0.00000026      0.00000049     -0.00000006
 22a22aa 222      0.00000122     -0.00000003     -0.44688688     -0.00000000      0.00000000      0.00000000      0.00000000
 222a2aa 222     -0.44688693     -0.00000576     -0.00000122     -0.00000000     -0.00000000     -0.00000002     -0.00000000
 222aa2a 222     -0.00000122      0.00000003      0.44688701      0.00000000     -0.00000000     -0.00000000      0.00000000
 2aa22a2 222     -0.00000000      0.00000000      0.00007749      0.00000001      0.18924310     -0.00000045      0.00000110
 2222aaa 222     -0.00000576      0.44688703     -0.00000003      0.00000001      0.00000000      0.00000000      0.00000000
 2a2a2a2 222      0.00007749      0.00000000      0.00000000      0.00000012      0.00000003      0.22968497      0.00001898
 22a2a2a 222     -0.44688703     -0.00000576     -0.00000122      0.00000000     -0.00000000     -0.00000001     -0.00000000
 2aa2a22 222      0.00007747      0.00000000      0.00000000      0.00000001     -0.00000013      0.77918365      0.00002052
 2a22a2a 222     -0.00000211      0.00000004      0.77403099      0.00000000      0.00000000     -0.00000000      0.00000000
 2a222aa 222      0.77403095      0.00000997      0.00000211     -0.00000000      0.00000000      0.00000003      0.00000000
 22aaa22 222     -0.00013424     -0.00000000     -0.00000000      0.00000007     -0.00000005      0.58247066      0.00002280
 22aa2a2 222     -0.00000000      0.00000000      0.00013424      0.00000001      0.40651918      0.00000031     -0.00000108
 2a22aa2 222     -0.00000000      0.00015500     -0.00000000     -0.01910087     -0.00000013     -0.00000024      0.00000003
 
 Energy:       -109.32737615   -109.32737615   -109.32737614   -109.28876914   -109.28876914   -109.28876913   -109.28876913

 State:               15              16              17
 2a2a22a 222     -0.00000000      0.00000000     -0.00000000
 22a2aa2 222     -0.00001301      0.00000009     -0.00000146
 222aaa2 222     -0.00000018     -0.04271077     -0.00000000
 2aa222a 222     -0.00000000     -0.00000000      0.00000000
 22aa22a 222     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222      0.00000014     -0.00000026      0.03521384
 2aaa222 222      0.00000146      0.89323237      0.00000000
 22a22aa 222     -0.00000000     -0.00000000     -0.00000001
 222a2aa 222      0.00000000      0.00000000      0.00000000
 222aa2a 222      0.00000000     -0.00000000      0.00000000
 2aa22a2 222      0.00000508     -0.00000006      0.87379089
 2222aaa 222      0.00000000      0.00000000     -0.00000000
 2a2a2a2 222      0.86404184     -0.00000155     -0.00000492
 22a2a2a 222      0.00000001      0.00000000     -0.00000000
 2aa2a22 222     -0.43840202      0.00000029      0.00000298
 2a22a2a 222      0.00000000      0.00000000      0.00000001
 2a222aa 222     -0.00000000     -0.00000000     -0.00000000
 22aaa22 222      0.24574330     -0.00000072     -0.00000112
 22aa2a2 222     -0.00000285     -0.00000012     -0.48415273
 2a22aa2 222     -0.00000073     -0.44661630     -0.00000000
 
 Energy:       -109.28876913   -109.28876912   -109.28876911
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2222a20 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 22222a0 222      0.00000000      0.00000000      0.00000001      0.00000000     -0.00000001     -0.00000000      0.00000000
 22a2220 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000
 2a22220 222     -0.00000000      0.00000000      0.00000000     -0.00000001      0.00000000      0.00000000     -0.00000000
 222a220 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2a2a22b 222     -0.00000027     -0.00004612     -0.00020315      0.81376319     -0.00000770      0.00000190      0.00001578
 2aa222b 222      0.80928429      0.00000019     -0.00000001      0.00000007      0.00000014      0.08526150     -0.00000006
 22a22ab 222     -0.00000030      0.72688707     -0.00006321      0.00004046      0.00001190      0.00000134      0.03746639
 2222aab 222     -0.07626018     -0.00000140      0.00000151     -0.00000172     -0.00000061      0.72384584      0.00000069
 222a2ab 222      0.00000019      0.00006545      0.72294176      0.00017969     -0.08440183     -0.00000156     -0.00002354
 22a2a2b 222     -0.00000021     -0.00002265     -0.09901373     -0.00001790      0.72108578      0.00000079      0.00004323
 222aa2b 222      0.00000006      0.14544503      0.00000569     -0.00000559     -0.00003740     -0.00000040      0.71317191
 222202a 222     -0.00000000     -0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000000     -0.00000000
 22aa22b 222      0.03813016      0.00000070     -0.00000076      0.00000086      0.00000030     -0.36192300     -0.00000035
 22ab22a 222     -0.01906508     -0.00000035      0.00000038     -0.00000043     -0.00000015      0.18096149      0.00000017
 22ba22a 222     -0.01906508     -0.00000035      0.00000038     -0.00000043     -0.00000015      0.18096151      0.00000017
 2a22b2a 222      0.00000011     -0.16784775      0.00001989     -0.00001329     -0.00001423     -0.00000050      0.19505936
 2b22a2a 222      0.00000011     -0.16784779      0.00001989     -0.00001329     -0.00001423     -0.00000050      0.19505943
 220222a 222      0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 2a22a2b 222     -0.00000021      0.33569554     -0.00003978      0.00002658      0.00002847      0.00000100     -0.39011880
 2a222ab 222     -0.00000001      0.00002471      0.36022496      0.00009341      0.36758973     -0.00000045      0.00001137
 222220a 222     -0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000     -0.00000000
 22a22ba 222      0.00000015     -0.36344351      0.00003161     -0.00002023     -0.00000595     -0.00000067     -0.01873322
 22b22aa 222      0.00000015     -0.36344356      0.00003161     -0.00002023     -0.00000595     -0.00000067     -0.01873316
 2ba222a 222     -0.40464212     -0.00000009      0.00000001     -0.00000004     -0.00000007     -0.04263078      0.00000003
 2ab222a 222     -0.40464217     -0.00000009      0.00000001     -0.00000004     -0.00000007     -0.04263072      0.00000003
 202222a 222     -0.00000000      0.00000000      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000
 2b222aa 222      0.00000001     -0.00001236     -0.18011247     -0.00004670     -0.18379489      0.00000022     -0.00000568
 2a222ba 222      0.00000001     -0.00001236     -0.18011249     -0.00004670     -0.18379484      0.00000022     -0.00000568
 22a2b2a 222      0.00000011      0.00001132      0.04950684      0.00000895     -0.36054281     -0.00000039     -0.00002161
 22b2a2a 222      0.00000011      0.00001132      0.04950688      0.00000895     -0.36054296     -0.00000039     -0.00002161
 222022a 222      0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000000
 2222baa 222      0.03813007      0.00000070     -0.00000076      0.00000086      0.00000030     -0.36192286     -0.00000035
 2222aba 222      0.03813010      0.00000070     -0.00000076      0.00000086      0.00000030     -0.36192298     -0.00000035
 2a2b22a 222      0.00000014      0.00002306      0.00010158     -0.40688158      0.00000385     -0.00000095     -0.00000789
 2b2a22a 222      0.00000014      0.00002306      0.00010158     -0.40688162      0.00000385     -0.00000095     -0.00000789
 222b2aa 222     -0.00000009     -0.00003273     -0.36147086     -0.00008984      0.04220088      0.00000078      0.00001177
 222a2ba 222     -0.00000009     -0.00003273     -0.36147090     -0.00008984      0.04220095      0.00000078      0.00001177
 222ab2a 222     -0.00000003     -0.07272252     -0.00000284      0.00000279      0.00001870      0.00000020     -0.35658590
 222ba2a 222     -0.00000003     -0.07272251     -0.00000284      0.00000279      0.00001870      0.00000020     -0.35658601
 2baa222 222      0.00441698      0.00000008     -0.00000009      0.00000010      0.00000004     -0.04192496     -0.00000004
 2220a22 222     -0.00000001      0.02673892     -0.00000202      0.00000126     -0.00000023      0.00000004      0.01317710
 22220a2 222     -0.00000000      0.00000143      0.02086415      0.00000541      0.02129070     -0.00000003      0.00000066
 222aba2 222      0.00191260      0.00000004     -0.00000004      0.00000004      0.00000002     -0.01815404     -0.00000002
 222aab2 222     -0.00191260     -0.00000004      0.00000004     -0.00000004     -0.00000002      0.01815403      0.00000002
 2222a02 222     -0.00000001      0.01944342     -0.00000230      0.00000154      0.00000165      0.00000006     -0.02259558
 22a2022 222     -0.02152417      0.00000003     -0.00000004      0.00000004      0.00000001     -0.02062320     -0.00000002
 2022a22 222      0.00000002     -0.02916509      0.00000346     -0.00000231     -0.00000247     -0.00000009      0.03389336
 22202a2 222     -0.00000001     -0.00000185     -0.01539860     -0.00000360      0.02552430      0.00000005      0.00000184
 2202a22 222      0.00000000     -0.01701723      0.00000087     -0.00000049      0.00000105     -0.00000001     -0.02447489
 22a2202 222     -0.02534935     -0.00000004      0.00000004     -0.00000005     -0.00000002      0.01568487      0.00000002
 20222a2 222      0.00000000     -0.00000215     -0.03129619     -0.00000812     -0.03193605      0.00000004     -0.00000099
 22022a2 222      0.00000001      0.00000257      0.02583064      0.00000631     -0.01487893     -0.00000007     -0.00000151
 2a2ba22 222      0.00000001     -0.02526261      0.00000167     -0.00000101      0.00000074     -0.00000003     -0.02173838
 2ab2a22 222      0.00000001      0.00000255      0.02380372      0.00000572     -0.02332681     -0.00000007     -0.00000193
 2a2b2a2 222     -0.00000001     -0.00000255     -0.02380373     -0.00000572      0.02332681      0.00000007      0.00000193
 2ab22a2 222      0.00000001     -0.02526263      0.00000167     -0.00000101      0.00000074     -0.00000003     -0.02173838
 22a2ba2 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a20222 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222baa2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000
 20a2222 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001     -0.00000000
 2a2ab22 222     -0.00000001      0.02105055     -0.00000183      0.00000117      0.00000034      0.00000004      0.00108502
 2aa2b22 222     -0.00000001     -0.00000190     -0.02093629     -0.00000520      0.00244426      0.00000005      0.00000068
 2a2a2b2 222      0.00000001      0.00000066      0.00286743      0.00000052     -0.02088255     -0.00000002     -0.00000125
 2aba222 222     -0.00220849     -0.00000004      0.00000004     -0.00000005     -0.00000002      0.02096248      0.00000002
 2aab222 222     -0.00220849     -0.00000004      0.00000004     -0.00000005     -0.00000002      0.02096249      0.00000002
 2aa22b2 222      0.00000000      0.00421208      0.00000016     -0.00000016     -0.00000108     -0.00000001      0.02065336
 2ba22a2 222     -0.00000001      0.02105055     -0.00000183      0.00000117      0.00000034      0.00000004      0.00108502
 222a202 222      0.00000001      0.00000134      0.00000588     -0.02356647      0.00000022     -0.00000006     -0.00000046
 2ba2a22 222     -0.00000001     -0.00000066     -0.00286742     -0.00000052      0.02088255      0.00000002      0.00000125
 2a02222 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22aab22 222     -0.00000000      0.00000215      0.03129621      0.00000812      0.03193605     -0.00000004      0.00000099
 22aa2b2 222      0.00000002     -0.02916510      0.00000346     -0.00000231     -0.00000247     -0.00000009      0.03389336
 2b2a2a2 222      0.00000001      0.00000190      0.02093630      0.00000520     -0.00244426     -0.00000005     -0.00000068
 202a222 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22b2aa2 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222a022 222      0.00000001      0.00000134      0.00000588     -0.02356648      0.00000022     -0.00000006     -0.00000046
 22a2ab2 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 2b2aa22 222      0.00000000      0.00421207      0.00000016     -0.00000016     -0.00000108     -0.00000001      0.02065337
 2a22202 222     -0.00000001     -0.00000231     -0.00001019      0.04081833     -0.00000039      0.00000010      0.00000079
 2a22022 222      0.00000001      0.00000231      0.00001019     -0.04081834      0.00000039     -0.00000010     -0.00000079
 22ab2a2 222     -0.00000002      0.03646062     -0.00000317      0.00000203      0.00000060      0.00000007      0.00187931
 22aba22 222      0.00000001      0.00000114      0.00496652      0.00000090     -0.03616964     -0.00000004     -0.00000217
 
 Energy:       -109.34977575   -109.34977575   -109.34977575   -109.34977575   -109.34977574   -109.34977574   -109.34977574

 State:                8               9              10              11              12              13              14
 2222a20 222     -0.00001438     -0.00000008     -0.22186196      0.00000997     -0.00000040     -0.00000000     -0.00000000
 22222a0 222      0.00000464      0.00000040     -0.00000997     -0.22186206     -0.00002659     -0.00000001     -0.00000000
 22a2220 222      0.00000001      0.22186208     -0.00000008      0.00000040      0.00000015      0.00000000     -0.00000002
 2a22220 222     -0.19543791     -0.00000006      0.00001248     -0.00001668      0.10500849      0.00000000      0.00000000
 222a220 222     -0.10500846      0.00000014      0.00000716      0.00002122     -0.19543795     -0.00000000      0.00000000
 2a2a22b 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000003     -0.00000000     -0.00000000
 2aa222b 222      0.00000000      0.00000002     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000006
 22a22ab 222      0.00000000      0.00000000     -0.00000002      0.00000000      0.00000000     -0.00000515     -0.00000197
 2222aab 222      0.00000000     -0.00000006     -0.00000000      0.00000000      0.00000000     -0.00000515      0.34406567
 222a2ab 222     -0.00000000     -0.00000000      0.00000000      0.00000005      0.00000000     -0.34406555     -0.00000515
 22a2a2b 222      0.00000000     -0.00000000      0.00000000     -0.00000008     -0.00000000     -0.34406566     -0.00000515
 222aa2b 222      0.00000000      0.00000000      0.00000006      0.00000000      0.00000000      0.00000515      0.00000197
 222202a 222     -0.01573532     -0.00000035      0.00000009     -0.00006202      0.51474604     -0.00000000     -0.00000000
 22aa22b 222     -0.00000000      0.00000005      0.00000000      0.00000000      0.00000000     -0.00001030      0.68813117
 22ab22a 222      0.00000000     -0.00000007     -0.00000000     -0.00000000     -0.00000000      0.00000515     -0.34406550
 22ba22a 222      0.00000000      0.00000002      0.00000000     -0.00000000      0.00000000      0.00000515     -0.34406566
 2a22b2a 222      0.00001669      0.00000009      0.25749329     -0.00001157      0.00000047     -0.00000446     -0.00000171
 2b22a2a 222     -0.00001669     -0.00000009     -0.25749323      0.00001157     -0.00000047     -0.00000446     -0.00000171
 220222a 222      0.45365087      0.00000015     -0.00002896      0.00003871     -0.24374583     -0.00000000     -0.00000000
 2a22a2b 222     -0.00000000     -0.00000000     -0.00000006      0.00000000      0.00000000      0.00000893      0.00000341
 2a222ab 222      0.00000000     -0.00000000     -0.00000000     -0.00000004     -0.00000000      0.59593910      0.00000892
 222220a 222     -0.43791555      0.00000020      0.00002887      0.00002331     -0.27100021     -0.00000000      0.00000000
 22a22ba 222      0.00002891      0.00000016      0.44599146     -0.00002003      0.00000081      0.00000258      0.00000099
 22b22aa 222     -0.00002891     -0.00000016     -0.44599144      0.00002003     -0.00000081      0.00000258      0.00000099
 2ba222a 222     -0.00000002     -0.51498655      0.00000018     -0.00000094     -0.00000035      0.00000000      0.00000007
 2ab222a 222      0.00000002      0.51498653     -0.00000018      0.00000094      0.00000035      0.00000000     -0.00000001
 202222a 222     -0.45365083     -0.00000015      0.00002896     -0.00003871      0.24374582      0.00000000      0.00000000
 2b222aa 222      0.00000539      0.00000047     -0.00001157     -0.25749322     -0.00003086     -0.29796958     -0.00000446
 2a222ba 222     -0.00000539     -0.00000047      0.00001157      0.25749326      0.00003086     -0.29796952     -0.00000446
 22a2b2a 222     -0.00000934     -0.00000081      0.00002004      0.44599144      0.00005345      0.17203278      0.00000258
 22b2a2a 222      0.00000934      0.00000081     -0.00002004     -0.44599136     -0.00005345      0.17203288      0.00000258
 222022a 222      0.45365082      0.00000015     -0.00002896      0.00003871     -0.24374590      0.00000000     -0.00000000
 2222baa 222      0.00000002      0.44599143     -0.00000016      0.00000081      0.00000030      0.00000257     -0.17203280
 2222aba 222     -0.00000002     -0.44599137      0.00000016     -0.00000081     -0.00000030      0.00000257     -0.17203287
 2a2b22a 222     -0.24374584      0.00000032      0.00001662      0.00004926     -0.45365087      0.00000000      0.00000000
 2b2a22a 222      0.24374584     -0.00000032     -0.00001662     -0.00004926      0.45365084      0.00000000      0.00000000
 222b2aa 222      0.00000934      0.00000081     -0.00002004     -0.44599147     -0.00005345      0.17203271      0.00000258
 222a2ba 222     -0.00000934     -0.00000081      0.00002004      0.44599142      0.00005345      0.17203283      0.00000258
 222ab2a 222     -0.00002891     -0.00000016     -0.44599144      0.00002003     -0.00000081     -0.00000258     -0.00000099
 222ba2a 222      0.00002891      0.00000016      0.44599137     -0.00002003      0.00000081     -0.00000258     -0.00000099
 2baa222 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000275      0.18344022
 2220a22 222      0.00000351      0.00000002      0.05415969     -0.00000243      0.00000010      0.00000179      0.00000068
 22220a2 222     -0.00000113     -0.00000010      0.00000243      0.05415970      0.00000649     -0.11914798     -0.00000178
 222aba2 222      0.00000000      0.02561829     -0.00000001      0.00000005      0.00000002      0.00000178     -0.11914797
 222aab2 222      0.00000000      0.02561827     -0.00000001      0.00000005      0.00000002     -0.00000178      0.11914797
 2222a02 222      0.00000351      0.00000002      0.05415968     -0.00000243      0.00000010     -0.00000179     -0.00000068
 22a2022 222     -0.00000000     -0.05415970      0.00000002     -0.00000010     -0.00000004      0.00000178     -0.11914796
 2022a22 222      0.00000019      0.00000000      0.00292314     -0.00000013      0.00000001     -0.00000179     -0.00000068
 22202a2 222     -0.00000113     -0.00000010      0.00000243      0.05415967      0.00000649      0.11914795      0.00000178
 2202a22 222      0.00000351      0.00000002      0.05415967     -0.00000243      0.00000010      0.00000179      0.00000068
 22a2202 222     -0.00000000     -0.05415967      0.00000002     -0.00000010     -0.00000004     -0.00000178      0.11914792
 20222a2 222     -0.00000006     -0.00000001      0.00000013      0.00292314      0.00000035     -0.11914791     -0.00000178
 22022a2 222     -0.00000113     -0.00000010      0.00000243      0.05415966      0.00000649      0.11914791      0.00000178
 2a2ba22 222      0.00000288      0.00000002      0.04437216     -0.00000199      0.00000008     -0.00000172     -0.00000066
 2ab2a22 222      0.00000093      0.00000008     -0.00000199     -0.04437214     -0.00000532      0.11465016      0.00000172
 2a2b2a2 222      0.00000093      0.00000008     -0.00000199     -0.04437215     -0.00000532      0.11465013      0.00000172
 2ab22a2 222     -0.00000288     -0.00000002     -0.04437215      0.00000199     -0.00000008      0.00000172      0.00000066
 22a2ba2 222      0.05121262     -0.00000000     -0.00000332      0.00000088      0.00156553     -0.00000000     -0.00000000
 2a20222 222      0.07027627      0.00000002     -0.00000449      0.00000600     -0.03775933     -0.00000000      0.00000000
 222baa2 222     -0.00000000     -0.05123656      0.00000002     -0.00000009     -0.00000003     -0.00000000      0.00000001
 20a2222 222     -0.00000000     -0.07977793      0.00000003     -0.00000014     -0.00000005      0.00000000      0.00000002
 2a2ab22 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000137      0.00000053
 2aa2b22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.09172013     -0.00000137
 2a2a2b2 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.09172011     -0.00000137
 2aba222 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000137     -0.09172011
 2aab222 222      0.00000000     -0.00000001      0.00000000     -0.00000000      0.00000000      0.00000137     -0.09172011
 2aa22b2 222     -0.00000000      0.00000000      0.00000001      0.00000000      0.00000000     -0.00000137     -0.00000053
 2ba22a2 222      0.00000288      0.00000002      0.04437214     -0.00000199      0.00000008     -0.00000034     -0.00000013
 222a202 222      0.06472142     -0.00000002     -0.00000424     -0.00000185      0.02670759      0.00000000     -0.00000000
 2ba2a22 222     -0.00000093     -0.00000008      0.00000199      0.04437215      0.00000532     -0.02293003     -0.00000034
 2a02222 222      0.07027625      0.00000002     -0.00000449      0.00000600     -0.03775931     -0.00000000      0.00000000
 22aab22 222      0.00000107      0.00000009     -0.00000230     -0.05123656     -0.00000614     -0.07943196     -0.00000119
 22aa2b2 222      0.00000332      0.00000002      0.05123654     -0.00000230      0.00000009      0.00000119      0.00000045
 2b2a2a2 222     -0.00000093     -0.00000008      0.00000199      0.04437216      0.00000532     -0.02293002     -0.00000034
 202a222 222      0.03775932     -0.00000005     -0.00000257     -0.00000763      0.07027627      0.00000000     -0.00000000
 22b2aa2 222     -0.02425053      0.00000003      0.00000165      0.00000490     -0.04513420      0.00000000     -0.00000000
 222a022 222     -0.01345330     -0.00000005      0.00000075     -0.00000852      0.06871079     -0.00000000     -0.00000000
 22a2ab2 222     -0.02696209     -0.00000003      0.00000167     -0.00000579      0.04356867     -0.00000000      0.00000000
 2b2aa22 222     -0.00000288     -0.00000002     -0.04437216      0.00000199     -0.00000008      0.00000034      0.00000013
 2a22202 222      0.02357655     -0.00000003     -0.00000160     -0.00000402      0.03770382      0.00000000      0.00000000
 2a22022 222     -0.01842659      0.00000003      0.00000127      0.00000446     -0.04047092      0.00000000      0.00000000
 22ab2a2 222     -0.00000166     -0.00000001     -0.02561827      0.00000115     -0.00000005     -0.00000060     -0.00000023
 22aba22 222     -0.00000054     -0.00000005      0.00000115      0.02561828      0.00000307      0.03971599      0.00000059
 
 Energy:       -109.33326139   -109.33326138   -109.33326138   -109.33326138   -109.33326138   -109.30546390   -109.30546390

 State:               15              16              17              18              19              20              21
 2222a20 222      0.00000001      0.00000000     -0.00000000     -0.00000000      0.00000010     -0.00000000     -0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000002      0.00000000      0.00000000      0.00000000      0.00000000
 22a2220 222     -0.00000000      0.00000000     -0.00000000      0.00000006      0.00000000      0.00000000     -0.00000004
 2a22220 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000004     -0.00000000
 222a220 222     -0.00000000      0.00000003      0.00000000     -0.00000000      0.00000000      0.00000003      0.00000000
 2a2a22b 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2aa222b 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 22a22ab 222     -0.34406548      0.00000000      0.00000000      0.00000000     -0.00000002      0.00000000     -0.00000000
 2222aab 222     -0.00000197     -0.00000000      0.00000000     -0.00000005     -0.00000000      0.00000000      0.00000003
 222a2ab 222      0.00000515      0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2a2b 222      0.00000515      0.00000000     -0.00000002     -0.00000000      0.00000000      0.00000000     -0.00000000
 222aa2b 222      0.34406564     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 222202a 222      0.00000000     -0.11480471     -0.00003744     -0.00000020     -0.00000922     -0.03406665     -0.00000010
 22aa22b 222     -0.00000394     -0.00000000      0.00000000     -0.00000009     -0.00000000      0.00000000      0.00000000
 22ab22a 222      0.00000197      0.00000040     -0.00000267      0.63639285      0.00000003      0.00000007      0.28060193
 22ba22a 222      0.00000197     -0.00000040      0.00000267     -0.63639275     -0.00000003     -0.00000007     -0.28060193
 2a22b2a 222     -0.29796944      0.00000611      0.00000680      0.00000086     -0.24105353      0.00005921      0.00000019
 2b22a2a 222     -0.29796970     -0.00000611     -0.00000680     -0.00000086      0.24105350     -0.00005921     -0.00000019
 220222a 222      0.00000000      0.37601268      0.00011369     -0.00000034      0.00015258      0.59668172      0.00000006
 2a22a2b 222      0.59593914     -0.00000000     -0.00000000     -0.00000000      0.00000003     -0.00000000      0.00000000
 2a222ab 222     -0.00000893     -0.00000000      0.00000002     -0.00000000      0.00000000     -0.00000000      0.00000000
 222220a 222      0.00000000      0.55132303      0.00016547     -0.00000018     -0.00011586     -0.43988225     -0.00000026
 22a22ba 222      0.17203272      0.00000229     -0.00000228     -0.00000016      0.52562450     -0.00013583      0.00000033
 22b22aa 222      0.17203276     -0.00000229      0.00000228      0.00000016     -0.52562448      0.00013583     -0.00000033
 2ba222a 222      0.00000000     -0.00000002     -0.00000070      0.18369706      0.00000032      0.00000016     -0.41661690
 2ab222a 222     -0.00000000      0.00000002      0.00000070     -0.18369706     -0.00000032     -0.00000016      0.41661689
 202222a 222     -0.00000000     -0.32738879     -0.00009603      0.00000028      0.00009381      0.35546169      0.00000027
 2b222aa 222      0.00000446      0.00015317     -0.50312152     -0.00000144     -0.00000524      0.00000049      0.00000021
 2a222ba 222      0.00000446     -0.00015317      0.50312150      0.00000144      0.00000524     -0.00000049     -0.00000021
 22a2b2a 222     -0.00000258     -0.00004642      0.16169249      0.00000146     -0.00000294     -0.00000019      0.00000037
 22b2a2a 222     -0.00000258      0.00004642     -0.16169246     -0.00000146      0.00000294      0.00000019     -0.00000037
 222022a 222     -0.00000000     -0.48514223     -0.00014570      0.00000043     -0.00012131     -0.47819453      0.00000003
 2222baa 222      0.00000099     -0.00000002     -0.00000081      0.21211517      0.00000037      0.00000018     -0.48106774
 2222aba 222      0.00000099      0.00000002      0.00000081     -0.21211512     -0.00000037     -0.00000018      0.48106771
 2a2b22a 222     -0.00000000     -0.28844172     -0.00008786     -0.00000001      0.00004618      0.17572334      0.00000007
 2b2a22a 222     -0.00000000      0.28844172      0.00008786      0.00000001     -0.00004618     -0.17572334     -0.00000007
 222b2aa 222     -0.00000258     -0.00013485      0.45216976      0.00000229      0.00000009     -0.00000047      0.00000025
 222a2ba 222     -0.00000258      0.00013485     -0.45216974     -0.00000229     -0.00000009      0.00000047     -0.00000025
 222ab2a 222     -0.17203277      0.00000581      0.00000165      0.00000034      0.38645220     -0.00010165      0.00000044
 222ba2a 222     -0.17203286     -0.00000581     -0.00000165     -0.00000034     -0.38645220      0.00010165     -0.00000044
 2baa222 222     -0.00000105     -0.00000000     -0.00000000     -0.00000003     -0.00000000     -0.00000000     -0.00000000
 2220a22 222      0.11914799      0.00000012      0.00000062      0.00000007     -0.06672033      0.00001706     -0.00000002
 22220a2 222      0.00000179      0.00001775     -0.05830576     -0.00000017     -0.00000061      0.00000006      0.00000002
 222aba2 222      0.00000068     -0.00000004      0.00000019     -0.04258131      0.00000003      0.00000001     -0.07644267
 222aab2 222     -0.00000068      0.00000004     -0.00000035      0.08515790      0.00000004      0.00000002     -0.02011913
 2222a02 222     -0.11914796     -0.00000071     -0.00000079     -0.00000010      0.02793520     -0.00000686     -0.00000002
 22a2022 222      0.00000068      0.00000004     -0.00000023      0.05322551     -0.00000002     -0.00000000      0.05230221
 2022a22 222     -0.11914796     -0.00000035     -0.00000039     -0.00000005      0.01396758     -0.00000343     -0.00000001
 22202a2 222     -0.00000179     -0.00000422      0.01292512     -0.00000006      0.00000060     -0.00000001     -0.00000005
 2202a22 222      0.11914794      0.00000094      0.00000056      0.00000008      0.02481749     -0.00000677      0.00000006
 22a2202 222     -0.00000068     -0.00000004      0.00000031     -0.07451377     -0.00000002     -0.00000002     -0.00402131
 20222a2 222      0.00000179      0.00000888     -0.02915286     -0.00000008     -0.00000030      0.00000003      0.00000001
 22022a2 222     -0.00000179     -0.00002241      0.07453349      0.00000031      0.00000031     -0.00000008      0.00000001
 2a2ba22 222     -0.11465019     -0.00000006      0.00000049      0.00000005     -0.06897779      0.00001772     -0.00000003
 2ab2a22 222     -0.00000172      0.00002075     -0.06923246     -0.00000031     -0.00000019      0.00000007     -0.00000002
 2a2b2a2 222     -0.00000172     -0.00000026      0.00190680      0.00000012     -0.00000052     -0.00000001      0.00000005
 2ab22a2 222      0.11465013     -0.00000088     -0.00000042     -0.00000007     -0.03672094      0.00000980     -0.00000006
 22a2ba2 222      0.00000000     -0.01759448     -0.00000520     -0.00000002      0.00002694      0.10403157      0.00000003
 2a20222 222     -0.00000000     -0.01828173     -0.00000576      0.00000002     -0.00002493     -0.09661074     -0.00000003
 222baa2 222     -0.00000000      0.00000000      0.00000016     -0.04257659     -0.00000007     -0.00000004      0.09656181
 20a2222 222      0.00000000     -0.00000000     -0.00000016      0.04257654      0.00000007      0.00000004     -0.09656175
 2a2ab22 222      0.09172015     -0.00000095     -0.00000078     -0.00000011      0.00180002     -0.00000005     -0.00000005
 2aa2b22 222      0.00000137     -0.00001268      0.04112514      0.00000006      0.00000070     -0.00000004     -0.00000004
 2a2a2b2 222      0.00000137     -0.00002319      0.07669475      0.00000028      0.00000053     -0.00000008     -0.00000001
 2aba222 222      0.00000053     -0.00000005      0.00000031     -0.07375025     -0.00000000     -0.00000001     -0.03251839
 2aab222 222      0.00000053      0.00000005     -0.00000031      0.07375028      0.00000000      0.00000001      0.03251839
 2aa22b2 222     -0.09172010      0.00000048      0.00000081      0.00000010     -0.05464937      0.00001381      0.00000000
 2ba22a2 222     -0.02293003      0.00000040     -0.00000040     -0.00000003      0.09137031     -0.00002361      0.00000006
 222a202 222     -0.00000000     -0.08730819     -0.00002614      0.00000006     -0.00000322     -0.01402721      0.00000003
 2ba2a22 222      0.00000034     -0.00000807      0.02810732      0.00000025     -0.00000051     -0.00000003      0.00000007
 2a02222 222     -0.00000000      0.08151575      0.00002430     -0.00000007      0.00000681      0.02795449     -0.00000002
 22aab22 222      0.00000119     -0.00000888      0.02915286      0.00000008      0.00000030     -0.00000003     -0.00000001
 22aa2b2 222      0.07943194     -0.00000035     -0.00000039     -0.00000005      0.01396760     -0.00000343     -0.00000001
 2b2a2a2 222      0.00000034      0.00002344     -0.07860155     -0.00000040     -0.00000002      0.00000008     -0.00000004
 202a222 222     -0.00000000      0.06685384      0.00002036      0.00000000     -0.00001070     -0.04072845     -0.00000002
 22b2aa2 222     -0.00000000      0.06685387      0.00002036      0.00000000     -0.00001070     -0.04072844     -0.00000002
 222a022 222      0.00000000      0.05388128      0.00001596     -0.00000006      0.00000857      0.03439144     -0.00000002
 22a2ab2 222      0.00000000     -0.04925939     -0.00001517      0.00000001     -0.00001624     -0.06330313     -0.00000002
 2b2aa22 222      0.02293004      0.00000101      0.00000029      0.00000006      0.06717776     -0.00001767      0.00000008
 2a22202 222      0.00000000     -0.02196749     -0.00000633      0.00000003      0.00000751      0.02844946      0.00000002
 2a22022 222      0.00000000     -0.04126656     -0.00001221      0.00000003      0.00001060      0.04020677      0.00000003
 22ab2a2 222     -0.03971598     -0.00000023      0.00000023      0.00000002     -0.05275268      0.00001363     -0.00000003
 22aba22 222     -0.00000060     -0.00000466      0.01622778      0.00000015     -0.00000029     -0.00000002      0.00000004
 
 Energy:       -109.30546389   -109.29449953   -109.29449953   -109.29449953   -109.29449953   -109.29449953   -109.29449953

 State:               22              23              24              25              26              27              28
 2222a20 222      0.00000000      0.00000003     -0.00000000      0.00000004      0.00000400     -0.00000342      0.00000447
 22222a0 222     -0.00000004      0.00000000     -0.00000000     -0.00000001      0.96018485     -0.00001216     -0.00002433
 22a2220 222      0.00000000     -0.00000000      0.00000000      0.96018485      0.00000001     -0.00000001      0.00000001
 2a22220 222     -0.00000000      0.00000000      0.00000006      0.00000000      0.00002033      0.89139482      0.35688968
 222a220 222      0.00000000     -0.00000000     -0.00000005     -0.00000001      0.00001806     -0.35688966      0.89139481
 2a2a22b 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2aa222b 222      0.00000000     -0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000000     -0.00000000
 22a22ab 222     -0.00000000      0.00000005     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2222aab 222     -0.00000000      0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 222a2ab 222     -0.00000003     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22a2a2b 222     -0.00000006     -0.00000000     -0.00000000      0.00000000     -0.00000001      0.00000000     -0.00000000
 222aa2b 222      0.00000000     -0.00000006      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 222202a 222     -0.00000688      0.00263697      0.69513062     -0.00000000      0.00000073     -0.10003151      0.07866108
 22aa22b 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 22ab22a 222     -0.00000121     -0.00000099      0.00000029     -0.00000001     -0.00000000      0.00000000      0.00000000
 22ba22a 222      0.00000121      0.00000099     -0.00000029      0.00000001      0.00000000     -0.00000000     -0.00000000
 2a22b2a 222     -0.00000748      0.59709014     -0.00226434      0.00000000      0.00000026     -0.00000023      0.00000030
 2b22a2a 222      0.00000748     -0.59709002      0.00226434     -0.00000000     -0.00000026      0.00000023     -0.00000030
 220222a 222     -0.00000177      0.00004338      0.01181225      0.00000000      0.00000269      0.11813818      0.04729919
 2a22a2b 222      0.00000000     -0.00000012      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a222ab 222      0.00000005      0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000000      0.00000000
 222220a 222     -0.00000237     -0.00004685     -0.01003339      0.00000000     -0.00000342     -0.01810673     -0.12596030
 22a22ba 222      0.00000375      0.01174126     -0.00004385      0.00000000      0.00000046     -0.00000039      0.00000051
 22b22aa 222     -0.00000375     -0.01174131      0.00004385     -0.00000000     -0.00000046      0.00000039     -0.00000051
 2ba222a 222      0.00000000     -0.00000000      0.00000000      0.12725505      0.00000000     -0.00000000      0.00000000
 2ab222a 222     -0.00000000      0.00000000     -0.00000000     -0.12725505     -0.00000000      0.00000000     -0.00000000
 202222a 222      0.00000694     -0.00194259     -0.51382291     -0.00000000     -0.00000269     -0.11813814     -0.04729927
 2b222aa 222      0.40186715      0.00000865      0.00000217      0.00000000     -0.06362751      0.00000081      0.00000161
 2a222ba 222     -0.40186720     -0.00000865     -0.00000217     -0.00000000      0.06362752     -0.00000081     -0.00000161
 22a2b2a 222      0.50027450      0.00000326      0.00000597     -0.00000000      0.11020616     -0.00000140     -0.00000279
 22b2a2a 222     -0.50027443     -0.00000326     -0.00000597      0.00000000     -0.11020615      0.00000140      0.00000279
 222022a 222      0.00000409     -0.00069091     -0.18308652      0.00000000      0.00000269      0.11813825      0.04729923
 2222baa 222      0.00000000     -0.00000000      0.00000000     -0.11020618     -0.00000000      0.00000000     -0.00000000
 2222aba 222     -0.00000000      0.00000000     -0.00000000      0.11020617      0.00000000     -0.00000000      0.00000000
 2a2b22a 222     -0.00000195      0.00116213      0.30534499      0.00000000     -0.00000239      0.04729923     -0.11813819
 2b2a22a 222      0.00000195     -0.00116213     -0.30534499     -0.00000000      0.00000239     -0.04729924      0.11813819
 222b2aa 222      0.26825637     -0.00000173      0.00000472      0.00000000     -0.11020612      0.00000140      0.00000279
 222a2ba 222     -0.26825633      0.00000173     -0.00000472     -0.00000000      0.11020612     -0.00000140     -0.00000279
 222ab2a 222     -0.00000057      0.35647143     -0.00135117     -0.00000000     -0.00000046      0.00000039     -0.00000051
 222ba2a 222      0.00000057     -0.35647137      0.00135117      0.00000000      0.00000046     -0.00000039      0.00000051
 2baa222 222      0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2220a22 222     -0.00000081      0.03341938     -0.00012680     -0.00000000     -0.00000031      0.00000026     -0.00000034
 22220a2 222      0.04657158      0.00000100      0.00000025      0.00000000     -0.07355877      0.00000093      0.00000186
 222aba2 222      0.00000012      0.00000010     -0.00000003      0.01031842      0.00000000     -0.00000000      0.00000000
 222aab2 222     -0.00000012     -0.00000010      0.00000003      0.01031840      0.00000000     -0.00000000      0.00000000
 2222a02 222      0.00000087     -0.06919555      0.00026241     -0.00000000     -0.00000031      0.00000026     -0.00000034
 22a2022 222     -0.00000012     -0.00000010      0.00000003     -0.07355876     -0.00000000      0.00000000     -0.00000000
 2022a22 222      0.00000043     -0.03459776      0.00013120     -0.00000000     -0.00000022      0.00000019     -0.00000025
 22202a2 222     -0.07349429     -0.00000083     -0.00000072      0.00000000     -0.07355868      0.00000093      0.00000186
 2202a22 222     -0.00000049      0.07037391     -0.00026681     -0.00000000     -0.00000031      0.00000026     -0.00000034
 22a2202 222      0.00000012      0.00000010     -0.00000003     -0.07355863     -0.00000000      0.00000000     -0.00000000
 20222a2 222      0.02328578      0.00000050      0.00000013      0.00000000     -0.05292184      0.00000067      0.00000134
 22022a2 222      0.00363696     -0.00000068      0.00000035      0.00000000     -0.07355861      0.00000093      0.00000186
 2a2ba22 222     -0.00000068      0.01861440     -0.00007067     -0.00000000     -0.00000007      0.00000006     -0.00000008
 2ab2a22 222     -0.01764361      0.00000049     -0.00000047     -0.00000000      0.01787200     -0.00000023     -0.00000045
 2a2b2a2 222      0.07141987      0.00000067      0.00000076     -0.00000000      0.01787201     -0.00000023     -0.00000045
 2ab22a2 222      0.00000032     -0.06128581      0.00023234      0.00000000      0.00000007     -0.00000006      0.00000008
 22a2ba2 222      0.00000006      0.00000906      0.00219247      0.00000000     -0.00000057     -0.01275640     -0.01622202
 2a20222 222     -0.00000033      0.00014505      0.03832838     -0.00000000     -0.00000178     -0.07786794     -0.03117616
 222baa2 222     -0.00000000      0.00000000     -0.00000000     -0.02063682     -0.00000000      0.00000000     -0.00000000
 20a2222 222      0.00000000     -0.00000000      0.00000000     -0.08387704     -0.00000000      0.00000000     -0.00000000
 2a2ab22 222      0.00000078     -0.08058055      0.00030555      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa2b22 222     -0.06932008     -0.00000106     -0.00000056     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2a2b2 222     -0.02478833     -0.00000097      0.00000006      0.00000000      0.00000000      0.00000000     -0.00000000
 2aba222 222      0.00000014      0.00000011     -0.00000003      0.00000000      0.00000000     -0.00000000     -0.00000000
 2aab222 222     -0.00000014     -0.00000011      0.00000003     -0.00000001      0.00000000      0.00000000      0.00000000
 2aa22b2 222     -0.00000097      0.05924479     -0.00022471      0.00000000     -0.00000000      0.00000000     -0.00000000
 2ba22a2 222      0.00000065      0.00204102     -0.00000762     -0.00000000     -0.00000007      0.00000006     -0.00000008
 222a202 222      0.00000076     -0.00013198     -0.03506086      0.00000000     -0.00000176      0.01074928     -0.07493157
 2ba2a22 222      0.08696370      0.00000057      0.00000104      0.00000000     -0.01787200      0.00000023      0.00000045
 2a02222 222     -0.00000101      0.00023015      0.06091478     -0.00000000     -0.00000178     -0.07786786     -0.03117614
 22aab22 222     -0.02328582     -0.00000050     -0.00000013     -0.00000000      0.02063684     -0.00000026     -0.00000052
 22aa2b2 222      0.00000043     -0.03459780      0.00013121     -0.00000000     -0.00000009      0.00000007     -0.00000010
 2b2a2a2 222     -0.04663153      0.00000030     -0.00000082      0.00000000     -0.01787202      0.00000023      0.00000045
 202a222 222      0.00000045     -0.00026935     -0.07077163      0.00000000     -0.00000158      0.03117615     -0.07786792
 22b2aa2 222      0.00000045     -0.00026935     -0.07077164     -0.00000000      0.00000039     -0.00767046      0.01915836
 222a022 222     -0.00000099      0.00026665      0.07044672      0.00000000     -0.00000101      0.04393259     -0.06164602
 22a2ab2 222     -0.00000051      0.00026030      0.06857916      0.00000000      0.00000018      0.02042685     -0.00293634
 2b2aa22 222     -0.00000010      0.06196615     -0.00023488      0.00000000      0.00000007     -0.00000006      0.00000008
 2a22202 222      0.00000074     -0.00022648     -0.05983659      0.00000000     -0.00000146     -0.04248757     -0.03626207
 2a22022 222      0.00000060     -0.00014873     -0.03940660     -0.00000000     -0.00000078     -0.05577329     -0.00307882
 22ab2a2 222     -0.00000038     -0.00117837      0.00000440      0.00000000      0.00000004     -0.00000004      0.00000005
 22aba22 222      0.05020854      0.00000033      0.00000060      0.00000000     -0.01031842      0.00000013      0.00000026
 
 Energy:       -109.29449953   -109.29449952   -109.29449952   -109.26634592   -109.26634591   -109.26634591   -109.26634590

 State:               29
 2222a20 222      0.96018486
 22222a0 222     -0.00000400
 22a2220 222     -0.00000004
 2a22220 222      0.00000152
 222a220 222     -0.00000542
 2a2a22b 222      0.00000000
 2aa222b 222      0.00000000
 22a22ab 222     -0.00000000
 2222aab 222     -0.00000000
 222a2ab 222     -0.00000000
 22a2a2b 222     -0.00000000
 222aa2b 222      0.00000000
 222202a 222     -0.00000072
 22aa22b 222     -0.00000000
 22ab22a 222      0.00000000
 22ba22a 222     -0.00000000
 2a22b2a 222      0.06362753
 2b22a2a 222     -0.06362751
 220222a 222      0.00000020
 2a22a2b 222     -0.00000001
 2a222ab 222     -0.00000000
 222220a 222      0.00000052
 22a22ba 222      0.11020604
 22b22aa 222     -0.11020604
 2ba222a 222     -0.00000001
 2ab222a 222      0.00000001
 202222a 222     -0.00000020
 2b222aa 222      0.00000026
 2a222ba 222     -0.00000026
 22a2b2a 222     -0.00000046
 22b2a2a 222      0.00000046
 222022a 222      0.00000020
 2222baa 222      0.00000000
 2222aba 222     -0.00000000
 2a2b22a 222      0.00000072
 2b2a22a 222     -0.00000072
 222b2aa 222      0.00000046
 222a2ba 222     -0.00000046
 222ab2a 222     -0.11020614
 222ba2a 222      0.11020614
 2baa222 222      0.00000000
 2220a22 222     -0.07355875
 22220a2 222      0.00000031
 222aba2 222     -0.00000000
 222aab2 222     -0.00000000
 2222a02 222     -0.07355872
 22a2022 222      0.00000000
 2022a22 222     -0.05292185
 22202a2 222      0.00000031
 2202a22 222     -0.07355869
 22a2202 222      0.00000000
 20222a2 222      0.00000022
 22022a2 222      0.00000031
 2a2ba22 222     -0.01787204
 2ab2a22 222     -0.00000007
 2a2b2a2 222     -0.00000007
 2ab22a2 222      0.01787203
 22a2ba2 222      0.00000003
 2a20222 222     -0.00000013
 222baa2 222      0.00000000
 20a2222 222      0.00000000
 2a2ab22 222      0.00000000
 2aa2b22 222      0.00000000
 2a2a2b2 222     -0.00000000
 2aba222 222     -0.00000000
 2aab222 222      0.00000000
 2aa22b2 222      0.00000001
 2ba22a2 222     -0.01787204
 222a202 222      0.00000039
 2ba2a22 222      0.00000007
 2a02222 222     -0.00000013
 22aab22 222     -0.00000009
 22aa2b2 222     -0.02063686
 2b2a2a2 222      0.00000007
 202a222 222      0.00000047
 22b2aa2 222     -0.00000012
 222a022 222      0.00000044
 22a2ab2 222      0.00000009
 2b2aa22 222      0.01787204
 2a22202 222      0.00000002
 2a22022 222     -0.00000018
 22ab2a2 222      0.01031843
 22aba22 222      0.00000004
 
 Energy:       -109.26634588
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.49       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         5.78      4.10      1.35
 REAL TIME  *         7.00 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3809402   12.0
    -109.3273761    2.0
    -109.3273761    2.0
    -109.3273761    2.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.2887691   12.0
    -109.3497758   12.0
    -109.3497758   12.0
    -109.3497757   12.0
    -109.3497757   12.0
    -109.3497757   12.0
    -109.3497757   12.0
    -109.3497757   12.0
    -109.3332614    6.0
    -109.3332614    6.0
    -109.3332614    6.0
    -109.3332614    6.0
    -109.3332614    6.0
    -109.3054639    2.0
    -109.3054639    2.0
    -109.3054639    2.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2944995   20.0
    -109.2663459    6.0
    -109.2663459    6.0
    -109.2663459    6.0
    -109.2663459    6.0
    -109.2663459    6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17
 Number of reference states: 17  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17

 Reference symmetry:                   1   Quartet 
 Number of electrons:                 17
 Maximum number of shells:             3
 Maximum number of spin couplings:    14

 Reference space:       56 conf       56 CSFs
 N elec internal:      120 conf      120 CSFs
 N-1 el internal:      570 conf     1200 CSFs
 N-2 el internal:     1260 conf     7056 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Valence orbitals related to previous ones by unitary transformation. Operators transformed.


 Number of p-space configurations:  20
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.1113041E-14. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.2408070E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.5684380E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.3306007E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.38094022
     2      -109.38094022
     3      -109.38094022
     4      -109.38094022
     5      -109.38094022
     6      -109.38094022
     7      -109.38094022
     8      -109.32737615
     9      -109.32737615
    10      -109.32737614
    11      -109.28876914
    12      -109.28876914
    13      -109.28876913
    14      -109.28876913
    15      -109.28876913
    16      -109.28876912
    17      -109.28876911

 Number of blocks in overlap matrix:    56   Smallest eigenvalue:  0.10D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  831650 words, CPU-Time:      0.17 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  564595 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38094022     0.00000000    -0.67490499  0.25D-01  0.10D+00     3.77
    1     2     2     1.00000000     0.00000000  -109.38094022    -0.00000000    -0.67308946  0.25D-01  0.10D+00     3.77
    1     3     3     1.00000000     0.00000000  -109.38094022     0.00000000    -0.67390653  0.25D-01  0.10D+00     3.77
    1     4     4     1.00000000     0.00000000  -109.38094022     0.00000000    -0.67551679  0.25D-01  0.10D+00     3.77
    1     5     5     1.00000000     0.00000000  -109.38094022    -0.00000000    -0.67312291  0.25D-01  0.10D+00     3.77
    1     6     6     1.00000000     0.00000000  -109.38094022    -0.00000000    -0.67240571  0.25D-01  0.99D-01     3.77
    1     7     7     1.00000000     0.00000000  -109.38094022     0.00000000    -0.67364445  0.25D-01  0.10D+00     3.77
    1     8     8     1.00000000     0.00000000  -109.32737615     0.00000000    -0.68443386  0.30D-01  0.10D+00     3.77
    1     9     9     1.00000000     0.00000000  -109.32737615     0.00000000    -0.68532914  0.30D-01  0.10D+00     3.77
    1    10    10     1.00000000     0.00000000  -109.32737614     0.00000000    -0.68429093  0.30D-01  0.10D+00     3.77
    1    11    11     1.00000000     0.00000000  -109.28876914    -0.00000000    -0.70622906  0.88D-01  0.87D-01     3.77
    1    12    12     1.00000000     0.00000000  -109.28876914     0.00000000    -0.70238509  0.86D-01  0.86D-01     3.77
    1    13    13     1.00000000     0.00000000  -109.28876913     0.00000000    -0.70345012  0.86D-01  0.87D-01     3.77
    1    14    14     1.00000000     0.00000000  -109.28876913     0.00000000    -0.70427247  0.88D-01  0.86D-01     3.77
    1    15    15     1.00000000     0.00000000  -109.28876913    -0.00000000    -0.70251701  0.87D-01  0.86D-01     3.77
    1    16    16     1.00000000     0.00000000  -109.28876912     0.00000000    -0.70215281  0.86D-01  0.86D-01     3.77
    1    17    17     1.00000000     0.00000000  -109.28876911     0.00000000    -0.70385429  0.86D-01  0.87D-01     3.77
    2     1     1     1.08687607    -0.56204469  -109.94298492    -0.56204469    -0.01903420  0.13D-02  0.26D-02    59.14
    2     2     2     1.08684139    -0.56188565  -109.94282588    -0.56188565    -0.01909747  0.13D-02  0.26D-02    59.14
    2     3     3     1.08674632    -0.56164154  -109.94258177    -0.56164154    -0.01912082  0.13D-02  0.26D-02    59.14
    2     4     4     1.08671464    -0.56147604  -109.94241626    -0.56147604    -0.01920297  0.13D-02  0.26D-02    59.14
    2     5     5     1.08664382    -0.56132117  -109.94226139    -0.56132117    -0.01920975  0.13D-02  0.26D-02    59.14
    2     6     6     1.08664348    -0.56124322  -109.94218344    -0.56124322    -0.01925207  0.13D-02  0.26D-02    59.14
    2     7     7     1.08658157    -0.56104470  -109.94198491    -0.56104470    -0.01929776  0.13D-02  0.26D-02    59.14
    2     8     8     1.09211672    -0.57181501  -109.89919116    -0.57181501    -0.01882748  0.15D-02  0.27D-02    59.14
    2     9     9     1.09203093    -0.57144388  -109.89882003    -0.57144388    -0.01895986  0.15D-02  0.27D-02    59.14
    2    10    10     1.09203018    -0.57142119  -109.89879733    -0.57142119    -0.01898038  0.15D-02  0.27D-02    59.14
    2    11    11     1.11341955    -0.57049679  -109.85926594    -0.57049679    -0.03036225  0.45D-02  0.37D-02    59.14
    2    12    12     1.11337833    -0.57036060  -109.85912974    -0.57036060    -0.03038914  0.45D-02  0.37D-02    59.14
    2    13    13     1.11437943    -0.57026351  -109.85903264    -0.57026351    -0.03104324  0.49D-02  0.37D-02    59.14
    2    14    14     1.11348909    -0.57000548  -109.85877461    -0.57000548    -0.03061483  0.45D-02  0.37D-02    59.14
    2    15    15     1.11357802    -0.56972027  -109.85848939    -0.56972027    -0.03077482  0.46D-02  0.37D-02    59.14
    2    16    16     1.11364186    -0.56962645  -109.85839557    -0.56962645    -0.03087105  0.46D-02  0.37D-02    59.14
    2    17    17     1.11383631    -0.56931231  -109.85808142    -0.56931231    -0.03107553  0.49D-02  0.37D-02    59.14
    3     1     1     1.08439658    -0.58240025  -109.96334048    -0.02035556    -0.00134936  0.41D-04  0.22D-03   111.65
    3     2     2     1.08436002    -0.58236400  -109.96330423    -0.02047835    -0.00136968  0.41D-04  0.22D-03   111.65
    3     3     3     1.08423378    -0.58224146  -109.96318168    -0.02059992    -0.00141720  0.42D-04  0.22D-03   111.65
    3     4     4     1.08419916    -0.58220535  -109.96314557    -0.02072931    -0.00144155  0.42D-04  0.23D-03   111.65
    3     5     5     1.08412583    -0.58212694  -109.96306716    -0.02080577    -0.00146684  0.44D-04  0.23D-03   111.65
    3     6     6     1.08412083    -0.58211527  -109.96305549    -0.02087205    -0.00147852  0.44D-04  0.23D-03   111.65
    3     7     7     1.08404982    -0.58202815  -109.96296836    -0.02098345    -0.00151540  0.45D-04  0.23D-03   111.65
    3     8     8     1.08852100    -0.59208519  -109.91946134    -0.02027018    -0.00137669  0.62D-04  0.22D-03   111.65
    3     9     9     1.08839815    -0.59195476  -109.91933091    -0.02051088    -0.00143880  0.66D-04  0.23D-03   111.65
    3    10    10     1.08839224    -0.59194659  -109.91932273    -0.02052540    -0.00143653  0.66D-04  0.23D-03   111.65
    3    11    11     1.10067764    -0.60022621  -109.88899535    -0.02972942    -0.00267799  0.17D-03  0.45D-03   111.65
    3    12    12     1.10090501    -0.60021816  -109.88898730    -0.02985756    -0.00264003  0.17D-03  0.45D-03   111.65
    3    13    13     1.10065902    -0.60012403  -109.88889316    -0.02986052    -0.00277587  0.18D-03  0.47D-03   111.65
    3    14    14     1.10053861    -0.60008265  -109.88885178    -0.03007718    -0.00269378  0.17D-03  0.45D-03   111.65
    3    15    15     1.10045829    -0.59992861  -109.88869774    -0.03020835    -0.00280706  0.18D-03  0.47D-03   111.65
    3    16    16     1.10048013    -0.59992478  -109.88869390    -0.03029833    -0.00281537  0.18D-03  0.47D-03   111.65
    3    17    17     1.10005895    -0.59947737  -109.88824648    -0.03016506    -0.00279747  0.18D-03  0.46D-03   111.65
    4     1     1     1.08772021    -0.58437417  -109.96531440    -0.00197392    -0.00021463  0.76D-05  0.34D-04   164.22
    4     2     2     1.08772223    -0.58437285  -109.96531307    -0.00200884    -0.00021596  0.77D-05  0.34D-04   164.22
    4     3     3     1.08767930    -0.58434359  -109.96528381    -0.00210213    -0.00022696  0.80D-05  0.36D-04   164.22
    4     4     4     1.08766979    -0.58434123  -109.96528145    -0.00213588    -0.00023040  0.80D-05  0.36D-04   164.22
    4     5     5     1.08765047    -0.58432317  -109.96526339    -0.00219623    -0.00023602  0.85D-05  0.36D-04   164.22
    4     6     6     1.08764421    -0.58432025  -109.96526047    -0.00220498    -0.00023527  0.85D-05  0.36D-04   164.22
    4     7     7     1.08761660    -0.58430295  -109.96524317    -0.00227480    -0.00024499  0.87D-05  0.37D-04   164.22
    4     8     8     1.09167522    -0.59410018  -109.92147632    -0.00201499    -0.00022218  0.15D-04  0.34D-04   164.22
    4     9     9     1.09161427    -0.59407161  -109.92144776    -0.00211685    -0.00023642  0.16D-04  0.36D-04   164.22
    4    10    10     1.09160258    -0.59406410  -109.92144024    -0.00211750    -0.00023880  0.16D-04  0.36D-04   164.22
    4    11    11     1.10755249    -0.60427767  -109.89304681    -0.00405145    -0.00060646  0.54D-04  0.87D-04   164.22
    4    12    12     1.10748023    -0.60425643  -109.89302557    -0.00403827    -0.00060534  0.54D-04  0.87D-04   164.22
    4    13    13     1.10734836    -0.60418343  -109.89295257    -0.00405940    -0.00064026  0.57D-04  0.91D-04   164.22
    4    14    14     1.10731920    -0.60417656  -109.89294569    -0.00409391    -0.00064250  0.57D-04  0.91D-04   164.22
    4    15    15     1.10729336    -0.60417208  -109.89294120    -0.00424346    -0.00063241  0.54D-04  0.93D-04   164.22
    4    16    16     1.10728132    -0.60416660  -109.89293572    -0.00424182    -0.00063655  0.56D-04  0.91D-04   164.22
    4    17    17     1.10666385    -0.60383231  -109.89260142    -0.00435494    -0.00075063  0.64D-04  0.10D-03   164.22
    5     1     1     1.08893342    -0.58465548  -109.96559570    -0.00028131    -0.00004434  0.12D-05  0.82D-05   217.00
    5     2     2     1.08893796    -0.58465525  -109.96559547    -0.00028240    -0.00004423  0.12D-05  0.82D-05   217.00
    5     3     3     1.08891176    -0.58464610  -109.96558632    -0.00030251    -0.00004733  0.13D-05  0.84D-05   217.00
    5     4     4     1.08890222    -0.58464586  -109.96558608    -0.00030463    -0.00004813  0.13D-05  0.87D-05   217.00
    5     5     5     1.08889202    -0.58463878  -109.96557900    -0.00031561    -0.00005040  0.14D-05  0.89D-05   217.00
    5     6     6     1.08889427    -0.58463746  -109.96557768    -0.00031721    -0.00005035  0.14D-05  0.88D-05   217.00
    5     7     7     1.08887252    -0.58463197  -109.96557219    -0.00032902    -0.00005318  0.15D-05  0.93D-05   217.00
    5     8     8     1.09293094    -0.59439101  -109.92176716    -0.00029084    -0.00004528  0.38D-05  0.77D-05   217.00
    5     9     9     1.09290168    -0.59438130  -109.92175745    -0.00030969    -0.00004978  0.44D-05  0.84D-05   217.00
    5    10    10     1.09289723    -0.59437796  -109.92175410    -0.00031386    -0.00005101  0.44D-05  0.86D-05   217.00
    5    11    11     1.11011337    -0.60510600  -109.89387514    -0.00082833    -0.00012154  0.63D-05  0.20D-04   217.00
    5    12    12     1.11011903    -0.60510400  -109.89387313    -0.00084757    -0.00011942  0.65D-05  0.18D-04   217.00
    5    13    13     1.11003424    -0.60508075  -109.89384988    -0.00089731    -0.00013014  0.70D-05  0.20D-04   217.00
    5    14    14     1.11002242    -0.60507599  -109.89384512    -0.00089943    -0.00013281  0.71D-05  0.21D-04   217.00
    5    15    15     1.11009362    -0.60507489  -109.89384402    -0.00090281    -0.00013384  0.73D-05  0.21D-04   217.00
    5    16    16     1.11004272    -0.60507233  -109.89384145    -0.00090574    -0.00013272  0.71D-05  0.20D-04   217.00
    5    17    17     1.10979659    -0.60495404  -109.89372316    -0.00112173    -0.00018280  0.99D-05  0.26D-04   217.00
    6     1     1     1.08893040    -0.58471698  -109.96565720    -0.00006150    -0.00001184  0.46D-06  0.20D-05   269.62
    6     2     2     1.08893255    -0.58471671  -109.96565694    -0.00006146    -0.00001193  0.47D-06  0.20D-05   269.62
    6     3     3     1.08889795    -0.58471486  -109.96565508    -0.00006876    -0.00001225  0.50D-06  0.19D-05   269.62
    6     4     4     1.08889752    -0.58471474  -109.96565496    -0.00006888    -0.00001260  0.51D-06  0.20D-05   269.62
    6     5     5     1.08887713    -0.58471201  -109.96565223    -0.00007323    -0.00001359  0.52D-06  0.21D-05   269.62
    6     6     6     1.08887144    -0.58471188  -109.96565210    -0.00007442    -0.00001335  0.52D-06  0.21D-05   269.62
    6     7     7     1.08885650    -0.58471001  -109.96565022    -0.00007804    -0.00001450  0.57D-06  0.22D-05   269.62
    6     8     8     1.09290276    -0.59445685  -109.92183299    -0.00006583    -0.00001159  0.81D-06  0.18D-05   269.62
    6     9     9     1.09287221    -0.59445377  -109.92182992    -0.00007247    -0.00001322  0.94D-06  0.20D-05   269.62
    6    10    10     1.09286391    -0.59445250  -109.92182864    -0.00007454    -0.00001378  0.98D-06  0.21D-05   269.62
    6    11    11     1.11000224    -0.60527009  -109.89403923    -0.00016409    -0.00003351  0.37D-05  0.48D-05   269.62
    6    12    12     1.11003379    -0.60526542  -109.89403455    -0.00016142    -0.00003846  0.33D-05  0.63D-05   269.62
    6    13    13     1.10991792    -0.60526172  -109.89403085    -0.00018097    -0.00003862  0.41D-05  0.56D-05   269.62
    6    14    14     1.10988984    -0.60525873  -109.89402786    -0.00018274    -0.00003871  0.45D-05  0.53D-05   269.62
    6    15    15     1.10990989    -0.60525842  -109.89402755    -0.00018353    -0.00004070  0.42D-05  0.60D-05   269.62
    6    16    16     1.10991766    -0.60525725  -109.89402637    -0.00018492    -0.00004014  0.46D-05  0.59D-05   269.62
    6    17    17     1.10951338    -0.60521393  -109.89398305    -0.00025989    -0.00005870  0.74D-05  0.75D-05   269.62
    7     1     1     1.08907460    -0.58473097  -109.96567120    -0.00001399    -0.00000324  0.13D-06  0.57D-06   322.30
    7     2     2     1.08907374    -0.58473080  -109.96567102    -0.00001409    -0.00000333  0.13D-06  0.60D-06   322.30
    7     3     3     1.08907978    -0.58473043  -109.96567065    -0.00001557    -0.00000346  0.19D-06  0.56D-06   322.30
    7     4     4     1.08907219    -0.58473038  -109.96567060    -0.00001563    -0.00000351  0.17D-06  0.58D-06   322.30
    7     5     5     1.08907368    -0.58472922  -109.96566944    -0.00001721    -0.00000395  0.23D-06  0.61D-06   322.30
    7     6     6     1.08906663    -0.58472917  -109.96566938    -0.00001729    -0.00000401  0.21D-06  0.64D-06   322.30
    7     7     7     1.08905845    -0.58472855  -109.96566877    -0.00001855    -0.00000433  0.24D-06  0.69D-06   322.30
    7     8     8     1.09311988    -0.59447175  -109.92184790    -0.00001490    -0.00000313  0.27D-06  0.49D-06   322.30
    7     9     9     1.09310081    -0.59447067  -109.92184682    -0.00001690    -0.00000369  0.31D-06  0.59D-06   322.30
    7    10    10     1.09309616    -0.59447020  -109.92184634    -0.00001770    -0.00000392  0.34D-06  0.62D-06   322.30
    7    11    11     1.11069894    -0.60531013  -109.89407927    -0.00004004    -0.00000923  0.12D-05  0.13D-05   322.30
    7    12    12     1.11062768    -0.60530786  -109.89407699    -0.00004244    -0.00001048  0.89D-06  0.17D-05   322.30
    7    13    13     1.11063973    -0.60530694  -109.89407607    -0.00004522    -0.00001105  0.12D-05  0.17D-05   322.30
    7    14    14     1.11065237    -0.60530563  -109.89407476    -0.00004690    -0.00001129  0.15D-05  0.16D-05   322.30
    7    15    15     1.11061594    -0.60530548  -109.89407460    -0.00004705    -0.00001165  0.12D-05  0.18D-05   322.30
    7    16    16     1.11063482    -0.60530500  -109.89407412    -0.00004775    -0.00001172  0.14D-05  0.17D-05   322.30
    7    17    17     1.11047288    -0.60528658  -109.89405569    -0.00007265    -0.00001965  0.26D-05  0.26D-05   322.30
    8     1     1     1.08919632    -0.58473501  -109.96567523    -0.00000403    -0.00000093  0.27D-07  0.17D-06   375.06
    8     2     2     1.08919631    -0.58473493  -109.96567516    -0.00000414    -0.00000096  0.27D-07  0.18D-06   375.06
    8     3     3     1.08919387    -0.58473480  -109.96567502    -0.00000437    -0.00000103  0.26D-07  0.19D-06   375.06
    8     4     4     1.08919159    -0.58473479  -109.96567501    -0.00000441    -0.00000104  0.26D-07  0.19D-06   375.06
    8     5     5     1.08919118    -0.58473430  -109.96567451    -0.00000507    -0.00000124  0.32D-07  0.22D-06   375.06
    8     6     6     1.08919086    -0.58473427  -109.96567449    -0.00000510    -0.00000125  0.33D-07  0.22D-06   375.06
    8     7     7     1.08918503    -0.58473404  -109.96567426    -0.00000549    -0.00000137  0.35D-07  0.24D-06   375.06
    8     8     8     1.09322464    -0.59447575  -109.92185190    -0.00000400    -0.00000095  0.84D-07  0.16D-06   375.06
    8     9     9     1.09321784    -0.59447535  -109.92185150    -0.00000468    -0.00000116  0.11D-06  0.20D-06   375.06
    8    10    10     1.09321582    -0.59447519  -109.92185133    -0.00000498    -0.00000124  0.12D-06  0.21D-06   375.06
    8    11    11     1.11087156    -0.60532168  -109.89409082    -0.00001155    -0.00000258  0.20D-06  0.39D-06   375.06
    8    12    12     1.11088394    -0.60532083  -109.89408997    -0.00001297    -0.00000293  0.24D-06  0.45D-06   375.06
    8    13    13     1.11085156    -0.60532048  -109.89408962    -0.00001355    -0.00000320  0.24D-06  0.50D-06   375.06
    8    14    14     1.11083824    -0.60532001  -109.89408914    -0.00001438    -0.00000336  0.27D-06  0.49D-06   375.06
    8    15    15     1.11084958    -0.60531997  -109.89408909    -0.00001449    -0.00000338  0.26D-06  0.51D-06   375.06
    8    16    16     1.11084715    -0.60531995  -109.89408907    -0.00001495    -0.00000347  0.28D-06  0.52D-06   375.06
    8    17    17     1.11072049    -0.60531260  -109.89408171    -0.00002601    -0.00000673  0.56D-06  0.90D-06   375.06
    9     1     1     1.08920616    -0.58473621  -109.96567644    -0.00000120    -0.00000030  0.12D-07  0.54D-07   427.73
    9     2     2     1.08920575    -0.58473618  -109.96567641    -0.00000125    -0.00000032  0.13D-07  0.56D-07   427.73
    9     3     3     1.08920048    -0.58473614  -109.96567637    -0.00000134    -0.00000032  0.15D-07  0.55D-07   427.73
    9     4     4     1.08920091    -0.58473614  -109.96567636    -0.00000135    -0.00000033  0.14D-07  0.58D-07   427.73
    9     5     5     1.08919414    -0.58473595  -109.96567617    -0.00000165    -0.00000041  0.19D-07  0.66D-07   427.73
    9     6     6     1.08919544    -0.58473594  -109.96567616    -0.00000167    -0.00000042  0.19D-07  0.68D-07   427.73
    9     7     7     1.08919067    -0.58473585  -109.96567607    -0.00000181    -0.00000046  0.22D-07  0.76D-07   427.73
    9     8     8     1.09322366    -0.59447697  -109.92185312    -0.00000122    -0.00000031  0.36D-07  0.46D-07   427.73
    9     9     9     1.09321668    -0.59447683  -109.92185297    -0.00000148    -0.00000038  0.46D-07  0.56D-07   427.73
    9    10    10     1.09321373    -0.59447677  -109.92185291    -0.00000159    -0.00000041  0.50D-07  0.61D-07   427.73
    9    11    11     1.11093415    -0.60532513  -109.89409427    -0.00000345    -0.00000083  0.79D-07  0.12D-06   427.73
    9    12    12     1.11092544    -0.60532475  -109.89409389    -0.00000392    -0.00000106  0.97D-07  0.17D-06   427.73
    9    13    13     1.11090288    -0.60532467  -109.89409381    -0.00000419    -0.00000110  0.11D-06  0.17D-06   427.73
    9    14    14     1.11090445    -0.60532454  -109.89409367    -0.00000453    -0.00000113  0.11D-06  0.16D-06   427.73
    9    15    15     1.11090015    -0.60532450  -109.89409363    -0.00000454    -0.00000118  0.12D-06  0.18D-06   427.73
    9    16    16     1.11090419    -0.60532451  -109.89409363    -0.00000456    -0.00000119  0.11D-06  0.19D-06   427.73
    9    17    17     1.11078619    -0.60532173  -109.89409084    -0.00000913    -0.00000245  0.26D-06  0.32D-06   427.73
   10     1     1     1.08922136    -0.58473656  -109.96567678    -0.00000034    -0.00000010  0.19D-08  0.20D-07   480.48
   10     2     2     1.08922082    -0.58473654  -109.96567677    -0.00000036    -0.00000011  0.19D-08  0.21D-07   480.48
   10     3     3     1.08922052    -0.58473654  -109.96567676    -0.00000040    -0.00000011  0.41D-08  0.19D-07   480.48
   10     4     4     1.08921952    -0.58473654  -109.96567676    -0.00000040    -0.00000011  0.34D-08  0.20D-07   480.48
   10     5     5     1.08921817    -0.58473646  -109.96567668    -0.00000052    -0.00000014  0.63D-08  0.23D-07   480.48
   10     6     6     1.08921768    -0.58473645  -109.96567667    -0.00000052    -0.00000015  0.51D-08  0.26D-07   480.48
   10     7     7     1.08921431    -0.58473643  -109.96567664    -0.00000057    -0.00000016  0.66D-08  0.27D-07   480.48
   10     8     8     1.09324774    -0.59447735  -109.92185349    -0.00000038    -0.00000010  0.69D-08  0.15D-07   480.48
   10     9     9     1.09324299    -0.59447729  -109.92185344    -0.00000047    -0.00000012  0.80D-08  0.20D-07   480.48
   10    10    10     1.09324124    -0.59447728  -109.92185342    -0.00000051    -0.00000013  0.90D-08  0.22D-07   480.48
   10    11    11     1.11104191    -0.60532612  -109.89409526    -0.00000099    -0.00000026  0.35D-07  0.40D-07   480.48
   10    12    12     1.11102804    -0.60532595  -109.89409509    -0.00000120    -0.00000035  0.45D-07  0.53D-07   480.48
   10    13    13     1.11102937    -0.60532594  -109.89409508    -0.00000127    -0.00000036  0.32D-07  0.65D-07   480.48
   10    14    14     1.11103052    -0.60532590  -109.89409503    -0.00000136    -0.00000037  0.52D-07  0.55D-07   480.48
   10    15    15     1.11102499    -0.60532588  -109.89409501    -0.00000138    -0.00000039  0.44D-07  0.65D-07   480.48
   10    16    16     1.11102020    -0.60532587  -109.89409499    -0.00000137    -0.00000040  0.39D-07  0.72D-07   480.48
   10    17    17     1.11098246    -0.60532474  -109.89409385    -0.00000301    -0.00000092  0.14D-06  0.12D-06   480.48
   11     1     1     1.08923702    -0.58473667  -109.96567690    -0.00000012    -0.00000003  0.13D-08  0.65D-08   533.07
   11     2     2     1.08923660    -0.58473667  -109.96567689    -0.00000012    -0.00000004  0.12D-08  0.67D-08   533.07
   11     3     3     1.08923670    -0.58473667  -109.96567689    -0.00000013    -0.00000004  0.14D-08  0.70D-08   533.07
   11     4     4     1.08923611    -0.58473667  -109.96567689    -0.00000013    -0.00000004  0.12D-08  0.71D-08   533.07
   11     5     5     1.08923541    -0.58473664  -109.96567686    -0.00000018    -0.00000005  0.16D-08  0.93D-08   533.07
   11     6     6     1.08923527    -0.58473663  -109.96567685    -0.00000018    -0.00000005  0.17D-08  0.10D-07   533.07
   11     7     7     1.08923356    -0.58473662  -109.96567684    -0.00000020    -0.00000006  0.20D-08  0.11D-07   533.07
   11     8     8     1.09326205    -0.59447747  -109.92185362    -0.00000012    -0.00000003  0.30D-08  0.57D-08   533.07
   11     9     9     1.09325988    -0.59447745  -109.92185359    -0.00000015    -0.00000004  0.42D-08  0.76D-08   533.07
   11    10    10     1.09325901    -0.59447745  -109.92185359    -0.00000017    -0.00000005  0.46D-08  0.84D-08   533.07
   11    11    11     1.11105547    -0.60532643  -109.89409557    -0.00000031    -0.00000008  0.70D-08  0.13D-07   533.07
   11    12    12     1.11104943    -0.60532637  -109.89409551    -0.00000042    -0.00000011  0.82D-08  0.19D-07   533.07
   11    13    13     1.11105051    -0.60532636  -109.89409549    -0.00000041    -0.00000012  0.98D-08  0.19D-07   533.07
   11    14    14     1.11104529    -0.60532635  -109.89409548    -0.00000045    -0.00000012  0.11D-07  0.18D-07   533.07
   11    15    15     1.11104953    -0.60532634  -109.89409546    -0.00000045    -0.00000013  0.87D-08  0.22D-07   533.07
   11    16    16     1.11105597    -0.60532634  -109.89409546    -0.00000046    -0.00000014  0.99D-08  0.23D-07   533.07
   11    17    17     1.11100567    -0.60532589  -109.89409501    -0.00000116    -0.00000034  0.33D-07  0.46D-07   533.07
   12     1     1     1.08923846    -0.58473670  -109.96567692    -0.00000002    -0.00000002  0.79D-09  0.33D-08   571.17
   12     2     2     1.08923857    -0.58473669  -109.96567692    -0.00000003    -0.00000002  0.83D-09  0.35D-08   571.17
   12     3     3     1.08923747    -0.58473669  -109.96567691    -0.00000002    -0.00000002  0.83D-09  0.41D-08   571.17
   12     4     4     1.08923703    -0.58473668  -109.96567690    -0.00000001    -0.00000003  0.13D-08  0.65D-08   571.17
   12     5     5     1.08923666    -0.58473667  -109.96567689    -0.00000003    -0.00000004  0.12D-08  0.66D-08   571.17
   12     6     6     1.08923670    -0.58473667  -109.96567689    -0.00000004    -0.00000004  0.14D-08  0.70D-08   571.17
   12     7     7     1.08923612    -0.58473667  -109.96567689    -0.00000005    -0.00000004  0.13D-08  0.71D-08   571.17
   12     8     8     1.09326220    -0.59447750  -109.92185364    -0.00000003    -0.00000002  0.19D-08  0.26D-08   571.17
   12     9     9     1.09326140    -0.59447750  -109.92185364    -0.00000005    -0.00000002  0.21D-08  0.29D-08   571.17
   12    10    10     1.09326200    -0.59447748  -109.92185362    -0.00000003    -0.00000003  0.27D-08  0.56D-08   571.17
   12    11    11     1.11109583    -0.60532656  -109.89409570    -0.00000014    -0.00000002  0.82D-09  0.37D-08   571.17
   12    12    12     1.11109990    -0.60532657  -109.89409570    -0.00000020    -0.00000001  0.71D-09  0.19D-08   571.17
   12    13    13     1.11109684    -0.60532657  -109.89409570    -0.00000021    -0.00000002  0.56D-09  0.42D-08   571.17
   12    14    14     1.11109290    -0.60532656  -109.89409569    -0.00000021    -0.00000003  0.11D-08  0.58D-08   571.17
   12    15    15     1.11110375    -0.60532656  -109.89409568    -0.00000022    -0.00000003  0.26D-08  0.45D-08   571.17
   12    16    16     1.11107131    -0.60532655  -109.89409567    -0.00000021    -0.00000003  0.23D-08  0.48D-08   571.17
   12    17    17     1.11106496    -0.60532651  -109.89409563    -0.00000062    -0.00000005  0.46D-08  0.84D-08   571.17
   13     1     1     1.08923846    -0.58473670  -109.96567692     0.00000000    -0.00000002  0.79D-09  0.33D-08   577.69
   13     2     2     1.08923857    -0.58473669  -109.96567692    -0.00000000    -0.00000002  0.83D-09  0.35D-08   577.69
   13     3     3     1.08923747    -0.58473669  -109.96567691    -0.00000000    -0.00000002  0.83D-09  0.41D-08   577.69
   13     4     4     1.08923703    -0.58473668  -109.96567690    -0.00000000    -0.00000003  0.13D-08  0.65D-08   577.69
   13     5     5     1.08923666    -0.58473667  -109.96567689    -0.00000000    -0.00000004  0.12D-08  0.66D-08   577.69
   13     6     6     1.08923670    -0.58473667  -109.96567689     0.00000000    -0.00000004  0.14D-08  0.70D-08   577.69
   13     7     7     1.08923612    -0.58473667  -109.96567689     0.00000000    -0.00000004  0.13D-08  0.71D-08   577.69
   13     8     8     1.09326220    -0.59447750  -109.92185364    -0.00000000    -0.00000002  0.19D-08  0.26D-08   577.69
   13     9     9     1.09326140    -0.59447750  -109.92185364    -0.00000000    -0.00000002  0.21D-08  0.29D-08   577.69
   13    10    10     1.09326200    -0.59447748  -109.92185362    -0.00000000    -0.00000003  0.27D-08  0.56D-08   577.69
   13    11    11     1.11109884    -0.60532657  -109.89409571    -0.00000000    -0.00000001  0.26D-09  0.16D-08   577.69
   13    12    12     1.11109990    -0.60532657  -109.89409570     0.00000000    -0.00000001  0.71D-09  0.19D-08   577.69
   13    13    13     1.11109320    -0.60532657  -109.89409570    -0.00000000    -0.00000002  0.92D-09  0.39D-08   577.69
   13    14    14     1.11109684    -0.60532657  -109.89409570    -0.00000001    -0.00000002  0.56D-09  0.42D-08   577.69
   13    15    15     1.11109290    -0.60532656  -109.89409569    -0.00000001    -0.00000003  0.11D-08  0.58D-08   577.69
   13    16    16     1.11110375    -0.60532656  -109.89409568    -0.00000001    -0.00000003  0.26D-08  0.45D-08   577.69
   13    17    17     1.11107131    -0.60532656  -109.89409567    -0.00000004    -0.00000003  0.23D-08  0.48D-08   577.69


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%  11.0%  55.3%

 Initialization:   0.6%
 Other:           32.7%

 Total CPU:      577.7 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/22/222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.9581585   0.0000000   0.0000000  -0.0000000
                      0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0002560  -0.0000000
 2//222/222          -0.0000000   0.0000000  -0.0679347   0.9557470   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000001  -0.0001156  -0.0000000   0.0002284  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22/2//2222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0002238  -0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.9484629   0.0000000
 22/22//222           0.8559578   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0423024  -0.4275383  -0.0000000
                     -0.0000000  -0.0000000   0.0000121   0.0000000   0.0002287   0.0000000   0.0000000  -0.0000000
 22//22/222           0.0000000   0.0000000  -0.4274225  -0.0303813   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                      0.8550751  -0.0001022  -0.0000000  -0.0000518  -0.0000000   0.0000000   0.0000000   0.0000000
 2222///222          -0.0000000  -0.0000000   0.8548461   0.0607626   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.4275386   0.0002044   0.0000001   0.0001034   0.0000000   0.0000000  -0.0000000  -0.0000000
 22/2/2/222          -0.0000000   0.8536329   0.0000000  -0.0000000   0.0759201  -0.0000000  -0.0000000   0.0000000  -0.4275384
                      0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0001440  -0.0000000  -0.0001781
 2/2//22222          -0.0002000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000100  -0.0001653  -0.0000000
                     -0.0000000  -0.0000144   0.0448403   0.0000000   0.8471474   0.0001728  -0.0000000  -0.0000456
 222///2222           0.0000000   0.0000000   0.0000158  -0.0002231  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000001  -0.4283369  -0.0001367   0.8462367  -0.0000000  -0.0000000   0.0000000   0.0000197
 222//2/222           0.1730302   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.8393539   0.4275375  -0.0000000
                     -0.0000000  -0.0000001   0.0002245  -0.0000000   0.0000454   0.0000000  -0.0000000  -0.0000000
 2//22/2222          -0.0000397  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0001961   0.0001651  -0.0000000
                      0.0000000  -0.0002657   0.8314556  -0.0000001   0.1683714   0.0000346   0.0000000  -0.0000091
 222/2//222           0.0000000  -0.2869177  -0.0000000  -0.0000000   0.8075471   0.0000000  -0.0000000   0.0000000  -0.4275374
                     -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0002084  -0.0000000  -0.0000949
 2//2/22222           0.0000000  -0.0000664  -0.0000000  -0.0000000   0.0001883   0.0000000  -0.0000000  -0.0000000   0.0001652
                      0.0000000   0.0000137  -0.0000002  -0.0000012  -0.0001386   0.7720416   0.0000000   0.3516167
 2///222222           0.0000000   0.0000000  -0.0001992  -0.0000139   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0001656   0.7568996   0.0002419   0.3831205   0.0000000   0.0000000  -0.0000000  -0.0000283
 2/222//222          -0.0000000   0.3271930   0.0000000   0.0000000   0.5100702  -0.0000000  -0.0000000  -0.0000000   0.7405174
                     -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000371  -0.0000000  -0.0001576
 2/22/2/222           0.3942881   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.4601779   0.7405168   0.0000000
                     -0.0000000   0.0000000  -0.0001226   0.0000000   0.0001058   0.0000000   0.0000000  -0.0000000
 2/2/2/2222           0.0000000   0.0001997   0.0000000  -0.0000000   0.0000177   0.0000000  -0.0000000   0.0000000   0.0001652
                     -0.0000000   0.0000259   0.0000002  -0.0000023   0.0001443  -0.5334522   0.0000000   0.6596203
 22///22222          -0.0000000   0.0000752  -0.0000000   0.0000000   0.0001189   0.0000000   0.0000000  -0.0000000  -0.0002862
                     -0.0000000   0.0000229  -0.0000000  -0.0000020   0.0000033   0.1377357  -0.0000000   0.5838450
 22//2/2222          -0.0000908  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0001079   0.0002857   0.0000000
                     -0.0000000   0.0001451  -0.4541539   0.0000001   0.3918925   0.0000798  -0.0000000  -0.0000211
 2/22//2222           0.0000000   0.0000000   0.0000997   0.0000078  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0003312  -0.3784391  -0.0001209  -0.1915529  -0.0000000  -0.0000000  -0.0000000   0.0000142

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.958141    0.000000    0.000000   -0.000000   -0.000000    0.006215    0.000000    0.000000   -0.000000
             0.000000   -0.000221    0.000000    0.000000   -0.000000    0.000000    0.000002
 2           0.000000    0.000000   -0.415868   -0.000000    0.863207   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000038    0.000000    0.000218    0.000000    0.000000
 3          -0.276166    0.000000   -0.000000   -0.000000    0.000000    0.917499    0.000000   -0.000000    0.000001    0.000000
             0.000006    0.000000   -0.000000    0.000000    0.000000   -0.000221   -0.000000
 4           0.917500    0.000000   -0.000000    0.000000   -0.000000    0.276166    0.000000    0.000000   -0.000000    0.000000
            -0.000221   -0.000000    0.000000    0.000000    0.000000   -0.000006    0.000000
 5           0.000000    0.000000    0.863208    0.000000    0.415868    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000218   -0.000000   -0.000038    0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.958162   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.000222    0.000000   -0.000000    0.000000
 7          -0.000000   -0.006215   -0.000000    0.000000   -0.000000   -0.000000    0.958142    0.000000    0.000000    0.000000
             0.000000   -0.000002   -0.000000   -0.000000   -0.000000   -0.000000   -0.000222
 8          -0.000000   -0.000001    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956351
             0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 9          -0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.956352   -0.000000    0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000001   -0.000000    0.000000    0.956352   -0.000000
             0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11         -0.000163    0.000000   -0.000000    0.000000   -0.000000    0.000198   -0.000000   -0.000000   -0.000000    0.000000
            -0.391866   -0.000004    0.000030   -0.000000    0.000022    0.863946   -0.000303
 12         -0.000000   -0.000001    0.000000    0.000000   -0.000000    0.000000    0.000256    0.000000   -0.000000   -0.000000
            -0.000125    0.012790   -0.000000    0.000000    0.000000    0.000276    0.948576
 13          0.000198    0.000000    0.000000    0.000000    0.000000    0.000163   -0.000000    0.000000   -0.000000   -0.000000
             0.863948    0.000000   -0.000003   -0.000000   -0.000002    0.391867   -0.000000
 14         -0.000000    0.000256    0.000000   -0.000000   -0.000000    0.000000    0.000001    0.000000    0.000000    0.000000
            -0.000000    0.948577   -0.000073   -0.000000    0.000186    0.000000   -0.012790
 15         -0.000000    0.000000   -0.000243    0.000000    0.000081    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000193    0.559636   -0.000000   -0.766011    0.000000   -0.000002
 16          0.000000    0.000000   -0.000000   -0.000256   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000    0.000000    0.948661    0.000000   -0.000000    0.000000
 17          0.000000   -0.000000   -0.000081   -0.000000   -0.000243   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000018   -0.000051    0.766021    0.000000    0.559639   -0.000032    0.000001

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958161    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000019    0.000000    0.000000   -0.000000
 2           0.000000    0.958161   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000013    0.000000   -0.000013
 3           0.000000   -0.000000    0.958161   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000001
             0.000017    0.000000    0.000007    0.000000    0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.958161    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000007   -0.000000    0.000017   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958162    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000    0.000000   -0.000013   -0.000000   -0.000013
 6           0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.958162   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000018    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.958162   -0.000000    0.000000    0.000000
            -0.000000    0.000018    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956351    0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.956352   -0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 10         -0.000000    0.000000    0.000001   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.956352
            -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 11         -0.000000   -0.000000    0.000017   -0.000007   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.948663    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 12          0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000018    0.000000   -0.000000   -0.000000
             0.000000    0.948662    0.000000    0.000000   -0.000000    0.000000    0.000000
 13          0.000000    0.000000    0.000007    0.000017    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.000000    0.948665   -0.000000    0.000000   -0.000000   -0.000000
 14          0.000019   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.948664   -0.000000   -0.000000    0.000000
 15          0.000000    0.000013    0.000000   -0.000000   -0.000013    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.000000   -0.000000    0.948665   -0.000000    0.000002
 16          0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000018   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.948661    0.000000
 17         -0.000000   -0.000013   -0.000000    0.000000   -0.000013    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000    0.000002    0.000000    0.948674


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95814065 (fixed)   0.95816106 (relaxed)   0.95816083 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46868158
 Singles      0.01380677   -0.07422999   -0.07556324
 Pairs        0.07543173   -0.00000073   -0.04049188
 Total        1.08923898   -0.07423073   -0.58473670
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094022
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45785608
 One electron energy                 -193.22759809
 Two electron energy                   83.26192117
 Virial quotient                       -2.65246897
 Correlation energy                    -0.58473670
 !MRCI STATE 1.1 Energy              -109.965676920580

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785823 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785792 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785823 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339581 (Pople, fixed reference)
 Cluster corrected energies          -110.01339552 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339581 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86320687 (fixed)   0.95816101 (relaxed)   0.95816078 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46868251
 Singles      0.01380662   -0.07422966   -0.07556319
 Pairs        0.07543199   -0.00000000   -0.04049099
 Total        1.08923908   -0.07422966   -0.58473669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094021
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45785382
 One electron energy                 -193.22760120
 Two electron energy                   83.26192428
 Virial quotient                       -2.65246912
 Correlation energy                    -0.58473670
 !MRCI STATE 2.1 Energy              -109.965676916206

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785828 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785798 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785828 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339587 (Pople, fixed reference)
 Cluster corrected energies          -110.01339557 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339587 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.91749949 (fixed)   0.95816149 (relaxed)   0.95816127 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46868295
 Singles      0.01380664   -0.07422970   -0.07556330
 Pairs        0.07543087   -0.00000000   -0.04049044
 Total        1.08923799   -0.07422970   -0.58473669
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094021
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45786010
 One electron energy                 -193.22761031
 Two electron energy                   83.26193340
 Virial quotient                       -2.65246872
 Correlation energy                    -0.58473670
 !MRCI STATE 3.1 Energy              -109.965676912342

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785764 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785734 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785764 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339524 (Pople, fixed reference)
 Cluster corrected energies          -110.01339494 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339524 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.91749968 (fixed)   0.95816169 (relaxed)   0.95816146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46867638
 Singles      0.01380894   -0.07423704   -0.07556582
 Pairs        0.07542813   -0.00000000   -0.04049447
 Total        1.08923754   -0.07423704   -0.58473668
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094022
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45801140
 One electron energy                 -193.22777514
 Two electron energy                   83.26209824
 Virial quotient                       -2.65245903
 Correlation energy                    -0.58473668
 !MRCI STATE 4.1 Energy              -109.965676896299

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785736 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785706 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785736 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339497 (Pople, fixed reference)
 Cluster corrected energies          -110.01339467 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339497 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.86320776 (fixed)   0.95816185 (relaxed)   0.95816162 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46867916
 Singles      0.01380792   -0.07423418   -0.07556527
 Pairs        0.07542879   -0.00000000   -0.04049224
 Total        1.08923718   -0.07423418   -0.58473667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094022
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45798517
 One electron energy                 -193.22777031
 Two electron energy                   83.26209342
 Virial quotient                       -2.65246071
 Correlation energy                    -0.58473668
 !MRCI STATE 5.1 Energy              -109.965676891598

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785714 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785684 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785714 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339476 (Pople, fixed reference)
 Cluster corrected energies          -110.01339446 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339476 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95816158 (fixed)   0.95816183 (relaxed)   0.95816161 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46867604
 Singles      0.01380916   -0.07423756   -0.07556600
 Pairs        0.07542758    0.00000000   -0.04049463
 Total        1.08923722   -0.07423756   -0.58473667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094022
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45801191
 One electron energy                 -193.22777181
 Two electron energy                   83.26209492
 Virial quotient                       -2.65245900
 Correlation energy                    -0.58473667
 !MRCI STATE 6.1 Energy              -109.965676890192

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785716 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785686 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785716 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339478 (Pople, fixed reference)
 Cluster corrected energies          -110.01339448 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339478 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95814168 (fixed)   0.95816209 (relaxed)   0.95816186 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000047   -0.00000000   -0.46874110
 Singles      0.01380839   -0.07423551   -0.07556561
 Pairs        0.07542777    0.00006854   -0.04042997
 Total        1.08923664   -0.07416697   -0.58473667
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38094021
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45800291
 One electron energy                 -193.22778100
 Two electron energy                   83.26210411
 Virial quotient                       -2.65245958
 Correlation energy                    -0.58473668
 !MRCI STATE 7.1 Energy              -109.965676887538

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01785682 (Davidson, fixed reference)
 Cluster corrected energies          -110.01785652 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01785682 (Davidson, rotated reference)

 Cluster corrected energies          -110.01339444 (Pople, fixed reference)
 Cluster corrected energies          -110.01339415 (Pople, relaxed reference)
 Cluster corrected energies          -110.01339444 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95635146 (fixed)   0.95639618 (relaxed)   0.95635146 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009353    0.00000000   -0.47082745
 Singles      0.01707061   -0.07974717   -0.08222029
 Pairs        0.07620031    0.00000007   -0.04142975
 Total        1.09336445   -0.07974710   -0.59447750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32737614
 Nuclear energy                         0.00000000
 Kinetic energy                        41.43720526
 One electron energy                 -193.17172902
 Two electron energy                   83.24987538
 Virial quotient                       -2.65273329
 Correlation energy                    -0.59447751
 !MRCI STATE 8.1 Energy              -109.921853644970

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97735671 (Davidson, fixed reference)
 Cluster corrected energies          -109.97729592 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97735671 (Davidson, rotated reference)

 Cluster corrected energies          -109.97276475 (Pople, fixed reference)
 Cluster corrected energies          -109.97270516 (Pople, relaxed reference)
 Cluster corrected energies          -109.97276475 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95635181 (fixed)   0.95639653 (relaxed)   0.95635181 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009353    0.00000000   -0.47082776
 Singles      0.01707059   -0.07974714   -0.08222034
 Pairs        0.07619952    0.00000000   -0.04142940
 Total        1.09336364   -0.07974714   -0.59447750
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32737615
 Nuclear energy                         0.00000000
 Kinetic energy                        41.43719458
 One electron energy                 -193.17171683
 Two electron energy                   83.24986318
 Virial quotient                       -2.65273397
 Correlation energy                    -0.59447750
 !MRCI STATE 9.1 Energy              -109.921853644501

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97735623 (Davidson, fixed reference)
 Cluster corrected energies          -109.97729545 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97735623 (Davidson, rotated reference)

 Cluster corrected energies          -109.97276428 (Pople, fixed reference)
 Cluster corrected energies          -109.97270469 (Pople, relaxed reference)
 Cluster corrected energies          -109.97276428 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95635154 (fixed)   0.95639627 (relaxed)   0.95635154 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009355    0.00000000   -0.47082704
 Singles      0.01707006   -0.07974763   -0.08222051
 Pairs        0.07620067    0.00000000   -0.04142993
 Total        1.09336427   -0.07974763   -0.59447748
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32737615
 Nuclear energy                         0.00000000
 Kinetic energy                        41.43768867
 One electron energy                 -193.17232611
 Two electron energy                   83.25047249
 Virial quotient                       -2.65270234
 Correlation energy                    -0.59447747
 !MRCI STATE 10.1 Energy             -109.921853619766

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97735658 (Davidson, fixed reference)
 Cluster corrected energies          -109.97729578 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97735658 (Davidson, rotated reference)

 Cluster corrected energies          -109.97276462 (Pople, fixed reference)
 Cluster corrected energies          -109.97270502 (Pople, relaxed reference)
 Cluster corrected energies          -109.97276462 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.86394553 (fixed)   0.94868854 (relaxed)   0.94866272 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.41923629
 Singles      0.03797783   -0.13966996   -0.14638555
 Pairs        0.07312706    0.00014876   -0.03970473
 Total        1.11115930   -0.13952120   -0.60532657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876913
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29203140
 One electron energy                 -190.52067162
 Two electron energy                   80.62657591
 Virial quotient                       -2.72743994
 Correlation energy                    -0.60532658
 !MRCI STATE 11.1 Energy             -109.894095707010

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96138339 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134679 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96138339 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663375 (Pople, fixed reference)
 Cluster corrected energies          -109.95659693 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663375 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.94857596 (fixed)   0.94868808 (relaxed)   0.94866227 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.00006776
 Singles      0.03798215   -0.13967503   -0.14638735
 Pairs        0.07312380   -0.46560918   -0.45887146
 Total        1.11116037   -0.60528421   -0.60532657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876912
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29211879
 One electron energy                 -190.52080599
 Two electron energy                   80.62671029
 Virial quotient                       -2.72743402
 Correlation energy                    -0.60532658
 !MRCI STATE 12.1 Energy             -109.894095702830

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96138403 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134743 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96138403 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663440 (Pople, fixed reference)
 Cluster corrected energies          -109.95659758 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663440 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.86394757 (fixed)   0.94869095 (relaxed)   0.94866514 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.41910431
 Singles      0.03797865   -0.13967029   -0.14638680
 Pairs        0.07312059    0.00000007   -0.03983546
 Total        1.11115366   -0.13967022   -0.60532657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876914
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29205010
 One electron energy                 -190.52070458
 Two electron energy                   80.62660888
 Virial quotient                       -2.72743867
 Correlation energy                    -0.60532656
 !MRCI STATE 13.1 Energy             -109.894095700823

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96137996 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134336 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96137996 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663030 (Pople, fixed reference)
 Cluster corrected energies          -109.95659349 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663030 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.94857729 (fixed)   0.94868939 (relaxed)   0.94866357 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.42474724
 Singles      0.03798168   -0.13967673   -0.14638798
 Pairs        0.07312121    0.00627822   -0.03419135
 Total        1.11115731   -0.13339851   -0.60532657
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876914
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29210354
 One electron energy                 -190.52075574
 Two electron energy                   80.62666004
 Virial quotient                       -2.72743506
 Correlation energy                    -0.60532656
 !MRCI STATE 14.1 Energy             -109.894095699632

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96138217 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134557 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96138217 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663253 (Pople, fixed reference)
 Cluster corrected energies          -109.95659571 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663253 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.76601130 (fixed)   0.94869107 (relaxed)   0.94866526 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.41910022
 Singles      0.03797957   -0.13967604   -0.14638800
 Pairs        0.07311937    0.00000115   -0.03983834
 Total        1.11115337   -0.13967489   -0.60532656
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876913
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29203630
 One electron energy                 -190.52065387
 Two electron energy                   80.62655818
 Virial quotient                       -2.72743961
 Correlation energy                    -0.60532656
 !MRCI STATE 15.1 Energy             -109.894095688895

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96137977 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134317 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96137977 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663012 (Pople, fixed reference)
 Cluster corrected energies          -109.95659330 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663012 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.94866060 (fixed)   0.94868644 (relaxed)   0.94866063 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005442   -0.00000000   -0.41909174
 Singles      0.03798661   -0.13967976   -0.14638858
 Pairs        0.07312319   -0.00000000   -0.03984624
 Total        1.11116421   -0.13967976   -0.60532656
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876914
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29216842
 One electron energy                 -190.52092939
 Two electron energy                   80.62683371
 Virial quotient                       -2.72743066
 Correlation energy                    -0.60532655
 !MRCI STATE 16.1 Energy             -109.894095681027

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96138633 (Davidson, fixed reference)
 Cluster corrected energies          -109.96134973 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96138633 (Davidson, rotated reference)

 Cluster corrected energies          -109.95663671 (Pople, fixed reference)
 Cluster corrected energies          -109.95659989 (Pople, relaxed reference)
 Cluster corrected energies          -109.95663671 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.76602069 (fixed)   0.94870029 (relaxed)   0.94867448 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005441   -0.00000000   -0.41911880
 Singles      0.03797260   -0.13966297   -0.14638756
 Pairs        0.07310475   -0.00000032   -0.03982020
 Total        1.11113176   -0.13966329   -0.60532656
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28876914
 Nuclear energy                         0.00000000
 Kinetic energy                        40.29193232
 One electron energy                 -190.52051270
 Two electron energy                   80.62641703
 Virial quotient                       -2.72744665
 Correlation energy                    -0.60532653
 !MRCI STATE 17.1 Energy             -109.894095669943

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96136667 (Davidson, fixed reference)
 Cluster corrected energies          -109.96133008 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96136667 (Davidson, rotated reference)

 Cluster corrected energies          -109.95661694 (Pople, fixed reference)
 Cluster corrected energies          -109.95658013 (Pople, relaxed reference)
 Cluster corrected energies          -109.95661694 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      401.86       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       638.12    632.32      4.10      1.35
 REAL TIME  *       748.52 SEC
 DISK USED  *       433.97 MB (local),       12.84 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01785823  AU                              
 SETTING HLSDIAG(2)     =      -110.01785828  AU                              
 SETTING HLSDIAG(3)     =      -110.01785764  AU                              
 SETTING HLSDIAG(4)     =      -110.01785736  AU                              
 SETTING HLSDIAG(5)     =      -110.01785714  AU                              
 SETTING HLSDIAG(6)     =      -110.01785716  AU                              
 SETTING HLSDIAG(7)     =      -110.01785682  AU                              
 SETTING HLSDIAG(8)     =      -109.97735671  AU                              
 SETTING HLSDIAG(9)     =      -109.97735623  AU                              
 SETTING HLSDIAG(10)    =      -109.97735658  AU                              
 SETTING HLSDIAG(11)    =      -109.96138339  AU                              
 SETTING HLSDIAG(12)    =      -109.96138403  AU                              
 SETTING HLSDIAG(13)    =      -109.96137996  AU                              
 SETTING HLSDIAG(14)    =      -109.96138217  AU                              
 SETTING HLSDIAG(15)    =      -109.96137977  AU                              
 SETTING HLSDIAG(16)    =      -109.96138633  AU                              
 SETTING HLSDIAG(17)    =      -109.96136667  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 29  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
                                         21  22  23  24  25  26  27  28  29
 Number of reference states: 29  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15  16  17  18  19  20
                                         21  22  23  24  25  26  27  28  29

 Reference symmetry:                   1   Doublet 
 Number of electrons:                 17
 Maximum number of shells:             4
 Maximum number of spin couplings:    14

 Reference space:      119 conf      175 CSFs
 N elec internal:      210 conf      330 CSFs
 N-1 el internal:      615 conf     1815 CSFs
 N-2 el internal:     1449 conf     8442 CSFs

 Number of electrons in valence space:                     17
 Maximum number of open shell orbitals in reference space:  3
 Maximum number of open shell orbitals in internal spaces:  7


 Number of active  orbitals:       10 (   7   3 )
 Number of external orbitals:      87 (  48  39 )

 Molecular orbitals read from record     2140.2  Type=MCSCF/NATURAL (state averaged)

 Coulomb and exchange operators available. No transformation done.


 Number of p-space configurations:  70

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.34977575
     2      -109.34977575
     3      -109.34977575
     4      -109.34977575
     5      -109.34977574
     6      -109.34977574
     7      -109.34977574
     8      -109.33326139
     9      -109.33326138
    10      -109.33326138
    11      -109.33326138
    12      -109.33326138
    13      -109.30546390
    14      -109.30546390
    15      -109.30546389
    16      -109.29449953
    17      -109.29449953
    18      -109.29449953
    19      -109.29449953
    20      -109.29449953
    21      -109.29449953
    22      -109.29449953
    23      -109.29449952
    24      -109.29449952
    25      -109.26634592
    26      -109.26634591
    27      -109.26634591
    28      -109.26634590
    29      -109.26634588

 ?WARNING: SMALL EIGENVALUE OF PAIR OVERLAP MATRIX:  0.1273D-06

 Number of blocks in overlap matrix:    13   Smallest eigenvalue:  0.13D-06
 Number of N-2 electron functions:    2855
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       5421516
 Total number of contracted configurations:      5500747
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage: 2573447 words, CPU-Time:     11.98 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  765217 words, CPU-time:      0.13 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.34977575     0.00000000    -0.64919252  0.33D-01  0.82D-01    27.53
    1     2     2     1.00000000     0.00000000  -109.34977575     0.00000000    -0.64386508  0.32D-01  0.80D-01    27.53
    1     3     3     1.00000000     0.00000000  -109.34977575     0.00000000    -0.64503874  0.32D-01  0.81D-01    27.53
    1     4     4     1.00000000     0.00000000  -109.34977575     0.00000000    -0.64846523  0.33D-01  0.82D-01    27.53
    1     5     5     1.00000000     0.00000000  -109.34977574     0.00000000    -0.64304835  0.32D-01  0.80D-01    27.53
    1     6     6     1.00000000     0.00000000  -109.34977574     0.00000000    -0.64438954  0.32D-01  0.80D-01    27.53
    1     7     7     1.00000000     0.00000000  -109.34977574     0.00000000    -0.64397254  0.32D-01  0.80D-01    27.53
    1     8     8     1.00000000     0.00000000  -109.33326139     0.00000000    -0.61056944  0.33D-01  0.67D-01    27.53
    1     9     9     1.00000000     0.00000000  -109.33326138     0.00000000    -0.61144755  0.33D-01  0.67D-01    27.53
    1    10    10     1.00000000     0.00000000  -109.33326138     0.00000000    -0.61069055  0.33D-01  0.67D-01    27.53
    1    11    11     1.00000000     0.00000000  -109.33326138     0.00000000    -0.61067296  0.33D-01  0.67D-01    27.53
    1    12    12     1.00000000     0.00000000  -109.33326138     0.00000000    -0.61078028  0.33D-01  0.67D-01    27.53
    1    13    13     1.00000000     0.00000000  -109.30546390     0.00000000    -0.66835121  0.42D-01  0.87D-01    27.53
    1    14    14     1.00000000     0.00000000  -109.30546390     0.00000000    -0.66886982  0.42D-01  0.88D-01    27.53
    1    15    15     1.00000000     0.00000000  -109.30546389     0.00000000    -0.66770295  0.42D-01  0.87D-01    27.53
    1    16    16     1.00000000     0.00000000  -109.29449953     0.00000000    -0.62856276  0.31D-01  0.70D-01    27.53
    1    17    17     1.00000000     0.00000000  -109.29449953     0.00000000    -0.62856349  0.32D-01  0.69D-01    27.53
    1    18    18     1.00000000     0.00000000  -109.29449953     0.00000000    -0.62908958  0.32D-01  0.70D-01    27.53
    1    19    19     1.00000000     0.00000000  -109.29449953     0.00000000    -0.63001212  0.32D-01  0.70D-01    27.53
    1    20    20     1.00000000     0.00000000  -109.29449953     0.00000000    -0.62892144  0.31D-01  0.70D-01    27.53
    1    21    21     1.00000000     0.00000000  -109.29449953     0.00000000    -0.63004762  0.32D-01  0.70D-01    27.53
    1    22    22     1.00000000     0.00000000  -109.29449953     0.00000000    -0.62972556  0.32D-01  0.70D-01    27.53
    1    23    23     1.00000000     0.00000000  -109.29449952     0.00000000    -0.62845462  0.32D-01  0.69D-01    27.53
    1    24    24     1.00000000     0.00000000  -109.29449952     0.00000000    -0.62838342  0.31D-01  0.69D-01    27.53
    1    25    25     1.00000000     0.00000000  -109.26634592     0.00000000    -0.73578373  0.15D+00  0.75D-01    27.53
    1    26    26     1.00000000     0.00000000  -109.26634591     0.00000000    -0.73576143  0.15D+00  0.75D-01    27.53
    1    27    27     1.00000000     0.00000000  -109.26634591     0.00000000    -0.74060186  0.16D+00  0.75D-01    27.53
    1    28    28     1.00000000     0.00000000  -109.26634590     0.00000000    -0.74105849  0.16D+00  0.75D-01    27.53
    1    29    29     1.00000000     0.00000000  -109.26634588     0.00000000    -0.73559427  0.15D+00  0.75D-01    27.53
    2     1     1     1.08703454    -0.56537727  -109.91515303    -0.56537727    -0.01952994  0.22D-02  0.22D-02   361.99
    2     2     2     1.08642137    -0.56509854  -109.91487429    -0.56509854    -0.01944421  0.21D-02  0.22D-02   361.99
    2     3     3     1.08637545    -0.56499971  -109.91477546    -0.56499971    -0.01954447  0.21D-02  0.22D-02   361.99
    2     4     4     1.08636793    -0.56499612  -109.91477187    -0.56499612    -0.01950738  0.21D-02  0.22D-02   361.99
    2     5     5     1.08694363    -0.56482751  -109.91460325    -0.56482751    -0.01980624  0.22D-02  0.22D-02   361.99
    2     6     6     1.08637513    -0.56472794  -109.91450369    -0.56472794    -0.01962835  0.22D-02  0.22D-02   361.99
    2     7     7     1.08636071    -0.56463939  -109.91441513    -0.56463939    -0.01970972  0.22D-02  0.22D-02   361.99
    2     8     8     1.08471742    -0.56511570  -109.89837708    -0.56511570    -0.02073563  0.37D-02  0.18D-02   361.99
    2     9     9     1.08480912    -0.56499892  -109.89826030    -0.56499892    -0.02089734  0.37D-02  0.18D-02   361.99
    2    10    10     1.08537077    -0.56481861  -109.89808000    -0.56481861    -0.02138464  0.40D-02  0.19D-02   361.99
    2    11    11     1.08536927    -0.56472683  -109.89798821    -0.56472683    -0.02146035  0.40D-02  0.19D-02   361.99
    2    12    12     1.08547943    -0.56471999  -109.89798137    -0.56471999    -0.02149696  0.40D-02  0.19D-02   361.99
    2    13    13     1.09491061    -0.57282806  -109.87829196    -0.57282806    -0.02022715  0.29D-02  0.24D-02   361.99
    2    14    14     1.09507116    -0.57259561  -109.87805951    -0.57259561    -0.02038094  0.30D-02  0.24D-02   361.99
    2    15    15     1.09502939    -0.57242820  -109.87789209    -0.57242820    -0.02043198  0.30D-02  0.24D-02   361.99
    2    16    16     1.08394375    -0.57374434  -109.86824387    -0.57374434    -0.01974311  0.24D-02  0.19D-02   361.99
    2    17    17     1.08391070    -0.57369284  -109.86819237    -0.57369284    -0.01976381  0.24D-02  0.19D-02   361.99
    2    18    18     1.08408429    -0.57352571  -109.86802524    -0.57352571    -0.01997208  0.25D-02  0.19D-02   361.99
    2    19    19     1.08396882    -0.57350420  -109.86800373    -0.57350420    -0.02000722  0.25D-02  0.19D-02   361.99
    2    20    20     1.08402558    -0.57349768  -109.86799722    -0.57349768    -0.02000345  0.26D-02  0.19D-02   361.99
    2    21    21     1.08403420    -0.57349476  -109.86799429    -0.57349476    -0.01999845  0.26D-02  0.19D-02   361.99
    2    22    22     1.08411897    -0.57322255  -109.86772207    -0.57322255    -0.02033929  0.26D-02  0.19D-02   361.99
    2    23    23     1.08406574    -0.57321210  -109.86771162    -0.57321210    -0.02030306  0.26D-02  0.19D-02   361.99
    2    24    24     1.08409464    -0.57319096  -109.86769048    -0.57319096    -0.02034409  0.26D-02  0.19D-02   361.99
    2    25    25     1.13637046    -0.58338930  -109.84973522    -0.58338930    -0.05429006  0.20D-01  0.33D-02   361.99
    2    26    26     1.13618161    -0.58338677  -109.84973268    -0.58338677    -0.05424635  0.20D-01  0.33D-02   361.99
    2    27    27     1.13636846    -0.58329409  -109.84964000    -0.58329409    -0.05432577  0.20D-01  0.33D-02   361.99
    2    28    28     1.14287275    -0.57851561  -109.84486151    -0.57851561    -0.05942545  0.24D-01  0.36D-02   361.99
    2    29    29     1.14288802    -0.57848237  -109.84482824    -0.57848237    -0.05944165  0.24D-01  0.36D-02   361.99
    3     1     1     1.08587830    -0.58582068  -109.93559643    -0.02044341    -0.00233958  0.57D-04  0.39D-03   690.89
    3     2     2     1.08576337    -0.58568147  -109.93545722    -0.02058293    -0.00242457  0.57D-04  0.40D-03   690.89
    3     3     3     1.08569596    -0.58563376  -109.93540951    -0.02063405    -0.00247596  0.62D-04  0.41D-03   690.89
    3     4     4     1.08570906    -0.58560121  -109.93537696    -0.02060509    -0.00248607  0.63D-04  0.41D-03   690.89
    3     5     5     1.08568387    -0.58558493  -109.93536068    -0.02075742    -0.00250239  0.62D-04  0.41D-03   690.89
    3     6     6     1.08561309    -0.58553919  -109.93531493    -0.02081124    -0.00253484  0.63D-04  0.42D-03   690.89
    3     7     7     1.08561796    -0.58551910  -109.93529484    -0.02087971    -0.00254071  0.63D-04  0.42D-03   690.89
    3     8     8     1.09377048    -0.59204419  -109.92530558    -0.02692849    -0.00283673  0.17D-03  0.38D-03   690.89
    3     9     9     1.09375131    -0.59204066  -109.92530204    -0.02704174    -0.00283520  0.17D-03  0.38D-03   690.89
    3    10    10     1.09398009    -0.59203956  -109.92530094    -0.02722094    -0.00285295  0.18D-03  0.38D-03   690.89
    3    11    11     1.09398805    -0.59201500  -109.92527639    -0.02728818    -0.00286795  0.18D-03  0.38D-03   690.89
    3    12    12     1.09374150    -0.59201154  -109.92527292    -0.02729155    -0.00285421  0.17D-03  0.38D-03   690.89
    3    13    13     1.09055316    -0.59408979  -109.89955369    -0.02126173    -0.00223810  0.13D-03  0.35D-03   690.89
    3    14    14     1.09051343    -0.59405154  -109.89951544    -0.02145594    -0.00226528  0.13D-03  0.35D-03   690.89
    3    15    15     1.09046949    -0.59400051  -109.89946440    -0.02157231    -0.00229376  0.13D-03  0.35D-03   690.89
    3    16    16     1.09893307    -0.60262035  -109.89711989    -0.02887602    -0.00330160  0.25D-03  0.42D-03   690.89
    3    17    17     1.09889224    -0.60261188  -109.89711142    -0.02891904    -0.00330470  0.25D-03  0.43D-03   690.89
    3    18    18     1.09891898    -0.60258879  -109.89708832    -0.02906308    -0.00331907  0.25D-03  0.43D-03   690.89
    3    19    19     1.09967751    -0.60243140  -109.89693093    -0.02892719    -0.00345967  0.27D-03  0.44D-03   690.89
    3    20    20     1.09965779    -0.60241093  -109.89691046    -0.02891324    -0.00347065  0.27D-03  0.45D-03   690.89
    3    21    21     1.08634790    -0.59442803  -109.88892755    -0.02093326    -0.00237305  0.12D-03  0.33D-03   690.89
    3    22    22     1.08633091    -0.59440796  -109.88890749    -0.02118542    -0.00238479  0.12D-03  0.33D-03   690.89
    3    23    23     1.08630410    -0.59440112  -109.88890065    -0.02118902    -0.00238594  0.12D-03  0.33D-03   690.89
    3    24    24     1.08629843    -0.59439939  -109.88889892    -0.02120843    -0.00238581  0.12D-03  0.33D-03   690.89
    3    25    25     1.08630605    -0.62254688  -109.88889280    -0.03915758    -0.00239220  0.12D-03  0.33D-03   690.89
    3    26    26     1.08632663    -0.62253816  -109.88888407    -0.03915139    -0.00239474  0.12D-03  0.34D-03   690.89
    3    27    27     1.08629569    -0.62251689  -109.88886279    -0.03922279    -0.00241027  0.12D-03  0.34D-03   690.89
    3    28    28     1.08628301    -0.62250133  -109.88884723    -0.04398572    -0.00242140  0.12D-03  0.34D-03   690.89
    3    29    29     1.08627697    -0.62249963  -109.88884550    -0.04401726    -0.00241407  0.12D-03  0.34D-03   690.89
 More than                   512  records on file                     8
 ? Error
 ? Too many records
 ? The problem occurs in reservem

 GLOBAL ERROR fehler on processor   0                                         
