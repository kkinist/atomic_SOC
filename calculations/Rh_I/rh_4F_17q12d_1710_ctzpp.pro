
 Working directory              : /wrk/irikura/molpro.OAIEqbdfIJ/
 Global scratch directory       : /wrk/irikura/molpro.OAIEqbdfIJ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.OAIEqbdfIJ/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! Heavy weight on 4F
                                                                                 ! 4F,4P,4F + 2F,2D
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
         weight,7[99],10[1]
     wf,nelec=17,sym=1,spin=1; state,12;
         weight,all,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,12;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.18 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 15-Feb-24          TIME: 14:19:24  
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

     15.729 MB (compressed) written to integral file ( 19.4%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     192330.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     192330      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.08 SEC, REAL TIME:     0.10 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     90 RECORDS. CPU TIME:     0.00 SEC, REAL TIME:     0.01 SEC

 Node minimum:      190791.  Node maximum:      197199. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.77      1.43
 REAL TIME  *         2.90 SEC
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
 Number of states:            12
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.321D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.323D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.207D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.210D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 5 3 1 711 91514  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.250D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 9 7 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.13846   0.13846   0.13846   0.13846   0.13846   0.13846   0.13846   0.00140
                                          0.00140   0.00140   0.00140   0.00140   0.00140   0.00140   0.00140   0.00140
                                          0.00140
 Weight factors for state symmetry  2:    0.00140   0.00140   0.00140   0.00140   0.00140   0.00140   0.00140   0.00140
                                          0.00140   0.00140   0.00140   0.00140
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    4177
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.36548493    -109.37968982   -0.01420489    0.20114261 0.00013969 0.00000000  0.13E+00      0.31
   2    2    4    0   -109.37937700    -109.37939191   -0.00001491    0.00612633 0.00001504 0.00000000  0.44E-02      0.55
   3   20   40    0   -109.37939193    -109.37939193   -0.00000000    0.00000739 0.00000371 0.00000000  0.55E-05      2.12
   4   20   40    0   -109.37939193    -109.37939193    0.00000000    0.00000011 0.00000011 0.00000000  0.88E-07      3.73

 CONVERGENCE REACHED!  Final gradient:    0.00000019 ( 0.19E-06)
                       Final energy:   -109.37939193
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.381195542781
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857424
 One electron energy                          -193.58546540
 Two electron energy                            84.20426986
 Virial ratio                                    3.66792681
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.381195542690
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857426
 One electron energy                          -193.58546543
 Two electron energy                            84.20426988
 Virial ratio                                    3.66792681
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.381195542248
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857424
 One electron energy                          -193.58546540
 Two electron energy                            84.20426986
 Virial ratio                                    3.66792681
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.381195541428
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857434
 One electron energy                          -193.58546554
 Two electron energy                            84.20427000
 Virial ratio                                    3.66792681
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.381195541099
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857432
 One electron energy                          -193.58546552
 Two electron energy                            84.20426997
 Virial ratio                                    3.66792681
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.381195540509
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857442
 One electron energy                          -193.58546566
 Two electron energy                            84.20427012
 Virial ratio                                    3.66792680
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.381195540193
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99857444
 One electron energy                          -193.58546569
 Two electron energy                            84.20427015
 Virial ratio                                    3.66792680
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327627048178
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99930563
 One electron energy                          -193.57588002
 Two electron energy                            84.24825297
 Virial ratio                                    3.66657265
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327627047533
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99930566
 One electron energy                          -193.57588006
 Two electron energy                            84.24825302
 Virial ratio                                    3.66657265
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327627045703
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99930571
 One electron energy                          -193.57588013
 Two electron energy                            84.24825308
 Virial ratio                                    3.66657264
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.283848371345
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507987
 One electron energy                          -189.08046633
 Two electron energy                            79.79661795
 Virial ratio                                    3.83301677
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.283848371016
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507987
 One electron energy                          -189.08046632
 Two electron energy                            79.79661795
 Virial ratio                                    3.83301677
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.283848370075
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507985
 One electron energy                          -189.08046630
 Two electron energy                            79.79661793
 Virial ratio                                    3.83301678
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.283848367584
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507978
 One electron energy                          -189.08046620
 Two electron energy                            79.79661783
 Virial ratio                                    3.83301678
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.283848366823
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507977
 One electron energy                          -189.08046618
 Two electron energy                            79.79661782
 Virial ratio                                    3.83301678
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.283848363031
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507968
 One electron energy                          -189.08046606
 Two electron energy                            79.79661769
 Virial ratio                                    3.83301679
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.283848361916
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57507966
 One electron energy                          -189.08046602
 Two electron energy                            79.79661766
 Virial ratio                                    3.83301679
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.351277694150
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116760
 One electron energy                          -193.55549144
 Two electron energy                            84.20421375
 Virial ratio                                    3.66832997
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.351277693849
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116762
 One electron energy                          -193.55549147
 Two electron energy                            84.20421377
 Virial ratio                                    3.66832997
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.351277693699
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116760
 One electron energy                          -193.55549144
 Two electron energy                            84.20421374
 Virial ratio                                    3.66832997
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.351277691683
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116770
 One electron energy                          -193.55549158
 Two electron energy                            84.20421388
 Virial ratio                                    3.66832996
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.351277691558
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116769
 One electron energy                          -193.55549156
 Two electron energy                            84.20421387
 Virial ratio                                    3.66832996
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.351277689633
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116779
 One electron energy                          -193.55549170
 Two electron energy                            84.20421401
 Virial ratio                                    3.66832996
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.351277689044
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98116781
 One electron energy                          -193.55549174
 Two electron energy                            84.20421405
 Virial ratio                                    3.66832996
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333590802331
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07555777
 One electron energy                          -193.71000999
 Two electron energy                            84.37641919
 Virial ratio                                    3.66176765
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333590801995
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07555777
 One electron energy                          -193.71001000
 Two electron energy                            84.37641919
 Virial ratio                                    3.66176765
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333590801900
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07555781
 One electron energy                          -193.71001004
 Two electron energy                            84.37641924
 Virial ratio                                    3.66176765
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333590801379
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07555783
 One electron energy                          -193.71001008
 Two electron energy                            84.37641928
 Virial ratio                                    3.66176764
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333590801165
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07555785
 One electron energy                          -193.71001009
 Two electron energy                            84.37641929
 Virial ratio                                    3.66176764
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     2.855983122212
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     3.141777905640
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     7.213153756630
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     6.857981605618
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     1.144019081558
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     4.000000000000
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     2.786800152662
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999998729
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000000003993
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.999999999653
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     5.809789159200
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     3.650152602374
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     2.817267739452
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     0.349870742709
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     7.182735976282
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     3.999999999989
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     4.190258096006
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.144783234411
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     2.975031232736
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     6.488423118326
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     7.024947630481
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     0.855120064967
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     3.999999999999
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.511594290497
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     1.000000039321
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     3.999999949105
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     0.409180387114
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000000006143
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     3.590869811486
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     1.071672974643
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     0.517429379146
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     4.676568137251
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     3.482661984535
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     8.928327789301
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     4.000000000000
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     5.323486996833
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     1.000000000000
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999999999999
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.000000000390
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     6.187827537179
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     1.986605513040
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     0.650077697191
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     8.013448752753
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     3.349920669087
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     4.000000000139
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     3.812126385269
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     1.251837784820
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     0.583107754965
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     5.495061997327
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     3.416904390409
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     8.748073366625
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     4.000000000000
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     4.504918769722
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.999999946247
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000000016734
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     3.845157258739
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000021046
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     0.154874696080
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     8.072343903145
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     8.340792715214
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     0.110278106120
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     1.659356409846
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.927653129141
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     4.000000000000
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     3.889712850505
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.000000001271
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999996008
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999957
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     0.002383303621
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     6.363241884587
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     8.532654563357
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     3.636680504538
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     1.467343354631
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     3.999999999872
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     3.997615518725
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     7.603378980770
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     8.441861012299
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     0.016514884347
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     1.558147979110
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     2.396806568408
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     4.000000000000
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     3.983486939781
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     1.000000014432
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000034162
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.745662354147
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     3.999999972812
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     2.254255492434
 
 !MCSCF expec      <1.1 Quartet|L**2|1.1 Quartet>    12.000000000000
 !MCSCF expec      <2.1 Quartet|L**2|2.1 Quartet>    12.000000000000
 !MCSCF expec      <3.1 Quartet|L**2|3.1 Quartet>    12.000000000000
 !MCSCF expec      <4.1 Quartet|L**2|4.1 Quartet>    12.000000000000
 !MCSCF expec      <5.1 Quartet|L**2|5.1 Quartet>    12.000000000000
 !MCSCF expec      <6.1 Quartet|L**2|6.1 Quartet>    12.000000000000
 !MCSCF expec      <7.1 Quartet|L**2|7.1 Quartet>    12.000000000000
 !MCSCF expec      <8.1 Quartet|L**2|8.1 Quartet>     2.000000000000
 !MCSCF expec      <9.1 Quartet|L**2|9.1 Quartet>     2.000000000000
 !MCSCF expec    <10.1 Quartet|L**2|10.1 Quartet>     2.000000000000
 !MCSCF expec    <11.1 Quartet|L**2|11.1 Quartet>    12.000000000000
 !MCSCF expec    <12.1 Quartet|L**2|12.1 Quartet>    12.000000000000
 !MCSCF expec    <13.1 Quartet|L**2|13.1 Quartet>    12.000000000000
 !MCSCF expec    <14.1 Quartet|L**2|14.1 Quartet>    12.000000000000
 !MCSCF expec    <15.1 Quartet|L**2|15.1 Quartet>    12.000000000000
 !MCSCF expec    <16.1 Quartet|L**2|16.1 Quartet>    12.000000000000
 !MCSCF expec    <17.1 Quartet|L**2|17.1 Quartet>    12.000000000000
 !MCSCF expec      <1.1 Doublet|L**2|1.1 Doublet>    12.000000000000
 !MCSCF expec      <2.1 Doublet|L**2|2.1 Doublet>    12.000000000000
 !MCSCF expec      <3.1 Doublet|L**2|3.1 Doublet>    12.000000000000
 !MCSCF expec      <4.1 Doublet|L**2|4.1 Doublet>    12.000000000000
 !MCSCF expec      <5.1 Doublet|L**2|5.1 Doublet>    12.000000000000
 !MCSCF expec      <6.1 Doublet|L**2|6.1 Doublet>    12.000000000000
 !MCSCF expec      <7.1 Doublet|L**2|7.1 Doublet>    12.000000000000
 !MCSCF expec      <8.1 Doublet|L**2|8.1 Doublet>     6.000000000000
 !MCSCF expec      <9.1 Doublet|L**2|9.1 Doublet>     6.000000000000
 !MCSCF expec    <10.1 Doublet|L**2|10.1 Doublet>     6.000000000000
 !MCSCF expec    <11.1 Doublet|L**2|11.1 Doublet>     6.000000000000
 !MCSCF expec    <12.1 Doublet|L**2|12.1 Doublet>     6.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 6 2 4 5 1 1 3 6   2 4 5 1 3 6 2 4 5 3   4 5 2 6 11310 91415  12 8 711 5 4 3 2 6 1
                                       1310 9141512 8 711 5   4 3 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 1   3 2 8 9 7 6 5 410 1   3 2 7 9 4 810 6 5 1   2 3 4 9 710 8 6 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72125     1  1  s    1.00195
    2.1     1.59808    -0.30358     1  1  d2-  1.00367
    3.1     1.59808    -0.30358     1  1  d1-  1.00367
    4.1     1.59808    -0.30358     1  1  d0   1.00367
    5.1     1.59808    -0.30358     1  1  d1+  1.00367
    6.1     1.59808    -0.30358     1  1  d2+  1.00367
    7.1     1.00965    -0.10035     1  2  s    0.95367
    1.2     1.99998    -2.35106     1  1  px   1.00015
    2.2     1.99998    -2.35106     1  1  py   1.00015
    3.2     1.99998    -2.35106     1  1  pz   1.00015
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 222a2aa 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      1.00000000     -0.00000000
 2aa2a22 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22a2aa2 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2a22a 222      0.00000015      0.00000931     -0.16604073     -0.00000406      0.00001145     -0.00000000      0.98611890
 2a2a2a2 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a222aa 222      0.00000160     -0.00000313     -0.44100579      0.00000878     -0.00000086     -0.00000000     -0.07425566
 2a2aa22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a2a2a 222     -0.00000320      0.00000627      0.88201155     -0.00001755      0.00000173      0.00000000      0.14851134
 22aa2a2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22a22aa 222      0.85135999     -0.00001497      0.00000302      0.00004371      0.27420099     -0.00000000     -0.00000280
 2aa222a 222      0.00001654      0.83457425     -0.00001049     -0.32169214      0.00004547     -0.00000000     -0.00001097
 222aaa2 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222aa2a 222      0.00001355      0.18154986     -0.00001229     -0.60583795      0.00006439     -0.00000000     -0.00000628
 22aa22a 222     -0.21536666      0.00001181     -0.00000076     -0.00006448     -0.59465720      0.00000000      0.00000681
 2a22a2a 222     -0.47833395     -0.00000549     -0.00000170      0.00006798      0.75577551     -0.00000000     -0.00000899
 2222aaa 222     -0.00000693      0.52012062      0.00001080      0.72765001     -0.00006606      0.00000000     -0.00000010
 2aaa222 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa22a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a22aa2 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 22aaa22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 
 Energy:       -109.38119554   -109.38119554   -109.38119554   -109.38119554   -109.38119554   -109.38119554   -109.38119554

 State:                8               9              10              11              12              13              14
 222a2aa 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2aa2a22 222     -0.00000000      0.00000000     -0.00000000      0.00000021      0.00000733     -0.00000033     -0.00000929
 22a2aa2 222      0.00000000      0.00000000      0.00000000      0.02439924     -0.00000158      0.00000094      0.00000142
 2a2a22a 222     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2a2a2 222     -0.00007095     -0.00000000     -0.00000000      0.89378316      0.00000001     -0.00000002     -0.00000001
 2a222aa 222      0.89377620      0.00003186      0.00000059      0.00000001     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222     -0.00000000      0.00007094     -0.00000000      0.00000002      0.89303904     -0.00003612      0.04249542
 22a2a2a 222      0.44688812      0.00001593      0.00000029      0.00000001     -0.00000000      0.00000000     -0.00000000
 22aa2a2 222     -0.00000000      0.00007093     -0.00000000     -0.00000002     -0.26440575      0.00000653      0.85405748
 22a22aa 222     -0.00001593      0.44688808     -0.00000042      0.00000000     -0.00000000      0.00000000     -0.00000000
 2aa222a 222      0.00000029     -0.00000042     -0.44688808      0.00000000     -0.00000000      0.00000000     -0.00000000
 222aaa2 222      0.00000000     -0.00000000     -0.00007094     -0.00000001      0.00003038      0.81818018     -0.00001709
 222aa2a 222     -0.00000051      0.00000073      0.77403292      0.00000000      0.00000000      0.00000000     -0.00000000
 22aa22a 222     -0.00002760      0.77403291     -0.00000073     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22a2a 222     -0.00001593      0.44688811     -0.00000042      0.00000000     -0.00000000      0.00000000     -0.00000000
 2222aaa 222     -0.00000029      0.00000042      0.44688810     -0.00000000      0.00000000      0.00000000     -0.00000000
 2aaa222 222     -0.00000000      0.00000000      0.00007094      0.00000001      0.00002718      0.55352449      0.00004361
 2aa22a2 222     -0.00000000      0.00000000      0.00012286     -0.00000001      0.00000185      0.15279902     -0.00003504
 2a22aa2 222     -0.00000000      0.00012286     -0.00000000      0.00000000     -0.36294156      0.00001709     -0.51762504
 22aaa22 222     -0.00014187     -0.00000001     -0.00000000     -0.44689154     -0.00000001      0.00000001      0.00000001
 
 Energy:       -109.32762705   -109.32762705   -109.32762705   -109.28384837   -109.28384837   -109.28384837   -109.28384837

 State:               15              16              17
 222a2aa 222     -0.00000000      0.00000000      0.00000000
 2aa2a22 222     -0.00000005      0.99957777      0.00000139
 22a2aa2 222      0.00000132     -0.00000139      0.99927994
 2a2a22a 222     -0.00000000     -0.00000000     -0.00000000
 2a2a2a2 222     -0.00000004     -0.00000016     -0.02182335
 2a222aa 222     -0.00000000      0.00000000     -0.00000000
 2a2aa22 222     -0.00000874     -0.00000616      0.00000135
 22a2a2a 222     -0.00000000      0.00000000      0.00000000
 22aa2a2 222     -0.00004796      0.00000988     -0.00000163
 22a22aa 222     -0.00000000     -0.00000000     -0.00000000
 2aa222a 222      0.00000000     -0.00000000      0.00000000
 222aaa2 222     -0.36042445      0.00000025     -0.00000029
 222aa2a 222     -0.00000001      0.00000000     -0.00000000
 22aa22a 222     -0.00000000     -0.00000000     -0.00000000
 2a22a2a 222      0.00000000     -0.00000000     -0.00000000
 2222aaa 222     -0.00000000      0.00000000     -0.00000000
 2aaa222 222      0.70209346      0.00000022     -0.00000145
 2aa22a2 222     -0.61344494      0.00000002      0.00000067
 2a22aa2 222      0.00003273     -0.00000215      0.00000016
 22aaa22 222      0.00000002      0.00000008      0.01091166
 
 Energy:       -109.28384837   -109.28384836   -109.28384836
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 222a2ab 222      0.00000099     -0.00000200     -0.00000121     -0.00000452      0.00000069      0.81405673     -0.00000043
 2a2a22b 222      0.00001483      0.00000971     -0.05230636      0.00001301      0.00001168      0.00000035      0.81237455
 22a2a2b 222     -0.00008322      0.00013355      0.72660986      0.00001312     -0.00000473      0.00000110      0.04678424
 22a22ab 222      0.70926976      0.00030387      0.00008289      0.00015764      0.16458125     -0.00000100     -0.00000998
 2aa222b 222     -0.00030399      0.67295386     -0.00011798     -0.27799927      0.00033389      0.00000011     -0.00001119
 2a22a2b 222     -0.33667257     -0.00017987     -0.00003399      0.00070813      0.64560183     -0.00000013     -0.00000533
 2222aab 222     -0.00017563      0.43741024     -0.00008962      0.58208467     -0.00060819      0.00000431     -0.00002031
 2a2b22a 222     -0.00000741     -0.00000485      0.02615317     -0.00000651     -0.00000584     -0.00000018     -0.40618725
 2b2a22a 222     -0.00000741     -0.00000485      0.02615319     -0.00000651     -0.00000584     -0.00000018     -0.40618729
 222202a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 222aa2b 222     -0.00007410      0.13599114     -0.00001637     -0.49656966      0.00054391     -0.00000242      0.00000527
 220222a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000
 22aa22b 222     -0.21511905     -0.00007159     -0.00002823     -0.00049985     -0.46775941      0.00000065      0.00000884
 2ba222a 222      0.00015199     -0.33647692      0.00005899      0.13899963     -0.00016694     -0.00000006      0.00000559
 22a22ba 222     -0.35463487     -0.00015194     -0.00004144     -0.00007882     -0.08229062      0.00000050      0.00000499
 22a2b2a 222      0.00004161     -0.00006677     -0.36330492     -0.00000656      0.00000236     -0.00000055     -0.02339213
 2b22a2a 222      0.16833629      0.00008994      0.00001700     -0.00035407     -0.32280091      0.00000007      0.00000267
 2222baa 222      0.00008782     -0.21870511      0.00004481     -0.29104234      0.00030409     -0.00000216      0.00001015
 2222aba 222      0.00008782     -0.21870513      0.00004481     -0.29104233      0.00030409     -0.00000216      0.00001015
 2ab222a 222      0.00015199     -0.33647694      0.00005899      0.13899964     -0.00016694     -0.00000006      0.00000559
 22b22aa 222     -0.35463489     -0.00015194     -0.00004144     -0.00007882     -0.08229063      0.00000050      0.00000499
 2a22b2a 222      0.16833628      0.00008994      0.00001700     -0.00035407     -0.32280092      0.00000007      0.00000267
 22b2a2a 222      0.00004161     -0.00006677     -0.36330494     -0.00000656      0.00000236     -0.00000055     -0.02339211
 222a2ba 222     -0.00000050      0.00000100      0.00000060      0.00000226     -0.00000034     -0.40702839      0.00000022
 222b2aa 222     -0.00000050      0.00000100      0.00000060      0.00000226     -0.00000034     -0.40702834      0.00000022
 202222a 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222220a 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 222022a 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2a222ab 222      0.00004161     -0.00006677     -0.36330494     -0.00000656      0.00000236     -0.00000055     -0.02339211
 222ba2a 222      0.00003705     -0.06799556      0.00000818      0.24828482     -0.00027195      0.00000121     -0.00000263
 22ab22a 222      0.10755952      0.00003579      0.00001411      0.00024993      0.23387969     -0.00000033     -0.00000442
 222ab2a 222      0.00003705     -0.06799557      0.00000818      0.24828484     -0.00027195      0.00000121     -0.00000263
 22ba22a 222      0.10755953      0.00003579      0.00001411      0.00024993      0.23387972     -0.00000033     -0.00000442
 22a2220 222      0.00000001      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22220 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2222a20 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2a222ba 222     -0.00002080      0.00003339      0.18165247      0.00000328     -0.00000118      0.00000028      0.01169605
 2b222aa 222     -0.00002080      0.00003339      0.18165247      0.00000328     -0.00000118      0.00000028      0.01169605
 22222a0 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 222a220 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000
 2a20222 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22220a2 222     -0.00000003      0.00000005      0.00000003      0.00000012     -0.00000002     -0.02225664      0.00000001
 22022a2 222     -0.00000003      0.00000005      0.00000003      0.00000012     -0.00000002     -0.02225664      0.00000001
 22202a2 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 202a222 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222a202 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22022 222     -0.00000157      0.00000343      0.01577422      0.00000067      0.00000021      0.00000004      0.02331838
 2022a22 222      0.00001034     -0.02443161      0.00000469     -0.01398819      0.00001393     -0.00000014      0.00000082
 20a2222 222      0.02770600      0.00001243      0.00000315     -0.00000620     -0.00499499     -0.00000003     -0.00000023
 22a2022 222      0.01176289      0.00000391      0.00000154      0.00002733      0.02557746     -0.00000004     -0.00000048
 2222a02 222     -0.00001237      0.02814966     -0.00000514      0.00041177      0.00000094      0.00000007     -0.00000067
 22a2202 222     -0.02182456     -0.00001048     -0.00000238      0.00001987      0.01778372      0.00000001     -0.00000001
 2a02222 222      0.00000238     -0.00000290     -0.01863437      0.00000004      0.00000043     -0.00000002      0.02110291
 2202a22 222     -0.00000405      0.00743611     -0.00000090     -0.02715283      0.00002974     -0.00000013      0.00000029
 
 Energy:       -109.35127769   -109.35127769   -109.35127769   -109.35127769   -109.35127769   -109.35127769   -109.35127769

 State:                8               9              10              11              12
 222a2ab 222      0.00000000     -0.00000000     -0.00000002      0.00000000      0.00000002
 2a2a22b 222      0.00000000     -0.00000000      0.00000000     -0.00000003      0.00000000
 22a2a2b 222     -0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000
 22a22ab 222      0.00000000     -0.00000002      0.00000000      0.00000000      0.00000000
 2aa222b 222      0.00000002      0.00000000      0.00000000      0.00000000      0.00000000
 2a22a2b 222      0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000
 2222aab 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a2b22a 222     -0.00003513      0.00005324      0.00000897      0.51635513      0.00000859
 2b2a22a 222      0.00003513     -0.00005324     -0.00000897     -0.51635510     -0.00000859
 222202a 222      0.00000374     -0.00000584     -0.10159303     -0.00000665      0.50626224
 222aa2b 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 220222a 222     -0.00000970      0.00002583      0.48923249     -0.00000576     -0.16514897
 22aa22b 222     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2ba222a 222     -0.44717666     -0.00005142     -0.00000832     -0.00003042      0.00000163
 22a22ba 222     -0.00005141      0.44717666     -0.00002346     -0.00004611      0.00000045
 22a2b2a 222      0.00003042     -0.00004611     -0.00000777     -0.44717665     -0.00000744
 2b22a2a 222     -0.00005141      0.44717664     -0.00002346     -0.00004611      0.00000045
 2222baa 222     -0.44717664     -0.00005142     -0.00000832     -0.00003042      0.00000163
 2222aba 222      0.44717664      0.00005142      0.00000832      0.00003042     -0.00000163
 2ab222a 222      0.44717664      0.00005142      0.00000832      0.00003042     -0.00000163
 22b22aa 222      0.00005141     -0.44717664      0.00002346      0.00004611     -0.00000045
 2a22b2a 222      0.00005141     -0.44717664      0.00002346      0.00004611     -0.00000045
 22b2a2a 222     -0.00003042      0.00004611      0.00000777      0.44717663      0.00000744
 222a2ba 222      0.00000776     -0.00001828     -0.34111326     -0.00000052      0.38763945
 222b2aa 222     -0.00000776      0.00001828      0.34111328      0.00000052     -0.38763947
 202222a 222      0.00000596     -0.00001999     -0.38763946      0.00001241     -0.34111327
 222220a 222      0.00000596     -0.00001999     -0.38763945      0.00001241     -0.34111328
 222022a 222     -0.00000596      0.00001999      0.38763945     -0.00001241      0.34111326
 2a222ab 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 222ba2a 222     -0.25817755     -0.00002969     -0.00000480     -0.00001756      0.00000094
 22ab22a 222      0.00002968     -0.25817755      0.00001354      0.00002662     -0.00000026
 222ab2a 222      0.25817755      0.00002969      0.00000480      0.00001756     -0.00000094
 22ba22a 222     -0.00002968      0.25817754     -0.00001354     -0.00002662      0.00000026
 22a2220 222     -0.00002493      0.21680988     -0.00001137     -0.00002236      0.00000022
 2a22220 222     -0.00001475      0.00002236      0.00000377      0.21680987      0.00000361
 2222a20 222     -0.21680986     -0.00002493     -0.00000403     -0.00001475      0.00000079
 2a222ba 222     -0.00000000      0.00000000      0.00000000      0.00000001      0.00000000
 2b222aa 222      0.00000000     -0.00000000     -0.00000000     -0.00000001      0.00000000
 22222a0 222      0.00000326     -0.00000768     -0.14322841     -0.00000022      0.16276407
 222a220 222     -0.00000250      0.00000839      0.16276405     -0.00000521      0.14322840
 2a20222 222      0.00000506     -0.00000766     -0.00000129     -0.07430011     -0.00000124
 22220a2 222     -0.00000028      0.00000018      0.00218676      0.00000105     -0.06518975
 22022a2 222     -0.00000124      0.00000339      0.06438238     -0.00000095     -0.01045910
 22202a2 222     -0.00000112      0.00000263      0.04908396      0.00000007     -0.05577877
 202a222 222      0.00000086     -0.00000288     -0.05577876      0.00000179     -0.04908395
 222a202 222      0.00000086     -0.00000288     -0.05577876      0.00000179     -0.04908395
 2a22022 222      0.00000343     -0.00000520     -0.00000088     -0.05038402     -0.00000084
 2022a22 222      0.05038402      0.00000579      0.00000094      0.00000343     -0.00000018
 20a2222 222      0.00000579     -0.05038402      0.00000264      0.00000520     -0.00000005
 22a2022 222      0.00000579     -0.05038402      0.00000264      0.00000520     -0.00000005
 2222a02 222      0.05038402      0.00000579      0.00000094      0.00000343     -0.00000018
 22a2202 222      0.00000579     -0.05038402      0.00000264      0.00000520     -0.00000005
 2a02222 222      0.00000343     -0.00000520     -0.00000088     -0.05038402     -0.00000084
 2202a22 222      0.05038402      0.00000579      0.00000094      0.00000343     -0.00000018
 
 Energy:       -109.33359080   -109.33359080   -109.33359080   -109.33359080   -109.33359080
 


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
 CPU TIMES  *         5.55      3.78      1.43
 REAL TIME  *         7.00 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.38 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3811955   12.0
    -109.3276270    2.0
    -109.3276270    2.0
    -109.3276270    2.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.2838484   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3512777   12.0
    -109.3335908    6.0
    -109.3335908    6.0
    -109.3335908    6.0
    -109.3335908    6.0
    -109.3335908    6.0
                                                  


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
 Smallest eigenvalue of S:  0.2153480E-16. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.6607027E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.38119554
     2      -109.38119554
     3      -109.38119554
     4      -109.38119554
     5      -109.38119554
     6      -109.38119554
     7      -109.38119554
     8      -109.32762705
     9      -109.32762705
    10      -109.32762705
    11      -109.28384837
    12      -109.28384837
    13      -109.28384837
    14      -109.28384837
    15      -109.28384837
    16      -109.28384836
    17      -109.28384836

 Number of blocks in overlap matrix:    59   Smallest eigenvalue:  0.14D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  931980 words, CPU-Time:      0.18 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  564595 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.67073123  0.24D-01  0.99D-01     3.61
    1     2     2     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.67049819  0.24D-01  0.99D-01     3.61
    1     3     3     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.66937872  0.24D-01  0.99D-01     3.61
    1     4     4     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.67106568  0.24D-01  0.99D-01     3.61
    1     5     5     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.67030334  0.24D-01  0.99D-01     3.61
    1     6     6     1.00000000     0.00000000  -109.38119554    -0.00000000    -0.67275895  0.25D-01  0.10D+00     3.61
    1     7     7     1.00000000     0.00000000  -109.38119554     0.00000000    -0.67269681  0.24D-01  0.10D+00     3.61
    1     8     8     1.00000000     0.00000000  -109.32762705     0.00000000    -0.68165616  0.29D-01  0.10D+00     3.61
    1     9     9     1.00000000     0.00000000  -109.32762705     0.00000000    -0.68165206  0.29D-01  0.10D+00     3.61
    1    10    10     1.00000000     0.00000000  -109.32762705     0.00000000    -0.68203240  0.29D-01  0.10D+00     3.61
    1    11    11     1.00000000     0.00000000  -109.28384837    -0.00000000    -0.70543274  0.93D-01  0.85D-01     3.61
    1    12    12     1.00000000     0.00000000  -109.28384837    -0.00000000    -0.70681420  0.93D-01  0.86D-01     3.61
    1    13    13     1.00000000     0.00000000  -109.28384837     0.00000000    -0.70609911  0.94D-01  0.85D-01     3.61
    1    14    14     1.00000000     0.00000000  -109.28384837     0.00000000    -0.70609310  0.93D-01  0.85D-01     3.61
    1    15    15     1.00000000     0.00000000  -109.28384837     0.00000000    -0.70661813  0.92D-01  0.86D-01     3.61
    1    16    16     1.00000000     0.00000000  -109.28384836    -0.00000000    -0.70749647  0.95D-01  0.85D-01     3.61
    1    17    17     1.00000000     0.00000000  -109.28384836    -0.00000000    -0.70984744  0.95D-01  0.86D-01     3.61
    2     1     1     1.08662430    -0.56164735  -109.94284290    -0.56164735    -0.01871521  0.12D-02  0.26D-02    59.67
    2     2     2     1.08662190    -0.56161622  -109.94281176    -0.56161622    -0.01873162  0.12D-02  0.26D-02    59.67
    2     3     3     1.08647687    -0.56120256  -109.94239810    -0.56120256    -0.01880851  0.12D-02  0.26D-02    59.67
    2     4     4     1.08647733    -0.56119362  -109.94238917    -0.56119362    -0.01882272  0.12D-02  0.26D-02    59.67
    2     5     5     1.08639336    -0.56091817  -109.94211371    -0.56091817    -0.01888021  0.11D-02  0.26D-02    59.67
    2     6     6     1.08635126    -0.56075243  -109.94194797    -0.56075243    -0.01894447  0.12D-02  0.26D-02    59.67
    2     7     7     1.08629877    -0.56056960  -109.94176514    -0.56056960    -0.01899730  0.12D-02  0.26D-02    59.67
    2     8     8     1.09170822    -0.57134400  -109.89897105    -0.57134400    -0.01838368  0.13D-02  0.27D-02    59.67
    2     9     9     1.09166327    -0.57121597  -109.89884302    -0.57121597    -0.01842932  0.13D-02  0.27D-02    59.67
    2    10    10     1.09166920    -0.57118135  -109.89880840    -0.57118135    -0.01845661  0.13D-02  0.27D-02    59.67
    2    11    11     1.11662282    -0.57179183  -109.85564020    -0.57179183    -0.03148441  0.48D-02  0.38D-02    59.67
    2    12    12     1.11774995    -0.57161007  -109.85545844    -0.57161007    -0.03219995  0.52D-02  0.38D-02    59.67
    2    13    13     1.11652610    -0.57154971  -109.85539808    -0.57154971    -0.03153661  0.48D-02  0.38D-02    59.67
    2    14    14     1.11697479    -0.57119759  -109.85504596    -0.57119759    -0.03192419  0.50D-02  0.38D-02    59.67
    2    15    15     1.11664026    -0.57113227  -109.85498063    -0.57113227    -0.03178347  0.48D-02  0.38D-02    59.67
    2    16    16     1.11690223    -0.57099007  -109.85483844    -0.57099007    -0.03197755  0.49D-02  0.38D-02    59.67
    2    17    17     1.11724434    -0.57060850  -109.85445686    -0.57060850    -0.03228380  0.52D-02  0.38D-02    59.67
    3     1     1     1.08443048    -0.58173403  -109.96292957    -0.02008668    -0.00135266  0.37D-04  0.22D-03   112.70
    3     2     2     1.08442580    -0.58172381  -109.96291936    -0.02010759    -0.00135983  0.37D-04  0.22D-03   112.70
    3     3     3     1.08425315    -0.58156833  -109.96276387    -0.02036577    -0.00142614  0.39D-04  0.22D-03   112.70
    3     4     4     1.08424931    -0.58156137  -109.96275691    -0.02036775    -0.00142725  0.39D-04  0.22D-03   112.70
    3     5     5     1.08415439    -0.58145114  -109.96264668    -0.02053297    -0.00147385  0.40D-04  0.23D-03   112.70
    3     6     6     1.08411489    -0.58141431  -109.96260985    -0.02066189    -0.00149747  0.41D-04  0.23D-03   112.70
    3     7     7     1.08405598    -0.58134350  -109.96253904    -0.02077389    -0.00152691  0.42D-04  0.23D-03   112.70
    3     8     8     1.08846445    -0.59132436  -109.91895140    -0.01998035    -0.00139304  0.53D-04  0.22D-03   112.70
    3     9     9     1.08841497    -0.59128413  -109.91891118    -0.02006816    -0.00141461  0.53D-04  0.22D-03   112.70
    3    10    10     1.08841910    -0.59127885  -109.91890589    -0.02009750    -0.00141648  0.54D-04  0.22D-03   112.70
    3    11    11     1.10331931    -0.60243907  -109.88628744    -0.03064723    -0.00267549  0.17D-03  0.46D-03   112.70
    3    12    12     1.10303067    -0.60240796  -109.88625633    -0.03079789    -0.00274316  0.18D-03  0.46D-03   112.70
    3    13    13     1.10292123    -0.60226941  -109.88611778    -0.03071970    -0.00280371  0.18D-03  0.47D-03   112.70
    3    14    14     1.10289650    -0.60218969  -109.88603806    -0.03099210    -0.00280150  0.18D-03  0.47D-03   112.70
    3    15    15     1.10285735    -0.60218051  -109.88602888    -0.03104825    -0.00286222  0.19D-03  0.48D-03   112.70
    3    16    16     1.10282262    -0.60210663  -109.88595500    -0.03111656    -0.00285365  0.18D-03  0.47D-03   112.70
    3    17    17     1.10255702    -0.60174951  -109.88559787    -0.03114101    -0.00285545  0.18D-03  0.47D-03   112.70
    4     1     1     1.08788887    -0.58373150  -109.96492705    -0.00199747    -0.00022164  0.87D-05  0.34D-04   165.72
    4     2     2     1.08789195    -0.58373103  -109.96492657    -0.00200721    -0.00022277  0.85D-05  0.35D-04   165.72
    4     3     3     1.08785040    -0.58370068  -109.96489622    -0.00213234    -0.00023415  0.90D-05  0.35D-04   165.72
    4     4     4     1.08783881    -0.58369510  -109.96489064    -0.00213373    -0.00023689  0.91D-05  0.36D-04   165.72
    4     5     5     1.08780466    -0.58367169  -109.96486723    -0.00222055    -0.00024648  0.96D-05  0.36D-04   165.72
    4     6     6     1.08780918    -0.58367168  -109.96486722    -0.00225737    -0.00024575  0.95D-05  0.36D-04   165.72
    4     7     7     1.08778416    -0.58365693  -109.96485247    -0.00231343    -0.00025212  0.99D-05  0.37D-04   165.72
    4     8     8     1.09183746    -0.59341816  -109.92104521    -0.00209380    -0.00023549  0.13D-04  0.36D-04   165.72
    4     9     9     1.09181803    -0.59340952  -109.92103657    -0.00212538    -0.00023952  0.14D-04  0.36D-04   165.72
    4    10    10     1.09181803    -0.59340883  -109.92103588    -0.00212999    -0.00024276  0.13D-04  0.37D-04   165.72
    4    11    11     1.10985683    -0.60655678  -109.89040515    -0.00411771    -0.00063318  0.54D-04  0.91D-04   165.72
    4    12    12     1.10983541    -0.60653008  -109.89037845    -0.00412213    -0.00065539  0.55D-04  0.93D-04   165.72
    4    13    13     1.10983266    -0.60652891  -109.89037728    -0.00425950    -0.00064940  0.55D-04  0.93D-04   165.72
    4    14    14     1.10967198    -0.60645728  -109.89030564    -0.00426759    -0.00065905  0.54D-04  0.96D-04   165.72
    4    15    15     1.10967815    -0.60645213  -109.89030050    -0.00427162    -0.00067082  0.56D-04  0.95D-04   165.72
    4    16    16     1.10968952    -0.60645113  -109.89029949    -0.00434450    -0.00067462  0.57D-04  0.95D-04   165.72
    4    17    17     1.10918663    -0.60619312  -109.89004148    -0.00444361    -0.00075606  0.62D-04  0.10D-03   165.72
    5     1     1     1.08908856    -0.58402590  -109.96522144    -0.00029439    -0.00004818  0.10D-05  0.87D-05   218.91
    5     2     2     1.08908499    -0.58402588  -109.96522142    -0.00029485    -0.00004824  0.98D-06  0.87D-05   218.91
    5     3     3     1.08905668    -0.58401541  -109.96521095    -0.00031473    -0.00005224  0.11D-05  0.92D-05   218.91
    5     4     4     1.08904990    -0.58401260  -109.96520814    -0.00031750    -0.00005355  0.11D-05  0.95D-05   218.91
    5     5     5     1.08902473    -0.58400471  -109.96520025    -0.00033302    -0.00005656  0.12D-05  0.98D-05   218.91
    5     6     6     1.08903116    -0.58400399  -109.96519953    -0.00033231    -0.00005675  0.12D-05  0.99D-05   218.91
    5     7     7     1.08901353    -0.58400021  -109.96519575    -0.00034328    -0.00005818  0.13D-05  0.10D-04   218.91
    5     8     8     1.09307846    -0.59373636  -109.92136341    -0.00031820    -0.00005499  0.32D-05  0.95D-05   218.91
    5     9     9     1.09306772    -0.59373328  -109.92136033    -0.00032376    -0.00005628  0.33D-05  0.97D-05   218.91
    5    10    10     1.09304504    -0.59373015  -109.92135719    -0.00032132    -0.00006000  0.27D-05  0.11D-04   218.91
    5    11    11     1.11267879    -0.60745707  -109.89130544    -0.00090029    -0.00013259  0.70D-05  0.20D-04   218.91
    5    12    12     1.11265574    -0.60744850  -109.89129687    -0.00091841    -0.00013720  0.72D-05  0.21D-04   218.91
    5    13    13     1.11264017    -0.60744269  -109.89129106    -0.00091378    -0.00014536  0.72D-05  0.24D-04   218.91
    5    14    14     1.11264377    -0.60741960  -109.89126797    -0.00096232    -0.00015002  0.78D-05  0.23D-04   218.91
    5    15    15     1.11260162    -0.60741754  -109.89126590    -0.00096540    -0.00015096  0.77D-05  0.23D-04   218.91
    5    16    16     1.11257978    -0.60741527  -109.89126363    -0.00096414    -0.00015266  0.77D-05  0.24D-04   218.91
    5    17    17     1.11243005    -0.60733032  -109.89117868    -0.00113720    -0.00018410  0.10D-04  0.26D-04   218.91
    6     1     1     1.08908238    -0.58409274  -109.96528828    -0.00006684    -0.00001452  0.52D-06  0.25D-05   272.06
    6     2     2     1.08908221    -0.58409271  -109.96528825    -0.00006683    -0.00001458  0.51D-06  0.25D-05   272.06
    6     3     3     1.08905041    -0.58408969  -109.96528523    -0.00007428    -0.00001553  0.56D-06  0.25D-05   272.06
    6     4     4     1.08904424    -0.58408845  -109.96528399    -0.00007585    -0.00001617  0.60D-06  0.26D-05   272.06
    6     5     5     1.08901876    -0.58408583  -109.96528137    -0.00008111    -0.00001731  0.61D-06  0.27D-05   272.06
    6     6     6     1.08902020    -0.58408526  -109.96528080    -0.00008127    -0.00001757  0.62D-06  0.28D-05   272.06
    6     7     7     1.08900284    -0.58408484  -109.96528038    -0.00008463    -0.00001751  0.64D-06  0.27D-05   272.06
    6     8     8     1.09303512    -0.59381523  -109.92144228    -0.00007887    -0.00001735  0.82D-06  0.28D-05   272.06
    6     9     9     1.09302672    -0.59381411  -109.92144115    -0.00008082    -0.00001786  0.84D-06  0.28D-05   272.06
    6    10    10     1.09303305    -0.59381074  -109.92143778    -0.00008059    -0.00002030  0.91D-06  0.33D-05   272.06
    6    11    11     1.11251415    -0.60763970  -109.89148807    -0.00018263    -0.00003953  0.44D-05  0.56D-05   272.06
    6    12    12     1.11248460    -0.60763614  -109.89148451    -0.00018764    -0.00004163  0.46D-05  0.60D-05   272.06
    6    13    13     1.11246509    -0.60762891  -109.89147728    -0.00018622    -0.00004534  0.49D-05  0.68D-05   272.06
    6    14    14     1.11242368    -0.60762003  -109.89146840    -0.00020043    -0.00005233  0.47D-05  0.83D-05   272.06
    6    15    15     1.11246077    -0.60761920  -109.89146757    -0.00020166    -0.00005464  0.43D-05  0.93D-05   272.06
    6    16    16     1.11241734    -0.60761825  -109.89146661    -0.00020298    -0.00005372  0.47D-05  0.86D-05   272.06
    6    17    17     1.11211301    -0.60759271  -109.89144107    -0.00026239    -0.00005976  0.76D-05  0.76D-05   272.06
    7     1     1     1.08921748    -0.58410920  -109.96530474    -0.00001646    -0.00000446  0.13D-06  0.80D-06   325.23
    7     2     2     1.08921561    -0.58410912  -109.96530466    -0.00001641    -0.00000449  0.13D-06  0.81D-06   325.23
    7     3     3     1.08921168    -0.58410811  -109.96530366    -0.00001843    -0.00000486  0.18D-06  0.83D-06   325.23
    7     4     4     1.08920467    -0.58410766  -109.96530321    -0.00001921    -0.00000509  0.19D-06  0.87D-06   325.23
    7     5     5     1.08919312    -0.58410650  -109.96530204    -0.00002067    -0.00000564  0.21D-06  0.96D-06   325.23
    7     6     6     1.08919615    -0.58410632  -109.96530186    -0.00002106    -0.00000572  0.25D-06  0.95D-06   325.23
    7     7     7     1.08919150    -0.58410624  -109.96530178    -0.00002140    -0.00000573  0.21D-06  0.97D-06   325.23
    7     8     8     1.09323716    -0.59383586  -109.92146291    -0.00002063    -0.00000562  0.33D-06  0.97D-06   325.23
    7     9     9     1.09323261    -0.59383536  -109.92146241    -0.00002126    -0.00000582  0.34D-06  0.10D-05   325.23
    7    10    10     1.09320254    -0.59383419  -109.92146124    -0.00002346    -0.00000619  0.39D-06  0.11D-05   325.23
    7    11    11     1.11327798    -0.60768635  -109.89153472    -0.00004665    -0.00001119  0.14D-05  0.16D-05   325.23
    7    12    12     1.11325542    -0.60768502  -109.89153339    -0.00004888    -0.00001191  0.14D-05  0.17D-05   325.23
    7    13    13     1.11321469    -0.60768178  -109.89153015    -0.00005287    -0.00001331  0.14D-05  0.20D-05   325.23
    7    14    14     1.11308763    -0.60767770  -109.89152606    -0.00005767    -0.00001532  0.11D-05  0.24D-05   325.23
    7    15    15     1.11310056    -0.60767731  -109.89152568    -0.00005811    -0.00001565  0.11D-05  0.25D-05   325.23
    7    16    16     1.11308582    -0.60767666  -109.89152502    -0.00005841    -0.00001589  0.11D-05  0.26D-05   325.23
    7    17    17     1.11310417    -0.60766641  -109.89151477    -0.00007370    -0.00001984  0.26D-05  0.26D-05   325.23
    8     1     1     1.08935286    -0.58411459  -109.96531013    -0.00000539    -0.00000135  0.34D-07  0.25D-06   378.15
    8     2     2     1.08935354    -0.58411456  -109.96531010    -0.00000544    -0.00000135  0.35D-07  0.24D-06   378.15
    8     3     3     1.08935084    -0.58411412  -109.96530966    -0.00000600    -0.00000156  0.35D-07  0.28D-06   378.15
    8     4     4     1.08934738    -0.58411396  -109.96530951    -0.00000630    -0.00000164  0.36D-07  0.29D-06   378.15
    8     5     5     1.08934328    -0.58411346  -109.96530900    -0.00000696    -0.00000185  0.41D-07  0.32D-06   378.15
    8     6     6     1.08934284    -0.58411336  -109.96530890    -0.00000704    -0.00000189  0.42D-07  0.33D-06   378.15
    8     7     7     1.08934082    -0.58411333  -109.96530887    -0.00000708    -0.00000194  0.39D-07  0.34D-06   378.15
    8     8     8     1.09339234    -0.59384279  -109.92146984    -0.00000693    -0.00000189  0.13D-06  0.33D-06   378.15
    8     9     9     1.09339093    -0.59384257  -109.92146962    -0.00000721    -0.00000198  0.13D-06  0.34D-06   378.15
    8    10    10     1.09338180    -0.59384220  -109.92146925    -0.00000801    -0.00000219  0.15D-06  0.38D-06   378.15
    8    11    11     1.11347539    -0.60770050  -109.89154887    -0.00001415    -0.00000330  0.26D-06  0.49D-06   378.15
    8    12    12     1.11346801    -0.60770007  -109.89154844    -0.00001505    -0.00000352  0.28D-06  0.52D-06   378.15
    8    13    13     1.11346111    -0.60769892  -109.89154729    -0.00001714    -0.00000409  0.33D-06  0.60D-06   378.15
    8    14    14     1.11345162    -0.60769746  -109.89154583    -0.00001976    -0.00000476  0.41D-06  0.71D-06   378.15
    8    15    15     1.11345052    -0.60769709  -109.89154546    -0.00001978    -0.00000492  0.42D-06  0.72D-06   378.15
    8    16    16     1.11344764    -0.60769682  -109.89154519    -0.00002017    -0.00000501  0.43D-06  0.73D-06   378.15
    8    17    17     1.11335412    -0.60769275  -109.89154111    -0.00002634    -0.00000680  0.55D-06  0.91D-06   378.15
    9     1     1     1.08936978    -0.58411633  -109.96531187    -0.00000174    -0.00000049  0.18D-07  0.87D-07   431.16
    9     2     2     1.08936926    -0.58411632  -109.96531187    -0.00000176    -0.00000049  0.18D-07  0.87D-07   431.16
    9     3     3     1.08936375    -0.58411614  -109.96531168    -0.00000202    -0.00000057  0.21D-07  0.99D-07   431.16
    9     4     4     1.08936162    -0.58411608  -109.96531162    -0.00000212    -0.00000060  0.22D-07  0.10D-06   431.16
    9     5     5     1.08935546    -0.58411589  -109.96531143    -0.00000243    -0.00000069  0.27D-07  0.12D-06   431.16
    9     6     6     1.08935498    -0.58411584  -109.96531138    -0.00000248    -0.00000071  0.27D-07  0.12D-06   431.16
    9     7     7     1.08935244    -0.58411581  -109.96531135    -0.00000248    -0.00000072  0.31D-07  0.12D-06   431.16
    9     8     8     1.09338834    -0.59384522  -109.92147227    -0.00000243    -0.00000072  0.54D-07  0.12D-06   431.16
    9     9     9     1.09338632    -0.59384513  -109.92147218    -0.00000256    -0.00000077  0.57D-07  0.12D-06   431.16
    9    10    10     1.09338782    -0.59384492  -109.92147196    -0.00000271    -0.00000093  0.35D-07  0.16D-06   431.16
    9    11    11     1.11353391    -0.60770497  -109.89155335    -0.00000447    -0.00000114  0.12D-06  0.17D-06   431.16
    9    12    12     1.11352479    -0.60770482  -109.89155319    -0.00000475    -0.00000122  0.12D-06  0.18D-06   431.16
    9    13    13     1.11350966    -0.60770435  -109.89155272    -0.00000543    -0.00000148  0.14D-06  0.23D-06   431.16
    9    14    14     1.11349252    -0.60770369  -109.89155206    -0.00000623    -0.00000199  0.14D-06  0.35D-06   431.16
    9    15    15     1.11347904    -0.60770364  -109.89155200    -0.00000655    -0.00000191  0.19D-06  0.30D-06   431.16
    9    16    16     1.11347744    -0.60770351  -109.89155187    -0.00000669    -0.00000200  0.19D-06  0.32D-06   431.16
    9    17    17     1.11341038    -0.60770202  -109.89155038    -0.00000927    -0.00000251  0.27D-06  0.33D-06   431.16
   10     1     1     1.08938427    -0.58411687  -109.96531241    -0.00000054    -0.00000018  0.22D-08  0.36D-07   484.18
   10     2     2     1.08938399    -0.58411686  -109.96531240    -0.00000054    -0.00000019  0.20D-08  0.37D-07   484.18
   10     3     3     1.08938083    -0.58411679  -109.96531233    -0.00000065    -0.00000021  0.46D-08  0.39D-07   484.18
   10     4     4     1.08937879    -0.58411677  -109.96531231    -0.00000069    -0.00000023  0.49D-08  0.42D-07   484.18
   10     5     5     1.08937513    -0.58411669  -109.96531223    -0.00000080    -0.00000027  0.52D-08  0.49D-07   484.18
   10     6     6     1.08937441    -0.58411667  -109.96531221    -0.00000083    -0.00000027  0.94D-08  0.47D-07   484.18
   10     7     7     1.08937428    -0.58411666  -109.96531220    -0.00000085    -0.00000028  0.53D-08  0.51D-07   484.18
   10     8     8     1.09341348    -0.59384605  -109.92147310    -0.00000083    -0.00000028  0.77D-08  0.53D-07   484.18
   10     9     9     1.09341208    -0.59384602  -109.92147306    -0.00000088    -0.00000030  0.82D-08  0.56D-07   484.18
   10    10    10     1.09340468    -0.59384591  -109.92147296    -0.00000100    -0.00000034  0.13D-07  0.66D-07   484.18
   10    11    11     1.11366433    -0.60770632  -109.89155469    -0.00000135    -0.00000037  0.50D-07  0.55D-07   484.18
   10    12    12     1.11365876    -0.60770626  -109.89155463    -0.00000144    -0.00000040  0.52D-07  0.62D-07   484.18
   10    13    13     1.11364669    -0.60770605  -109.89155442    -0.00000170    -0.00000051  0.61D-07  0.80D-07   484.18
   10    14    14     1.11361657    -0.60770573  -109.89155410    -0.00000204    -0.00000071  0.40D-07  0.14D-06   484.18
   10    15    15     1.11360347    -0.60770570  -109.89155406    -0.00000206    -0.00000072  0.31D-07  0.14D-06   484.18
   10    16    16     1.11361193    -0.60770566  -109.89155403    -0.00000215    -0.00000074  0.38D-07  0.14D-06   484.18
   10    17    17     1.11361507    -0.60770509  -109.89155345    -0.00000307    -0.00000094  0.14D-06  0.13D-06   484.18
   11     1     1     1.08940261    -0.58411707  -109.96531261    -0.00000020    -0.00000007  0.20D-08  0.13D-07   537.26
   11     2     2     1.08940268    -0.58411706  -109.96531261    -0.00000020    -0.00000007  0.22D-08  0.13D-07   537.26
   11     3     3     1.08940199    -0.58411703  -109.96531258    -0.00000024    -0.00000008  0.24D-08  0.15D-07   537.26
   11     4     4     1.08940066    -0.58411703  -109.96531257    -0.00000026    -0.00000009  0.24D-08  0.16D-07   537.26
   11     5     5     1.08939879    -0.58411699  -109.96531253    -0.00000030    -0.00000010  0.30D-08  0.19D-07   537.26
   11     6     6     1.08939818    -0.58411698  -109.96531252    -0.00000032    -0.00000011  0.27D-08  0.20D-07   537.26
   11     7     7     1.08939841    -0.58411698  -109.96531252    -0.00000032    -0.00000011  0.32D-08  0.19D-07   537.26
   11     8     8     1.09343961    -0.59384637  -109.92147342    -0.00000032    -0.00000011  0.83D-08  0.20D-07   537.26
   11     9     9     1.09343890    -0.59384635  -109.92147340    -0.00000034    -0.00000012  0.89D-08  0.21D-07   537.26
   11    10    10     1.09343582    -0.59384631  -109.92147336    -0.00000040    -0.00000014  0.12D-07  0.25D-07   537.26
   11    11    11     1.11367995    -0.60770676  -109.89155514    -0.00000044    -0.00000012  0.11D-07  0.19D-07   537.26
   11    12    12     1.11367754    -0.60770674  -109.89155512    -0.00000048    -0.00000013  0.11D-07  0.20D-07   537.26
   11    13    13     1.11367155    -0.60770666  -109.89155503    -0.00000061    -0.00000017  0.15D-07  0.26D-07   537.26
   11    14    14     1.11367116    -0.60770649  -109.89155486    -0.00000076    -0.00000027  0.20D-07  0.45D-07   537.26
   11    15    15     1.11367465    -0.60770649  -109.89155486    -0.00000079    -0.00000026  0.23D-07  0.43D-07   537.26
   11    16    16     1.11367081    -0.60770646  -109.89155483    -0.00000080    -0.00000028  0.22D-07  0.47D-07   537.26
   11    17    17     1.11363902    -0.60770628  -109.89155464    -0.00000119    -0.00000035  0.32D-07  0.47D-07   537.26
   12     1     1     1.08940995    -0.58411714  -109.96531268    -0.00000008    -0.00000003  0.50D-09  0.53D-08   590.31
   12     2     2     1.08940982    -0.58411714  -109.96531268    -0.00000008    -0.00000003  0.51D-09  0.54D-08   590.31
   12     3     3     1.08940863    -0.58411713  -109.96531267    -0.00000009    -0.00000003  0.68D-09  0.67D-08   590.31
   12     4     4     1.08940791    -0.58411713  -109.96531267    -0.00000010    -0.00000004  0.73D-09  0.70D-08   590.31
   12     5     5     1.08940615    -0.58411711  -109.96531265    -0.00000012    -0.00000004  0.98D-09  0.84D-08   590.31
   12     6     6     1.08940552    -0.58411710  -109.96531265    -0.00000012    -0.00000005  0.12D-08  0.88D-08   590.31
   12     7     7     1.08940593    -0.58411711  -109.96531265    -0.00000013    -0.00000005  0.98D-09  0.88D-08   590.31
   12     8     8     1.09344427    -0.59384650  -109.92147354    -0.00000013    -0.00000005  0.24D-08  0.85D-08   590.31
   12     9     9     1.09344359    -0.59384649  -109.92147354    -0.00000014    -0.00000005  0.26D-08  0.92D-08   590.31
   12    10    10     1.09344311    -0.59384647  -109.92147352    -0.00000016    -0.00000006  0.14D-08  0.12D-07   590.31
   12    11    11     1.11369680    -0.60770692  -109.89155529    -0.00000016    -0.00000004  0.38D-08  0.68D-08   590.31
   12    12    12     1.11369441    -0.60770692  -109.89155529    -0.00000017    -0.00000005  0.42D-08  0.76D-08   590.31
   12    13    13     1.11368869    -0.60770689  -109.89155526    -0.00000022    -0.00000006  0.53D-08  0.10D-07   590.31
   12    14    14     1.11367449    -0.60770681  -109.89155518    -0.00000031    -0.00000011  0.10D-07  0.19D-07   590.31
   12    15    15     1.11367894    -0.60770680  -109.89155517    -0.00000031    -0.00000012  0.67D-08  0.23D-07   590.31
   12    16    16     1.11367359    -0.60770680  -109.89155516    -0.00000033    -0.00000012  0.11D-07  0.20D-07   590.31
   12    17    17     1.11366410    -0.60770674  -109.89155510    -0.00000046    -0.00000013  0.13D-07  0.18D-07   590.31
   13     1     1     1.08940999    -0.58411714  -109.96531268    -0.00000000    -0.00000003  0.51D-09  0.52D-08   622.95
   13     2     2     1.08940985    -0.58411714  -109.96531268    -0.00000000    -0.00000003  0.53D-09  0.52D-08   622.95
   13     3     3     1.08940867    -0.58411713  -109.96531267    -0.00000000    -0.00000003  0.81D-09  0.64D-08   622.95
   13     4     4     1.08940795    -0.58411713  -109.96531267    -0.00000000    -0.00000003  0.82D-09  0.68D-08   622.95
   13     5     5     1.08940621    -0.58411711  -109.96531265    -0.00000000    -0.00000004  0.11D-08  0.80D-08   622.95
   13     6     6     1.08940599    -0.58411711  -109.96531265    -0.00000000    -0.00000004  0.11D-08  0.85D-08   622.95
   13     7     7     1.08940545    -0.58411711  -109.96531265    -0.00000000    -0.00000004  0.13D-08  0.85D-08   622.95
   13     8     8     1.09344917    -0.59384655  -109.92147360    -0.00000005    -0.00000002  0.33D-09  0.41D-08   622.95
   13     9     9     1.09344869    -0.59384655  -109.92147359    -0.00000006    -0.00000002  0.36D-09  0.44D-08   622.95
   13    10    10     1.09344691    -0.59384654  -109.92147358    -0.00000007    -0.00000003  0.11D-08  0.52D-08   622.95
   13    11    11     1.11373063    -0.60770700  -109.89155537    -0.00000008    -0.00000000  0.91D-10  0.84D-09   622.95
   13    12    12     1.11373065    -0.60770700  -109.89155537    -0.00000008    -0.00000000  0.90D-10  0.72D-09   622.95
   13    13    13     1.11373052    -0.60770700  -109.89155537    -0.00000011    -0.00000001  0.11D-09  0.11D-08   622.95
   13    14    14     1.11373093    -0.60770700  -109.89155536    -0.00000019    -0.00000001  0.28D-09  0.15D-08   622.95
   13    15    15     1.11372602    -0.60770699  -109.89155536    -0.00000019    -0.00000003  0.10D-08  0.45D-08   622.95
   13    16    16     1.11372627    -0.60770699  -109.89155535    -0.00000019    -0.00000003  0.11D-08  0.49D-08   622.95
   13    17    17     1.11372561    -0.60770699  -109.89155535    -0.00000025    -0.00000003  0.17D-08  0.51D-08   622.95


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%  10.8%  55.2%

 Initialization:   0.6%
 Other:           33.0%

 Total CPU:      623.0 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222/2//222          -0.0000001   0.9580855   0.0000002  -0.0000000   0.0000407  -0.0000000   0.0000972  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0000000  -0.0000005  -0.0002410  -0.0000001   0.0000000  -0.0000000
 2/2/22/222           0.9485301   0.0000138  -0.0000000   0.0000002  -0.0000000  -0.0000370  -0.1349754   0.0000000  -0.0000000
                      0.0000003  -0.0000000  -0.0000006  -0.0002392   0.0000005   0.0000000   0.0000000   0.0000301
 2//2/22222          -0.0000000   0.0002094   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0001190   0.0000052   0.0020069   0.9473411   0.0004420  -0.0000005   0.0001546
 22/2//2222           0.0002074   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000296   0.0000000   0.0000000
                      0.0000000   0.0000002   0.0023862   0.9399227  -0.0019719  -0.0000010  -0.0000849  -0.1183023
 2//222/222           0.0000334  -0.0000000   0.0000033   0.0304463   0.0006214   0.8563980   0.0000000  -0.4275029   0.0003768
                      0.0000000   0.0000002   0.0001299  -0.0000003   0.0000000   0.0000001   0.0001720  -0.0000000
 2/222//222          -0.0603626   0.0000430   0.0000000  -0.0000000   0.0000000   0.0000024  -0.4241960   0.0000000  -0.0000000
                      0.8550059   0.0000000   0.0000001   0.0000135  -0.0000000  -0.0000000  -0.0000000   0.0001071
 22/2/2/222           0.1207254  -0.0000861  -0.0000000   0.0000000  -0.0000000  -0.0000047   0.8483931   0.0000000   0.0000000
                      0.4275028  -0.0000000  -0.0000001  -0.0000269   0.0000001   0.0000000   0.0000000  -0.0002140
 2/2/2/2222           0.0000266  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0001855  -0.0000000   0.0000000
                     -0.0001593   0.0000004   0.0004981   0.1058115  -0.0003613  -0.0000003  -0.0000101   0.8407072
 2222///222           0.0000071  -0.0000000   0.0000011   0.8368148   0.0002536   0.1846200   0.0000000   0.4275025  -0.0003768
                     -0.0000000   0.0000003   0.0001990  -0.0000005   0.0000000  -0.0000002  -0.0000828  -0.0000001
 2/22/2/222          -0.0000000  -0.0000347   0.2655618  -0.0001175   0.8147522  -0.0005880  -0.0000000   0.0003768   0.4275032
                     -0.0000000   0.0001937  -0.0000002   0.0000000  -0.0000000   0.0000945  -0.0000001  -0.0000000
 2///222222          -0.0000000  -0.0000000  -0.0000000  -0.0001826  -0.0000001  -0.0000398   0.0000000   0.0001589  -0.0000001
                      0.0000000   0.0010498   0.7822291  -0.0020418   0.0000004  -0.0006400  -0.3257058  -0.0002104
 22//2/2222           0.0000000   0.0000000  -0.0000585   0.0000000  -0.0001779   0.0000001   0.0000000   0.0000001   0.0001590
                     -0.0000000   0.7614509  -0.0008383   0.0000021  -0.0000778   0.3717024  -0.0002895  -0.0000000
 22//22/222           0.0000000   0.0000088  -0.5704515   0.0000297  -0.2043442   0.0001494   0.0000000   0.0006526   0.7404554
                     -0.0000000  -0.0000310  -0.0000000   0.0000000   0.0000001  -0.0001493   0.0000001  -0.0000000
 222//2/222           0.0000152  -0.0000000   0.0000013  -0.4655571   0.0002123   0.3878512   0.0000000   0.7404553  -0.0006526
                     -0.0000000  -0.0000001  -0.0000398   0.0000001  -0.0000000   0.0000001   0.0001472   0.0000000
 22/22//222           0.0000000   0.0000194   0.7224893   0.0000661  -0.4608173   0.0003292   0.0000000   0.0003768   0.4275026
                     -0.0000000  -0.0001400   0.0000003  -0.0000000  -0.0000001   0.0001640  -0.0000001   0.0000000
 222///2222          -0.0000000  -0.0000000  -0.0000000  -0.0000064  -0.0000001  -0.0001866  -0.0000000  -0.0001589   0.0000001
                     -0.0000000   0.0006860   0.5109129  -0.0012533   0.0000002   0.0002735   0.6759756  -0.0001369
 2/2//22222           0.0000000  -0.0000000  -0.0001580  -0.0000000   0.0000996  -0.0000001   0.0000000   0.0000001   0.0001588
                      0.0000000  -0.5502566   0.0010570  -0.0000027  -0.0003697   0.6443544  -0.0005011   0.0000000
 2/22//2222          -0.0000000  -0.0000000   0.0001237  -0.0000000   0.0000434  -0.0000000  -0.0000000   0.0000002   0.0002752
                     -0.0000000  -0.1219350  -0.0001262   0.0000003   0.0002584  -0.5866064   0.0004564   0.0000000
 2//22/2222          -0.0000000   0.0000000  -0.0000000   0.0001013  -0.0000000  -0.0000843   0.0000000   0.0002751  -0.0000002
                     -0.0000000  -0.0002100  -0.1566443   0.0004552  -0.0000001   0.0005273   0.5783037   0.0000424
 22///22222          -0.0000128   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000914   0.0000000  -0.0000000
                     -0.0003185  -0.0000002  -0.0002491  -0.0529042   0.0001807   0.0000001   0.0000050  -0.4203325

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2//2\2/222  14.1     0.0000000  -0.0000151  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0000063  -0.0000003  -0.0001065  -0.0502536  -0.0000234   0.0000000  -0.0000082

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000034   -0.024421   -0.000015   -0.000000   -0.000000    0.957774    0.000000    0.000000   -0.000000
             0.000034    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000205
 2           0.000031   -0.000000   -0.000097    0.000000   -0.000026    0.958085   -0.000002   -0.000000    0.000000    0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000207    0.000000
 3           0.610959    0.000004   -0.000000   -0.000001    0.738009    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000169   -0.000000   -0.000120    0.000000    0.000000    0.000000
 4           0.000106    0.376179   -0.000000    0.881146   -0.000088   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000090    0.000000   -0.000186    0.000000    0.000000
 5          -0.738010    0.000689   -0.000000   -0.000144    0.610960    0.000041   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000119   -0.000000   -0.000169    0.000000    0.000000   -0.000000
 6           0.000529    0.881147    0.000001   -0.376179   -0.000443   -0.000000   -0.000037   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000186    0.000000    0.000090   -0.000000   -0.000000
 7           0.000000    0.000000    0.957776   -0.000000   -0.000000    0.000097    0.024421    0.000000   -0.000000   -0.000000
             0.000204    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000034
 8          -0.000000   -0.000001    0.000000    0.000001    0.000000   -0.000000    0.000000    0.000000    0.000843    0.956270
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
 9          -0.000000    0.000000    0.000000   -0.000000    0.000001    0.000000   -0.000000   -0.000000    0.956270   -0.000843
             0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 10         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956271   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 11         -0.000205    0.000000   -0.000000    0.000000    0.000126    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.648901    0.001111    0.690478    0.000618   -0.000119    0.000000
 12          0.000000    0.000205   -0.000000    0.000127   -0.000000   -0.000000   -0.000001    0.000000    0.000000    0.000000
             0.000615    0.001213    0.827583   -0.000605    0.461448    0.000005    0.002372
 13         -0.000000   -0.000001    0.000010   -0.000000    0.000000   -0.000001   -0.000241    0.000000   -0.000000   -0.000000
             0.141248   -0.000003   -0.002087    0.000002   -0.001262    0.002007    0.936949
 14         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000241    0.000001   -0.000000    0.000000   -0.000000
            -0.000452   -0.000404    0.000000   -0.000216    0.000000    0.947539   -0.001962
 15          0.000127   -0.000000    0.000000   -0.000000    0.000205   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.690480   -0.000049    0.648903   -0.000876    0.000442   -0.000001
 16         -0.000000    0.000127   -0.000000   -0.000205   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000013   -0.000539    0.461451   -0.000509   -0.827587   -0.000001   -0.000085
 17          0.000000   -0.000000   -0.000241   -0.000000    0.000000   -0.000000   -0.000010    0.000000   -0.000000    0.000000
             0.936956    0.000000   -0.000222   -0.000000   -0.000124    0.000155   -0.141250

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958085    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000   -0.000018    0.000000    0.000000    0.000000   -0.000000
 2           0.000000    0.958086    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000018   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.958086   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000003    0.000000   -0.000000   -0.000000    0.000018   -0.000000    0.000000
 4           0.000000   -0.000000   -0.000000    0.958086   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000015   -0.000000    0.000000   -0.000000   -0.000010   -0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.958087   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000018   -0.000000    0.000000    0.000000    0.000003    0.000000   -0.000000
 6           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.958087   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000011   -0.000000    0.000000    0.000000    0.000015   -0.000000
 7          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.958087    0.000000    0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000018
 8          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.956270    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.956270   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 10          0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.956271
             0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 11         -0.000000    0.000000   -0.000003    0.000000    0.000018    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.947541    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
 12         -0.000000   -0.000000    0.000000    0.000015   -0.000000    0.000011   -0.000000    0.000000   -0.000000    0.000000
             0.000000    0.947541    0.000000   -0.000000    0.000000   -0.000000    0.000000
 13         -0.000018   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.947541   -0.000000   -0.000000    0.000000   -0.000000
 14          0.000000   -0.000018   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000   -0.000000    0.947541   -0.000000    0.000000    0.000000
 15          0.000000   -0.000000    0.000018   -0.000000    0.000003    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.947543   -0.000000   -0.000000
 16          0.000000    0.000000   -0.000000   -0.000010    0.000000    0.000015   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.947543    0.000000
 17         -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000018   -0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.947544


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95777413 (fixed)   0.95808562 (relaxed)   0.95808545 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46812594
 Singles      0.01407658   -0.07407436   -0.07554548
 Pairs        0.07533344   -0.00006173   -0.04044572
 Total        1.08941039   -0.07413610   -0.58411714
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119553
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44765029
 One electron energy                 -193.17870803
 Two electron energy                   83.21339535
 Virial quotient                       -2.65311331
 Correlation energy                    -0.58411715
 !MRCI STATE 1.1 Energy              -109.965312684496

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753882 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753859 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753882 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307861 (Pople, fixed reference)
 Cluster corrected energies          -110.01307838 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307861 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95808548 (fixed)   0.95808569 (relaxed)   0.95808551 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818273
 Singles      0.01407656   -0.07407429   -0.07554544
 Pairs        0.07533332   -0.00000000   -0.04038897
 Total        1.08941024   -0.07407429   -0.58411714
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44765433
 One electron energy                 -193.17871269
 Two electron energy                   83.21340001
 Virial quotient                       -2.65311305
 Correlation energy                    -0.58411715
 !MRCI STATE 2.1 Energy              -109.965312683566

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753874 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753851 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753874 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307852 (Pople, fixed reference)
 Cluster corrected energies          -110.01307830 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307852 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.73800934 (fixed)   0.95808620 (relaxed)   0.95808603 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818420
 Singles      0.01407618   -0.07407323   -0.07554525
 Pairs        0.07533252   -0.00000000   -0.04038768
 Total        1.08940907   -0.07407323   -0.58411713
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44765396
 One electron energy                 -193.17871426
 Two electron energy                   83.21340159
 Virial quotient                       -2.65311308
 Correlation energy                    -0.58411713
 !MRCI STATE 3.1 Energy              -109.965312671012

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753804 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753781 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753804 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307784 (Pople, fixed reference)
 Cluster corrected energies          -110.01307761 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307784 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.88114626 (fixed)   0.95808652 (relaxed)   0.95808635 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818437
 Singles      0.01407622   -0.07407337   -0.07554534
 Pairs        0.07533176   -0.00000000   -0.04038741
 Total        1.08940834   -0.07407338   -0.58411713
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44765594
 One electron energy                 -193.17872025
 Two electron energy                   83.21340758
 Virial quotient                       -2.65311295
 Correlation energy                    -0.58411713
 !MRCI STATE 4.1 Energy              -109.965312667663

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753761 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753738 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753761 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307742 (Pople, fixed reference)
 Cluster corrected energies          -110.01307720 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307742 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.73800997 (fixed)   0.95808729 (relaxed)   0.95808711 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818571
 Singles      0.01407600   -0.07407272   -0.07554525
 Pairs        0.07533024    0.00000000   -0.04038615
 Total        1.08940660   -0.07407272   -0.58411711
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44765831
 One electron energy                 -193.17872753
 Two electron energy                   83.21341488
 Virial quotient                       -2.65311280
 Correlation energy                    -0.58411711
 !MRCI STATE 5.1 Energy              -109.965312651540

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753658 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753635 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753658 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307641 (Pople, fixed reference)
 Cluster corrected energies          -110.01307619 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307641 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.88114682 (fixed)   0.95808738 (relaxed)   0.95808721 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818587
 Singles      0.01407596   -0.07407265   -0.07554525
 Pairs        0.07533006    0.00000000   -0.04038599
 Total        1.08940639   -0.07407265   -0.58411711
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44766508
 One electron energy                 -193.17873658
 Two electron energy                   83.21342393
 Virial quotient                       -2.65311236
 Correlation energy                    -0.58411711
 !MRCI STATE 6.1 Energy              -109.965312647277

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753645 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753622 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753645 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307629 (Pople, fixed reference)
 Cluster corrected energies          -110.01307606 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307629 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95777612 (fixed)   0.95808762 (relaxed)   0.95808744 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46819624
 Singles      0.01407583   -0.07407221   -0.07554521
 Pairs        0.07532966    0.00001061   -0.04037566
 Total        1.08940585   -0.07406160   -0.58411711
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119554
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44764708
 One electron energy                 -193.17871717
 Two electron energy                   83.21340452
 Virial quotient                       -2.65311352
 Correlation energy                    -0.58411711
 !MRCI STATE 7.1 Energy              -109.965312646343

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753613 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753590 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753613 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307598 (Pople, fixed reference)
 Cluster corrected energies          -110.01307576 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307598 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95626963 (fixed)   0.95631441 (relaxed)   0.95627000 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009288    0.00000000   -0.47034024
 Singles      0.01734562   -0.07956079   -0.08217241
 Pairs        0.07611223   -0.00000000   -0.04133389
 Total        1.09355073   -0.07956079   -0.59384655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762705
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42710226
 One electron energy                 -193.12293417
 Two electron energy                   83.20146057
 Virial quotient                       -2.65337104
 Correlation energy                    -0.59384655
 !MRCI STATE 8.1 Energy              -109.921473597079

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97702837 (Davidson, fixed reference)
 Cluster corrected energies          -109.97696807 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97702837 (Davidson, rotated reference)

 Cluster corrected energies          -109.97243914 (Pople, fixed reference)
 Cluster corrected energies          -109.97238000 (Pople, relaxed reference)
 Cluster corrected energies          -109.97243914 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95626984 (fixed)   0.95631462 (relaxed)   0.95627022 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009288    0.00000000   -0.47034034
 Singles      0.01734567   -0.07956091   -0.08217248
 Pairs        0.07611170   -0.00000000   -0.04133373
 Total        1.09355024   -0.07956091   -0.59384655
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762705
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42710445
 One electron energy                 -193.12293469
 Two electron energy                   83.20146109
 Virial quotient                       -2.65337090
 Correlation energy                    -0.59384655
 !MRCI STATE 9.1 Energy              -109.921473593801

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97702808 (Davidson, fixed reference)
 Cluster corrected energies          -109.97696777 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97702808 (Davidson, rotated reference)

 Cluster corrected energies          -109.97243885 (Pople, fixed reference)
 Cluster corrected energies          -109.97237971 (Pople, relaxed reference)
 Cluster corrected energies          -109.97243885 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95627100 (fixed)   0.95631540 (relaxed)   0.95627100 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009287    0.00000000   -0.47034125
 Singles      0.01734566   -0.07956067   -0.08217255
 Pairs        0.07610992   -0.00000007   -0.04133274
 Total        1.09354846   -0.07956074   -0.59384654
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762705
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42699384
 One electron energy                 -193.12280857
 Two electron energy                   83.20133499
 Virial quotient                       -2.65337799
 Correlation energy                    -0.59384654
 !MRCI STATE 10.1 Energy             -109.921473584703

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97702701 (Davidson, fixed reference)
 Cluster corrected energies          -109.97696671 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97702701 (Davidson, rotated reference)

 Cluster corrected energies          -109.97243780 (Pople, fixed reference)
 Cluster corrected energies          -109.97237867 (Pople, relaxed reference)
 Cluster corrected energies          -109.97243780 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.69047839 (fixed)   0.94756698 (relaxed)   0.94754145 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41615146
 Singles      0.04109794   -0.14423404   -0.15192372
 Pairs        0.07263882   -0.00000010   -0.03963182
 Total        1.11379064   -0.14423414   -0.60770700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27930225
 One electron energy                 -190.44158980
 Two electron energy                   80.55003442
 Virial quotient                       -2.72823880
 Correlation energy                    -0.60770700
 !MRCI STATE 11.1 Energy             -109.891555373526

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070674 (Davidson, fixed reference)
 Cluster corrected energies          -109.96067027 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070674 (Davidson, rotated reference)

 Cluster corrected energies          -109.95595107 (Pople, fixed reference)
 Cluster corrected energies          -109.95591425 (Pople, relaxed reference)
 Cluster corrected energies          -109.95595107 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.82758252 (fixed)   0.94756697 (relaxed)   0.94754144 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41510960
 Singles      0.04109798   -0.14423413   -0.15192375
 Pairs        0.07263880   -0.00116041   -0.04067365
 Total        1.11379066   -0.14539455   -0.60770700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27930302
 One electron energy                 -190.44158997
 Two electron energy                   80.55003460
 Virial quotient                       -2.72823875
 Correlation energy                    -0.60770700
 !MRCI STATE 12.1 Energy             -109.891555370255

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070675 (Davidson, fixed reference)
 Cluster corrected energies          -109.96067028 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070675 (Davidson, rotated reference)

 Cluster corrected energies          -109.95595108 (Pople, fixed reference)
 Cluster corrected energies          -109.95591425 (Pople, relaxed reference)
 Cluster corrected energies          -109.95595108 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.93694923 (fixed)   0.94756703 (relaxed)   0.94754150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.00468110
 Singles      0.04109782   -0.14423402   -0.15192373
 Pairs        0.07263882   -0.45829196   -0.45110217
 Total        1.11379053   -0.60252598   -0.60770700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27929606
 One electron energy                 -190.44158469
 Two electron energy                   80.55002932
 Virial quotient                       -2.72823922
 Correlation energy                    -0.60770700
 !MRCI STATE 13.1 Energy             -109.891555369761

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070667 (Davidson, fixed reference)
 Cluster corrected energies          -109.96067020 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070667 (Davidson, rotated reference)

 Cluster corrected energies          -109.95595100 (Pople, fixed reference)
 Cluster corrected energies          -109.95591417 (Pople, relaxed reference)
 Cluster corrected energies          -109.95595100 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.94753904 (fixed)   0.94756685 (relaxed)   0.94754132 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005389   -0.00000000   -0.41701332
 Singles      0.04109729   -0.14423367   -0.15192331
 Pairs        0.07263977    0.00095958   -0.03877037
 Total        1.11379094   -0.14327409   -0.60770700
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27927425
 One electron energy                 -190.44155700
 Two electron energy                   80.55000163
 Virial quotient                       -2.72824070
 Correlation energy                    -0.60770700
 !MRCI STATE 14.1 Energy             -109.891555363950

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070692 (Davidson, fixed reference)
 Cluster corrected energies          -109.96067044 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070692 (Davidson, rotated reference)

 Cluster corrected energies          -109.95595125 (Pople, fixed reference)
 Cluster corrected energies          -109.95591442 (Pople, relaxed reference)
 Cluster corrected energies          -109.95595125 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.69047950 (fixed)   0.94756894 (relaxed)   0.94754342 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41615645
 Singles      0.04109538   -0.14423097   -0.15192328
 Pairs        0.07263676    0.00000047   -0.03962726
 Total        1.11378602   -0.14423050   -0.60770699
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27920972
 One electron energy                 -190.44149088
 Two electron energy                   80.54993552
 Virial quotient                       -2.72824507
 Correlation energy                    -0.60770698
 !MRCI STATE 15.1 Energy             -109.891555356060

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070392 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066745 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070392 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594822 (Pople, fixed reference)
 Cluster corrected energies          -109.95591139 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594822 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.82758746 (fixed)   0.94756883 (relaxed)   0.94754331 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41619312
 Singles      0.04109520   -0.14423093   -0.15192319
 Pairs        0.07263720    0.00004138   -0.03959069
 Total        1.11378628   -0.14418955   -0.60770699
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384837
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27920207
 One electron energy                 -190.44148140
 Two electron energy                   80.54992605
 Virial quotient                       -2.72824559
 Correlation energy                    -0.60770698
 !MRCI STATE 16.1 Energy             -109.891555352173

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070407 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066760 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070407 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594837 (Pople, fixed reference)
 Cluster corrected energies          -109.95591155 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594837 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.93695626 (fixed)   0.94756911 (relaxed)   0.94754359 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.47818745
 Singles      0.04109369   -0.14423177   -0.15192307
 Pairs        0.07263805    0.06909034    0.02240353
 Total        1.11378562   -0.07514143   -0.60770699
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28384838
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27914687
 One electron energy                 -190.44139286
 Two electron energy                   80.54983751
 Virial quotient                       -2.72824933
 Correlation energy                    -0.60770697
 !MRCI STATE 17.1 Energy             -109.891555349497

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070367 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066720 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070367 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594796 (Pople, fixed reference)
 Cluster corrected energies          -109.95591114 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594796 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      402.30       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       684.93    679.36      3.78      1.43
 REAL TIME  *       799.59 SEC
 DISK USED  *       434.40 MB (local),       12.85 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01753882  AU                              
 SETTING HLSDIAG(2)     =      -110.01753874  AU                              
 SETTING HLSDIAG(3)     =      -110.01753804  AU                              
 SETTING HLSDIAG(4)     =      -110.01753761  AU                              
 SETTING HLSDIAG(5)     =      -110.01753658  AU                              
 SETTING HLSDIAG(6)     =      -110.01753645  AU                              
 SETTING HLSDIAG(7)     =      -110.01753613  AU                              
 SETTING HLSDIAG(8)     =      -109.97702837  AU                              
 SETTING HLSDIAG(9)     =      -109.97702808  AU                              
 SETTING HLSDIAG(10)    =      -109.97702701  AU                              
 SETTING HLSDIAG(11)    =      -109.96070674  AU                              
 SETTING HLSDIAG(12)    =      -109.96070675  AU                              
 SETTING HLSDIAG(13)    =      -109.96070667  AU                              
 SETTING HLSDIAG(14)    =      -109.96070692  AU                              
 SETTING HLSDIAG(15)    =      -109.96070392  AU                              
 SETTING HLSDIAG(16)    =      -109.96070407  AU                              
 SETTING HLSDIAG(17)    =      -109.96070367  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12
 Number of reference states: 12  Roots:   1   2   3   4   5   6   7   8   9  10  11  12

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
     1      -109.35127769
     2      -109.35127769
     3      -109.35127769
     4      -109.35127769
     5      -109.35127769
     6      -109.35127769
     7      -109.35127769
     8      -109.33359080
     9      -109.33359080
    10      -109.33359080
    11      -109.33359080
    12      -109.33359080

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.68D-05
 Number of N-2 electron functions:    1200
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2279808
 Total number of contracted configurations:      2359039
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  824859 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  507037 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35127769     0.00000000    -0.69086318  0.30D-01  0.10D+00     0.53
    1     2     2     1.00000000     0.00000000  -109.35127769     0.00000000    -0.69145115  0.30D-01  0.10D+00     0.53
    1     3     3     1.00000000     0.00000000  -109.35127769     0.00000000    -0.69084618  0.30D-01  0.10D+00     0.53
    1     4     4     1.00000000     0.00000000  -109.35127769     0.00000000    -0.68995106  0.30D-01  0.10D+00     0.53
    1     5     5     1.00000000     0.00000000  -109.35127769    -0.00000000    -0.69097106  0.30D-01  0.10D+00     0.53
    1     6     6     1.00000000     0.00000000  -109.35127769    -0.00000000    -0.69121838  0.30D-01  0.10D+00     0.53
    1     7     7     1.00000000     0.00000000  -109.35127769     0.00000000    -0.69049660  0.30D-01  0.10D+00     0.53
    1     8     8     1.00000000     0.00000000  -109.33359080    -0.00000000    -0.69628077  0.32D-01  0.11D+00     0.53
    1     9     9     1.00000000     0.00000000  -109.33359080     0.00000000    -0.69634074  0.32D-01  0.11D+00     0.53
    1    10    10     1.00000000     0.00000000  -109.33359080     0.00000000    -0.69617783  0.32D-01  0.11D+00     0.53
    1    11    11     1.00000000     0.00000000  -109.33359080     0.00000000    -0.69674904  0.32D-01  0.11D+00     0.53
    1    12    12     1.00000000     0.00000000  -109.33359080     0.00000000    -0.69628885  0.32D-01  0.11D+00     0.53
    2     1     1     1.09118123    -0.56933838  -109.92061608    -0.56933838    -0.01690061  0.17D-02  0.23D-02    36.09
    2     2     2     1.09123289    -0.56918403  -109.92046173    -0.56918403    -0.01702341  0.17D-02  0.23D-02    36.09
    2     3     3     1.09116798    -0.56913440  -109.92041209    -0.56913440    -0.01705878  0.17D-02  0.23D-02    36.09
    2     4     4     1.09099495    -0.56901829  -109.92029598    -0.56901829    -0.01706828  0.17D-02  0.23D-02    36.09
    2     5     5     1.09108232    -0.56898379  -109.92026148    -0.56898379    -0.01712068  0.17D-02  0.23D-02    36.09
    2     6     6     1.09135033    -0.56897277  -109.92025046    -0.56897277    -0.01728047  0.18D-02  0.23D-02    36.09
    2     7     7     1.09131180    -0.56880074  -109.92007843    -0.56880074    -0.01737040  0.19D-02  0.23D-02    36.09
    2     8     8     1.09376219    -0.57177792  -109.90536873    -0.57177792    -0.01692896  0.24D-02  0.20D-02    36.09
    2     9     9     1.09372138    -0.57168444  -109.90527524    -0.57168444    -0.01698753  0.24D-02  0.20D-02    36.09
    2    10    10     1.09367489    -0.57141858  -109.90500938    -0.57141858    -0.01717391  0.24D-02  0.21D-02    36.09
    2    11    11     1.09367042    -0.57141407  -109.90500487    -0.57141407    -0.01717261  0.24D-02  0.21D-02    36.09
    2    12    12     1.09374021    -0.57141274  -109.90500354    -0.57141274    -0.01721241  0.25D-02  0.21D-02    36.09
    3     1     1     1.08741824    -0.58655077  -109.93782846    -0.01721238    -0.00085419  0.28D-04  0.18D-03    70.75
    3     2     2     1.08739452    -0.58652166  -109.93779936    -0.01733763    -0.00087691  0.28D-04  0.18D-03    70.75
    3     3     3     1.08739591    -0.58651666  -109.93779435    -0.01738226    -0.00089558  0.26D-04  0.19D-03    70.75
    3     4     4     1.08738106    -0.58651382  -109.93779151    -0.01749553    -0.00088921  0.28D-04  0.18D-03    70.75
    3     5     5     1.08733434    -0.58648320  -109.93776089    -0.01749941    -0.00091170  0.26D-04  0.19D-03    70.75
    3     6     6     1.08729309    -0.58647804  -109.93775573    -0.01750527    -0.00089755  0.28D-04  0.18D-03    70.75
    3     7     7     1.08730805    -0.58647443  -109.93775212    -0.01767370    -0.00090442  0.28D-04  0.19D-03    70.75
    3     8     8     1.08870295    -0.58833406  -109.92192486    -0.01655613    -0.00085305  0.86D-04  0.15D-03    70.75
    3     9     9     1.08867553    -0.58831464  -109.92190544    -0.01663021    -0.00085358  0.85D-04  0.15D-03    70.75
    3    10    10     1.08861383    -0.58828247  -109.92187328    -0.01686389    -0.00086649  0.85D-04  0.15D-03    70.75
    3    11    11     1.08859458    -0.58827613  -109.92186693    -0.01686206    -0.00087108  0.86D-04  0.15D-03    70.75
    3    12    12     1.08859026    -0.58827299  -109.92186379    -0.01686024    -0.00087217  0.86D-04  0.15D-03    70.75
    4     1     1     1.09016083    -0.58774626  -109.93902396    -0.00119550    -0.00018329  0.76D-05  0.39D-04   105.46
    4     2     2     1.09012830    -0.58773628  -109.93901398    -0.00121462    -0.00019152  0.76D-05  0.40D-04   105.46
    4     3     3     1.09010712    -0.58773572  -109.93901342    -0.00121906    -0.00019368  0.75D-05  0.41D-04   105.46
    4     4     4     1.09011811    -0.58773565  -109.93901335    -0.00122184    -0.00019467  0.74D-05  0.42D-04   105.46
    4     5     5     1.09006450    -0.58772798  -109.93900567    -0.00124478    -0.00020055  0.71D-05  0.43D-04   105.46
    4     6     6     1.09009742    -0.58772788  -109.93900557    -0.00124984    -0.00020161  0.74D-05  0.44D-04   105.46
    4     7     7     1.09006376    -0.58772555  -109.93900324    -0.00125112    -0.00020390  0.71D-05  0.44D-04   105.46
    4     8     8     1.09050648    -0.58936223  -109.92295303    -0.00102817    -0.00021758  0.83D-05  0.45D-04   105.46
    4     9     9     1.09050750    -0.58935849  -109.92294929    -0.00104385    -0.00021793  0.88D-05  0.44D-04   105.46
    4    10    10     1.09050050    -0.58935324  -109.92294404    -0.00107076    -0.00022027  0.94D-05  0.44D-04   105.46
    4    11    11     1.09049377    -0.58935164  -109.92294244    -0.00107551    -0.00022368  0.94D-05  0.45D-04   105.46
    4    12    12     1.09049315    -0.58935055  -109.92294135    -0.00107757    -0.00022420  0.94D-05  0.45D-04   105.46
    5     1     1     1.09114796    -0.58794582  -109.93922351    -0.00019955    -0.00004669  0.91D-06  0.12D-04   140.10
    5     2     2     1.09113037    -0.58794425  -109.93922194    -0.00020796    -0.00004659  0.99D-06  0.11D-04   140.10
    5     3     3     1.09113212    -0.58794413  -109.93922183    -0.00020841    -0.00004726  0.95D-06  0.12D-04   140.10
    5     4     4     1.09111869    -0.58794165  -109.93921934    -0.00020599    -0.00004825  0.12D-05  0.12D-04   140.10
    5     5     5     1.09112382    -0.58794133  -109.93921902    -0.00021335    -0.00005037  0.11D-05  0.13D-04   140.10
    5     6     6     1.09110529    -0.58794002  -109.93921771    -0.00021214    -0.00005042  0.12D-05  0.12D-04   140.10
    5     7     7     1.09110850    -0.58793894  -109.93921663    -0.00021339    -0.00005203  0.11D-05  0.13D-04   140.10
    5     8     8     1.09188353    -0.58962734  -109.92321814    -0.00026512    -0.00006272  0.18D-05  0.14D-04   140.10
    5     9     9     1.09188933    -0.58962684  -109.92321765    -0.00026836    -0.00006165  0.18D-05  0.14D-04   140.10
    5    10    10     1.09186859    -0.58962667  -109.92321747    -0.00027343    -0.00006387  0.19D-05  0.15D-04   140.10
    5    11    11     1.09187215    -0.58962448  -109.92321528    -0.00027283    -0.00006411  0.19D-05  0.14D-04   140.10
    5    12    12     1.09187088    -0.58962378  -109.92321458    -0.00027322    -0.00006479  0.19D-05  0.15D-04   140.10
    6     1     1     1.09116955    -0.58799239  -109.93927008    -0.00004657    -0.00001258  0.64D-06  0.29D-05   174.74
    6     2     2     1.09117939    -0.58799222  -109.93926991    -0.00004797    -0.00001275  0.63D-06  0.30D-05   174.74
    6     3     3     1.09117238    -0.58799209  -109.93926979    -0.00004796    -0.00001278  0.64D-06  0.29D-05   174.74
    6     4     4     1.09116922    -0.58799124  -109.93926893    -0.00004959    -0.00001330  0.63D-06  0.31D-05   174.74
    6     5     5     1.09116168    -0.58799077  -109.93926846    -0.00004944    -0.00001378  0.61D-06  0.34D-05   174.74
    6     6     6     1.09116933    -0.58799054  -109.93926823    -0.00005053    -0.00001400  0.62D-06  0.35D-05   174.74
    6     7     7     1.09116209    -0.58799001  -109.93926770    -0.00005107    -0.00001438  0.62D-06  0.35D-05   174.74
    6     8     8     1.09191248    -0.58968864  -109.92327944    -0.00006130    -0.00001893  0.24D-05  0.36D-05   174.74
    6     9     9     1.09191667    -0.58968836  -109.92327916    -0.00006151    -0.00001929  0.24D-05  0.38D-05   174.74
    6    10    10     1.09191736    -0.58968786  -109.92327866    -0.00006119    -0.00001970  0.24D-05  0.40D-05   174.74
    6    11    11     1.09190592    -0.58968766  -109.92327846    -0.00006318    -0.00001934  0.25D-05  0.37D-05   174.74
    6    12    12     1.09190573    -0.58968721  -109.92327801    -0.00006343    -0.00001967  0.25D-05  0.38D-05   174.74
    7     1     1     1.09122497    -0.58800597  -109.93928366    -0.00001358    -0.00000410  0.31D-07  0.11D-05   209.48
    7     2     2     1.09122824    -0.58800577  -109.93928346    -0.00001355    -0.00000416  0.32D-07  0.11D-05   209.48
    7     3     3     1.09122714    -0.58800567  -109.93928337    -0.00001358    -0.00000436  0.29D-07  0.12D-05   209.48
    7     4     4     1.09122412    -0.58800534  -109.93928303    -0.00001410    -0.00000449  0.28D-07  0.12D-05   209.48
    7     5     5     1.09121663    -0.58800490  -109.93928259    -0.00001413    -0.00000499  0.25D-07  0.14D-05   209.48
    7     6     6     1.09121566    -0.58800477  -109.93928246    -0.00001422    -0.00000507  0.25D-07  0.14D-05   209.48
    7     7     7     1.09121070    -0.58800470  -109.93928238    -0.00001468    -0.00000505  0.26D-07  0.14D-05   209.48
    7     8     8     1.09192927    -0.58970842  -109.92329923    -0.00001978    -0.00000577  0.13D-06  0.13D-05   209.48
    7     9     9     1.09192450    -0.58970811  -109.92329891    -0.00001975    -0.00000600  0.14D-06  0.13D-05   209.48
    7    10    10     1.09192956    -0.58970810  -109.92329890    -0.00002024    -0.00000610  0.12D-06  0.14D-05   209.48
    7    11    11     1.09192272    -0.58970789  -109.92329869    -0.00002023    -0.00000617  0.13D-06  0.14D-05   209.48
    7    12    12     1.09193013    -0.58970777  -109.92329857    -0.00002056    -0.00000640  0.11D-06  0.15D-05   209.48
    8     1     1     1.09130313    -0.58800991  -109.93928760    -0.00000394    -0.00000136  0.39D-07  0.34D-06   244.21
    8     2     2     1.09130641    -0.58800986  -109.93928755    -0.00000409    -0.00000140  0.42D-07  0.35D-06   244.21
    8     3     3     1.09130195    -0.58800975  -109.93928744    -0.00000408    -0.00000147  0.43D-07  0.38D-06   244.21
    8     4     4     1.09130275    -0.58800971  -109.93928740    -0.00000437    -0.00000151  0.47D-07  0.38D-06   244.21
    8     5     5     1.09129398    -0.58800947  -109.93928716    -0.00000457    -0.00000165  0.50D-07  0.42D-06   244.21
    8     6     6     1.09128939    -0.58800939  -109.93928708    -0.00000462    -0.00000171  0.46D-07  0.44D-06   244.21
    8     7     7     1.09129174    -0.58800937  -109.93928706    -0.00000468    -0.00000172  0.49D-07  0.45D-06   244.21
    8     8     8     1.09201674    -0.58971437  -109.92330517    -0.00000595    -0.00000229  0.50D-07  0.57D-06   244.21
    8     9     9     1.09201218    -0.58971423  -109.92330503    -0.00000612    -0.00000241  0.48D-07  0.60D-06   244.21
    8    10    10     1.09201231    -0.58971414  -109.92330495    -0.00000605    -0.00000244  0.55D-07  0.61D-06   244.21
    8    11    11     1.09201000    -0.58971410  -109.92330490    -0.00000621    -0.00000249  0.51D-07  0.62D-06   244.21
    8    12    12     1.09200987    -0.58971396  -109.92330476    -0.00000619    -0.00000255  0.59D-07  0.64D-06   244.21
    9     1     1     1.09134318    -0.58801125  -109.93928894    -0.00000134    -0.00000046  0.42D-08  0.12D-06   278.86
    9     2     2     1.09134418    -0.58801121  -109.93928891    -0.00000136    -0.00000049  0.38D-08  0.13D-06   278.86
    9     3     3     1.09134210    -0.58801117  -109.93928887    -0.00000142    -0.00000052  0.40D-08  0.14D-06   278.86
    9     4     4     1.09134138    -0.58801114  -109.93928883    -0.00000144    -0.00000054  0.31D-08  0.15D-06   278.86
    9     5     5     1.09133682    -0.58801106  -109.93928875    -0.00000159    -0.00000061  0.31D-08  0.17D-06   278.86
    9     6     6     1.09133396    -0.58801101  -109.93928870    -0.00000162    -0.00000065  0.30D-08  0.19D-06   278.86
    9     7     7     1.09133547    -0.58801101  -109.93928870    -0.00000164    -0.00000064  0.32D-08  0.18D-06   278.86
    9     8     8     1.09206331    -0.58971649  -109.92330730    -0.00000212    -0.00000080  0.57D-07  0.17D-06   278.86
    9     9     9     1.09206076    -0.58971645  -109.92330725    -0.00000221    -0.00000083  0.58D-07  0.18D-06   278.86
    9    10    10     1.09206105    -0.58971640  -109.92330721    -0.00000226    -0.00000087  0.54D-07  0.20D-06   278.86
    9    11    11     1.09205961    -0.58971639  -109.92330719    -0.00000229    -0.00000086  0.60D-07  0.19D-06   278.86
    9    12    12     1.09205976    -0.58971632  -109.92330712    -0.00000237    -0.00000093  0.52D-07  0.22D-06   278.86
   10     1     1     1.09135885    -0.58801169  -109.93928938    -0.00000044    -0.00000019  0.93D-09  0.54D-07   313.52
   10     2     2     1.09135940    -0.58801167  -109.93928937    -0.00000046    -0.00000019  0.12D-08  0.55D-07   313.52
   10     3     3     1.09135803    -0.58801165  -109.93928934    -0.00000048    -0.00000021  0.12D-08  0.63D-07   313.52
   10     4     4     1.09135771    -0.58801164  -109.93928933    -0.00000050    -0.00000021  0.16D-08  0.60D-07   313.52
   10     5     5     1.09135479    -0.58801159  -109.93928929    -0.00000054    -0.00000025  0.17D-08  0.79D-07   313.52
   10     6     6     1.09135237    -0.58801157  -109.93928926    -0.00000056    -0.00000027  0.16D-08  0.84D-07   313.52
   10     7     7     1.09135356    -0.58801157  -109.93928926    -0.00000056    -0.00000027  0.16D-08  0.86D-07   313.52
   10     8     8     1.09208450    -0.58971728  -109.92330808    -0.00000078    -0.00000032  0.49D-08  0.84D-07   313.52
   10     9     9     1.09208298    -0.58971726  -109.92330806    -0.00000081    -0.00000034  0.45D-08  0.89D-07   313.52
   10    10    10     1.09208211    -0.58971723  -109.92330803    -0.00000083    -0.00000035  0.48D-08  0.94D-07   313.52
   10    11    11     1.09208287    -0.58971722  -109.92330802    -0.00000083    -0.00000036  0.65D-08  0.98D-07   313.52
   10    12    12     1.09208193    -0.58971717  -109.92330797    -0.00000085    -0.00000039  0.88D-08  0.11D-06   313.52
   11     1     1     1.09136966    -0.58801185  -109.93928955    -0.00000017    -0.00000007  0.71D-09  0.21D-07   348.22
   11     2     2     1.09136989    -0.58801185  -109.93928954    -0.00000018    -0.00000008  0.64D-09  0.21D-07   348.22
   11     3     3     1.09136888    -0.58801184  -109.93928953    -0.00000019    -0.00000008  0.69D-09  0.25D-07   348.22
   11     4     4     1.09136884    -0.58801184  -109.93928953    -0.00000019    -0.00000009  0.57D-09  0.24D-07   348.22
   11     5     5     1.09136661    -0.58801181  -109.93928950    -0.00000022    -0.00000010  0.53D-09  0.32D-07   348.22
   11     6     6     1.09136477    -0.58801180  -109.93928949    -0.00000023    -0.00000011  0.53D-09  0.33D-07   348.22
   11     7     7     1.09136546    -0.58801180  -109.93928949    -0.00000023    -0.00000011  0.53D-09  0.35D-07   348.22
   11     8     8     1.09209829    -0.58971756  -109.92330837    -0.00000029    -0.00000013  0.16D-08  0.36D-07   348.22
   11     9     9     1.09209723    -0.58971756  -109.92330836    -0.00000030    -0.00000014  0.17D-08  0.38D-07   348.22
   11    10    10     1.09209650    -0.58971754  -109.92330835    -0.00000031    -0.00000015  0.19D-08  0.41D-07   348.22
   11    11    11     1.09209696    -0.58971754  -109.92330834    -0.00000032    -0.00000015  0.19D-08  0.42D-07   348.22
   11    12    12     1.09209629    -0.58971751  -109.92330831    -0.00000034    -0.00000017  0.20D-08  0.47D-07   348.22
   12     1     1     1.09137687    -0.58801192  -109.93928961    -0.00000006    -0.00000003  0.12D-09  0.80D-08   383.00
   12     2     2     1.09137699    -0.58801191  -109.93928961    -0.00000007    -0.00000003  0.14D-09  0.83D-08   383.00
   12     3     3     1.09137611    -0.58801191  -109.93928960    -0.00000007    -0.00000003  0.16D-09  0.98D-08   383.00
   12     4     4     1.09137613    -0.58801191  -109.93928960    -0.00000007    -0.00000003  0.19D-09  0.98D-08   383.00
   12     5     5     1.09137452    -0.58801190  -109.93928959    -0.00000009    -0.00000004  0.22D-09  0.12D-07   383.00
   12     6     6     1.09137340    -0.58801190  -109.93928959    -0.00000009    -0.00000005  0.23D-09  0.14D-07   383.00
   12     7     7     1.09137369    -0.58801190  -109.93928958    -0.00000010    -0.00000005  0.23D-09  0.14D-07   383.00
   12     8     8     1.09210837    -0.58971768  -109.92330849    -0.00000012    -0.00000006  0.16D-08  0.15D-07   383.00
   12     9     9     1.09210755    -0.58971768  -109.92330848    -0.00000012    -0.00000006  0.16D-08  0.15D-07   383.00
   12    10    10     1.09210690    -0.58971767  -109.92330848    -0.00000013    -0.00000006  0.16D-08  0.16D-07   383.00
   12    11    11     1.09210702    -0.58971767  -109.92330847    -0.00000013    -0.00000007  0.13D-08  0.18D-07   383.00
   12    12    12     1.09210634    -0.58971766  -109.92330846    -0.00000014    -0.00000007  0.12D-08  0.20D-07   383.00
   13     1     1     1.09137950    -0.58801193  -109.93928963    -0.00000002    -0.00000002  0.51D-10  0.61D-08   407.73
   13     2     2     1.09137875    -0.58801193  -109.93928962    -0.00000002    -0.00000002  0.51D-10  0.68D-08   407.73
   13     3     3     1.09137893    -0.58801193  -109.93928962    -0.00000002    -0.00000002  0.53D-10  0.69D-08   407.73
   13     4     4     1.09137691    -0.58801192  -109.93928961    -0.00000001    -0.00000003  0.12D-09  0.79D-08   407.73
   13     5     5     1.09137700    -0.58801192  -109.93928961    -0.00000002    -0.00000003  0.14D-09  0.82D-08   407.73
   13     6     6     1.09137622    -0.58801192  -109.93928960    -0.00000002    -0.00000003  0.16D-09  0.96D-08   407.73
   13     7     7     1.09137614    -0.58801191  -109.93928960    -0.00000002    -0.00000003  0.18D-09  0.97D-08   407.73
   13     8     8     1.09212319    -0.58971776  -109.92330856    -0.00000007    -0.00000002  0.12D-08  0.35D-08   407.73
   13     9     9     1.09212308    -0.58971776  -109.92330856    -0.00000008    -0.00000002  0.13D-08  0.37D-08   407.73
   13    10    10     1.09212306    -0.58971776  -109.92330856    -0.00000008    -0.00000002  0.13D-08  0.42D-08   407.73
   13    11    11     1.09212312    -0.58971776  -109.92330856    -0.00000008    -0.00000002  0.12D-08  0.46D-08   407.73
   13    12    12     1.09211467    -0.58971773  -109.92330853    -0.00000008    -0.00000002  0.55D-09  0.62D-08   407.73


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.3%   9.9%  61.5%

 Initialization:   0.1%
 Other:           27.9%

 Total CPU:      407.7 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222/2/\222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9542886  -0.0000000   0.0000000
                      0.0000000  -0.0000001   0.0000000
 2/2/22\222           0.0461813  -0.0000000  -0.0000000   0.0000000   0.9531702   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0000000   0.0000000   0.0000001
 22/2/2\222           0.8525423  -0.0000000  -0.0000000  -0.0000000  -0.0413064   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000003
 22/22/\222          -0.0000000   0.1580211   0.0000000   0.0000000   0.0000000   0.8387875   0.0000000  -0.0000008   0.0000000
                      0.0000000   0.0000000   0.0000000
 2//222\222           0.0000000  -0.0000000   0.7819205  -0.3422477   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000005
                     -0.0000000   0.0000000   0.0000000
 2/22/2\222          -0.0000000   0.7726464   0.0000000   0.0000000   0.0000000  -0.3626982   0.0000000  -0.0000005   0.0000000
                      0.0000000   0.0000000   0.0000000
 2/2\22/222           0.0000002   0.0000000   0.0000000   0.0000000   0.0000019  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000000   0.6850144
 222/2\/222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000
                      0.6831822   0.0495477  -0.0000000
 2222//\222          -0.0000000   0.0000000   0.5268587   0.6715288  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000005
                      0.0000000  -0.0000000  -0.0000000
 22/2\2/222           0.0000007   0.0000000   0.0000000  -0.0000000  -0.0000022  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.5932440
 2/\222/222           0.0000000   0.0000000   0.0000030   0.0000038   0.0000000   0.0000000  -0.0000000   0.0000000   0.5932069
                     -0.0000000   0.0000000   0.0000000
 2222/\/222           0.0000000   0.0000000  -0.0000028   0.0000067   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.5932063
                      0.0000000   0.0000000   0.0000000
 22/22\/222          -0.0000000   0.0000022   0.0000000   0.0000000   0.0000000   0.0000022  -0.0000000   0.5932060  -0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2/22\2/222           0.0000000  -0.0000034  -0.0000000  -0.0000000   0.0000000  -0.0000072   0.0000000  -0.5932051  -0.0000000
                      0.0000000   0.0000000  -0.0000000
 222//2\222          -0.0000000  -0.0000000   0.1472571  -0.5853047  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000007
                      0.0000000  -0.0000000  -0.0000000
 22//22\222          -0.0000000  -0.5373187   0.0000000   0.0000000   0.0000000  -0.2748676   0.0000000  -0.0000008   0.0000000
                     -0.0000000   0.0000000   0.0000000
 202222/222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000009   0.0000000   0.0000000
                     -0.0350354   0.4830848  -0.0000000
 222220/222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000006   0.0000000   0.0000000
                     -0.0350352   0.4830842  -0.0000000
 222022/222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000020  -0.0000000  -0.0000000
                      0.0350348  -0.4830842  -0.0000000
 222202/222          -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000002   0.0000000   0.0000000
                      0.4358817  -0.2112008  -0.0000000
 2/222/\222          -0.4262662   0.0000000  -0.0000000   0.0000000   0.0206521   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000007
 220222/222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000
                     -0.4008460  -0.2718838   0.0000000
 222/\2/222           0.0000000   0.0000000   0.0000003   0.0000026   0.0000000  -0.0000000  -0.0000000   0.0000000   0.3424879
                      0.0000000   0.0000000   0.0000000
 22/\22/222           0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000000  -0.0000056   0.0000000  -0.3424866   0.0000000
                     -0.0000000   0.0000000   0.0000000
 22/2220222           0.0000000  -0.0000110  -0.0000000  -0.0000000   0.0000000  -0.0000263   0.0000000   0.2764640   0.0000000
                      0.0000000   0.0000000   0.0000000
 2222/20222           0.0000000   0.0000000   0.0000011   0.0000260   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.2764582
                      0.0000000   0.0000000   0.0000000
 2/22220222           0.0000010   0.0000000  -0.0000000  -0.0000000  -0.0000096   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0000000   0.2762957
 22222/0222           0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000004  -0.0000000  -0.0000000
                      0.2757256   0.0199934   0.0000000
 222/220222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000065   0.0000000   0.0000000
                      0.0199951  -0.2757211  -0.0000000
 2/20222222          -0.0000001   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0717291
 202/222222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000
                     -0.0051886   0.0715440   0.0000000
 222/202222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0051886   0.0715440  -0.0000000
 22202/2222           0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000  -0.0000000
                     -0.0715440  -0.0051886   0.0000000
 22/2/\2222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.0560682
 2/2\/22222          -0.0000000  -0.0221928   0.0000000  -0.0000000   0.0000000   0.0250241   0.0000000   0.0560671  -0.0000000
                      0.0000000  -0.0000000   0.0000000
 22220/2222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0215896   0.0000000  -0.0000000
                     -0.0515827   0.0360086  -0.0000000
 2/\2/22222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0000000  -0.0000000
                     -0.0504566   0.0244481  -0.0000000
 2//2\22222          -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0244483  -0.0504565  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.951145   -0.000000   -0.000000   -0.000000    0.107663    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 2          -0.040050   -0.000000   -0.000000   -0.000000    0.956381   -0.000000   -0.000000    0.000000    0.000001   -0.000000
             0.000000    0.000000
 3           0.000000    0.957012    0.000000    0.019910   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 4          -0.000000   -0.019910   -0.000000    0.957013    0.000000    0.000000    0.000000    0.000002    0.000000   -0.000000
             0.000000   -0.000000
 5          -0.000000   -0.000000   -0.107663   -0.000000   -0.000000   -0.000000    0.951146    0.000000    0.000000   -0.000000
             0.000001   -0.000000
 6           0.956382    0.000000   -0.000000   -0.000000    0.040051    0.000000   -0.000000   -0.000000    0.000002    0.000000
            -0.000000   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000    0.957221   -0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.954222   -0.000000
            -0.000000   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954223   -0.000000   -0.000000
            -0.000000   -0.000000
 10          0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.576935
            -0.000000    0.760058
 11          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.760059
            -0.000000   -0.576935
 12          0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
             0.954239   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957219   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 2          -0.000000    0.957220   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 3           0.000000   -0.000000    0.957219    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
            -0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.957220    0.000000   -0.000000    0.000000    0.000000    0.000001   -0.000000
             0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.957220   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.957221    0.000000    0.000001   -0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957221   -0.000000    0.000000    0.000000
             0.000000    0.000000
 8          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000001   -0.000000    0.954222   -0.000000   -0.000000
            -0.000000   -0.000000
 9           0.000000    0.000000    0.000000    0.000001    0.000000   -0.000000    0.000000   -0.000000    0.954223   -0.000000
             0.000000   -0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954223
             0.000000   -0.000000
 11         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.954224   -0.000000
 12         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.954239

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00484125    -1.72847200       2212220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00484043    -1.72832344       2222120222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00481392    -1.71906891       2222210222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00481329    -1.71895497       2221220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00481736    -1.72417003       2122220222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95114528 (fixed)   0.95722075 (relaxed)   0.95721920 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324   -0.00000000   -0.46922341
 Singles      0.01506918   -0.07591137   -0.07767374
 Pairs        0.07631061    0.00000000   -0.04111478
 Total        1.09138303   -0.07591137   -0.58801193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46138967
 One electron energy                 -193.13135843
 Two electron energy                   83.19206881
 Virial quotient                       -2.65160648
 Correlation energy                    -0.58801193
 !MRCI STATE 1.1 Energy              -109.939289628199

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302394 (Davidson, fixed reference)
 Cluster corrected energies          -109.99302186 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302394 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971369 (Pople, fixed reference)
 Cluster corrected energies          -109.98971160 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971369 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95638130 (fixed)   0.95722108 (relaxed)   0.95721953 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324    0.00000000   -0.46922356
 Singles      0.01506933   -0.07591155   -0.07767391
 Pairs        0.07630971   -0.00000000   -0.04111445
 Total        1.09138228   -0.07591155   -0.58801193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46139394
 One electron energy                 -193.13136244
 Two electron energy                   83.19207282
 Virial quotient                       -2.65160621
 Correlation energy                    -0.58801193
 !MRCI STATE 2.1 Energy              -109.939289624731

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302350 (Davidson, fixed reference)
 Cluster corrected energies          -109.99302142 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302350 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971324 (Pople, fixed reference)
 Cluster corrected energies          -109.98971115 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971324 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95701236 (fixed)   0.95722100 (relaxed)   0.95721945 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324   -0.00000000   -0.46922353
 Singles      0.01506929   -0.07591151   -0.07767387
 Pairs        0.07630993    0.00000000   -0.04111453
 Total        1.09138246   -0.07591151   -0.58801193
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46139146
 One electron energy                 -193.13136022
 Two electron energy                   83.19207060
 Virial quotient                       -2.65160637
 Correlation energy                    -0.58801193
 !MRCI STATE 3.1 Energy              -109.939289624662

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302360 (Davidson, fixed reference)
 Cluster corrected energies          -109.99302152 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302360 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971335 (Pople, fixed reference)
 Cluster corrected energies          -109.98971126 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971335 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95701325 (fixed)   0.95722189 (relaxed)   0.95722034 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324    0.00000000   -0.46922274
 Singles      0.01507029   -0.07591331   -0.07767470
 Pairs        0.07630691   -0.00000000   -0.04111448
 Total        1.09138044   -0.07591331   -0.58801192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46142582
 One electron energy                 -193.13138191
 Two electron energy                   83.19209230
 Virial quotient                       -2.65160417
 Correlation energy                    -0.58801192
 !MRCI STATE 4.1 Energy              -109.939289611598

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302240 (Davidson, fixed reference)
 Cluster corrected energies          -109.99302032 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302240 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971214 (Pople, fixed reference)
 Cluster corrected energies          -109.98971005 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971214 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95114636 (fixed)   0.95722185 (relaxed)   0.95722030 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324   -0.00000000   -0.46922249
 Singles      0.01507034   -0.07591353   -0.07767474
 Pairs        0.07630695    0.00000000   -0.04111469
 Total        1.09138053   -0.07591353   -0.58801192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46142368
 One electron energy                 -193.13137869
 Two electron energy                   83.19208908
 Virial quotient                       -2.65160431
 Correlation energy                    -0.58801192
 !MRCI STATE 5.1 Energy              -109.939289608868

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302245 (Davidson, fixed reference)
 Cluster corrected energies          -109.99302037 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302245 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971219 (Pople, fixed reference)
 Cluster corrected energies          -109.98971010 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971219 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95638240 (fixed)   0.95722219 (relaxed)   0.95722064 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324   -0.00000000   -0.46922279
 Singles      0.01507047   -0.07591357   -0.07767488
 Pairs        0.07630605   -0.00000000   -0.04111425
 Total        1.09137976   -0.07591357   -0.58801192
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46143296
 One electron energy                 -193.13138502
 Two electron energy                   83.19209542
 Virial quotient                       -2.65160371
 Correlation energy                    -0.58801191
 !MRCI STATE 6.1 Energy              -109.939289604707

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302199 (Davidson, fixed reference)
 Cluster corrected energies          -109.99301991 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302199 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971173 (Pople, fixed reference)
 Cluster corrected energies          -109.98970964 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971173 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95722067 (fixed)   0.95722222 (relaxed)   0.95722067 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000324    0.00000000   -0.46922270
 Singles      0.01507060   -0.07591394   -0.07767498
 Pairs        0.07630584    0.00000025   -0.04111422
 Total        1.09137967   -0.07591370   -0.58801191
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35127769
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46143555
 One electron energy                 -193.13138525
 Two electron energy                   83.19209564
 Virial quotient                       -2.65160355
 Correlation energy                    -0.58801191
 !MRCI STATE 7.1 Energy              -109.939289602946

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99302194 (Davidson, fixed reference)
 Cluster corrected energies          -109.99301986 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99302194 (Davidson, rotated reference)

 Cluster corrected energies          -109.98971167 (Pople, fixed reference)
 Cluster corrected energies          -109.98970959 (Pople, relaxed reference)
 Cluster corrected energies          -109.98971167 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95422221 (fixed)   0.95689478 (relaxed)   0.95422221 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560942    0.00000000   -0.47362560
 Singles      0.01584837   -0.07286672   -0.07485753
 Pairs        0.07679158   -0.00000000   -0.04123463
 Total        1.09824936   -0.07286672   -0.58971776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33359080
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48980474
 One electron energy                 -193.30753021
 Two electron energy                   83.38422165
 Virial quotient                       -2.64940530
 Correlation energy                    -0.58971776
 !MRCI STATE 8.1 Energy              -109.923308561002

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98124795 (Davidson, fixed reference)
 Cluster corrected energies          -109.97763524 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98124795 (Davidson, rotated reference)

 Cluster corrected energies          -109.97797123 (Pople, fixed reference)
 Cluster corrected energies          -109.97431796 (Pople, relaxed reference)
 Cluster corrected energies          -109.97797123 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95422271 (fixed)   0.95689483 (relaxed)   0.95422271 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560846    0.00000000   -0.47362554
 Singles      0.01584825   -0.07286676   -0.07485755
 Pairs        0.07679150   -0.00000000   -0.04123466
 Total        1.09824821   -0.07286676   -0.58971776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33359080
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48980318
 One electron energy                 -193.30752079
 Two electron energy                   83.38421223
 Virial quotient                       -2.64940540
 Correlation energy                    -0.58971776
 !MRCI STATE 9.1 Energy              -109.923308559205

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98124727 (Davidson, fixed reference)
 Cluster corrected energies          -109.97763518 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98124727 (Davidson, rotated reference)

 Cluster corrected energies          -109.97797054 (Pople, fixed reference)
 Cluster corrected energies          -109.97431789 (Pople, relaxed reference)
 Cluster corrected energies          -109.97797054 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.76005824 (fixed)   0.95689484 (relaxed)   0.95422338 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560707   -0.00000000   -0.09877130
 Singles      0.01584821   -0.07286681   -0.07485760
 Pairs        0.07679138   -0.41168228   -0.41608886
 Total        1.09824667   -0.48454910   -0.58971776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33359080
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48979260
 One electron energy                 -193.30749743
 Two electron energy                   83.38418887
 Virial quotient                       -2.64940607
 Correlation energy                    -0.58971776
 !MRCI STATE 10.1 Energy             -109.923308558262

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98124636 (Davidson, fixed reference)
 Cluster corrected energies          -109.97763516 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98124636 (Davidson, rotated reference)

 Cluster corrected energies          -109.97796962 (Pople, fixed reference)
 Cluster corrected energies          -109.97431788 (Pople, relaxed reference)
 Cluster corrected energies          -109.97796962 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.76005852 (fixed)   0.95689481 (relaxed)   0.95422371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560631   -0.00000000   -0.75816490
 Singles      0.01584817   -0.07286671   -0.07485756
 Pairs        0.07679142    0.31249431    0.24330471
 Total        1.09824591    0.23962760   -0.58971776
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33359080
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48978551
 One electron energy                 -193.30748144
 Two electron energy                   83.38417289
 Virial quotient                       -2.64940653
 Correlation energy                    -0.58971776
 !MRCI STATE 11.1 Energy             -109.923308556970

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98124591 (Davidson, fixed reference)
 Cluster corrected energies          -109.97763520 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98124591 (Davidson, rotated reference)

 Cluster corrected energies          -109.97796916 (Pople, fixed reference)
 Cluster corrected energies          -109.97431791 (Pople, relaxed reference)
 Cluster corrected energies          -109.97796916 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95423912 (fixed)   0.95689851 (relaxed)   0.95423912 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00558161    0.00000000   -0.47362883
 Singles      0.01584541   -0.07286519   -0.07485762
 Pairs        0.07678341   -0.00000000   -0.04123129
 Total        1.09821043   -0.07286519   -0.58971773
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33359080
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48971420
 One electron energy                 -193.30726568
 Two electron energy                   83.38395715
 Virial quotient                       -2.64941108
 Correlation energy                    -0.58971773
 !MRCI STATE 12.1 Energy             -109.923308534791

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98122496 (Davidson, fixed reference)
 Cluster corrected energies          -109.97763019 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98122496 (Davidson, rotated reference)

 Cluster corrected energies          -109.97794788 (Pople, fixed reference)
 Cluster corrected energies          -109.97431287 (Pople, relaxed reference)
 Cluster corrected energies          -109.97794788 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      621.45       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1116.68    431.72    679.36      3.78      1.43
 REAL TIME  *      1293.35 SEC
 DISK USED  *       653.56 MB (local),       19.27 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99302394  AU                              
 SETTING HLSDIAG(19)    =      -109.99302350  AU                              
 SETTING HLSDIAG(20)    =      -109.99302360  AU                              
 SETTING HLSDIAG(21)    =      -109.99302240  AU                              
 SETTING HLSDIAG(22)    =      -109.99302245  AU                              
 SETTING HLSDIAG(23)    =      -109.99302199  AU                              
 SETTING HLSDIAG(24)    =      -109.99302194  AU                              
 SETTING HLSDIAG(25)    =      -109.98124795  AU                              
 SETTING HLSDIAG(26)    =      -109.98124727  AU                              
 SETTING HLSDIAG(27)    =      -109.98124636  AU                              
 SETTING HLSDIAG(28)    =      -109.98124591  AU                              
 SETTING HLSDIAG(29)    =      -109.98122496  AU                              


         HLSDIAG
    -110.0175388
    -110.0175387
    -110.0175380
    -110.0175376
    -110.0175366
    -110.0175364
    -110.0175361
    -109.9770284
    -109.9770281
    -109.9770270
    -109.9607067
    -109.9607068
    -109.9607067
    -109.9607069
    -109.9607039
    -109.9607041
    -109.9607037
    -109.9930239
    -109.9930235
    -109.9930236
    -109.9930224
    -109.9930224
    -109.9930220
    -109.9930219
    -109.9812480
    -109.9812473
    -109.9812464
    -109.9812459
    -109.9812250
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:   -109.965313   -109.965313   -109.965313   -109.965313   -109.965313   -109.965313   -109.965313   -109.921474
                      -109.921474   -109.921474   -109.891555   -109.891555   -109.891555   -109.891555   -109.891555   -109.891555
                      -109.891555
 Replaced energies:   -110.017539   -110.017539   -110.017538   -110.017538   -110.017537   -110.017536   -110.017536   -109.977028
                      -109.977028   -109.977027   -109.960707   -109.960707   -109.960707   -109.960707   -109.960704   -109.960704
                      -109.960704

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939290   -109.939290   -109.939290   -109.939290   -109.939290   -109.939290   -109.939290   -109.923309
                      -109.923309   -109.923309   -109.923309   -109.923309
 Replaced energies:   -109.993024   -109.993023   -109.993024   -109.993022   -109.993022   -109.993022   -109.993022   -109.981248
                      -109.981247   -109.981246   -109.981246   -109.981225



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01753882

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1018.03       0.03      -0.00       0.00      -0.00       0.10      -0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1018.03       0.00      -0.00      -0.05      -0.00      -0.00     144.86      -0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00      38.94      -0.51    -709.46       0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.05     -38.94      -0.00   -1062.66       0.62       0.00      -0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.49       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.51    1062.66      -0.00    1004.68       0.01      -0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00
                            0.00       0.00     709.46      -0.62   -1004.68       0.00      -0.00       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.59       0.00       0.00       0.00
                           -0.10    -144.86      -0.00      -0.00      -0.01       0.00      -0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.02       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -524.63      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.08       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00     524.63       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.31
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -3.26       0.00      -3.41      -0.00       0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01      -1.17       0.00       4.51       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       3.18       0.00      -0.00      -0.01      -0.00       0.00      -0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -3.17      -0.01      -0.00      -0.00       0.00      -0.00       0.45       0.00      -0.00      -0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.58      -0.00       1.75       0.00       0.00      -0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.88       0.00       0.66      -0.00      -0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.40       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   18   1.1  1.5  0.5      -0.00       0.02    -412.50       0.08    -530.09       0.38       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      47.93      -0.36    -508.39      -0.02       0.00      -0.00       0.00

   19   2.1  1.5  0.5      -0.02      -0.00       0.06    -593.31      -0.05      21.09      -0.01      -0.00       0.00      -0.00
                           -0.00       0.00    -564.46       0.03     183.98      -0.19       0.00       0.00      -0.00      -0.00

   20   3.1  1.5  0.5     412.50      -0.06       0.00      -0.00      -0.00      -0.02     632.72       0.00       0.00      -0.00
                            0.00     564.46       0.00      -0.00       0.02      -0.00       0.06      -0.00      -0.00       0.00

   21   4.1  1.5  0.5      -0.08     593.31       0.00      -0.00       0.03      -0.00       0.04      -0.00      -0.00       0.00
                          -47.93      -0.03       0.00       0.00       0.00       0.00     571.10       0.00       0.00      -0.00

   22   5.1  1.5  0.5     530.09       0.05       0.00      -0.03       0.00      -0.02     172.24       0.00       0.00       0.00
                            0.36    -183.98      -0.02      -0.00      -0.00      -0.00      -0.33       0.00       0.00      -0.00

   23   6.1  1.5  0.5      -0.38     -21.09       0.02       0.00       0.02       0.00      -0.13      -0.00       0.00      -0.00
                          508.39       0.19       0.00      -0.00       0.00      -0.00    -542.44       0.00      -0.00      -0.00

   24   7.1  1.5  0.5      -0.00       0.01    -632.72      -0.04    -172.24       0.13       0.00      -0.00      -0.00       0.00
                            0.02      -0.00      -0.06    -571.10       0.33     542.44      -0.00      -0.00       0.00      -0.00

   25   8.1  1.5  0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.27
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -302.89

   26   9.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.89
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.27

   27  10.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.27     302.89       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     302.89      -0.27      -0.00

   28  11.1  1.5  0.5      -1.46      -0.00      -0.00       0.00      -0.00       0.00      -0.26       0.00      -0.00      -0.00
                           -0.00       0.81       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   29  12.1  1.5  0.5       0.00      -1.48      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                           -0.79      -0.00      -0.00      -0.00       0.00      -0.00      -0.49      -0.00      -0.00       0.00

   30  13.1  1.5  0.5      -0.00       0.00      -1.25      -0.00      -1.64       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.18       0.00      -1.61       0.00       0.00       0.00      -0.00

   31  14.1  1.5  0.5       0.00      -0.00       0.00      -1.85       0.00       0.07       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -1.76      -0.00       0.57       0.00      -0.00       0.00      -0.00       0.00

   32  15.1  1.5  0.5      -1.50       0.00       0.00      -0.00       0.00       0.00      -2.03      -0.00      -0.00       0.00
                           -0.00      -1.66      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       1.11       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -1.38       0.00       0.00      -0.00      -0.00       0.00       2.40      -0.00      -0.00      -0.00

   34  17.1  1.5  0.5       0.00       0.00      -1.99      -0.00      -0.56       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00      -1.78       0.00       1.66       0.00      -0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5      -0.00      -0.01     480.02      -0.03     184.78      -0.13      -0.00      -0.00      -0.00      -0.00
                           -0.01       0.00      -0.00     378.84      -0.16    -299.89      -0.00      -0.00       0.00      -0.00

   70   2.1  0.5  0.5    -459.17       0.04       0.00      -0.00       0.00       0.02    -383.56      -0.00      -0.00       0.00
                            0.00    -173.20      -0.00       0.00      -0.01       0.00      -0.02       0.00       0.00       0.00

   71   3.1  0.5  0.5       0.00    -163.43      -0.00       0.00      -0.01       0.00      -0.02       0.00       0.00       0.00
                         -300.32      -0.02       0.00      -0.00       0.00       0.01     165.76      -0.00       0.00      -0.00

   72   4.1  0.5  0.5       0.00    -373.40      -0.00       0.00      -0.02       0.00      -0.04       0.00       0.00      -0.00
                          180.89       0.05       0.00       0.00      -0.00      -0.01    -514.73       0.00      -0.00       0.01

   73   5.1  0.5  0.5      -0.00      -0.01     196.19      -0.05     335.10      -0.24      -0.00      -0.00      -0.00      -0.00
                            0.02      -0.00       0.00    -106.27       0.28     413.02       0.00       0.00      -0.00       0.00

   74   6.1  0.5  0.5      42.67       0.02       0.00       0.00      -0.00      -0.00    -235.71       0.00      -0.00       0.01
                            0.00    -368.97      -0.00       0.00      -0.02       0.00      -0.04       0.00       0.00      -0.00

   75   7.1  0.5  0.5      -0.00      -0.00       0.00     407.34       0.05     -14.48      -0.00      -0.00       0.00      -0.00
                            0.00       0.01     387.53       0.02    -126.31       0.09       0.00       0.00       0.00      -0.00

   76   8.1  0.5  0.5    -461.25      -0.05      -0.00      -0.00       0.00       0.02     475.31       0.00       0.00     714.99
                            0.00    -523.61      -0.00       0.00      -0.02       0.00      -0.05      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5       0.00    -523.61      -0.00       0.00      -0.02       0.00      -0.05      -0.00      -0.00      -0.00
                          575.53      -0.03      -0.00       0.00      -0.00      -0.02     327.78       0.00       0.00     715.00

   78  10.1  0.5  0.5       0.02      -0.00       0.00     250.64       0.49     623.69       0.00     742.99      -0.65      -0.00
                            0.00       0.03      99.28       0.09    -643.84       0.46       0.00       0.60     683.27      -0.00

   79  11.1  0.5  0.5      -0.01       0.00      -0.00     460.03      -0.17    -322.87      -0.00    -360.00       0.32       0.00
                            0.00       0.01    -534.21       0.03    -240.63       0.18       0.00       0.41     463.44       0.00

   80  12.1  0.5  0.5       0.00       0.02     372.17       0.08    -547.91       0.39       0.00      -0.63    -715.04       0.00
                           -0.02       0.00      -0.00    -537.72      -0.36    -386.75      -0.00     715.04      -0.63      -0.00

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.02     412.50
                           -0.00       0.00       0.01       3.17       0.00      -0.00       0.00      -0.00       0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02      -0.00      -0.06
                           -0.00      -0.01      -3.18       0.01       0.00       0.00       0.40      -0.00      -0.00    -564.46

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -412.50       0.06       0.00
                            0.00       1.17      -0.00       0.00       0.00       1.88      -0.00       0.00     564.46      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.08    -593.31      -0.00
                            3.26      -0.00       0.00       0.00       0.58      -0.00      -0.00     -47.93      -0.03       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -530.09      -0.05      -0.00
                           -0.00      -4.51       0.01      -0.00       0.00      -0.66       0.00       0.36    -183.98      -0.02

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.38      21.09      -0.02
                            3.41      -0.00       0.00       0.00      -1.75       0.00      -0.00     508.39       0.19       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     632.72
                            0.00      -0.00      -0.00      -0.45      -0.00       0.00      -0.00       0.02      -0.00      -0.06

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   11  11.1  1.5  1.5   12473.20       0.00       0.00       0.00       0.00       0.00       0.00       1.46       0.00       0.00
                           -0.00    1566.40      -3.87       0.00      -0.29     309.94      -0.44      -0.00       0.81       0.00

   12  12.1  1.5  1.5       0.00   12473.20       0.00       0.00       0.00       0.00       0.00      -0.00       1.48       0.00
                        -1566.40       0.00      -0.00       2.45     180.77      -0.85       0.00      -0.79      -0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00   12473.22       0.00       0.00       0.00       0.00       0.00      -0.00       1.25
                            3.87       0.00      -0.00    1076.17       0.09       0.00       0.46       0.00       0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00   12473.16       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -2.45   -1076.17       0.00       0.00       0.42     135.45      -0.00       0.00      -1.76

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   12473.82       0.00       0.00       1.50      -0.00      -0.00
                            0.29    -180.77      -0.09      -0.00       0.00    -599.08       0.11      -0.00      -1.66      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   12473.79       0.00      -0.00      -1.11      -0.00
                         -309.94       0.85      -0.00      -0.42     599.08      -0.00      -0.00      -1.38       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   12473.88      -0.00      -0.00       1.99
                            0.44      -0.00      -0.46    -135.45      -0.11       0.00       0.00       0.00      -0.00      -0.00

   18   1.1  1.5  0.5       1.46      -0.00       0.00      -0.00       1.50      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.79      -0.00       0.00       0.00       1.38      -0.00      -0.00     339.34       0.01

   19   2.1  1.5  0.5       0.00       1.48      -0.00       0.00      -0.00      -1.11      -0.00       0.00       0.02       0.00
                           -0.81       0.00      -0.00      -0.00       1.66      -0.00       0.00    -339.34       0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       1.25      -0.00      -0.00      -0.00       1.99       0.00       0.00       0.17
                           -0.00       0.00       0.00       1.76       0.00      -0.00       0.00      -0.01       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       1.85       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.18       0.00      -0.00       0.00       1.78       0.00       0.02     -12.98

   22   5.1  1.5  0.5       0.00       0.00       1.64      -0.00      -0.00      -0.00       0.56       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.57      -0.00       0.00      -0.00      -0.00       0.00       0.17

   23   6.1  1.5  0.5      -0.00      -0.00      -0.00      -0.07      -0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       1.61      -0.00      -0.00      -0.00      -1.66       0.00       0.00     236.49

   24   7.1  1.5  0.5       0.26       0.00      -0.00      -0.00       2.03      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.49      -0.00       0.00      -0.00      -2.40      -0.00      -0.03     -48.29      -0.00

   25   8.1  1.5  0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00      -1.35    -491.98       0.39       0.00       0.09     -95.40       0.00       0.00       0.00
                            0.00       0.00       0.23     274.71       0.06      -0.00      -0.18       0.00       0.00      -0.00

   29  12.1  1.5  0.5       1.35       0.00      -0.64    -499.58       1.23      -0.00      -0.30       0.00       0.00       0.00
                           -0.00       0.00    -263.87      -0.06       0.00       1.04    -168.89      -0.00       0.00      -0.39

   30  13.1  1.5  0.5     491.98       0.64      -0.00       1.15     497.26      -1.19       0.00       0.00       0.00       0.00
                           -0.23     263.87      -0.00      -0.00       1.44     481.15       0.44      -0.00       1.06       0.00

   31  14.1  1.5  0.5      -0.39     499.58      -1.15      -0.00      -1.71    -377.60       0.18       0.00       0.00       0.00
                         -274.71       0.06       0.00      -0.00     562.76      -1.33       0.00      -1.06      -0.00      -0.00

   32  15.1  1.5  0.5      -0.00      -1.23    -497.26       1.71      -0.00      -0.13    -694.26       0.00       0.00       0.00
                           -0.06      -0.00      -1.44    -562.76       0.00      -0.00       0.62      -0.00      -0.00      -0.00

   33  16.1  1.5  0.5      -0.09       0.00       1.19     377.60       0.13      -0.00       0.60       0.00       0.00       0.00
                            0.00      -1.04    -481.15       1.33       0.00       0.00     806.69       0.00      -0.00      -0.63

   34  17.1  1.5  0.5      95.40       0.30      -0.00      -0.18     694.26      -0.60       0.00       0.00       0.00       0.00
                            0.18     168.89      -0.44      -0.00      -0.62    -806.69      -0.00      -0.00      -0.13       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.03    -476.32
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00       0.07
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -651.78

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     476.32      -0.07       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     651.78       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.09     685.09       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -55.34      -0.04       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     612.10       0.06       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.41    -212.44      -0.03

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.44     -24.36       0.02
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     587.04       0.21       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.01    -730.60
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.02      -0.00      -0.06

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.68      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.94       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.70      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.91      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.45
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.03

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.73       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.92      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.29       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.60       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5       8.43       0.01      -0.00      -0.02      36.28      -0.03      -0.00       0.00       0.00       0.00
                            0.01       9.99      -0.03       0.00      -0.03     -33.53      -0.00      -0.00      22.78       0.00

   70   2.1  0.5  0.5       0.00       0.09      32.79      -0.07      -0.00      -0.00      28.31       0.00       0.00       0.00
                           -0.00       0.00       0.03      12.54       0.01      -0.00       0.00       0.00      -0.00       0.00

   71   3.1  0.5  0.5      -0.00       0.00       0.03      11.83       0.01      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.05      21.94      -0.04      -0.00      -0.00     -11.65       0.00       0.03     284.94

   72   4.1  0.5  0.5      -0.00       0.00       0.06      27.04       0.01      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.03     -13.70       0.02       0.00       0.00      37.06       0.00       0.01    -156.75

   73   5.1  0.5  0.5      22.06      -0.02       0.00      -0.01      17.43      -0.01      -0.00       0.00       0.00       0.00
                            0.01      10.87      -0.03       0.00       0.02      28.90      -0.00      -0.00     470.10       0.00

   74   6.1  0.5  0.5       0.00      -0.00      -3.36       0.00       0.00       0.00      17.02       0.00       0.00       0.00
                           -0.00       0.00       0.06      26.72       0.01      -0.00       0.00      -0.02       0.00      -0.00

   75   7.1  0.5  0.5       0.03      23.54      -0.06       0.00      -0.03     -17.80      -0.01       0.00       0.00       0.00
                          -12.95       0.03      -0.00      -0.01      26.52      -0.02       0.00    -465.96      -0.01       0.00

   76   8.1  0.5  0.5       0.00      -0.25    -107.40       0.21       0.00       0.01     107.15       0.00       0.00       0.00
                            0.02      -0.00      -0.25    -119.93      -0.06       0.00      -0.02       0.02      -0.00       0.00

   77   9.1  0.5  0.5       0.02      -0.00      -0.25    -119.93      -0.06       0.00      -0.02       0.00       0.00       0.00
                            0.00       0.36     130.60      -0.29      -0.00      -0.01      77.20      -0.00      -0.01     719.98

   78  10.1  0.5  0.5      -0.17    -129.04       0.32      -0.00      -0.00     -83.99       0.03       0.00       0.00       0.00
                          149.20      -0.20       0.00       0.02      -2.08       0.00      -0.00     588.75       0.01      -0.00

   79  11.1  0.5  0.5      -0.06     -43.80       0.12      -0.00       0.12     121.06       0.01       0.00       0.00       0.00
                           37.63       0.01      -0.00      -0.06     128.82      -0.10      -0.00     157.28      -0.08      -0.00

   80  12.1  0.5  0.5     136.09      -0.22       0.00       0.05     -67.02       0.05      -0.00       0.00       0.00       0.00
                            0.20     151.69      -0.39       0.00      -0.07       1.80      -0.04      -0.00     604.65       0.00

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     277.14
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       0.00      -0.00

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -265.10       0.02       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -100.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -94.36      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -173.39      -0.01       0.00

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -215.58      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     104.44       0.03       0.00

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.01     113.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01      -0.00       0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      24.64       0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -213.03      -0.00

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     223.74

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -266.30      -0.03      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -302.31      -0.00

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -302.31      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     332.28      -0.02      -0.00

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.02      57.32

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.01    -308.42

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     214.87
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       0.00      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.08     530.09      -0.38      -0.00      -0.00       0.00       0.00      -1.46       0.00      -0.00
                           47.93      -0.36    -508.39      -0.02       0.00      -0.00       0.00       0.00       0.79      -0.00

    2   2.1  1.5  1.5     593.31       0.05     -21.09       0.01       0.00      -0.00       0.00      -0.00      -1.48       0.00
                            0.03     183.98      -0.19       0.00       0.00      -0.00      -0.00      -0.81       0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.02    -632.72      -0.00      -0.00       0.00      -0.00      -0.00      -1.25
                           -0.00       0.02      -0.00       0.06      -0.00      -0.00       0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.03       0.00      -0.04       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00     571.10       0.00       0.00      -0.00       0.00       0.00      -0.18

    5   5.1  1.5  1.5       0.03       0.00       0.02    -172.24      -0.00      -0.00      -0.00      -0.00      -0.00      -1.64
                           -0.00       0.00      -0.00      -0.33       0.00       0.00      -0.00       0.00      -0.00      -0.00

    6   6.1  1.5  1.5      -0.00      -0.02       0.00       0.13       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -542.44       0.00      -0.00      -0.00      -0.00       0.00       1.61

    7   7.1  1.5  1.5       0.04     172.24      -0.13       0.00       0.00       0.00      -0.00      -0.26      -0.00       0.00
                         -571.10       0.33     542.44       0.00      -0.00       0.00      -0.00       0.00       0.49      -0.00

    8   8.1  1.5  1.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.27       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.89      -0.00       0.00      -0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00      -0.00     302.89      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.27      -0.00       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.27    -302.89       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     302.89      -0.27       0.00       0.00      -0.00       0.00

   11  11.1  1.5  1.5      -0.00       0.00      -0.00       0.26      -0.00       0.00       0.00       0.00       1.35     491.98
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.23

   12  12.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -1.35       0.00       0.64
                           -0.00       0.00      -0.00      -0.49      -0.00      -0.00       0.00      -0.00      -0.00    -263.87

   13  13.1  1.5  1.5       0.00       1.64      -0.00      -0.00      -0.00       0.00      -0.00    -491.98      -0.64      -0.00
                            0.18       0.00      -1.61       0.00       0.00       0.00      -0.00      -0.23     263.87       0.00

   14  14.1  1.5  1.5       1.85      -0.00      -0.07      -0.00       0.00       0.00      -0.00       0.39    -499.58       1.15
                           -0.00       0.57       0.00      -0.00       0.00      -0.00       0.00    -274.71       0.06       0.00

   15  15.1  1.5  1.5       0.00      -0.00      -0.00       2.03       0.00       0.00      -0.00       0.00       1.23     497.26
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.06      -0.00      -1.44

   16  16.1  1.5  1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.09      -0.00      -1.19
                           -0.00      -0.00       0.00       2.40      -0.00      -0.00      -0.00       0.00      -1.04    -481.15

   17  17.1  1.5  1.5       0.00       0.56      -0.00      -0.00      -0.00       0.00      -0.00     -95.40      -0.30       0.00
                           -1.78       0.00       1.66       0.00      -0.00      -0.00       0.00       0.18     168.89      -0.44

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.03      -0.00      -0.00       0.00      -0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      -0.00      -0.00      48.29      -0.00       0.00       0.00      -0.00      -0.00      -1.06

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           12.98      -0.17    -236.49       0.00      -0.00       0.00       0.00       0.00       0.39      -0.00

   21   4.1  1.5  0.5       0.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -354.22       0.21       0.00      -0.00      -0.00      -0.00       1.09      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          354.22      -0.00     334.89       0.00      -0.00       0.00       0.00      -0.00      -1.50       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21    -334.89       0.00      -0.00       0.00      -0.00       0.00       1.14      -0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.59       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    8891.02       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00    -174.88      -0.00      -0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    8891.08       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     174.88       0.00      -0.00      -0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    8891.31       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.20       0.00       0.00
                           -1.09       0.00      -1.14      -0.00       0.00       0.00      -0.00      -0.00     522.13      -1.29

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.20       0.00
                            0.00       1.50       0.00       0.00       0.00       0.00       0.00    -522.13       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.22
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       1.29       0.00      -0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.15       0.00      -0.00      -0.00      -0.00      -0.82    -358.72

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.19      -0.00       0.58       0.00       0.00      -0.00       0.00       0.10     -60.26      -0.03

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.22      -0.00      -0.00       0.00       0.00       0.00    -103.31       0.28      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.15      -0.00      -0.15

   35   1.1  1.5 -0.5       0.09    -612.10       0.44       0.00       0.00      -0.00      -0.00       1.68      -0.00       0.00
                           55.34      -0.41    -587.04      -0.02       0.00      -0.00       0.00       0.00       0.91      -0.00

   36   2.1  1.5 -0.5    -685.09      -0.06      24.36      -0.01      -0.00       0.00      -0.00       0.00       1.70      -0.00
                            0.04     212.44      -0.21       0.00       0.00      -0.00      -0.00      -0.94       0.00      -0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -0.02     730.60       0.00       0.00      -0.00       0.00       0.00       1.45
                           -0.00       0.03      -0.00       0.06      -0.00      -0.00       0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5      -0.00       0.03      -0.00       0.04      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00     659.45       0.00       0.00      -0.00       0.00       0.00      -0.21

   39   5.1  1.5 -0.5      -0.03       0.00      -0.02     198.89       0.00       0.00       0.00       0.00       0.01       1.90
                           -0.00      -0.00      -0.00      -0.38       0.00       0.00      -0.00       0.00      -0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.02       0.00      -0.15      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00    -626.36       0.00      -0.00      -0.00      -0.00       0.00       1.86

   41   7.1  1.5 -0.5      -0.04    -198.89       0.15       0.00      -0.00      -0.00       0.00       0.30       0.00      -0.00
                         -659.45       0.38     626.36      -0.00      -0.00       0.00      -0.00       0.00       0.56      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.31      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00    -349.75      -0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -349.75       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.31      -0.00       0.00      -0.00

   44  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.31     349.75       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00     349.75      -0.31      -0.00       0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00      -0.00       0.00      -0.30       0.00      -0.00      -0.00       0.00      -1.56    -568.09
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.26

   46  12.1  1.5 -0.5      -0.00      -0.01       0.00      -0.00      -0.00      -0.00       0.00       1.56       0.00      -0.74
                           -0.00       0.00      -0.00      -0.56      -0.00      -0.00       0.00      -0.00       0.00    -304.69

   47  13.1  1.5 -0.5      -0.00      -1.90       0.00       0.00       0.00      -0.00       0.00     568.09       0.74      -0.00
                            0.21       0.00      -1.86       0.00       0.00       0.00      -0.00      -0.26     304.69      -0.00

   48  14.1  1.5 -0.5      -2.14       0.00       0.08       0.00      -0.00      -0.00       0.00      -0.45     576.87      -1.33
                           -0.00       0.66       0.00      -0.00       0.00      -0.00       0.00    -317.21       0.07       0.00

   49  15.1  1.5 -0.5      -0.00       0.00       0.00      -2.34      -0.00      -0.00       0.00      -0.00      -1.42    -574.19
                            0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.07      -0.00      -1.66

   50  16.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.11       0.00       1.37
                           -0.00      -0.00       0.00       2.78      -0.00      -0.00      -0.00       0.00      -1.21    -555.58

   51  17.1  1.5 -0.5      -0.00      -0.65       0.00       0.00       0.00      -0.00       0.00     110.15       0.34      -0.00
                           -2.05       0.00       1.92       0.00      -0.00      -0.00       0.00       0.21     195.02      -0.50

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          366.76       0.13     112.93       0.00      -0.00       0.00      -0.00       0.04      26.44      -0.07

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09    -625.17       0.45       0.00       0.00       0.00       0.00     -47.69       0.07      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -239.12       0.17       0.00       0.00       0.01      -0.00     -15.57       0.01      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.02      -0.00       0.05      -0.00       0.00       0.00       0.00      -0.00      -0.07

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -319.96      -0.44    -551.49      -0.00      -0.01       0.00       0.00      -0.06     -41.90       0.11

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.02      66.31      -0.00       0.00      -0.00       0.00       0.09      33.81

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -587.59       0.27     489.52       0.00    -825.61       0.73       0.00       0.06      45.80      -0.13

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     257.91      -0.19      -0.00       0.73     825.61      -0.00     -35.65      -0.04       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.02    -143.05       0.00      -0.00      68.96       0.00       0.34     135.37

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.01     794.82      -0.00       0.00    -950.84       0.00       0.13      33.08

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.03      -0.00       0.06       0.00       0.00       0.00      -0.02       0.00       0.29

   81   1.1  0.5 -0.5      -0.02     106.68      -0.08      -0.00      -0.00      -0.00      -0.00       4.87       0.00      -0.00
                          218.73      -0.09    -173.14      -0.00      -0.00       0.00      -0.00       0.01       5.77      -0.02

   82   2.1  0.5 -0.5      -0.00       0.00       0.01    -221.45      -0.00      -0.00       0.00       0.00       0.05      18.93
                            0.00      -0.00       0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.02

   83   3.1  0.5 -0.5       0.00      -0.00       0.00      -0.01       0.00       0.00       0.00      -0.00       0.00       0.01
                           -0.00       0.00       0.01      95.70      -0.00       0.00      -0.00       0.00       0.03      12.66

   84   4.1  0.5 -0.5       0.00      -0.01       0.00      -0.02       0.00       0.00      -0.00      -0.00       0.00       0.03
                            0.00      -0.00      -0.00    -297.18       0.00      -0.00       0.00       0.00      -0.01      -7.91

   85   5.1  0.5 -0.5      -0.03     193.47      -0.14      -0.00      -0.00      -0.00      -0.00      12.74      -0.01       0.00
                          -61.36       0.16     238.46       0.00       0.00      -0.00       0.00       0.01       6.28      -0.01

   86   6.1  0.5 -0.5       0.00      -0.00      -0.00    -136.09       0.00      -0.00       0.00       0.00      -0.00      -1.94
                            0.00      -0.01       0.00      -0.02       0.00       0.00      -0.00      -0.00       0.00       0.03

   87   7.1  0.5 -0.5     235.18       0.03      -8.36      -0.00      -0.00       0.00      -0.00       0.02      13.59      -0.04
                            0.01     -72.93       0.05       0.00       0.00       0.00      -0.00      -7.47       0.02      -0.00

   88   8.1  0.5 -0.5      -0.00       0.00       0.01     274.42       0.00       0.00     412.80       0.00      -0.14     -62.00
                            0.00      -0.01       0.00      -0.03      -0.00      -0.00      -0.00       0.01      -0.00      -0.15

   89   9.1  0.5 -0.5       0.00      -0.01       0.00      -0.03      -0.00      -0.00      -0.00       0.01      -0.00      -0.15
                            0.00      -0.00      -0.01     189.24       0.00       0.00     412.80       0.00       0.21      75.40

   90  10.1  0.5 -0.5     144.70       0.28     360.08       0.00     428.96      -0.38      -0.00      -0.10     -74.50       0.19
                            0.05    -371.72       0.27       0.00       0.35     394.48      -0.00      86.14      -0.12       0.00

   91  11.1  0.5 -0.5     265.60      -0.10    -186.41      -0.00    -207.85       0.18       0.00      -0.03     -25.29       0.07
                            0.02    -138.93       0.10       0.00       0.24     267.57       0.00      21.73       0.01      -0.00

   92  12.1  0.5 -0.5       0.05    -316.34       0.23       0.00      -0.36    -412.83       0.00      78.57      -0.12       0.00
                         -310.45      -0.21    -223.29      -0.00     412.83      -0.36      -0.00       0.12      87.58      -0.23


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00      -1.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -0.00       0.00       1.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.66      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00      -1.99       0.00       0.00       0.00       0.00       0.00       0.00
                            1.76       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -1.85      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       1.78       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00      -0.56       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.57      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.07       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -1.66       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -2.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.40      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5      -0.39      -0.00      -0.09      95.40       0.00       0.00       0.00       0.00       0.00       0.00
                          274.71       0.06      -0.00      -0.18       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5     499.58      -1.23       0.00       0.30       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.06       0.00       1.04    -168.89       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -1.15    -497.26       1.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.44     481.15       0.44       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       1.71     377.60      -0.18       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     562.76      -1.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -1.71      -0.00       0.13     694.26       0.00       0.00       0.00       0.00       0.00       0.00
                         -562.76      -0.00      -0.00       0.62       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5    -377.60      -0.13      -0.00      -0.60       0.00       0.00       0.00       0.00       0.00       0.00
                            1.33       0.00      -0.00     806.69       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.18    -694.26       0.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.62    -806.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.03     476.32      -0.09     612.10      -0.44
                            1.06       0.00      -0.00       0.00      -0.00       0.00      -0.00      55.34      -0.41    -587.04

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.03      -0.00      -0.07     685.09       0.06     -24.36
                            0.00       0.00       0.00       0.13      -0.00      -0.00    -651.78       0.04     212.44      -0.21

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00    -476.32       0.07       0.00       0.00       0.00       0.02
                            0.00       0.00       0.63      -0.00       0.00     651.78      -0.00      -0.00       0.03      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.09    -685.09      -0.00      -0.00      -0.03       0.00
                            0.00       0.19      -0.00      -0.00     -55.34      -0.04       0.00      -0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00    -612.10      -0.06      -0.00       0.03       0.00       0.02
                           -0.00       0.00      -0.22       0.00       0.41    -212.44      -0.03      -0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.44      24.36      -0.02      -0.00      -0.02       0.00
                            0.00      -0.58       0.00      -0.00     587.04       0.21       0.00      -0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.01     730.60       0.04     198.89      -0.15
                           -0.15      -0.00       0.00      -0.00       0.02      -0.00      -0.06    -659.45       0.38     626.36

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       1.68       0.00       0.00      -0.00       0.00      -0.00
                            0.00      -0.10     103.31      -0.15      -0.00       0.94       0.00      -0.00      -0.00       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       1.70       0.00       0.00       0.01      -0.00
                            0.82      60.26      -0.28       0.00      -0.91      -0.00      -0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       1.45       0.00       1.90      -0.00
                          358.72       0.03       0.00       0.15       0.00       0.00      -0.00       0.21       0.00      -1.86

   31  14.1  1.5  0.5   12473.16       0.00       0.00       0.00      -0.00       0.00      -0.00       2.14      -0.00      -0.08
                            0.00       0.00       0.14      45.15      -0.00       0.00      -2.03      -0.00       0.66       0.00

   32  15.1  1.5  0.5       0.00   12473.82       0.00       0.00       1.73      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00       0.00    -199.69       0.04      -0.00      -1.92      -0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00   12473.79       0.00      -0.00      -1.29      -0.00      -0.00      -0.00       0.00
                           -0.14     199.69      -0.00      -0.00      -1.60       0.00       0.00      -0.00      -0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   12473.88      -0.00      -0.00       2.30       0.00       0.65      -0.00
                          -45.15      -0.04       0.00       0.00       0.00      -0.00      -0.00      -2.05       0.00       1.92

   35   1.1  1.5 -0.5      -0.00       1.73      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       1.60      -0.00       0.00    -339.34      -0.01       0.00      -0.00       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -1.29      -0.00       0.00       0.02       0.00       0.00       0.00       0.00
                           -0.00       1.92      -0.00       0.00     339.34      -0.00       0.00       0.02       0.00       0.00

   37   3.1  1.5 -0.5      -0.00      -0.00      -0.00       2.30       0.00       0.00       0.17       0.00       0.00       0.00
                            2.03       0.00      -0.00       0.00       0.01      -0.00      -0.00     -12.98       0.17     236.49

   38   4.1  1.5 -0.5       2.14       0.00      -0.00       0.00       0.00       0.00       0.00       0.27       0.00       0.00
                            0.00      -0.00       0.00       2.05      -0.00      -0.02      12.98       0.00     354.22      -0.21

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00       0.65       0.00       0.00       0.00       0.00       0.49       0.00
                           -0.66      -0.00       0.00      -0.00       0.00      -0.00      -0.17    -354.22       0.00    -334.89

   40   6.1  1.5 -0.5      -0.08      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.52
                           -0.00      -0.00      -0.00      -1.92      -0.00      -0.00    -236.49       0.21     334.89      -0.00

   41   7.1  1.5 -0.5      -0.00       2.34      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -2.78      -0.00       0.03      48.29       0.00       0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   44  10.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.45       0.00       0.11    -110.15       0.00       0.00       0.00       0.00       0.00       0.00
                          317.21       0.07      -0.00      -0.21      -0.00      -0.00       0.00       1.09      -0.00       1.14

   46  12.1  1.5 -0.5    -576.87       1.42      -0.00      -0.34       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07       0.00       1.21    -195.02       0.00      -0.00       0.39      -0.00      -1.50      -0.00

   47  13.1  1.5 -0.5       1.33     574.19      -1.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.66     555.58       0.50       0.00      -1.06      -0.00       0.00       0.00       0.00

   48  14.1  1.5 -0.5      -0.00      -1.97    -436.01       0.20       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     649.82      -1.53       0.00       1.06       0.00       0.00       0.00      -0.00       0.00

   49  15.1  1.5 -0.5       1.97      -0.00      -0.15    -801.66       0.00       0.00       0.00       0.00       0.00       0.00
                         -649.82       0.00      -0.00       0.72       0.00       0.00       0.00       0.19       0.00      -0.58

   50  16.1  1.5 -0.5     436.01       0.15      -0.00       0.69       0.00       0.00       0.00       0.00       0.00       0.00
                            1.53       0.00       0.00     931.49      -0.00       0.00       0.63      -0.00      -0.22       0.00

   51  17.1  1.5 -0.5      -0.20     801.66      -0.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.72    -931.49      -0.00       0.00       0.13      -0.00      -0.00       0.00      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.02    -412.50       0.08    -530.09       0.38
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      47.93      -0.36    -508.39

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.02      -0.00       0.06    -593.31      -0.05      21.09
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -564.46       0.03     183.98      -0.19

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00     412.50      -0.06       0.00      -0.00      -0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00       0.00     564.46       0.00      -0.00       0.02      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.08     593.31       0.00      -0.00       0.03      -0.00
                           -0.00      -0.00      -0.00      -0.00     -47.93      -0.03       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00     530.09       0.05       0.00      -0.03       0.00      -0.02
                           -0.00      -0.00      -0.00      -0.00       0.36    -183.98      -0.02      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.38     -21.09       0.02       0.00       0.02       0.00
                           -0.00      -0.00      -0.00      -0.00     508.39       0.19       0.00      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.01    -632.72      -0.04    -172.24       0.13
                           -0.00      -0.00      -0.00      -0.00       0.02      -0.00      -0.06    -571.10       0.33     542.44

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.46      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.81       0.00      -0.00      -0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -1.48      -0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.79      -0.00      -0.00      -0.00       0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -1.25      -0.00      -1.64       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.18       0.00      -1.61

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -1.85       0.00       0.07
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -1.76      -0.00       0.57       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.50       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -1.66      -0.00       0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       1.11       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -1.38       0.00       0.00      -0.00      -0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.99      -0.00      -0.56       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -1.78       0.00       1.66

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     277.14      -0.02     106.68      -0.08
                           -1.65      -0.00       0.00      -0.00       0.01      -0.00       0.00    -218.73       0.09     173.14

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00    -265.10       0.02       0.00      -0.00       0.00       0.01
                            0.00      -0.02      -8.56      -0.01      -0.00     100.00       0.00      -0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     -94.36      -0.00       0.00      -0.00       0.00
                           -0.01      14.16      -0.01       0.00     173.39       0.01      -0.00       0.00      -0.00      -0.01

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -215.58      -0.00       0.00      -0.01       0.00
                            0.00     -13.64       0.01       0.00    -104.44      -0.03      -0.00      -0.00       0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.01     113.27      -0.03     193.47      -0.14
                          -34.04      -0.02       0.00      -0.01      -0.01       0.00      -0.00      61.36      -0.16    -238.46

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00      24.64       0.01       0.00       0.00      -0.00      -0.00
                           -0.00       0.01     -19.39       0.01      -0.00     213.03       0.00      -0.00       0.01      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     235.18       0.03      -8.36
                           -0.07      -0.00      -0.00      -4.26      -0.00      -0.00    -223.74      -0.01      72.93      -0.05

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00    -266.30      -0.03      -0.00      -0.00       0.00       0.01
                            0.00      -0.15    -169.09      -0.01      -0.00     302.31       0.00      -0.00       0.01      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -302.31      -0.00       0.00      -0.01       0.00
                            0.08    -171.51       0.13       0.00    -332.28       0.02       0.00      -0.00       0.00       0.01

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.01      -0.00       0.00     144.70       0.28     360.08
                           -0.28      -0.00      -0.01     -30.58      -0.00      -0.02     -57.32      -0.05     371.72      -0.27

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.01       0.00      -0.00     265.60      -0.10    -186.41
                           -0.10      -0.00      -0.00     182.62      -0.00      -0.01     308.42      -0.02     138.93      -0.10

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.01     214.87       0.05    -316.34       0.23
                          138.48       0.06      -0.00       0.02       0.01      -0.00       0.00     310.45       0.21     223.29

   81   1.1  0.5 -0.5      -0.01      20.94      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.02     -19.36      -0.00      -0.00      22.78       0.00      -0.00       0.00      -0.00

   82   2.1  0.5 -0.5      -0.04      -0.00      -0.00      16.34       0.00       0.00       0.00       0.00       0.00       0.00
                            7.24       0.00      -0.00       0.00       0.00      -0.00       0.00     366.76       0.13     112.93

   83   3.1  0.5 -0.5       6.83       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.00      -0.00      -6.73       0.00       0.03     284.94       0.09    -625.17       0.45

   84   4.1  0.5 -0.5      15.61       0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      21.39       0.00       0.01    -156.75       0.03    -239.12       0.17

   85   5.1  0.5 -0.5      -0.00      10.06      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      16.69      -0.00      -0.00     470.10       0.00      -0.00       0.02      -0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.00       9.82       0.00       0.00       0.00       0.00       0.00       0.00
                           15.42       0.01      -0.00       0.00      -0.02       0.00      -0.00    -319.96      -0.44    -551.49

   87   7.1  0.5 -0.5       0.00      -0.01     -10.27      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      15.31      -0.01       0.00    -465.96      -0.01       0.00      -0.00       0.00       0.02

   88   8.1  0.5 -0.5       0.12       0.00       0.01      61.86       0.00       0.00       0.00       0.00       0.00       0.00
                          -69.24      -0.03       0.00      -0.01       0.02      -0.00       0.00    -587.59       0.27     489.52

   89   9.1  0.5 -0.5     -69.24      -0.03       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.17      -0.00      -0.01      44.57      -0.00      -0.01     719.98      -0.04     257.91      -0.19

   90  10.1  0.5 -0.5      -0.00      -0.00     -48.49       0.02       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -1.20       0.00      -0.00     588.75       0.01      -0.00       0.00      -0.00      -0.02

   91  11.1  0.5 -0.5      -0.00       0.07      69.89       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      74.38      -0.06      -0.00     157.28      -0.08      -0.00       0.00      -0.00      -0.01

   92  12.1  0.5 -0.5       0.03     -38.70       0.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.04       1.04      -0.02      -0.00     604.65       0.00      -0.00       0.03      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -1.68       0.00      -0.00       0.00      -1.73       0.00
                           -0.02       0.00      -0.00       0.00       0.00       0.91      -0.00       0.00       0.00       1.60

   19   2.1  1.5  0.5       0.01       0.00      -0.00       0.00      -0.00      -1.70       0.00      -0.00       0.00       1.29
                            0.00       0.00      -0.00      -0.00      -0.94       0.00      -0.00      -0.00       1.92      -0.00

   20   3.1  1.5  0.5    -730.60      -0.00      -0.00       0.00      -0.00      -0.00      -1.45       0.00       0.00       0.00
                            0.06      -0.00      -0.00       0.00      -0.00       0.00       0.00       2.03       0.00      -0.00

   21   4.1  1.5  0.5      -0.04       0.00       0.00      -0.00       0.00      -0.00      -0.00      -2.14      -0.00       0.00
                          659.45       0.00       0.00      -0.00       0.00       0.00      -0.21       0.00      -0.00       0.00

   22   5.1  1.5  0.5    -198.89      -0.00      -0.00      -0.00      -0.00      -0.01      -1.90       0.00       0.00       0.00
                           -0.38       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.66      -0.00       0.00

   23   6.1  1.5  0.5       0.15       0.00      -0.00       0.00       0.00       0.00       0.00       0.08       0.00      -0.00
                         -626.36       0.00      -0.00      -0.00      -0.00       0.00       1.86      -0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.30      -0.00       0.00       0.00      -2.34       0.00
                            0.00      -0.00       0.00      -0.00       0.00       0.56      -0.00       0.00      -0.00      -2.78

   25   8.1  1.5  0.5      -0.00      -0.00      -0.00       0.31       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -349.75      -0.00       0.00      -0.00      -0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00      -0.00     349.75      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.31      -0.00       0.00      -0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00      -0.31    -349.75       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     349.75      -0.31       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.30      -0.00       0.00       0.00       0.00       1.56     568.09      -0.45      -0.00      -0.11
                           -0.00       0.00       0.00      -0.00      -0.00       0.00       0.26     317.21       0.07      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00      -0.00      -1.56       0.00       0.74     576.87      -1.42       0.00
                           -0.56      -0.00      -0.00       0.00      -0.00      -0.00    -304.69      -0.07       0.00       1.21

   30  13.1  1.5  0.5      -0.00      -0.00       0.00      -0.00    -568.09      -0.74      -0.00      -1.33    -574.19       1.37
                            0.00       0.00       0.00      -0.00      -0.26     304.69       0.00      -0.00       1.66     555.58

   31  14.1  1.5  0.5      -0.00       0.00       0.00      -0.00       0.45    -576.87       1.33      -0.00       1.97     436.01
                           -0.00       0.00      -0.00       0.00    -317.21       0.07       0.00       0.00     649.82      -1.53

   32  15.1  1.5  0.5       2.34       0.00       0.00      -0.00       0.00       1.42     574.19      -1.97      -0.00       0.15
                            0.00      -0.00      -0.00       0.00      -0.07      -0.00      -1.66    -649.82      -0.00      -0.00

   33  16.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.11      -0.00      -1.37    -436.01      -0.15      -0.00
                            2.78      -0.00      -0.00      -0.00       0.00      -1.21    -555.58       1.53       0.00      -0.00

   34  17.1  1.5  0.5      -0.00      -0.00       0.00      -0.00    -110.15      -0.34       0.00       0.20    -801.66       0.69
                            0.00      -0.00      -0.00       0.00       0.21     195.02      -0.50      -0.00      -0.72    -931.49

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03       0.00       0.00      -0.00       0.00      -0.00      -0.00      -1.06      -0.00       0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -48.29       0.00      -0.00      -0.00       0.00       0.00       1.06      -0.00      -0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.39       0.00      -0.00      -0.00      -0.63

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -1.09       0.00      -0.00      -0.00      -0.19       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       1.50      -0.00       0.00      -0.00       0.22

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -1.14       0.00      -0.00      -0.00       0.58      -0.00

   41   7.1  1.5 -0.5       0.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.15       0.00      -0.00

   42   8.1  1.5 -0.5       0.00    8891.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     174.88       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00    8891.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -174.88      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    8891.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00   12473.20       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00    -522.13       1.29      -0.00       0.10    -103.31

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   12473.20       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     522.13      -0.00       0.00      -0.82     -60.26       0.28

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12473.22       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -1.29      -0.00       0.00    -358.72      -0.03      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.16       0.00       0.00
                           -0.15      -0.00       0.00       0.00       0.00       0.82     358.72      -0.00      -0.00      -0.14

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.82       0.00
                           -0.00      -0.00       0.00      -0.00      -0.10      60.26       0.03       0.00      -0.00     199.69

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.79
                            0.00      -0.00      -0.00      -0.00     103.31      -0.28       0.00       0.14    -199.69       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.15       0.00       0.15      45.15       0.04      -0.00

   52   1.1  1.5 -1.5       0.00       0.00      -0.00      -0.00       1.46      -0.00       0.00      -0.00       1.50      -0.00
                           -0.02       0.00      -0.00       0.00       0.00       0.79      -0.00       0.00       0.00       1.38

   53   2.1  1.5 -1.5      -0.01      -0.00       0.00      -0.00       0.00       1.48      -0.00       0.00      -0.00      -1.11
                            0.00       0.00      -0.00      -0.00      -0.81       0.00      -0.00      -0.00       1.66      -0.00

   54   3.1  1.5 -1.5     632.72       0.00       0.00      -0.00       0.00       0.00       1.25      -0.00      -0.00      -0.00
                            0.06      -0.00      -0.00       0.00      -0.00       0.00       0.00       1.76       0.00      -0.00

   55   4.1  1.5 -1.5       0.04      -0.00      -0.00       0.00      -0.00       0.00       0.00       1.85       0.00      -0.00
                          571.10       0.00       0.00      -0.00       0.00       0.00      -0.18       0.00      -0.00       0.00

   56   5.1  1.5 -1.5     172.24       0.00       0.00       0.00       0.00       0.00       1.64      -0.00      -0.00      -0.00
                           -0.33       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.57      -0.00       0.00

   57   6.1  1.5 -1.5      -0.13      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.07      -0.00       0.00
                         -542.44       0.00      -0.00      -0.00      -0.00       0.00       1.61      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.26       0.00      -0.00      -0.00       2.03      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.49      -0.00       0.00      -0.00      -2.40

   59   8.1  1.5 -1.5       0.00      -0.00       0.00      -0.27      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00       0.00      -0.00    -302.89      -0.00       0.00      -0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00      -0.00      -0.00    -302.89       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.27      -0.00       0.00      -0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5      -0.00       0.27     302.89       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00     302.89      -0.27      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   62  11.1  1.5 -1.5      -0.26       0.00      -0.00      -0.00       0.00      -1.35    -491.98       0.39       0.00       0.09
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.23     274.71       0.06      -0.00

   63  12.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00       1.35       0.00      -0.64    -499.58       1.23      -0.00
                           -0.49      -0.00      -0.00       0.00      -0.00       0.00    -263.87      -0.06       0.00       1.04

   64  13.1  1.5 -1.5       0.00       0.00      -0.00       0.00     491.98       0.64      -0.00       1.15     497.26      -1.19
                            0.00       0.00       0.00      -0.00      -0.23     263.87      -0.00      -0.00       1.44     481.15

   65  14.1  1.5 -1.5       0.00      -0.00      -0.00       0.00      -0.39     499.58      -1.15      -0.00      -1.71    -377.60
                           -0.00       0.00      -0.00       0.00    -274.71       0.06       0.00      -0.00     562.76      -1.33

   66  15.1  1.5 -1.5      -2.03      -0.00      -0.00       0.00      -0.00      -1.23    -497.26       1.71      -0.00      -0.13
                            0.00      -0.00      -0.00       0.00      -0.06      -0.00      -1.44    -562.76       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.09       0.00       1.19     377.60       0.13      -0.00
                            2.40      -0.00      -0.00      -0.00       0.00      -1.04    -481.15       1.33       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00      -0.00       0.00      95.40       0.30      -0.00      -0.18     694.26      -0.60
                            0.00      -0.00      -0.00       0.00       0.18     168.89      -0.44      -0.00      -0.62    -806.69

   69   1.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00       4.87       0.00      -0.00      -0.01      20.94      -0.02
                            0.00       0.00      -0.00       0.00      -0.01      -5.77       0.02      -0.00       0.02      19.36

   70   2.1  0.5  0.5    -221.45      -0.00      -0.00       0.00       0.00       0.05      18.93      -0.04      -0.00      -0.00
                            0.01      -0.00      -0.00      -0.00       0.00      -0.00      -0.02      -7.24      -0.00       0.00

   71   3.1  0.5  0.5      -0.01       0.00       0.00       0.00      -0.00       0.00       0.01       6.83       0.00      -0.00
                          -95.70       0.00      -0.00       0.00      -0.00      -0.03     -12.66       0.03       0.00       0.00

   72   4.1  0.5  0.5      -0.02       0.00       0.00      -0.00      -0.00       0.00       0.03      15.61       0.01      -0.00
                          297.18      -0.00       0.00      -0.00      -0.00       0.01       7.91      -0.01      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00      12.74      -0.01       0.00      -0.00      10.06      -0.01
                           -0.00      -0.00       0.00      -0.00      -0.01      -6.28       0.01      -0.00      -0.01     -16.69

   74   6.1  0.5  0.5    -136.09       0.00      -0.00       0.00       0.00      -0.00      -1.94       0.00       0.00       0.00
                            0.02      -0.00      -0.00       0.00       0.00      -0.00      -0.03     -15.42      -0.01       0.00

   75   7.1  0.5  0.5      -0.00      -0.00       0.00      -0.00       0.02      13.59      -0.04       0.00      -0.01     -10.27
                           -0.00      -0.00      -0.00       0.00       7.47      -0.02       0.00       0.01     -15.31       0.01

   76   8.1  0.5  0.5     274.42       0.00       0.00     412.80       0.00      -0.14     -62.00       0.12       0.00       0.01
                            0.03       0.00       0.00       0.00      -0.01       0.00       0.15      69.24       0.03      -0.00

   77   9.1  0.5  0.5      -0.03      -0.00      -0.00      -0.00       0.01      -0.00      -0.15     -69.24      -0.03       0.00
                         -189.24      -0.00      -0.00    -412.80      -0.00      -0.21     -75.40       0.17       0.00       0.01

   78  10.1  0.5  0.5       0.00     428.96      -0.38      -0.00      -0.10     -74.50       0.19      -0.00      -0.00     -48.49
                           -0.00      -0.35    -394.48       0.00     -86.14       0.12      -0.00      -0.01       1.20      -0.00

   79  11.1  0.5  0.5      -0.00    -207.85       0.18       0.00      -0.03     -25.29       0.07      -0.00       0.07      69.89
                           -0.00      -0.24    -267.57      -0.00     -21.73      -0.01       0.00       0.03     -74.38       0.06

   80  12.1  0.5  0.5       0.00      -0.36    -412.83       0.00      78.57      -0.12       0.00       0.03     -38.70       0.03
                            0.00    -412.83       0.36       0.00      -0.12     -87.58       0.23      -0.00       0.04      -1.04

   81   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.65      -0.00       0.00

   82   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.04      26.44      -0.07       0.00      -0.02      -8.56

   83   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00     -47.69       0.07      -0.00      -0.01      14.16      -0.01

   84   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.01      -0.00     -15.57       0.01      -0.00       0.00     -13.64       0.01

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05      -0.00       0.00       0.00       0.00      -0.00      -0.07     -34.04      -0.02       0.00

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01       0.00       0.00      -0.06     -41.90       0.11      -0.00       0.01     -19.39

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           66.31      -0.00       0.00      -0.00       0.00       0.09      33.81      -0.07      -0.00      -0.00

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -825.61       0.73       0.00       0.06      45.80      -0.13       0.00      -0.15    -169.09

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.73     825.61      -0.00     -35.65      -0.04       0.00       0.08    -171.51       0.13

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -143.05       0.00      -0.00      68.96       0.00       0.34     135.37      -0.28      -0.00      -0.01

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          794.82      -0.00       0.00    -950.84       0.00       0.13      33.08      -0.10      -0.00      -0.00

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06       0.00       0.00       0.00      -0.02       0.00       0.29     138.48       0.06      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -2.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            2.05       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5     110.15       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5       0.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5     801.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5      -0.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          931.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00      -0.02     412.50      -0.08     530.09      -0.38      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      47.93      -0.36    -508.39      -0.02       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.02      -0.00      -0.06     593.31       0.05     -21.09       0.01       0.00      -0.00
                           -0.13      -0.00      -0.00    -564.46       0.03     183.98      -0.19       0.00       0.00      -0.00

   37   3.1  1.5 -0.5       0.00    -412.50       0.06       0.00       0.00       0.00       0.02    -632.72      -0.00      -0.00
                            0.00       0.00     564.46      -0.00      -0.00       0.02      -0.00       0.06      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.08    -593.31      -0.00      -0.00      -0.03       0.00      -0.04       0.00       0.00
                            0.00     -47.93      -0.03       0.00      -0.00       0.00       0.00     571.10       0.00       0.00

   39   5.1  1.5 -0.5       0.00    -530.09      -0.05      -0.00       0.03       0.00       0.02    -172.24      -0.00      -0.00
                           -0.00       0.36    -183.98      -0.02      -0.00       0.00      -0.00      -0.33       0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.38      21.09      -0.02      -0.00      -0.02       0.00       0.13       0.00      -0.00
                            0.00     508.39       0.19       0.00      -0.00       0.00       0.00    -542.44       0.00      -0.00

   41   7.1  1.5 -0.5       0.00       0.00      -0.01     632.72       0.04     172.24      -0.13       0.00       0.00       0.00
                            0.00       0.02      -0.00      -0.06    -571.10       0.33     542.44       0.00      -0.00       0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.27    -302.89
                            0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00     302.89      -0.27

   45  11.1  1.5 -0.5       0.00       1.46       0.00       0.00      -0.00       0.00      -0.00       0.26      -0.00       0.00
                            0.15      -0.00       0.81       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   46  12.1  1.5 -0.5       0.00      -0.00       1.48       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.79      -0.00      -0.00      -0.00       0.00      -0.00      -0.49      -0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00      -0.00       1.25       0.00       1.64      -0.00      -0.00      -0.00       0.00
                           -0.15       0.00       0.00      -0.00       0.18       0.00      -1.61       0.00       0.00       0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       1.85      -0.00      -0.07      -0.00       0.00       0.00
                          -45.15      -0.00       0.00      -1.76      -0.00       0.57       0.00      -0.00       0.00      -0.00

   49  15.1  1.5 -0.5       0.00       1.50      -0.00      -0.00       0.00      -0.00      -0.00       2.03       0.00       0.00
                           -0.04      -0.00      -1.66      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -1.11      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -1.38       0.00       0.00      -0.00      -0.00       0.00       2.40      -0.00      -0.00

   51  17.1  1.5 -0.5   12473.88      -0.00      -0.00       1.99       0.00       0.56      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -1.78       0.00       1.66       0.00      -0.00      -0.00

   52   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1018.03      -0.03       0.00      -0.00       0.00      -0.10       0.00       0.00

   53   2.1  1.5 -1.5      -0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1018.03      -0.00       0.00       0.05       0.00       0.00    -144.86       0.00      -0.00

   54   3.1  1.5 -1.5       1.99       0.00       0.00       0.17       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.03      -0.00      -0.00     -38.94       0.51     709.46      -0.00       0.00      -0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.27       0.00       0.00       0.00       0.00       0.00
                            1.78      -0.00      -0.05      38.94       0.00    1062.66      -0.62      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.56       0.00       0.00       0.00       0.00       0.49       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.51   -1062.66       0.00   -1004.68      -0.01       0.00      -0.00

   57   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00
                           -1.66      -0.00      -0.00    -709.46       0.62    1004.68      -0.00       0.00      -0.00       0.00

   58   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.59       0.00       0.00
                           -0.00       0.10     144.86       0.00       0.00       0.01      -0.00       0.00       0.00      -0.00

   59   8.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.02       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     524.63

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.08
                            0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00    -524.63      -0.00

   61  10.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   62  11.1  1.5 -1.5     -95.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18      -0.00      -0.00       0.00       3.26      -0.00       3.41       0.00      -0.00      -0.00

   63  12.1  1.5 -1.5      -0.30       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -168.89       0.00      -0.01       1.17      -0.00      -4.51      -0.00      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.44       0.01      -3.18      -0.00       0.00       0.01       0.00      -0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.18       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       3.17       0.01       0.00       0.00      -0.00       0.00      -0.45      -0.00       0.00

   66  15.1  1.5 -1.5    -694.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.62       0.00       0.00       0.00       0.58       0.00      -1.75      -0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          806.69      -0.00       0.00       1.88      -0.00      -0.66       0.00       0.00      -0.00      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.40      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   69   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5      16.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            6.73      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -21.39      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       9.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      61.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -44.57      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81   1.1  0.5 -0.5       0.00      -0.00      -0.01     480.02      -0.03     184.78      -0.13      -0.00      -0.00      -0.00
                           -0.00       0.01      -0.00       0.00    -378.84       0.16     299.89       0.00       0.00      -0.00

   82   2.1  0.5 -0.5       0.00    -459.17       0.04       0.00      -0.00       0.00       0.02    -383.56      -0.00      -0.00
                           -0.01      -0.00     173.20       0.00      -0.00       0.01      -0.00       0.02      -0.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00    -163.43      -0.00       0.00      -0.01       0.00      -0.02       0.00       0.00
                            0.00     300.32       0.02      -0.00       0.00      -0.00      -0.01    -165.76       0.00      -0.00

   84   4.1  0.5 -0.5       0.00       0.00    -373.40      -0.00       0.00      -0.02       0.00      -0.04       0.00       0.00
                            0.00    -180.89      -0.05      -0.00      -0.00       0.00       0.01     514.73      -0.00       0.00

   85   5.1  0.5 -0.5       0.00      -0.00      -0.01     196.19      -0.05     335.10      -0.24      -0.00      -0.00      -0.00
                           -0.01      -0.02       0.00      -0.00     106.27      -0.28    -413.02      -0.00      -0.00       0.00

   86   6.1  0.5 -0.5       0.00      42.67       0.02       0.00       0.00      -0.00      -0.00    -235.71       0.00      -0.00
                            0.01      -0.00     368.97       0.00      -0.00       0.02      -0.00       0.04      -0.00      -0.00

   87   7.1  0.5 -0.5       0.00      -0.00      -0.00       0.00     407.34       0.05     -14.48      -0.00      -0.00       0.00
                           -4.26      -0.00      -0.01    -387.53      -0.02     126.31      -0.09      -0.00      -0.00      -0.00

   88   8.1  0.5 -0.5       0.00    -461.25      -0.05      -0.00      -0.00       0.00       0.02     475.31       0.00       0.00
                           -0.01      -0.00     523.61       0.00      -0.00       0.02      -0.00       0.05       0.00       0.00

   89   9.1  0.5 -0.5       0.00       0.00    -523.61      -0.00       0.00      -0.02       0.00      -0.05      -0.00      -0.00
                            0.00    -575.53       0.03       0.00      -0.00       0.00       0.02    -327.78      -0.00      -0.00

   90  10.1  0.5 -0.5       0.00       0.02      -0.00       0.00     250.64       0.49     623.69       0.00     742.99      -0.65
                          -30.58      -0.00      -0.03     -99.28      -0.09     643.84      -0.46      -0.00      -0.60    -683.27

   91  11.1  0.5 -0.5       0.00      -0.01       0.00      -0.00     460.03      -0.17    -322.87      -0.00    -360.00       0.32
                          182.62      -0.00      -0.01     534.21      -0.03     240.63      -0.18      -0.00      -0.41    -463.44

   92  12.1  0.5 -0.5       0.00       0.00       0.02     372.17       0.08    -547.91       0.39       0.00      -0.63    -715.04
                            0.02       0.02      -0.00       0.00     537.72       0.36     386.75       0.00    -715.04       0.63


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -459.17
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.04
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     173.20

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     480.02       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -378.84      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     184.78       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.16       0.01

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.13       0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     299.89      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -383.56
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       8.43       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.09
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -9.99      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      32.79
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.03

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02      -0.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -12.54

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      36.28      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03      -0.01

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      33.53       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      28.31
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -22.78       0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -366.76

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.13

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -112.93

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.04

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -26.44

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.07

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       1.65      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       8.56

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01

   35   1.1  1.5 -0.5       0.00      -1.46       0.00      -0.00       0.00      -1.50       0.00       0.00      -0.00    -265.10
                            0.00       0.00       0.79      -0.00       0.00       0.00       1.38      -0.00      -0.01       0.00

   36   2.1  1.5 -0.5       0.00      -0.00      -1.48       0.00      -0.00       0.00       1.11       0.00      -0.00       0.02
                           -0.00      -0.81       0.00      -0.00      -0.00       1.66      -0.00       0.00       0.00    -100.00

   37   3.1  1.5 -0.5       0.00      -0.00      -0.00      -1.25       0.00       0.00       0.00      -1.99     277.14       0.00
                            0.00      -0.00       0.00       0.00       1.76       0.00      -0.00       0.00      -0.00      -0.00

   38   4.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00      -1.85      -0.00       0.00      -0.00      -0.02      -0.00
                           -0.00       0.00       0.00      -0.18       0.00      -0.00       0.00       1.78     218.73       0.00

   39   5.1  1.5 -0.5      -0.00      -0.00      -0.00      -1.64       0.00       0.00       0.00      -0.56     106.68       0.00
                           -0.00       0.00      -0.00      -0.00      -0.57      -0.00       0.00      -0.00      -0.09      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.07       0.00      -0.00       0.00      -0.08       0.01
                           -0.00      -0.00       0.00       1.61      -0.00      -0.00      -0.00      -1.66    -173.14       0.00

   41   7.1  1.5 -0.5      -0.00      -0.26      -0.00       0.00       0.00      -2.03       0.00       0.00      -0.00    -221.45
                           -0.00       0.00       0.49      -0.00       0.00      -0.00      -2.40      -0.00      -0.00      -0.01

   42   8.1  1.5 -0.5       0.27       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                         -302.89      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   43   9.1  1.5 -0.5     302.89      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.27      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       1.35     491.98      -0.39      -0.00      -0.09      95.40       4.87       0.00
                           -0.00      -0.00       0.00       0.23     274.71       0.06      -0.00      -0.18       0.01      -0.00

   46  12.1  1.5 -0.5      -0.00      -1.35       0.00       0.64     499.58      -1.23       0.00       0.30       0.00       0.05
                            0.00      -0.00      -0.00    -263.87      -0.06       0.00       1.04    -168.89       5.77       0.00

   47  13.1  1.5 -0.5      -0.00    -491.98      -0.64      -0.00      -1.15    -497.26       1.19      -0.00      -0.00      18.93
                           -0.00      -0.23     263.87       0.00      -0.00       1.44     481.15       0.44      -0.02       0.02

   48  14.1  1.5 -0.5      -0.00       0.39    -499.58       1.15      -0.00       1.71     377.60      -0.18      -0.01      -0.04
                            0.00    -274.71       0.06       0.00       0.00     562.76      -1.33       0.00       0.00       7.24

   49  15.1  1.5 -0.5      -0.00       0.00       1.23     497.26      -1.71      -0.00       0.13     694.26      20.94      -0.00
                            0.00      -0.06      -0.00      -1.44    -562.76      -0.00      -0.00       0.62      -0.02       0.00

   50  16.1  1.5 -0.5      -0.00       0.09      -0.00      -1.19    -377.60      -0.13      -0.00      -0.60      -0.02      -0.00
                           -0.00       0.00      -1.04    -481.15       1.33       0.00      -0.00     806.69     -19.36      -0.00

   51  17.1  1.5 -0.5      -0.00     -95.40      -0.30       0.00       0.18    -694.26       0.60       0.00      -0.00      16.34
                            0.00       0.18     168.89      -0.44      -0.00      -0.62    -806.69       0.00      -0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.01      -3.17      -0.00       0.00      -0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.01       3.18      -0.01      -0.00      -0.00      -0.40       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.17       0.00      -0.00      -0.00      -1.88       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -3.26       0.00      -0.00      -0.00      -0.58       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       4.51      -0.01       0.00      -0.00       0.66      -0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.41       0.00      -0.00      -0.00       1.75      -0.00       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.45       0.00      -0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5    8891.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00   12473.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00   -1566.40       3.87      -0.00       0.29    -309.94       0.44       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00   12473.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    1566.40      -0.00       0.00      -2.45    -180.77       0.85      -0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00   12473.22       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -3.87      -0.00       0.00   -1076.17      -0.09      -0.00      -0.46       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00   12473.16       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       2.45    1076.17      -0.00      -0.00      -0.42    -135.45       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   12473.82       0.00       0.00       0.00       0.00
                           -0.00      -0.29     180.77       0.09       0.00      -0.00     599.08      -0.11       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   12473.79       0.00       0.00       0.00
                           -0.00     309.94      -0.85       0.00       0.42    -599.08       0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.88       0.00       0.00
                           -0.00      -0.44       0.00       0.46     135.45       0.11      -0.00      -0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5380.40       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5380.49
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -371.01

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -400.82

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -32.42       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -478.39

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      20.67       0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -569.27      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   81   1.1  0.5 -0.5      -0.00       8.43       0.01      -0.00      -0.02      36.28      -0.03      -0.00      -0.00    -761.37
                            0.00      -0.01      -9.99       0.03      -0.00       0.03      33.53       0.00       0.00      -0.00

   82   2.1  0.5 -0.5       0.00       0.00       0.09      32.79      -0.07      -0.00      -0.00      28.31     761.37      -0.00
                           -0.00       0.00      -0.00      -0.03     -12.54      -0.01       0.00      -0.00       0.00       0.00

   83   3.1  0.5 -0.5       0.00      -0.00       0.00       0.03      11.83       0.01      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.05     -21.94       0.04       0.00       0.00      11.65    -174.43       0.00

   84   4.1  0.5 -0.5      -0.00      -0.00       0.00       0.06      27.04       0.01      -0.00       0.00       0.00       0.00
                           -0.01      -0.00       0.03      13.70      -0.02      -0.00      -0.00     -37.06     774.65      -0.00

   85   5.1  0.5 -0.5      -0.00      22.06      -0.02       0.00      -0.01      17.43      -0.01      -0.00       0.00    -622.15
                           -0.00      -0.01     -10.87       0.03      -0.00      -0.02     -28.90       0.00       0.00      -0.00

   86   6.1  0.5 -0.5       0.01       0.00      -0.00      -3.36       0.00       0.00       0.00      17.02     367.19       0.00
                            0.00       0.00      -0.00      -0.06     -26.72      -0.01       0.00      -0.00      -0.00      -0.00

   87   7.1  0.5 -0.5      -0.00       0.03      23.54      -0.06       0.00      -0.03     -17.80      -0.01       0.00       0.00
                            0.00      12.95      -0.03       0.00       0.01     -26.52       0.02      -0.00      -0.00    -284.64

   88   8.1  0.5 -0.5     714.99       0.00      -0.25    -107.40       0.21       0.00       0.01     107.15     308.12       0.00
                            0.00      -0.02       0.00       0.25     119.93       0.06      -0.00       0.02       0.00      -0.00

   89   9.1  0.5 -0.5      -0.00       0.02      -0.00      -0.25    -119.93      -0.06       0.00      -0.02      -0.00      -0.00
                         -715.00      -0.00      -0.36    -130.60       0.29       0.00       0.01     -77.20     349.23      -0.00

   90  10.1  0.5 -0.5      -0.00      -0.17    -129.04       0.32      -0.00      -0.00     -83.99       0.03      -0.00       0.00
                            0.00    -149.20       0.20      -0.00      -0.02       2.08      -0.00       0.00      -0.00    -325.64

   91  11.1  0.5 -0.5       0.00      -0.06     -43.80       0.12      -0.00       0.12     121.06       0.01       0.00       0.00
                           -0.00     -37.63      -0.01       0.00       0.06    -128.82       0.10       0.00       0.00    -439.00

   92  12.1  0.5 -0.5       0.00     136.09      -0.22       0.00       0.05     -67.02       0.05      -0.00      -0.00    -117.36
                            0.00      -0.20    -151.69       0.39      -0.00       0.07      -1.80       0.04       0.00       0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5       0.00       0.00      -0.00      42.67      -0.00    -461.25       0.00       0.02      -0.01       0.00
                          300.32    -180.89      -0.02      -0.00      -0.00      -0.00    -575.53      -0.00      -0.00       0.02

    2   2.1  1.5  1.5    -163.43    -373.40      -0.01       0.02      -0.00      -0.05    -523.61      -0.00       0.00       0.02
                            0.02      -0.05       0.00     368.97      -0.01     523.61       0.03      -0.03      -0.01      -0.00

    3   3.1  1.5  1.5      -0.00      -0.00     196.19       0.00       0.00      -0.00      -0.00       0.00      -0.00     372.17
                           -0.00      -0.00      -0.00       0.00    -387.53       0.00       0.00     -99.28     534.21       0.00

    4   4.1  1.5  1.5       0.00       0.00      -0.05       0.00     407.34      -0.00       0.00     250.64     460.03       0.08
                            0.00      -0.00     106.27      -0.00      -0.02      -0.00      -0.00      -0.09      -0.03     537.72

    5   5.1  1.5  1.5      -0.01      -0.02     335.10      -0.00       0.05       0.00      -0.02       0.49      -0.17    -547.91
                           -0.00       0.00      -0.28       0.02     126.31       0.02       0.00     643.84     240.63       0.36

    6   6.1  1.5  1.5       0.00       0.00      -0.24      -0.00     -14.48       0.02       0.00     623.69    -322.87       0.39
                           -0.01       0.01    -413.02      -0.00      -0.09      -0.00       0.02      -0.46      -0.18     386.75

    7   7.1  1.5  1.5      -0.02      -0.04      -0.00    -235.71      -0.00     475.31      -0.05       0.00      -0.00       0.00
                         -165.76     514.73      -0.00       0.04      -0.00       0.05    -327.78      -0.00      -0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     742.99    -360.00      -0.63
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.60      -0.41    -715.04

    9   9.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.65       0.32    -715.04
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -683.27    -463.44       0.63

   10  10.1  1.5  1.5       0.00      -0.00      -0.00       0.01      -0.00     714.99      -0.00      -0.00       0.00       0.00
                            0.00      -0.01      -0.00       0.00       0.00       0.00    -715.00       0.00      -0.00       0.00

   11  11.1  1.5  1.5      -0.00      -0.00      22.06       0.00       0.03       0.00       0.02      -0.17      -0.06     136.09
                           -0.00      -0.00      -0.01       0.00      12.95      -0.02      -0.00    -149.20     -37.63      -0.20

   12  12.1  1.5  1.5       0.00       0.00      -0.02      -0.00      23.54      -0.25      -0.00    -129.04     -43.80      -0.22
                           -0.05       0.03     -10.87      -0.00      -0.03       0.00      -0.36       0.20      -0.01    -151.69

   13  13.1  1.5  1.5       0.03       0.06       0.00      -3.36      -0.06    -107.40      -0.25       0.32       0.12       0.00
                          -21.94      13.70       0.03      -0.06       0.00       0.25    -130.60      -0.00       0.00       0.39

   14  14.1  1.5  1.5      11.83      27.04      -0.01       0.00       0.00       0.21    -119.93      -0.00      -0.00       0.05
                            0.04      -0.02      -0.00     -26.72       0.01     119.93       0.29      -0.02       0.06      -0.00

   15  15.1  1.5  1.5       0.01       0.01      17.43       0.00      -0.03       0.00      -0.06      -0.00       0.12     -67.02
                            0.00      -0.00      -0.02      -0.01     -26.52       0.06       0.00       2.08    -128.82       0.07

   16  16.1  1.5  1.5      -0.00      -0.00      -0.01       0.00     -17.80       0.01       0.00     -83.99     121.06       0.05
                            0.00      -0.00     -28.90       0.00       0.02      -0.00       0.01      -0.00       0.10      -1.80

   17  17.1  1.5  1.5       0.00       0.00      -0.00      17.02      -0.01     107.15      -0.02       0.03       0.01      -0.00
                           11.65     -37.06       0.00      -0.00      -0.00       0.02     -77.20       0.00       0.00       0.04

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.02     465.96      -0.02       0.00    -588.75    -157.28       0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.03      -0.01    -470.10      -0.00       0.01       0.00       0.01      -0.01       0.08    -604.65

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -284.94     156.75      -0.00       0.00      -0.00      -0.00    -719.98       0.00       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09      -0.03       0.00     319.96       0.00     587.59       0.04      -0.00      -0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          625.17     239.12      -0.02       0.44      -0.00      -0.27    -257.91       0.00       0.00      -0.03

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.45      -0.17       0.00     551.49      -0.02    -489.52       0.19       0.02       0.01       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.05       0.00     -66.31      -0.00       0.00     143.05    -794.82      -0.06

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.01       0.00     825.61      -0.73      -0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00      -0.00      -0.00      -0.73    -825.61       0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     -68.96     950.84      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           47.69      15.57      -0.00       0.06      -0.00      -0.06      35.65      -0.00      -0.00       0.02

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.07      -0.01       0.00      41.90      -0.09     -45.80       0.04      -0.34      -0.13      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.07      -0.11     -33.81       0.13      -0.00    -135.37     -33.08      -0.29

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00      34.04       0.00       0.07      -0.00      -0.08       0.28       0.10    -138.48

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -14.16      13.64       0.02      -0.01       0.00       0.15     171.51       0.00       0.00      -0.06

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.01      -0.00      19.39       0.00     169.09      -0.13       0.01       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01      -0.01       4.26       0.01      -0.00      30.58    -182.62      -0.02

   35   1.1  1.5 -0.5       0.00       0.00      -0.00      24.64      -0.00    -266.30       0.00       0.01      -0.01       0.00
                         -173.39     104.44       0.01       0.00       0.00       0.00     332.28       0.00       0.00      -0.01

   36   2.1  1.5 -0.5     -94.36    -215.58      -0.01       0.01      -0.00      -0.03    -302.31      -0.00       0.00       0.01
                           -0.01       0.03      -0.00    -213.03       0.00    -302.31      -0.02       0.02       0.01       0.00

   37   3.1  1.5 -0.5      -0.00      -0.00     113.27       0.00       0.00      -0.00      -0.00       0.00      -0.00     214.87
                            0.00       0.00       0.00      -0.00     223.74      -0.00      -0.00      57.32    -308.42      -0.00

   38   4.1  1.5 -0.5       0.00       0.00      -0.03       0.00     235.18      -0.00       0.00     144.70     265.60       0.05
                           -0.00       0.00     -61.36       0.00       0.01       0.00       0.00       0.05       0.02    -310.45

   39   5.1  1.5 -0.5      -0.00      -0.01     193.47      -0.00       0.03       0.00      -0.01       0.28      -0.10    -316.34
                            0.00      -0.00       0.16      -0.01     -72.93      -0.01      -0.00    -371.72    -138.93      -0.21

   40   6.1  1.5 -0.5       0.00       0.00      -0.14      -0.00      -8.36       0.01       0.00     360.08    -186.41       0.23
                            0.01      -0.00     238.46       0.00       0.05       0.00      -0.01       0.27       0.10    -223.29

   41   7.1  1.5 -0.5      -0.01      -0.02      -0.00    -136.09      -0.00     274.42      -0.03       0.00      -0.00       0.00
                           95.70    -297.18       0.00      -0.02       0.00      -0.03     189.24       0.00       0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     428.96    -207.85      -0.36
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.35       0.24     412.83

   43   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.38       0.18    -412.83
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     394.48     267.57      -0.36

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00     412.80      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00     412.80      -0.00       0.00      -0.00

   45  11.1  1.5 -0.5      -0.00      -0.00      12.74       0.00       0.02       0.00       0.01      -0.10      -0.03      78.57
                            0.00       0.00       0.01      -0.00      -7.47       0.01       0.00      86.14      21.73       0.12

   46  12.1  1.5 -0.5       0.00       0.00      -0.01      -0.00      13.59      -0.14      -0.00     -74.50     -25.29      -0.12
                            0.03      -0.01       6.28       0.00       0.02      -0.00       0.21      -0.12       0.01      87.58

   47  13.1  1.5 -0.5       0.01       0.03       0.00      -1.94      -0.04     -62.00      -0.15       0.19       0.07       0.00
                           12.66      -7.91      -0.01       0.03      -0.00      -0.15      75.40       0.00      -0.00      -0.23

   48  14.1  1.5 -0.5       6.83      15.61      -0.00       0.00       0.00       0.12     -69.24      -0.00      -0.00       0.03
                           -0.03       0.01       0.00      15.42      -0.01     -69.24      -0.17       0.01      -0.03       0.00

   49  15.1  1.5 -0.5       0.00       0.01      10.06       0.00      -0.01       0.00      -0.03      -0.00       0.07     -38.70
                           -0.00       0.00       0.01       0.01      15.31      -0.03      -0.00      -1.20      74.38      -0.04

   50  16.1  1.5 -0.5      -0.00      -0.00      -0.01       0.00     -10.27       0.01       0.00     -48.49      69.89       0.03
                           -0.00       0.00      16.69      -0.00      -0.01       0.00      -0.01       0.00      -0.06       1.04

   51  17.1  1.5 -0.5       0.00       0.00      -0.00       9.82      -0.00      61.86      -0.01       0.02       0.01      -0.00
                           -6.73      21.39      -0.00       0.00       0.00      -0.01      44.57      -0.00      -0.00      -0.02

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      32.42       0.00       0.00     -20.67     569.27      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          371.01     400.82       0.00      -0.00      -0.00      -0.00     478.39      -0.00       0.00       0.00

   71   3.1  0.5  0.5    5380.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     904.70      -0.00     131.11       0.00       0.00       0.00      -0.00

   72   4.1  0.5  0.5       0.00    5380.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      70.33      -0.00    -521.10       0.00       0.00       0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00    5380.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     669.06       0.00      -0.00     425.20       3.18      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    5380.82       0.00       0.00       0.00       0.00       0.00       0.00
                         -904.70     -70.33       0.00      -0.00       0.00       0.00     244.72      -0.00      -0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5380.83       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -669.06      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     424.83

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7964.93       0.00       0.00       0.00       0.00
                         -131.11     521.10      -0.00      -0.00       0.00      -0.00      54.51       0.00      -0.00      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7965.07       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -244.72      -0.00     -54.51       0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.27       0.00       0.00
                           -0.00      -0.00    -425.20       0.00       0.00      -0.00       0.00      -0.00       0.00     108.69

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.37       0.00
                           -0.00      -0.00      -3.18       0.00       0.00       0.00       0.00      -0.00       0.00       7.88

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7969.97
                            0.00       0.00       0.00      -0.00    -424.83       0.00       0.00    -108.69      -7.88       0.00

   81   1.1  0.5 -0.5      -0.00      -0.00      -0.00    -367.19      -0.00    -308.12       0.00       0.00      -0.00       0.00
                          174.43    -774.65      -0.00       0.00       0.00      -0.00    -349.23       0.00      -0.00      -0.00

   82   2.1  0.5 -0.5       0.00      -0.00     622.15      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     117.36
                           -0.00       0.00       0.00       0.00     284.64       0.00       0.00     325.64     439.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00      -0.00       0.00     268.59       0.00      -0.00    -544.14      74.38       0.00
                           -0.00       0.00     536.08       0.00      -0.00      -0.00       0.00      -0.00      -0.00     471.81

   84   4.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00     613.63      -0.00      -0.00      35.97    -449.88       0.00
                           -0.00       0.00    -451.48      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     257.23

   85   5.1  0.5 -0.5       0.00       0.00       0.00     141.96      -0.00     440.24       0.00      -0.00      -0.00       0.00
                         -536.08     451.48      -0.00      -0.00      -0.00      -0.00    -408.39       0.00      -0.00      -0.00

   86   6.1  0.5 -0.5      -0.00      -0.00    -141.96       0.00       0.00      -0.00       0.00       0.00       0.00    -524.40
                           -0.00       0.00       0.00       0.00     606.36      -0.00      -0.00    -416.30     182.31       0.00

   87   7.1  0.5 -0.5    -268.59    -613.63       0.00      -0.00      -0.00      -0.00     424.81      -0.00       0.00       0.00
                            0.00      -0.00       0.00    -606.36      -0.00     424.81      -0.00       0.00      -0.00      -0.00

   88   8.1  0.5 -0.5      -0.00       0.00    -440.24       0.00       0.00       0.00      -0.00      -0.00      -0.00     -54.49
                            0.00       0.00       0.00       0.00    -424.81       0.00       0.00      61.20     -90.23      -0.00

   89   9.1  0.5 -0.5       0.00       0.00      -0.00      -0.00    -424.81       0.00      -0.00      47.54      98.11       0.00
                           -0.00       0.00     408.39       0.00       0.00      -0.00      -0.00      -0.00      -0.00      54.49

   90  10.1  0.5 -0.5     544.14     -35.97       0.00      -0.00       0.00       0.00     -47.54       0.00       0.00      -0.00
                            0.00       0.00      -0.00     416.30      -0.00     -61.20       0.00      -0.00      -0.00       0.00

   91  11.1  0.5 -0.5     -74.38     449.88       0.00      -0.00      -0.00       0.00     -98.11      -0.00       0.00       0.00
                            0.00       0.00       0.00    -182.31       0.00      90.23       0.00       0.00       0.00       0.00

   92  12.1  0.5 -0.5      -0.00      -0.00      -0.00     524.40      -0.00      54.49      -0.00       0.00      -0.00      -0.00
                         -471.81    -257.23       0.00      -0.00       0.00       0.00     -54.49      -0.00      -0.00      -0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5      -0.00    -265.10       0.00       0.00      -0.00      24.64      -0.00    -266.30       0.00       0.01
                            0.01      -0.00     173.39    -104.44      -0.01      -0.00      -0.00      -0.00    -332.28      -0.00

   19   2.1  1.5  0.5      -0.00       0.02     -94.36    -215.58      -0.01       0.01      -0.00      -0.03    -302.31      -0.00
                           -0.00     100.00       0.01      -0.03       0.00     213.03      -0.00     302.31       0.02      -0.02

   20   3.1  1.5  0.5     277.14       0.00      -0.00      -0.00     113.27       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00    -223.74       0.00       0.00     -57.32

   21   4.1  1.5  0.5      -0.02      -0.00       0.00       0.00      -0.03       0.00     235.18      -0.00       0.00     144.70
                         -218.73      -0.00       0.00      -0.00      61.36      -0.00      -0.01      -0.00      -0.00      -0.05

   22   5.1  1.5  0.5     106.68       0.00      -0.00      -0.01     193.47      -0.00       0.03       0.00      -0.01       0.28
                            0.09       0.00      -0.00       0.00      -0.16       0.01      72.93       0.01       0.00     371.72

   23   6.1  1.5  0.5      -0.08       0.01       0.00       0.00      -0.14      -0.00      -8.36       0.01       0.00     360.08
                          173.14      -0.00      -0.01       0.00    -238.46      -0.00      -0.05      -0.00       0.01      -0.27

   24   7.1  1.5  0.5      -0.00    -221.45      -0.01      -0.02      -0.00    -136.09      -0.00     274.42      -0.03       0.00
                            0.00       0.01     -95.70     297.18      -0.00       0.02      -0.00       0.03    -189.24      -0.00

   25   8.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     428.96
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.35

   26   9.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.38
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -394.48

   27  10.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     412.80      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -412.80       0.00

   28  11.1  1.5  0.5       4.87       0.00      -0.00      -0.00      12.74       0.00       0.02       0.00       0.01      -0.10
                           -0.01       0.00      -0.00      -0.00      -0.01       0.00       7.47      -0.01      -0.00     -86.14

   29  12.1  1.5  0.5       0.00       0.05       0.00       0.00      -0.01      -0.00      13.59      -0.14      -0.00     -74.50
                           -5.77      -0.00      -0.03       0.01      -6.28      -0.00      -0.02       0.00      -0.21       0.12

   30  13.1  1.5  0.5      -0.00      18.93       0.01       0.03       0.00      -1.94      -0.04     -62.00      -0.15       0.19
                            0.02      -0.02     -12.66       7.91       0.01      -0.03       0.00       0.15     -75.40      -0.00

   31  14.1  1.5  0.5      -0.01      -0.04       6.83      15.61      -0.00       0.00       0.00       0.12     -69.24      -0.00
                           -0.00      -7.24       0.03      -0.01      -0.00     -15.42       0.01      69.24       0.17      -0.01

   32  15.1  1.5  0.5      20.94      -0.00       0.00       0.01      10.06       0.00      -0.01       0.00      -0.03      -0.00
                            0.02      -0.00       0.00      -0.00      -0.01      -0.01     -15.31       0.03       0.00       1.20

   33  16.1  1.5  0.5      -0.02      -0.00      -0.00      -0.00      -0.01       0.00     -10.27       0.01       0.00     -48.49
                           19.36       0.00       0.00      -0.00     -16.69       0.00       0.01      -0.00       0.01      -0.00

   34  17.1  1.5  0.5      -0.00      16.34       0.00       0.00      -0.00       9.82      -0.00      61.86      -0.01       0.02
                            0.00      -0.00       6.73     -21.39       0.00      -0.00      -0.00       0.01     -44.57       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.02     465.96      -0.02       0.00    -588.75

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -22.78       0.00      -0.03      -0.01    -470.10      -0.00       0.01       0.00       0.01      -0.01

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -284.94     156.75      -0.00       0.00      -0.00      -0.00    -719.98       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -366.76      -0.09      -0.03       0.00     319.96       0.00     587.59       0.04      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.13     625.17     239.12      -0.02       0.44      -0.00      -0.27    -257.91       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -112.93      -0.45      -0.17       0.00     551.49      -0.02    -489.52       0.19       0.02

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.05       0.00     -66.31      -0.00       0.00     143.05

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.01       0.00     825.61      -0.73      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.01      -0.00      -0.00      -0.00      -0.73    -825.61       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     -68.96

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04      47.69      15.57      -0.00       0.06      -0.00      -0.06      35.65      -0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -26.44      -0.07      -0.01       0.00      41.90      -0.09     -45.80       0.04      -0.34

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.07       0.00       0.00       0.07      -0.11     -33.81       0.13      -0.00    -135.37

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.65      -0.00       0.01      -0.00      34.04       0.00       0.07      -0.00      -0.08       0.28

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.02     -14.16      13.64       0.02      -0.01       0.00       0.15     171.51       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       8.56       0.01      -0.01      -0.00      19.39       0.00     169.09      -0.13       0.01

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.00      -0.00       0.01      -0.01       4.26       0.01      -0.00      30.58

   52   1.1  1.5 -1.5      -0.00    -459.17       0.00       0.00      -0.00      42.67      -0.00    -461.25       0.00       0.02
                           -0.01       0.00    -300.32     180.89       0.02       0.00       0.00       0.00     575.53       0.00

   53   2.1  1.5 -1.5      -0.01       0.04    -163.43    -373.40      -0.01       0.02      -0.00      -0.05    -523.61      -0.00
                            0.00    -173.20      -0.02       0.05      -0.00    -368.97       0.01    -523.61      -0.03       0.03

   54   3.1  1.5 -1.5     480.02       0.00      -0.00      -0.00     196.19       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00     387.53      -0.00      -0.00      99.28

   55   4.1  1.5 -1.5      -0.03      -0.00       0.00       0.00      -0.05       0.00     407.34      -0.00       0.00     250.64
                          378.84       0.00      -0.00       0.00    -106.27       0.00       0.02       0.00       0.00       0.09

   56   5.1  1.5 -1.5     184.78       0.00      -0.01      -0.02     335.10      -0.00       0.05       0.00      -0.02       0.49
                           -0.16      -0.01       0.00      -0.00       0.28      -0.02    -126.31      -0.02      -0.00    -643.84

   57   6.1  1.5 -1.5      -0.13       0.02       0.00       0.00      -0.24      -0.00     -14.48       0.02       0.00     623.69
                         -299.89       0.00       0.01      -0.01     413.02       0.00       0.09       0.00      -0.02       0.46

   58   7.1  1.5 -1.5      -0.00    -383.56      -0.02      -0.04      -0.00    -235.71      -0.00     475.31      -0.05       0.00
                           -0.00      -0.02     165.76    -514.73       0.00      -0.04       0.00      -0.05     327.78       0.00

   59   8.1  1.5 -1.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     742.99
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.60

   60   9.1  1.5 -1.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.65
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     683.27

   61  10.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00       0.01      -0.00     714.99      -0.00      -0.00
                           -0.00       0.00      -0.00       0.01       0.00      -0.00      -0.00      -0.00     715.00      -0.00

   62  11.1  1.5 -1.5       8.43       0.00      -0.00      -0.00      22.06       0.00       0.03       0.00       0.02      -0.17
                            0.01      -0.00       0.00       0.00       0.01      -0.00     -12.95       0.02       0.00     149.20

   63  12.1  1.5 -1.5       0.01       0.09       0.00       0.00      -0.02      -0.00      23.54      -0.25      -0.00    -129.04
                            9.99       0.00       0.05      -0.03      10.87       0.00       0.03      -0.00       0.36      -0.20

   64  13.1  1.5 -1.5      -0.00      32.79       0.03       0.06       0.00      -3.36      -0.06    -107.40      -0.25       0.32
                           -0.03       0.03      21.94     -13.70      -0.03       0.06      -0.00      -0.25     130.60       0.00

   65  14.1  1.5 -1.5      -0.02      -0.07      11.83      27.04      -0.01       0.00       0.00       0.21    -119.93      -0.00
                            0.00      12.54      -0.04       0.02       0.00      26.72      -0.01    -119.93      -0.29       0.02

   66  15.1  1.5 -1.5      36.28      -0.00       0.01       0.01      17.43       0.00      -0.03       0.00      -0.06      -0.00
                           -0.03       0.01      -0.00       0.00       0.02       0.01      26.52      -0.06      -0.00      -2.08

   67  16.1  1.5 -1.5      -0.03      -0.00      -0.00      -0.00      -0.01       0.00     -17.80       0.01       0.00     -83.99
                          -33.53      -0.00      -0.00       0.00      28.90      -0.00      -0.02       0.00      -0.01       0.00

   68  17.1  1.5 -1.5      -0.00      28.31       0.00       0.00      -0.00      17.02      -0.01     107.15      -0.02       0.03
                           -0.00       0.00     -11.65      37.06      -0.00       0.00       0.00      -0.02      77.20      -0.00

   69   1.1  0.5  0.5      -0.00     761.37       0.00       0.00       0.00     367.19       0.00     308.12      -0.00      -0.00
                           -0.00      -0.00     174.43    -774.65      -0.00       0.00       0.00      -0.00    -349.23       0.00

   70   2.1  0.5  0.5    -761.37      -0.00      -0.00       0.00    -622.15       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00     284.64       0.00       0.00     325.64

   71   3.1  0.5  0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00    -268.59      -0.00       0.00     544.14
                         -174.43       0.00       0.00       0.00     536.08       0.00      -0.00      -0.00       0.00      -0.00

   72   4.1  0.5  0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00    -613.63       0.00       0.00     -35.97
                          774.65      -0.00      -0.00      -0.00    -451.48      -0.00       0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00     622.15      -0.00      -0.00       0.00    -141.96       0.00    -440.24      -0.00       0.00
                            0.00      -0.00    -536.08     451.48       0.00      -0.00      -0.00      -0.00    -408.39       0.00

   74   6.1  0.5  0.5    -367.19      -0.00       0.00       0.00     141.96       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00     606.36      -0.00      -0.00    -416.30

   75   7.1  0.5  0.5      -0.00      -0.00     268.59     613.63      -0.00       0.00      -0.00       0.00    -424.81       0.00
                           -0.00    -284.64       0.00      -0.00       0.00    -606.36       0.00     424.81      -0.00       0.00

   76   8.1  0.5  0.5    -308.12      -0.00       0.00      -0.00     440.24      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00    -424.81      -0.00       0.00      61.20

   77   9.1  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00       0.00     424.81      -0.00      -0.00     -47.54
                          349.23      -0.00      -0.00       0.00     408.39       0.00       0.00      -0.00       0.00      -0.00

   78  10.1  0.5  0.5       0.00      -0.00    -544.14      35.97      -0.00       0.00      -0.00      -0.00      47.54       0.00
                           -0.00    -325.64       0.00       0.00      -0.00     416.30      -0.00     -61.20       0.00       0.00

   79  11.1  0.5  0.5      -0.00      -0.00      74.38    -449.88      -0.00       0.00       0.00      -0.00      98.11       0.00
                            0.00    -439.00       0.00       0.00       0.00    -182.31       0.00      90.23       0.00       0.00

   80  12.1  0.5  0.5       0.00     117.36       0.00       0.00       0.00    -524.40       0.00     -54.49       0.00      -0.00
                            0.00       0.00    -471.81    -257.23       0.00      -0.00       0.00       0.00     -54.49      -0.00

   81   1.1  0.5 -0.5    5380.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00     -32.42      -0.00      -0.00      20.67

   82   2.1  0.5 -0.5       0.00    5380.49       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -371.01    -400.82      -0.00       0.00       0.00       0.00    -478.39       0.00

   83   3.1  0.5 -0.5       0.00       0.00    5380.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     371.01       0.00      -0.00      -0.00    -904.70       0.00    -131.11      -0.00      -0.00

   84   4.1  0.5 -0.5       0.00       0.00       0.00    5380.73       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     400.82       0.00      -0.00      -0.00     -70.33       0.00     521.10      -0.00      -0.00

   85   5.1  0.5 -0.5       0.00       0.00       0.00       0.00    5380.72       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00    -669.06      -0.00       0.00    -425.20

   86   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5380.82       0.00       0.00       0.00       0.00
                           -0.00      -0.00     904.70      70.33      -0.00       0.00      -0.00      -0.00    -244.72       0.00

   87   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5380.83       0.00       0.00       0.00
                           32.42      -0.00      -0.00      -0.00     669.06       0.00       0.00       0.00      -0.00       0.00

   88   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7964.93       0.00       0.00
                            0.00      -0.00     131.11    -521.10       0.00       0.00      -0.00       0.00     -54.51      -0.00

   89   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.07       0.00
                            0.00     478.39       0.00       0.00      -0.00     244.72       0.00      54.51      -0.00       0.00

   90  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.27
                          -20.67      -0.00       0.00       0.00     425.20      -0.00      -0.00       0.00      -0.00       0.00

   91  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          569.27       0.00       0.00       0.00       3.18      -0.00      -0.00      -0.00      -0.00       0.00

   92  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00     424.83      -0.00      -0.00     108.69


   Nr   State  S   Sz       91         92

    1   1.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00
                            0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00
                            0.00       0.00

   18   1.1  1.5  0.5      -0.01       0.00
                           -0.00       0.01

   19   2.1  1.5  0.5       0.00       0.01
                           -0.01      -0.00

   20   3.1  1.5  0.5      -0.00     214.87
                          308.42       0.00

   21   4.1  1.5  0.5     265.60       0.05
                           -0.02     310.45

   22   5.1  1.5  0.5      -0.10    -316.34
                          138.93       0.21

   23   6.1  1.5  0.5    -186.41       0.23
                           -0.10     223.29

   24   7.1  1.5  0.5      -0.00       0.00
                           -0.00       0.00

   25   8.1  1.5  0.5    -207.85      -0.36
                           -0.24    -412.83

   26   9.1  1.5  0.5       0.18    -412.83
                         -267.57       0.36

   27  10.1  1.5  0.5       0.00       0.00
                           -0.00       0.00

   28  11.1  1.5  0.5      -0.03      78.57
                          -21.73      -0.12

   29  12.1  1.5  0.5     -25.29      -0.12
                           -0.01     -87.58

   30  13.1  1.5  0.5       0.07       0.00
                            0.00       0.23

   31  14.1  1.5  0.5      -0.00       0.03
                            0.03      -0.00

   32  15.1  1.5  0.5       0.07     -38.70
                          -74.38       0.04

   33  16.1  1.5  0.5      69.89       0.03
                            0.06      -1.04

   34  17.1  1.5  0.5       0.01      -0.00
                            0.00       0.02

   35   1.1  1.5 -0.5       0.00       0.00
                         -157.28       0.00

   36   2.1  1.5 -0.5       0.00       0.00
                            0.08    -604.65

   37   3.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00
                            0.00      -0.03

   40   6.1  1.5 -0.5       0.00       0.00
                            0.01       0.00

   41   7.1  1.5 -0.5       0.00       0.00
                         -794.82      -0.06

   42   8.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00
                          950.84      -0.00

   45  11.1  1.5 -0.5       0.00       0.00
                           -0.00       0.02

   46  12.1  1.5 -0.5       0.00       0.00
                           -0.13      -0.00

   47  13.1  1.5 -0.5       0.00       0.00
                          -33.08      -0.29

   48  14.1  1.5 -0.5       0.00       0.00
                            0.10    -138.48

   49  15.1  1.5 -0.5       0.00       0.00
                            0.00      -0.06

   50  16.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00
                         -182.62      -0.02

   52   1.1  1.5 -1.5      -0.01       0.00
                            0.00      -0.02

   53   2.1  1.5 -1.5       0.00       0.02
                            0.01       0.00

   54   3.1  1.5 -1.5      -0.00     372.17
                         -534.21      -0.00

   55   4.1  1.5 -1.5     460.03       0.08
                            0.03    -537.72

   56   5.1  1.5 -1.5      -0.17    -547.91
                         -240.63      -0.36

   57   6.1  1.5 -1.5    -322.87       0.39
                            0.18    -386.75

   58   7.1  1.5 -1.5      -0.00       0.00
                            0.00      -0.00

   59   8.1  1.5 -1.5    -360.00      -0.63
                            0.41     715.04

   60   9.1  1.5 -1.5       0.32    -715.04
                          463.44      -0.63

   61  10.1  1.5 -1.5       0.00       0.00
                            0.00      -0.00

   62  11.1  1.5 -1.5      -0.06     136.09
                           37.63       0.20

   63  12.1  1.5 -1.5     -43.80      -0.22
                            0.01     151.69

   64  13.1  1.5 -1.5       0.12       0.00
                           -0.00      -0.39

   65  14.1  1.5 -1.5      -0.00       0.05
                           -0.06       0.00

   66  15.1  1.5 -1.5       0.12     -67.02
                          128.82      -0.07

   67  16.1  1.5 -1.5     121.06       0.05
                           -0.10       1.80

   68  17.1  1.5 -1.5       0.01      -0.00
                           -0.00      -0.04

   69   1.1  0.5  0.5       0.00      -0.00
                           -0.00      -0.00

   70   2.1  0.5  0.5       0.00    -117.36
                          439.00      -0.00

   71   3.1  0.5  0.5     -74.38      -0.00
                           -0.00     471.81

   72   4.1  0.5  0.5     449.88      -0.00
                           -0.00     257.23

   73   5.1  0.5  0.5       0.00      -0.00
                           -0.00      -0.00

   74   6.1  0.5  0.5      -0.00     524.40
                          182.31       0.00

   75   7.1  0.5  0.5      -0.00      -0.00
                           -0.00      -0.00

   76   8.1  0.5  0.5       0.00      54.49
                          -90.23      -0.00

   77   9.1  0.5  0.5     -98.11      -0.00
                           -0.00      54.49

   78  10.1  0.5  0.5      -0.00       0.00
                           -0.00       0.00

   79  11.1  0.5  0.5       0.00      -0.00
                           -0.00       0.00

   80  12.1  0.5  0.5       0.00      -0.00
                           -0.00       0.00

   81   1.1  0.5 -0.5       0.00       0.00
                         -569.27       0.00

   82   2.1  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

   83   3.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   84   4.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   85   5.1  0.5 -0.5       0.00       0.00
                           -3.18       0.00

   86   6.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   87   7.1  0.5 -0.5       0.00       0.00
                            0.00    -424.83

   88   8.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   89   9.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   90  10.1  0.5 -0.5       0.00       0.00
                           -0.00    -108.69

   91  11.1  0.5 -0.5    7965.37       0.00
                           -0.00      -7.88

   92  12.1  0.5 -0.5       0.00    7969.97
                            7.88      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02456606    -0.00702723    -1542.30      0.00000000        0.00      0.0000
     2  -110.02456606    -0.00702723    -1542.30      0.00000000        0.00      0.0000
     3  -110.02456594    -0.00702712    -1542.27      0.00000012        0.03      0.0000
     4  -110.02456594    -0.00702712    -1542.27      0.00000012        0.03      0.0000
     5  -110.02456545    -0.00702663    -1542.17      0.00000060        0.13      0.0000
     6  -110.02456545    -0.00702663    -1542.17      0.00000060        0.13      0.0000
     7  -110.02456484    -0.00702601    -1542.03      0.00000122        0.27      0.0000
     8  -110.02456484    -0.00702601    -1542.03      0.00000122        0.27      0.0000
     9  -110.02456451    -0.00702569    -1541.96      0.00000155        0.34      0.0000
    10  -110.02456451    -0.00702569    -1541.96      0.00000155        0.34      0.0000
    11  -110.01828824    -0.00074941     -164.48      0.00627782     1377.82      0.1708
    12  -110.01828824    -0.00074941     -164.48      0.00627782     1377.82      0.1708
    13  -110.01828780    -0.00074898     -164.38      0.00627825     1377.92      0.1708
    14  -110.01828780    -0.00074898     -164.38      0.00627825     1377.92      0.1708
    15  -110.01828762    -0.00074880     -164.34      0.00627843     1377.96      0.1708
    16  -110.01828762    -0.00074880     -164.34      0.00627843     1377.96      0.1708
    17  -110.01828749    -0.00074867     -164.31      0.00627856     1377.99      0.1708
    18  -110.01828749    -0.00074867     -164.31      0.00627856     1377.99      0.1708
    19  -110.01304794     0.00449088      985.63      0.01151811     2527.93      0.3134
    20  -110.01304794     0.00449088      985.63      0.01151811     2527.93      0.3134
    21  -110.01304748     0.00449134      985.74      0.01151858     2528.04      0.3134
    22  -110.01304748     0.00449134      985.74      0.01151858     2528.04      0.3134
    23  -110.01304697     0.00449185      985.85      0.01151908     2528.15      0.3135
    24  -110.01304697     0.00449185      985.85      0.01151908     2528.15      0.3135
    25  -110.00981189     0.00772693     1695.87      0.01475417     3238.17      0.4015
    26  -110.00981189     0.00772693     1695.87      0.01475417     3238.17      0.4015
    27  -110.00981130     0.00772753     1696.00      0.01475476     3238.30      0.4015
    28  -110.00981130     0.00772753     1696.00      0.01475476     3238.30      0.4015
    29  -109.99685360     0.02068523     4539.88      0.02771246     6082.18      0.7541
    30  -109.99685360     0.02068523     4539.88      0.02771246     6082.18      0.7541
    31  -109.99685285     0.02068597     4540.05      0.02771320     6082.35      0.7541
    32  -109.99685285     0.02068597     4540.05      0.02771320     6082.35      0.7541
    33  -109.99685266     0.02068616     4540.09      0.02771340     6082.39      0.7541
    34  -109.99685266     0.02068616     4540.09      0.02771340     6082.39      0.7541
    35  -109.99685206     0.02068677     4540.22      0.02771400     6082.52      0.7541
    36  -109.99685206     0.02068677     4540.22      0.02771400     6082.52      0.7541
    37  -109.99131280     0.02622603     5755.95      0.03325326     7298.25      0.9049
    38  -109.99131280     0.02622603     5755.95      0.03325326     7298.25      0.9049
    39  -109.99131271     0.02622611     5755.97      0.03325334     7298.27      0.9049
    40  -109.99131271     0.02622611     5755.97      0.03325334     7298.27      0.9049
    41  -109.99130786     0.02623097     5757.03      0.03325820     7299.33      0.9050
    42  -109.99130786     0.02623097     5757.03      0.03325820     7299.33      0.9050
    43  -109.98311318     0.03442564     7555.56      0.04145288     9097.85      1.1280
    44  -109.98311318     0.03442564     7555.56      0.04145288     9097.85      1.1280
    45  -109.98311313     0.03442570     7555.57      0.04145293     9097.87      1.1280
    46  -109.98311313     0.03442570     7555.57      0.04145293     9097.87      1.1280
    47  -109.98311126     0.03442757     7555.98      0.04145480     9098.28      1.1280
    48  -109.98311126     0.03442757     7555.98      0.04145480     9098.28      1.1280
    49  -109.98031926     0.03721956     8168.75      0.04424679     9711.05      1.2040
    50  -109.98031926     0.03721956     8168.75      0.04424679     9711.05      1.2040
    51  -109.98031276     0.03722607     8170.18      0.04425330     9712.48      1.2042
    52  -109.98031276     0.03722607     8170.18      0.04425330     9712.48      1.2042
    53  -109.97406029     0.04347854     9542.44      0.05050577    11084.74      1.3743
    54  -109.97406029     0.04347854     9542.44      0.05050577    11084.74      1.3743
    55  -109.97405793     0.04348089     9542.95      0.05050812    11085.25      1.3744
    56  -109.97405793     0.04348089     9542.95      0.05050812    11085.25      1.3744
    57  -109.97304386     0.04449496     9765.52      0.05152220    11307.82      1.4020
    58  -109.97304386     0.04449496     9765.52      0.05152220    11307.82      1.4020
    59  -109.97272394     0.04481489     9835.73      0.05184212    11378.03      1.4107
    60  -109.97272394     0.04481489     9835.73      0.05184212    11378.03      1.4107
    61  -109.97272345     0.04481537     9835.84      0.05184260    11378.14      1.4107
    62  -109.97272345     0.04481537     9835.84      0.05184260    11378.14      1.4107
    63  -109.97271727     0.04482155     9837.19      0.05184879    11379.49      1.4109
    64  -109.97271727     0.04482155     9837.19      0.05184879    11379.49      1.4109
    65  -109.96811992     0.04941890    10846.20      0.05644614    12388.49      1.5360
    66  -109.96811992     0.04941890    10846.20      0.05644614    12388.49      1.5360
    67  -109.96811989     0.04941893    10846.20      0.05644617    12388.50      1.5360
    68  -109.96811989     0.04941893    10846.20      0.05644617    12388.50      1.5360
    69  -109.96811868     0.04942015    10846.47      0.05644738    12388.77      1.5360
    70  -109.96811868     0.04942015    10846.47      0.05644738    12388.77      1.5360
    71  -109.96811770     0.04942113    10846.68      0.05644836    12388.98      1.5360
    72  -109.96811770     0.04942113    10846.68      0.05644836    12388.98      1.5360
    73  -109.96811711     0.04942172    10846.81      0.05644895    12389.11      1.5361
    74  -109.96811711     0.04942172    10846.81      0.05644895    12389.11      1.5361
    75  -109.96070444     0.05683438    12473.70      0.06386162    14016.00      1.7378
    76  -109.96070444     0.05683438    12473.70      0.06386162    14016.00      1.7378
    77  -109.96070328     0.05683554    12473.96      0.06386277    14016.26      1.7378
    78  -109.96070328     0.05683554    12473.96      0.06386277    14016.26      1.7378
    79  -109.96070313     0.05683570    12473.99      0.06386293    14016.29      1.7378
    80  -109.96070313     0.05683570    12473.99      0.06386293    14016.29      1.7378
    81  -109.96070239     0.05683643    12474.16      0.06386367    14016.45      1.7378
    82  -109.96070239     0.05683643    12474.16      0.06386367    14016.45      1.7378
    83  -109.95489541     0.06264341    13748.64      0.06967065    15290.94      1.8958
    84  -109.95489541     0.06264341    13748.64      0.06967065    15290.94      1.8958
    85  -109.95489444     0.06264439    13748.85      0.06967162    15291.15      1.8959
    86  -109.95489444     0.06264439    13748.85      0.06967162    15291.15      1.8959
    87  -109.95489387     0.06264495    13748.98      0.06967219    15291.28      1.8959
    88  -109.95489387     0.06264495    13748.98      0.06967219    15291.28      1.8959
    89  -109.95073413     0.06680469    14661.93      0.07383192    16204.23      2.0091
    90  -109.95073413     0.06680469    14661.93      0.07383192    16204.23      2.0091
    91  -109.95073263     0.06680620    14662.27      0.07383343    16204.57      2.0091
    92  -109.95073263     0.06680620    14662.27      0.07383343    16204.57      2.0091


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.001368645   0.423533004  -0.021878735   0.360929152  -0.091838306   0.010945339  -0.107420472  -0.009091762
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000004037  -0.000039142   0.000000662   0.000017169  -0.000095027   0.000011554  -0.000009430  -0.000001270
                         0.001515906   0.468460711  -0.021253155   0.350598888   0.107798202  -0.012843495   0.009567906   0.000811142

    3    3.1  1.5  1.5  -0.264895887   0.000856027   0.321972684   0.019517264  -0.000934018  -0.007837065  -0.007210560   0.085193856
                         0.141482676  -0.000578459  -0.119252972  -0.007059923  -0.015706370  -0.131755605   0.020791265  -0.245513224

    4    4.1  1.5  1.5  -0.085711370   0.000382238   0.094586269   0.005637782  -0.019412687  -0.162918785   0.037763302  -0.445806561
                        -0.160581019   0.000518940   0.255434476   0.015483846   0.001143997   0.009598889   0.013100107  -0.154779674

    5    5.1  1.5  1.5  -0.078133711   0.000252452   0.124874378   0.007569660  -0.000222325  -0.001865459   0.014997941  -0.177202782
                         0.041828302  -0.000184649  -0.046390196  -0.002763582  -0.003585202  -0.030104711  -0.043180911   0.509873199

    6    6.1  1.5  1.5   0.065034088  -0.000275684  -0.072839992  -0.004325732  -0.007137957  -0.059925496   0.025224484  -0.297920793
                         0.121673945  -0.000393173  -0.196445075  -0.011908088   0.000430591   0.003612937   0.008781211  -0.103751095

    7    7.1  1.5  1.5   0.000105950   0.030215992   0.003824110  -0.063220468  -0.416301107   0.049607388   0.179354472   0.015194604
                         0.000015502  -0.000008623  -0.000024557   0.000041800  -0.000326912   0.000039400   0.000041078   0.000008532

    8    8.1  1.5  1.5  -0.000000155   0.000000001   0.000000160   0.000000010   0.000000041   0.000000347  -0.000000008   0.000000089
                        -0.000000290   0.000000001   0.000000431   0.000000026  -0.000000002  -0.000000021  -0.000000003   0.000000032

    9    9.1  1.5  1.5  -0.000000228   0.000000001   0.000000495   0.000000030  -0.000000001  -0.000000011   0.000000011  -0.000000134
                         0.000000122  -0.000000001  -0.000000184  -0.000000011  -0.000000020  -0.000000172  -0.000000033   0.000000385

   10   10.1  1.5  1.5  -0.000000000  -0.000000014  -0.000000006   0.000000105   0.000000040  -0.000000005  -0.000000025  -0.000000002
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   11   11.1  1.5  1.5   0.000015801  -0.000000051  -0.000030685  -0.000001860   0.000000042   0.000000355  -0.000006166   0.000072849
                        -0.000008404   0.000000024   0.000011317   0.000000665   0.000000524   0.000004439   0.000017706  -0.000209078

   12   12.1  1.5  1.5   0.000012788   0.000000362  -0.000013892  -0.000000478   0.000007627   0.000065096  -0.000017705   0.000207960
                         0.000023879  -0.000000076  -0.000037365  -0.000002264  -0.000000456  -0.000003827  -0.000006137   0.000072509

   13   13.1  1.5  1.5   0.000000493   0.000164117  -0.000008472   0.000140431  -0.000033019   0.000003765  -0.000042749  -0.000004153
                        -0.000000069   0.000000386   0.000000093   0.000000295   0.000000092  -0.000000001   0.000000023  -0.000000184

   14   14.1  1.5  1.5  -0.000000051  -0.000000364   0.000000077  -0.000000286   0.000000043  -0.000000006   0.000000081   0.000000024
                         0.000000614   0.000181801  -0.000008269   0.000136039   0.000041831  -0.000005009   0.000003731   0.000000267

   15   15.1  1.5  1.5   0.000105855  -0.000000342  -0.000130235  -0.000007895   0.000000365   0.000003061   0.000001974  -0.000023320
                        -0.000056628   0.000000318   0.000048360   0.000002929   0.000006245   0.000052220  -0.000005660   0.000066853

   16   16.1  1.5  1.5  -0.000039773   0.000000153   0.000044245   0.000002615  -0.000002059  -0.000017305   0.000000398  -0.000004594
                        -0.000074300   0.000000240   0.000119164   0.000007223   0.000000114   0.000000959   0.000000141  -0.000001665

   17   17.1  1.5  1.5   0.000000046   0.000014355   0.000001350  -0.000022261  -0.000161978   0.000019284   0.000068860   0.000005777
                        -0.000000000   0.000000008   0.000000000   0.000000025  -0.000000124   0.000000016   0.000000018  -0.000000016

   18    1.1  1.5  0.5  -0.221033171   0.000714282   0.359155804   0.021771228  -0.002488285  -0.020878438   0.003234290  -0.038213630
                         0.118081782  -0.000519804  -0.133026952  -0.007907823  -0.041916701  -0.351648753  -0.009329731   0.110162791

   19    2.1  1.5  0.5  -0.167816559   0.000698311   0.138115213   0.008204068  -0.030846376  -0.258819401  -0.004423592   0.052240219
                        -0.314340482   0.001015822   0.372920085   0.022605561   0.001823363   0.015299224  -0.001535794   0.018145598

   20    3.1  1.5  0.5   0.000134984   0.043928680  -0.007914605   0.130689122   0.610516629  -0.072754320   0.012602305   0.001073440
                        -0.000012678   0.000099980   0.000021881  -0.000029286   0.000460286  -0.000055272  -0.000044643  -0.000001411

   21    4.1  1.5  0.5   0.000058559   0.000013695  -0.000080202   0.000061992  -0.000145412   0.000017701   0.000020901   0.000012966
                        -0.001344815  -0.406482386   0.002107175  -0.034294111   0.175275336  -0.020883152  -0.239278122  -0.020284053

   22    5.1  1.5  0.5  -0.000587695  -0.187528324   0.023702932  -0.391313059   0.201564092  -0.024034942   0.027050670   0.002277643
                         0.000033497  -0.000213730  -0.000044128  -0.000054026   0.000014612  -0.000000997   0.000158797   0.000009332

   23    6.1  1.5  0.5   0.000024628   0.000150856  -0.000051511   0.000299796   0.000075682  -0.000008534  -0.000048274  -0.000008521
                        -0.000740696  -0.225209936   0.005717369  -0.094113860  -0.194568878   0.023196771   0.283987978   0.024048720

   24    7.1  1.5  0.5  -0.074918105   0.000242096  -0.017950458  -0.001088113  -0.001871902  -0.015706567  -0.009311137   0.110012471
                         0.040044964  -0.000147373   0.006661369   0.000424123  -0.031661297  -0.265642728   0.026853197  -0.316859907

   25    8.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000033   0.000000008  -0.000000132   0.000000293  -0.000000035  -0.000000042  -0.000000004

   26    9.1  1.5  0.5   0.000000000   0.000000065   0.000000003  -0.000000050   0.000000290  -0.000000035  -0.000000260  -0.000000022
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   27   10.1  1.5  0.5  -0.000000071   0.000000000   0.000000125   0.000000008  -0.000000002  -0.000000019  -0.000000012   0.000000144
                         0.000000038  -0.000000000  -0.000000046  -0.000000003  -0.000000039  -0.000000325   0.000000035  -0.000000414

   28   11.1  1.5  0.5   0.000000239   0.000074511  -0.000009542   0.000157464  -0.000044621   0.000005332  -0.000009739  -0.000000821
                        -0.000000003   0.000000243   0.000000005   0.000000033  -0.000000042   0.000000004   0.000000019   0.000000003

   29   12.1  1.5  0.5  -0.000000250  -0.000000102   0.000000401  -0.000000210  -0.000000077  -0.000000014   0.000000011  -0.000000030
                         0.000000712   0.000179377  -0.000002078   0.000031932  -0.000012364   0.000001093   0.000012691   0.000001163

   30   13.1  1.5  0.5  -0.000085433   0.000000276   0.000139616   0.000008464  -0.000000979  -0.000008213   0.000001310  -0.000015479
                         0.000045306  -0.000000660  -0.000051359  -0.000003132  -0.000016016  -0.000134733  -0.000003841   0.000044757

   31   14.1  1.5  0.5  -0.000064956   0.000000280   0.000053309   0.000003193  -0.000011854  -0.000100413  -0.000001716   0.000020295
                        -0.000122110   0.000000395   0.000144848   0.000008780   0.000000742   0.000006228  -0.000000588   0.000006952

   32   15.1  1.5  0.5  -0.000000051  -0.000006822   0.000001792  -0.000029180  -0.000245164   0.000029169  -0.000006318  -0.000000527
                        -0.000000055  -0.000000143   0.000000063   0.000000016  -0.000000099   0.000000015  -0.000000100  -0.000000006

   33   16.1  1.5  0.5   0.000000016  -0.000000003  -0.000000025   0.000000017   0.000000094  -0.000000010   0.000000019   0.000000007
                        -0.000000070  -0.000018977  -0.000001342   0.000022277   0.000100750  -0.000011992  -0.000143407  -0.000012154

   34   17.1  1.5  0.5  -0.000030394   0.000000098  -0.000004720  -0.000000286  -0.000000742  -0.000006222  -0.000003587   0.000042379
                         0.000016236  -0.000000108   0.000001764   0.000000107  -0.000012526  -0.000105124   0.000010341  -0.000122058

   35    1.1  1.5 -0.5   0.000874939   0.250597226   0.023162423  -0.383000078   0.352267863  -0.041990474  -0.116602406  -0.009874437
                         0.000121969   0.000017066  -0.000149111   0.000047060   0.000327618  -0.000038619  -0.000029328  -0.000004408

   36    2.1  1.5 -0.5   0.000137354  -0.000074929  -0.000161206   0.000058111  -0.000173590   0.000020674  -0.000009086  -0.000000073
                        -0.001225017  -0.356331770  -0.024047705   0.397674740   0.259271129  -0.030900213  -0.055301927  -0.004682609

   37    3.1  1.5 -0.5   0.038700526  -0.000125037   0.122557461   0.007429133   0.004299680   0.036077164   0.000353383  -0.004175270
                        -0.020784808   0.000052414  -0.045379690  -0.002729365   0.072627177   0.609449919  -0.001013606   0.011890635

   38    4.1  1.5 -0.5   0.191522762  -0.000685251   0.011973413   0.000807331   0.020846551   0.174968317   0.019166403  -0.226050597
                         0.358534465  -0.001158614   0.032136074   0.001948033  -0.001235998  -0.010370763   0.006640181  -0.078454750

   39    5.1  1.5 -0.5  -0.165310104   0.000534163  -0.366915772  -0.022241588   0.001403198   0.011773876   0.000738168  -0.008721619
                         0.088540880  -0.000247341   0.136010036   0.008194063   0.023993946   0.201219928  -0.002154728   0.025606588

   40    6.1  1.5 -0.5   0.106238789  -0.000370696   0.032980415   0.002034767  -0.023156764  -0.194233065  -0.022721390   0.268296546
                         0.198577082  -0.000641734   0.088146473   0.005343284   0.001361824   0.011426741  -0.007879053   0.093092092

   41    7.1  1.5 -0.5   0.000282976   0.084948932  -0.001167683   0.019146611   0.266106599  -0.031716577   0.335414585   0.028421670
                         0.000015930   0.000024947  -0.000019642   0.000009591   0.000182165  -0.000021587  -0.000009234   0.000010728

   42    8.1  1.5 -0.5  -0.000000015   0.000000000   0.000000046   0.000000003   0.000000035   0.000000293   0.000000003  -0.000000040
                        -0.000000029   0.000000000   0.000000124   0.000000008  -0.000000002  -0.000000017   0.000000001  -0.000000014

   43    9.1  1.5 -0.5   0.000000057  -0.000000000  -0.000000047  -0.000000003   0.000000002   0.000000017  -0.000000007   0.000000085
                        -0.000000030   0.000000000   0.000000017   0.000000001   0.000000034   0.000000289   0.000000021  -0.000000245

   44   10.1  1.5 -0.5   0.000000000   0.000000081   0.000000008  -0.000000133   0.000000325  -0.000000039   0.000000438   0.000000037
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   45   11.1  1.5 -0.5   0.000065608  -0.000000212   0.000147643   0.000008950  -0.000000315  -0.000002645  -0.000000272   0.000003212
                        -0.000035320   0.000000110  -0.000054741  -0.000003311  -0.000005322  -0.000044543   0.000000775  -0.000009194

   46   12.1  1.5 -0.5  -0.000084602   0.000000556  -0.000011291  -0.000001098  -0.000001090  -0.000012347  -0.000001109   0.000011985
                        -0.000158173   0.000000510  -0.000029869  -0.000001810   0.000000078   0.000000645  -0.000000353   0.000004172

   47   13.1  1.5 -0.5   0.000000555   0.000096702   0.000009025  -0.000148763   0.000134982  -0.000016046  -0.000047358  -0.000004058
                         0.000000452  -0.000000288  -0.000000004   0.000000350   0.000000339  -0.000000043  -0.000000055  -0.000000022

   48   14.1  1.5 -0.5   0.000000061  -0.000000236  -0.000000056   0.000000339  -0.000000359   0.000000050   0.000000089   0.000000007
                        -0.000000480  -0.000138311  -0.000009343   0.000154346   0.000100605  -0.000011877  -0.000021453  -0.000001814

   49   15.1  1.5 -0.5  -0.000005950   0.000000019  -0.000027368  -0.000001659  -0.000001717  -0.000014402  -0.000000167   0.000001978
                         0.000003340  -0.000000073   0.000010124   0.000000681  -0.000029118  -0.000244741   0.000000500  -0.000006001

   50   16.1  1.5 -0.5   0.000008939  -0.000000047  -0.000007724  -0.000000443   0.000011972   0.000100584   0.000011484  -0.000135482
                         0.000016740  -0.000000054  -0.000020895  -0.000001267  -0.000000689  -0.000005784   0.000003979  -0.000047014

   51   17.1  1.5 -0.5   0.000000138   0.000034459  -0.000000306   0.000005038   0.000105308  -0.000012548   0.000129206   0.000010945
                         0.000000049   0.000000001  -0.000000001   0.000000014   0.000000079  -0.000000010  -0.000000005   0.000000003

   52    1.1  1.5 -1.5  -0.373580545   0.001207224  -0.338443530  -0.020515706   0.000638553   0.005357865   0.002981766  -0.035229996
                         0.199543934  -0.000644826   0.125402669   0.007601635   0.010926697   0.091681884  -0.008588900   0.101479088

   53    2.1  1.5 -1.5   0.220745763  -0.000717767   0.121797382   0.007384902  -0.012820945  -0.107609051   0.000766695  -0.009041801
                         0.413190933  -0.001335215   0.328762799   0.019928869   0.000760827   0.006383834   0.000264826  -0.003129016

   54    3.1  1.5 -1.5  -0.001027602  -0.300311802  -0.020754281   0.343347751  -0.131988409   0.015734109  -0.259874460  -0.022006109
                        -0.000106924   0.000007537   0.000161061  -0.000043879  -0.000137069   0.000016115  -0.000037564  -0.000007029

   55    4.1  1.5 -1.5  -0.000092662   0.000053994   0.000093217  -0.000055563   0.000077825  -0.000009509  -0.000010582   0.000009440
                         0.000637824   0.182023899   0.016478028  -0.272384528  -0.163201296   0.019446364  -0.471911260  -0.039970986

   56    5.1  1.5 -1.5  -0.000309673  -0.088625486  -0.008058265   0.133212791  -0.030162267   0.003592066   0.539788358   0.045711369
                        -0.000043931  -0.000082949   0.000038620   0.000113267  -0.000105966   0.000012785  -0.000181956  -0.000006647

   57    6.1  1.5 -1.5   0.000057929   0.000038184  -0.000081152  -0.000048451   0.000110718  -0.000013428  -0.000305511  -0.000022815
                        -0.000476687  -0.137963691  -0.012669173   0.209514510  -0.060034208   0.007150920  -0.315469484  -0.026709244

   58    7.1  1.5 -1.5  -0.026656311   0.000086150   0.059296403   0.003594403   0.002933438   0.024613445  -0.004975215   0.058782917
                         0.014228399  -0.000063591  -0.021926376  -0.001305637   0.049520596   0.415572974   0.014356995  -0.169447918

   59    8.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000001   0.000000329   0.000000028  -0.000000459   0.000000348  -0.000000041   0.000000095   0.000000008

   60    9.1  1.5 -1.5  -0.000000001  -0.000000259  -0.000000032   0.000000528  -0.000000172   0.000000021   0.000000407   0.000000034
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000

   61   10.1  1.5 -1.5   0.000000012  -0.000000000  -0.000000098  -0.000000006  -0.000000000  -0.000000002   0.000000001  -0.000000008
                        -0.000000007   0.000000000   0.000000036   0.000000002  -0.000000005  -0.000000040  -0.000000002   0.000000024

   62   11.1  1.5 -1.5   0.000000057   0.000017897   0.000001975  -0.000032705   0.000004452  -0.000000526  -0.000221406  -0.000018749
                        -0.000000002  -0.000000032  -0.000000023   0.000000050   0.000000095  -0.000000012   0.000000250   0.000000018

   63   12.1  1.5 -1.5  -0.000000355   0.000000029  -0.000000338  -0.000000044  -0.000000022   0.000000010   0.000000295  -0.000000009
                         0.000000103  -0.000027088  -0.000002289   0.000039864   0.000065209  -0.000007640   0.000220238   0.000018738

   64   13.1  1.5 -1.5  -0.000144579   0.000000467  -0.000131580  -0.000007976   0.000000219   0.000001835   0.000001188  -0.000014042
                         0.000077663  -0.000000171   0.000049068   0.000002857   0.000003758   0.000032968  -0.000003984   0.000040377

   65   14.1  1.5 -1.5   0.000085975  -0.000000335   0.000047534   0.000002945  -0.000005000  -0.000041762   0.000000244  -0.000003498
                         0.000160187  -0.000000518   0.000127465   0.000007727   0.000000286   0.000002398   0.000000110  -0.000001301

   66   15.1  1.5 -1.5   0.000000452   0.000120050   0.000008420  -0.000138924   0.000052310  -0.000006256   0.000070803   0.000005994
                         0.000000119   0.000000076   0.000000003  -0.000000098   0.000000009   0.000000000  -0.000000105  -0.000000008

   67   16.1  1.5 -1.5  -0.000000022  -0.000000076   0.000000058   0.000000085  -0.000000052   0.000000006  -0.000000066  -0.000000003
                         0.000000284   0.000084276   0.000007682  -0.000127113  -0.000017332   0.000002062  -0.000004886  -0.000000422

   68   17.1  1.5 -1.5  -0.000012658   0.000000041   0.000020883   0.000001266   0.000001141   0.000009574  -0.000001910   0.000022567
                         0.000006770  -0.000000021  -0.000007711  -0.000000469   0.000019250   0.000161694   0.000005453  -0.000065057

   69    1.1  0.5  0.5  -0.000000476   0.000000002  -0.000003775  -0.000000229  -0.000000023  -0.000000196   0.000000114  -0.000001351
                         0.000000255  -0.000000000   0.000001399   0.000000084  -0.000000395  -0.000003314  -0.000000329   0.000003891

   70    2.1  0.5  0.5   0.000000011   0.000003477  -0.000000242   0.000003996   0.000005980  -0.000000713  -0.000004974  -0.000000421
                         0.000000000   0.000000000   0.000000000  -0.000000001   0.000000006  -0.000000001  -0.000000000  -0.000000000

   71    3.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000005  -0.000000001  -0.000000001  -0.000000000
                         0.000000031   0.000009426  -0.000000541   0.000008920  -0.000007189   0.000000857  -0.000001385  -0.000000117

   72    4.1  0.5  0.5   0.000000001  -0.000000001  -0.000000001   0.000000001  -0.000000010   0.000000001   0.000000000   0.000000000
                         0.000000008   0.000002547  -0.000000431   0.000007114   0.000013210  -0.000001574  -0.000002979  -0.000000252

   73    5.1  0.5  0.5  -0.000003891   0.000000013   0.000004764   0.000000289   0.000000052   0.000000434  -0.000000056   0.000000662
                         0.000002077  -0.000000009  -0.000001764  -0.000000105   0.000000874   0.000007329   0.000000161  -0.000001905

   74    6.1  0.5  0.5  -0.000000032  -0.000009711   0.000000407  -0.000006708   0.000002420  -0.000000288   0.000001687   0.000000143
                        -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000000001  -0.000000000

   75    7.1  0.5  0.5  -0.000001134   0.000000005   0.000000563   0.000000033   0.000000465   0.000003901   0.000000053  -0.000000622
                        -0.000002123   0.000000007   0.000001521   0.000000092  -0.000000028  -0.000000231   0.000000018  -0.000000215

   76    8.1  0.5  0.5   0.000000002   0.000000520  -0.000000016   0.000000258  -0.000000356   0.000000042  -0.000000374  -0.000000031
                         0.000000000   0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000

   77    9.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000
                        -0.000000002  -0.000000774   0.000000105  -0.000001725  -0.000000447   0.000000053   0.000000541   0.000000046

   78   10.1  0.5  0.5   0.000001397  -0.000000006  -0.000001673  -0.000000100  -0.000000487  -0.000004083  -0.000000146   0.000001726
                         0.000002616  -0.000000008  -0.000004518  -0.000000274   0.000000029   0.000000243  -0.000000051   0.000000599

   79   11.1  0.5  0.5  -0.000000768   0.000000003  -0.000000138  -0.000000009   0.000000342   0.000002872  -0.000000410   0.000004834
                        -0.000001437   0.000000005  -0.000000372  -0.000000023  -0.000000020  -0.000000170  -0.000000142   0.000001678

   80   12.1  0.5  0.5  -0.000000627   0.000000002   0.000001233   0.000000075   0.000000001   0.000000005  -0.000000013   0.000000153
                         0.000000335  -0.000000002  -0.000000457  -0.000000027   0.000000009   0.000000079   0.000000037  -0.000000440

   81    1.1  0.5 -0.5  -0.000000001  -0.000000540   0.000000244  -0.000004026  -0.000003320   0.000000396   0.000004119   0.000000349
                         0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000002   0.000000000  -0.000000000   0.000000000

   82    2.1  0.5 -0.5  -0.000003067   0.000000010  -0.000003748  -0.000000227  -0.000000042  -0.000000355   0.000000138  -0.000001631
                         0.000001638  -0.000000005   0.000001387   0.000000084  -0.000000712  -0.000005970  -0.000000398   0.000004699

   83    3.1  0.5 -0.5   0.000004441  -0.000000015   0.000003099   0.000000188   0.000000856   0.000007176  -0.000000111   0.000001308
                         0.000008314  -0.000000027   0.000008365   0.000000507  -0.000000051  -0.000000424  -0.000000039   0.000000455

   84    4.1  0.5 -0.5   0.000001201  -0.000000003   0.000002471   0.000000149  -0.000001572  -0.000013187  -0.000000238   0.000002814
                         0.000002246  -0.000000007   0.000006672   0.000000404   0.000000093   0.000000780  -0.000000083   0.000000977

   85    5.1  0.5 -0.5  -0.000000015  -0.000004411  -0.000000307   0.000005080   0.000007342  -0.000000875  -0.000002017  -0.000000171
                        -0.000000002   0.000000001   0.000000002  -0.000000001   0.000000006  -0.000000001   0.000000000  -0.000000000

   86    6.1  0.5 -0.5   0.000008565  -0.000000028   0.000006290   0.000000381  -0.000000017  -0.000000143  -0.000000047   0.000000554
                        -0.000004576   0.000000015  -0.000002331  -0.000000142  -0.000000288  -0.000002416   0.000000135  -0.000001594

   87    7.1  0.5 -0.5  -0.000000001   0.000000000   0.000000001  -0.000000000  -0.000000003   0.000000000   0.000000001   0.000000000
                         0.000000008   0.000002407   0.000000098  -0.000001622   0.000003908  -0.000000466  -0.000000658  -0.000000056

   88    8.1  0.5 -0.5  -0.000000459   0.000000001  -0.000000241  -0.000000015   0.000000002   0.000000020   0.000000010  -0.000000122
                         0.000000246  -0.000000001   0.000000091   0.000000006   0.000000042   0.000000356  -0.000000030   0.000000353

   89    9.1  0.5 -0.5  -0.000000364   0.000000001  -0.000000599  -0.000000036   0.000000053   0.000000446   0.000000043  -0.000000511
                        -0.000000683   0.000000002  -0.000001618  -0.000000098  -0.000000003  -0.000000027   0.000000015  -0.000000177

   90   10.1  0.5 -0.5   0.000000001  -0.000000000  -0.000000002   0.000000001   0.000000004  -0.000000000  -0.000000001  -0.000000000
                        -0.000000010  -0.000002966  -0.000000291   0.000004818  -0.000004090   0.000000488   0.000001827   0.000000155

   91   11.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000
                         0.000000005   0.000001629  -0.000000024   0.000000396   0.000002877  -0.000000343   0.000005117   0.000000434

   92   12.1  0.5 -0.5  -0.000000003  -0.000000710  -0.000000080   0.000001314   0.000000080  -0.000000009  -0.000000466  -0.000000039
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.156693810  -0.000000000  -0.038365033   0.488947777   0.095370593   0.009634711   0.007717186   0.153654201
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000014100  -0.000000080  -0.000021634   0.000000042  -0.000112054  -0.000029844   0.000062371   0.000255213
                         0.050095436   0.000000229   0.005685271  -0.072206048   0.126084050   0.012800302   0.024839731   0.494487970

    3    3.1  1.5  1.5   0.000000003   0.008726519   0.290590663   0.022801048  -0.012729873   0.126007747  -0.113757047   0.005713435
                         0.000000777  -0.025902982  -0.264138949  -0.020746492   0.043271818  -0.427565155  -0.010110313   0.000551709

    4    4.1  1.5  1.5   0.000010650  -0.076450004  -0.151550933  -0.011898498  -0.031610237   0.312863893  -0.021262966   0.001082437
                        -0.000000004  -0.025747337  -0.166689185  -0.013079176  -0.009324547   0.092299377   0.231646018  -0.011634157

    5    5.1  1.5  1.5  -0.000000004  -0.127544669   0.151021022   0.011849778  -0.000940402   0.009308389  -0.096499826   0.004846641
                        -0.000007826   0.377534032  -0.137224447  -0.010774981   0.003224187  -0.031898937  -0.008663509   0.000455745

    6    6.1  1.5  1.5   0.000007457  -0.465496413   0.073929316   0.005791124   0.011281115  -0.112058799   0.011689260  -0.000624972
                        -0.000000005  -0.157139182   0.081575206   0.006400762   0.003334521  -0.033006737  -0.124701854   0.006262967

    7    7.1  1.5  1.5   0.165159020  -0.000007942  -0.009484701   0.120957922   0.366532786   0.037118958  -0.009542528  -0.190086831
                         0.000043869  -0.000002673   0.000004560   0.000028712  -0.000363957  -0.000010268  -0.000053657  -0.000090913

    8    8.1  1.5  1.5  -0.000000000   0.000000164  -0.000000155  -0.000000012   0.000000109  -0.000001080   0.000000012  -0.000000001
                        -0.000000000   0.000000055  -0.000000170  -0.000000013   0.000000032  -0.000000317  -0.000000121   0.000000006

    9    9.1  1.5  1.5   0.000000000   0.000000034  -0.000000209  -0.000000016   0.000000044  -0.000000439   0.000000039  -0.000000002
                         0.000000000  -0.000000101   0.000000190   0.000000015  -0.000000151   0.000001492   0.000000003  -0.000000000

   10   10.1  1.5  1.5  -0.000000010   0.000000000   0.000000041  -0.000000517  -0.000001848  -0.000000187   0.000000047   0.000000939
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000000   0.000000000  -0.000000000

   11   11.1  1.5  1.5   0.000000000   0.000049530   0.000102994   0.000008081   0.000000758  -0.000007502  -0.000075303   0.000003782
                         0.000000001  -0.000146487  -0.000093839  -0.000007373  -0.000002644   0.000026182  -0.000006568   0.000000382

   12   12.1  1.5  1.5  -0.000000146   0.000127983  -0.000076890  -0.000007255  -0.000018619   0.000180975  -0.000010116   0.000000168
                         0.000000000   0.000043311  -0.000084697  -0.000006645  -0.000005370   0.000053154   0.000111395  -0.000005597

   13   13.1  1.5  1.5  -0.000061791  -0.000000310   0.000036256  -0.000459330  -0.000084403  -0.000009023  -0.000007407  -0.000148043
                         0.000000041  -0.000000105   0.000000223   0.000000163  -0.000000243  -0.000000171  -0.000000362  -0.000000975

   14   14.1  1.5  1.5   0.000000122   0.000000002  -0.000000186   0.000000971   0.000000312  -0.000000008   0.000000006   0.000000060
                         0.000019436  -0.000000007  -0.000005238   0.000068025  -0.000119019  -0.000011888  -0.000023427  -0.000466452

   15   15.1  1.5  1.5   0.000000000   0.000003532   0.000291373   0.000022863  -0.000011984   0.000118629  -0.000118898   0.000005972
                         0.000000009  -0.000010365  -0.000264561  -0.000020747   0.000040791  -0.000403622  -0.000010811   0.000000366

   16   16.1  1.5  1.5   0.000000007   0.000130797   0.000139009   0.000010960   0.000025860  -0.000256153   0.000020592  -0.000001053
                        -0.000000000   0.000044093   0.000153409   0.000012037   0.000007598  -0.000075205  -0.000221776   0.000011139

   17   17.1  1.5  1.5   0.000063040  -0.000000037   0.000009557  -0.000121612  -0.000347344  -0.000035225   0.000008892   0.000177066
                         0.000000018  -0.000000013   0.000000018  -0.000000021   0.000000338  -0.000000005   0.000000019   0.000000058

   18    1.1  1.5  0.5   0.000000001   0.031945328   0.078722016   0.006176875   0.012856643  -0.127262422  -0.162018286   0.008137205
                         0.000005769  -0.094772206  -0.071577155  -0.005606087  -0.043658022   0.431391013  -0.014737934   0.000729497

   19    2.1  1.5  0.5  -0.000001172  -0.015268950  -0.121078768  -0.009500722  -0.004460579   0.043480312  -0.006832448   0.000294037
                        -0.000000002  -0.005147573  -0.133132602  -0.010446174  -0.001305018   0.012917880   0.078959136  -0.003965723

   20    3.1  1.5  0.5   0.148809856   0.000005147   0.026901816  -0.342781539  -0.111428210  -0.011241132   0.001005207   0.019979242
                        -0.000038191   0.000001735   0.000005869   0.000004311   0.000054721   0.000010200  -0.000029179  -0.000182732

   21    4.1  1.5  0.5   0.000029667   0.000000716   0.000006204  -0.000012752  -0.000254310  -0.000020070  -0.000005413   0.000123104
                        -0.306027109  -0.000002102  -0.036208064   0.461397711  -0.175073363  -0.017705988   0.010350799   0.206113489

   22    5.1  1.5  0.5   0.067293661  -0.000009845  -0.006366152   0.081228615   0.446144556   0.045142125   0.022942086   0.456730633
                         0.000212863  -0.000003328  -0.000000471   0.000110092  -0.000243900  -0.000003818  -0.000008341   0.000502865

   23    6.1  1.5  0.5  -0.000071323   0.000004590  -0.000009235  -0.000052503  -0.000568260  -0.000063212   0.000047243   0.000116162
                         0.355797471  -0.000013612  -0.007249374   0.092545074  -0.138737301  -0.013996563   0.025984606   0.517298592

   24    7.1  1.5  0.5  -0.000000007  -0.169320728   0.169052707   0.013264634  -0.002901097   0.028716864  -0.118866109   0.005969949
                         0.000007895   0.502371635  -0.153681669  -0.012071246   0.009890386  -0.097475780  -0.010823262   0.000573952

   25    8.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000001
                        -0.000000082   0.000000000   0.000000046  -0.000000581  -0.000001296  -0.000000131   0.000000061   0.000001220

   26    9.1  1.5  0.5  -0.000000051   0.000000000  -0.000000039   0.000000491  -0.000001062  -0.000000108  -0.000000007  -0.000000149
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002   0.000000000   0.000000000  -0.000000001

   27   10.1  1.5  0.5  -0.000000000  -0.000000086  -0.000000273  -0.000000021  -0.000000016   0.000000157   0.000000620  -0.000000031
                         0.000000000   0.000000257   0.000000248   0.000000019   0.000000054  -0.000000532   0.000000057  -0.000000003

   28   11.1  1.5  0.5  -0.000017877   0.000000005  -0.000009473   0.000120683   0.000431573   0.000043667   0.000021303   0.000424113
                         0.000000022   0.000000002  -0.000000045   0.000000523  -0.000000401  -0.000000021   0.000000013   0.000000708

   29   12.1  1.5  0.5  -0.000000014   0.000000015  -0.000000204  -0.000000331  -0.000000913   0.000000212   0.000000422  -0.000000164
                         0.000017882  -0.000000046  -0.000031692   0.000406585  -0.000210389  -0.000022288   0.000022106   0.000439381

   30   13.1  1.5  0.5   0.000000000   0.000013443  -0.000071421  -0.000005603  -0.000012157   0.000120363   0.000151019  -0.000007584
                        -0.000000066  -0.000039922   0.000065508   0.000004065   0.000041859  -0.000408270   0.000013524  -0.000001757

   31   14.1  1.5  0.5   0.000000027  -0.000005939   0.000114348   0.000009130   0.000004289  -0.000041244   0.000006112  -0.000000262
                         0.000000000  -0.000001921   0.000125420   0.000009841   0.000001143  -0.000011319  -0.000074452   0.000003740

   32   15.1  1.5  0.5  -0.000060718  -0.000000004   0.000024362  -0.000309714  -0.000045552  -0.000004597   0.000003943   0.000078407
                        -0.000000135  -0.000000001   0.000000093  -0.000000335   0.000000131   0.000000015  -0.000000066  -0.000000151

   33   16.1  1.5  0.5   0.000000063  -0.000000003  -0.000000023   0.000000246  -0.000000052  -0.000000028   0.000000029   0.000000181
                        -0.000181018   0.000000009   0.000014026  -0.000178703  -0.000012499  -0.000001187   0.000014472   0.000288107

   34   17.1  1.5  0.5   0.000000000  -0.000065419  -0.000160675  -0.000012607   0.000002543  -0.000025174   0.000114699  -0.000005761
                        -0.000000002   0.000194096   0.000146089   0.000011365  -0.000008615   0.000085455   0.000010433  -0.000000670

   35    1.1  1.5 -0.5  -0.100011375  -0.000005466  -0.008341580   0.106397578   0.449770812   0.045511711  -0.008169838  -0.162687183
                         0.000002061  -0.000001844   0.000006083   0.000018408  -0.000383224  -0.000017022  -0.000005109   0.000110461

   36    2.1  1.5 -0.5  -0.000001085  -0.000000372   0.000004403  -0.000052862   0.000125909  -0.000006470   0.000063730   0.000294790
                        -0.016113297   0.000001112  -0.014120420   0.179956537   0.045358498   0.004647558  -0.003976098  -0.079253647

   37    3.1  1.5 -0.5   0.000000001   0.047565675   0.253661849   0.019903444   0.003181270  -0.031489969  -0.019881886   0.000998512
                         0.000005431  -0.141003125  -0.230553356  -0.018098637  -0.010781590   0.106886065  -0.001978413   0.000119444

   38    4.1  1.5 -0.5  -0.000002221   0.290007147   0.310347803   0.024358312  -0.016981030   0.167889360  -0.018655176   0.000925295
                         0.000000007   0.097716155   0.341426551   0.026789859  -0.005014681   0.049637788   0.205267557  -0.010309360

   39    5.1  1.5 -0.5  -0.000000009   0.021291708  -0.060035271  -0.004710647  -0.012739703   0.126105676  -0.454925859   0.022848409
                        -0.000010392  -0.063836865   0.054716233   0.004282254   0.043307175  -0.427951379  -0.040565831   0.002071131

   40    6.1  1.5 -0.5  -0.000014365  -0.337183885   0.062285124   0.004869130  -0.013410127   0.132940854  -0.046628282   0.002383441
                         0.000000002  -0.113573206   0.068448206   0.005370761  -0.004009523   0.039687416   0.515192828  -0.025875108

   41    7.1  1.5 -0.5   0.530138443  -0.000007484  -0.017935032   0.228466349  -0.101617831  -0.010307087  -0.005997374  -0.119357809
                         0.000004349  -0.000002515  -0.000010886   0.000019028   0.000049215  -0.000007153   0.000034842   0.000091648

   42    8.1  1.5 -0.5   0.000000000   0.000000078  -0.000000391  -0.000000031  -0.000000126   0.000001242  -0.000000111   0.000000006
                         0.000000000   0.000000026  -0.000000430  -0.000000034  -0.000000037   0.000000368   0.000001215  -0.000000061

   43    9.1  1.5 -0.5   0.000000000  -0.000000016  -0.000000363  -0.000000028   0.000000030  -0.000000301   0.000000148  -0.000000007
                         0.000000000   0.000000048   0.000000330   0.000000026  -0.000000103   0.000001018   0.000000012  -0.000000001

   44   10.1  1.5 -0.5   0.000000271  -0.000000000   0.000000029  -0.000000369  -0.000000554  -0.000000056   0.000000031   0.000000622
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001

   45   11.1  1.5 -0.5   0.000000000  -0.000005730  -0.000088954  -0.000006980  -0.000012340   0.000122145  -0.000422459   0.000021218
                         0.000000005   0.000016934   0.000081559   0.000006405   0.000041887  -0.000413928  -0.000037429   0.000001902

   46   12.1  1.5 -0.5  -0.000000049  -0.000016950   0.000273716   0.000021166  -0.000021442   0.000201584  -0.000039343   0.000002408
                        -0.000000000  -0.000005699   0.000300651   0.000023589  -0.000006084   0.000060233   0.000437616  -0.000021979

   47   13.1  1.5 -0.5  -0.000042125   0.000000062   0.000006881  -0.000096913  -0.000425642  -0.000043589   0.000007712   0.000151623
                        -0.000000012   0.000000021  -0.000000761  -0.000000438   0.000000287  -0.000000146  -0.000001068   0.000000110

   48   14.1  1.5 -0.5   0.000000076   0.000000009  -0.000000137   0.000000260   0.000000777   0.000000113  -0.000000075  -0.000000607
                        -0.000006242  -0.000000025   0.000013423  -0.000169722  -0.000042762  -0.000004437   0.000003748   0.000074700

   49   15.1  1.5 -0.5   0.000000000  -0.000019266   0.000228963   0.000017966   0.000001311  -0.000012977  -0.000078076   0.000003921
                        -0.000000004   0.000057581  -0.000208563  -0.000016455  -0.000004406   0.000043665  -0.000007200   0.000000420

   50   16.1  1.5 -0.5   0.000000009   0.000171557  -0.000120378  -0.000009451  -0.000001131   0.000011977  -0.000026086   0.000001330
                         0.000000000   0.000057757  -0.000132075  -0.000010363  -0.000000361   0.000003576   0.000286923  -0.000014411

   51   17.1  1.5 -0.5   0.000204824   0.000000002   0.000016973  -0.000217160   0.000089086   0.000008983   0.000005798   0.000115173
                         0.000000001   0.000000001  -0.000000070  -0.000000035  -0.000000042  -0.000000009  -0.000000150  -0.000000078

   52    1.1  1.5 -1.5   0.000000000   0.050047598   0.361822226   0.028390192   0.002718261  -0.026907102   0.153031824  -0.007685927
                         0.000000000  -0.148486323  -0.328868676  -0.025804509  -0.009243307   0.091496218   0.013815725  -0.000693886

   53    2.1  1.5 -1.5  -0.000000243   0.047475983   0.048566173   0.003839950  -0.012288717   0.120993572   0.044715767  -0.002295568
                         0.000000003   0.015986991   0.053432576   0.004192560  -0.003582744   0.035464851  -0.492462098   0.024733509

   54    3.1  1.5 -1.5   0.027333434   0.000000736   0.030827009  -0.392698762   0.445746394   0.045105430   0.005739899   0.114205337
                         0.000003915   0.000000251   0.000016344  -0.000010586  -0.000258916  -0.000004362  -0.000035754   0.000159035

   55    4.1  1.5 -1.5  -0.000019220  -0.000003405  -0.000007792   0.000031996  -0.000280833  -0.000027482   0.000031975   0.000348528
                         0.080669251   0.000010091   0.017681602  -0.225284195  -0.326194592  -0.032956843   0.011684360   0.232619582

   56    5.1  1.5 -1.5  -0.398496561  -0.000007415   0.016016162  -0.204053662   0.033229256   0.003358524   0.004867988   0.096887928
                         0.000280594  -0.000002503   0.000003286   0.000031146   0.000069472   0.000007447  -0.000018116   0.000048306

   57    6.1  1.5 -1.5   0.000230014  -0.000002387  -0.000019742   0.000160058   0.000050477   0.000016294  -0.000059310  -0.000429421
                         0.491303959   0.000007065  -0.008631714   0.110091018   0.116818733   0.011763601  -0.006293793  -0.125247782

   58    7.1  1.5 -1.5  -0.000000004  -0.052709793   0.089489766   0.007021763   0.010482299  -0.103759822  -0.189325059   0.009508700
                         0.000008379   0.156522144  -0.081378139  -0.006376082  -0.035608124   0.351539919  -0.017000998   0.000804571

   59    8.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000001
                        -0.000000173  -0.000000000   0.000000018  -0.000000230   0.000001125   0.000000114  -0.000000006  -0.000000122

   60    9.1  1.5 -1.5   0.000000107   0.000000000  -0.000000022   0.000000283  -0.000001555  -0.000000157  -0.000000002  -0.000000039
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   61   10.1  1.5 -1.5   0.000000000   0.000000003  -0.000000382  -0.000000030  -0.000000053   0.000000523   0.000000936  -0.000000047
                        -0.000000000  -0.000000009   0.000000348   0.000000027   0.000000179  -0.000001772   0.000000085  -0.000000004

   62   11.1  1.5 -1.5   0.000154634   0.000000001   0.000010939  -0.000139332  -0.000027236  -0.000002750   0.000003801   0.000075588
                        -0.000000148   0.000000000   0.000000021  -0.000000166  -0.000000189  -0.000000019  -0.000000041   0.000000229

   63   12.1  1.5 -1.5  -0.000000165   0.000000047  -0.000000899  -0.000000069   0.000000064   0.000000101  -0.000000336   0.000000059
                        -0.000135112  -0.000000138   0.000009798  -0.000114393  -0.000188619  -0.000019377   0.000005590   0.000111853

   64   13.1  1.5 -1.5   0.000000000   0.000019775  -0.000340015  -0.000026679  -0.000002382   0.000023580  -0.000147531   0.000007410
                         0.000000328  -0.000058541   0.000308827   0.000024551   0.000008705  -0.000081043  -0.000012341   0.000000306

   65   14.1  1.5 -1.5   0.000000008   0.000018380  -0.000045035  -0.000003386   0.000011403  -0.000114272  -0.000041881   0.000002100
                        -0.000000000   0.000006323  -0.000050992  -0.000004001   0.000003362  -0.000033280   0.000464568  -0.000023333

   66   15.1  1.5 -1.5   0.000010951   0.000000009   0.000030873  -0.000393562   0.000420694   0.000042515   0.000005980   0.000119388
                        -0.000000037   0.000000003  -0.000000025   0.000000203   0.000000065   0.000000011   0.000000173  -0.000000077

   67   16.1  1.5 -1.5  -0.000000008  -0.000000002   0.000000014   0.000000317  -0.000000119  -0.000000007  -0.000000048  -0.000000568
                        -0.000138030   0.000000007  -0.000016280   0.000207021   0.000266965   0.000026953  -0.000011188  -0.000222729

   68   17.1  1.5 -1.5  -0.000000000  -0.000020118  -0.000089979  -0.000007060  -0.000009933   0.000098321   0.000176354  -0.000008857
                         0.000000039   0.000059744   0.000081812   0.000006442   0.000033795  -0.000333138   0.000015863  -0.000000781

   69    1.1  0.5  0.5  -0.000000000  -0.000002191  -0.084744323  -0.006649419   0.000573753  -0.005679431   0.065585218  -0.003293962
                        -0.000000000   0.000006500   0.077028617   0.006049451  -0.001967223   0.019324635   0.005969536  -0.000311598

   70    2.1  0.5  0.5  -0.000009334  -0.000000000  -0.009677121   0.123324133   0.040514193   0.004101024  -0.000347985  -0.006933667
                        -0.000000000  -0.000000000  -0.000001026   0.000005239  -0.000035933  -0.000001249  -0.000004042  -0.000024157

   71    3.1  0.5  0.5  -0.000000001   0.000000000  -0.000001668   0.000005203  -0.000009810  -0.000002520   0.000001446  -0.000014051
                        -0.000004132  -0.000000000  -0.004904478   0.062520307   0.047522689   0.004806117   0.004952300   0.098599761

   72    4.1  0.5  0.5  -0.000000000  -0.000000000  -0.000003627  -0.000003772   0.000058086  -0.000001711   0.000018931   0.000053917
                         0.000001957   0.000000000   0.001825773  -0.023223318   0.086934179   0.008808236   0.001912328   0.038046676

   73    5.1  0.5  0.5  -0.000000000  -0.000000311  -0.028922220  -0.002269367   0.001610932  -0.015945891  -0.000958661   0.000048123
                         0.000000000   0.000000926   0.026296766   0.002063446  -0.005465168   0.054136826  -0.000192634   0.000014046

   74    6.1  0.5  0.5   0.000000479   0.000000000   0.001684582  -0.021491645   0.033722692   0.003404024  -0.006794572  -0.135277391
                        -0.000000001   0.000000000  -0.000002298   0.000004753  -0.000071000  -0.000008015   0.000007662   0.000068385

   75    7.1  0.5  0.5  -0.000000000   0.000001702  -0.003515850  -0.000277990   0.013182044  -0.130322275   0.002999612  -0.000144414
                         0.000000000   0.000000574  -0.003869525  -0.000303622   0.003882518  -0.038431352  -0.032401953   0.001627338

   76    8.1  0.5  0.5  -0.000000264  -0.000000000  -0.000000690   0.000008789   0.000009834   0.000000995  -0.000000667  -0.000013274
                         0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000014  -0.000000001   0.000000000   0.000000006

   77    9.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000007  -0.000000000   0.000000002   0.000000002
                         0.000000151  -0.000000000   0.000000188  -0.000002390   0.000010322   0.000001046   0.000000072   0.000001433

   78   10.1  0.5  0.5   0.000000000  -0.000001217  -0.000001171  -0.000000092  -0.000000686   0.000006772  -0.000000127   0.000000007
                        -0.000000000  -0.000000410  -0.000001287  -0.000000101  -0.000000202   0.000001997   0.000001403  -0.000000070

   79   11.1  0.5  0.5  -0.000000000  -0.000002141   0.000000911   0.000000072  -0.000000650   0.000006427   0.000000185  -0.000000010
                        -0.000000000  -0.000000722   0.000001001   0.000000079  -0.000000191   0.000001894  -0.000002073   0.000000104

   80   12.1  0.5  0.5  -0.000000000   0.000000150  -0.000002984  -0.000000234   0.000000243  -0.000002410   0.000000391  -0.000000020
                         0.000000000  -0.000000447   0.000002714   0.000000213  -0.000000827   0.000008182   0.000000024  -0.000000001

   81    1.1  0.5 -0.5  -0.000006860  -0.000000000  -0.008989472   0.114520776  -0.020141932  -0.002049179  -0.003308637  -0.065856313
                        -0.000000000  -0.000000000  -0.000004172   0.000001866  -0.000003392  -0.000004572   0.000014162   0.000048301

   82    2.1  0.5 -0.5   0.000000000   0.000002981   0.091256554   0.007160397   0.001158228  -0.011464826  -0.006907754   0.000346939
                         0.000000000  -0.000008845  -0.082952295  -0.006509638  -0.003934070   0.038858189  -0.000599377   0.000027263

   83    3.1  0.5 -0.5   0.000000000  -0.000003915  -0.042047615  -0.003297541  -0.004611582   0.045594875   0.008851544  -0.000446723
                        -0.000000000  -0.000001321  -0.046268638  -0.003630445  -0.001353542   0.013398263  -0.098201646   0.004932111

   84    4.1  0.5 -0.5  -0.000000000   0.000001855   0.015617326   0.001230708  -0.008450890   0.083386140   0.003474642  -0.000190800
                         0.000000000   0.000000625   0.017187834   0.001348636  -0.002483444   0.024582645  -0.037887720   0.001902880

   85    5.1  0.5 -0.5  -0.000000977   0.000000000  -0.003067219   0.039089828  -0.056436396  -0.005697644   0.000049191   0.000972098
                        -0.000000001   0.000000000  -0.000000566   0.000006427   0.000024364   0.000003589  -0.000009662  -0.000105656

   86    6.1  0.5 -0.5   0.000000000  -0.000000153  -0.015907052  -0.001248139   0.000968074  -0.009582369  -0.134723301   0.006766361
                        -0.000000000   0.000000454   0.014451869   0.001131358  -0.003263476   0.032332696  -0.012231493   0.000618561

   87    7.1  0.5 -0.5  -0.000000000   0.000000000  -0.000001495  -0.000000926   0.000102009   0.000005715   0.000002492  -0.000074060
                        -0.000001796  -0.000000000   0.000411658  -0.005228234   0.135870725   0.013741914  -0.001633732  -0.032540417

   88    8.1  0.5 -0.5  -0.000000000   0.000000085   0.000006503   0.000000510   0.000000282  -0.000002787  -0.000013220   0.000000664
                         0.000000000  -0.000000251  -0.000005912  -0.000000464  -0.000000954   0.000009431  -0.000001200   0.000000060

   89    9.1  0.5 -0.5   0.000000000   0.000000144   0.000001607   0.000000127  -0.000001003   0.000009900   0.000000131  -0.000000008
                         0.000000000   0.000000048   0.000001770   0.000000139  -0.000000295   0.000002919  -0.000001427   0.000000072

   90   10.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000005  -0.000000000   0.000000001   0.000000001
                         0.000001284   0.000000000   0.000000137  -0.000001740  -0.000007060  -0.000000715   0.000000071   0.000001409

   91   11.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000004  -0.000000000  -0.000000000   0.000000002
                         0.000002260  -0.000000000  -0.000000107   0.000001353  -0.000006701  -0.000000678  -0.000000105  -0.000002082

   92   12.1  0.5 -0.5   0.000000471   0.000000000  -0.000000317   0.000004033  -0.000008529  -0.000000862  -0.000000020  -0.000000392
                         0.000000001   0.000000000  -0.000000000   0.000000001   0.000000004   0.000000000  -0.000000001  -0.000000012


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.076653906   0.006128092   0.003797800   0.429121446   0.151701901   0.003870329   0.033540669   0.025573735
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000423233   0.000043799   0.000018233  -0.000002124   0.000004963   0.000002887  -0.000009652  -0.000007354
                         0.095792533  -0.007637551  -0.003721000  -0.420140339  -0.176189196  -0.004489214   0.018570958   0.014160218

    3    3.1  1.5  1.5   0.004115336   0.051476515  -0.419059869   0.003708754   0.000162582  -0.006372633  -0.002457663   0.003223279
                         0.001131520   0.013622007   0.061667036  -0.000553546   0.000326654  -0.013445032  -0.135677034   0.177983469

    4    4.1  1.5  1.5  -0.004557694  -0.057902149   0.042809752  -0.000379613   0.004565167  -0.179185823   0.171081479  -0.224390389
                         0.017240768   0.215656219   0.290449563  -0.002570528  -0.002155055   0.084470122  -0.003148708   0.004129593

    5    5.1  1.5  1.5   0.014477412   0.181092977  -0.227839951   0.002016424  -0.001418997   0.055618866   0.003533515  -0.004634294
                         0.003795596   0.048142121   0.033458733  -0.000301020  -0.003021380   0.117650980   0.187321659  -0.245693630

    6    6.1  1.5  1.5   0.007961201   0.101399695  -0.021469676   0.000193189  -0.007647468   0.299418234   0.146547010  -0.192231916
                        -0.030295576  -0.378954542  -0.146818151   0.001299372   0.003602239  -0.141193405  -0.002782729   0.003649616

    7    7.1  1.5  1.5   0.517194335  -0.041290399   0.000292739   0.033402408  -0.184628566  -0.004715712   0.367669126   0.280305663
                        -0.000534807  -0.000169933  -0.000020004  -0.000052591   0.000079302   0.000004539  -0.000194670  -0.000147821

    8    8.1  1.5  1.5   0.000000018   0.000000224   0.000143026  -0.000000734  -0.000417755   0.016354727  -0.003930286   0.005155299
                        -0.000000067  -0.000000838   0.000917228  -0.000008118   0.000196960  -0.007720036   0.000075895  -0.000099538

    9    9.1  1.5  1.5  -0.000000058  -0.000000730   0.011489592  -0.000101685   0.000148292  -0.005812469   0.000081790  -0.000107270
                        -0.000000016  -0.000000194  -0.001689928   0.000014642   0.000314614  -0.012300015   0.004291358  -0.005629390

   10   10.1  1.5  1.5  -0.000001126   0.000000090   0.000027100   0.003072196  -0.005301468  -0.000135483   0.012109978   0.009232542
                         0.000000001   0.000000000  -0.000000611  -0.000000324   0.000003159   0.000000188  -0.000006391  -0.000004854

   11   11.1  1.5  1.5   0.000012998   0.000162591   0.000291758  -0.000002582   0.000002484  -0.000097359  -0.000006977   0.000009152
                         0.000003423   0.000043417  -0.000043293   0.000000451   0.000005327  -0.000206629  -0.000355334   0.000466061

   12   12.1  1.5  1.5   0.000000862   0.000010155  -0.000039350   0.000002269   0.000001749  -0.000044269  -0.000389677   0.000511732
                        -0.000003111  -0.000038911  -0.000267362   0.000002362  -0.000000541   0.000021123   0.000007661  -0.000010047

   13   13.1  1.5  1.5   0.000080132  -0.000006418   0.000006715   0.000746401   0.000269422   0.000006913   0.000049075   0.000035366
                        -0.000000196   0.000000062   0.000000730  -0.000001556  -0.000000652  -0.000000036   0.000000055   0.000000082

   14   14.1  1.5  1.5  -0.000000541  -0.000000050  -0.000000325  -0.000001588  -0.000000543  -0.000000016  -0.000000161  -0.000000118
                        -0.000090372   0.000007200  -0.000006430  -0.000731727  -0.000306929  -0.000007835   0.000032189   0.000024790

   15   15.1  1.5  1.5   0.000005738   0.000071776   0.000777583  -0.000006883   0.000000071  -0.000002804   0.000003580  -0.000004696
                         0.000001488   0.000018740  -0.000113897   0.000000677   0.000000014  -0.000004955   0.000188726  -0.000247551

   16   16.1  1.5  1.5   0.000008611   0.000109717   0.000072979  -0.000000743   0.000015435  -0.000606033  -0.000037752   0.000049531
                        -0.000032739  -0.000409514   0.000499570  -0.000004421  -0.000007287   0.000285631   0.000000505  -0.000000663

   17   17.1  1.5  1.5  -0.000486765   0.000038858   0.000000627   0.000070229  -0.000317200  -0.000008091   0.000641125   0.000488568
                         0.000000500   0.000000171   0.000000037  -0.000000137   0.000000119   0.000000002  -0.000000339  -0.000000253

   18    1.1  1.5  0.5   0.013295417   0.166307687   0.157596656  -0.001394756   0.002982748  -0.116912464   0.003604033  -0.004726779
                         0.003464216   0.044462822  -0.023151684   0.000208573   0.006334267  -0.248108103   0.197854500  -0.259553559

   19    2.1  1.5  0.5   0.009811854   0.124869358   0.025714421  -0.000206277  -0.009721395   0.379714316   0.011393648  -0.014958552
                        -0.037299224  -0.466560526   0.175307806  -0.001551506   0.004564792  -0.178922102  -0.000192452   0.000252410

   20    3.1  1.5  0.5   0.219421141  -0.017521348   0.001800648   0.203738960  -0.243544498  -0.006226204   0.232548142   0.177297556
                        -0.000285602  -0.000053422  -0.000017061  -0.000028482   0.000125527   0.000009202  -0.000127796  -0.000097168

   21    4.1  1.5  0.5   0.000160273  -0.000013481   0.000020962   0.000063538  -0.000220668  -0.000011977   0.000054773   0.000041590
                         0.026462642  -0.002115821   0.000986995   0.111862550  -0.408988758  -0.010447859   0.140244028   0.106923240

   22    5.1  1.5  0.5  -0.215700732   0.017249227  -0.000991099  -0.112215177   0.380688225   0.009741434   0.242662622   0.184997093
                         0.000076153  -0.000024687   0.000015291   0.000170085  -0.000351943  -0.000022676  -0.000312041  -0.000237393

   23    6.1  1.5  0.5   0.000783510   0.000041398  -0.000006901   0.000124000  -0.000344691  -0.000009080  -0.000326701  -0.000248176
                         0.241128791  -0.019249499   0.001184758   0.133736532  -0.232610573  -0.005935067  -0.312120755  -0.237934972

   24    7.1  1.5  0.5  -0.010420801  -0.130349055   0.352963634  -0.003123789  -0.002156757   0.084536540  -0.000291032   0.000381690
                        -0.002727800  -0.035059662  -0.051950653   0.000467732  -0.004563050   0.179203910  -0.015333781   0.020096846

   25    8.1  1.5  0.5   0.000000001  -0.000000000   0.000000809   0.000010814  -0.000003667  -0.000000074   0.000015024   0.000011432
                         0.000000164  -0.000000013  -0.000058486  -0.006596528  -0.008474768  -0.000216172   0.010894235   0.008305349

   26    9.1  1.5  0.5  -0.000000330   0.000000026   0.000105430   0.011918510  -0.000709649  -0.000018542   0.010074582   0.007681094
                         0.000000000   0.000000000  -0.000000291   0.000005562   0.000009900   0.000000458  -0.000014521  -0.000011061

   27   10.1  1.5  0.5   0.000000015   0.000000185  -0.018312894   0.000162072   0.000084466  -0.003310758  -0.000010751   0.000014101
                         0.000000004   0.000000050   0.002695949  -0.000024237   0.000178603  -0.007021256  -0.000624772   0.000820333

   28   11.1  1.5  0.5  -0.000230293   0.000018423   0.000002138   0.000242393  -0.000714716  -0.000018343  -0.000361983  -0.000275956
                         0.000000143  -0.000000056  -0.000000058  -0.000000499   0.000001340   0.000000085   0.000000305   0.000000231

   29   12.1  1.5  0.5   0.000000807  -0.000000384   0.000000814  -0.000000605   0.000001441  -0.000000437   0.000000297   0.000000193
                         0.000151178  -0.000012169  -0.000002711  -0.000292886   0.000815215   0.000019783   0.000112573   0.000083984

   30   13.1  1.5  0.5  -0.000012717  -0.000159052   0.000264531  -0.000002340   0.000005213  -0.000204484   0.000006328  -0.000008301
                        -0.000003598  -0.000041497  -0.000038191   0.000001082   0.000009083  -0.000437630   0.000344863  -0.000452847

   31   14.1  1.5  0.5  -0.000009333  -0.000117457   0.000044150  -0.000000180  -0.000017144   0.000661238   0.000020435  -0.000026440
                         0.000035193   0.000440215   0.000305152  -0.000002701   0.000007921  -0.000310470  -0.000001073   0.000001408

   32   15.1  1.5  0.5   0.000177107  -0.000014195  -0.000002847  -0.000324493   0.000327937   0.000008694  -0.000459948  -0.000350687
                        -0.000000206   0.000000152   0.000000171   0.000000118  -0.000000647  -0.000000170   0.000000644   0.000000492

   33   16.1  1.5  0.5   0.000000280   0.000000078   0.000000001   0.000000238  -0.000000320   0.000000011   0.000000662   0.000000505
                         0.000171772  -0.000013706  -0.000000699  -0.000078970  -0.000077655  -0.000001941   0.000585148   0.000446169

   34   17.1  1.5  0.5   0.000009626   0.000120405   0.000618661  -0.000005475  -0.000003671   0.000143875  -0.000000403   0.000000529
                         0.000002482   0.000032421  -0.000091036   0.000000898  -0.000007981   0.000304874  -0.000021121   0.000027615

   35    1.1  1.5 -0.5   0.172148677  -0.013739113   0.001410261   0.159288117  -0.274273853  -0.007001407  -0.259596566  -0.197887300
                        -0.000149755  -0.000075333   0.000003212  -0.000048027   0.000092884   0.000004233   0.000122628   0.000092610

   36    2.1  1.5 -0.5   0.000548744   0.000121211  -0.000021888  -0.000092121   0.000146939   0.000018186  -0.000027067  -0.000020421
                         0.482981138  -0.038567991  -0.001565005  -0.177183661   0.419757142   0.010739764  -0.014960657  -0.011395255

   37    3.1  1.5 -0.5  -0.016944528  -0.211951815  -0.201570683   0.001783933  -0.002647577   0.103774777   0.003214851  -0.004216335
                        -0.004459090  -0.056763957   0.029644975  -0.000245373  -0.005635250   0.220328695   0.177268434  -0.232509951

   38    4.1  1.5 -0.5  -0.000557725  -0.006967438   0.016229137  -0.000123010  -0.009454732   0.370006242   0.106905359  -0.140220579
                         0.002041034   0.025529433   0.110679037  -0.000979524   0.004445890  -0.174261969  -0.001955793   0.002565061

   39    5.1  1.5 -0.5   0.016661470   0.208410727   0.111043422  -0.000982758   0.004134875  -0.162071131   0.003218480  -0.004221065
                         0.004464512   0.055603782  -0.016175084   0.000129219   0.008820367  -0.344465668   0.184969247  -0.242626108

   40    6.1  1.5 -0.5  -0.004915606  -0.062833520   0.019355111  -0.000179380  -0.005371877   0.210532936  -0.237898090   0.312072395
                         0.018611334   0.232799606   0.132328587  -0.001171120   0.002523498  -0.098912490   0.004196604  -0.005503917

   41    7.1  1.5 -0.5  -0.134981307   0.010771805   0.003158602   0.356766306   0.198142544   0.005047079   0.020100470   0.015336542
                         0.000320761   0.000046884   0.000007787  -0.000009968   0.000016866   0.000004239   0.000006205   0.000004539

   42    8.1  1.5 -0.5  -0.000000003  -0.000000043  -0.000971436   0.000009318  -0.000195550   0.007666614   0.008304113  -0.010892615
                         0.000000013   0.000000158  -0.006524615   0.000057744   0.000092145  -0.003611749  -0.000143717   0.000188488

   43    9.1  1.5 -0.5   0.000000026   0.000000319  -0.011790615   0.000104348  -0.000007495   0.000293760   0.000132427  -0.000173679
                         0.000000007   0.000000085   0.001741350  -0.000015068  -0.000016966   0.000646069   0.007679961  -0.010073095

   44   10.1  1.5 -0.5   0.000000192  -0.000000015  -0.000163874  -0.018510274  -0.007762677  -0.000197569   0.000820453   0.000624864
                        -0.000000000   0.000000000  -0.000000374  -0.000000058   0.000000610  -0.000000210  -0.000001226  -0.000000922

   45   11.1  1.5 -0.5   0.000017787   0.000222494  -0.000239881   0.000002123  -0.000007747   0.000303663  -0.000004924   0.000006457
                         0.000004797   0.000059425   0.000034809  -0.000000254  -0.000016627   0.000647001  -0.000275912   0.000361925

   46   12.1  1.5 -0.5  -0.000003504  -0.000039700  -0.000042059   0.000001200   0.000017707  -0.000737941   0.000083973  -0.000112559
                         0.000011660   0.000145875  -0.000289851   0.000002563  -0.000008834   0.000346441  -0.000001376   0.000001806

   47   13.1  1.5 -0.5  -0.000164374   0.000013215   0.000002472   0.000267272  -0.000483043  -0.000010439  -0.000452923  -0.000344921
                        -0.000000848  -0.000000203   0.000000729  -0.000000744   0.000001733  -0.000000841   0.000000160   0.000000115

   48   14.1  1.5 -0.5  -0.000000169  -0.000000042  -0.000000215  -0.000000764   0.000001257   0.000000148   0.000000914   0.000000691
                        -0.000455616   0.000036409  -0.000002698  -0.000308328   0.000730497   0.000018885  -0.000026461  -0.000020451

   49   15.1  1.5 -0.5  -0.000013677  -0.000171085   0.000321050  -0.000002842   0.000003555  -0.000139302  -0.000006060   0.000007948
                        -0.000003801  -0.000045794  -0.000047143   0.000000246   0.000007936  -0.000296881  -0.000350635   0.000459879

   50   16.1  1.5 -0.5  -0.000003453  -0.000044491  -0.000011736   0.000000103  -0.000001751   0.000070372   0.000446100  -0.000585058
                         0.000013264   0.000165910  -0.000078094   0.000000691   0.000000837  -0.000032836  -0.000007830   0.000010269

   51   17.1  1.5 -0.5   0.000124693  -0.000009940   0.000005548   0.000625323   0.000337117   0.000008785   0.000027620   0.000021125
                        -0.000000332  -0.000000080   0.000000091  -0.000000038   0.000000079  -0.000000085   0.000000013   0.000000009

   52    1.1  1.5 -1.5  -0.005921539  -0.074070213   0.424545815  -0.003757305  -0.001650959   0.064711190  -0.000477729   0.000626555
                        -0.001577622  -0.019733852  -0.062498534   0.000553123  -0.003500540   0.137207612  -0.025569273   0.033534816

   53    2.1  1.5 -1.5   0.001923895   0.025069885   0.061188397  -0.000559977   0.004059063  -0.159353162  -0.014157609   0.018567537
                        -0.007391396  -0.092454796   0.415660781  -0.003678668  -0.001917566   0.075161177   0.000271873  -0.000356565

   54    3.1  1.5 -1.5  -0.053248311   0.004267924   0.003749829   0.423572894   0.014878795   0.000364796  -0.178012624  -0.135699269
                        -0.000089298  -0.000033925   0.000007490  -0.000023642   0.000028541   0.000007708   0.000102097   0.000077276

   55    4.1  1.5 -1.5   0.000431765   0.000034406  -0.000001186  -0.000051335   0.000035492  -0.000001797   0.000062845   0.000047724
                         0.223293701  -0.017832988   0.002598407   0.293587501   0.198097853   0.005048268   0.224428377   0.171110446

   56    5.1  1.5 -1.5  -0.187382816   0.014966579   0.002038765   0.230283572  -0.130135303  -0.003338002   0.245737328   0.187354980
                        -0.000101299   0.000059417   0.000004132  -0.000081324  -0.000118633   0.000005404   0.000043813   0.000033642

   57    6.1  1.5 -1.5  -0.000423513  -0.000106460   0.000001884  -0.000142287  -0.000019119  -0.000004101  -0.000057997  -0.000044677
                        -0.392285946   0.031323973  -0.001313653  -0.148379568  -0.331039055  -0.008453394   0.192266549   0.146573421

   58    7.1  1.5 -1.5   0.039942414   0.499624122   0.033053905  -0.000292531   0.002007467  -0.078684929  -0.005088446   0.006673596
                         0.010465634   0.133663768  -0.004812796   0.000022845   0.004267088  -0.167022141  -0.280259512   0.367608606

   59    8.1  1.5 -1.5  -0.000000001  -0.000000000   0.000000456  -0.000007913   0.000006024  -0.000000060   0.000003218   0.000002462
                        -0.000000867   0.000000069   0.000008138   0.000928278  -0.018085243  -0.000461858  -0.005156259  -0.003931018

   60    9.1  1.5 -1.5   0.000000756  -0.000000060  -0.000102734  -0.011613207   0.013604229   0.000347811   0.005630412   0.004292137
                         0.000000000  -0.000000000   0.000000324   0.000001470   0.000010326  -0.000000080   0.000002092   0.000001611

   61   10.1  1.5 -1.5  -0.000000087  -0.000001088   0.003039485  -0.000026900   0.000057623  -0.002258579  -0.000167615   0.000219831
                        -0.000000023  -0.000000291  -0.000447123   0.000003342   0.000122619  -0.004796289  -0.009231021   0.012107985

   62   11.1  1.5 -1.5  -0.000168289   0.000013441  -0.000002620  -0.000294952   0.000228417   0.000005878  -0.000466151  -0.000355402
                         0.000000096   0.000000038  -0.000000070  -0.000000339  -0.000000084  -0.000000026  -0.000000444  -0.000000338

   63   12.1  1.5 -1.5   0.000000205   0.000000032   0.000001900  -0.000000009  -0.000000221   0.000000257   0.000000486   0.000000380
                        -0.000040213   0.000003228  -0.000002667  -0.000270242   0.000049050   0.000001813  -0.000511830  -0.000389752

   64   13.1  1.5 -1.5   0.000006186   0.000077381   0.000738669  -0.000006537  -0.000002917   0.000114337  -0.000000742   0.000000971
                         0.000001712   0.000020818  -0.000107168   0.000001700  -0.000006267   0.000243958  -0.000035358   0.000049065

   65   14.1  1.5 -1.5  -0.000001805  -0.000023788   0.000105000  -0.000000615   0.000007093  -0.000277835  -0.000024784   0.000032180
                         0.000006970   0.000087186   0.000724156  -0.000006409  -0.000003328   0.000130435   0.000000581  -0.000000762

   66   15.1  1.5 -1.5  -0.000074181   0.000005928  -0.000006908  -0.000785880   0.000005678   0.000000043   0.000247596   0.000188760
                        -0.000000369   0.000000039   0.000000333   0.000000567   0.000000422   0.000000058   0.000000071   0.000000054

   67   16.1  1.5 -1.5  -0.000000594  -0.000000107  -0.000000091   0.000000558   0.000000173  -0.000000007  -0.000000263  -0.000000200
                        -0.000423957   0.000033852   0.000004482   0.000504872   0.000669971   0.000017068  -0.000049535  -0.000037755

   68   17.1  1.5 -1.5  -0.000037592  -0.000470229   0.000069500  -0.000000615   0.000003449  -0.000135199  -0.000008873   0.000011638
                        -0.000009839  -0.000125796  -0.000010093   0.000000128   0.000007319  -0.000286944  -0.000488487   0.000641019

   69    1.1  0.5  0.5   0.003483003   0.043567282   0.061529146  -0.000544544  -0.000256603   0.010057870   0.000010938  -0.000014346
                         0.000910770   0.011719867  -0.009057838   0.000081271  -0.000542302   0.021328209   0.000708078  -0.000931569

   70    2.1  0.5  0.5   0.054535066  -0.004353994   0.000542172   0.061278877  -0.018540127  -0.000475612   0.014349745   0.010942085
                        -0.000061145  -0.000016934  -0.000001100  -0.000004346   0.000014672   0.000001602  -0.000006900  -0.000005275

   71    3.1  0.5  0.5  -0.000007397  -0.000011649  -0.000002141  -0.000008332   0.000022567   0.000001471   0.000002929   0.000002207
                        -0.063367812   0.005062667  -0.000102404  -0.011605252   0.063870058   0.001631395   0.011523050   0.008784601

   72    4.1  0.5  0.5   0.000162800   0.000036500   0.000001978  -0.000001151  -0.000003645   0.000000501   0.000019574   0.000014836
                         0.101516442  -0.008102550  -0.000416953  -0.047079254  -0.018349218  -0.000466879   0.034410273   0.026232182

   73    5.1  0.5  0.5  -0.009505190  -0.118896312   0.017462038  -0.000154542   0.000481016  -0.018853985  -0.000509878   0.000668714
                        -0.002503913  -0.031824395  -0.002565976   0.000019753   0.001022931  -0.040023893  -0.028132250   0.036899658

   74    6.1  0.5  0.5   0.006311673  -0.000505528   0.000051527   0.005802794   0.055048931   0.001405525   0.029325440   0.022357427
                         0.000079833  -0.000002707   0.000001224   0.000007167  -0.000016073  -0.000000919  -0.000012085  -0.000009169

   75    7.1  0.5  0.5   0.000341043   0.004190504  -0.000306957   0.000001069  -0.000088663   0.003473863  -0.040219397   0.052754766
                        -0.001249684  -0.015631444  -0.002069927   0.000018319   0.000041887  -0.001641825   0.000731146  -0.000958913

   76    8.1  0.5  0.5   0.000004685  -0.000000374   0.000348717   0.039331503   0.050509718   0.001288392  -0.064946022  -0.049512366
                         0.000000002  -0.000000002   0.000004268   0.000001842  -0.000018126  -0.000000346   0.000036634   0.000027796

   77    9.1  0.5  0.5   0.000000012   0.000000003  -0.000002040  -0.000001500   0.000014490   0.000001597  -0.000029337  -0.000022311
                         0.000008555  -0.000000683  -0.000628462  -0.071045040   0.004216210   0.000110171  -0.060068077  -0.045797291

   78   10.1  0.5  0.5   0.000000049   0.000000628  -0.004834817   0.000038887   0.002268294  -0.088758726  -0.002806292   0.003679501
                        -0.000000188  -0.000002346  -0.032929761   0.000291434  -0.001066917   0.041819061   0.000047776  -0.000062658

   79   11.1  0.5  0.5   0.000000010   0.000000139  -0.014298852   0.000128217  -0.000759492   0.029887250   0.003033808  -0.003983796
                        -0.000000040  -0.000000497  -0.097134852   0.000859661   0.000359608  -0.014095282  -0.000052248   0.000068525

   80   12.1  0.5  0.5  -0.000000904  -0.000011303   0.024172890  -0.000213934   0.000740467  -0.029023491   0.000820287  -0.001075824
                        -0.000000239  -0.000003025  -0.003547378   0.000030798   0.001574046  -0.061589655   0.045012159  -0.059042482

   81    1.1  0.5 -0.5  -0.045115978   0.003600074  -0.000550574  -0.062192285  -0.023580782  -0.000599946   0.000931674   0.000708159
                         0.000108837   0.000016596  -0.000001095   0.000000033   0.000001038  -0.000000758  -0.000003058  -0.000002291

   82    2.1  0.5 -0.5   0.004211598   0.052681168   0.060626106  -0.000536551   0.000201432  -0.007895356  -0.000199129   0.000261161
                         0.001104533   0.014098642  -0.008920540   0.000077876   0.000430853  -0.016774977  -0.010940275   0.014347370

   83    3.1  0.5 -0.5  -0.001292081  -0.016320616   0.001681980  -0.000012797  -0.001476151   0.057777248  -0.008783110   0.011521094
                         0.004895024   0.061230034   0.011482721  -0.000101624   0.000694571  -0.027224518   0.000161894  -0.000212328

   84    4.1  0.5 -0.5   0.002050658   0.026291799   0.006855625  -0.000062684   0.000422058  -0.016597605  -0.026227882   0.034404634
                        -0.007838843  -0.098052821   0.046577425  -0.000412219  -0.000199609   0.007823894   0.000475196  -0.000623229

   85    5.1  0.5 -0.5   0.123081699  -0.009829418  -0.000155771  -0.017649561   0.044242337   0.001130382  -0.036905711  -0.028136866
                        -0.000142947  -0.000027509   0.000002966   0.000004608  -0.000020326  -0.000001292   0.000020706   0.000015735

   86    6.1  0.5 -0.5   0.000489185   0.006119484   0.005739876  -0.000050799  -0.000598721   0.023467580  -0.000408480   0.000535730
                         0.000127528   0.001547740  -0.000852227   0.000008716  -0.001271626   0.049796162  -0.022353697   0.029320549

   87    7.1  0.5 -0.5  -0.000025086   0.000007828  -0.000001610   0.000002214   0.000003119   0.000000064  -0.000026739  -0.000020299
                        -0.016183379   0.001295361  -0.000018279  -0.002092562  -0.003842304  -0.000098059  -0.052763473  -0.040226037

   88    8.1  0.5 -0.5   0.000000362   0.000004528   0.038911851  -0.000344377  -0.000549274   0.021529440   0.000897123  -0.001176595
                         0.000000094   0.000001204  -0.005730181   0.000055011  -0.001165441   0.045691522   0.049504246  -0.064935374

   89    9.1  0.5 -0.5   0.000000173   0.000002214   0.010345729  -0.000089513  -0.000100326   0.003819555   0.045789716  -0.060058143
                        -0.000000661  -0.000008263   0.070287720  -0.000622058   0.000045551  -0.001785396  -0.000833208   0.001092768

   90   10.1  0.5 -0.5  -0.000000003  -0.000000001  -0.000003973  -0.000012724   0.000038162   0.000002603  -0.000006087  -0.000004655
                        -0.000002429   0.000000194  -0.000293990  -0.033282795   0.098116990   0.002506684  -0.003680030  -0.002806694

   91   11.1  0.5 -0.5  -0.000000006  -0.000000001   0.000001646  -0.000000625  -0.000000393   0.000001275   0.000005906   0.000004434
                        -0.000000516   0.000000041  -0.000869168  -0.098181651  -0.033044283  -0.000840324   0.003984381   0.003034255

   92   12.1  0.5 -0.5   0.000011701  -0.000000935  -0.000216139  -0.024431790   0.068085594   0.001739514   0.059052276   0.045019628
                        -0.000000014  -0.000000002   0.000000689   0.000011059  -0.000021727  -0.000001718  -0.000027305  -0.000020704


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.000648544  -0.353975033  -0.009582282   0.086797576   0.000125915  -0.090514882  -0.039845926  -0.000137186
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000006381   0.000002167  -0.000002698   0.000026224  -0.000002024   0.000001998  -0.000003593   0.000002449
                        -0.000632736   0.350504452   0.012124140  -0.109840288  -0.000038128   0.027458237  -0.079440395  -0.000275378

    3    3.1  1.5  1.5   0.087314665   0.000159976   0.022757579   0.002512396   0.066969910   0.000093162   0.000155506  -0.045167046
                        -0.129354593  -0.000228154  -0.230541179  -0.025461679  -0.002310285  -0.000002110  -0.000119410   0.034339134

    4    4.1  1.5  1.5  -0.224282013  -0.000424512   0.260827790   0.028787264  -0.002076818  -0.000001921   0.000018577  -0.005395130
                        -0.151277577  -0.000277168   0.025639968   0.002830600  -0.060054305  -0.000083542   0.000024457  -0.007103516

    5    5.1  1.5  1.5   0.124149382   0.000227459  -0.042892703  -0.004735266   0.035272239   0.000049069   0.000084256  -0.024471957
                        -0.184094340  -0.000343252   0.438528231   0.048405177  -0.001199483   0.000000062  -0.000067960   0.018622644

    6    6.1  1.5  1.5   0.017981464   0.000028623   0.421223357   0.046506340   0.001223351   0.000004625  -0.000040682   0.012248329
                         0.012375293   0.000022678   0.041234680   0.004552236   0.036211038   0.000050372  -0.000055333   0.016072202

    7    7.1  1.5  1.5   0.000005234   0.000468604   0.018744160  -0.169762918   0.000029291  -0.021063768   0.037022159   0.000127621
                         0.000004076   0.000019757   0.000008531  -0.000074894  -0.000000308   0.000002491  -0.000006075   0.000000184

    8    8.1  1.5  1.5   0.006325374   0.000011547   0.002392863   0.000264535   0.000000005   0.000000000   0.000000025  -0.000007094
                         0.004276763   0.000007836   0.000238861   0.000026370   0.000000182   0.000000000   0.000000032  -0.000009319

    9    9.1  1.5  1.5  -0.004279470  -0.000007841  -0.000236749  -0.000026137  -0.000001943  -0.000000003   0.000000023  -0.000006746
                         0.006329398   0.000011555   0.002371257   0.000262150   0.000000067   0.000000000  -0.000000018   0.000005142

   10   10.1  1.5  1.5   0.000008137  -0.004168594   0.001451335  -0.013146163   0.000000004  -0.000002881   0.000000701   0.000000002
                         0.000000340  -0.000001321   0.000000590  -0.000005326  -0.000000000  -0.000000000   0.000000000  -0.000000000

   11   11.1  1.5  1.5  -0.000651556  -0.000001194   0.000267132   0.000029491  -0.001062572  -0.000001480  -0.000002565   0.000745032
                         0.000968966   0.000001645  -0.002746031  -0.000303067   0.000038240  -0.000000106   0.000002377  -0.000566754

   12   12.1  1.5  1.5   0.001020766  -0.000003378  -0.002682360  -0.000295012   0.000040537  -0.000009823  -0.000003533  -0.000107990
                         0.000687265   0.000001270  -0.000260256  -0.000028735   0.001175530   0.000001641   0.000000471  -0.000141968

   13   13.1  1.5  1.5   0.000001114  -0.002085963  -0.000051560   0.000528458   0.000005082  -0.003735617  -0.001675937  -0.000005561
                        -0.000001831   0.000004374   0.000000801  -0.000001294  -0.000003326   0.000002405  -0.000006975   0.000000250

   14   14.1  1.5  1.5   0.000000189   0.000004438   0.000000169  -0.000000896   0.000001211   0.000008062   0.000003314  -0.000000767
                        -0.000004076   0.002065706   0.000070768  -0.000647517  -0.000001624   0.001137469  -0.003291413  -0.000010740

   15   15.1  1.5  1.5  -0.000612200  -0.000001119  -0.000097002  -0.000010709  -0.002950777  -0.000004101  -0.000006862   0.001993531
                         0.000904557   0.000002587   0.000986774   0.000108695   0.000099147   0.000000620   0.000003736  -0.001516393

   16   16.1  1.5  1.5  -0.000845454  -0.000001319  -0.001149021  -0.000126959  -0.000089365   0.000000258   0.000002028  -0.000544522
                        -0.000571669  -0.000001048  -0.000114213  -0.000012609  -0.002657243  -0.000003697   0.000002456  -0.000712953

   17   17.1  1.5  1.5  -0.000000182  -0.000030966   0.000110249  -0.000991920   0.000001287  -0.000933316   0.001507008   0.000005223
                        -0.000000162   0.000000243   0.000000126  -0.000000473  -0.000000331   0.000000173  -0.000000455   0.000000044

   18    1.1  1.5  0.5  -0.098247024  -0.000180007   0.031808301   0.003511570   0.027961144   0.000038897   0.000000403  -0.000116890
                         0.145648111   0.000274417  -0.322624962  -0.035605941  -0.000964707  -0.000000666  -0.000002096   0.000090024

   19    2.1  1.5  0.5   0.091680109   0.000190557  -0.346761730  -0.038280984  -0.000835331  -0.000000141  -0.000086250   0.026452718
                         0.061771558   0.000113178  -0.034215256  -0.003777299  -0.024066982  -0.000033480  -0.000119775   0.034788970

   20    3.1  1.5  0.5   0.000789275  -0.427367548   0.010376466  -0.094145666  -0.000100264   0.072104248   0.024265426   0.000083745
                         0.000004259  -0.000019189   0.000006517  -0.000074239   0.000001154  -0.000000043   0.000000167   0.000000265

   21    4.1  1.5  0.5  -0.000005344   0.000041146  -0.000010348   0.000080896   0.000001201   0.000002300   0.000017760   0.000000378
                        -0.000434447   0.241379761   0.028916260  -0.261796839   0.000106270  -0.076422473  -0.017608297  -0.000060865

   22    5.1  1.5  0.5   0.000286629  -0.153090162   0.003700921  -0.033713684   0.000022153  -0.015955720  -0.124238644  -0.000428100
                         0.000004344  -0.000116749  -0.000012269   0.000092389  -0.000001209  -0.000006518  -0.000040066  -0.000000609

   23    6.1  1.5  0.5   0.000008042   0.000096199   0.000004228  -0.000038797  -0.000001272   0.000011177   0.000089157   0.000001342
                         0.000356335  -0.201140127  -0.024077949   0.218107609  -0.000008187   0.005917312  -0.050902112  -0.000176038

   24    7.1  1.5  0.5  -0.251864499  -0.000461460  -0.019228004  -0.002122743   0.047538092   0.000066130   0.000042994  -0.012487568
                         0.373230095   0.000679004   0.194139794   0.021455186  -0.001642389  -0.000001499  -0.000033165   0.009499108

   25    8.1  1.5  0.5   0.000000179  -0.000006353  -0.000000733   0.000006269   0.000000000   0.000000001  -0.000000004  -0.000000000
                        -0.000020812   0.011223821  -0.000532174   0.004824207   0.000000007  -0.000005159   0.000003618   0.000000013

   26    9.1  1.5  0.5   0.000011411  -0.006407497  -0.001143044   0.010349886  -0.000000001   0.000000912  -0.000004009  -0.000000014
                        -0.000000205  -0.000009072   0.000000062  -0.000000957   0.000000000   0.000000004  -0.000000003  -0.000000000

   27   10.1  1.5  0.5   0.002468707   0.000004523   0.000136206   0.000015037   0.000005296   0.000000007   0.000000018  -0.000005198
                        -0.003658191  -0.000006678  -0.001376635  -0.000152190  -0.000000183  -0.000000000  -0.000000014   0.000003952

   28   11.1  1.5  0.5  -0.000001074   0.000544577  -0.000013057   0.000120817  -0.000001481   0.001068851   0.005237997   0.000017958
                        -0.000000049  -0.000000626  -0.000000061   0.000000801   0.000000135   0.000003280   0.000002465  -0.000000091

   29   12.1  1.5  0.5  -0.000001817   0.000000522   0.000000452   0.000000020   0.000003399  -0.000002847  -0.000007159  -0.000000185
                         0.000003585  -0.000484241  -0.000062536   0.000523644  -0.000003533   0.002451536   0.001807959   0.000006359

   30   13.1  1.5  0.5  -0.000553850  -0.000001016   0.000184964   0.000020420   0.001126459   0.000001574  -0.000000001   0.000005521
                         0.000823545   0.000003008  -0.001920140  -0.000213509  -0.000040971  -0.000006529  -0.000004527   0.000000653

   31   14.1  1.5  0.5   0.000541186  -0.000000068  -0.002042779  -0.000225780  -0.000037127   0.000001435  -0.000003002   0.001095849
                         0.000361898   0.000000663  -0.000197525  -0.000021806  -0.000997174  -0.000001386  -0.000004961   0.001441137

   32   15.1  1.5  0.5  -0.000004584   0.002619169  -0.000064536   0.000576780   0.000003969  -0.002866917  -0.000282313  -0.000000460
                         0.000000140   0.000001743   0.000000063  -0.000001318  -0.000000508  -0.000002783   0.000000111   0.000000673

   33   16.1  1.5  0.5   0.000000015  -0.000001898  -0.000000039   0.000000112  -0.000000072   0.000002232   0.000000223  -0.000000027
                        -0.000003292   0.001786904   0.000214281  -0.001938432   0.000002812  -0.002019163   0.001307649   0.000004522

   34   17.1  1.5  0.5  -0.001492961  -0.000002735  -0.000110380  -0.000012186   0.001987825   0.000002765   0.000001780  -0.000517078
                         0.002212449   0.000004158   0.001113069   0.000122870  -0.000068737  -0.000000723  -0.000001859   0.000393473

   35    1.1  1.5 -0.5  -0.000328160   0.175686792  -0.035778681   0.324189165   0.000038897  -0.027977782   0.000147535   0.000001589
                        -0.000004293   0.000034240  -0.000014149   0.000138147  -0.000000675  -0.000000129   0.000000922   0.000001425

   36    2.1  1.5 -0.5   0.000012779  -0.000080668   0.000013314  -0.000121356   0.000001014   0.000005088  -0.000003295   0.000003829
                        -0.000221265   0.110548457  -0.038466889   0.348445643   0.000033465  -0.024081474   0.043703761   0.000147548

   37    3.1  1.5 -0.5  -0.239044293  -0.000437973   0.009203287   0.001016017   0.072061384   0.000100245  -0.000066506   0.019316716
                         0.354260988   0.000656622  -0.093694778  -0.010326607  -0.002485864  -0.000002304   0.000050895  -0.014685891

   38    4.1  1.5 -0.5  -0.200059657  -0.000357129  -0.260530655  -0.028776545   0.002637082   0.000002464  -0.000037137   0.010670913
                        -0.135056745  -0.000247449  -0.025717100  -0.002839126   0.076376961   0.000106248  -0.000048223   0.014006572

   39    5.1  1.5 -0.5  -0.085538563  -0.000156733   0.003414104   0.000376900  -0.015946010  -0.000022182   0.000340426  -0.098877587
                         0.126963639   0.000240020  -0.033540497  -0.003681699   0.000556613  -0.000000444  -0.000259576   0.075222769

   40    6.1  1.5 -0.5   0.166781354   0.000290872   0.217049910   0.023961179  -0.000192838   0.000000989  -0.000107609   0.030877607
                         0.112433713   0.000205993   0.021453833   0.002368446  -0.005914179  -0.000008226  -0.000139325   0.040467349

   41    7.1  1.5 -0.5  -0.000820965   0.450262623   0.021559941  -0.195089661   0.000066143  -0.047566454   0.015689882   0.000054298
                         0.000002689   0.000003272   0.000001793   0.000003782  -0.000000782  -0.000002463   0.000004250   0.000000381

   42    8.1  1.5 -0.5  -0.009307119  -0.000017352   0.004800110   0.000529512   0.000000179   0.000000000   0.000000008  -0.000002192
                        -0.006273097  -0.000011494   0.000481618   0.000053170   0.000005156   0.000000007   0.000000010  -0.000002878

   43    9.1  1.5 -0.5  -0.003576696  -0.000006553  -0.001020835  -0.000112698   0.000000911   0.000000001   0.000000011  -0.000003189
                         0.005316328   0.000009344   0.010299419   0.001137474  -0.000000036  -0.000000000  -0.000000008   0.000002429

   44   10.1  1.5 -0.5   0.000008066  -0.004413261  -0.000152931   0.001383357   0.000000007  -0.000005299   0.000006529   0.000000023
                        -0.000000014   0.000000029  -0.000000033   0.000000111  -0.000000000   0.000000000  -0.000000000   0.000000000

   45   11.1  1.5 -0.5   0.000305144   0.000000560  -0.000011108  -0.000001226   0.001068102   0.000001485  -0.000014351   0.004168286
                        -0.000451057  -0.000000918   0.000120308   0.000012999  -0.000040128   0.000000084   0.000010796  -0.003172068

   46   12.1  1.5 -0.5   0.000401685   0.000003988   0.000521093   0.000062276  -0.000087366  -0.000003519   0.000003996  -0.001099900
                         0.000270441   0.000000500   0.000051620   0.000005712  -0.002449981  -0.000003414   0.000004950  -0.001434917

   47   13.1  1.5 -0.5  -0.000003061   0.000992459  -0.000214482   0.001929021   0.000001799  -0.001127202  -0.000004000   0.000002739
                        -0.000000840   0.000001580  -0.000000719   0.000005148   0.000006471  -0.000002110   0.000003862   0.000003604

   48   14.1  1.5 -0.5  -0.000000587  -0.000002745   0.000000548  -0.000004733   0.000001482   0.000002725  -0.000000170   0.000000613
                        -0.000000314   0.000651034  -0.000226830   0.002052301   0.000001336  -0.000997862   0.001810459   0.000005766

   49   15.1  1.5 -0.5   0.001463662   0.000002680  -0.000058148  -0.000006422  -0.002865117  -0.000003984   0.000000774  -0.000224807
                        -0.002172037  -0.000003722   0.000573843   0.000064216   0.000101623  -0.000000371   0.000000257   0.000170771

   50   16.1  1.5 -0.5  -0.001482249  -0.000002738  -0.001929009  -0.000213242   0.000071844   0.000000169   0.000002759  -0.000791229
                        -0.000997983  -0.000001829  -0.000190903  -0.000021076   0.002017885   0.000002808   0.000003583  -0.001041107

   51   17.1  1.5 -0.5  -0.000004977   0.002669056   0.000123473  -0.001118529   0.000002789  -0.001989013   0.000649762   0.000002542
                        -0.000000058   0.000000062  -0.000000019   0.000000160   0.000000627  -0.000000163   0.000000287   0.000000402

   52    1.1  1.5 -1.5   0.198006008   0.000362781   0.008553080   0.000944243   0.090461071   0.000125840  -0.000109209   0.031719883
                        -0.293414289  -0.000537586  -0.086375135  -0.009535646  -0.003120642  -0.000004341   0.000083027  -0.024115283

   53    2.1  1.5 -1.5   0.290536269   0.000520914   0.109308284   0.012065398   0.000944669  -0.000000708   0.000168612  -0.048075520
                         0.196066436   0.000359228   0.010797625   0.001192034   0.027441982   0.000038175   0.000217736  -0.063241765

   54    3.1  1.5 -1.5  -0.000278607   0.156065567   0.025585331  -0.231661688  -0.000093179   0.067009748  -0.056738330  -0.000196062
                         0.000004982  -0.000018035   0.000008839  -0.000070833   0.000001103   0.000000019  -0.000000432  -0.000000944

   55    4.1  1.5 -1.5   0.000007715  -0.000062669   0.000019889  -0.000186932  -0.000000960  -0.000005117   0.000004277   0.000000014
                        -0.000506925   0.270531556  -0.028926086   0.262084927  -0.000083558   0.060090204   0.008920053   0.000030712

   56    5.1  1.5 -1.5  -0.000411762   0.222044568  -0.048636207   0.440620600  -0.000049038   0.035292624  -0.030751900  -0.000108203
                        -0.000003464   0.000069447  -0.000057653   0.000528863   0.000001754  -0.000017295  -0.000014052  -0.000003108

   57    6.1  1.5 -1.5   0.000002787  -0.000199590   0.000052680  -0.000473584  -0.000002886  -0.000025808   0.000023337  -0.000001103
                         0.000036412  -0.021827530  -0.046728576   0.423236566   0.000050502  -0.036231688  -0.020207343  -0.000068669

   58    7.1  1.5 -1.5  -0.000245750  -0.000000451  -0.016654000  -0.001838570   0.021051332   0.000029284   0.000101482  -0.029475662
                         0.000399483  -0.000006618   0.168944068   0.018653773  -0.000723717  -0.000000702  -0.000077384   0.022401465

   59    8.1  1.5 -1.5   0.000000036  -0.000006784  -0.000000174   0.000001904  -0.000000000  -0.000000002  -0.000000007  -0.000000000
                         0.000013954  -0.007635510  -0.000265846   0.002404755   0.000000000  -0.000000182   0.000011712   0.000000040

   60    9.1  1.5 -1.5   0.000013964  -0.007640360  -0.000263450   0.002383045   0.000000003  -0.000001944  -0.000008483  -0.000000029
                        -0.000000036   0.000006777   0.000000178  -0.000001932  -0.000000000   0.000000000  -0.000000010  -0.000000000

   61   10.1  1.5 -1.5   0.002330727   0.000004270  -0.001290130  -0.000142428   0.000002879   0.000000004   0.000000002  -0.000000558
                        -0.003456138  -0.000006935   0.013082706   0.001444329  -0.000000099  -0.000000000  -0.000000001   0.000000424

   62   11.1  1.5 -1.5   0.000002031  -0.001167654   0.000304498  -0.002758990   0.000001475  -0.001063259   0.000936099   0.000003481
                        -0.000000070  -0.000001936   0.000000517  -0.000004763  -0.000000157  -0.000001583   0.000000269   0.000000340

   63   12.1  1.5 -1.5   0.000002942   0.000001312  -0.000000475   0.000005332   0.000009874  -0.000000015  -0.000000046   0.000003098
                        -0.000002089  -0.001230567   0.000296407  -0.002694951   0.000001302  -0.001176228   0.000178373  -0.000001764

   64   13.1  1.5 -1.5   0.001170469   0.000002141   0.000053362   0.000005878   0.003733479   0.000005194  -0.000004579   0.001329931
                        -0.001726634   0.000000100  -0.000525759  -0.000051230  -0.000126387   0.000003149   0.000003166  -0.001019852

   65   14.1  1.5 -1.5   0.001709807   0.000003484   0.000644278   0.000070407   0.000031158   0.000001266   0.000005890  -0.001994645
                         0.001159190   0.000002123   0.000064698   0.000007141   0.001137071   0.000001581   0.000009014  -0.002618168

   66   15.1  1.5 -1.5   0.000002771  -0.001092250  -0.000109221   0.000991530   0.000004120  -0.002952441   0.002504718   0.000007724
                         0.000000519   0.000001471  -0.000000054   0.000000708   0.000000479   0.000002644   0.000000633  -0.000001179

   67   16.1  1.5 -1.5  -0.000000131   0.000000935   0.000000037  -0.000000432  -0.000000385   0.000002301  -0.000001985  -0.000000128
                        -0.000001680   0.001020587   0.000127584  -0.001154684  -0.000003686   0.002658744   0.000897107   0.000003183

   68   17.1  1.5 -1.5   0.000017523   0.000000032  -0.000097273  -0.000010739   0.000932767   0.000001298   0.000004131  -0.001199949
                        -0.000025532   0.000000241   0.000987139   0.000109725  -0.000032005   0.000000287  -0.000003196   0.000911699

   69    1.1  0.5  0.5  -0.000002552  -0.000000005   0.000000057   0.000000006   0.660803561   0.000919244   0.000598611  -0.173867456
                         0.000003781   0.000000007  -0.000000558  -0.000000061  -0.022796353  -0.000020864  -0.000460816   0.132183857

   70    2.1  0.5  0.5  -0.000000025   0.000014034   0.000001858  -0.000016831  -0.000862244   0.620070951  -0.032426594  -0.000111071
                         0.000000000   0.000000000   0.000000001  -0.000000005   0.000009741   0.000001258  -0.000007534   0.000000724

   71    3.1  0.5  0.5   0.000000000  -0.000000002   0.000000001  -0.000000005  -0.000004738   0.000001345  -0.000006182  -0.000010036
                        -0.000000011   0.000005637  -0.000001451   0.000013134  -0.000436538   0.313925688   0.668419939   0.002308928

   72    4.1  0.5  0.5   0.000000000  -0.000000001  -0.000000000   0.000000001   0.000003248  -0.000000726   0.000008082  -0.000004712
                         0.000000031  -0.000017272  -0.000000658   0.000005961   0.000247317  -0.177865435   0.148941334   0.000516396

   73    5.1  0.5  0.5  -0.000003587  -0.000000007   0.000002138   0.000000236   0.084496370   0.000117543   0.001023575  -0.297299141
                         0.000005328   0.000000010  -0.000021677  -0.000002393  -0.002916568  -0.000002862  -0.000782957   0.226037041

   74    6.1  0.5  0.5  -0.000000033   0.000018416  -0.000000358   0.000003236  -0.000008076   0.005816761  -0.515424710  -0.001781005
                         0.000000000   0.000000001  -0.000000000   0.000000003   0.000000465   0.000001107  -0.000004007  -0.000008485

   75    7.1  0.5  0.5   0.000013131   0.000000025  -0.000022013  -0.000002429  -0.002647545  -0.000002504   0.000431510  -0.124119425
                         0.000008858   0.000000016  -0.000002171  -0.000000240  -0.076747955  -0.000106764   0.000562094  -0.163261172

   76    8.1  0.5  0.5   0.000177959  -0.098868992  -0.011845258   0.107242273  -0.000000023   0.000016336  -0.000010769  -0.000000037
                        -0.000002165   0.000007749  -0.000004021   0.000031133   0.000000000  -0.000000000  -0.000000000  -0.000000000

   77    9.1  0.5  0.5   0.000001419  -0.000006187   0.000002209  -0.000025069   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000263832   0.142859927  -0.003469881   0.031481977   0.000000003  -0.000002049   0.000010536   0.000000036

   78   10.1  0.5  0.5   0.028024432   0.000057746  -0.140865158  -0.015551977  -0.000000031  -0.000000000  -0.000000054   0.000015465
                         0.018894984   0.000034619  -0.013892224  -0.001533674  -0.000000896  -0.000000001  -0.000000070   0.000020342

   79   11.1  0.5  0.5   0.118047998   0.000215980   0.033437828   0.003698158   0.000000389   0.000000000   0.000000026  -0.000007358
                         0.079662700   0.000145957   0.003311671   0.000365605   0.000011268   0.000000016   0.000000033  -0.000009680

   80   12.1  0.5  0.5   0.024594216   0.000045061  -0.013605733  -0.001502046  -0.000004782  -0.000000007   0.000000078  -0.000022696
                        -0.036469737  -0.000073175   0.137970444   0.015231921   0.000000165   0.000000000  -0.000000060   0.000017255

   81    1.1  0.5 -0.5   0.000000009  -0.000004561   0.000000062  -0.000000561  -0.000919417   0.661196658  -0.218408938  -0.000755424
                         0.000000000   0.000000000  -0.000000000   0.000000001   0.000010841   0.000000565   0.000000160  -0.000004551

   82    2.1  0.5 -0.5  -0.000007850  -0.000000014  -0.000001654  -0.000000183  -0.619702280  -0.000862068  -0.000088858   0.025809064
                         0.000011633   0.000000021   0.000016749   0.000001849   0.021379172   0.000019992   0.000066645  -0.019631002

   83    3.1  0.5 -0.5   0.000004673   0.000000009  -0.000013071  -0.000001444   0.010821734   0.000010315  -0.001405383   0.404541528
                         0.000003152   0.000000006  -0.000001289  -0.000000142   0.313739107   0.000436442  -0.001831978   0.532100899

   84    4.1  0.5 -0.5  -0.000014316  -0.000000026  -0.000005932  -0.000000655  -0.006131463  -0.000005280  -0.000316281   0.090134836
                        -0.000009663  -0.000000018  -0.000000588  -0.000000065  -0.177759720  -0.000247282  -0.000408232   0.118571635

   85    5.1  0.5 -0.5   0.000000012  -0.000006423   0.000002405  -0.000021782  -0.000117571   0.084546691  -0.373469575  -0.001288686
                        -0.000000000  -0.000000007   0.000000001  -0.000000008   0.000001193   0.000001689  -0.000010432  -0.000003802

   86    6.1  0.5 -0.5  -0.000010301  -0.000000019   0.000000316   0.000000035  -0.005813264  -0.000008087  -0.001412657   0.410308315
                         0.000015266   0.000000027  -0.000003220  -0.000000356   0.000201648  -0.000000187   0.001084642  -0.311945057

   87    7.1  0.5 -0.5  -0.000000000   0.000000002  -0.000000001   0.000000009  -0.000001179   0.000000035   0.000000895  -0.000003323
                         0.000000029  -0.000015839   0.000002441  -0.000022120  -0.000106787   0.076793608   0.205084963   0.000708618

   88    8.1  0.5 -0.5   0.055311607   0.000101341   0.010536730   0.001163237  -0.000016326  -0.000000023  -0.000000030   0.000008573
                        -0.081949397  -0.000146301  -0.106723397  -0.011788004   0.000000563   0.000000000   0.000000023  -0.000006518

   89    9.1  0.5 -0.5   0.118421824   0.000219487  -0.031331226  -0.003453211  -0.000000070  -0.000000000  -0.000000022   0.000006376
                         0.079907636   0.000146406  -0.003077304  -0.000339726  -0.000002048  -0.000000003  -0.000000029   0.000008387

   90   10.1  0.5 -0.5  -0.000003606   0.000013977  -0.000006290   0.000056318   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000067232  -0.033799246   0.015627415  -0.141548520  -0.000000001   0.000000896  -0.000025553  -0.000000088

   91   11.1  0.5 -0.5   0.000000171   0.000000108   0.000000593   0.000000572   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000260674  -0.142413046  -0.003716186   0.033601421   0.000000016  -0.000011275   0.000012159   0.000000042

   92   12.1  0.5 -0.5  -0.000085862   0.043987691  -0.015305801   0.138639663   0.000000007  -0.000004784  -0.000028510  -0.000000098
                        -0.000003581   0.000013935  -0.000006226   0.000056168   0.000000000   0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.000021311  -0.012788080   0.000040504   0.013724820  -0.000054569   0.007420976   0.002422503   0.000013016
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000009812   0.000010933  -0.000002982   0.000006124   0.000000273  -0.000000128   0.000000421  -0.000000183
                         0.000074154  -0.047051403   0.000078793   0.026846482   0.000051465  -0.007009519  -0.003438274  -0.000018540

    3    3.1  1.5  1.5  -0.012155149  -0.000020257   0.074049136  -0.000218530  -0.005833642  -0.000042897  -0.000018064   0.003361941
                        -0.005279799  -0.000006212   0.010757178  -0.000023817   0.001673772   0.000012245  -0.000006810   0.001192605

    4    4.1  1.5  1.5  -0.009876044  -0.000011416  -0.010401054   0.000023135   0.001722663   0.000012618  -0.000000188   0.000029427
                         0.022731858   0.000037883   0.071590817  -0.000211275   0.006002705   0.000044140   0.000000445  -0.000082686

    5    5.1  1.5  1.5   0.028169360   0.000046935   0.007019489  -0.000020714  -0.004823099  -0.000035466   0.000023268  -0.004330589
                         0.012185645   0.000011760   0.001003986  -0.000001116   0.001382729   0.000009845   0.000008559  -0.001531934

    6    6.1  1.5  1.5   0.025501061   0.000029636   0.005186393  -0.000012153  -0.000471188  -0.000003716   0.000013731  -0.002427470
                        -0.058780071  -0.000097949  -0.035739714   0.000105472  -0.001653307  -0.000012157  -0.000036805   0.006849995

    7    7.1  1.5  1.5   0.000165749  -0.104750736  -0.000179783  -0.061242010  -0.000017428   0.002369944  -0.007416934  -0.000040113
                         0.000020307  -0.000008461  -0.000006543   0.000003100   0.000000005  -0.000001494   0.000002012   0.000000750

    8    8.1  1.5  1.5  -0.000000099  -0.000000000   0.000000111  -0.000000000   0.005792189   0.000042025  -0.000228848   0.040187078
                         0.000000237   0.000000000  -0.000000767   0.000000002   0.020511000   0.000150829   0.000609201  -0.113381187

    9    9.1  1.5  1.5   0.000003941   0.000000007  -0.000000832   0.000000002  -0.107790309  -0.000792610   0.000277940  -0.051728337
                         0.000001711   0.000000002  -0.000000120   0.000000000   0.030895878   0.000226453   0.000103583  -0.018257995

   10   10.1  1.5  1.5   0.000000007  -0.000004297  -0.000000013  -0.000004534   0.000611577  -0.083175058   0.171728163   0.000928724
                         0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000221   0.000019001  -0.000057334  -0.000017335

   11   11.1  1.5  1.5  -0.001225208  -0.000002043   0.000137460  -0.000000406  -0.005287602  -0.000038885   0.000034052  -0.006337073
                        -0.000531033  -0.000000357   0.000017807  -0.000000176   0.001523797   0.000010009   0.000012169  -0.002241860

   12   12.1  1.5  1.5  -0.000270454  -0.000002657   0.000227568   0.000000386   0.001518948  -0.000015058   0.000004267  -0.001818440
                         0.000627774   0.000001035  -0.001578480   0.000004664   0.005285643   0.000038918  -0.000027673   0.005154697

   13   13.1  1.5  1.5   0.000001327  -0.000460319   0.000001166   0.000609603   0.000068249  -0.009838720  -0.003384614  -0.000013880
                        -0.000001298  -0.000004129   0.000004394   0.000002343  -0.000014409   0.000019684   0.000009827  -0.000012155

   14   14.1  1.5  1.5  -0.000000670   0.000001697   0.000001340  -0.000000887   0.000003102   0.000021261   0.000006022  -0.000001969
                         0.000002958  -0.001949282   0.000003477   0.001112406  -0.000069676   0.009348643   0.004584388   0.000023924

   15   15.1  1.5  1.5   0.000336770   0.000000563  -0.003079350   0.000009087  -0.008595782  -0.000063196  -0.000019522   0.003633748
                         0.000148270  -0.000000731  -0.000444230   0.000001501   0.002457897   0.000022349  -0.000005248   0.001292499

   16   16.1  1.5  1.5  -0.001100895  -0.000001217  -0.000421168   0.000000884  -0.001829112  -0.000012478   0.000015556  -0.002676190
                         0.002534461   0.000004225   0.002916062  -0.000008606  -0.006398918  -0.000047058  -0.000040479   0.007533363

   17   17.1  1.5  1.5   0.000006953  -0.004348268  -0.000007484  -0.002528139   0.000023932  -0.003309924   0.009816615   0.000053581
                         0.000000676  -0.000000471   0.000000156   0.000000196  -0.000001437   0.000002556  -0.000002386  -0.000002370

   18    1.1  1.5  0.5   0.047019152   0.000078356  -0.079516897   0.000234666   0.000959617   0.000007056   0.000001944  -0.000361774
                         0.020418300   0.000020781  -0.011551518   0.000028673  -0.000275329  -0.000002002   0.000000797  -0.000128287

   19    2.1  1.5  0.5   0.034508581   0.000039866   0.000304830   0.000000469   0.000725304   0.000005337   0.000009956  -0.001760250
                        -0.079460691  -0.000132419  -0.002105350   0.000006213   0.002532498   0.000018622  -0.000026649   0.004959855

   20    3.1  1.5  0.5   0.000036981  -0.023362227   0.000039759   0.013539672  -0.000032423   0.004409993  -0.005936000  -0.000032101
                         0.000004495  -0.000001206   0.000001366   0.000000289   0.000000021  -0.000000695   0.000002134   0.000000596

   21    4.1  1.5  0.5  -0.000002961   0.000002592  -0.000006602   0.000004619  -0.000000000   0.000000752  -0.000002427  -0.000000711
                         0.000025790  -0.016246337   0.000186828   0.063632323  -0.000016456   0.002237684  -0.007003150  -0.000037875

   22    5.1  1.5  0.5   0.000024810  -0.014618811  -0.000088895  -0.030283014   0.000001559  -0.000207736   0.001332559   0.000007132
                        -0.000000983  -0.000045361  -0.000003104   0.000067428   0.000000105   0.000000675  -0.000000269   0.000000076

   23    6.1  1.5  0.5  -0.000013273   0.000011899  -0.000005073   0.000021945  -0.000000046  -0.000000029  -0.000000515   0.000000174
                         0.000096837  -0.061562703   0.000236381   0.080350146  -0.000002435   0.000332858   0.001604537   0.000008684

   24    7.1  1.5  0.5  -0.027052446  -0.000045084   0.009246956  -0.000027289   0.005943891   0.000043707   0.000015429  -0.002871499
                        -0.011757537  -0.000013529   0.001343178  -0.000002913  -0.001705059  -0.000012478   0.000005816  -0.001017941

   25    8.1  1.5  0.5   0.000000000  -0.000000006   0.000000000  -0.000000003   0.000000339  -0.000183609   0.000136228   0.000021554
                        -0.000000003   0.000001882  -0.000000012  -0.000003925  -0.000319858   0.043536496   0.205405899   0.001111019

   26    9.1  1.5  0.5   0.000000012  -0.000007313  -0.000000009  -0.000002941   0.001379212  -0.187609523   0.092055192   0.000497656
                         0.000000001  -0.000000002  -0.000000000   0.000000003  -0.000000979  -0.000023719  -0.000225242  -0.000009892

   27   10.1  1.5  0.5  -0.000007417  -0.000000012  -0.000000759   0.000000002   0.222161817   0.001633625   0.000573929  -0.106815026
                        -0.000003221  -0.000000004  -0.000000110   0.000000000  -0.063739566  -0.000466445   0.000216452  -0.037886646

   28   11.1  1.5  0.5  -0.000000925   0.000465608   0.000003874   0.001320343   0.000008186  -0.001097157   0.002852593   0.000015134
                         0.000000340   0.000002647   0.000000134  -0.000005480   0.000000397   0.000003900  -0.000009554   0.000000496

   29   12.1  1.5  0.5   0.000005146  -0.000000148  -0.000007989  -0.000001949  -0.000005141   0.000004956  -0.000009710   0.000001431
                        -0.000001146   0.002016018  -0.000013173  -0.004070528  -0.000018394   0.002697938  -0.006415497  -0.000033984

   30   13.1  1.5  0.5   0.001969209   0.000003280  -0.003300876   0.000009746  -0.001152847  -0.000008490  -0.000002251   0.000423335
                         0.000846856  -0.000004075  -0.000479681   0.000011423   0.000323068  -0.000004700   0.000016372   0.000134437

   31   14.1  1.5  0.5   0.001425777   0.000001191   0.000019639   0.000000289  -0.000965861  -0.000009929  -0.000009438   0.002344985
                        -0.003294268  -0.000005488  -0.000086420   0.000000254  -0.003383572  -0.000024878   0.000035516  -0.006610968

   32   15.1  1.5  0.5  -0.000000987   0.001042977  -0.000001111  -0.000381524  -0.000042899   0.005773709  -0.007588699  -0.000039944
                        -0.000001736   0.000000357  -0.000000075   0.000001069  -0.000001535  -0.000003300   0.000011439  -0.000002277

   33   16.1  1.5  0.5   0.000000140  -0.000000844   0.000000421   0.000000295   0.000000135  -0.000005219   0.000008071   0.000000712
                        -0.000002773   0.001701581  -0.000003515  -0.001211730   0.000009961  -0.001358141   0.007092983   0.000038351

   34   17.1  1.5  0.5  -0.001088894  -0.000001815   0.000329917  -0.000000974  -0.007954747  -0.000058494  -0.000020642   0.003841726
                        -0.000473508  -0.000001086   0.000047919   0.000000989   0.002281672   0.000015971  -0.000006050   0.001361437

   35    1.1  1.5 -0.5   0.000080149  -0.051261171  -0.000236351  -0.080351568  -0.000007335   0.000998334   0.000383846   0.000002099
                         0.000012152  -0.000001488  -0.000005360   0.000000434   0.000000021   0.000000025  -0.000000007  -0.000000102

   36    2.1  1.5 -0.5  -0.000016182   0.000000330  -0.000001357  -0.000000994   0.000000005  -0.000001194   0.000001466   0.000000477
                         0.000137340  -0.086630500   0.000006081   0.002127303   0.000019372  -0.002634314   0.005262949   0.000028444

   37    3.1  1.5 -0.5  -0.021429141  -0.000035711  -0.013399078   0.000039543  -0.004239187  -0.000031172   0.000030056  -0.005593984
                        -0.009305135  -0.000010608  -0.001946134   0.000004364   0.001215454   0.000008921   0.000011290  -0.001985812

   38    4.1  1.5 -0.5  -0.006469280  -0.000007557  -0.009152154   0.000020324   0.000616352   0.000004538   0.000013328  -0.002342728
                         0.014902748   0.000024835   0.062970713  -0.000185836   0.002151125   0.000015817  -0.000035460   0.006599678

   39    5.1  1.5 -0.5  -0.013426959  -0.000022365   0.029958772  -0.000088418   0.000199867   0.000001470  -0.000006748   0.001255851
                        -0.005781733  -0.000010784   0.004420118  -0.000009707  -0.000056638  -0.000000531  -0.000002312   0.000445593

   40    6.1  1.5 -0.5  -0.024512321  -0.000026400  -0.011572601   0.000028961   0.000091818   0.000000627  -0.000003066   0.000535748
                         0.056472229   0.000094110   0.079512397  -0.000234655   0.000319943   0.000002353   0.000008126  -0.001512453

   41    7.1  1.5 -0.5  -0.000046742   0.029497024   0.000027424   0.009344000  -0.000045453   0.006183613   0.003046590   0.000016485
                        -0.000005549  -0.000008204   0.000001040   0.000000087   0.000000059  -0.000000172   0.000000238  -0.000000325

   42    8.1  1.5 -0.5   0.000000744   0.000000001   0.000000567  -0.000000001   0.012182333   0.000088532  -0.000391615   0.068774684
                        -0.000001728  -0.000000003  -0.000003884   0.000000011   0.041797738   0.000307362   0.001039935  -0.193550109

   43    9.1  1.5 -0.5  -0.000006709  -0.000000011   0.000002910  -0.000000009   0.180328438   0.001326003  -0.000465737   0.086687001
                        -0.000002911  -0.000000003   0.000000426  -0.000000001  -0.051758944  -0.000379397  -0.000175639   0.030976974

   44   10.1  1.5 -0.5  -0.000000013   0.000008086  -0.000000002  -0.000000767  -0.001698911   0.231124653   0.113335112   0.000613268
                        -0.000000002   0.000000000  -0.000000000   0.000000000   0.000002138   0.000003611  -0.000010877  -0.000012200

   45   11.1  1.5 -0.5   0.000428126   0.000000713  -0.001305841   0.000003854   0.001055691   0.000007759  -0.000014429   0.002685384
                         0.000183045   0.000000680  -0.000195231   0.000000424  -0.000298808  -0.000002639  -0.000004591   0.000962336

   46   12.1  1.5 -0.5   0.000802936  -0.000004263   0.000587095  -0.000009799   0.000739233   0.000000131   0.000010008  -0.002153199
                        -0.001849222  -0.000003101  -0.004027967   0.000011888   0.002594692   0.000019098  -0.000032508   0.006043379

   47   13.1  1.5 -0.5   0.000001386  -0.002143569  -0.000011287  -0.003335548   0.000006865  -0.001197236  -0.000443923   0.000003350
                         0.000005044  -0.000007659   0.000009903   0.000000175  -0.000006859   0.000007374  -0.000014771  -0.000016183

   48   14.1  1.5 -0.5  -0.000001094   0.000004484  -0.000000323   0.000007011   0.000002684   0.000004661  -0.000000781   0.000002974
                         0.000005508  -0.003589571   0.000000210   0.000088346  -0.000026652   0.003518725  -0.007014545  -0.000036628

   49   15.1  1.5 -0.5   0.000956798   0.000001597   0.000377407  -0.000001110  -0.005550744  -0.000040813   0.000038408  -0.007148547
                         0.000415138  -0.000001199   0.000055904  -0.000000086   0.001589015   0.000013305   0.000011203  -0.002546911

   50   16.1  1.5 -0.5   0.000677043   0.000000976   0.000173902  -0.000000088  -0.000369511  -0.000002617  -0.000013488   0.002378070
                        -0.001561086  -0.000002599  -0.001199186   0.000003539  -0.001306919  -0.000009612   0.000035908  -0.006682459

   51   17.1  1.5 -0.5  -0.000002097   0.001187392   0.000000821   0.000333379   0.000060630  -0.008275508  -0.004075827  -0.000021477
                         0.000000273  -0.000000562   0.000001119   0.000000006  -0.000000778   0.000000441  -0.000000739  -0.000001196

   52    1.1  1.5 -1.5   0.011729679   0.000019547   0.013582261  -0.000040083   0.007133228   0.000052453   0.000012268  -0.002283216
                         0.005094076   0.000008489   0.001973037  -0.000005823  -0.002046446  -0.000015048   0.000004350  -0.000809596

   53    2.1  1.5 -1.5   0.018732694   0.000020539   0.003865427  -0.000008376   0.001932857   0.000013930  -0.000006368   0.001148668
                        -0.043161566  -0.000071925  -0.026566748   0.000078403   0.006737760   0.000049545   0.000017413  -0.003240724

   54    3.1  1.5 -1.5   0.000021054  -0.013252318  -0.000219684  -0.074826409  -0.000044610   0.006069011   0.003567206   0.000019301
                         0.000002372   0.000000868  -0.000007846   0.000000373   0.000000059   0.000000157  -0.000000479  -0.000000382

   55    4.1  1.5 -1.5  -0.000004619  -0.000003520  -0.000007477   0.000001348  -0.000000043  -0.000000531   0.000000101   0.000000029
                         0.000039295  -0.024784544   0.000212407   0.072342429  -0.000045908   0.006245001   0.000087767   0.000000482

   56    5.1  1.5 -1.5  -0.000047735   0.030692032  -0.000020660  -0.007090907  -0.000036805   0.005017392  -0.004593562  -0.000024791
                        -0.000007910   0.000044038  -0.000001873  -0.000015541   0.000000317  -0.000000928  -0.000003423   0.000000290

   57    6.1  1.5 -1.5   0.000011834  -0.000024310   0.000003135   0.000005307  -0.000000220  -0.000003006   0.000001359  -0.000000641
                        -0.000101647   0.064073397  -0.000106123  -0.036114067   0.000012711  -0.001719138  -0.007267395  -0.000039278

   58    7.1  1.5 -1.5   0.096084451   0.000160120  -0.060605446   0.000178856   0.002278461   0.000016754  -0.000037556   0.006989808
                         0.041719240   0.000047399  -0.008807026   0.000019370  -0.000652112  -0.000004801  -0.000014113   0.002480623

   59    8.1  1.5 -1.5  -0.000000000   0.000000004   0.000000000   0.000000001  -0.000001198   0.000088620  -0.000015359   0.000012096
                         0.000000000  -0.000000257  -0.000000002  -0.000000775  -0.000156569   0.021312971   0.120292537   0.000650654

   60    9.1  1.5 -1.5  -0.000000007   0.000004296   0.000000002   0.000000841  -0.000824324   0.112130751  -0.054855893  -0.000296576
                        -0.000000001   0.000000000   0.000000000   0.000000001   0.000000901  -0.000026904  -0.000079307   0.000004740

   61   10.1  1.5 -1.5   0.000003941   0.000000007  -0.000004487   0.000000013  -0.079955191  -0.000587925   0.000869532  -0.161835115
                         0.000001712   0.000000002  -0.000000652   0.000000001   0.022918508   0.000168439   0.000326716  -0.057445287

   62   11.1  1.5 -1.5   0.000002016  -0.001335339  -0.000000427  -0.000138592  -0.000040137   0.005502786  -0.006721935  -0.000036161
                         0.000000487  -0.000000974   0.000000115  -0.000002139   0.000001102   0.000006576  -0.000004879   0.000000089

   63   12.1  1.5 -1.5   0.000002025   0.000002001   0.000001053   0.000001713  -0.000025206  -0.000002455   0.000008806   0.000005227
                         0.000002008  -0.000683551  -0.000004560  -0.001594798  -0.000033256   0.005499565  -0.005466036  -0.000027508

   64   13.1  1.5 -1.5   0.000423865   0.000000700   0.000603608  -0.000001785  -0.009462652  -0.000069576  -0.000017144   0.003186724
                         0.000179578   0.000001719   0.000085316   0.000004181   0.002694254   0.000004971   0.000006817   0.001140394

   65   14.1  1.5 -1.5   0.000774932   0.000000564   0.000159038  -0.000001826  -0.002557592  -0.000022196   0.000006140  -0.001537770
                        -0.001788626  -0.000002981  -0.001100979   0.000003248  -0.008992013  -0.000066118  -0.000023207   0.004318786

   66   15.1  1.5 -1.5  -0.000000225   0.000367960   0.000009209   0.003111226  -0.000066909   0.008940283   0.003856768   0.000020154
                        -0.000000895  -0.000001848  -0.000000179   0.000003062  -0.000004055  -0.000007824  -0.000003792   0.000001578

   67   16.1  1.5 -1.5  -0.000000567  -0.000000188  -0.000000362  -0.000002410   0.000000983  -0.000006409  -0.000004680  -0.000001133
                         0.000004360  -0.002763234   0.000008644   0.002946319   0.000048675  -0.006655205  -0.007994594  -0.000043350

   68   17.1  1.5 -1.5   0.003988573   0.000006647  -0.002501851   0.000007383  -0.003182287  -0.000023400   0.000049708  -0.009251390
                         0.001731682   0.000002149  -0.000363631   0.000001230   0.000910305   0.000005219   0.000020141  -0.003282944

   69    1.1  0.5  0.5  -0.236520909  -0.000394155  -0.008857485   0.000026139   0.416777043   0.003064690   0.000947633  -0.176365109
                        -0.102714508  -0.000118809  -0.001285767   0.000003471  -0.119573341  -0.000875121   0.000357538  -0.062550428

   70    2.1  0.5  0.5  -0.000639524   0.404030139   0.000150513   0.051294911  -0.003277792   0.445878870  -0.127300115  -0.000687997
                        -0.000077799   0.000013851   0.000005965  -0.000000628   0.000003241  -0.000025512   0.000079021   0.000011833

   71    3.1  0.5  0.5  -0.000010803   0.000010160   0.000006820   0.000000686  -0.000000427  -0.000025190   0.000080286   0.000027165
                         0.000065005  -0.041819525  -0.000194370  -0.066198501   0.000223457  -0.030366752   0.266427109   0.001440985

   72    4.1  0.5  0.5   0.000126394  -0.000017561  -0.000026413   0.000002442   0.000002900   0.000024651  -0.000073283  -0.000035201
                        -0.001049388   0.662639716   0.000709572   0.241739183   0.001863015  -0.253475956  -0.337731353  -0.001826982

   73    5.1  0.5  0.5   0.477423777   0.000795608   0.362020310  -0.001068376   0.179882171   0.001322703  -0.002195705   0.408659033
                         0.207316125   0.000235878   0.052590721  -0.000117524  -0.051557597  -0.000379071  -0.000825080   0.145056348

   74    6.1  0.5  0.5   0.000185809  -0.116508416   0.001531428   0.521582089  -0.000923129   0.125592745   0.132600333   0.000717343
                         0.000019218   0.000002968   0.000053953  -0.000001357   0.000001328   0.000007637  -0.000026962  -0.000013897

   75    7.1  0.5  0.5   0.039582058   0.000044895  -0.100995027   0.000223900  -0.036746524  -0.000270097  -0.000533421   0.093787912
                        -0.091140076  -0.000151884   0.695217327  -0.002051691  -0.128200209  -0.000942678   0.001419647  -0.264221203

   76    8.1  0.5  0.5   0.000000007  -0.000004274   0.000000030   0.000010177   0.000674346  -0.091786837  -0.432992862  -0.002342030
                         0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000001850  -0.000038496   0.000116141   0.000044512

   77    9.1  0.5  0.5   0.000000004  -0.000000001  -0.000000001  -0.000000000  -0.000002658   0.000030882  -0.000093206  -0.000018787
                        -0.000000034   0.000021520   0.000000022   0.000007431  -0.002907421   0.395486916  -0.194042198  -0.001049043

   78   10.1  0.5  0.5   0.000002121   0.000000002  -0.000000858   0.000000002   0.035233139   0.000259146   0.000629359  -0.110637657
                        -0.000004884  -0.000000008   0.000005904  -0.000000017   0.122935950   0.000903966  -0.001674730   0.311696220

   79   11.1  0.5  0.5   0.000007701   0.000000009   0.000000241  -0.000000001   0.119223966   0.000872574  -0.000350536   0.061321082
                        -0.000017735  -0.000000030  -0.000001659   0.000000005   0.415560157   0.003055742   0.000929020  -0.172901022

   80   12.1  0.5  0.5   0.000003619   0.000000006   0.000000568  -0.000000002  -0.006698630  -0.000049257   0.000015790  -0.002938873
                         0.000001571   0.000000002   0.000000083  -0.000000000   0.001922404   0.000014064   0.000005924  -0.001044366

   81    1.1  0.5 -0.5   0.000408860  -0.257861223   0.000026367   0.008950321   0.003187185  -0.433590691  -0.187128853  -0.001012635
                         0.000048034  -0.000003698   0.000000323   0.000000912  -0.000003946  -0.000004363   0.000013046   0.000020284

   82    2.1  0.5 -0.5  -0.370596254  -0.000617585   0.050762023  -0.000149807   0.428596987   0.003151590  -0.000644485   0.119954307
                        -0.160930947  -0.000183391   0.007374617  -0.000015734  -0.122933274  -0.000900785  -0.000241080   0.042617951

   83    3.1  0.5 -0.5   0.016649308   0.000015985  -0.009515809   0.000021193   0.008349874   0.000062032   0.000507177  -0.089115140
                        -0.038362395  -0.000063928   0.065510998  -0.000193332   0.029196230   0.000214675  -0.001349054   0.251081467

   84    4.1  0.5 -0.5  -0.263943548  -0.000302086   0.034754080  -0.000075867   0.069923499   0.000510967  -0.000643751   0.112938292
                         0.607803584   0.001012885  -0.239227897   0.000705998   0.243640648   0.001791577   0.001710172  -0.318288257

   85    5.1  0.5 -0.5  -0.000823721   0.520493456  -0.001074173  -0.365820295   0.001375949  -0.187125036   0.433639861   0.002345199
                        -0.000100572   0.000022007  -0.000037283   0.000001563  -0.000000383   0.000046756  -0.000142887  -0.000043839

   86    6.1  0.5 -0.5   0.106864459   0.000178086   0.516164241  -0.001523277   0.120720790   0.000887701   0.000671454  -0.124967176
                         0.046413345   0.000056389   0.074982342  -0.000166760  -0.034641427  -0.000253290   0.000252832  -0.044340209

   87    7.1  0.5 -0.5   0.000019323   0.000000810  -0.000073370   0.000003742   0.000000334  -0.000031453   0.000093111   0.000028307
                        -0.000157197   0.099364243   0.002062567   0.702514859   0.000980609  -0.133362662   0.280372980   0.001516290

   88    8.1  0.5 -0.5   0.000003921   0.000000007   0.000010071  -0.000000030  -0.088217194  -0.000648708  -0.002192494   0.408058173
                         0.000001703   0.000000002   0.000001463  -0.000000003   0.025348602   0.000184182  -0.000824655   0.144814913

   89    9.1  0.5 -0.5  -0.000008572  -0.000000010   0.000001068  -0.000000002  -0.109031775  -0.000799210  -0.000368295   0.064936407
                         0.000019739   0.000000033  -0.000007354   0.000000022  -0.380160458  -0.002795418   0.000982448  -0.182854167

   90   10.1  0.5 -0.5   0.000000001  -0.000000001  -0.000000001   0.000000000  -0.000000185   0.000034458  -0.000107975  -0.000033481
                        -0.000000008   0.000005324   0.000000017   0.000005966  -0.000940379   0.127885186  -0.330749472  -0.001788768

   91   11.1  0.5 -0.5   0.000000004  -0.000000001   0.000000000   0.000000000  -0.000003927  -0.000004109   0.000012076   0.000019904
                        -0.000000031   0.000019335  -0.000000005  -0.000001676  -0.003177881   0.432324644   0.183453096   0.000992753

   92   12.1  0.5 -0.5  -0.000000006   0.000003946  -0.000000002  -0.000000574  -0.000051225   0.006969023  -0.003118921  -0.000016862
                        -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000065   0.000000615   0.000002152   0.000000307


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.000003248  -0.000590793  -0.050600388   0.002436713   0.035416562  -0.000561419   0.005327834   0.000207152
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000040   0.000000379  -0.000001367   0.000000370  -0.000001547   0.000000148  -0.000004902   0.000000421
                        -0.000000459   0.000075877   0.045445903  -0.002190642  -0.041993485   0.000664242  -0.000661358  -0.000025908

    3    3.1  1.5  1.5   0.002946622   0.000016201  -0.000264836  -0.005499621  -0.000055359  -0.003492569  -0.001244705   0.032013143
                        -0.002929988  -0.000016176   0.001899131   0.039433263   0.000611270   0.038698247   0.000392870  -0.010116383

    4    4.1  1.5  1.5   0.003175622   0.000017531   0.002156583   0.044793029   0.000264790   0.016804274  -0.000443044   0.011408877
                         0.003193415   0.000017558   0.000301190   0.006254320   0.000023915   0.001508030  -0.001403834   0.036105839

    5    5.1  1.5  1.5  -0.000993495  -0.000005462  -0.000318521  -0.006613909   0.000032322   0.002040975   0.000579255  -0.014898127
                         0.000988570   0.000005461   0.002275883   0.047249784  -0.000361989  -0.022699541  -0.000183076   0.004714103

    6    6.1  1.5  1.5  -0.000147962  -0.000000794   0.000158194   0.003273475  -0.000931614  -0.058797663  -0.000027997   0.000715892
                        -0.000150231  -0.000000826   0.000021715   0.000450468  -0.000084301  -0.005320170  -0.000086517   0.002225164

    7    7.1  1.5  1.5   0.000019576  -0.003553233  -0.033011218   0.001587951  -0.049183066   0.000778830   0.032764474   0.001273773
                         0.000000041  -0.000000120   0.000038175  -0.000002109   0.000042147  -0.000000702   0.000010988  -0.000000034

    8    8.1  1.5  1.5   0.151080052   0.000834075  -0.002380646  -0.049580539   0.004215262   0.266391013  -0.004840582   0.124644092
                         0.151673687   0.000833931  -0.000328235  -0.006813705   0.000382574   0.024144609  -0.015292524   0.393315402

    9    9.1  1.5  1.5   0.150571997   0.000827874  -0.001793077  -0.037232646   0.000091834   0.005801664  -0.015173375   0.390250965
                        -0.149987076  -0.000828048   0.012814112   0.266227452  -0.001035931  -0.065097633   0.004803474  -0.123687743

   10   10.1  1.5  1.5  -0.000486274   0.088262730   0.247426534  -0.011904277   0.271598984  -0.004302374  -0.206387103  -0.008023636
                        -0.000001009   0.000003095  -0.000206512   0.000011624  -0.000285540   0.000004551  -0.000068064   0.000000259

   11   11.1  1.5  1.5  -0.001947574  -0.000010706  -0.000018152  -0.000376940   0.000002617   0.000165196   0.000048243  -0.001240809
                         0.001945836   0.000010756   0.000130886   0.002712099  -0.000029307  -0.001826655  -0.000015343   0.000394982

   12   12.1  1.5  1.5   0.003461723   0.000022198   0.000130784   0.002529180  -0.000026087  -0.001312877  -0.000026107   0.000636381
                         0.003472482   0.000019092   0.000016957   0.000352437  -0.000001833  -0.000116641  -0.000077967   0.002005260

   13   13.1  1.5  1.5  -0.000013025   0.000705176   0.003284486  -0.000164821  -0.002376191   0.000040551  -0.000315310  -0.000013933
                        -0.000009175  -0.000000284  -0.000006326  -0.000000622   0.000005891   0.000000162   0.000000307  -0.000005262

   14   14.1  1.5  1.5  -0.000001983  -0.000002302  -0.000007004   0.000000484   0.000004945   0.000000026   0.000001164  -0.000001017
                         0.000002584  -0.000108540  -0.002982195   0.000142562   0.002755358  -0.000044827   0.000042980   0.000002008

   15   15.1  1.5  1.5   0.003748834   0.000020610  -0.000020221  -0.000419833  -0.000003330  -0.000210198  -0.000075445   0.001940432
                        -0.003735124  -0.000020672   0.000142612   0.002990439   0.000037708   0.002306755   0.000023918  -0.000615359

   16   16.1  1.5  1.5  -0.002592496  -0.000014379  -0.000073116  -0.001510878  -0.000059697  -0.003789340   0.000015369  -0.000394989
                        -0.002601435  -0.000014303  -0.000010210  -0.000212081  -0.000005468  -0.000344962   0.000048417  -0.001245247

   17   17.1  1.5  1.5  -0.000027029   0.004737179   0.002217536  -0.000107356   0.003186743  -0.000050115  -0.002160651  -0.000084170
                        -0.000000990   0.000000147  -0.000002691   0.000000052  -0.000002592   0.000000075  -0.000000699  -0.000000537

   18    1.1  1.5  0.5  -0.005488806  -0.000030179   0.000066405   0.001378926   0.000002284   0.000143864   0.002261423  -0.058162578
                         0.005457778   0.000030441  -0.000475172  -0.009868203  -0.000025511  -0.001649516  -0.000716154   0.018376960

   19    2.1  1.5  0.5  -0.003540158  -0.000019186   0.001616922   0.033613906  -0.000572166  -0.036083577   0.000427445  -0.011078773
                        -0.003560114  -0.000019574   0.000227505   0.004723866  -0.000052065  -0.003286551   0.001363206  -0.035060953

   20    3.1  1.5  0.5   0.000000947  -0.000172074  -0.046627244   0.002243737  -0.034953437   0.000554020   0.005580013   0.000216924
                         0.000000001   0.000000029   0.000030817  -0.000001740   0.000043945  -0.000000665   0.000001331  -0.000000055

   21    4.1  1.5  0.5   0.000000024   0.000001122  -0.000033984   0.000001907  -0.000049759   0.000000822  -0.000004049  -0.000000381
                        -0.000015143   0.002748705  -0.033836074   0.001627672  -0.049235865   0.000779675  -0.017629742  -0.000685392

   22    5.1  1.5  0.5   0.000046303  -0.008431686   0.008164047  -0.000391283   0.013434276  -0.000214235   0.066049381   0.002567322
                        -0.000000089   0.000005830  -0.000013884   0.000000937  -0.000014260   0.000000099  -0.000026913  -0.000003419

   23    6.1  1.5  0.5   0.000000272   0.000005796  -0.000000929  -0.000000041  -0.000005882   0.000000062  -0.000026562   0.000000386
                        -0.000044014   0.007950202  -0.002279580   0.000110354   0.009212594  -0.000145638  -0.063798459  -0.002480999

   24    7.1  1.5  0.5   0.000833431   0.000004582   0.000263816   0.005478417   0.000053634   0.003383711  -0.000344079   0.008849513
                        -0.000829412  -0.000004578  -0.001890088  -0.039246517  -0.000592811  -0.037531157   0.000108663  -0.002798328

   25    8.1  1.5  0.5   0.000000486   0.000065497   0.000554499  -0.000028235   0.000327657  -0.000006103  -0.000094313  -0.000006116
                        -0.000413303   0.075017225   0.024838688  -0.001186255   0.410364920  -0.006492510  -0.175581670  -0.006826029

   26    9.1  1.5  0.5  -0.000428051   0.077695642   0.403834295  -0.019438218   0.060178731  -0.000961327  -0.181093406  -0.007040292
                        -0.000000517  -0.000063737  -0.000181082   0.000010081  -0.000581748   0.000008352   0.000102405   0.000006558

   27   10.1  1.5  0.5   0.001901401   0.000010454   0.002521232   0.052355997   0.000498719   0.031463259  -0.000205101   0.005275035
                        -0.001889671  -0.000010421  -0.018073381  -0.375286868  -0.005507136  -0.348673904   0.000064068  -0.001651202

   28   11.1  1.5  0.5   0.000060828  -0.011150189   0.000954256  -0.000045633   0.001190915  -0.000019158   0.004244015   0.000164904
                        -0.000000550   0.000011917  -0.000003311   0.000000206  -0.000004378   0.000000044  -0.000003100  -0.000000465

   29   12.1  1.5  0.5   0.000018617   0.000013891  -0.000004340  -0.000000106  -0.000005091   0.000000020  -0.000004506   0.000009535
                        -0.000068943   0.009167959  -0.001902639   0.000093796  -0.002296858   0.000037215  -0.003348931  -0.000133264

   30   13.1  1.5  0.5   0.007329697   0.000040265  -0.000004298  -0.000089482   0.000000001  -0.000000729  -0.000149304   0.003840285
                        -0.007267719  -0.000063117   0.000034184   0.000605986   0.000007180   0.000067635   0.000055279  -0.001207718

   31   14.1  1.5  0.5   0.004803692   0.000025931  -0.000104533  -0.002203880   0.000038634   0.002366138  -0.000027689   0.000715044
                         0.004861691   0.000026735  -0.000014989  -0.000311183   0.000003407   0.000215216  -0.000089083   0.002291124

   32   15.1  1.5  0.5   0.000011822  -0.001739103  -0.002954776   0.000141157  -0.002146157   0.000035124   0.000970879   0.000038078
                         0.000002285   0.000000528   0.000003763  -0.000000343   0.000005690   0.000000012  -0.000000241   0.000001047

   33   16.1  1.5  0.5  -0.000000596   0.000001120   0.000003791  -0.000000185   0.000003667  -0.000000061   0.000000188  -0.000000378
                        -0.000035472   0.006557149   0.001150183  -0.000055369   0.002349502  -0.000037203  -0.002770916  -0.000107616

   34   17.1  1.5  0.5  -0.000989759  -0.000005441  -0.000017370  -0.000360708  -0.000003515  -0.000221774   0.000020250  -0.000520822
                         0.000985714   0.000002982   0.000124910   0.002583027   0.000039499   0.002461542  -0.000005504   0.000164894

   35    1.1  1.5 -0.5  -0.000042864   0.007740435  -0.009964079   0.000479790   0.001655771  -0.000025613  -0.060996703  -0.002372110
                        -0.000000309   0.000000272   0.000001164  -0.000000063   0.000004706  -0.000000014  -0.000020130  -0.000002345

   36    2.1  1.5 -0.5   0.000000196   0.000000296   0.000030559  -0.000001742   0.000035996  -0.000000522  -0.000013057   0.000002648
                         0.000027408  -0.005020670   0.033944199  -0.001632848   0.036232922  -0.000574530   0.036769681   0.001428647

   37    3.1  1.5 -0.5  -0.000122044  -0.000000671  -0.000311974  -0.006477858   0.000050367   0.003179676   0.000206883  -0.005320900
                         0.000121305   0.000000668   0.002221943   0.046175082  -0.000551727  -0.034808538  -0.000065234   0.001680648

   38    4.1  1.5 -0.5  -0.001937246  -0.000010694   0.001611773   0.033506346  -0.000776457  -0.049032848   0.000205915  -0.005302042
                        -0.001949989  -0.000010721   0.000226953   0.004712308  -0.000070769  -0.004466840   0.000653729  -0.016813571

   39    5.1  1.5 -0.5  -0.005983298  -0.000032898   0.000055032   0.001142626  -0.000019319  -0.001219482   0.002449319  -0.062995151
                         0.005940835   0.000032585  -0.000387394  -0.008083703   0.000213362   0.013378821  -0.000769409   0.019852769

   40    6.1  1.5 -0.5  -0.005601376  -0.000031226   0.000109300   0.002257554   0.000145056   0.009175970   0.000747058  -0.019175659
                        -0.005641838  -0.000031020   0.000015219   0.000316127   0.000013004   0.000820666   0.002365853  -0.060848486

   41    7.1  1.5 -0.5   0.000006478  -0.001175811  -0.039627038   0.001908411   0.037683381  -0.000595232   0.009281406   0.000360830
                         0.000000016  -0.000000532  -0.000000983   0.000000069  -0.000002892   0.000000233   0.000005208   0.000000070

   42    8.1  1.5 -0.5  -0.052846303  -0.000291754  -0.001170956  -0.024523415   0.006465780   0.408680654   0.002048551  -0.052753682
                        -0.053243371  -0.000292744  -0.000191992  -0.003983718   0.000588565   0.037142943   0.006511386  -0.167469343

   43    9.1  1.5 -0.5   0.055141484   0.000303181   0.002697785   0.056019138  -0.000094565  -0.005978442  -0.006715848   0.172727966
                        -0.054736036  -0.000302175  -0.019250101  -0.399930027   0.000956701   0.059883857   0.002112615  -0.054404795

   44   10.1  1.5 -0.5   0.000014761  -0.002680705  -0.378921341   0.018248389   0.350090596  -0.005529671   0.005527413   0.000214873
                         0.000000019   0.000000602  -0.000039362   0.000002066  -0.000054487   0.000002625  -0.000012946  -0.000000630

   45   11.1  1.5 -0.5  -0.007915370  -0.000043523   0.000006514   0.000135228  -0.000001762  -0.000111206   0.000157398  -0.004048177
                         0.007853266   0.000042498  -0.000045166  -0.000944631   0.000019077   0.001185719  -0.000049187   0.001274337

   46   12.1  1.5 -0.5  -0.006454246  -0.000061812   0.000092910   0.001883762  -0.000037063  -0.002287138   0.000049201  -0.001003608
                        -0.006511096  -0.000035763   0.000012865   0.000267384  -0.000003359  -0.000211137   0.000124216  -0.003195016

   47   13.1  1.5 -0.5   0.000073056  -0.010322015   0.000612538  -0.000034450  -0.000067428   0.000007150   0.004025711   0.000159018
                         0.000016368   0.000014205  -0.000004831  -0.000000470  -0.000005342   0.000000646  -0.000004062   0.000007781

   48   14.1  1.5 -0.5  -0.000000461   0.000021399  -0.000003454   0.000000391  -0.000002066  -0.000000073  -0.000007653  -0.000000405
                        -0.000037242   0.006834547  -0.002225738   0.000105601  -0.002375904   0.000038783  -0.002400099  -0.000093286

   49   15.1  1.5 -0.5  -0.001233627  -0.000006772  -0.000019858  -0.000412296   0.000003139   0.000198214   0.000035998  -0.000925937
                         0.001225823   0.000009956   0.000139753   0.002925872  -0.000034983  -0.002136991  -0.000012458   0.000291969

   50   16.1  1.5 -0.5  -0.004622486  -0.000024588  -0.000054811  -0.001138610   0.000037048   0.002339698   0.000032028  -0.000834123
                        -0.004650681  -0.000025574  -0.000007839  -0.000162795   0.000003399   0.000214442   0.000102740  -0.002642388

   51   17.1  1.5 -0.5  -0.000005961   0.001396872   0.002608091  -0.000126112  -0.002471512   0.000039655  -0.000546302  -0.000020967
                         0.000001722   0.000001148  -0.000000078  -0.000000069   0.000000039   0.000000043  -0.000000501   0.000000846

   52    1.1  1.5 -1.5   0.000418951   0.000002303   0.000336934   0.006996720   0.000050369   0.003177459  -0.000197548   0.005080813
                        -0.000416553  -0.000002290  -0.002413306  -0.050114321  -0.000559155  -0.035273739   0.000062345  -0.001603482

   53    2.1  1.5 -1.5   0.000053230   0.000000352   0.002169650   0.045009539   0.000661550   0.041824000  -0.000008199   0.000194370
                         0.000054074   0.000000297   0.000302542   0.006282634   0.000059741   0.003769060  -0.000024580   0.000632170

   54    3.1  1.5 -1.5  -0.000022894   0.004155407  -0.039814923   0.001917507   0.038855532  -0.000613771  -0.033573537  -0.001305234
                        -0.000000048   0.000000163  -0.000005804   0.000000308  -0.000006604   0.000000295  -0.000012566  -0.000000044

   55    4.1  1.5 -1.5  -0.000000052   0.000000342  -0.000000529   0.000000097  -0.000005676  -0.000000062  -0.000013384  -0.000000001
                         0.000024812  -0.004503607  -0.045227558   0.002177514   0.016871803  -0.000265868   0.037865471   0.001472086

   56    5.1  1.5 -1.5   0.000007724  -0.001401536  -0.047710435   0.002298064  -0.022791111   0.000363429   0.015626158   0.000607498
                         0.000000021  -0.000000540   0.000016958  -0.000000766  -0.000003785   0.000000285   0.000011749   0.000000253

   57    6.1  1.5 -1.5  -0.000000020   0.000000999   0.000006496  -0.000000368  -0.000023580   0.000000380  -0.000013008  -0.000000660
                        -0.000001145   0.000210857  -0.003304318   0.000159677  -0.059037860   0.000935420   0.002337453   0.000090932

   58    7.1  1.5 -1.5   0.002519630   0.000013853   0.000221661   0.004602402  -0.000070574  -0.004454522  -0.001214725   0.031242067
                        -0.002505380  -0.000013831  -0.001572405  -0.032688834   0.000775626   0.048980945   0.000383327  -0.009871380

   59    8.1  1.5 -1.5  -0.000003486   0.000194569  -0.000107448   0.000004099   0.000147505  -0.000002852  -0.000491598  -0.000013665
                         0.001179454  -0.214079545   0.050046427  -0.002403164   0.267482919  -0.004232586   0.412592915   0.016040335

   60    9.1  1.5 -1.5  -0.001170908   0.212527671  -0.268818382   0.012938955  -0.065355622   0.001039992  -0.409382732  -0.015915542
                        -0.000003483   0.000196278   0.000062647  -0.000003993  -0.000062080   0.000001477  -0.000501872  -0.000014137

   61   10.1  1.5 -1.5  -0.062587833  -0.000344121  -0.001657565  -0.034417193   0.000390528   0.024651368   0.007651705  -0.196797636
                         0.062234014   0.000343575   0.011788317   0.245021202  -0.004284616  -0.270478094  -0.002414572   0.062179833

   62   11.1  1.5 -1.5   0.000015175  -0.002753049  -0.002738168   0.000132138  -0.001834109   0.000029423   0.001302154   0.000050624
                         0.000000079  -0.000006671  -0.000001694   0.000000121   0.000000648   0.000000023   0.000003231   0.000000112

   63   12.1  1.5 -1.5  -0.000002280   0.000006463   0.000000668  -0.000001290   0.000001617  -0.000000515  -0.000003366  -0.000001431
                         0.000029190  -0.004903225  -0.002553617   0.000131872  -0.001318047   0.000026146   0.002103815   0.000082209

   64   13.1  1.5 -1.5  -0.000500263  -0.000002767  -0.000022174  -0.000460425  -0.000003476  -0.000219051   0.000011704  -0.000300783
                         0.000497001   0.000015689   0.000163324   0.003252060   0.000040402   0.002366080  -0.000009212   0.000094604

   65   14.1  1.5 -1.5  -0.000074896  -0.000003228  -0.000141125  -0.002952580  -0.000044649  -0.002743802   0.000001574  -0.000011825
                        -0.000078593  -0.000000435  -0.000020192  -0.000419296  -0.000003996  -0.000252127   0.000001609  -0.000041337

   66   15.1  1.5 -1.5  -0.000029190   0.005291963  -0.003019765   0.000144038   0.002316310  -0.000037855  -0.002035666  -0.000079146
                        -0.000000127   0.000005491   0.000002300  -0.000000308  -0.000002395  -0.000000067  -0.000002830  -0.000000103

   67   16.1  1.5 -1.5   0.000000112  -0.000004218   0.000001128  -0.000000002  -0.000003604   0.000000090   0.000001902   0.000000085
                        -0.000020281   0.003672667   0.001525690  -0.000073825  -0.003805008   0.000059947  -0.001306389  -0.000050797

   68   17.1  1.5 -1.5  -0.003359186  -0.000018470  -0.000014896  -0.000309293   0.000004571   0.000288486   0.000080105  -0.002060264
                         0.003340169   0.000019760   0.000106317   0.002195862  -0.000049906  -0.003173659  -0.000025844   0.000650943

   69    1.1  0.5  0.5   0.003681359   0.000020241  -0.002096241  -0.043530409  -0.000375928  -0.023715915   0.000229744  -0.005908854
                        -0.003658748  -0.000020176   0.015021853   0.311936008   0.004152750   0.262966284  -0.000071971   0.001854648

   70    2.1  0.5  0.5  -0.000495035   0.089849141   0.406939877  -0.019589181  -0.000379349  -0.000003328   0.056684597   0.002203759
                        -0.000001054   0.000004040  -0.000127736   0.000007300  -0.000186941   0.000001959   0.000026841   0.000000425

   71    3.1  0.5  0.5  -0.000004462   0.000013295  -0.000134594   0.000007602  -0.000208157   0.000003590   0.000102336  -0.000000217
                         0.002142641  -0.388904028  -0.108782099   0.005231302  -0.233737997   0.003700116  -0.320022513  -0.012441489

   72    4.1  0.5  0.5  -0.000002443   0.000008416   0.000112552  -0.000006228   0.000150123  -0.000003503   0.000073890   0.000000217
                         0.001166600  -0.211744680  -0.137796501   0.006640894   0.333895314  -0.005279043  -0.196462357  -0.007637827

   73    5.1  0.5  0.5   0.003983592   0.000021903  -0.001757805  -0.036498387   0.000452036   0.028533326   0.001368753  -0.035203508
                        -0.003961211  -0.000021855   0.012497704   0.259777214  -0.004959942  -0.313148145  -0.000431821   0.011123815

   74    6.1  0.5  0.5   0.002401077  -0.435813310   0.051918758  -0.002502843  -0.163324285   0.002582483  -0.373484988  -0.014519921
                         0.000004992  -0.000014726   0.000050432  -0.000002840   0.000089987  -0.000001949  -0.000118007   0.000000395

   75    7.1  0.5  0.5  -0.251076418  -0.001386125   0.007797996   0.162084934  -0.002882606  -0.181973817  -0.003857913   0.099345105
                        -0.252503914  -0.001388320   0.001096764   0.022772826  -0.000262661  -0.016579939  -0.012225220   0.314426005

   76    8.1  0.5  0.5   0.000872058  -0.158284386  -0.016200864   0.000773701  -0.268722502   0.004251538   0.115381723   0.004485658
                         0.000001821  -0.000006284   0.000130025  -0.000007270   0.000179798  -0.000003441   0.000042894   0.000000058

   77    9.1  0.5  0.5  -0.000001859   0.000005014  -0.000104217   0.000005915  -0.000144076   0.000001721  -0.000034395   0.000000355
                         0.000903137  -0.163928731  -0.264445098   0.012728841  -0.039341391   0.000628471   0.118976531   0.004625402

   78   10.1  0.5  0.5  -0.217582527  -0.001201232   0.006891629   0.143253646  -0.002923007  -0.184562675   0.002047278  -0.052715642
                        -0.218819794  -0.001203118   0.000969413   0.020128456  -0.000266416  -0.016816333   0.006487211  -0.166847626

   79   11.1  0.5  0.5  -0.012320316  -0.000068041   0.010775740   0.223765157   0.002918803   0.184835019   0.000111960  -0.002881987
                        -0.012388571  -0.000068115   0.001503797   0.031227719   0.000264198   0.016667179   0.000353577  -0.009093834

   80   12.1  0.5  0.5   0.332845208   0.001830054  -0.000134829  -0.002799646   0.000025012   0.001578854  -0.010774791   0.277121819
                        -0.330963466  -0.001827173   0.000962061   0.019991885  -0.000273029  -0.017233600   0.003400291  -0.087558316

   81    1.1  0.5 -0.5  -0.000028579   0.005190264  -0.314958679   0.015167409   0.264033540  -0.004169730   0.006193075   0.000240753
                        -0.000000036  -0.000001094  -0.000020392   0.000001028  -0.000027796   0.000001841  -0.000009690  -0.000000510

   82    2.1  0.5 -0.5  -0.063712144  -0.000350303  -0.002715905  -0.056395726   0.000002250   0.000152154  -0.002101455   0.054048380
                         0.063353223   0.000349784   0.019399998   0.403013153  -0.000003138   0.000394591   0.000663655  -0.017085575

   83    3.1  0.5 -0.5  -0.274215829  -0.001513886  -0.005179999  -0.107718529   0.003684873   0.232776731  -0.003744223   0.096412593
                        -0.275775312  -0.001516271  -0.000730883  -0.015175040   0.000335538   0.021177531  -0.011864714   0.305154110

   84    4.1  0.5 -0.5  -0.149301790  -0.000824272  -0.006577963  -0.136488392  -0.005257440  -0.332535352  -0.002298912   0.059198406
                        -0.150149209  -0.000825552  -0.000912095  -0.018942206  -0.000477108  -0.030105520  -0.007283640   0.187331290

   85    5.1  0.5 -0.5  -0.000030942   0.005617846  -0.262328575   0.012620710  -0.314445236   0.004980496   0.036919183   0.001435255
                        -0.000000055   0.000000295   0.000227342  -0.000012812   0.000323625  -0.000005224   0.000013107  -0.000000144

   86    6.1  0.5 -0.5   0.309039223   0.001699164  -0.000343265  -0.007129069  -0.000233633  -0.014742548   0.013846834  -0.356133122
                        -0.307291392  -0.001696478   0.002479194   0.051427001   0.002571894   0.162657577  -0.004369585   0.112517775

   87    7.1  0.5 -0.5   0.000004078  -0.000012449  -0.000141933   0.000007968  -0.000186978   0.000002983  -0.000108385   0.000000298
                        -0.001961826   0.356086498  -0.163676838   0.007874742  -0.182727473   0.002894547   0.329747101   0.012819496

   88    8.1  0.5 -0.5   0.112240253   0.000617121   0.000114183   0.002368935  -0.000384862  -0.024287983  -0.004277666   0.110019227
                        -0.111606776  -0.000616157  -0.000765264  -0.016027260   0.004234085   0.267622700   0.001350074  -0.034766558

   89    9.1  0.5 -0.5  -0.115585560  -0.000638098  -0.012605750  -0.261890430   0.000625782   0.039169814   0.001391737  -0.035840359
                        -0.116243740  -0.000639133  -0.001765927  -0.036669105   0.000058099   0.003673077   0.004411056  -0.113449922

   90   10.1  0.5 -0.5   0.000003545  -0.000010647  -0.000126843   0.000007167  -0.000190154   0.000003099   0.000056525  -0.000000055
                        -0.001700129   0.308584281  -0.144660796   0.006959473  -0.185327100   0.002935121  -0.174977330  -0.006802592

   91   11.1  0.5 -0.5   0.000000224  -0.000001874   0.000013164  -0.000000654   0.000017167  -0.000001268   0.000011456   0.000000355
                        -0.000096276   0.017471888  -0.225933653   0.010880165   0.185584964  -0.002930735  -0.009539577  -0.000370879

   92   12.1  0.5 -0.5  -0.002586045   0.469385501  -0.020186961   0.000971462  -0.017305752   0.000274171  -0.290625106  -0.011298588
                        -0.000005384   0.000016377   0.000008395  -0.000000506   0.000026344  -0.000000415  -0.000095269   0.000000177


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5  -0.000027595  -0.079555566   0.005914060  -0.000258956  -0.034659753   0.001231688   0.001806843   0.000039233
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000830  -0.000001167  -0.000003420  -0.000002483  -0.000000368   0.000000746   0.000000093   0.000000816
                         0.000026049   0.080411811  -0.000864102   0.000040908   0.034983402  -0.001242686   0.000409122   0.000006719

    3    3.1  1.5  1.5  -0.019837985   0.000006881  -0.001076210  -0.024578618  -0.000603591  -0.016985090  -0.000129033   0.005942698
                         0.044037634  -0.000014451   0.001235668   0.028712176  -0.000414463  -0.011672229   0.000329208  -0.015801917

    4    4.1  1.5  1.5   0.034917630  -0.000011506  -0.002391150  -0.055561551  -0.000348960  -0.009827176  -0.000613065   0.029426823
                         0.015726499  -0.000005456  -0.002081645  -0.047540658   0.000508369   0.014305534  -0.000240083   0.011056839

    5    5.1  1.5  1.5  -0.006587966   0.000002287   0.003047337   0.069594487  -0.000234309  -0.006593471   0.000354859  -0.016341952
                         0.014580378  -0.000001394  -0.003503798  -0.081413744  -0.000159632  -0.004537479  -0.000907367   0.043553694

    6    6.1  1.5  1.5  -0.030539694   0.000013128  -0.002843737  -0.066071544   0.000277042   0.007763809  -0.000745651   0.035787150
                        -0.013770500   0.000004774  -0.002472078  -0.056456621  -0.000401051  -0.011285577  -0.000291439   0.013421111

    7    7.1  1.5  1.5   0.000003878   0.011711588   0.035429901  -0.001536010   0.004751186  -0.000168799   0.015602113   0.000326744
                        -0.000000080   0.000008005  -0.000001570   0.000013198   0.000002924  -0.000000165  -0.000011880  -0.000004769

    8    8.1  1.5  1.5   0.190257506  -0.000062542  -0.000105264  -0.002446829   0.007957231   0.224089547  -0.000114196   0.005482155
                         0.085907314  -0.000029795  -0.000091725  -0.002094832  -0.011567060  -0.325497430  -0.000045175   0.002081336

    9    9.1  1.5  1.5  -0.085919369   0.000029799   0.000036313   0.000829353   0.011566875   0.325492234   0.000026694  -0.001230262
                         0.190284280  -0.000062550  -0.000041524  -0.000965842   0.007957097   0.224085799  -0.000066918   0.003212641

   10   10.1  1.5  1.5  -0.000001218  -0.003861336  -0.361125186   0.015655998  -0.007982188   0.000283584   0.684954461   0.014344446
                         0.000000055   0.000001529   0.000014620  -0.000134500  -0.000027064   0.000001076  -0.000514795  -0.000209239

   11   11.1  1.5  1.5  -0.000813378   0.000000286   0.000687890   0.015709784  -0.000050191  -0.001412450   0.000124463  -0.005731479
                         0.001814456   0.000001594  -0.000791973  -0.018401631  -0.000032829  -0.000966352  -0.000318836   0.015304550

   12   12.1  1.5  1.5   0.002399242   0.000043172  -0.000786147  -0.018148920  -0.000013296  -0.001214186  -0.000316871   0.015076458
                         0.001083641  -0.000000471  -0.000678265  -0.015489865   0.000062632   0.001764283  -0.000122557   0.005643539

   13   13.1  1.5  1.5  -0.000001308   0.017326637  -0.001159277   0.000096596   0.011724007  -0.000413037  -0.000523867  -0.000049395
                        -0.000003316  -0.000037018   0.000002101   0.000039027  -0.000025205  -0.000004332  -0.000000049  -0.000014232

   14   14.1  1.5  1.5   0.000001852  -0.000036344   0.000003806   0.000003228  -0.000024549   0.000003340   0.000001430  -0.000001296
                        -0.000010196  -0.017474118   0.000187770  -0.000012200  -0.011808945   0.000421347  -0.000138008   0.000000551

   15   15.1  1.5  1.5  -0.004475197   0.000001534  -0.000139530  -0.003186576  -0.000212613  -0.005982595  -0.000026424   0.001216878
                         0.009910922  -0.000011408   0.000160750   0.003733070  -0.000151775  -0.004118964   0.000067608  -0.003248209

   16   16.1  1.5  1.5  -0.009785898   0.000001652  -0.000206998  -0.004812410   0.000142887   0.004053779  -0.000087044   0.004180543
                        -0.004417575   0.000001542  -0.000180597  -0.004124533  -0.000209270  -0.005889030  -0.000034197   0.001575097

   17   17.1  1.5  1.5  -0.000001401  -0.002265080  -0.007721109   0.000339613  -0.001413984   0.000050564  -0.005274664  -0.000114511
                        -0.000000278  -0.000002816   0.000000535   0.000001290  -0.000001731  -0.000000399   0.000004032   0.000000090

   18    1.1  1.5  0.5   0.005891004  -0.000002043  -0.002267815  -0.051792619   0.000205384   0.005779504  -0.000265150   0.012211576
                        -0.013078240   0.000002088   0.002602638   0.060504925   0.000140005   0.003969770   0.000676050  -0.032477673

   19    2.1  1.5  0.5   0.000785700   0.000001031   0.002625184   0.061017117   0.000008635   0.000227380   0.000680899  -0.032698373
                         0.000366206  -0.000000127   0.002287076   0.052232520  -0.000012142  -0.000341672   0.000266970  -0.012295438

   20    3.1  1.5  0.5  -0.000027353  -0.082417648   0.048708937  -0.002111671  -0.036306689   0.001289895   0.020418673   0.000427605
                         0.000000556  -0.000000364  -0.000001731   0.000018153  -0.000000792   0.000000493  -0.000013968  -0.000006211

   21    4.1  1.5  0.5   0.000000468   0.000004479  -0.000000695  -0.000014170   0.000002645   0.000000281   0.000013095   0.000005292
                         0.000022587   0.068104756   0.038306244  -0.001660706   0.029235926  -0.001038686   0.017310199   0.000362508

   22    5.1  1.5  0.5  -0.000009766  -0.029525616   0.017424078  -0.000752781  -0.013004526   0.000462031   0.007439165   0.000154399
                         0.000000204  -0.000031122  -0.000017933   0.000009464  -0.000013600   0.000000635  -0.000013074  -0.000002951

   23    6.1  1.5  0.5  -0.000000613   0.000021435  -0.000014182   0.000014451   0.000008860  -0.000000854  -0.000017353  -0.000005062
                        -0.000018305  -0.056737874  -0.031883342   0.001379886  -0.024358539   0.000865248  -0.014574025  -0.000303941

   24    7.1  1.5  0.5   0.043925884  -0.000015236   0.000289651   0.006615197   0.001358340   0.038223762   0.000042077  -0.001938091
                        -0.097510656   0.000032050  -0.000332030  -0.007714732   0.000932674   0.026265801  -0.000107063   0.005139089

   25    8.1  1.5  0.5  -0.000001533   0.000215156   0.000189548  -0.000086723  -0.000412275   0.000020552  -0.000627311  -0.000125978
                        -0.000079236  -0.238696307   0.211699071  -0.009177768   0.460960556  -0.016376885  -0.389459077  -0.008156036

   26    9.1  1.5  0.5   0.000080666   0.243233506   0.206493435  -0.008952155  -0.451650013   0.016046105  -0.400147814  -0.008379860
                        -0.000001599   0.000209398  -0.000195945   0.000085010  -0.000389218   0.000019604   0.000662034   0.000129803

   27   10.1  1.5  0.5   0.049538676  -0.000017183  -0.000036814  -0.000840769  -0.006674131  -0.187810345  -0.000020433   0.000941458
                        -0.109970813   0.000036152   0.000042279   0.000982964  -0.004582619  -0.129054643   0.000051627  -0.002478214

   28   11.1  1.5  0.5  -0.000001267  -0.003871526   0.002286504  -0.000097457  -0.002648783   0.000094109   0.001529090   0.000030635
                         0.000000048   0.000006744   0.000003787   0.000002110   0.000004447  -0.000000142   0.000001596  -0.000000929

   29   12.1  1.5  0.5  -0.000005434  -0.000003992   0.000003762   0.000027457  -0.000002942  -0.000007821   0.000003328  -0.000009779
                         0.000013805   0.005035917   0.002833405  -0.000156476   0.003357627  -0.000124762   0.001960745   0.000068948

   30   13.1  1.5  0.5  -0.001126140   0.000000401   0.000492807   0.011254464  -0.000061924  -0.001742727   0.000089220  -0.004108493
                         0.002499117  -0.000015461  -0.000576525  -0.013204138  -0.000052249  -0.001196252  -0.000234844   0.010997717

   31   14.1  1.5  0.5  -0.000167613   0.000008256  -0.000576696  -0.013286960   0.000003046  -0.000072553  -0.000233374   0.011049990
                        -0.000086123   0.000000032  -0.000495943  -0.011325966   0.000004215   0.000118547  -0.000089662   0.004128624

   32   15.1  1.5  0.5  -0.000006258  -0.018623005   0.011009585  -0.000483507  -0.012743246   0.000452707   0.007172796   0.000155369
                         0.000000077  -0.000016990  -0.000010133  -0.000000769  -0.000011549   0.000000630  -0.000011644  -0.000000396

   33   16.1  1.5  0.5  -0.000000015   0.000014440  -0.000009113   0.000003255   0.000009598  -0.000000334  -0.000011632  -0.000002015
                        -0.000006404  -0.018589332  -0.010455682   0.000454487  -0.012396330   0.000440527  -0.007380596  -0.000155559

   34   17.1  1.5  0.5  -0.009562699   0.000003317  -0.000055036  -0.001256960  -0.000459506  -0.012930535  -0.000012770   0.000588184
                         0.021228118  -0.000008342   0.000062234   0.001463902  -0.000316419  -0.008885279   0.000031906  -0.001557063

   35    1.1  1.5 -0.5   0.000002743   0.014343789  -0.079644971   0.003451924   0.007011543  -0.000248562  -0.034697567  -0.000726108
                        -0.000001005   0.000000328   0.000003134  -0.000030477   0.000001330  -0.000000926   0.000025815   0.000010795

   36    2.1  1.5 -0.5  -0.000000539  -0.000011189  -0.000004270   0.000030449  -0.000006098  -0.000000241  -0.000026814  -0.000010796
                         0.000000888  -0.000866779  -0.080320139   0.003481577   0.000410371  -0.000014897  -0.034933661  -0.000731287

   37    3.1  1.5 -0.5   0.033850370  -0.000011742  -0.001386934  -0.031674972   0.001063381   0.029923577  -0.000156011   0.007185069
                        -0.075145334   0.000024712   0.001592450   0.037003469   0.000730103   0.020561012   0.000398178  -0.019112749

   38    4.1  1.5 -0.5   0.062093410  -0.000020402   0.001252438   0.029102032  -0.000588010  -0.016559440   0.000337551  -0.016202645
                         0.027976173  -0.000009704   0.001090662   0.024908634   0.000856220   0.024094072   0.000132284  -0.006092411

   39    5.1  1.5 -0.5   0.012098430  -0.000004197  -0.000496696  -0.011343871   0.000381155   0.010725730  -0.000056996   0.002625223
                        -0.026933083   0.000008820   0.000565740   0.013225560   0.000261140   0.007353679   0.000143524  -0.006960571

   40    6.1  1.5 -0.5  -0.051740175   0.000016438  -0.001038915  -0.024212825   0.000489314   0.013787735  -0.000282797   0.013639316
                        -0.023283922   0.000008077  -0.000908268  -0.020743356  -0.000713601  -0.020080759  -0.000111498   0.005135325

   41    7.1  1.5 -0.5   0.000035480   0.106947704   0.010162571  -0.000440595   0.046378317  -0.001647717   0.005492390   0.000115021
                        -0.000000728  -0.000000176  -0.000009010   0.000004143  -0.000000297  -0.000000584  -0.000009514  -0.000001790

   42    8.1  1.5 -0.5  -0.217722315   0.000071615   0.006916035   0.160706332  -0.009257826  -0.260717235  -0.007592108   0.364423553
                        -0.097841539   0.000033941   0.006033854   0.137804236   0.013509087   0.380146456  -0.002982732   0.137383552

   43    9.1  1.5 -0.5  -0.099710314   0.000034589  -0.005885845  -0.134424059   0.013235929   0.372459865   0.003064931  -0.141170446
                         0.221856790  -0.000072892   0.006745750   0.156747406   0.009071276   0.255463374  -0.007800327   0.374419039

   44   10.1  1.5 -0.5   0.000040020   0.120613681  -0.001293487   0.000056059  -0.227876780   0.008095950  -0.002650994  -0.000055514
                        -0.000000818  -0.000000045  -0.000000447  -0.000000476   0.000000702   0.000002890   0.000011006   0.000000998

   45   11.1  1.5 -0.5   0.001596268  -0.000000564  -0.000064975  -0.001483953   0.000077482   0.002180547  -0.000011630   0.000535594
                        -0.003527136   0.000001136   0.000072667   0.001739539   0.000053414   0.001503757   0.000028357  -0.001432222

   46   12.1  1.5 -0.5   0.004593192  -0.000014818   0.000136730   0.002150116  -0.000077103  -0.001899109   0.000067990  -0.001834643
                         0.002064720  -0.000000715   0.000080891   0.001845319   0.000098397   0.002768944   0.000015062  -0.000691821

   47   13.1  1.5 -0.5  -0.000014261  -0.002741127   0.017349667  -0.000758446  -0.002113791   0.000080627   0.011740069   0.000251218
                        -0.000005985   0.000000329   0.000036060  -0.000000503  -0.000001040  -0.000007993   0.000016200  -0.000001047

   48   14.1  1.5 -0.5  -0.000003361   0.000009681  -0.000035596  -0.000001768   0.000007341  -0.000004897  -0.000015712   0.000001977
                         0.000007540   0.000188195   0.017459082  -0.000760614  -0.000138793   0.000001749   0.011796083   0.000249998

   49   15.1  1.5 -0.5   0.007633378  -0.000002640  -0.000313822  -0.007166833   0.000373467   0.010509227  -0.000054944   0.002530323
                        -0.016986704   0.000005674   0.000367825   0.008357486   0.000255863   0.007207398   0.000145330  -0.006711676

   50   16.1  1.5 -0.5  -0.016954955   0.000005833  -0.000343161  -0.007937345   0.000249209   0.007012536  -0.000144939   0.006906240
                        -0.007621873   0.000002644  -0.000298009  -0.006805874  -0.000363261  -0.010222203  -0.000056526   0.002603301

   51   17.1  1.5 -0.5  -0.000008968  -0.023282573  -0.001929494   0.000083068  -0.015689070   0.000557913  -0.001664450  -0.000034358
                        -0.000000402   0.000000049   0.000003001  -0.000001343   0.000000056  -0.000000552   0.000003793   0.000000749

   52    1.1  1.5 -1.5  -0.032675183   0.000011334   0.000168390   0.003845699  -0.001015129  -0.028565763   0.000013780  -0.000634648
                         0.072535650  -0.000025160  -0.000196731  -0.004492962  -0.000697545  -0.019628951  -0.000036733   0.001691716

   53    2.1  1.5 -1.5  -0.073316820   0.000023410   0.000032693   0.000654242   0.000703159   0.019811940  -0.000006004   0.000383021
                        -0.033025797   0.000011456   0.000024715   0.000564492  -0.001024615  -0.028832715  -0.000003123   0.000143789

   54    3.1  1.5 -1.5   0.000016002   0.048299678   0.037795469  -0.001638568   0.020609081  -0.000732190   0.016882419   0.000353554
                        -0.000000339  -0.000000294  -0.000002098   0.000014096  -0.000000768  -0.000000243  -0.000013676  -0.000005178

   55    4.1  1.5 -1.5   0.000000248  -0.000002616   0.000012621   0.000026565  -0.000002362   0.000000302  -0.000016256  -0.000009449
                         0.000012731   0.038295739  -0.073124551   0.003170196   0.017355739  -0.000616613  -0.031435511  -0.000658330

   56    5.1  1.5 -1.5   0.000002210   0.015999637  -0.107105488   0.004643438   0.008003908  -0.000283516  -0.046518637  -0.000974195
                        -0.000001513  -0.000018174  -0.000068883  -0.000036695  -0.000005587  -0.000001132   0.000002600   0.000013539

   57    6.1  1.5 -1.5   0.000001039  -0.000012093   0.000073355   0.000028880  -0.000007360   0.000001203   0.000004160  -0.000010962
                        -0.000013930  -0.033500737  -0.086906810   0.003767914  -0.013698209   0.000487435  -0.038221020  -0.000800508

   58    7.1  1.5 -1.5   0.004802903  -0.000001666   0.001008839   0.023039973   0.000139213   0.003917473   0.000119233  -0.005491313
                        -0.010681455   0.000003503  -0.001158338  -0.026915377   0.000095460   0.002688342  -0.000304249   0.014603820

   59    8.1  1.5 -1.5   0.000001479   0.000184073  -0.000000377   0.000001235  -0.000349565   0.000007361  -0.000023130  -0.000002185
                         0.000069261   0.208753326  -0.003221071   0.000139615  -0.395176644   0.014039741  -0.005863911  -0.000122788

   60    9.1  1.5 -1.5   0.000069270   0.208782689  -0.001273057   0.000055159  -0.395170239   0.014039514  -0.003440067  -0.000072031
                        -0.000001479  -0.000184067   0.000002014  -0.000000586   0.000349418  -0.000007355   0.000023444   0.000001488

   61   10.1  1.5 -1.5  -0.001587328   0.000000550  -0.010282709  -0.234837730  -0.000234333  -0.006594062   0.005234346  -0.241069981
                         0.003519987  -0.000001088   0.011806535   0.274340375  -0.000159716  -0.004498268  -0.013356966   0.641130364

   62   11.1  1.5 -1.5  -0.000001336   0.001988422  -0.024195379   0.001048979   0.001711386  -0.000059958  -0.016342552  -0.000342238
                        -0.000000915   0.000003630  -0.000031058  -0.000007605   0.000003472  -0.000001368  -0.000009386   0.000004543

   63   12.1  1.5 -1.5   0.000018161   0.000002601   0.000033803   0.000004081   0.000001533   0.000024512   0.000011607  -0.000003449
                        -0.000039169   0.002632609  -0.023860387   0.001038294   0.002141714  -0.000059150  -0.016098104  -0.000339729

   64   13.1  1.5 -1.5   0.007150174  -0.000002486  -0.000033164  -0.000755432   0.000342869   0.009648380  -0.000004025   0.000183960
                        -0.015782545  -0.000002555   0.000098763   0.000879347   0.000230345   0.006660462   0.000051246  -0.000490505

   65   14.1  1.5 -1.5   0.015917289  -0.000010057  -0.000011367  -0.000140176  -0.000241375  -0.006708024  -0.000000971  -0.000129717
                         0.007210133  -0.000002499  -0.000005481  -0.000124991   0.000345373   0.009718755   0.000001020  -0.000047136

   66   15.1  1.5 -1.5   0.000011031   0.010874450   0.004908160  -0.000212854   0.007263420  -0.000261186   0.003468668   0.000072582
                         0.000003287  -0.000009681   0.000006611   0.000001472  -0.000006615   0.000004680   0.000001580  -0.000000993

   67   16.1  1.5 -1.5  -0.000000727  -0.000008493  -0.000004107   0.000002598  -0.000005880  -0.000000752  -0.000006335  -0.000001445
                        -0.000002139  -0.010736791  -0.006338063   0.000274693  -0.007149389   0.000253397  -0.004467419  -0.000093509

   68   17.1  1.5 -1.5  -0.000927749   0.000000322  -0.000219858  -0.005021164  -0.000041448  -0.001166353  -0.000040306   0.001856483
                         0.002066368  -0.000001392   0.000258846   0.005865444  -0.000028965  -0.000799359   0.000107183  -0.004937161

   69    1.1  0.5  0.5  -0.000008635   0.000000003   0.000000003   0.000000070   0.000001747   0.000049150   0.000000008  -0.000000381
                         0.000019167  -0.000000006  -0.000000003  -0.000000076   0.000001199   0.000033774  -0.000000021   0.000001031

   70    2.1  0.5  0.5  -0.000000005  -0.000016488  -0.000036302   0.000001574   0.000037655  -0.000001338   0.000109679   0.000002297
                         0.000000000   0.000000007  -0.000000001  -0.000000013  -0.000000019   0.000000000  -0.000000078  -0.000000033

   71    3.1  0.5  0.5   0.000000000   0.000000009   0.000000005  -0.000000039  -0.000000032   0.000000001  -0.000000283  -0.000000114
                         0.000000000   0.000000373   0.000103925  -0.000004506   0.000009770  -0.000000347  -0.000374621  -0.000007845

   72    4.1  0.5  0.5   0.000000000  -0.000000002  -0.000000001  -0.000000015  -0.000000003  -0.000000000  -0.000000132  -0.000000055
                         0.000000008   0.000025223   0.000040783  -0.000001768  -0.000057502   0.000002043  -0.000181493  -0.000003801

   73    5.1  0.5  0.5   0.000001876  -0.000000001  -0.000000523  -0.000011950  -0.000000450  -0.000012672   0.000000246  -0.000011349
                        -0.000004187   0.000000001   0.000000601   0.000013960  -0.000000308  -0.000008683  -0.000000629   0.000030182

   74    6.1  0.5  0.5  -0.000000001  -0.000003413   0.000104277  -0.000004521   0.000014075  -0.000000500  -0.000401993  -0.000008419
                         0.000000000  -0.000000006  -0.000000006   0.000000039   0.000000026  -0.000000001   0.000000305   0.000000123

   75    7.1  0.5  0.5  -0.000007658   0.000000003  -0.000002309  -0.000053651  -0.000000330  -0.000009302   0.000005865  -0.000281532
                        -0.000003447   0.000000001  -0.000002011  -0.000045926   0.000000481   0.000013527   0.000002299  -0.000105859

   76    8.1  0.5  0.5   0.000156673   0.472354094   0.265646573  -0.011516746   0.248462807  -0.008827325   0.147803338   0.003095319
                        -0.000003230  -0.000001322  -0.000012732   0.000098966  -0.000006471  -0.000002948  -0.000120978  -0.000045358

   77    9.1  0.5  0.5  -0.000003146   0.000000969   0.000009185  -0.000102672   0.000004932  -0.000003400   0.000096797   0.000043156
                        -0.000154837  -0.466528285   0.275739999  -0.011954192  -0.251787405   0.008945439   0.141953463   0.002972823

   78   10.1  0.5  0.5  -0.041059242   0.000013392  -0.017637828  -0.409837971   0.000351897   0.009909935  -0.005644073   0.270913824
                        -0.018498477   0.000006416  -0.015361381  -0.350825060  -0.000511775  -0.014401391  -0.002211826   0.101866580

   79   11.1  0.5  0.5   0.492593548  -0.000161937  -0.001470268  -0.034166026  -0.005792459  -0.163125982  -0.000343352   0.016480416
                         0.221898990  -0.000076969  -0.001280466  -0.029243426   0.008436201   0.237395078  -0.000134296   0.006184562

   80   12.1  0.5  0.5  -0.002404403   0.000000833  -0.015420541  -0.352176168   0.000100457   0.002826843  -0.002200386   0.101339702
                         0.005331978  -0.000001647   0.017705759   0.411416605   0.000068481   0.001928670   0.005614929  -0.269514939

   81    1.1  0.5 -0.5   0.000000007   0.000021022  -0.000000103   0.000000005  -0.000059635   0.000002119  -0.000001099  -0.000000023
                        -0.000000000  -0.000000000   0.000000004  -0.000000000   0.000000001   0.000000001  -0.000000006   0.000000000

   82    2.1  0.5 -0.5  -0.000006778   0.000000002  -0.000001034  -0.000023605   0.000001102   0.000031023   0.000000838  -0.000038597
                         0.000015030  -0.000000005   0.000001187   0.000027580   0.000000758   0.000021341  -0.000002139   0.000102664

   83    3.1  0.5 -0.5  -0.000000336   0.000000000  -0.000003398  -0.000078950   0.000000196   0.000005506   0.000007305  -0.000350652
                        -0.000000161   0.000000000  -0.000002959  -0.000067583  -0.000000287  -0.000008070   0.000002863  -0.000131850

   84    4.1  0.5 -0.5  -0.000022998   0.000000008  -0.000001333  -0.000030984  -0.000001157  -0.000032568   0.000003539  -0.000169883
                        -0.000010358   0.000000004  -0.000001161  -0.000026519   0.000001684   0.000047390   0.000001387  -0.000063872

   85    5.1  0.5 -0.5  -0.000000002  -0.000004588   0.000018376  -0.000000797   0.000015362  -0.000000546  -0.000032245  -0.000000675
                         0.000000000  -0.000000009  -0.000000001   0.000000007   0.000000021  -0.000000001   0.000000024   0.000000010

   86    6.1  0.5 -0.5  -0.000001397   0.000000000   0.000002969   0.000067812   0.000000413   0.000011615  -0.000003072   0.000141484
                         0.000003114  -0.000000001  -0.000003409  -0.000079216   0.000000282   0.000007949   0.000007839  -0.000376272

   87    7.1  0.5 -0.5  -0.000000000   0.000000003  -0.000000003   0.000000026   0.000000006  -0.000000000   0.000000227   0.000000092
                        -0.000000003  -0.000008398  -0.000070623   0.000003062   0.000016416  -0.000000583   0.000300776   0.000006299

   88    8.1  0.5 -0.5   0.194007197  -0.000067294   0.007564108   0.172750014   0.007276946   0.204773603   0.001129689  -0.052028703
                        -0.430673424   0.000141522  -0.008685017  -0.201805686   0.004996773   0.140717938  -0.002882162   0.138343252

   89    9.1  0.5 -0.5   0.425362620  -0.000139882  -0.009014938  -0.209476054  -0.005063292  -0.142591369  -0.002768245   0.132874608
                         0.191612323  -0.000066464  -0.007851379  -0.179310708   0.007374549   0.207520116  -0.001084601   0.049951314

   90   10.1  0.5 -0.5  -0.000000349  -0.000002272  -0.000022005   0.000200932  -0.000011560   0.000000191  -0.000218358  -0.000088433
                        -0.000014846  -0.045033931  -0.539486223   0.023388558  -0.017481611   0.000621084  -0.289432294  -0.006061345

   91   11.1  0.5 -0.5   0.000003666   0.000000040   0.000000449   0.000016719   0.000000052   0.000003686  -0.000001808  -0.000005138
                         0.000179261   0.540266199  -0.044972161   0.001949616   0.288039075  -0.010233380  -0.017602639  -0.000368645

   92   12.1  0.5 -0.5   0.000001844   0.005849029   0.541564101  -0.023478635  -0.003422087   0.000121578   0.287937477   0.006030041
                        -0.000000083  -0.000002283  -0.000021925   0.000201703  -0.000011368   0.000000452  -0.000216405  -0.000087959


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.000059599  -0.000003120  -0.005007212   0.000031524  -0.000643366   0.047717496  -0.000268339  -0.003166003
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000003  -0.000000001  -0.000009003  -0.000002189  -0.000001032  -0.000000931  -0.000000023   0.000002460
                        -0.000061029   0.000003197   0.011727053  -0.000074124   0.000625933  -0.046533964   0.000022167   0.000258423

    3    3.1  1.5  1.5   0.000000638   0.000012187   0.000089534   0.014222145   0.023553750   0.000317570  -0.017168806   0.001455169
                        -0.000002175  -0.000041527   0.000016242   0.001859798   0.033256409   0.000447708   0.019594300  -0.001661288

    4    4.1  1.5  1.5  -0.000002052  -0.000039169  -0.000009066  -0.001043372   0.030994247   0.000417298  -0.020819529   0.001765164
                        -0.000000603  -0.000011514   0.000050661   0.008047334  -0.021957112  -0.000296044  -0.018241699   0.001546103

    5    5.1  1.5  1.5   0.000000188   0.000003592  -0.000213674  -0.033940332   0.014109600   0.000190238   0.005453176  -0.000462192
                        -0.000000639  -0.000012148  -0.000037863  -0.004398959   0.019932478   0.000266413  -0.006227601   0.000528015

    6    6.1  1.5  1.5   0.000001896   0.000036234  -0.000046446  -0.005346390  -0.016013626  -0.000217411   0.001111368  -0.000094096
                         0.000000558   0.000010655   0.000258901   0.041124740   0.011317091   0.000152586   0.000981914  -0.000083224

    7    7.1  1.5  1.5  -0.000014328   0.000000751   0.048053617  -0.000304466  -0.000067742   0.005025707  -0.001730884  -0.020418036
                        -0.000000016   0.000000001   0.000030484   0.000014697   0.000000008  -0.000001832  -0.000000500  -0.000002571

    8    8.1  1.5  1.5   0.025095966   0.479135910  -0.000243328  -0.027899981  -0.078714229  -0.001059518   0.325086769  -0.027562155
                         0.007391994   0.141198571   0.001350972   0.214593511   0.055522948   0.000748597   0.284350823  -0.024100586

    9    9.1  1.5  1.5  -0.007389132  -0.141143905   0.000898353   0.142693756  -0.110855848  -0.001494659   0.283447774  -0.024024047
                         0.025086250   0.478950386   0.000160716   0.018428699  -0.156640380  -0.002109013  -0.324062451   0.027475331

   10   10.1  1.5  1.5  -0.000064152   0.000003358   0.375834792  -0.002381259  -0.001263932   0.093808346  -0.013955603  -0.164624545
                        -0.000000108   0.000000005   0.000232554   0.000114907  -0.000000948   0.000022919  -0.000004012  -0.000020481

   11   11.1  1.5  1.5   0.000000034   0.000000651  -0.000079945  -0.012697401   0.003831550   0.000051655   0.002771586  -0.000234907
                        -0.000000120  -0.000002234  -0.000013810  -0.001642853   0.005391957   0.000070521  -0.003178857   0.000269529

   12   12.1  1.5  1.5  -0.000000254  -0.000003859  -0.000011419  -0.001387957   0.005776234   0.000033489  -0.005864050   0.000501780
                        -0.000000060  -0.000001142   0.000067835   0.010778522  -0.004092922  -0.000055095  -0.005125390   0.000434410

   13   13.1  1.5  1.5  -0.000020782   0.000001100   0.002063336  -0.000009625   0.000213085  -0.016997041   0.000101302   0.001010834
                         0.000000045   0.000000001  -0.000008860  -0.000026078   0.000010921   0.000035349   0.000013544  -0.000001359

   14   14.1  1.5  1.5   0.000000042  -0.000000004  -0.000000121  -0.000001842  -0.000004062   0.000036444   0.000002760  -0.000003727
                         0.000021218  -0.000001105  -0.004183910   0.000026104  -0.000228945   0.016606077  -0.000011303  -0.000091885

   15   15.1  1.5  1.5   0.000000228   0.000004354   0.000021074   0.003347362   0.009009571   0.000121493  -0.005792742   0.000490970
                        -0.000000764  -0.000014775   0.000001897   0.000440863   0.012744826   0.000179327   0.006624170  -0.000561669

   16   16.1  1.5  1.5   0.000000951   0.000018121  -0.000011996  -0.001356390  -0.011033342  -0.000146996   0.004596753  -0.000389826
                         0.000000279   0.000005337   0.000065226   0.010360783   0.007798866   0.000105141   0.004018926  -0.000340630

   17   17.1  1.5  1.5   0.000004640  -0.000000242  -0.017112057   0.000108799   0.000026315  -0.002068124   0.000620879   0.007305345
                         0.000000006  -0.000000000  -0.000011148  -0.000008119   0.000001089   0.000001692   0.000001560   0.000000795

   18    1.1  1.5  0.5   0.000000009   0.000000171  -0.000013665  -0.002170693  -0.003438706  -0.000046363   0.031103914  -0.002636261
                        -0.000000026  -0.000000506  -0.000002894  -0.000283744  -0.004854604  -0.000065220  -0.035497017   0.003011492

   19    2.1  1.5  0.5   0.000000636   0.000012163  -0.000038268  -0.004428282   0.007184751   0.000096720   0.024472152  -0.002072619
                         0.000000187   0.000003580   0.000213569   0.033925078  -0.005086620  -0.000068584   0.021442308  -0.001817376

   20    3.1  1.5  0.5   0.000005876  -0.000000308   0.041305724  -0.000261709  -0.000254708   0.018906943   0.000043551   0.000513710
                        -0.000000001   0.000000000   0.000026044   0.000012622  -0.000000189   0.000002750   0.000000039   0.000000348

   21    4.1  1.5  0.5  -0.000000008   0.000000000  -0.000026045  -0.000013611   0.000000056  -0.000003134   0.000000199   0.000005218
                        -0.000023458   0.000001229   0.044475578  -0.000281794  -0.000059032   0.004379439   0.001561824   0.018423904

   22    5.1  1.5  0.5   0.000014640  -0.000000766  -0.006992543   0.000044116  -0.000013063   0.000992874  -0.004408187  -0.052012784
                        -0.000000022   0.000000001  -0.000005106  -0.000000687  -0.000000259   0.000002235   0.000002845   0.000031093

   23    6.1  1.5  0.5  -0.000000032   0.000000002   0.000010979   0.000003233   0.000000182  -0.000000563   0.000000776   0.000031433
                         0.000004020  -0.000000211  -0.010353934   0.000065615  -0.000046043   0.003433340   0.004122071   0.048608832

   24    7.1  1.5  0.5  -0.000000651  -0.000012427  -0.000064288  -0.010211743  -0.023826813  -0.000321252  -0.004574003   0.000387677
                         0.000002216   0.000042299  -0.000011653  -0.001332551  -0.033643415  -0.000452934   0.005224511  -0.000442950

   25    8.1  1.5  0.5   0.000261139  -0.000015697   0.000007778  -0.000120577  -0.000005438   0.000269713  -0.000007210  -0.000108528
                        -0.288656164   0.015118511   0.388283192  -0.002460106   0.002272135  -0.168712410  -0.012140156  -0.143208815

   26    9.1  1.5  0.5   0.288615578  -0.015116380   0.262446689  -0.001662688  -0.004460391   0.331123689  -0.012370512  -0.145926501
                         0.000261103  -0.000015694  -0.000163089   0.000082012  -0.000005152   0.000166305   0.000007349   0.000110319

   27   10.1  1.5  0.5  -0.008499003  -0.162344420   0.000789598   0.125424005   0.289764864   0.003906842   0.001863908  -0.000157978
                         0.028948394   0.552687085   0.000143392   0.016409360   0.409127609   0.005508000  -0.002120912   0.000179785

   28   11.1  1.5  0.5   0.000004727  -0.000000247  -0.004513212   0.000028394   0.000008197  -0.000584133  -0.001560109  -0.018416568
                        -0.000000015   0.000000001   0.000011870   0.000000050  -0.000000249   0.000002217   0.000002265   0.000018220

   29   12.1  1.5  0.5  -0.000000011   0.000000001   0.000006471  -0.000000574   0.000005047   0.000003352  -0.000026669   0.000024010
                        -0.000005813   0.000000302   0.010870769  -0.000068569  -0.000019528   0.001983673   0.001333521   0.015348181

   30   13.1  1.5  0.5  -0.000000008  -0.000000154   0.000004520   0.000719227   0.001084224   0.000014610  -0.011149546   0.000944942
                         0.000000040   0.000000464  -0.000028406   0.000068106   0.001542218   0.000015668   0.012683731  -0.001114205

   31   14.1  1.5  0.5  -0.000000222  -0.000004224   0.000006532   0.001578632  -0.002567410  -0.000037794  -0.008716016   0.000737772
                        -0.000000065  -0.000001244  -0.000076218  -0.012107129   0.001811679   0.000024428  -0.007684309   0.000651303

   32   15.1  1.5  0.5   0.000002621  -0.000000139   0.014247578  -0.000089531  -0.000091827   0.006727355  -0.000206732  -0.002390369
                         0.000000005  -0.000000001  -0.000005837  -0.000001201   0.000000789   0.000000036  -0.000003596   0.000000566

   33   16.1  1.5  0.5  -0.000000007   0.000000000  -0.000003763   0.000003719  -0.000000033  -0.000004559   0.000000912   0.000000454
                         0.000005695  -0.000000298  -0.012135132   0.000076882  -0.000001538   0.000104100   0.000882829   0.010427709

   34   17.1  1.5  0.5   0.000000216   0.000004132   0.000023018   0.003655906   0.008518317   0.000114851   0.001452916  -0.000123143
                        -0.000000735  -0.000014065   0.000001239   0.000476330   0.012028186   0.000161401  -0.001661158   0.000136691

   35    1.1  1.5 -0.5  -0.000000533   0.000000028  -0.002189159   0.000013926  -0.000080020   0.005949107   0.004002367   0.047196310
                         0.000000022  -0.000000001  -0.000001020  -0.000001092  -0.000000139   0.000000297   0.000002400   0.000005869

   36    2.1  1.5 -0.5   0.000000007  -0.000000000   0.000022151   0.000010163  -0.000000066  -0.000001698  -0.000000608   0.000004931
                         0.000012679  -0.000000663  -0.034212865   0.000216732   0.000118568  -0.008803088  -0.002756556  -0.032537038

   37    3.1  1.5 -0.5   0.000000087   0.000001657  -0.000257844  -0.040958184   0.010930073   0.000147370  -0.000338338   0.000028677
                        -0.000000295  -0.000005637  -0.000046557  -0.005347026   0.015427443   0.000207746   0.000386556  -0.000032778

   38    4.1  1.5 -0.5   0.000001179   0.000022505  -0.000050150  -0.005759345   0.003572034   0.000048141   0.013851931  -0.001174411
                         0.000000347   0.000006620   0.000277630   0.044101107  -0.002533784  -0.000034165   0.012147604  -0.001029589

   39    5.1  1.5 -0.5   0.000000217   0.000004148   0.000043652   0.006933800   0.000575685   0.000007761   0.034306376  -0.002907692
                        -0.000000735  -0.000014040   0.000006420   0.000904494   0.000808944   0.000010511  -0.039094798   0.003313224

   40    6.1  1.5 -0.5  -0.000000203  -0.000003866   0.000011741   0.001335904   0.002801455   0.000037469   0.036534693  -0.003099419
                        -0.000000058  -0.000001102  -0.000064637  -0.010267397  -0.001984861  -0.000026761   0.032062997  -0.002717549

   41    7.1  1.5 -0.5   0.000044087  -0.000002309  -0.010298318   0.000065258  -0.000555295   0.041226162  -0.000588641  -0.006943846
                        -0.000000001  -0.000000000  -0.000007065  -0.000003192  -0.000000371  -0.000001313  -0.000000415  -0.000003814

   42    8.1  1.5 -0.5   0.014509998   0.277027019  -0.000439551  -0.050513714  -0.137522066  -0.001851036  -0.107626118   0.009125037
                         0.004246125   0.081107827   0.002423521   0.384983379   0.097732448   0.001317686  -0.094474311   0.008007318

   43    9.1  1.5 -0.5   0.004245528   0.081096422  -0.001637895  -0.260195764   0.191518484   0.002582220   0.096266955  -0.008159256
                        -0.014507953  -0.276988069  -0.000297590  -0.034299502   0.270117744   0.003636930  -0.109668725   0.009298180

   44   10.1  1.5 -0.5   0.576037086  -0.030170226   0.126492870  -0.000801541   0.006752885  -0.501347261   0.000239332   0.002823545
                         0.000013453  -0.000004734   0.000044600   0.000039467   0.000004671   0.000004504  -0.000000303  -0.000003770

   45   11.1  1.5 -0.5   0.000000070   0.000001346   0.000028159   0.004473324  -0.000335808  -0.000004534   0.012152546  -0.001030012
                        -0.000000237  -0.000004531   0.000003644   0.000598826  -0.000477964  -0.000006833  -0.013837845   0.001171759

   46   12.1  1.5 -0.5   0.000000289   0.000005574  -0.000009488  -0.001420433   0.001620716   0.000013018   0.011526502  -0.001020429
                         0.000000086   0.000001649   0.000067912   0.010777571  -0.001143787  -0.000015405   0.010134446  -0.000858903

   47   13.1  1.5 -0.5   0.000000489  -0.000000040   0.000721976  -0.000000787   0.000021231  -0.001885189  -0.001460754  -0.016887534
                        -0.000000017  -0.000000003   0.000026027  -0.000028752   0.000002867   0.000006588  -0.000023775   0.000024638

   48   14.1  1.5 -0.5  -0.000000003   0.000000000  -0.000009617   0.000003438  -0.000001910   0.000005488   0.000003516   0.000033893
                        -0.000004403   0.000000231   0.012209609  -0.000076420  -0.000044961   0.003142252   0.000984120   0.011619655

   49   15.1  1.5 -0.5   0.000000038   0.000000734  -0.000088926  -0.014125773   0.003888304   0.000052431   0.001575981  -0.000133558
                        -0.000000134  -0.000002516  -0.000010455  -0.001859043   0.005489845   0.000075392  -0.001797261   0.000157839

   50   16.1  1.5 -0.5  -0.000000286  -0.000005466   0.000013688   0.001582210   0.000082316   0.000001274   0.007841675  -0.000663315
                        -0.000000084  -0.000001598  -0.000075745  -0.012031544  -0.000063888  -0.000000862   0.006873519  -0.000582582

   51   17.1  1.5 -0.5  -0.000014659   0.000000766   0.003686805  -0.000022984   0.000198093  -0.014739029   0.000183963   0.002206900
                        -0.000000000  -0.000000000   0.000003259  -0.000001766   0.000000438   0.000000665  -0.000002511   0.000002273

   52    1.1  1.5 -1.5  -0.000000879  -0.000016798  -0.000031257  -0.004964672  -0.027579744  -0.000371853  -0.002086796   0.000176870
                         0.000002994   0.000057182  -0.000004101  -0.000651314  -0.038939917  -0.000525020   0.002380936  -0.000201800

   53    2.1  1.5 -1.5  -0.000003068  -0.000058556   0.000011812   0.001516472   0.037974633   0.000510197  -0.000192721   0.000016685
                        -0.000000900  -0.000017199  -0.000073210  -0.011628593  -0.026894927  -0.000362619  -0.000172183   0.000014594

   54    3.1  1.5 -1.5   0.000043278  -0.000002267  -0.014343229   0.000090886  -0.000548902   0.040752520   0.002208483   0.026051958
                         0.000000011  -0.000000001  -0.000005950  -0.000004458  -0.000000388  -0.000000465   0.000000665   0.000003622

   55    4.1  1.5 -1.5   0.000000008  -0.000000000  -0.000012251  -0.000002399   0.000000397  -0.000004081   0.000000746   0.000004353
                         0.000040826  -0.000002138   0.008114682  -0.000051410  -0.000511644   0.037983656  -0.002346537  -0.027680541

   56    5.1  1.5 -1.5   0.000012668  -0.000000666   0.034224175  -0.000216784  -0.000327360   0.024420984  -0.000701727  -0.008277689
                        -0.000000023   0.000000000   0.000053208   0.000009748  -0.000001262  -0.000006412  -0.000000445  -0.000003811

   57    6.1  1.5 -1.5  -0.000000010   0.000000001  -0.000048340  -0.000012375   0.000001141  -0.000020226   0.000000566   0.000005899
                        -0.000037768   0.000001976   0.041470782  -0.000262743   0.000265610  -0.019608986   0.000125618   0.001482990

   58    7.1  1.5 -1.5   0.000000211   0.000004023   0.000299967   0.047649325  -0.002903261  -0.000039147  -0.013456131   0.001140495
                        -0.000000720  -0.000013751   0.000054175   0.006220357  -0.004102292  -0.000055285   0.015356716  -0.001302010

   59    8.1  1.5 -1.5  -0.000428557   0.000018952  -0.000250341  -0.000065533   0.000001486  -0.000185662  -0.000042522  -0.000432237
                        -0.499507831   0.026161971   0.216399448  -0.001371146   0.001297295  -0.096325973   0.036612960   0.431898844

   60    9.1  1.5 -1.5  -0.499314421   0.026151842  -0.143878565   0.000911626   0.002584945  -0.191898990  -0.036497216  -0.430533300
                         0.000428399  -0.000018945  -0.000288784  -0.000042497   0.000000752   0.000070918  -0.000042853  -0.000436204

   61   10.1  1.5 -1.5   0.000000941   0.000017977   0.002346081   0.372672000  -0.054238022  -0.000731300  -0.108492962   0.009195488
                        -0.000003223  -0.000061582   0.000423674   0.048656196  -0.076539162  -0.001030885   0.123816471  -0.010497708

   62   11.1  1.5 -1.5   0.000002327  -0.000000124   0.012803220  -0.000081062  -0.000087405   0.006614671  -0.000357527  -0.004217428
                         0.000000005  -0.000000001   0.000022721   0.000003294  -0.000001393   0.000010299  -0.000000996  -0.000010946

   63   12.1  1.5 -1.5   0.000000008   0.000000014  -0.000025853  -0.000002498   0.000025604  -0.000001487   0.000004046   0.000010691
                         0.000004025  -0.000000261   0.010867488  -0.000068744  -0.000059172   0.007079328  -0.000663685  -0.007788234

   64   13.1  1.5 -1.5   0.000000309   0.000005901   0.000012935   0.002044653   0.009795098   0.000132071   0.000667290  -0.000056585
                        -0.000001056  -0.000019927  -0.000024604   0.000277174   0.013890886   0.000167577  -0.000759284   0.000085110

   65   14.1  1.5 -1.5   0.000001059   0.000020346  -0.000001569  -0.000544343  -0.013572472  -0.000189178   0.000066644  -0.000010319
                         0.000000315   0.000006021   0.000026121   0.004148348   0.009568235   0.000129011   0.000063367  -0.000005375

   66   15.1  1.5 -1.5   0.000015403  -0.000000797  -0.003376269   0.000021142  -0.000216561   0.015607779   0.000746004   0.008799738
                        -0.000000013   0.000000003   0.000001709   0.000000861   0.000004503  -0.000013980   0.000000985   0.000009836

   67   16.1  1.5 -1.5  -0.000000014   0.000000000  -0.000002814  -0.000003409  -0.000000840  -0.000012774  -0.000000780  -0.000007479
                        -0.000018891   0.000000991   0.010449191  -0.000066232   0.000180726  -0.013511358   0.000517680   0.006105886

   68   17.1  1.5 -1.5  -0.000000068  -0.000001302  -0.000106818  -0.016968125   0.001193952   0.000016099   0.004814547  -0.000408064
                         0.000000232   0.000004454  -0.000022202  -0.002214800   0.001688673   0.000020845  -0.005494379   0.000467949

   69    1.1  0.5  0.5   0.000003090   0.000059022   0.000219601   0.034882414   0.101072661   0.001362743   0.000546550  -0.000046323
                        -0.000010525  -0.000200934   0.000039935   0.004565949   0.142706516   0.001921237  -0.000621471   0.000052679

   70    2.1  0.5  0.5  -0.000125726   0.000006585  -0.081074775   0.000513658   0.002079326  -0.154364899  -0.003183308  -0.037551359
                        -0.000000018   0.000000002  -0.000058490  -0.000024579   0.000001473  -0.000006488  -0.000001007  -0.000005851

   71    3.1  0.5  0.5  -0.000000061   0.000000003  -0.000057587  -0.000029753  -0.000000062  -0.000007278  -0.000003582  -0.000018390
                        -0.000083319   0.000004364   0.097199621  -0.000615852   0.000152537  -0.011330879   0.012600564   0.148640504

   72    4.1  0.5  0.5  -0.000000038   0.000000003   0.000057022   0.000032910   0.000001103   0.000005251  -0.000002015  -0.000010993
                         0.000167652  -0.000008781  -0.106912256   0.000677414  -0.001604983   0.119162639   0.006649555   0.078440195

   73    5.1  0.5  0.5  -0.000000638  -0.000012184  -0.001091688  -0.173413213   0.020346161   0.000274332  -0.001680620   0.000142444
                         0.000002173   0.000041478  -0.000197151  -0.022641566   0.028707294   0.000386686   0.001918004  -0.000162599

   74    6.1  0.5  0.5  -0.000109233   0.000005721   0.035110065  -0.000222463   0.000790070  -0.058657367   0.013920569   0.164211671
                         0.000000067  -0.000000003   0.000017185   0.000010819   0.000000519   0.000003170   0.000003939   0.000020053

   75    7.1  0.5  0.5   0.000000009   0.000000167  -0.000132252  -0.015187111   0.023533914   0.000316978  -0.098395339   0.008342372
                        -0.000000001  -0.000000010   0.000732290   0.116323291  -0.016676187  -0.000224848  -0.086217836   0.007307526

   76    8.1  0.5  0.5  -0.000436738   0.000022876   0.460865354  -0.002920061   0.002700812  -0.200542760  -0.014282954  -0.168485911
                        -0.000000090   0.000000008   0.000265256   0.000141378   0.000001794   0.000026221  -0.000004335  -0.000023523

   77    9.1  0.5  0.5   0.000000073  -0.000000002  -0.000212486  -0.000094686   0.000003740  -0.000020885   0.000003953   0.000018812
                         0.000341366  -0.000017879   0.311233698  -0.001971896  -0.005297498   0.393267383  -0.014562758  -0.171786951

   78   10.1  0.5  0.5   0.000008044   0.000153569  -0.000435734  -0.050043847   0.048782895   0.000657188   0.267920406  -0.022715352
                         0.000002370   0.000045275   0.002412835   0.383275843  -0.034585143  -0.000466325   0.234762319  -0.019897645

   79   11.1  0.5  0.5  -0.000028248  -0.000539291   0.000115845   0.013243445   0.424531658   0.005715411   0.017320654  -0.001468550
                        -0.000008292  -0.000158398  -0.000636910  -0.101169605  -0.300677311  -0.004053974   0.015171082  -0.001285849

   80   12.1  0.5  0.5  -0.000001380  -0.000026359   0.000049643   0.007885387   0.000539889   0.000007280  -0.349312883   0.029606554
                         0.000004661   0.000089006   0.000009021   0.001028835   0.000755514   0.000010139   0.398650549  -0.033799230

   81    1.1  0.5 -0.5   0.000209423  -0.000010969  -0.035179974   0.000222930  -0.002355466   0.174873761  -0.000070150  -0.000827612
                         0.000000005  -0.000000002  -0.000010178  -0.000011031  -0.000001632  -0.000001008   0.000000114   0.000001395

   82    2.1  0.5 -0.5   0.000001854   0.000035419  -0.000506097  -0.080393583   0.089225072   0.001203010  -0.024746688   0.002097444
                        -0.000006319  -0.000120634  -0.000091184  -0.010487823   0.125965902   0.001695985   0.028243691  -0.002394614

   83    3.1  0.5 -0.5  -0.000004186  -0.000079924   0.000109607   0.012586159   0.009250783   0.000124442  -0.111794578   0.009478392
                        -0.000001232  -0.000023542  -0.000606750  -0.096381317  -0.006543079  -0.000088214  -0.097959033   0.008302670

   84    4.1  0.5 -0.5   0.000008426   0.000160866  -0.000120745  -0.013850093  -0.097245843  -0.001309110  -0.058996804   0.005002008
                         0.000002472   0.000047217   0.000667378   0.106011361   0.068869301   0.000928547  -0.051693727   0.004381382

   85    5.1  0.5 -0.5  -0.000043231   0.000002265   0.174885023  -0.001108057  -0.000474114   0.035186288   0.000216168   0.002550142
                        -0.000000001   0.000000000   0.000107547   0.000053475  -0.000000373   0.000011275   0.000000051   0.000000327

   86    6.1  0.5 -0.5   0.000001615   0.000030852   0.000219166   0.034814010   0.033900180   0.000457068   0.108221148  -0.009172451
                        -0.000005488  -0.000104786   0.000039664   0.004549909   0.047869243   0.000644438  -0.123505694   0.010471313

   87    7.1  0.5 -0.5   0.000000057  -0.000000003  -0.000072689  -0.000035875   0.000000281  -0.000006497   0.000003182   0.000016359
                        -0.000000157   0.000000009   0.117310490  -0.000743271  -0.000388627   0.028843375  -0.011090315  -0.130824912

   88    8.1  0.5 -0.5   0.000006440   0.000123009   0.002876862   0.456984407   0.115888246   0.001562478  -0.111035802   0.009411010
                        -0.000021950  -0.000419057   0.000520004   0.059684137   0.163668304   0.002202964   0.126722348  -0.010744100

   89    9.1  0.5 -0.5   0.000017153   0.000327505   0.000350376   0.040273096  -0.320914226  -0.004320867   0.129201731  -0.010954269
                         0.000005041   0.000096285  -0.001942827  -0.308617137   0.227317607   0.003064898   0.113215147  -0.009595723

   90   10.1  0.5 -0.5  -0.000000155   0.000000007  -0.000235989  -0.000118182   0.000000704  -0.000027722  -0.000008614  -0.000044540
                        -0.000160104   0.000008386   0.386529045  -0.002449014  -0.000805826   0.059798848   0.030197738   0.356222807

   91   11.1  0.5 -0.5  -0.000000024   0.000000005   0.000028723   0.000032014   0.000004859   0.000002617  -0.000000960  -0.000007355
                         0.000562072  -0.000029440  -0.102032725   0.000646567  -0.007007182   0.520224927   0.001951934   0.023025350

   92   12.1  0.5 -0.5  -0.000092827   0.000004861  -0.007952220   0.000050394  -0.000012482   0.000928583   0.044932569   0.530039382
                         0.000000204  -0.000000010  -0.000005599  -0.000002487  -0.000000080   0.000003905   0.000012877   0.000066492


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5  -0.000221918  -0.000004705   0.000000042   0.000016605   0.000010018   0.000001091   0.000000000  -0.000000569
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000008   0.000000025  -0.000000102   0.000000013  -0.000000000   0.000000066  -0.000000834   0.000001579
                        -0.000221034  -0.000004707  -0.000000038   0.000014295  -0.000004379  -0.000000561   0.000001397   0.000047106

    3    3.1  1.5  1.5   0.000000034  -0.000001592  -0.000021755   0.000000057   0.000013394  -0.000122985   0.000005863   0.000000000
                         0.000000001   0.000001282  -0.000015651   0.000001356  -0.000017853   0.000154927  -0.000009057   0.000000404

    4    4.1  1.5  1.5   0.000001013  -0.000011084  -0.000123035   0.000010719   0.000005025  -0.000043816  -0.000025015   0.000000959
                         0.000000282  -0.000013200   0.000169865  -0.000000410   0.000003800  -0.000034887  -0.000016169   0.000000005

    5    5.1  1.5  1.5   0.000000219  -0.000010240   0.000212678  -0.000000510  -0.000002130   0.000019554   0.000018254  -0.000000002
                        -0.000001159   0.000008664   0.000154131  -0.000013411   0.000002823  -0.000024615  -0.000028238   0.000001192

    6    6.1  1.5  1.5   0.000000751  -0.000009174  -0.000093139   0.000008122  -0.000015168   0.000131833  -0.000012300   0.000000526
                         0.000000234  -0.000010963   0.000128450  -0.000000306  -0.000011393   0.000104615  -0.000007938  -0.000000000

    7    7.1  1.5  1.5  -0.000000447  -0.000000010  -0.000000034  -0.000001632  -0.000010097  -0.000001109  -0.000005437  -0.000184418
                        -0.000000035  -0.000000002   0.000000041  -0.000000012  -0.000000009  -0.000000008  -0.000003249   0.000006065

    8    8.1  1.5  1.5  -0.000000003   0.000000097   0.000000054  -0.000000005  -0.000000186   0.000001607   0.000000003  -0.000000001
                        -0.000000003   0.000000119  -0.000000073   0.000000000  -0.000000138   0.000001271  -0.000000000   0.000000000

    9    9.1  1.5  1.5  -0.000000001   0.000000034  -0.000000171   0.000000000  -0.000000150   0.000001381   0.000000048   0.000000000
                         0.000000001  -0.000000029  -0.000000122   0.000000011   0.000000201  -0.000001745  -0.000000080   0.000000004

   10   10.1  1.5  1.5  -0.000000309  -0.000000007   0.000000001   0.000000066   0.000000165   0.000000019   0.000000067   0.000002210
                        -0.000000002  -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000001   0.000000040  -0.000000073

   11   11.1  1.5  1.5   0.000552171  -0.025657755   0.550243587  -0.001294232  -0.010205519   0.093713871   0.044223461  -0.000000895
                        -0.003005298   0.021671327   0.399393824  -0.034708947   0.013584556  -0.118193481  -0.068555095   0.002894613

   12   12.1  1.5  1.5   0.004706961  -0.036843896  -0.397773248   0.034521406  -0.011898240   0.102581017  -0.070681966   0.002902157
                         0.000943921  -0.044004620   0.548046941  -0.001289650  -0.008895763   0.081677042  -0.045614212   0.000003619

   13   13.1  1.5  1.5   0.571433385   0.012208112   0.000904861  -0.042848707  -0.026182021  -0.003073118  -0.000015177  -0.005388627
                         0.001203085   0.000137206  -0.001395989  -0.000074526   0.000042132  -0.000171547  -0.000010810  -0.000034739

   14   14.1  1.5  1.5  -0.001193052  -0.000088219   0.000297564   0.000058398   0.000037120  -0.000011672   0.002153214  -0.004109392
                         0.569621064   0.012128433   0.000122636  -0.036908496   0.011293972   0.001249857  -0.003609203  -0.122042269

   15   15.1  1.5  1.5   0.000163011  -0.007718546   0.020482167  -0.000055024   0.033380976  -0.306526937   0.021667866  -0.000004039
                        -0.000142149   0.006407789   0.014683744  -0.001336028  -0.044539336   0.386521925  -0.033381399   0.001408694

   16   16.1  1.5  1.5   0.000016984  -0.003005690  -0.014107670   0.001272973  -0.039450698   0.343135254   0.011215947  -0.000316036
                         0.000076613  -0.003643686   0.019732499  -0.000054684  -0.029612225   0.271926505   0.007260716  -0.000006275

   17   17.1  1.5  1.5   0.010329628   0.000231531   0.000192964   0.003517616   0.025712097   0.002797539   0.014069560   0.476576906
                         0.000124355   0.000017690  -0.000251815   0.000028446   0.000027028   0.000000766   0.008407256  -0.015680608

   18    1.1  1.5  0.5  -0.000000243   0.000011496   0.000054882  -0.000000130   0.000011908  -0.000109341   0.000072058  -0.000000011
                        -0.000000101  -0.000009438   0.000039836  -0.000003412  -0.000015875   0.000137670  -0.000111363   0.000004601

   19    2.1  1.5  0.5   0.000000658  -0.000017223  -0.000039196   0.000003471   0.000016578  -0.000144144  -0.000099195   0.000003992
                         0.000000442  -0.000020793   0.000054050  -0.000000128   0.000012466  -0.000114469  -0.000064166   0.000000013

   20    3.1  1.5  0.5  -0.000022152  -0.000000472   0.000000223   0.000009281   0.000013991   0.000001515   0.000006465   0.000219953
                         0.000000027  -0.000000002  -0.000000269   0.000000083   0.000000005  -0.000000006   0.000003863  -0.000007221

   21    4.1  1.5  0.5  -0.000000036  -0.000000094   0.000000863  -0.000000192   0.000000009  -0.000000231  -0.000001907   0.000003554
                         0.000128628   0.000002804   0.000000666   0.000012482   0.000068978   0.000007804   0.000003191   0.000108550

   22    5.1  1.5  0.5   0.000155000   0.000003209  -0.000000862  -0.000037526  -0.000075530  -0.000008499   0.000001580   0.000053487
                         0.000000076  -0.000000091   0.000001043  -0.000000238   0.000000045  -0.000000212   0.000000942  -0.000001823

   23    6.1  1.5  0.5  -0.000000120  -0.000000059   0.000000748  -0.000000158   0.000000068  -0.000000117   0.000002236  -0.000004196
                         0.000098658   0.000002138   0.000000578   0.000011166   0.000034817   0.000003948  -0.000003743  -0.000126077

   24    7.1  1.5  0.5   0.000000091  -0.000004302  -0.000003651   0.000000010   0.000000705  -0.000006472   0.000016903  -0.000000003
                        -0.000000105   0.000003523  -0.000002618   0.000000196  -0.000000990   0.000008130  -0.000026171   0.000001034

   25    8.1  1.5  0.5   0.000000000  -0.000000000  -0.000000008   0.000000003  -0.000000002   0.000000000  -0.000000002  -0.000000000
                        -0.000000016   0.000000000  -0.000000006  -0.000000173   0.000000012   0.000000001   0.000000003   0.000000070

   26    9.1  1.5  0.5  -0.000000262  -0.000000006   0.000000000   0.000000034   0.000000045   0.000000007   0.000000044   0.000001464
                        -0.000000002  -0.000000000   0.000000000   0.000000001   0.000000001   0.000000001   0.000000026  -0.000000048

   27   10.1  1.5  0.5  -0.000000003   0.000000147   0.000000358  -0.000000001   0.000000013  -0.000000116  -0.000000323   0.000000000
                         0.000000002  -0.000000122   0.000000257  -0.000000022  -0.000000018   0.000000148   0.000000502  -0.000000021

   28   11.1  1.5  0.5   0.403574812   0.008356555  -0.002282713  -0.098996821  -0.196804631  -0.022155619   0.001690253   0.057740293
                         0.000515080  -0.000228630   0.002766795  -0.000603484   0.000290097  -0.000540585   0.001013012  -0.001815856

   29   12.1  1.5  0.5  -0.000582730  -0.000364356   0.002565991  -0.000551086   0.000204951   0.000089596  -0.001187860   0.001566923
                         0.417314776   0.009139541   0.001993135   0.042770900   0.196158348   0.021283942   0.001945527   0.042240226

   30   13.1  1.5  0.5   0.000626436  -0.029658042  -0.141401769   0.000317212  -0.030805404   0.282814853  -0.185126477   0.000001412
                        -0.000806877   0.024514350  -0.103086580   0.008696868   0.040371366  -0.354524653   0.287293978  -0.012016507

   31   14.1  1.5  0.5  -0.001664339   0.044458917   0.101403406  -0.008966197  -0.042781447   0.371772614   0.257086080  -0.010601068
                        -0.001138846   0.053547117  -0.139202569   0.000310832  -0.032291910   0.296466449   0.165431891   0.000000128

   32   15.1  1.5  0.5  -0.000967310  -0.000032188   0.000306434   0.010243583   0.008366327   0.000967831   0.017164203   0.579532994
                        -0.000129865  -0.000017090  -0.000380060   0.000107589  -0.000117778   0.000031511   0.010246315  -0.019375747

   33   16.1  1.5  0.5   0.000003551   0.000022851   0.000319773  -0.000107344   0.000028465   0.000049741   0.007545212  -0.014484140
                         0.017774885   0.000358023   0.000250637   0.005141416  -0.028771441  -0.003192401  -0.012653133  -0.426355920

   34   17.1  1.5  0.5  -0.000225019   0.010595870   0.006996775  -0.000021078  -0.002318245   0.021285508  -0.046597327   0.000007752
                         0.000163292  -0.008672416   0.004986275  -0.000366944   0.003162896  -0.026710773   0.072172713  -0.002872045

   35    1.1  1.5 -0.5   0.000014874   0.000000123  -0.000002135  -0.000067812  -0.000175808  -0.000019837   0.000003948   0.000132571
                        -0.000000036  -0.000000233   0.000002666  -0.000000637   0.000000026  -0.000000545   0.000002361  -0.000004361

   36    2.1  1.5 -0.5  -0.000000054  -0.000000227   0.000002714  -0.000000657   0.000000016  -0.000000545  -0.000002046   0.000003868
                         0.000027000   0.000000760   0.000002168   0.000066763   0.000184067   0.000020735   0.000003428   0.000118076

   37    3.1  1.5 -0.5  -0.000000363   0.000017105   0.000007509  -0.000000019   0.000000947  -0.000008696  -0.000119543   0.000000022
                         0.000000302  -0.000014076   0.000005455  -0.000000349  -0.000001183   0.000010960   0.000184772  -0.000007531

   38    4.1  1.5 -0.5  -0.000001857   0.000081882   0.000007273  -0.000001090  -0.000006255   0.000054016   0.000091193  -0.000003717
                        -0.000002103   0.000099199  -0.000010147   0.000000022  -0.000004672   0.000042899   0.000058987  -0.000000010

   39    5.1  1.5 -0.5   0.000002533  -0.000119518  -0.000030302   0.000000072  -0.000005119   0.000047001  -0.000029127   0.000000007
                        -0.000001972   0.000098694  -0.000022137   0.000001351   0.000006788  -0.000059124   0.000044897  -0.000001839

   40    6.1  1.5 -0.5  -0.000001406   0.000062875   0.000006517  -0.000000946  -0.000003165   0.000027225  -0.000105882   0.000004360
                        -0.000001612   0.000076028  -0.000009069   0.000000020  -0.000002364   0.000021703  -0.000068571   0.000000013

   41    7.1  1.5 -0.5  -0.000005560  -0.000000137   0.000000125   0.000004492  -0.000010392  -0.000001214   0.000000888   0.000031139
                         0.000000020  -0.000000023  -0.000000152   0.000000068   0.000000013  -0.000000064   0.000000530  -0.000000998

   42    8.1  1.5 -0.5  -0.000000000  -0.000000010  -0.000000101   0.000000010  -0.000000000   0.000000011   0.000000061  -0.000000003
                         0.000000000  -0.000000012   0.000000141  -0.000000000  -0.000000001   0.000000006   0.000000036   0.000000000

   43    9.1  1.5 -0.5  -0.000000004   0.000000201   0.000000027  -0.000000000   0.000000003  -0.000000027  -0.000000795   0.000000000
                         0.000000004  -0.000000168   0.000000019  -0.000000000  -0.000000006   0.000000036   0.000001230  -0.000000051

   44   10.1  1.5 -0.5   0.000000191   0.000000004  -0.000000014  -0.000000440  -0.000000187  -0.000000022  -0.000000018  -0.000000597
                         0.000000000  -0.000000000   0.000000017  -0.000000007  -0.000000001  -0.000000002  -0.000000011   0.000000019

   45   11.1  1.5 -0.5   0.006591664  -0.310986226  -0.079925603   0.000188447  -0.013353398   0.122603860  -0.031313081   0.000002960
                        -0.005141426   0.257216759  -0.058417743   0.003581957   0.017687579  -0.153949473   0.048546161  -0.001970568

   46   12.1  1.5 -0.5  -0.006097112   0.266012526   0.025005620  -0.003248268  -0.016613057   0.153496275   0.035391283  -0.002279441
                        -0.006818298   0.321542062  -0.034704071   0.000075183  -0.013304907   0.122135306   0.023111664   0.000015323

   47   13.1  1.5 -0.5  -0.038477934  -0.000996692   0.005429560   0.174984756   0.453509525   0.050772665  -0.010298572  -0.341610168
                        -0.000036917  -0.000223778  -0.006801178   0.001279997  -0.001039960   0.000978028  -0.006191597   0.010589400

   48   14.1  1.5 -0.5   0.000219893   0.000559139  -0.007021441   0.001324294  -0.001006274   0.001312486   0.005463458  -0.009279526
                        -0.069597706  -0.001937617  -0.005584682  -0.172215714  -0.475506277  -0.053584485  -0.009084783  -0.305572992

   49   15.1  1.5 -0.5  -0.000013954   0.000663533   0.008297071  -0.000020155   0.000577136  -0.005294573  -0.315271653   0.000064880
                         0.000033667  -0.000715736   0.006008425  -0.000487792  -0.000777562   0.006478951   0.486659733  -0.019989813

   50   16.1  1.5 -0.5  -0.000210205   0.011308511   0.002972850  -0.000406138   0.002531096  -0.022550393  -0.357911768   0.014731904
                        -0.000290717   0.013713648  -0.004196170   0.000011180   0.001946137  -0.017868308  -0.232138596   0.000054840

   51   17.1  1.5 -0.5   0.013692350   0.000277490  -0.000235272  -0.008590322   0.034154569   0.003918586  -0.002465265  -0.085864516
                        -0.000052978  -0.000017231   0.000282382  -0.000155448  -0.000060755   0.000151185  -0.001473489   0.002737931

   52    1.1  1.5 -1.5   0.000003629  -0.000171185  -0.000013346   0.000000034  -0.000000678   0.000006230  -0.000000293   0.000000000
                        -0.000002994   0.000141220  -0.000009880   0.000000025   0.000000854  -0.000007846   0.000000487   0.000000000

   53    2.1  1.5 -1.5  -0.000003014   0.000140651  -0.000008516  -0.000000105  -0.000000480   0.000003430  -0.000039555   0.000001627
                        -0.000003615   0.000170508   0.000011482  -0.000000030  -0.000000297   0.000002723  -0.000025629   0.000000005

   54    3.1  1.5 -1.5   0.000002044   0.000000025  -0.000000852  -0.000026797   0.000197808   0.000022310  -0.000000346  -0.000010783
                        -0.000000024  -0.000000023   0.000001056  -0.000000365   0.000000019   0.000000612  -0.000000209   0.000000357

   55    4.1  1.5 -1.5   0.000000150   0.000000602  -0.000008372   0.000002182  -0.000000077   0.000000149   0.000000490  -0.000000964
                        -0.000017236  -0.000000862  -0.000006707  -0.000209731  -0.000056008  -0.000006298  -0.000000824  -0.000029770

   56    5.1  1.5 -1.5   0.000013412   0.000000907   0.000008389   0.000262643  -0.000031437  -0.000003535  -0.000001022  -0.000033607
                         0.000000167   0.000000754  -0.000010475   0.000002664   0.000000008  -0.000000088  -0.000000613   0.000001091

   57    6.1  1.5 -1.5   0.000000100   0.000000431  -0.000006346   0.000001569  -0.000000046  -0.000000509   0.000000271  -0.000000463
                        -0.000014295  -0.000000659  -0.000005079  -0.000158656   0.000168298   0.000018963  -0.000000450  -0.000014632

   58    7.1  1.5 -1.5   0.000000007  -0.000000323   0.000001319  -0.000000003   0.000000683  -0.000006271  -0.000100239   0.000000018
                        -0.000000008   0.000000312   0.000000962  -0.000000053  -0.000000874   0.000007913   0.000154916  -0.000006334

   59    8.1  1.5 -1.5   0.000000000  -0.000000001   0.000000004   0.000000000  -0.000000004  -0.000000007  -0.000000000  -0.000000002
                         0.000000153   0.000000004   0.000000003   0.000000091   0.000002049   0.000000232   0.000000000   0.000000003

   60    9.1  1.5 -1.5  -0.000000044  -0.000000001  -0.000000007  -0.000000211  -0.000002226  -0.000000251  -0.000000003  -0.000000093
                        -0.000000001  -0.000000000   0.000000009  -0.000000004  -0.000000004  -0.000000007  -0.000000002   0.000000000

   61   10.1  1.5 -1.5   0.000000005  -0.000000237  -0.000000053   0.000000000  -0.000000011   0.000000104   0.000001202  -0.000000000
                        -0.000000004   0.000000198  -0.000000039   0.000000001   0.000000016  -0.000000128  -0.000001856   0.000000078

   62   11.1  1.5 -1.5   0.033582958   0.002338395   0.021691919   0.679884263  -0.150837589  -0.016984881  -0.002481072  -0.081540917
                         0.000389463   0.001966880  -0.027126494   0.006389048  -0.000101716  -0.000454549  -0.001490996   0.002567957

   63   12.1  1.5 -1.5   0.000418210   0.003030233  -0.026978489   0.006384554   0.000179611  -0.000431718   0.001492549  -0.002663695
                        -0.057390804  -0.003723461  -0.021576650  -0.677154520   0.131125788   0.014849792  -0.002488940  -0.084080327

   64   13.1  1.5 -1.5  -0.009329915   0.440033010   0.034483055  -0.000103346   0.001776571  -0.016313449  -0.002747303  -0.000001443
                         0.007874611  -0.364566196   0.025434940   0.001660385  -0.002513420   0.020478559   0.004635821  -0.000018577

   65   14.1  1.5 -1.5   0.007786118  -0.363405165   0.021913497   0.000312129   0.000986098  -0.008821925   0.102469343  -0.004202673
                         0.009299626  -0.438641386  -0.029699144   0.000078484   0.000768042  -0.007051866   0.066417139  -0.000014783

   66   15.1  1.5 -1.5   0.010031687   0.000216203   0.000839157   0.025198874   0.493313166   0.055638397  -0.001209297  -0.039773733
                         0.000031126   0.000005919  -0.001041064   0.000385083   0.000286124   0.001552658  -0.000722521   0.001365435

   67   16.1  1.5 -1.5  -0.000000139  -0.000035652  -0.000990588   0.000402040  -0.000405245  -0.001339993  -0.000157495   0.000442019
                        -0.004723412  -0.000069907  -0.000801366  -0.024253582   0.437819211   0.049309693   0.000274069   0.013353654

   68   17.1  1.5 -1.5  -0.000167343   0.007889048  -0.002844132   0.000005261  -0.001738960   0.015967078   0.259045739  -0.000046058
                         0.000160983  -0.006669303  -0.002070107   0.000317204   0.002191402  -0.020153538  -0.400333278   0.016390007

   69    1.1  0.5  0.5  -0.000000003   0.000000126  -0.000000023   0.000000000  -0.000000010   0.000000090  -0.000000124   0.000000000
                         0.000000002  -0.000000104  -0.000000017   0.000000002   0.000000013  -0.000000113   0.000000192  -0.000000008

   70    2.1  0.5  0.5   0.000000052   0.000000001  -0.000000005  -0.000000151  -0.000000658  -0.000000074  -0.000000033  -0.000001097
                        -0.000000000  -0.000000000   0.000000006  -0.000000002  -0.000000000  -0.000000002  -0.000000020   0.000000036

   71    3.1  0.5  0.5  -0.000000000  -0.000000000   0.000000004  -0.000000001  -0.000000001  -0.000000003   0.000000003  -0.000000007
                        -0.000000037  -0.000000000   0.000000003   0.000000105   0.000001136   0.000000128  -0.000000005  -0.000000167

   72    4.1  0.5  0.5  -0.000000000   0.000000000   0.000000004  -0.000000002  -0.000000000  -0.000000001   0.000000015  -0.000000027
                         0.000000258   0.000000005   0.000000003   0.000000085   0.000000177   0.000000020  -0.000000024  -0.000000814

   73    5.1  0.5  0.5  -0.000000002   0.000000094   0.000000016  -0.000000000  -0.000000053   0.000000488   0.000000070  -0.000000000
                         0.000000002  -0.000000079   0.000000012  -0.000000000   0.000000070  -0.000000614  -0.000000107   0.000000004

   74    6.1  0.5  0.5   0.000000233   0.000000005   0.000000003   0.000000067   0.000000999   0.000000113  -0.000000013  -0.000000439
                         0.000000000   0.000000000  -0.000000003   0.000000001   0.000000000   0.000000003  -0.000000008   0.000000015

   75    7.1  0.5  0.5   0.000000002  -0.000000100  -0.000000057   0.000000006  -0.000000074   0.000000639  -0.000000172   0.000000007
                         0.000000003  -0.000000120   0.000000079  -0.000000000  -0.000000055   0.000000507  -0.000000111   0.000000000

   76    8.1  0.5  0.5  -0.000000263  -0.000000005  -0.000000007  -0.000000151   0.000000089   0.000000008   0.000000053   0.000001733
                        -0.000000000   0.000000000   0.000000008  -0.000000003  -0.000000000  -0.000000001   0.000000032  -0.000000053

   77    9.1  0.5  0.5   0.000000006   0.000000000   0.000000007  -0.000000002   0.000000002  -0.000000004  -0.000000087   0.000000159
                        -0.000000687  -0.000000015   0.000000006   0.000000266   0.000000368   0.000000046   0.000000145   0.000004800

   78   10.1  0.5  0.5  -0.000000002   0.000000019   0.000000051  -0.000000004  -0.000000322   0.000002792  -0.000000725   0.000000029
                        -0.000000001   0.000000024  -0.000000069   0.000000000  -0.000000241   0.000002210  -0.000000475   0.000000000

   79   11.1  0.5  0.5   0.000000003  -0.000000195   0.000000469  -0.000000040  -0.000000058   0.000000504   0.000000254  -0.000000011
                         0.000000005  -0.000000239  -0.000000656   0.000000002  -0.000000043   0.000000397   0.000000161   0.000000000

   80   12.1  0.5  0.5   0.000000006  -0.000000279   0.000000490  -0.000000001   0.000000269  -0.000002465  -0.000000570  -0.000000000
                        -0.000000006   0.000000231   0.000000355  -0.000000033  -0.000000358   0.000003102   0.000000886  -0.000000037

   81    1.1  0.5 -0.5  -0.000000164  -0.000000004  -0.000000001  -0.000000029  -0.000000144  -0.000000016   0.000000007   0.000000229
                        -0.000000000  -0.000000000   0.000000002  -0.000000000   0.000000000  -0.000000000   0.000000004  -0.000000008

   82    2.1  0.5 -0.5  -0.000000001   0.000000040   0.000000123  -0.000000000   0.000000045  -0.000000409  -0.000000596   0.000000000
                         0.000000001  -0.000000033   0.000000088  -0.000000008  -0.000000060   0.000000515   0.000000922  -0.000000039

   83    3.1  0.5 -0.5   0.000000000   0.000000023  -0.000000062   0.000000005   0.000000102  -0.000000890   0.000000140  -0.000000006
                        -0.000000001   0.000000029   0.000000085  -0.000000000   0.000000077  -0.000000706   0.000000092  -0.000000000

   84    4.1  0.5 -0.5   0.000000003  -0.000000164  -0.000000049   0.000000005   0.000000016  -0.000000139   0.000000684  -0.000000028
                         0.000000004  -0.000000199   0.000000070  -0.000000000   0.000000012  -0.000000110   0.000000442  -0.000000000

   85    5.1  0.5 -0.5  -0.000000123  -0.000000003   0.000000000   0.000000020  -0.000000784  -0.000000088  -0.000000004  -0.000000128
                        -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000002   0.000000005

   86    6.1  0.5 -0.5  -0.000000004   0.000000180  -0.000000054   0.000000000  -0.000000068   0.000000621  -0.000000239   0.000000000
                         0.000000004  -0.000000148  -0.000000039   0.000000004   0.000000090  -0.000000783   0.000000368  -0.000000015

   87    7.1  0.5 -0.5   0.000000001   0.000000000  -0.000000005   0.000000001   0.000000000  -0.000000003   0.000000004  -0.000000007
                        -0.000000156  -0.000000003  -0.000000004  -0.000000098   0.000000816   0.000000092  -0.000000006  -0.000000205

   88    8.1  0.5 -0.5   0.000000004  -0.000000203   0.000000123  -0.000000000  -0.000000006   0.000000055   0.000000939   0.000000000
                        -0.000000003   0.000000167   0.000000088  -0.000000011   0.000000005  -0.000000069  -0.000001458   0.000000062

   89    9.1  0.5 -0.5  -0.000000010   0.000000442  -0.000000156   0.000000009   0.000000038  -0.000000287  -0.000004032   0.000000169
                        -0.000000011   0.000000527   0.000000215  -0.000000001   0.000000025  -0.000000231  -0.000002610   0.000000000

   90   10.1  0.5 -0.5   0.000000000  -0.000000001   0.000000004  -0.000000000  -0.000000005  -0.000000012   0.000000015  -0.000000034
                         0.000000030   0.000000002   0.000000003   0.000000085   0.000003561   0.000000402  -0.000000025  -0.000000866

   91   11.1  0.5 -0.5  -0.000000002  -0.000000001   0.000000031  -0.000000014  -0.000000002  -0.000000002  -0.000000005   0.000000008
                        -0.000000308  -0.000000006   0.000000025   0.000000807   0.000000642   0.000000073   0.000000009   0.000000301

   92   12.1  0.5 -0.5   0.000000362   0.000000008   0.000000020   0.000000605   0.000003962   0.000000447   0.000000032   0.000001053
                         0.000000001   0.000000001  -0.000000026   0.000000007  -0.000000002   0.000000012   0.000000019  -0.000000032


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5   0.000061416   0.000002049   0.000221843   0.000001432  -0.000033834  -0.000062290   0.000011904  -0.000071294
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000011   0.000000051  -0.000000086  -0.000000019   0.000000020   0.000000004  -0.000000045  -0.000000074
                        -0.000048783  -0.000001647   0.000219471   0.000001424   0.000028226   0.000052044  -0.000009786   0.000058717

    3    3.1  1.5  1.5   0.000001955  -0.000058606  -0.000000032   0.000004943  -0.000088227   0.000047923   0.000100514   0.000016782
                        -0.000000805   0.000022136   0.000000077  -0.000001987   0.000207829  -0.000112437  -0.000031080  -0.000005289

    4    4.1  1.5  1.5  -0.000000976   0.000028527  -0.000000051   0.000002928  -0.000069720   0.000037530   0.000060176   0.000010073
                        -0.000002519   0.000075509  -0.000000049   0.000007535  -0.000029097   0.000015806   0.000197583   0.000032989

    5    5.1  1.5  1.5   0.000000781  -0.000023411   0.000000046  -0.000007081  -0.000050821   0.000027604  -0.000060747  -0.000010143
                        -0.000000307   0.000008774   0.000000001   0.000002802   0.000119310  -0.000064578   0.000018077   0.000002945

    6    6.1  1.5  1.5   0.000001020  -0.000029837  -0.000000010   0.000001867   0.000113049  -0.000061041  -0.000014285  -0.000002453
                         0.000002639  -0.000079110  -0.000000030   0.000004569   0.000047768  -0.000025947  -0.000046070  -0.000007692

    7    7.1  1.5  1.5  -0.000042466  -0.000001435  -0.000003166  -0.000000005  -0.000075020  -0.000138442   0.000049207  -0.000294922
                         0.000000012  -0.000000048  -0.000000030   0.000000037   0.000000105   0.000000057  -0.000000042  -0.000000442

    8    8.1  1.5  1.5   0.000000002  -0.000000070   0.000000001  -0.000000031   0.000000903  -0.000000488  -0.000000139  -0.000000024
                         0.000000006  -0.000000177   0.000000001  -0.000000079   0.000000382  -0.000000208  -0.000000446  -0.000000074

    9    9.1  1.5  1.5   0.000000053  -0.000001579   0.000000000  -0.000000062   0.000000464  -0.000000252  -0.000000564  -0.000000094
                        -0.000000021   0.000000599   0.000000000   0.000000025  -0.000001095   0.000000592   0.000000176   0.000000031

   10   10.1  1.5  1.5  -0.000000302  -0.000000010  -0.000000824  -0.000000005  -0.000000577  -0.000001063   0.000000375  -0.000002249
                        -0.000000001  -0.000000000  -0.000000001   0.000000000   0.000000001   0.000000001  -0.000000000  -0.000000004

   11   11.1  1.5  1.5   0.001311882  -0.039332434   0.000091698  -0.014229534  -0.070733790   0.038419200  -0.137506859  -0.022959132
                        -0.000520601   0.014880543   0.000015588   0.005654256   0.165572890  -0.089621744   0.041595902   0.006845750

   12   12.1  1.5  1.5  -0.000937523   0.016182066  -0.001136442   0.006421648   0.014846558  -0.007734411   0.076286337   0.013179332
                        -0.001428504   0.042845625  -0.000107159   0.016248215   0.006861277  -0.003725640   0.250870730   0.041886206

   13   13.1  1.5  1.5  -0.161293242  -0.005435415  -0.410812585  -0.002667737   0.060538324   0.111462584  -0.020869067   0.123717288
                         0.000274828  -0.000136920  -0.000862381  -0.000046030  -0.000112977  -0.000201447  -0.000636910  -0.000357313

   14   14.1  1.5  1.5   0.000362255  -0.000050089   0.001031411   0.000035376  -0.000096566  -0.000301410   0.000041511  -0.000174004
                         0.126935470   0.004257505  -0.406584612  -0.002636125  -0.052626371  -0.096601211   0.018267174  -0.109425998

   15   15.1  1.5  1.5   0.005298752  -0.158854000  -0.000046519   0.007230878  -0.174647101   0.094864511   0.168781507   0.028178953
                        -0.002108310   0.059724676  -0.000050471  -0.002930732   0.411733049  -0.222816868  -0.052732497  -0.009059721

   16   16.1  1.5  1.5   0.003618775  -0.105276143   0.000088652  -0.000290921   0.245807424  -0.132619438  -0.085806836  -0.014472314
                         0.009313602  -0.279220847   0.000007124  -0.001069148   0.103239709  -0.056078850  -0.279808037  -0.046716978

   17   17.1  1.5  1.5   0.106936968   0.003609368  -0.001235287  -0.000037796   0.139651183   0.257718266  -0.091318240   0.547186493
                        -0.000023498   0.000111307   0.000029217  -0.000073738  -0.000198709  -0.000110483   0.000011499   0.000798190

   18    1.1  1.5  0.5  -0.000000363   0.000010882   0.000000123  -0.000019062   0.000001138  -0.000000620  -0.000266103  -0.000044430
                         0.000000127  -0.000004099  -0.000000090   0.000007537  -0.000004194   0.000002130   0.000080735   0.000013454

   19    2.1  1.5  0.5   0.000000003   0.000001497  -0.000000055   0.000006512   0.000188870  -0.000102200   0.000036814   0.000006020
                        -0.000000129   0.000003871  -0.000000106   0.000016396   0.000080581  -0.000043768   0.000123219   0.000020574

   20    3.1  1.5  0.5  -0.000118513  -0.000003966  -0.000105976  -0.000000686  -0.000006899  -0.000012978  -0.000013106   0.000078453
                         0.000000008  -0.000000034   0.000000028  -0.000000004  -0.000000105  -0.000000313  -0.000000065   0.000000247

   21    4.1  1.5  0.5   0.000000041  -0.000000115  -0.000000067   0.000000029   0.000000217   0.000000584   0.000000124  -0.000000550
                         0.000138573   0.000004666   0.000197399   0.000001262  -0.000080099  -0.000147894  -0.000008687   0.000051974

   22    5.1  1.5  0.5  -0.000037530  -0.000001253   0.000294755   0.000001923   0.000102309   0.000189123   0.000012797  -0.000076394
                        -0.000000083  -0.000000007   0.000000253   0.000000052   0.000000258   0.000000804   0.000000225  -0.000000512

   23    6.1  1.5  0.5   0.000000002   0.000000069  -0.000000310   0.000000014   0.000000199   0.000000586   0.000000123  -0.000000654
                        -0.000138071  -0.000004631   0.000236909   0.000001523  -0.000051902  -0.000096061  -0.000023274   0.000139370

   24    7.1  1.5  0.5   0.000008259  -0.000247595  -0.000000016   0.000002527  -0.000016980   0.000009223  -0.000000523  -0.000000087
                        -0.000003265   0.000093491   0.000000026  -0.000001036   0.000039792  -0.000021591   0.000000076  -0.000000002

   25    8.1  1.5  0.5  -0.000000000  -0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000003  -0.000000000   0.000000002
                         0.000000884   0.000000030  -0.000000589  -0.000000004  -0.000000558  -0.000001027   0.000000349  -0.000002093

   26    9.1  1.5  0.5  -0.000002120  -0.000000071  -0.000000336  -0.000000002  -0.000000218  -0.000000404   0.000000145  -0.000000869
                         0.000000000  -0.000000001   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000000  -0.000000000

   27   10.1  1.5  0.5  -0.000000056   0.000001673  -0.000000000   0.000000064  -0.000000194   0.000000105  -0.000000552  -0.000000092
                         0.000000022  -0.000000633  -0.000000001  -0.000000026   0.000000451  -0.000000246   0.000000165   0.000000027

   28   11.1  1.5  0.5  -0.053779063  -0.001792297   0.567924702   0.003704916   0.189746018   0.350743955   0.026859666  -0.160364156
                         0.000104714   0.000007020   0.000832567   0.000101885   0.000365536   0.001278734   0.000431199  -0.000893936

   29   12.1  1.5  0.5  -0.000051520  -0.000072410  -0.000963055   0.000143302   0.000394780   0.001237741   0.001545929  -0.001119105
                         0.088466613   0.002977379   0.551339906   0.003499134  -0.176777277  -0.326644285  -0.038422091   0.227653048

   30   13.1  1.5  0.5   0.001294446  -0.038806487  -0.000224044   0.035031391  -0.003007741   0.001632220   0.492876377   0.082296907
                        -0.000755018   0.014593548  -0.001220484  -0.013934280   0.008271144  -0.003139475  -0.149973616  -0.025569262

   31   14.1  1.5  0.5   0.000139212  -0.003900185   0.000205946  -0.012028485  -0.349525031   0.189155344  -0.069485510  -0.011440744
                         0.000341121  -0.010228203   0.000194263  -0.030073903  -0.149145384   0.081008675  -0.228775471  -0.038198902

   32   15.1  1.5  0.5  -0.315620878  -0.010562572  -0.118542133  -0.000768682   0.013620758   0.025159640  -0.020921831   0.125089175
                        -0.000408572  -0.000107392  -0.000093241  -0.000009306  -0.000092455  -0.000136304  -0.000166154   0.000283313

   33   16.1  1.5  0.5   0.000139372   0.000325943  -0.000030068  -0.000011973   0.000156738   0.000424254   0.000022294  -0.000583665
                        -0.496468588  -0.016681225   0.148841698   0.000965560   0.006023057   0.010778378  -0.025772524   0.154497292

   34   17.1  1.5  0.5  -0.021277382   0.637903377   0.000026148  -0.004025146   0.031392287  -0.017052026   0.008622873   0.001440426
                         0.008388693  -0.240872678  -0.000192053   0.001655402  -0.073536399   0.040018514  -0.002467852  -0.000445876

   35    1.1  1.5 -0.5   0.000011628   0.000000385   0.000020498   0.000000148   0.000002202   0.000004302   0.000046422  -0.000278079
                        -0.000000011  -0.000000009  -0.000000054   0.000000038   0.000000271   0.000000610   0.000000104  -0.000000773

   36    2.1  1.5 -0.5   0.000000032  -0.000000048   0.000000019  -0.000000012   0.000000147   0.000000551   0.000000153  -0.000000187
                        -0.000004150  -0.000000120   0.000017642   0.000000119  -0.000111177  -0.000205341   0.000021436  -0.000128601

   37    3.1  1.5 -0.5  -0.000003698   0.000110868   0.000000636  -0.000098460   0.000004837  -0.000002628  -0.000075066  -0.000012533
                         0.000001433  -0.000041875  -0.000000257   0.000039200  -0.000012047   0.000006379   0.000022804   0.000003833

   38    4.1  1.5 -0.5  -0.000001756   0.000048934   0.000000440  -0.000073127  -0.000136105   0.000073675   0.000015478   0.000002618
                        -0.000004324   0.000129645   0.000001183  -0.000183354  -0.000057866   0.000031431   0.000049619   0.000008284

   39    5.1  1.5 -0.5  -0.000001170   0.000035079  -0.000001767   0.000273727  -0.000073944   0.000040164   0.000073017   0.000012191
                         0.000000449  -0.000013341   0.000000760  -0.000109336   0.000174070  -0.000094096  -0.000022467  -0.000003897

   40    6.1  1.5 -0.5   0.000001701  -0.000048796   0.000000551  -0.000087977  -0.000088485   0.000047763   0.000040718   0.000006813
                         0.000004308  -0.000129161   0.000001420  -0.000219968  -0.000037395   0.000020313   0.000133291   0.000022254

   41    7.1  1.5 -0.5  -0.000264658  -0.000008880  -0.000002731  -0.000000025  -0.000023479  -0.000043263   0.000000083  -0.000000522
                         0.000000043  -0.000000136  -0.000000026  -0.000000018  -0.000000053  -0.000000114  -0.000000027   0.000000078

   42    8.1  1.5 -0.5  -0.000000011   0.000000313  -0.000000001   0.000000219  -0.000000943   0.000000512  -0.000000604  -0.000000101
                        -0.000000028   0.000000827  -0.000000004   0.000000547  -0.000000408   0.000000222  -0.000002004  -0.000000335

   43    9.1  1.5 -0.5  -0.000000066   0.000001983   0.000000002  -0.000000312   0.000000161  -0.000000087   0.000000832   0.000000139
                         0.000000026  -0.000000749  -0.000000001   0.000000124  -0.000000371   0.000000200  -0.000000250  -0.000000042

   44   10.1  1.5 -0.5   0.000001789   0.000000060  -0.000000069   0.000000000  -0.000000267  -0.000000491   0.000000096  -0.000000576
                         0.000000000   0.000000001  -0.000000001   0.000000001  -0.000000000   0.000000000  -0.000000001   0.000000001

   45   11.1  1.5 -0.5  -0.001679123   0.050345759  -0.003404067   0.527280448  -0.137330896   0.074593207   0.153328517   0.025600285
                         0.000626837  -0.018907752   0.001465983  -0.210984569   0.322743214  -0.174469306  -0.046987524  -0.008139595

   46   12.1  1.5 -0.5  -0.001119953   0.031312606   0.001162042  -0.204967108  -0.300585987   0.162566110   0.066559926   0.012533327
                        -0.002759662   0.082739742   0.003303655  -0.511825267  -0.127851810   0.069445097   0.217708380   0.036353304

   47   13.1  1.5 -0.5  -0.041459753  -0.001477742  -0.037700956   0.000243617  -0.003528873  -0.008786661  -0.086173689   0.515185194
                         0.000062507  -0.000248836   0.000021871   0.001216729   0.000259815  -0.000502907  -0.000814415   0.001850378

   48   14.1  1.5 -0.5  -0.000033827  -0.000009676   0.000042651   0.000119415  -0.000270854  -0.001000338  -0.000031388  -0.000737397
                         0.010946526   0.000368307  -0.032390157  -0.000256695   0.205771904   0.380014595  -0.039875378   0.239093933

   49   15.1  1.5 -0.5  -0.009843027   0.295109783   0.000710643  -0.110088325  -0.010060547   0.005463659  -0.119720241  -0.019989683
                         0.003833312  -0.111923729  -0.000293165   0.043963696   0.023061038  -0.012477261   0.036255286   0.006177638

   50   16.1  1.5 -0.5   0.006200113  -0.175584115   0.000368514  -0.055120063   0.009734863  -0.005471656   0.045002668   0.007435240
                         0.015489613  -0.464382705   0.000892551  -0.138259287   0.004646060  -0.002522452   0.147798896   0.024676724

   51   17.1  1.5 -0.5   0.681865349   0.022868967   0.004351995   0.000095378   0.043499820   0.079956479  -0.001507804   0.008968308
                        -0.000107883   0.000327878   0.000047965   0.000168735   0.000136788   0.000197908  -0.000012667  -0.000116973

   52    1.1  1.5 -1.5  -0.000001916   0.000057453   0.000001330  -0.000206086  -0.000024598   0.000013361  -0.000068281  -0.000011401
                         0.000000724  -0.000021705  -0.000000530   0.000082113   0.000057228  -0.000031084   0.000020509   0.000003424

   53    2.1  1.5 -1.5  -0.000000630   0.000017229  -0.000000544   0.000081315  -0.000047813   0.000025924  -0.000016962  -0.000002772
                        -0.000001522   0.000045639  -0.000001316   0.000203851  -0.000020555   0.000011164  -0.000056214  -0.000009386

   54    3.1  1.5 -1.5   0.000062647   0.000002113   0.000005327   0.000000058   0.000122223   0.000225778   0.000017594  -0.000105206
                        -0.000000004   0.000000062   0.000000016   0.000000059   0.000000372   0.000001013   0.000000238  -0.000000852

   55    4.1  1.5 -1.5  -0.000000001  -0.000000023  -0.000000069   0.000000029   0.000000299   0.000000799   0.000000157  -0.000000795
                         0.000080718   0.000002701  -0.000008083  -0.000000064  -0.000040721  -0.000075544  -0.000034492   0.000206542

   56    5.1  1.5 -1.5   0.000025001   0.000000839  -0.000007615  -0.000000042   0.000070230   0.000129682  -0.000010561   0.000063379
                        -0.000000066   0.000000012   0.000000018   0.000000018   0.000000141   0.000000424   0.000000098  -0.000000162

   57    6.1  1.5 -1.5  -0.000000046   0.000000021   0.000000043  -0.000000001  -0.000000266  -0.000000756  -0.000000136   0.000000428
                        -0.000084549  -0.000002829  -0.000004935  -0.000000031   0.000066326   0.000122724   0.000008072  -0.000048232

   58    7.1  1.5 -1.5   0.000001325  -0.000039730  -0.000000019   0.000002930  -0.000054722   0.000029721  -0.000282329  -0.000047139
                        -0.000000552   0.000014996  -0.000000033  -0.000001199   0.000127168  -0.000068881   0.000085262   0.000014115

   59    8.1  1.5 -1.5   0.000000003  -0.000000000   0.000000000  -0.000000001  -0.000000002  -0.000000006  -0.000000001   0.000000005
                        -0.000000191  -0.000000006   0.000000085   0.000000001   0.000000531   0.000000981   0.000000078  -0.000000467

   60    9.1  1.5 -1.5   0.000001689   0.000000057  -0.000000066  -0.000000000  -0.000000644  -0.000001189  -0.000000099   0.000000591
                         0.000000002   0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000006  -0.000000002   0.000000006

   61   10.1  1.5 -1.5   0.000000009  -0.000000282  -0.000000005   0.000000765  -0.000000421   0.000000229  -0.000002152  -0.000000359
                        -0.000000004   0.000000108   0.000000001  -0.000000306   0.000000976  -0.000000529   0.000000651   0.000000108

   62   11.1  1.5 -1.5   0.042053187   0.001411210  -0.015311762  -0.000079415   0.097509400   0.180048584  -0.023957957   0.143660280
                         0.000020097   0.000023383   0.000014237   0.000048422   0.000094048   0.000398173   0.000048185   0.000281573

   63   12.1  1.5 -1.5   0.000003941  -0.000372187  -0.000048540   0.001016064   0.000368598   0.000440871   0.000572998  -0.000894694
                         0.045799638   0.001667648  -0.017471111  -0.000520190   0.008577041   0.016349405  -0.043906955   0.262211608

   64   13.1  1.5 -1.5   0.005036285  -0.150982274  -0.002461227   0.381315974   0.044200669  -0.024009847   0.118590630   0.019803728
                        -0.002048979   0.056744502   0.001030194  -0.152858929  -0.102324235   0.055573633  -0.035247093  -0.006613317

   65   14.1  1.5 -1.5   0.001551474  -0.044520560   0.001008597  -0.151451016   0.088631203  -0.048311182   0.031311530   0.005215095
                         0.003965071  -0.118872472   0.002435804  -0.377325722   0.038423883  -0.020870409   0.104850691   0.017506974

   66   15.1  1.5 -1.5   0.169710217   0.005701913   0.007802093   0.000024534   0.242169233   0.447237239   0.029594025  -0.176816594
                        -0.000268858   0.000099666   0.000046150  -0.000064105   0.000833750   0.002136599   0.000570636  -0.001950768

   67   16.1  1.5 -1.5  -0.000194847   0.000093799   0.000125475  -0.000079719  -0.000849047  -0.002217991  -0.000421676   0.001688479
                        -0.298407959  -0.009991492   0.001100894   0.000039431   0.143986221   0.266598589   0.048905481  -0.292664483

   68   17.1  1.5 -1.5  -0.003337123   0.100044735  -0.000007818   0.001158367   0.101872181  -0.055329584   0.523827681   0.087461588
                         0.001379688  -0.037769917   0.000082491  -0.000430086  -0.236729330   0.128222968  -0.158171600  -0.026258173

   69    1.1  0.5  0.5  -0.000000031   0.000000921   0.000000096  -0.000015098  -0.000682709   0.000370818  -0.001327581  -0.000221664
                         0.000000012  -0.000000348   0.000000404   0.000004668   0.001591400  -0.000863778   0.000398753   0.000065759

   70    2.1  0.5  0.5   0.000000526   0.000000018  -0.002809978  -0.000018189   0.001671916   0.003084060  -0.000578217   0.003465737
                         0.000000000   0.000000000   0.000000621  -0.000000119   0.000000451   0.000003356   0.000001311   0.000001157

   71    3.1  0.5  0.5   0.000000001   0.000000000   0.000000897   0.000000329   0.000002275   0.000007972   0.000002454  -0.000003465
                        -0.000000221  -0.000000007  -0.005260796  -0.000034089  -0.000997432  -0.001845171   0.000007133  -0.000046104

   72    4.1  0.5  0.5  -0.000000000   0.000000000   0.000000362   0.000000800   0.000001930   0.000002814   0.000000444  -0.000006157
                        -0.000000339  -0.000000011  -0.001683858  -0.000011191   0.000253317   0.000468195  -0.000499063   0.002990064

   73    5.1  0.5  0.5  -0.000000013   0.000000381   0.000001020  -0.000158158  -0.001906045   0.001035301   0.000255903   0.000042712
                         0.000000005  -0.000000145   0.000000174   0.000063219   0.004485355  -0.002425237  -0.000091019  -0.000017886

   74    6.1  0.5  0.5  -0.000000120  -0.000000004   0.004706245   0.000030269  -0.000013181  -0.000026931  -0.000563190   0.003375097
                        -0.000000000  -0.000000000   0.000001881  -0.000000262  -0.000003504  -0.000007658  -0.000000712   0.000010754

   75    7.1  0.5  0.5  -0.000000000   0.000000018  -0.000001892   0.000101666  -0.002444184   0.001319511   0.001448687   0.000242721
                        -0.000000002   0.000000047  -0.000001668   0.000257688  -0.001027779   0.000558291   0.004751758   0.000793367

   76    8.1  0.5  0.5   0.000001871   0.000000063  -0.000002773  -0.000000017  -0.000002253  -0.000004145   0.000001512  -0.000009059
                        -0.000000003   0.000000001  -0.000000005   0.000000001   0.000000004   0.000000008   0.000000001  -0.000000014

   77    9.1  0.5  0.5   0.000000002   0.000000001   0.000000002  -0.000000001  -0.000000003  -0.000000000   0.000000002   0.000000008
                        -0.000003205  -0.000000107  -0.000001781  -0.000000011  -0.000000967  -0.000001791   0.000000595  -0.000003569

   78   10.1  0.5  0.5   0.000000029  -0.000000878   0.000000002  -0.000000040   0.000002027  -0.000001096  -0.000000867  -0.000000148
                         0.000000077  -0.000002320   0.000000001  -0.000000105   0.000000853  -0.000000463  -0.000002832  -0.000000473

   79   11.1  0.5  0.5   0.000000038  -0.000001093  -0.000000005   0.000000002   0.000001216  -0.000000660  -0.000000014  -0.000000006
                         0.000000096  -0.000002893  -0.000000000   0.000000012   0.000000519  -0.000000282  -0.000000026  -0.000000004

   80   12.1  0.5  0.5  -0.000000017   0.000000497  -0.000000002   0.000000306  -0.000001454   0.000000790   0.000000014   0.000000002
                         0.000000007  -0.000000193   0.000000000  -0.000000122   0.000003410  -0.000001845  -0.000000015  -0.000000004

   81    1.1  0.5 -0.5  -0.000000984  -0.000000033  -0.000015753   0.000000061   0.000940009   0.001731659  -0.000231211   0.001386172
                         0.000000000  -0.000000000   0.000001252   0.000000411   0.000000418   0.000001206   0.000000786  -0.000000002

   82    2.1  0.5 -0.5  -0.000000016   0.000000492  -0.000016853   0.002610634   0.001214785  -0.000659810   0.003318910   0.000554153
                         0.000000007  -0.000000186   0.000006843  -0.001039506  -0.002834737   0.001536214  -0.000998084  -0.000165078

   83    3.1  0.5 -0.5  -0.000000003   0.000000079   0.000012923  -0.001948059   0.001698358  -0.000917267   0.000009944  -0.000000299
                        -0.000000007   0.000000206   0.000031546  -0.004886823   0.000721318  -0.000391788   0.000045152   0.000007538

   84    4.1  0.5 -0.5  -0.000000004   0.000000120   0.000004886  -0.000623598  -0.000429032   0.000231967  -0.000866038  -0.000143989
                        -0.000000011   0.000000318   0.000010101  -0.001564131  -0.000187471   0.000101806  -0.002861905  -0.000477840

   85    5.1  0.5 -0.5  -0.000000407  -0.000000014  -0.000170325  -0.000000883   0.002636964   0.004873501   0.000046051  -0.000271269
                        -0.000000001   0.000000000  -0.000000188   0.000000539   0.000006545   0.000020091   0.000004843  -0.000013557

   86    6.1  0.5 -0.5   0.000000004  -0.000000112   0.000028216  -0.004371294  -0.000003599   0.000001986   0.003229341   0.000539179
                        -0.000000002   0.000000043  -0.000010961   0.001743713   0.000027766  -0.000013494  -0.000981201  -0.000162693

   87    7.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000935   0.000001140   0.000008145   0.000020937   0.000004236  -0.000020531
                         0.000000050   0.000000002  -0.000277017  -0.000002249  -0.001432736  -0.002651401  -0.000829655   0.004967643

   88    8.1  0.5 -0.5  -0.000000058   0.000001751  -0.000000017   0.000002574  -0.000001644   0.000000893  -0.000008672  -0.000001448
                         0.000000023  -0.000000659   0.000000005  -0.000001031   0.000003805  -0.000002068   0.000002619   0.000000435

   89    9.1  0.5 -0.5  -0.000000039   0.000001134   0.000000003  -0.000000661   0.000001645  -0.000000887   0.000001035   0.000000169
                        -0.000000100   0.000002998   0.000000011  -0.000001654   0.000000708  -0.000000384   0.000003416   0.000000570

   90   10.1  0.5 -0.5   0.000000001   0.000000000   0.000000002  -0.000000001  -0.000000007  -0.000000017  -0.000000006   0.000000015
                        -0.000002481  -0.000000083   0.000000113   0.000000001   0.000001190   0.000002199   0.000000496  -0.000002962

   91   11.1  0.5 -0.5  -0.000000000   0.000000001  -0.000000002   0.000000005  -0.000000001  -0.000000003  -0.000000004   0.000000006
                        -0.000003092  -0.000000104  -0.000000012  -0.000000002   0.000000717   0.000001322   0.000000006  -0.000000029

   92   12.1  0.5 -0.5  -0.000000533  -0.000000018   0.000000329   0.000000002   0.000002007   0.000003707   0.000000003  -0.000000017
                        -0.000000005  -0.000000001  -0.000000000  -0.000000000   0.000000003   0.000000011   0.000000003  -0.000000010


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5   0.000156897  -0.000000000   0.000002895  -0.000000266  -0.000032336   0.001536970  -0.000007858  -0.000768088
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000093  -0.000000043   0.000000528   0.000000959   0.000000081   0.000000004   0.000000010   0.000000017
                        -0.000166483   0.000000023   0.000005724  -0.000000433   0.000029457  -0.001397753   0.000010185   0.000993459

    3    3.1  1.5  1.5   0.000000000   0.000165001   0.000070695   0.000770739  -0.000800818  -0.000016848   0.000556787  -0.000005697
                         0.000000044  -0.000088800  -0.000076360   0.000116214  -0.000499489  -0.000010520   0.001194530  -0.000012484

    4    4.1  1.5  1.5  -0.000000092  -0.000079542   0.000061865  -0.000093780  -0.000836692  -0.000017586  -0.000063785   0.000000982
                         0.000000000  -0.000147433   0.000056851   0.000619746   0.001340051   0.000028193   0.000029291  -0.000000300

    5    5.1  1.5  1.5   0.000000000   0.000020237   0.000029768   0.000325196  -0.001062254  -0.000022348  -0.000344248   0.000003522
                         0.000000037  -0.000010714  -0.000032456   0.000048613  -0.000663488  -0.000013825  -0.000737264   0.000007774

    6    6.1  1.5  1.5   0.000000105   0.000091984  -0.000057782   0.000086809   0.000104120   0.000002359  -0.001374831   0.000014169
                         0.000000000   0.000170551  -0.000052820  -0.000576468  -0.000165811  -0.000003488   0.000641189  -0.000006560

    7    7.1  1.5  1.5  -0.000154879   0.000000042   0.000060983  -0.000004952  -0.000018369   0.000879121   0.000017225   0.001654166
                        -0.000000102   0.000000076  -0.000003790  -0.000006744  -0.000000187  -0.000000795  -0.000000153  -0.000001208

    8    8.1  1.5  1.5   0.000000001  -0.000000276  -0.000782645   0.001177939   0.001163147   0.000025413  -0.001119610   0.000009620
                        -0.000000000  -0.000000511  -0.000719010  -0.007848801  -0.001858604  -0.000039103   0.000520786  -0.000005324

    9    9.1  1.5  1.5  -0.000000000  -0.000000501  -0.000717630  -0.007833607   0.001636169   0.000034423  -0.000715127   0.000007321
                        -0.000000002   0.000000270   0.000780045  -0.001175120   0.001022380   0.000020692  -0.001536452   0.000017519

   10   10.1  1.5  1.5  -0.000001011  -0.000000000   0.000231959  -0.000018853  -0.000086651   0.004141248   0.000060785   0.005827498
                        -0.000000001  -0.000000000  -0.000014320  -0.000025464  -0.000000711  -0.000002462  -0.000000594  -0.000004937

   11   11.1  1.5  1.5  -0.000000088  -0.005078784  -0.005356774  -0.058391197   0.253851062   0.005340887   0.112701259  -0.001152985
                         0.000030790   0.002745202   0.005837110  -0.008845640   0.158105587   0.003321476   0.241346933  -0.002563134

   12   12.1  1.5  1.5  -0.000708375  -0.022788133  -0.004672727   0.007125892   0.168431652   0.004626756   0.226611884  -0.002834586
                         0.000001880  -0.042611048  -0.004328706  -0.047177446  -0.270084149  -0.005684266  -0.106029859   0.001086262

   13   13.1  1.5  1.5  -0.296837847   0.000086933   0.000558416  -0.000074159  -0.009086861   0.410568842  -0.002735548  -0.214268850
                         0.000653339   0.000161670   0.000031423   0.000173756   0.000736358  -0.000780571   0.000260109   0.000570635

   14   14.1  1.5  1.5   0.000439866  -0.000065772   0.000147685   0.000354138  -0.000058287  -0.000886589   0.000080638   0.000430704
                         0.309874535   0.000035006   0.001508433  -0.000099749   0.007881705  -0.376916805   0.002903985   0.267869233

   15   15.1  1.5  1.5   0.000000943   0.307661942  -0.019965439  -0.217923637   0.253604885   0.005335039  -0.135804543   0.001389721
                         0.000235479  -0.165121894   0.021614208  -0.032654707   0.158671578   0.003158065  -0.291604514   0.003171475

   16   16.1  1.5  1.5   0.000292748   0.223803622   0.022357886  -0.033577480  -0.152725568  -0.003298424   0.293960489  -0.002953552
                        -0.000000183   0.415434202   0.020461546   0.223354810   0.244283618   0.005139595  -0.136769195   0.001398996

   17   17.1  1.5  1.5   0.281910466  -0.000070494   0.016478218  -0.001339946  -0.005143532   0.243943039   0.004552663   0.442974194
                         0.000208276  -0.000129485  -0.001021960  -0.001807668   0.000022901  -0.000236140  -0.000012921  -0.000309743

   18    1.1  1.5  0.5  -0.000000000  -0.000040855  -0.000137107  -0.001494946  -0.000211770  -0.000004455  -0.000309575   0.000003168
                        -0.000000007   0.000021983   0.000148791  -0.000225682  -0.000132700  -0.000002887  -0.000664759   0.000007238

   19    2.1  1.5  0.5   0.000000113   0.000050513  -0.000155045   0.000234938  -0.000200645  -0.000003979  -0.000475377   0.000004616
                         0.000000000   0.000093568  -0.000142774  -0.001556919   0.000321067   0.000006755   0.000221435  -0.000002265

   20    3.1  1.5  0.5  -0.000191782   0.000000028   0.000685601  -0.000056205  -0.000022468   0.001074132   0.000010316   0.000997943
                        -0.000000069   0.000000051  -0.000043481  -0.000072871  -0.000000201  -0.000000413  -0.000000059  -0.000000955

   21    4.1  1.5  0.5   0.000000066  -0.000000036   0.000079920   0.000133182   0.000000242   0.000000219  -0.000000020   0.000000744
                         0.000130545   0.000000019   0.001253308  -0.000102793  -0.000009777   0.000472031   0.000010925   0.001073738

   22    5.1  1.5  0.5  -0.000027842  -0.000000022  -0.001768385   0.000145201  -0.000008880   0.000418287   0.000004694   0.000416047
                        -0.000000038  -0.000000041   0.000113718   0.000187476   0.000000142  -0.000000628  -0.000000213  -0.000000953

   23    6.1  1.5  0.5   0.000000172  -0.000000092   0.000091864   0.000150885   0.000000053  -0.000000828  -0.000000215  -0.000001061
                        -0.000139112   0.000000050   0.001423597  -0.000116928   0.000009160  -0.000434324  -0.000010323  -0.000966231

   24    7.1  1.5  0.5   0.000000000   0.000143279   0.000019901   0.000217232   0.001100236   0.000023148  -0.000334931   0.000003427
                        -0.000000031  -0.000077194  -0.000021958   0.000032788   0.000686826   0.000014499  -0.000717868   0.000007266

   25    8.1  1.5  0.5  -0.000000001  -0.000000000   0.000013757   0.000024230   0.000000568   0.000008679   0.000000530   0.000006961
                         0.000001300   0.000000000   0.000212719  -0.000017218   0.000000110   0.000016986   0.000078601   0.007586791

   26    9.1  1.5  0.5  -0.000001574   0.000000000   0.000184187  -0.000015078  -0.000150284   0.007160073   0.000026716   0.002510123
                        -0.000000003  -0.000000000  -0.000011089  -0.000019334  -0.000000530  -0.000001914  -0.000000592  -0.000010491

   27   10.1  1.5  0.5   0.000000000   0.000001389  -0.000002479  -0.000027326  -0.006058516  -0.000127463   0.002145443  -0.000021950
                         0.000000000  -0.000000750   0.000004605  -0.000005011  -0.003781390  -0.000079769   0.004600101  -0.000047003

   28   11.1  1.5  0.5  -0.001785015  -0.000040156   0.497698446  -0.040905950   0.001535169  -0.071503693  -0.000856354  -0.073733420
                         0.000165129  -0.000074736  -0.032325588  -0.052709209  -0.000050165   0.000037096   0.000046948  -0.000042941

   29   12.1  1.5  0.5   0.000081046  -0.000019478  -0.032423156  -0.053724457  -0.000138139  -0.000036176  -0.000197798  -0.000098595
                         0.050126926   0.000009422  -0.496815823   0.040678921   0.000693476  -0.037061182  -0.001316118  -0.087517453

   30   13.1  1.5  0.5  -0.000000062   0.080080294  -0.037069904  -0.403849063  -0.062059999  -0.001305395  -0.082315210   0.000842457
                        -0.000159002  -0.043569765   0.041393908  -0.061999082  -0.038623325  -0.000723152  -0.176049201   0.002189023

   31   14.1  1.5  0.5  -0.000039068  -0.094058701  -0.041608371   0.064159464  -0.054099631  -0.000935797  -0.128202596   0.001372141
                        -0.000000241  -0.173862939  -0.038567778  -0.419459197   0.086815625   0.001826511   0.060187832  -0.000616035

   32   15.1  1.5  0.5  -0.357244301   0.000000405  -0.117012692   0.009634967   0.006309598  -0.302637968  -0.002993560  -0.282316359
                        -0.000409503   0.000000772   0.007542500   0.012239773   0.000086537   0.000275011   0.000055649   0.000608288

   33   16.1  1.5  0.5   0.000441117  -0.000111688  -0.007573239  -0.012672991   0.000029240   0.000394463   0.000056182   0.000511452
                        -0.349271246   0.000060392  -0.120310418   0.009875000  -0.003535879   0.169173134   0.003994239   0.379755017

   34   17.1  1.5  0.5  -0.000000349  -0.263891949   0.004782325   0.052163707   0.295924083   0.006225869  -0.091723219   0.000938411
                         0.000042758   0.142163358  -0.005150138   0.007833675   0.184736754   0.003909548  -0.196577627   0.002015846

   35    1.1  1.5 -0.5  -0.000046394  -0.000000003   0.001508835  -0.000123772   0.000005308  -0.000249911  -0.000007899  -0.000733308
                         0.000000017  -0.000000006  -0.000095989  -0.000160055  -0.000000090   0.000000429   0.000000190   0.000000555

   36    2.1  1.5 -0.5   0.000000107  -0.000000099  -0.000099869  -0.000166774  -0.000000202  -0.000000190   0.000000101  -0.000000348
                        -0.000106333   0.000000054  -0.001571375   0.000128879   0.000007837  -0.000378606  -0.000005140  -0.000524420

   37    3.1  1.5 -0.5   0.000000000   0.000168820   0.000062277   0.000679302  -0.000910956  -0.000019165  -0.000421113   0.000004308
                        -0.000000058  -0.000090996  -0.000067756   0.000102413  -0.000569138  -0.000011727  -0.000904740   0.000009373

   38    4.1  1.5 -0.5  -0.000000041   0.000061841  -0.000123826   0.000187648  -0.000250142  -0.000004972  -0.000973336   0.000009892
                         0.000000000   0.000114969  -0.000113890  -0.001241756   0.000400303   0.000008422   0.000453354  -0.000004638

   39    5.1  1.5 -0.5   0.000000000   0.000024495  -0.000160820  -0.001752003  -0.000354496  -0.000007458  -0.000175061   0.000001791
                         0.000000047  -0.000013235   0.000174263  -0.000265716  -0.000222029  -0.000004823  -0.000377425   0.000004344

   40    6.1  1.5 -0.5  -0.000000105  -0.000066113  -0.000140245   0.000214225   0.000230691   0.000004896   0.000876047  -0.000009445
                        -0.000000000  -0.000122398  -0.000129498  -0.001410381  -0.000367994  -0.000007742  -0.000407608   0.000004170

   41    7.1  1.5 -0.5   0.000162751  -0.000000015  -0.000219249   0.000017934  -0.000027313   0.001297015  -0.000008033  -0.000792158
                         0.000000027  -0.000000027   0.000013942   0.000023592   0.000000042  -0.000000016  -0.000000033   0.000000035

   42    8.1  1.5 -0.5  -0.000000000   0.000000617  -0.000022655   0.000032040  -0.000016357   0.000000541  -0.006878097   0.000071452
                         0.000000000   0.000001145  -0.000019243  -0.000210742   0.000009814   0.000000207   0.003201755  -0.000032755

   43    9.1  1.5 -0.5   0.000000000   0.000001384   0.000016688   0.000182546  -0.006072801  -0.000127765  -0.001051895   0.000010760
                         0.000000000  -0.000000749  -0.000017962   0.000026923  -0.003793118  -0.000079131  -0.002279111   0.000024460

   44   10.1  1.5 -0.5   0.000001578   0.000000000   0.000027657  -0.000002073   0.000150366  -0.007141745   0.000051876   0.005075810
                         0.000000001   0.000000000  -0.000002637  -0.000004802  -0.000000171  -0.000000470   0.000000016  -0.000000945

   45   11.1  1.5 -0.5   0.000000082   0.001649893   0.045296847   0.493060054   0.060636183   0.001275704   0.031216983  -0.000319564
                         0.000084841  -0.000700999  -0.048987275   0.075103061   0.037895023   0.000855477   0.066799095  -0.000795880

   46   12.1  1.5 -0.5  -0.000021617   0.023696880   0.050018312  -0.075124190   0.019655802   0.000250036   0.079350038  -0.001276305
                         0.000000940   0.044172086   0.045158170   0.492172307  -0.031419453  -0.000661418  -0.036917281   0.000377274

   47   13.1  1.5 -0.5   0.091164830  -0.000075338   0.407689989  -0.033364114   0.001490285  -0.073097161  -0.002339925  -0.194342717
                         0.000389526  -0.000140020  -0.026959676  -0.044435001   0.000077807  -0.000099051   0.000162191  -0.000151923

   48   14.1  1.5 -0.5  -0.000373831   0.000034282  -0.027766545  -0.044777771  -0.000173371   0.000079582  -0.000021957   0.000331953
                         0.197674533  -0.000018736  -0.423428239   0.034837928   0.002044945  -0.102292308  -0.001503924  -0.141627577

   49   15.1  1.5 -0.5  -0.000000009   0.314337332  -0.010654084  -0.115927126   0.256578960   0.005398189   0.118825834  -0.001215393
                        -0.000000872  -0.169751879   0.011363763  -0.017600023   0.160490038   0.003267731   0.256092400  -0.002736296

   50   16.1  1.5 -0.5  -0.000126970  -0.165999200   0.011774680  -0.017914887  -0.089917353  -0.001847560  -0.344350401   0.003643337
                        -0.000000213  -0.307302560   0.010930565   0.119209931   0.143298899   0.003014932   0.160115383  -0.001638046

   51   17.1  1.5 -0.5  -0.299748861   0.000020582  -0.052644783   0.004320626  -0.007351573   0.348853452  -0.002223566  -0.216923748
                        -0.000038754   0.000037480   0.003308412   0.005543172   0.000019626  -0.000008708   0.000002009   0.000002951

   52    1.1  1.5 -1.5  -0.000000000   0.000138138  -0.000000265  -0.000002884   0.001303795   0.000027430  -0.000324785   0.000003323
                         0.000000000  -0.000074395  -0.000000023  -0.000000249   0.000813876   0.000017123  -0.000696041   0.000007121

   53    2.1  1.5 -1.5   0.000000049   0.000079021   0.000000918  -0.000001020  -0.000740153  -0.000015667   0.000900280  -0.000009233
                         0.000000000   0.000146534   0.000000514   0.000005657   0.001185702   0.000024946  -0.000420068   0.000004298

   54    3.1  1.5 -1.5  -0.000187379  -0.000000020   0.000777887  -0.000063850  -0.000019863   0.000943821  -0.000013721  -0.001317920
                         0.000000054  -0.000000039  -0.000049349  -0.000082169   0.000000003   0.000000348   0.000000116   0.000000545

   55    4.1  1.5 -1.5   0.000000125  -0.000000081  -0.000040014  -0.000066535   0.000000011   0.000000156   0.000000143   0.000000428
                        -0.000167521   0.000000043  -0.000625523   0.000051307  -0.000033228   0.001579807   0.000001016   0.000070188

   56    5.1  1.5 -1.5  -0.000022897  -0.000000017   0.000328176  -0.000026859  -0.000026279   0.001252437   0.000008534   0.000813674
                         0.000000163  -0.000000033  -0.000020403  -0.000034901  -0.000000107  -0.000000331  -0.000000096   0.000000207

   57    6.1  1.5 -1.5  -0.000000118   0.000000092   0.000036798   0.000062120   0.000000154  -0.000000522   0.000000047   0.000000300
                         0.000193775  -0.000000050   0.000581805  -0.000047644   0.000004209  -0.000195791   0.000015614   0.001516999

   58    7.1  1.5 -1.5  -0.000000000  -0.000136313  -0.000005514  -0.000060429   0.000745328   0.000015681   0.000698367  -0.000007145
                         0.000000087   0.000073527   0.000006292  -0.000009032   0.000466197   0.000009569   0.001499517  -0.000015674

   59    8.1  1.5 -1.5   0.000000001   0.000000001   0.000497049   0.000841705   0.000000851  -0.000002493  -0.000000756   0.000001489
                        -0.000000580  -0.000000001   0.007921121  -0.000648877   0.000046627  -0.002192559   0.000010969   0.001234805

   60    9.1  1.5 -1.5   0.000000569   0.000000001  -0.007905740   0.000647726   0.000040157  -0.001929329   0.000018971   0.001694724
                         0.000000001   0.000000002   0.000495551   0.000838996   0.000000676   0.000000869  -0.000000774  -0.000001639

   61   10.1  1.5 -1.5  -0.000000000  -0.000000890  -0.000020978  -0.000229861   0.003511673   0.000073882   0.002459675  -0.000025164
                        -0.000000000   0.000000480   0.000023744  -0.000034260   0.002195016   0.000045281   0.005282969  -0.000055335

   62   11.1  1.5 -1.5   0.005773223  -0.000014677  -0.058936322   0.004833725   0.006289449  -0.299061275  -0.002810251  -0.266364243
                         0.000008819  -0.000027067   0.003779850   0.006277100   0.000010602  -0.000303182   0.000038982  -0.000076720

   63   12.1  1.5 -1.5  -0.000140958  -0.000624572   0.003033041   0.005028438   0.000914823   0.000139644  -0.000214229   0.000261789
                        -0.048321637   0.000334228   0.047616073  -0.003909844   0.007271922  -0.318299622  -0.003028027  -0.250190345

   64   13.1  1.5 -1.5   0.000000119  -0.261657144  -0.000058906  -0.000559047   0.347867869   0.007318362  -0.090086164   0.000921011
                         0.000183561   0.140173724  -0.000179501  -0.000016825   0.218071845   0.005436436  -0.194411802   0.002588941

   65   14.1  1.5 -1.5   0.000074507  -0.146543164   0.000344222  -0.000277151  -0.200341919  -0.004124177   0.242925319  -0.002665690
                        -0.000000366  -0.273033921   0.000129902   0.001490090   0.319265061   0.006716832  -0.112877815   0.001154872

   66   15.1  1.5 -1.5  -0.349171675  -0.000110825  -0.219927222   0.018028160   0.006197956  -0.299152157   0.003461634   0.321676872
                         0.000501702  -0.000207772   0.013749845   0.023254638   0.000146126   0.000307301  -0.000081688  -0.000238421

   67   16.1  1.5 -1.5  -0.000062520   0.000257834  -0.014201059  -0.024038310  -0.000076434   0.000199281   0.000018865  -0.000360474
                         0.471883072  -0.000138649  -0.225417720   0.018458321  -0.006106488   0.288096416  -0.003268073  -0.324219759

   68   17.1  1.5 -1.5   0.000000669   0.248105966  -0.001490767  -0.016328809   0.206809257   0.004351077   0.187030309  -0.001913378
                        -0.000147429  -0.133854339   0.001685448  -0.002438453   0.129376171   0.002743096   0.401554350  -0.004131089

   69    1.1  0.5  0.5   0.000000003   0.004724811  -0.000000514  -0.000005591   0.000213546   0.000004493  -0.000069004   0.000000706
                        -0.000000946  -0.002545989   0.000000493  -0.000000813   0.000133289   0.000002809  -0.000147937   0.000001511

   70    2.1  0.5  0.5  -0.001454214  -0.000000418   0.000138316  -0.000011346  -0.000005549   0.000264466  -0.000000038  -0.000003528
                         0.000000980  -0.000000771  -0.000008766  -0.000014651  -0.000000024  -0.000000026  -0.000000000  -0.000000078

   71    3.1  0.5  0.5   0.000000625  -0.000000732  -0.000018216  -0.000030408  -0.000000033   0.000000015   0.000000024  -0.000000027
                        -0.001607673   0.000000394  -0.000286356   0.000023485  -0.000000611   0.000028068  -0.000000580  -0.000061773

   72    4.1  0.5  0.5  -0.000001821   0.000001372  -0.000004097  -0.000006789   0.000000015   0.000000079   0.000000020   0.000000144
                         0.004728276  -0.000000747  -0.000064631   0.000005310   0.000001996  -0.000094380   0.000002866   0.000276154

   73    5.1  0.5  0.5  -0.000000000  -0.001726444  -0.000011791  -0.000128619   0.000122135   0.000002570   0.000095896  -0.000000981
                         0.000002629   0.000933315   0.000012844  -0.000019399   0.000076336   0.000001558   0.000205952  -0.000002128

   74    6.1  0.5  0.5  -0.000899072   0.000000390  -0.000258907   0.000021236  -0.000002961   0.000140204   0.000000142   0.000007206
                        -0.000001503   0.000000727   0.000016482   0.000027491   0.000000020  -0.000000052  -0.000000032  -0.000000051

   75    7.1  0.5  0.5  -0.000001238   0.000173712  -0.000010874   0.000016549   0.000084600   0.000001759   0.000204221  -0.000002166
                         0.000000006   0.000326176  -0.000010048  -0.000109527  -0.000135323  -0.000002847  -0.000095081   0.000000973

   76    8.1  0.5  0.5   0.000003603   0.000000000   0.000935237  -0.000075635   0.000000729   0.000062086   0.000341573   0.032969471
                        -0.000000000   0.000000000  -0.000059765  -0.000106497  -0.000003047  -0.000010288  -0.000002203  -0.000020637

   77    9.1  0.5  0.5   0.000000006   0.000000001   0.000047902   0.000084968   0.000002306   0.000008248   0.000002271   0.000016532
                        -0.000008762  -0.000000001   0.000808781  -0.000066112  -0.000653035   0.031113184   0.000116015   0.010899929

   78   10.1  0.5  0.5   0.000000003  -0.000000028  -0.002975203   0.004506167  -0.002832697  -0.000054551  -0.010395332   0.000101928
                        -0.000000000  -0.000000047  -0.002737910  -0.029856702   0.004535453   0.000095423   0.004841269  -0.000049518

   79   11.1  0.5  0.5   0.000000002  -0.000000785  -0.000198648   0.000308284  -0.014472049  -0.000304914   0.016601833  -0.000169943
                        -0.000000000  -0.000001456  -0.000189444  -0.002064764   0.023186791   0.000487821  -0.007743444   0.000079224

   80   12.1  0.5  0.5   0.000000000   0.000002892   0.002667839   0.029088355   0.007037246   0.000148053   0.004998232  -0.000051147
                         0.000000006  -0.000001555  -0.002894964   0.004391586   0.004402493   0.000094245   0.010736100  -0.000119099

   81    1.1  0.5 -0.5  -0.005367113   0.000000452  -0.000005640   0.000000469   0.000005299  -0.000251730   0.000001667   0.000163239
                        -0.000001264   0.000000831   0.000000328   0.000000536  -0.000000004  -0.000000012   0.000000001  -0.000000023

   82    2.1  0.5 -0.5   0.000000002  -0.001280810  -0.000012567  -0.000137046   0.000224330   0.000004720  -0.000001563   0.000000016
                        -0.000000876   0.000688669   0.000013619  -0.000020655   0.000140065   0.000002918  -0.000003164   0.000000034

   83    3.1  0.5 -0.5   0.000000831   0.000762846  -0.000028270   0.000042830   0.000014876   0.000000351  -0.000055990   0.000000515
                        -0.000000001   0.001415160  -0.000026019  -0.000283720  -0.000023801  -0.000000501   0.000026097  -0.000000267

   84    4.1  0.5 -0.5  -0.000001563  -0.002243568  -0.000006306   0.000009652  -0.000049910  -0.000001069   0.000250312  -0.000002606
                        -0.000000007  -0.004162091  -0.000005876  -0.000064038   0.000080104   0.000001685  -0.000116641   0.000001193

   85    5.1  0.5 -0.5   0.001962569  -0.000001247  -0.000129813   0.000010641   0.000003005  -0.000144028  -0.000002343  -0.000227183
                         0.000003114  -0.000002315   0.000008241   0.000013812   0.000000039   0.000000081   0.000000011   0.000000186

   86    6.1  0.5 -0.5   0.000000001  -0.000790865   0.000023526   0.000256523   0.000118906   0.000002502   0.000003001  -0.000000031
                         0.000000825   0.000427628  -0.000025558   0.000038737   0.000074287   0.000001585   0.000006552  -0.000000142

   87    7.1  0.5 -0.5   0.000001717  -0.000001093   0.000007047   0.000011700  -0.000000015  -0.000000107  -0.000000034  -0.000000192
                         0.000369545   0.000000582   0.000110546  -0.000009074   0.000003347  -0.000159591  -0.000002374  -0.000225270

   88    8.1  0.5 -0.5   0.000000000   0.000003173  -0.000084533  -0.000926606   0.000047219   0.000000995   0.013922392  -0.000142437
                         0.000000000  -0.000001708   0.000099581  -0.000140153   0.000041604  -0.000002971   0.029885673  -0.000310465

   89    9.1  0.5 -0.5  -0.000000001   0.000004159   0.000078953  -0.000117435   0.016482450   0.000343847   0.009884510  -0.000106093
                         0.000000000   0.000007712   0.000073190   0.000801643  -0.026388617  -0.000555184  -0.004594038   0.000046999

   90   10.1  0.5 -0.5   0.000000003   0.000000003   0.001915980   0.003200117   0.000004255   0.000001276  -0.000001773   0.000008491
                        -0.000000054  -0.000000001   0.030133988  -0.002471281  -0.000109833   0.005347383   0.000113306   0.011467377

   91   11.1  0.5 -0.5   0.000000001   0.000000002   0.000129170   0.000214238  -0.000000338  -0.000001681  -0.000000067  -0.000002949
                        -0.000001655  -0.000000001   0.002083651  -0.000171617  -0.000575275   0.027332535  -0.000187502  -0.018318892

   92   12.1  0.5 -0.5  -0.000003284  -0.000000003   0.029358624  -0.002408387   0.000175498  -0.008300886  -0.000129555  -0.011842553
                         0.000000002  -0.000000005  -0.001868051  -0.003114138  -0.000001548   0.000008135   0.000004012   0.000010345


   Nr   State  S   Sz       89            90            91            92

    1    1.1  1.5  1.5   0.000577934   0.000000000  -0.002624018   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000055   0.000000002  -0.000000044   0.000000080
                        -0.000413342  -0.000000009   0.002676720   0.000000015

    3    3.1  1.5  1.5  -0.000000001  -0.000281264  -0.000000000  -0.001760077
                         0.000000522   0.000992540   0.000000198  -0.000333902

    4    4.1  1.5  1.5  -0.000000724  -0.002526289  -0.000000246  -0.000172528
                        -0.000000002  -0.000714891  -0.000000000   0.000910744

    5    5.1  1.5  1.5   0.000000002   0.000993443   0.000000000  -0.000020228
                        -0.000001165  -0.003516245  -0.000000287  -0.000004546

    6    6.1  1.5  1.5  -0.000001054  -0.002639534  -0.000000271   0.000285915
                        -0.000000002  -0.000744972  -0.000000000  -0.001506289

    7    7.1  1.5  1.5   0.001127347  -0.000000401   0.000560077   0.000000028
                        -0.000000467  -0.000000112   0.000000178  -0.000000148

    8    8.1  1.5  1.5  -0.000000161   0.000393777  -0.000000078   0.000492919
                        -0.000000000   0.000111692  -0.000000000  -0.002586662

    9    9.1  1.5  1.5   0.000000000  -0.000110082   0.000000000   0.002586703
                        -0.000000162   0.000388069  -0.000000080   0.000492927

   10   10.1  1.5  1.5   0.004561572  -0.000001458   0.000703903   0.000000099
                        -0.000001604  -0.000000408  -0.000000353  -0.000000526

   11   11.1  1.5  1.5  -0.000000129  -0.142056018  -0.000000093  -0.031133189
                         0.000175547   0.504109818   0.000012240  -0.005921450

   12   12.1  1.5  1.5   0.000408158   0.499117542  -0.000866116  -0.003023651
                        -0.000000148   0.140596892   0.000002031   0.016618917

   13   13.1  1.5  1.5   0.077959616  -0.001259877  -0.366680649   0.000001988
                        -0.000121031  -0.000354918   0.000790038  -0.000012091

   14   14.1  1.5  1.5  -0.000182656  -0.000020638   0.000766907  -0.000106325
                        -0.057579514   0.000073522   0.372807089  -0.000020188

   15   15.1  1.5  1.5  -0.000000046   0.019389247   0.000000389   0.243205491
                        -0.000076664  -0.069037791   0.000154456   0.046320677

   16   16.1  1.5  1.5   0.000052606   0.098863656   0.000056079  -0.046603084
                         0.000000196   0.028077859  -0.000000157   0.244643469

   17   17.1  1.5  1.5   0.158391386  -0.000189729   0.072119599   0.000004679
                        -0.000068655  -0.000053586   0.000047798  -0.000024778

   18    1.1  1.5  0.5  -0.000000002  -0.000743623  -0.000000000   0.000095171
                         0.000000817   0.002625571   0.000000215   0.000017842

   19    2.1  1.5  0.5   0.000000857   0.002577337   0.000000353  -0.000077579
                         0.000000002   0.000729983   0.000000001   0.000405999

   20    3.1  1.5  0.5   0.002021017  -0.000000346  -0.002514725   0.000000019
                        -0.000000502  -0.000000097  -0.000000116  -0.000000102

   21    4.1  1.5  0.5   0.000000403   0.000000154   0.000000243   0.000000217
                         0.000953979  -0.000000549   0.002453998   0.000000041

   22    5.1  1.5  0.5   0.000723125  -0.000000014  -0.000900842   0.000000003
                        -0.000000613  -0.000000003  -0.000001158  -0.000000019

   23    6.1  1.5  0.5  -0.000000952  -0.000000099   0.000000565  -0.000000184
                        -0.000793720   0.000000355  -0.002044402  -0.000000035

   24    7.1  1.5  0.5   0.000000001  -0.000046272   0.000000000   0.003551231
                        -0.000000344   0.000165365  -0.000000151   0.000673558

   25    8.1  1.5  0.5  -0.000002766  -0.000000184  -0.000003225  -0.000000213
                        -0.003103600   0.000000662   0.002632407  -0.000000040

   26    9.1  1.5  0.5  -0.002164696   0.000001021  -0.003445783  -0.000000074
                         0.000003729   0.000000286  -0.000002100   0.000000393

   27   10.1  1.5  0.5  -0.000000000   0.000063779  -0.000000000  -0.001495462
                         0.000000094  -0.000225603   0.000000045  -0.000283612

   28   11.1  1.5  0.5  -0.060843001  -0.000034672   0.075691802   0.000000970
                        -0.000045548  -0.000009703  -0.000152628  -0.000004014

   29   12.1  1.5  0.5  -0.000087046  -0.000273696   0.000073096   0.000136151
                        -0.045186992   0.000974117  -0.116281805   0.000026082

   30   13.1  1.5  0.5   0.000000181  -0.102706007  -0.000000161   0.005241038
                         0.000250266   0.365529975   0.000379446   0.001089191

   31   14.1  1.5  0.5   0.000252648   0.359057966  -0.000116708  -0.010840995
                         0.000000017   0.100857929  -0.000000081   0.056508379

   32   15.1  1.5  0.5  -0.292785750   0.000217783   0.364365323  -0.000007856
                         0.000224443   0.000060957   0.000407478   0.000041173

   33   16.1  1.5  0.5   0.000316709   0.000036085  -0.000263903   0.000037134
                         0.166864168  -0.000129186   0.429508547   0.000006954

   34   17.1  1.5  0.5   0.000000090  -0.008095462   0.000000018   0.494934887
                        -0.000033701   0.028944652   0.000011142   0.093876903

   35    1.1  1.5 -0.5  -0.002728845   0.000000787   0.000096829  -0.000000040
                         0.000000921   0.000000220   0.000000202   0.000000212

   36    2.1  1.5 -0.5  -0.000000925  -0.000000231  -0.000000574  -0.000000347
                        -0.002678720   0.000000826  -0.000413344  -0.000000065

   37    3.1  1.5 -0.5  -0.000000001  -0.000550563  -0.000000000   0.002470711
                         0.000000359   0.001944580   0.000000104   0.000468436

   38    4.1  1.5 -0.5   0.000000570   0.000917853   0.000000221  -0.000457474
                         0.000000001   0.000260042   0.000000000   0.002410980

   39    5.1  1.5 -0.5  -0.000000001  -0.000197410  -0.000000000   0.000885282
                         0.000000015   0.000695658   0.000000019   0.000166709

   40    6.1  1.5 -0.5  -0.000000368  -0.000763495  -0.000000187   0.000380362
                        -0.000000001  -0.000216950  -0.000000000  -0.002008707

   41    7.1  1.5 -0.5  -0.000171717  -0.000000331   0.003614543   0.000000028
                        -0.000000484  -0.000000093  -0.000000089  -0.000000149

   42    8.1  1.5 -0.5  -0.000000687  -0.002985675  -0.000000217  -0.000487308
                        -0.000000003  -0.000847399  -0.000000001   0.002586911

   43    9.1  1.5 -0.5   0.000000003   0.000592775   0.000000001   0.003385834
                        -0.000001060  -0.002081956  -0.000000400   0.000639963

   44   10.1  1.5 -0.5   0.000234445   0.000000090  -0.001522118  -0.000000008
                         0.000000034   0.000000025   0.000000008   0.000000044

   45   11.1  1.5 -0.5  -0.000000101   0.016516403   0.000000205  -0.074337899
                         0.000036003  -0.058558357   0.000004124  -0.014253036

   46   12.1  1.5 -0.5  -0.001011836  -0.043457330   0.000138627   0.021594094
                        -0.000001772  -0.012382743  -0.000000258  -0.114259173

   47   13.1  1.5 -0.5  -0.379684407   0.000240768   0.005352201  -0.000070541
                        -0.000661359   0.000068292  -0.000093595   0.000372831

   48   14.1  1.5 -0.5   0.000678116  -0.000068750  -0.000122375   0.000114679
                        -0.372953731   0.000243114  -0.057538761   0.000021666

   49   15.1  1.5 -0.5   0.000000620   0.079906314  -0.000000047  -0.358060716
                        -0.000226152  -0.281670955  -0.000041916  -0.067489095

   50   16.1  1.5 -0.5   0.000134130   0.160478249   0.000037779  -0.079767800
                         0.000000439   0.045721795   0.000000087   0.422036444

   51   17.1  1.5 -0.5  -0.030055308  -0.000032453   0.503759282  -0.000002094
                        -0.000088318  -0.000009086  -0.000015514   0.000010944

   52    1.1  1.5 -1.5  -0.000000000   0.000157302  -0.000000000  -0.002578068
                         0.000000000  -0.000556114   0.000000000  -0.000488913

   53    2.1  1.5 -1.5  -0.000000009   0.000397722  -0.000000082   0.000498690
                        -0.000000000   0.000112556  -0.000000000  -0.002629855

   54    3.1  1.5 -1.5   0.001031622  -0.000000502   0.001791470   0.000000037
                        -0.000000496  -0.000000141  -0.000000113  -0.000000195

   55    4.1  1.5 -1.5  -0.000000297  -0.000000195  -0.000000185  -0.000000241
                        -0.002625491   0.000000697   0.000926941  -0.000000045

   56    5.1  1.5 -1.5  -0.003653889   0.000001122   0.000020721  -0.000000053
                        -0.000001114   0.000000315  -0.000000698   0.000000282

   57    6.1  1.5 -1.5   0.000001581  -0.000000285  -0.000000253  -0.000000266
                        -0.002742648   0.000001015  -0.001533185  -0.000000050

   58    7.1  1.5 -1.5   0.000000001   0.000307291   0.000000000   0.000550303
                        -0.000000417  -0.001084659  -0.000000150   0.000104180

   59    8.1  1.5 -1.5   0.000000297  -0.000000044  -0.000002334  -0.000000077
                         0.000409310   0.000000155  -0.002633208  -0.000000014

   60    9.1  1.5 -1.5   0.000403380   0.000000156  -0.002633250  -0.000000015
                        -0.000000301   0.000000044   0.000002335   0.000000078

   61   10.1  1.5 -1.5   0.000000004   0.001243110   0.000000001   0.000691511
                        -0.000001514  -0.004388920  -0.000000535   0.000131499

   62   11.1  1.5 -1.5   0.523742642  -0.000168955   0.031691304   0.000002189
                         0.000515575  -0.000047656  -0.000016945  -0.000012043

   63   12.1  1.5 -1.5  -0.000560817   0.000111235  -0.000125774  -0.000850571
                         0.518541698  -0.000392708   0.016891271  -0.000163373

   64   13.1  1.5 -1.5   0.000001394   0.021335488   0.000000299  -0.360112374
                        -0.001308914  -0.074983420  -0.000012250  -0.069097038

   65   14.1  1.5 -1.5   0.000076364   0.055355967   0.000108225   0.070215805
                         0.000000152   0.015847736  -0.000000024  -0.366135842

   66   15.1  1.5 -1.5  -0.071708728   0.000073757  -0.247577216   0.000029161
                        -0.000133454   0.000020911   0.000194898  -0.000151679

   67   16.1  1.5 -1.5   0.000109137   0.000014130   0.000204432   0.000055068
                         0.102773424  -0.000050673   0.249042632   0.000010603

   68   17.1  1.5 -1.5   0.000000077   0.043176986   0.000000020   0.070865593
                        -0.000197151  -0.152392860  -0.000025216   0.013390539

   69    1.1  0.5  0.5   0.000000000   0.000000072   0.000000000  -0.000000255
                        -0.000000000  -0.000000254   0.000000000  -0.000000048

   70    2.1  0.5  0.5  -0.000000224  -0.000000000   0.000000229   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

   71    3.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000001475  -0.000000000   0.000000350   0.000000000

   72    4.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000001336  -0.000000001  -0.000000086   0.000000000

   73    5.1  0.5  0.5   0.000000000   0.000000041   0.000000000   0.000000095
                         0.000000000  -0.000000146  -0.000000000   0.000000018

   74    6.1  0.5  0.5   0.000001976  -0.000000001   0.000000583  -0.000000000
                        -0.000000001  -0.000000000  -0.000000000   0.000000000

   75    7.1  0.5  0.5  -0.000000001  -0.000001575  -0.000000000   0.000000045
                        -0.000000000  -0.000000446  -0.000000000  -0.000000236

   76    8.1  0.5  0.5   0.012668842  -0.000007294   0.032607155   0.000000542
                        -0.000006749  -0.000002047  -0.000001489  -0.000002879

   77    9.1  0.5  0.5   0.000005411   0.000001049   0.000001185   0.000001107
                         0.021915164  -0.000003758  -0.027270225   0.000000207

   78   10.1  0.5  0.5  -0.000011594  -0.032808755  -0.000004115   0.001460942
                        -0.000000029  -0.009292899  -0.000000007  -0.007689242

   79   11.1  0.5  0.5   0.000001289  -0.007528245   0.000000742  -0.006355042
                        -0.000000001  -0.002129544  -0.000000000   0.033510589

   80   12.1  0.5  0.5  -0.000000029  -0.009429187  -0.000000007  -0.005244848
                         0.000011476   0.033290644   0.000004057  -0.000997377

   81    1.1  0.5 -0.5  -0.000000264   0.000000000   0.000000259   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000

   82    2.1  0.5 -0.5  -0.000000000  -0.000000061  -0.000000000   0.000000225
                        -0.000000000   0.000000215  -0.000000000   0.000000043

   83    3.1  0.5 -0.5  -0.000000000  -0.000001419  -0.000000000   0.000000065
                        -0.000000000  -0.000000402  -0.000000000  -0.000000344

   84    4.1  0.5 -0.5  -0.000000001  -0.000001286  -0.000000000  -0.000000016
                        -0.000000000  -0.000000364  -0.000000000   0.000000085

   85    5.1  0.5 -0.5  -0.000000152  -0.000000000  -0.000000097  -0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000

   86    6.1  0.5 -0.5   0.000000000   0.000000539   0.000000000   0.000000573
                        -0.000000001  -0.000001901   0.000000000   0.000000109

   87    7.1  0.5 -0.5  -0.000000001  -0.000000000  -0.000000000  -0.000000000
                        -0.000001637   0.000000001  -0.000000241  -0.000000000

   88    8.1  0.5 -0.5   0.000000016   0.003454696   0.000000004   0.032035882
                        -0.000007576  -0.012188711  -0.000002930   0.006076908

   89    9.1  0.5 -0.5  -0.000003902  -0.021086316  -0.000001127  -0.005079891
                        -0.000000013  -0.005970070  -0.000000003   0.026792907

   90   10.1  0.5 -0.5  -0.000012181  -0.000003127  -0.000002680  -0.000004044
                        -0.034099447   0.000011164  -0.007826799  -0.000000760

   91   11.1  0.5 -0.5  -0.000000110   0.000000351  -0.000000018   0.000000729
                        -0.007823646  -0.000001240   0.034107860   0.000000138

   92   12.1  0.5 -0.5   0.034600237  -0.000011051   0.005338838   0.000000750
                        -0.000012163  -0.000003095  -0.000002679  -0.000003988


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%  17.938%   0.048%  13.027%   0.843%   0.012%   1.154%   0.008%   2.455%   0.000%
    2    2.1  1.5  1.5   0.000%  21.946%   0.045%  12.292%   1.162%   0.016%   0.009%   0.000%   0.251%   0.000%
    3    3.1  1.5  1.5   9.019%   0.000%  11.789%   0.043%   0.025%   1.742%   0.048%   6.753%   0.000%   0.075%
    4    4.1  1.5  1.5   3.313%   0.000%   7.419%   0.027%   0.038%   2.663%   0.160%  22.270%   0.000%   0.651%
    5    5.1  1.5  1.5   0.785%   0.000%   1.775%   0.006%   0.001%   0.091%   0.209%  29.137%   0.000%  15.880%
    6    6.1  1.5  1.5   1.903%   0.000%   4.390%   0.016%   0.005%   0.360%   0.071%   9.952%   0.000%  24.138%
    7    7.1  1.5  1.5   0.000%   0.091%   0.001%   0.400%  17.331%   0.246%   3.217%   0.023%   2.728%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   6.280%   0.000%  14.669%   0.054%   0.176%  12.409%   0.010%   1.360%   0.000%   1.000%
   19    2.1  1.5  0.5  12.697%   0.000%  15.815%   0.058%   0.095%   6.722%   0.002%   0.306%   0.000%   0.026%
   20    3.1  1.5  0.5   0.000%   0.193%   0.006%   1.708%  37.273%   0.529%   0.016%   0.000%   2.214%   0.000%
   21    4.1  1.5  0.5   0.000%  16.523%   0.000%   0.118%   3.072%   0.044%   5.725%   0.041%   9.365%   0.000%
   22    5.1  1.5  0.5   0.000%   3.517%   0.056%  15.313%   4.063%   0.058%   0.073%   0.001%   0.453%   0.000%
   23    6.1  1.5  0.5   0.000%   5.072%   0.003%   0.886%   3.786%   0.054%   8.065%   0.058%  12.659%   0.000%
   24    7.1  1.5  0.5   0.722%   0.000%   0.037%   0.000%   0.101%   7.081%   0.081%  11.250%   0.000%  28.105%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   6.280%   0.054%  14.669%  12.409%   0.176%   1.360%   0.010%   1.000%   0.000%
   36    2.1  1.5 -0.5   0.000%  12.697%   0.058%  15.815%   6.722%   0.095%   0.306%   0.002%   0.026%   0.000%
   37    3.1  1.5 -0.5   0.193%   0.000%   1.708%   0.006%   0.529%  37.273%   0.000%   0.016%   0.000%   2.214%
   38    4.1  1.5 -0.5  16.523%   0.000%   0.118%   0.000%   0.044%   3.072%   0.041%   5.725%   0.000%   9.365%
   39    5.1  1.5 -0.5   3.517%   0.000%  15.313%   0.056%   0.058%   4.063%   0.001%   0.073%   0.000%   0.453%
   40    6.1  1.5 -0.5   5.072%   0.000%   0.886%   0.003%   0.054%   3.786%   0.058%   8.065%   0.000%  12.659%
   41    7.1  1.5 -0.5   0.000%   0.722%   0.000%   0.037%   7.081%   0.101%  11.250%   0.081%  28.105%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5  17.938%   0.000%  13.027%   0.048%   0.012%   0.843%   0.008%   1.154%   0.000%   2.455%
   53    2.1  1.5 -1.5  21.946%   0.000%  12.292%   0.045%   0.016%   1.162%   0.000%   0.009%   0.000%   0.251%
   54    3.1  1.5 -1.5   0.000%   9.019%   0.043%  11.789%   1.742%   0.025%   6.753%   0.048%   0.075%   0.000%
   55    4.1  1.5 -1.5   0.000%   3.313%   0.027%   7.419%   2.663%   0.038%  22.270%   0.160%   0.651%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.785%   0.006%   1.775%   0.091%   0.001%  29.137%   0.209%  15.880%   0.000%
   57    6.1  1.5 -1.5   0.000%   1.903%   0.016%   4.390%   0.360%   0.005%   9.952%   0.071%  24.138%   0.000%
   58    7.1  1.5 -1.5   0.091%   0.000%   0.400%   0.001%   0.246%  17.331%   0.023%   3.217%   0.000%   2.728%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.147%  23.907%   0.910%   0.009%   0.006%   2.361%   0.588%   0.004%   0.001%  18.415%
    2    2.1  1.5  1.5   0.003%   0.521%   1.590%   0.016%   0.062%  24.452%   0.918%   0.006%   0.001%  17.652%
    3    3.1  1.5  1.5  15.421%   0.095%   0.203%  19.869%   1.304%   0.003%   0.002%   0.284%  17.941%   0.001%
    4    4.1  1.5  1.5   5.075%   0.031%   0.109%  10.640%   5.411%   0.014%   0.032%   4.986%   8.619%   0.001%
    5    5.1  1.5  1.5   4.164%   0.026%   0.001%   0.110%   0.939%   0.002%   0.022%   3.511%   5.303%   0.000%
    6    6.1  1.5  1.5   1.212%   0.007%   0.014%   1.365%   1.569%   0.004%   0.098%  15.389%   2.202%   0.000%
    7    7.1  1.5  1.5   0.009%   1.463%  13.435%   0.138%   0.009%   3.613%  26.749%   0.170%   0.000%   0.112%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   1.132%   0.007%   0.207%  20.229%   2.647%   0.007%   0.019%   2.964%   2.537%   0.000%
   19    2.1  1.5  0.5   3.238%   0.020%   0.002%   0.206%   0.628%   0.002%   0.149%  23.327%   3.139%   0.000%
   20    3.1  1.5  0.5   0.072%  11.750%   1.242%   0.013%   0.000%   0.040%   4.815%   0.031%   0.000%   4.151%
   21    4.1  1.5  0.5   0.131%  21.289%   3.065%   0.031%   0.011%   4.248%   0.070%   0.000%   0.000%   1.251%
   22    5.1  1.5  0.5   0.004%   0.660%  19.905%   0.204%   0.053%  20.860%   4.653%   0.030%   0.000%   1.259%
   23    6.1  1.5  0.5   0.005%   0.856%   1.925%   0.020%   0.068%  26.760%   5.814%   0.037%   0.000%   1.789%
   24    7.1  1.5  0.5   5.220%   0.032%   0.011%   1.033%   1.425%   0.004%   0.012%   1.822%  12.728%   0.001%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.007%   1.132%  20.229%   0.207%   0.007%   2.647%   2.964%   0.019%   0.000%   2.537%
   36    2.1  1.5 -0.5   0.020%   3.238%   0.206%   0.002%   0.002%   0.628%  23.327%   0.149%   0.000%   3.139%
   37    3.1  1.5 -0.5  11.750%   0.072%   0.013%   1.242%   0.040%   0.000%   0.031%   4.815%   4.151%   0.000%
   38    4.1  1.5 -0.5  21.289%   0.131%   0.031%   3.065%   4.248%   0.011%   0.000%   0.070%   1.251%   0.000%
   39    5.1  1.5 -0.5   0.660%   0.004%   0.204%  19.905%  20.860%   0.053%   0.030%   4.653%   1.259%   0.000%
   40    6.1  1.5 -0.5   0.856%   0.005%   0.020%   1.925%  26.760%   0.068%   0.037%   5.814%   1.789%   0.000%
   41    7.1  1.5 -0.5   0.032%   5.220%   1.033%   0.011%   0.004%   1.425%   1.822%   0.012%   0.001%  12.728%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5  23.907%   0.147%   0.009%   0.910%   2.361%   0.006%   0.004%   0.588%  18.415%   0.001%
   53    2.1  1.5 -1.5   0.521%   0.003%   0.016%   1.590%  24.452%   0.062%   0.006%   0.918%  17.652%   0.001%
   54    3.1  1.5 -1.5   0.095%  15.421%  19.869%   0.203%   0.003%   1.304%   0.284%   0.002%   0.001%  17.941%
   55    4.1  1.5 -1.5   0.031%   5.075%  10.640%   0.109%   0.014%   5.411%   4.986%   0.032%   0.001%   8.619%
   56    5.1  1.5 -1.5   0.026%   4.164%   0.110%   0.001%   0.002%   0.939%   3.511%   0.022%   0.000%   5.303%
   57    6.1  1.5 -1.5   0.007%   1.212%   1.365%   0.014%   0.004%   1.569%  15.389%   0.098%   0.000%   2.202%
   58    7.1  1.5 -1.5   1.463%   0.009%   0.138%  13.435%   3.613%   0.009%   0.170%  26.749%   0.112%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   1.312%   0.008%   0.000%   0.041%   0.434%   0.001%   0.001%   0.204%   0.387%   0.000%
   70    2.1  0.5  0.5   0.009%   1.521%   0.164%   0.002%   0.000%   0.005%   0.297%   0.002%   0.000%   0.376%
   71    3.1  0.5  0.5   0.002%   0.391%   0.226%   0.002%   0.002%   0.972%   0.402%   0.003%   0.000%   0.013%
   72    4.1  0.5  0.5   0.000%   0.054%   0.756%   0.008%   0.000%   0.145%   1.031%   0.007%   0.000%   0.222%
   73    5.1  0.5  0.5   0.153%   0.001%   0.003%   0.319%   0.000%   0.000%   0.010%   1.515%   0.031%   0.000%
   74    6.1  0.5  0.5   0.000%   0.046%   0.114%   0.001%   0.005%   1.830%   0.004%   0.000%   0.000%   0.003%
   75    7.1  0.5  0.5   0.003%   0.000%   0.019%   1.846%   0.106%   0.000%   0.000%   0.026%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.155%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.505%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.111%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.964%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%   0.000%
   81    1.1  0.5 -0.5   0.008%   1.312%   0.041%   0.000%   0.001%   0.434%   0.204%   0.001%   0.000%   0.387%
   82    2.1  0.5 -0.5   1.521%   0.009%   0.002%   0.164%   0.005%   0.000%   0.002%   0.297%   0.376%   0.000%
   83    3.1  0.5 -0.5   0.391%   0.002%   0.002%   0.226%   0.972%   0.002%   0.003%   0.402%   0.013%   0.000%
   84    4.1  0.5 -0.5   0.054%   0.000%   0.008%   0.756%   0.145%   0.000%   0.007%   1.031%   0.222%   0.000%
   85    5.1  0.5 -0.5   0.001%   0.153%   0.319%   0.003%   0.000%   0.000%   1.515%   0.010%   0.000%   0.031%
   86    6.1  0.5 -0.5   0.046%   0.000%   0.001%   0.114%   1.830%   0.005%   0.000%   0.004%   0.003%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.003%   1.846%   0.019%   0.000%   0.106%   0.026%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.155%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.505%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.111%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.964%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   2.301%   0.001%   0.112%   0.065%   0.000%  12.530%   0.009%   0.753%   0.000%   0.819%
    2    2.1  1.5  1.5   3.104%   0.002%   0.034%   0.020%   0.000%  12.285%   0.015%   1.206%   0.000%   0.075%
    3    3.1  1.5  1.5   0.000%   0.022%   1.841%   3.169%   2.436%   0.000%   5.367%   0.065%   0.449%   0.000%
    4    4.1  1.5  1.5   0.003%   3.924%   2.928%   5.037%   7.319%   0.000%   6.869%   0.084%   0.361%   0.000%
    5    5.1  1.5  1.5   0.001%   1.694%   3.510%   6.039%   4.930%   0.000%  19.415%   0.237%   0.125%   0.000%
    6    6.1  1.5  1.5   0.007%  10.959%   2.148%   3.697%   0.048%   0.000%  17.913%   0.218%   0.131%   0.000%
    7    7.1  1.5  1.5   3.409%   0.002%  13.518%   7.857%   0.000%   0.000%   0.035%   2.882%   0.000%   0.044%
    8    8.1  1.5  1.5   0.000%   0.033%   0.002%   0.003%   0.006%   0.000%   0.001%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.019%   0.002%   0.003%   0.006%   0.000%   0.001%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.003%   0.000%   0.015%   0.009%   0.000%   0.002%   0.000%   0.017%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.005%   7.523%   3.916%   6.739%   3.087%   0.000%  10.510%   0.128%   0.078%   0.000%
   19    2.1  1.5  0.5   0.012%  17.620%   0.013%   0.022%   1.222%   0.000%  12.141%   0.148%   0.058%   0.000%
   20    3.1  1.5  0.5   5.931%   0.004%   5.408%   3.143%   0.000%  18.264%   0.011%   0.886%   0.000%   0.520%
   21    4.1  1.5  0.5  16.727%   0.011%   1.967%   1.143%   0.000%   5.826%   0.084%   6.854%   0.000%   0.584%
   22    5.1  1.5  0.5  14.492%   0.009%   5.889%   3.422%   0.000%   2.344%   0.001%   0.114%   0.000%   0.025%
   23    6.1  1.5  0.5   5.411%   0.004%   9.742%   5.661%   0.000%   4.046%   0.058%   4.757%   0.000%   0.004%
   24    7.1  1.5  0.5   0.003%   3.926%   0.024%   0.040%  20.274%   0.000%   3.806%   0.046%   0.226%   0.000%
   25    8.1  1.5  0.5   0.007%   0.000%   0.012%   0.007%   0.000%   0.013%   0.000%   0.002%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.010%   0.006%   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.006%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   7.523%   0.005%   6.739%   3.916%   0.000%   3.087%   0.128%  10.510%   0.000%   0.078%
   36    2.1  1.5 -0.5  17.620%   0.012%   0.022%   0.013%   0.000%   1.222%   0.148%  12.141%   0.000%   0.058%
   37    3.1  1.5 -0.5   0.004%   5.931%   3.143%   5.408%  18.264%   0.000%   0.886%   0.011%   0.520%   0.000%
   38    4.1  1.5 -0.5   0.011%  16.727%   1.143%   1.967%   5.826%   0.000%   6.854%   0.084%   0.584%   0.000%
   39    5.1  1.5 -0.5   0.009%  14.492%   3.422%   5.889%   2.344%   0.000%   0.114%   0.001%   0.025%   0.000%
   40    6.1  1.5 -0.5   0.004%   5.411%   5.661%   9.742%   4.046%   0.000%   4.757%   0.058%   0.004%   0.000%
   41    7.1  1.5 -0.5   3.926%   0.003%   0.040%   0.024%   0.000%  20.274%   0.046%   3.806%   0.000%   0.226%
   42    8.1  1.5 -0.5   0.000%   0.007%   0.007%   0.012%   0.013%   0.000%   0.002%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.006%   0.010%   0.004%   0.000%   0.011%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.006%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5   0.001%   2.301%   0.065%   0.112%  12.530%   0.000%   0.753%   0.009%   0.819%   0.000%
   53    2.1  1.5 -1.5   0.002%   3.104%   0.020%   0.034%  12.285%   0.000%   1.206%   0.015%   0.075%   0.000%
   54    3.1  1.5 -1.5   0.022%   0.000%   3.169%   1.841%   0.000%   2.436%   0.065%   5.367%   0.000%   0.449%
   55    4.1  1.5 -1.5   3.924%   0.003%   5.037%   2.928%   0.000%   7.319%   0.084%   6.869%   0.000%   0.361%
   56    5.1  1.5 -1.5   1.694%   0.001%   6.039%   3.510%   0.000%   4.930%   0.237%  19.415%   0.000%   0.125%
   57    6.1  1.5 -1.5  10.959%   0.007%   3.697%   2.148%   0.000%   0.048%   0.218%  17.913%   0.000%   0.131%
   58    7.1  1.5 -1.5   0.002%   3.409%   7.857%  13.518%   0.000%   0.000%   2.882%   0.035%   0.044%   0.000%
   59    8.1  1.5 -1.5   0.033%   0.000%   0.003%   0.002%   0.000%   0.006%   0.000%   0.001%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.019%   0.000%   0.003%   0.002%   0.000%   0.006%   0.000%   0.001%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.003%   0.009%   0.015%   0.002%   0.000%   0.017%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  43.718%   0.000%
   70    2.1  0.5  0.5   0.034%   0.000%   0.021%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%  38.449%
   71    3.1  0.5  0.5   0.408%   0.000%   0.013%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   9.855%
   72    4.1  0.5  0.5   0.034%   0.000%   0.118%   0.069%   0.000%   0.000%   0.000%   0.000%   0.000%   3.164%
   73    5.1  0.5  0.5   0.000%   0.196%   0.079%   0.136%   0.000%   0.000%   0.000%   0.000%   0.715%   0.000%
   74    6.1  0.5  0.5   0.303%   0.000%   0.086%   0.050%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   75    7.1  0.5  0.5   0.000%   0.001%   0.162%   0.278%   0.000%   0.000%   0.000%   0.000%   0.590%   0.000%
   76    8.1  0.5  0.5   0.255%   0.000%   0.422%   0.245%   0.000%   0.978%   0.014%   1.150%   0.000%   0.000%
   77    9.1  0.5  0.5   0.002%   0.000%   0.361%   0.210%   0.000%   2.041%   0.001%   0.099%   0.000%   0.000%
   78   10.1  0.5  0.5   0.001%   0.963%   0.001%   0.001%   0.114%   0.000%   2.004%   0.024%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.109%   0.001%   0.002%   2.028%   0.000%   0.113%   0.001%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.464%   0.203%   0.349%   0.193%   0.000%   1.922%   0.023%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.056%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  43.718%
   82    2.1  0.5 -0.5   0.000%   0.034%   0.012%   0.021%   0.000%   0.000%   0.000%   0.000%  38.449%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.408%   0.008%   0.013%   0.000%   0.000%   0.000%   0.000%   9.855%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.034%   0.069%   0.118%   0.000%   0.000%   0.000%   0.000%   3.164%   0.000%
   85    5.1  0.5 -0.5   0.196%   0.000%   0.136%   0.079%   0.000%   0.000%   0.000%   0.000%   0.000%   0.715%
   86    6.1  0.5 -0.5   0.000%   0.303%   0.050%   0.086%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   87    7.1  0.5 -0.5   0.001%   0.000%   0.278%   0.162%   0.000%   0.000%   0.000%   0.000%   0.000%   0.590%
   88    8.1  0.5 -0.5   0.000%   0.255%   0.245%   0.422%   0.978%   0.000%   1.150%   0.014%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.002%   0.210%   0.361%   2.041%   0.000%   0.099%   0.001%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.963%   0.001%   0.001%   0.001%   0.000%   0.114%   0.024%   2.004%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.109%   0.000%   0.002%   0.001%   0.000%   2.028%   0.001%   0.113%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.464%   0.000%   0.349%   0.203%   0.000%   0.193%   0.023%   1.922%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.159%   0.000%   0.000%   0.016%   0.000%   0.019%   0.000%   0.006%   0.001%   0.000%
    2    2.1  1.5  1.5   0.631%   0.000%   0.000%   0.221%   0.000%   0.072%   0.000%   0.005%   0.001%   0.000%
    3    3.1  1.5  1.5   0.000%   0.322%   0.018%   0.000%   0.560%   0.000%   0.004%   0.000%   0.000%   0.001%
    4    4.1  1.5  1.5   0.000%   0.008%   0.061%   0.000%   0.523%   0.000%   0.004%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.095%   0.094%   0.000%   0.005%   0.000%   0.003%   0.000%   0.000%   0.002%
    6    6.1  1.5  1.5   0.000%   0.041%   0.411%   0.000%   0.130%   0.000%   0.000%   0.000%   0.000%   0.005%
    7    7.1  1.5  1.5   0.137%   0.000%   0.000%   1.097%   0.000%   0.375%   0.000%   0.001%   0.006%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   0.000%   0.000%   1.447%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.257%   0.000%   0.000%   0.301%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.692%   2.949%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.005%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.003%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.001%   0.000%
   14   14.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.002%   0.000%
   15   15.1  1.5  1.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.008%   0.000%   0.000%   0.001%
   16   16.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.000%   0.000%   0.006%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.001%   0.010%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.263%   0.000%   0.646%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.191%   0.750%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%
   20    3.1  1.5  0.5   0.059%   0.000%   0.000%   0.055%   0.000%   0.018%   0.000%   0.002%   0.004%   0.000%
   21    4.1  1.5  0.5   0.031%   0.000%   0.000%   0.026%   0.000%   0.405%   0.000%   0.001%   0.005%   0.000%
   22    5.1  1.5  0.5   1.544%   0.000%   0.000%   0.021%   0.000%   0.092%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.259%   0.000%   0.000%   0.379%   0.000%   0.646%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.025%   0.087%   0.000%   0.009%   0.000%   0.004%   0.000%   0.000%   0.001%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.190%   4.219%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.520%   0.847%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.342%   0.000%   0.000%   1.284%
   28   11.1  1.5  0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.004%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.005%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.006%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.002%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.263%   0.000%   0.646%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.191%   0.000%   0.000%   0.750%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.059%   0.055%   0.000%   0.018%   0.000%   0.002%   0.000%   0.000%   0.004%
   38    4.1  1.5 -0.5   0.000%   0.031%   0.026%   0.000%   0.405%   0.000%   0.001%   0.000%   0.000%   0.005%
   39    5.1  1.5 -0.5   0.000%   1.544%   0.021%   0.000%   0.092%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.259%   0.379%   0.000%   0.646%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.025%   0.000%   0.000%   0.087%   0.000%   0.009%   0.000%   0.004%   0.001%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.190%   0.000%   0.000%   4.219%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.520%   0.000%   0.000%   0.847%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   5.342%   1.284%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.004%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.005%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.006%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.002%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.159%   0.016%   0.000%   0.019%   0.000%   0.006%   0.000%   0.000%   0.001%
   53    2.1  1.5 -1.5   0.000%   0.631%   0.221%   0.000%   0.072%   0.000%   0.005%   0.000%   0.000%   0.001%
   54    3.1  1.5 -1.5   0.322%   0.000%   0.000%   0.018%   0.000%   0.560%   0.000%   0.004%   0.001%   0.000%
   55    4.1  1.5 -1.5   0.008%   0.000%   0.000%   0.061%   0.000%   0.523%   0.000%   0.004%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.095%   0.000%   0.000%   0.094%   0.000%   0.005%   0.000%   0.003%   0.002%   0.000%
   57    6.1  1.5 -1.5   0.041%   0.000%   0.000%   0.411%   0.000%   0.130%   0.000%   0.000%   0.005%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.137%   1.097%   0.000%   0.375%   0.000%   0.001%   0.000%   0.000%   0.006%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%   1.447%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.257%   0.301%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.692%   0.000%   0.000%   2.949%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.005%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.003%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   0.001%
   65   14.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.002%
   66   15.1  1.5 -1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.008%   0.001%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.004%   0.006%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.010%
   69    1.1  0.5  0.5   0.000%   4.770%   6.649%   0.000%   0.008%   0.000%  18.800%   0.001%   0.000%   3.502%
   70    2.1  0.5  0.5   0.105%   0.000%   0.000%  16.324%   0.000%   0.263%   0.001%  19.881%   1.621%   0.000%
   71    3.1  0.5  0.5  44.679%   0.001%   0.000%   0.175%   0.000%   0.438%   0.000%   0.092%   7.098%   0.000%
   72    4.1  0.5  0.5   2.218%   0.000%   0.000%  43.909%   0.000%   5.844%   0.000%   6.425%  11.406%   0.000%
   73    5.1  0.5  0.5   0.000%  13.948%  27.091%   0.000%  13.382%   0.000%   3.502%   0.000%   0.001%  18.804%
   74    6.1  0.5  0.5  26.566%   0.000%   0.000%   1.357%   0.000%  27.205%   0.000%   1.577%   1.758%   0.000%
   75    7.1  0.5  0.5   0.000%   4.206%   0.987%   0.000%  49.353%   0.000%   1.779%   0.000%   0.000%   7.861%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.842%  18.748%   0.001%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  15.641%   3.765%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.635%   0.000%   0.000%  10.940%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  18.690%   0.001%   0.000%   3.366%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.001%
   81    1.1  0.5 -0.5   4.770%   0.000%   0.000%   6.649%   0.000%   0.008%   0.001%  18.800%   3.502%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.105%  16.324%   0.000%   0.263%   0.000%  19.881%   0.001%   0.000%   1.621%
   83    3.1  0.5 -0.5   0.001%  44.679%   0.175%   0.000%   0.438%   0.000%   0.092%   0.000%   0.000%   7.098%
   84    4.1  0.5 -0.5   0.000%   2.218%  43.909%   0.000%   5.844%   0.000%   6.425%   0.000%   0.000%  11.406%
   85    5.1  0.5 -0.5  13.948%   0.000%   0.000%  27.091%   0.000%  13.382%   0.000%   3.502%  18.804%   0.001%
   86    6.1  0.5 -0.5   0.000%  26.566%   1.357%   0.000%  27.205%   0.000%   1.577%   0.000%   0.000%   1.758%
   87    7.1  0.5 -0.5   4.206%   0.000%   0.000%   0.987%   0.000%  49.353%   0.000%   1.779%   7.861%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.842%   0.000%   0.001%  18.748%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.641%   0.001%   0.000%   3.765%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.635%  10.940%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  18.690%   3.366%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.001%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.256%   0.001%   0.125%   0.000%   0.003%   0.000%   0.000%   0.633%
    2    2.1  1.5  1.5   0.000%   0.000%   0.207%   0.000%   0.176%   0.000%   0.000%   0.000%   0.000%   0.647%
    3    3.1  1.5  1.5   0.002%   0.000%   0.000%   0.159%   0.000%   0.151%   0.000%   0.113%   0.233%   0.000%
    4    4.1  1.5  1.5   0.002%   0.000%   0.000%   0.205%   0.000%   0.028%   0.000%   0.143%   0.147%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.001%   0.228%   0.000%   0.052%   0.000%   0.024%   0.026%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.349%   0.000%   0.001%   0.112%   0.000%
    7    7.1  1.5  1.5   0.000%   0.001%   0.109%   0.000%   0.242%   0.000%   0.107%   0.000%   0.000%   0.014%
    8    8.1  1.5  1.5   4.583%   0.000%   0.001%   0.250%   0.002%   7.155%   0.026%  17.023%   4.358%   0.000%
    9    9.1  1.5  1.5   4.517%   0.000%   0.017%   7.226%   0.000%   0.427%   0.025%  16.759%   4.359%   0.000%
   10   10.1  1.5  1.5   0.000%   0.779%   6.122%   0.014%   7.377%   0.002%   4.260%   0.006%   0.000%   0.001%
   11   11.1  1.5  1.5   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.030%
   14   14.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.031%
   15   15.1  1.5  1.5   0.003%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.012%   0.000%
   16   16.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.012%   0.000%
   17   17.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%
   18    1.1  1.5  0.5   0.006%   0.000%   0.000%   0.010%   0.000%   0.000%   0.001%   0.372%   0.021%   0.000%
   19    2.1  1.5  0.5   0.003%   0.000%   0.000%   0.115%   0.000%   0.131%   0.000%   0.135%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.217%   0.001%   0.122%   0.000%   0.003%   0.000%   0.000%   0.679%
   21    4.1  1.5  0.5   0.000%   0.001%   0.114%   0.000%   0.242%   0.000%   0.031%   0.000%   0.000%   0.464%
   22    5.1  1.5  0.5   0.000%   0.007%   0.007%   0.000%   0.018%   0.000%   0.436%   0.001%   0.000%   0.087%
   23    6.1  1.5  0.5   0.000%   0.006%   0.001%   0.000%   0.008%   0.000%   0.407%   0.001%   0.000%   0.322%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.157%   0.000%   0.142%   0.000%   0.009%   1.144%   0.000%
   25    8.1  1.5  0.5   0.000%   0.563%   0.062%   0.000%  16.840%   0.004%   3.083%   0.005%   0.000%   5.698%
   26    9.1  1.5  0.5   0.000%   0.604%  16.308%   0.038%   0.362%   0.000%   3.279%   0.005%   0.000%   5.916%
   27   10.1  1.5  0.5   0.001%   0.000%   0.033%  14.358%   0.003%  12.256%   0.000%   0.003%   1.455%   0.000%
   28   11.1  1.5  0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%
   29   12.1  1.5  0.5   0.000%   0.008%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.003%
   30   13.1  1.5  0.5   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%
   31   14.1  1.5  0.5   0.005%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.035%
   33   16.1  1.5  0.5   0.000%   0.004%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.035%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.054%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.006%   0.010%   0.000%   0.000%   0.000%   0.372%   0.001%   0.000%   0.021%
   36    2.1  1.5 -0.5   0.000%   0.003%   0.115%   0.000%   0.131%   0.000%   0.135%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.001%   0.217%   0.000%   0.122%   0.000%   0.003%   0.679%   0.000%
   38    4.1  1.5 -0.5   0.001%   0.000%   0.000%   0.114%   0.000%   0.242%   0.000%   0.031%   0.464%   0.000%
   39    5.1  1.5 -0.5   0.007%   0.000%   0.000%   0.007%   0.000%   0.018%   0.001%   0.436%   0.087%   0.000%
   40    6.1  1.5 -0.5   0.006%   0.000%   0.000%   0.001%   0.000%   0.008%   0.001%   0.407%   0.322%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.157%   0.000%   0.142%   0.000%   0.009%   0.000%   0.000%   1.144%
   42    8.1  1.5 -0.5   0.563%   0.000%   0.000%   0.062%   0.004%  16.840%   0.005%   3.083%   5.698%   0.000%
   43    9.1  1.5 -0.5   0.604%   0.000%   0.038%  16.308%   0.000%   0.362%   0.005%   3.279%   5.916%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.001%  14.358%   0.033%  12.256%   0.003%   0.003%   0.000%   0.000%   1.455%
   45   11.1  1.5 -0.5   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%
   46   12.1  1.5 -0.5   0.008%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.003%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%
   48   14.1  1.5 -0.5   0.000%   0.005%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.035%   0.000%
   50   16.1  1.5 -0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.035%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.054%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.001%   0.256%   0.000%   0.125%   0.000%   0.003%   0.633%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.207%   0.000%   0.176%   0.000%   0.000%   0.647%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.002%   0.159%   0.000%   0.151%   0.000%   0.113%   0.000%   0.000%   0.233%
   55    4.1  1.5 -1.5   0.000%   0.002%   0.205%   0.000%   0.028%   0.000%   0.143%   0.000%   0.000%   0.147%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.228%   0.001%   0.052%   0.000%   0.024%   0.000%   0.000%   0.026%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.349%   0.000%   0.001%   0.000%   0.000%   0.112%
   58    7.1  1.5 -1.5   0.001%   0.000%   0.000%   0.109%   0.000%   0.242%   0.000%   0.107%   0.014%   0.000%
   59    8.1  1.5 -1.5   0.000%   4.583%   0.250%   0.001%   7.155%   0.002%  17.023%   0.026%   0.000%   4.358%
   60    9.1  1.5 -1.5   0.000%   4.517%   7.226%   0.017%   0.427%   0.000%  16.759%   0.025%   0.000%   4.359%
   61   10.1  1.5 -1.5   0.779%   0.000%   0.014%   6.122%   0.002%   7.377%   0.006%   4.260%   0.001%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.030%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.031%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.003%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.012%
   67   16.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.012%
   68   17.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%
   69    1.1  0.5  0.5   0.003%   0.000%   0.023%   9.920%   0.002%   6.971%   0.000%   0.004%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.807%  16.560%   0.038%   0.000%   0.000%   0.321%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%  15.125%   1.183%   0.003%   5.463%   0.001%  10.241%   0.015%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   4.484%   1.899%   0.004%  11.149%   0.003%   3.860%   0.006%   0.000%   0.000%
   73    5.1  0.5  0.5   0.003%   0.000%   0.016%   6.882%   0.002%   9.888%   0.000%   0.136%   0.000%   0.000%
   74    6.1  0.5  0.5   0.001%  18.993%   0.270%   0.001%   2.667%   0.001%  13.949%   0.021%   0.000%   0.000%
   75    7.1  0.5  0.5  12.680%   0.000%   0.006%   2.679%   0.001%   3.339%   0.016%  10.873%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   2.505%   0.026%   0.000%   7.221%   0.002%   1.331%   0.002%   0.000%  22.312%
   77    9.1  0.5  0.5   0.000%   2.687%   6.993%   0.016%   0.155%   0.000%   1.416%   0.002%   0.000%  21.765%
   78   10.1  0.5  0.5   9.522%   0.000%   0.005%   2.093%   0.001%   3.435%   0.005%   3.062%   0.203%   0.000%
   79   11.1  0.5  0.5   0.031%   0.000%   0.012%   5.105%   0.001%   3.444%   0.000%   0.009%  29.189%   0.000%
   80   12.1  0.5  0.5  22.032%   0.001%   0.000%   0.041%   0.000%   0.030%   0.013%   8.446%   0.003%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.003%   9.920%   0.023%   6.971%   0.002%   0.004%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.807%   0.000%   0.038%  16.560%   0.000%   0.000%   0.000%   0.321%   0.000%   0.000%
   83    3.1  0.5 -0.5  15.125%   0.000%   0.003%   1.183%   0.001%   5.463%   0.015%  10.241%   0.000%   0.000%
   84    4.1  0.5 -0.5   4.484%   0.000%   0.004%   1.899%   0.003%  11.149%   0.006%   3.860%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.003%   6.882%   0.016%   9.888%   0.002%   0.136%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5  18.993%   0.001%   0.001%   0.270%   0.001%   2.667%   0.021%  13.949%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%  12.680%   2.679%   0.006%   3.339%   0.001%  10.873%   0.016%   0.000%   0.000%
   88    8.1  0.5 -0.5   2.505%   0.000%   0.000%   0.026%   0.002%   7.221%   0.002%   1.331%  22.312%   0.000%
   89    9.1  0.5 -0.5   2.687%   0.000%   0.016%   6.993%   0.000%   0.155%   0.002%   1.416%  21.765%   0.000%
   90   10.1  0.5 -0.5   0.000%   9.522%   2.093%   0.005%   3.435%   0.001%   3.062%   0.005%   0.000%   0.203%
   91   11.1  0.5 -0.5   0.000%   0.031%   5.105%   0.012%   3.444%   0.001%   0.009%   0.000%   0.000%  29.189%
   92   12.1  0.5 -0.5   0.001%  22.032%   0.041%   0.000%   0.030%   0.000%   8.446%   0.013%   0.000%   0.003%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.003%   0.000%   0.120%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.122%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
    3    3.1  1.5  1.5   0.000%   0.143%   0.000%   0.042%   0.000%   0.029%   0.000%   0.000%   0.000%   0.021%
    4    4.1  1.5  1.5   0.001%   0.535%   0.000%   0.030%   0.000%   0.099%   0.000%   0.000%   0.000%   0.007%
    5    5.1  1.5  1.5   0.002%   1.147%   0.000%   0.006%   0.000%   0.216%   0.000%   0.000%   0.000%   0.117%
    6    6.1  1.5  1.5   0.001%   0.755%   0.000%   0.019%   0.000%   0.146%   0.000%   0.000%   0.000%   0.172%
    7    7.1  1.5  1.5   0.126%   0.000%   0.002%   0.000%   0.024%   0.000%   0.000%   0.000%   0.231%   0.000%
    8    8.1  1.5  1.5   0.000%   0.001%   0.020%  15.616%   0.000%   0.003%   0.068%  24.951%   0.000%   4.683%
    9    9.1  1.5  1.5   0.000%   0.000%   0.020%  15.616%   0.000%   0.001%   0.068%  24.932%   0.000%   2.070%
   10   10.1  1.5  1.5  13.041%   0.025%   0.006%   0.000%  46.916%   0.021%   0.000%   0.000%  14.125%   0.001%
   11   11.1  1.5  1.5   0.000%   0.059%   0.000%   0.000%   0.000%   0.027%   0.000%   0.000%   0.000%   0.016%
   12   12.1  1.5  1.5   0.000%   0.057%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.012%
   13   13.1  1.5  1.5   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   15   15.1  1.5  1.5   0.000%   0.002%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   16   16.1  1.5  1.5   0.000%   0.004%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.011%
   17   17.1  1.5  1.5   0.006%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.029%   0.000%
   18    1.1  1.5  0.5   0.001%   0.634%   0.000%   0.005%   0.000%   0.120%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.001%   0.645%   0.000%   0.000%   0.000%   0.122%   0.000%   0.000%   0.000%   0.117%
   20    3.1  1.5  0.5   0.237%   0.000%   0.132%   0.000%   0.042%   0.000%   0.000%   0.000%   0.171%   0.000%
   21    4.1  1.5  0.5   0.147%   0.000%   0.085%   0.000%   0.030%   0.000%   0.000%   0.000%   0.198%   0.000%
   22    5.1  1.5  0.5   0.030%   0.000%   0.017%   0.000%   0.006%   0.000%   0.000%   0.000%   0.005%   0.000%
   23    6.1  1.5  0.5   0.102%   0.000%   0.059%   0.000%   0.021%   0.000%   0.000%   0.000%   0.011%   0.000%
   24    7.1  1.5  0.5   0.000%   0.010%   0.000%   0.215%   0.000%   0.003%   0.000%   0.000%   0.000%   0.011%
   25    8.1  1.5  0.5   4.482%   0.008%  21.248%   0.027%  15.168%   0.007%   8.332%   0.023%  15.076%   0.001%
   26    9.1  1.5  0.5   4.264%   0.008%  20.399%   0.026%  16.012%   0.007%   8.330%   0.023%   6.888%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.007%   5.193%   0.000%   0.001%   0.091%  33.182%   0.000%   1.600%
   28   11.1  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   29   12.1  1.5  0.5   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   30   13.1  1.5  0.5   0.000%   0.030%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.030%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.015%
   32   15.1  1.5  0.5   0.012%   0.000%   0.016%   0.000%   0.005%   0.000%   0.000%   0.000%   0.020%   0.000%
   33   16.1  1.5  0.5   0.011%   0.000%   0.015%   0.000%   0.005%   0.000%   0.000%   0.000%   0.015%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    1.1  1.5 -0.5   0.634%   0.001%   0.005%   0.000%   0.120%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.645%   0.001%   0.000%   0.000%   0.122%   0.000%   0.000%   0.000%   0.117%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.237%   0.000%   0.132%   0.000%   0.042%   0.000%   0.000%   0.000%   0.171%
   38    4.1  1.5 -0.5   0.000%   0.147%   0.000%   0.085%   0.000%   0.030%   0.000%   0.000%   0.000%   0.198%
   39    5.1  1.5 -0.5   0.000%   0.030%   0.000%   0.017%   0.000%   0.006%   0.000%   0.000%   0.000%   0.005%
   40    6.1  1.5 -0.5   0.000%   0.102%   0.000%   0.059%   0.000%   0.021%   0.000%   0.000%   0.000%   0.011%
   41    7.1  1.5 -0.5   0.010%   0.000%   0.215%   0.000%   0.003%   0.000%   0.000%   0.000%   0.011%   0.000%
   42    8.1  1.5 -0.5   0.008%   4.482%   0.027%  21.248%   0.007%  15.168%   0.023%   8.332%   0.001%  15.076%
   43    9.1  1.5 -0.5   0.008%   4.264%   0.026%  20.399%   0.007%  16.012%   0.023%   8.330%   0.000%   6.888%
   44   10.1  1.5 -0.5   0.000%   0.000%   5.193%   0.007%   0.001%   0.000%  33.182%   0.091%   1.600%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   46   12.1  1.5 -0.5   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   47   13.1  1.5 -0.5   0.030%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.030%   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.015%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.012%   0.000%   0.016%   0.000%   0.005%   0.000%   0.000%   0.000%   0.020%
   50   16.1  1.5 -0.5   0.000%   0.011%   0.000%   0.015%   0.000%   0.005%   0.000%   0.000%   0.000%   0.015%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.025%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.003%   0.000%   0.120%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.122%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   54    3.1  1.5 -1.5   0.143%   0.000%   0.042%   0.000%   0.029%   0.000%   0.000%   0.000%   0.021%   0.000%
   55    4.1  1.5 -1.5   0.535%   0.001%   0.030%   0.000%   0.099%   0.000%   0.000%   0.000%   0.007%   0.000%
   56    5.1  1.5 -1.5   1.147%   0.002%   0.006%   0.000%   0.216%   0.000%   0.000%   0.000%   0.117%   0.000%
   57    6.1  1.5 -1.5   0.755%   0.001%   0.019%   0.000%   0.146%   0.000%   0.000%   0.000%   0.172%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.126%   0.000%   0.002%   0.000%   0.024%   0.000%   0.000%   0.000%   0.231%
   59    8.1  1.5 -1.5   0.001%   0.000%  15.616%   0.020%   0.003%   0.000%  24.951%   0.068%   4.683%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%  15.616%   0.020%   0.001%   0.000%  24.932%   0.068%   2.070%   0.000%
   61   10.1  1.5 -1.5   0.025%  13.041%   0.000%   0.006%   0.021%  46.916%   0.000%   0.000%   0.001%  14.125%
   62   11.1  1.5 -1.5   0.059%   0.000%   0.000%   0.000%   0.027%   0.000%   0.000%   0.000%   0.016%   0.000%
   63   12.1  1.5 -1.5   0.057%   0.000%   0.000%   0.000%   0.026%   0.000%   0.000%   0.000%   0.012%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   66   15.1  1.5 -1.5   0.002%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   67   16.1  1.5 -1.5   0.004%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.011%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.006%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.029%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.124%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.657%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.945%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.143%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.058%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.123%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.376%
   76    8.1  0.5  0.5   7.057%   0.013%   6.173%   0.008%   2.185%   0.001%   0.000%   0.000%  21.240%   0.001%
   77    9.1  0.5  0.5   7.603%   0.014%   6.340%   0.008%   2.015%   0.001%   0.000%   0.000%   9.687%   0.000%
   78   10.1  0.5  0.5   0.055%  29.105%   0.000%   0.031%   0.004%   8.377%   0.000%   0.000%   0.001%  14.940%
   79   11.1  0.5  0.5   0.000%   0.202%   0.010%   8.297%   0.000%   0.031%   0.000%   0.000%   0.000%   1.041%
   80   12.1  0.5  0.5   0.055%  29.329%   0.000%   0.001%   0.004%   8.291%   0.000%   0.000%   0.000%   0.006%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.124%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.657%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.945%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.143%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.058%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.123%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.376%   0.000%
   88    8.1  0.5 -0.5   0.013%   7.057%   0.008%   6.173%   0.001%   2.185%   0.000%   0.000%   0.001%  21.240%
   89    9.1  0.5 -0.5   0.014%   7.603%   0.008%   6.340%   0.001%   2.015%   0.000%   0.000%   0.000%   9.687%
   90   10.1  0.5 -0.5  29.105%   0.055%   0.031%   0.000%   8.377%   0.004%   0.000%   0.000%  14.940%   0.001%
   91   11.1  0.5 -0.5   0.202%   0.000%   8.297%   0.010%   0.031%   0.000%   0.000%   0.000%   1.041%   0.000%
   92   12.1  0.5 -0.5  29.329%   0.055%   0.001%   0.000%   8.291%   0.004%   0.000%   0.000%   0.006%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.228%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.217%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.166%   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.144%   0.000%   0.077%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.060%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.038%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.003%   0.000%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.928%   0.000%  18.654%   0.134%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   3.683%   0.001%  18.536%   0.133%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.880%   0.019%   2.710%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.004%   0.000%   0.002%   0.000%   0.001%   0.113%  46.228%   0.121%   0.029%   2.275%
   12   12.1  1.5  1.5   0.005%   0.000%   0.006%   0.000%   0.002%   0.329%  45.858%   0.119%   0.022%   1.719%
   13   13.1  1.5  1.5   0.000%   0.029%   0.000%   0.000%  32.654%   0.015%   0.000%   0.184%   0.069%   0.001%
   14   14.1  1.5  1.5   0.000%   0.028%   0.000%   0.000%  32.447%   0.015%   0.000%   0.136%   0.013%   0.000%
   15   15.1  1.5  1.5   0.024%   0.000%   0.008%   0.000%   0.000%   0.010%   0.064%   0.000%   0.310%  24.336%
   16   16.1  1.5  1.5   0.018%   0.000%   0.004%   0.000%   0.000%   0.002%   0.059%   0.000%   0.243%  19.169%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.005%   0.011%   0.000%   0.000%   0.001%   0.066%   0.001%
   18    1.1  1.5  0.5   0.004%   0.000%   0.223%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.008%   0.000%   0.106%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.002%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.002%   0.271%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.001%   0.002%   0.236%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.170%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.001%   2.846%   0.015%   2.051%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.002%  10.964%   0.015%   2.129%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5  25.135%   0.005%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.034%  16.287%   0.007%   0.001%   0.980%   3.873%   0.049%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.024%  17.415%   0.008%   0.001%   0.183%   3.848%   0.045%
   30   13.1  1.5  0.5   0.000%   0.000%   0.029%   0.000%   0.000%   0.148%   3.062%   0.008%   0.258%  20.567%
   31   14.1  1.5  0.5   0.001%   0.000%   0.014%   0.000%   0.000%   0.484%   2.966%   0.008%   0.287%  22.611%
   32   15.1  1.5  0.5   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.010%   0.007%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.011%   0.032%   0.000%   0.000%   0.003%   0.083%   0.001%
   34   17.1  1.5  0.5   0.022%   0.000%   0.000%   0.000%   0.000%   0.019%   0.007%   0.000%   0.002%   0.117%
   35    1.1  1.5 -0.5   0.000%   0.004%   0.002%   0.223%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.008%   0.001%   0.106%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.002%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.271%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.001%   0.000%   0.236%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.170%   0.000%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   2.846%   0.001%   2.051%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5  10.964%   0.002%   2.129%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.005%  25.135%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.034%   0.000%   0.007%  16.287%   0.980%   0.001%   0.049%   3.873%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.024%   0.000%   0.008%  17.415%   0.183%   0.001%   0.045%   3.848%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.029%   0.148%   0.000%   0.008%   3.062%  20.567%   0.258%
   48   14.1  1.5 -0.5   0.000%   0.001%   0.000%   0.014%   0.484%   0.000%   0.008%   2.966%  22.611%   0.287%
   49   15.1  1.5 -0.5   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%   0.010%   0.000%   0.000%   0.007%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.011%   0.000%   0.000%   0.032%   0.003%   0.000%   0.001%   0.083%
   51   17.1  1.5 -0.5   0.000%   0.022%   0.000%   0.000%   0.019%   0.000%   0.000%   0.007%   0.117%   0.002%
   52    1.1  1.5 -1.5   0.228%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.217%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.166%   0.000%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.144%   0.001%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.060%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.038%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.003%   0.000%   0.042%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.928%   0.134%  18.654%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.001%   3.683%   0.133%  18.536%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.880%   0.000%   2.710%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.004%   0.000%   0.002%   0.113%   0.001%   0.121%  46.228%   2.275%   0.029%
   63   12.1  1.5 -1.5   0.000%   0.005%   0.000%   0.006%   0.329%   0.002%   0.119%  45.858%   1.719%   0.022%
   64   13.1  1.5 -1.5   0.029%   0.000%   0.000%   0.000%   0.015%  32.654%   0.184%   0.000%   0.001%   0.069%
   65   14.1  1.5 -1.5   0.028%   0.000%   0.000%   0.000%   0.015%  32.447%   0.136%   0.000%   0.000%   0.013%
   66   15.1  1.5 -1.5   0.000%   0.024%   0.000%   0.008%   0.010%   0.000%   0.000%   0.064%  24.336%   0.310%
   67   16.1  1.5 -1.5   0.000%   0.018%   0.000%   0.004%   0.002%   0.000%   0.000%   0.059%  19.169%   0.243%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.005%   0.000%   0.000%   0.011%   0.001%   0.000%   0.001%   0.066%
   69    1.1  0.5  0.5   3.058%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   2.383%   0.001%   0.141%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.013%   0.016%   2.209%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   1.420%   0.004%   0.615%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.124%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.344%   0.019%   2.697%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.083%   0.000%   1.712%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.001%   4.022%   0.020%   2.839%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.003%  15.466%   0.021%   2.951%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.358%   0.000%  12.689%   0.091%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5  27.063%   0.005%   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%  28.094%   0.202%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.001%   3.058%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   2.383%   0.000%   0.141%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.013%   0.000%   2.209%   0.016%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   1.420%   0.000%   0.615%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.124%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.344%   0.000%   2.697%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.083%   0.012%   1.712%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   4.022%   0.001%   2.839%   0.020%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5  15.466%   0.003%   2.951%   0.021%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.358%   0.091%  12.689%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.005%  27.063%   0.000%   0.053%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.202%  28.094%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.666%   0.001%   0.000%   0.177%   0.000%   0.023%   3.242%   0.951%   2.064%   0.057%
   12   12.1  1.5  1.5   0.708%   0.001%   0.000%   0.210%   0.000%   0.031%   0.027%   0.007%   6.876%   0.193%
   13   13.1  1.5  1.5   0.000%   0.003%   2.602%   0.003%  16.877%   0.001%   0.366%   1.242%   0.044%   1.531%
   14   14.1  1.5  1.5   0.002%   1.491%   1.611%   0.002%  16.531%   0.001%   0.277%   0.933%   0.033%   1.197%
   15   15.1  1.5  1.5   0.158%   0.000%   0.003%   2.880%   0.000%   0.006%  20.003%   5.865%   3.127%   0.088%
   16   16.1  1.5  1.5   0.018%   0.000%   0.010%   8.905%   0.000%   0.000%   7.108%   2.073%   8.566%   0.239%
   17   17.1  1.5  1.5   0.027%  22.737%   1.144%   0.001%   0.000%   0.000%   1.950%   6.642%   0.834%  29.941%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.334%   0.289%   0.000%  32.254%   0.001%   3.600%  12.302%   0.072%   2.572%
   29   12.1  1.5  0.5   0.001%   0.179%   0.783%   0.001%  30.398%   0.001%   3.125%  10.670%   0.148%   5.183%
   30   13.1  1.5  0.5  11.681%   0.014%   0.000%   0.172%   0.000%   0.142%   0.008%   0.001%  26.542%   0.743%
   31   14.1  1.5  0.5   9.346%   0.011%   0.000%   0.012%   0.000%   0.105%  14.441%   4.234%   5.717%   0.159%
   32   15.1  1.5  0.5   0.040%  33.623%   9.962%   0.011%   1.405%   0.000%   0.019%   0.063%   0.044%   1.565%
   33   16.1  1.5  0.5   0.022%  18.199%  24.648%   0.028%   2.215%   0.000%   0.004%   0.012%   0.066%   2.387%
   34   17.1  1.5  0.5   0.738%   0.001%   0.052%  46.494%   0.000%   0.002%   0.639%   0.189%   0.008%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.334%   0.000%   0.000%   0.289%   0.001%  32.254%  12.302%   3.600%   2.572%   0.072%
   46   12.1  1.5 -0.5   0.179%   0.001%   0.001%   0.783%   0.001%  30.398%  10.670%   3.125%   5.183%   0.148%
   47   13.1  1.5 -0.5   0.014%  11.681%   0.172%   0.000%   0.142%   0.000%   0.001%   0.008%   0.743%  26.542%
   48   14.1  1.5 -0.5   0.011%   9.346%   0.012%   0.000%   0.105%   0.000%   4.234%  14.441%   0.159%   5.717%
   49   15.1  1.5 -0.5  33.623%   0.040%   0.011%   9.962%   0.000%   1.405%   0.063%   0.019%   1.565%   0.044%
   50   16.1  1.5 -0.5  18.199%   0.022%   0.028%  24.648%   0.000%   2.215%   0.012%   0.004%   2.387%   0.066%
   51   17.1  1.5 -0.5   0.001%   0.738%  46.494%   0.052%   0.002%   0.000%   0.189%   0.639%   0.000%   0.008%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.001%   0.666%   0.177%   0.000%   0.023%   0.000%   0.951%   3.242%   0.057%   2.064%
   63   12.1  1.5 -1.5   0.001%   0.708%   0.210%   0.000%   0.031%   0.000%   0.007%   0.027%   0.193%   6.876%
   64   13.1  1.5 -1.5   0.003%   0.000%   0.003%   2.602%   0.001%  16.877%   1.242%   0.366%   1.531%   0.044%
   65   14.1  1.5 -1.5   1.491%   0.002%   0.002%   1.611%   0.001%  16.531%   0.933%   0.277%   1.197%   0.033%
   66   15.1  1.5 -1.5   0.000%   0.158%   2.880%   0.003%   0.006%   0.000%   5.865%  20.003%   0.088%   3.127%
   67   16.1  1.5 -1.5   0.000%   0.018%   8.905%   0.010%   0.000%   0.000%   2.073%   7.108%   0.239%   8.566%
   68   17.1  1.5 -1.5  22.737%   0.027%   0.001%   1.144%   0.000%   0.000%   6.642%   1.950%  29.941%   0.834%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.001%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.001%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.001%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.002%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.001%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.002%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.002%   0.000%
   11   11.1  1.5  1.5   0.000%   0.003%   0.006%   0.349%   8.944%   0.004%   7.095%   0.001%   0.000%  27.431%
   12   12.1  1.5  1.5   0.000%   0.234%   0.004%   0.228%  10.131%   0.005%   6.260%   0.001%   0.000%  26.889%
   13   13.1  1.5  1.5   8.811%   0.000%   0.000%   0.000%   0.008%  16.857%   0.001%   4.591%   0.608%   0.000%
   14   14.1  1.5  1.5   9.602%   0.000%   0.000%   0.000%   0.006%  14.207%   0.001%   7.175%   0.332%   0.000%
   15   15.1  1.5  1.5   0.000%  12.192%   0.087%   4.856%   8.949%   0.004%  10.348%   0.001%   0.000%   0.514%
   16   16.1  1.5  1.5   0.000%  22.267%   0.092%   5.101%   8.300%   0.004%  10.512%   0.001%   0.000%   1.056%
   17   17.1  1.5  1.5   7.947%   0.000%   0.027%   0.001%   0.003%   5.951%   0.002%  19.623%   2.509%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.001%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.003%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%  24.875%   0.445%   0.000%   0.511%   0.000%   0.544%   0.370%   0.000%
   29   12.1  1.5  0.5   0.251%   0.000%  24.788%   0.454%   0.000%   0.137%   0.000%   0.766%   0.204%   0.000%
   30   13.1  1.5  0.5   0.000%   0.831%   0.309%  16.694%   0.534%   0.000%   3.777%   0.001%   0.000%  14.416%
   31   14.1  1.5  0.5   0.000%   3.908%   0.322%  18.006%   1.046%   0.000%   2.006%   0.000%   0.000%  13.909%
   32   15.1  1.5  0.5  12.762%   0.000%   1.375%   0.024%   0.004%   9.159%   0.001%   7.970%   8.572%   0.000%
   33   16.1  1.5  0.5  12.199%   0.000%   1.453%   0.026%   0.001%   2.862%   0.002%  14.421%   2.784%   0.000%
   34   17.1  1.5  0.5   0.000%   8.985%   0.005%   0.278%  12.170%   0.005%   4.706%   0.000%   0.000%   0.090%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.001%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.001%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.003%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.445%  24.875%   0.511%   0.000%   0.544%   0.000%   0.000%   0.370%
   46   12.1  1.5 -0.5   0.000%   0.251%   0.454%  24.788%   0.137%   0.000%   0.766%   0.000%   0.000%   0.204%
   47   13.1  1.5 -0.5   0.831%   0.000%  16.694%   0.309%   0.000%   0.534%   0.001%   3.777%  14.416%   0.000%
   48   14.1  1.5 -0.5   3.908%   0.000%  18.006%   0.322%   0.000%   1.046%   0.000%   2.006%  13.909%   0.000%
   49   15.1  1.5 -0.5   0.000%  12.762%   0.024%   1.375%   9.159%   0.004%   7.970%   0.001%   0.000%   8.572%
   50   16.1  1.5 -0.5   0.000%  12.199%   0.026%   1.453%   2.862%   0.001%  14.421%   0.002%   0.000%   2.784%
   51   17.1  1.5 -0.5   8.985%   0.000%   0.278%   0.005%   0.005%  12.170%   0.000%   4.706%   0.090%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.003%   0.000%   0.000%   0.002%
   62   11.1  1.5 -1.5   0.003%   0.000%   0.349%   0.006%   0.004%   8.944%   0.001%   7.095%  27.431%   0.000%
   63   12.1  1.5 -1.5   0.234%   0.000%   0.228%   0.004%   0.005%  10.131%   0.001%   6.260%  26.889%   0.000%
   64   13.1  1.5 -1.5   0.000%   8.811%   0.000%   0.000%  16.857%   0.008%   4.591%   0.001%   0.000%   0.608%
   65   14.1  1.5 -1.5   0.000%   9.602%   0.000%   0.000%  14.207%   0.006%   7.175%   0.001%   0.000%   0.332%
   66   15.1  1.5 -1.5  12.192%   0.000%   4.856%   0.087%   0.004%   8.949%   0.001%  10.348%   0.514%   0.000%
   67   16.1  1.5 -1.5  22.267%   0.000%   5.101%   0.092%   0.004%   8.300%   0.001%  10.512%   1.056%   0.000%
   68   17.1  1.5 -1.5   0.000%   7.947%   0.001%   0.027%   5.951%   0.003%  19.623%   0.002%   0.000%   2.509%
   69    1.1  0.5  0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%   0.016%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.097%   0.000%   0.012%   0.048%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.002%   0.091%   0.003%   0.000%   0.013%   0.000%   0.000%   0.116%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.075%   0.000%   0.034%   0.000%   0.000%   0.006%
   80   12.1  0.5  0.5   0.000%   0.000%   0.002%   0.087%   0.007%   0.000%   0.014%   0.000%   0.000%   0.120%
   81    1.1  0.5 -0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%   0.000%   0.000%   0.016%
   89    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.097%   0.000%   0.012%   0.000%   0.000%   0.048%
   90   10.1  0.5 -0.5   0.000%   0.000%   0.091%   0.002%   0.000%   0.003%   0.000%   0.013%   0.116%   0.000%
   91   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.075%   0.000%   0.034%   0.006%   0.000%
   92   12.1  0.5 -0.5   0.000%   0.000%   0.087%   0.002%   0.000%   0.007%   0.000%   0.014%   0.120%   0.000%

   Nr   State  S   Sz      91       92

    1    1.1  1.5  1.5   0.001%   0.000%
    2    2.1  1.5  1.5   0.001%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.001%
    9    9.1  1.5  1.5   0.000%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.100%
   12   12.1  1.5  1.5   0.000%   0.029%
   13   13.1  1.5  1.5  13.446%   0.000%
   14   14.1  1.5  1.5  13.899%   0.000%
   15   15.1  1.5  1.5   0.000%   6.129%
   16   16.1  1.5  1.5   0.000%   6.202%
   17   17.1  1.5  1.5   0.520%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%
   20    3.1  1.5  0.5   0.001%   0.000%
   21    4.1  1.5  0.5   0.001%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.001%
   25    8.1  1.5  0.5   0.001%   0.000%
   26    9.1  1.5  0.5   0.001%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%
   28   11.1  1.5  0.5   0.573%   0.000%
   29   12.1  1.5  0.5   1.352%   0.000%
   30   13.1  1.5  0.5   0.000%   0.003%
   31   14.1  1.5  0.5   0.000%   0.331%
   32   15.1  1.5  0.5  13.276%   0.000%
   33   16.1  1.5  0.5  18.448%   0.000%
   34   17.1  1.5  0.5   0.000%  25.377%
   35    1.1  1.5 -0.5   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.001%
   38    4.1  1.5 -0.5   0.000%   0.001%
   39    5.1  1.5 -0.5   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%
   41    7.1  1.5 -0.5   0.001%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.001%
   43    9.1  1.5 -0.5   0.000%   0.001%
   44   10.1  1.5 -0.5   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.573%
   46   12.1  1.5 -0.5   0.000%   1.352%
   47   13.1  1.5 -0.5   0.003%   0.000%
   48   14.1  1.5 -0.5   0.331%   0.000%
   49   15.1  1.5 -0.5   0.000%  13.276%
   50   16.1  1.5 -0.5   0.000%  18.448%
   51   17.1  1.5 -0.5  25.377%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.001%
   53    2.1  1.5 -1.5   0.000%   0.001%
   54    3.1  1.5 -1.5   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%
   59    8.1  1.5 -1.5   0.001%   0.000%
   60    9.1  1.5 -1.5   0.001%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%
   62   11.1  1.5 -1.5   0.100%   0.000%
   63   12.1  1.5 -1.5   0.029%   0.000%
   64   13.1  1.5 -1.5   0.000%  13.446%
   65   14.1  1.5 -1.5   0.000%  13.899%
   66   15.1  1.5 -1.5   6.129%   0.000%
   67   16.1  1.5 -1.5   6.202%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.520%
   69    1.1  0.5  0.5   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%
   76    8.1  0.5  0.5   0.106%   0.000%
   77    9.1  0.5  0.5   0.074%   0.000%
   78   10.1  0.5  0.5   0.000%   0.006%
   79   11.1  0.5  0.5   0.000%   0.116%
   80   12.1  0.5  0.5   0.000%   0.003%
   81    1.1  0.5 -0.5   0.000%   0.000%
   82    2.1  0.5 -0.5   0.000%   0.000%
   83    3.1  0.5 -0.5   0.000%   0.000%
   84    4.1  0.5 -0.5   0.000%   0.000%
   85    5.1  0.5 -0.5   0.000%   0.000%
   86    6.1  0.5 -0.5   0.000%   0.000%
   87    7.1  0.5 -0.5   0.000%   0.000%
   88    8.1  0.5 -0.5   0.000%   0.106%
   89    9.1  0.5 -0.5   0.000%   0.074%
   90   10.1  0.5 -0.5   0.006%   0.000%
   91   11.1  0.5 -0.5   0.116%   0.000%
   92   12.1  0.5 -0.5   0.003%   0.000%


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
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      621.45       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     13841.11  12724.43    431.72    679.36      3.78      1.43
 REAL TIME  *     14462.75 SEC
 DISK USED  *       653.56 MB (local),       19.27 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.950732625716

              CI              CI           MULTI
   -109.92330853   -109.89155535   -109.33359080
 **********************************************************************************************************************************
 Molpro calculation terminated
