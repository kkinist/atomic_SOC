
 Working directory              : /wrk/irikura/molpro.XWfxJiaFlU/
 Global scratch directory       : /wrk/irikura/molpro.XWfxJiaFlU/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.XWfxJiaFlU/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! Heavy weight on 4F
                                                                                 ! 4F,4P,4F + 2F,2D,2P
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,17;
 weight,7[99],10[1]
     wf,nelec=17,sym=1,spin=1; state,15;
 weight,all,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,17;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,15;save,5101.2}
 hlsdiag(18) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.12 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space                                                                                                                                 
  (32 PROC) 64 bit mpp version                                                           DATE: 15-Feb-24          TIME: 11:02:33  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1500 MW
 Total memory per node:  18000 MW

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

     13.631 MB (compressed) written to integral file ( 16.4%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     72 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.71      0.51
 REAL TIME  *         1.49 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
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
 Number of states:            15
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.102D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.991D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.534D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.824D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 5 3 1 7 9111415  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.207D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.376D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 9 7 4 5 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.13788   0.13788   0.13788   0.13788   0.13788   0.13788   0.13788   0.00139
                                          0.00139   0.00139   0.00139   0.00139   0.00139   0.00139   0.00139   0.00139
                                          0.00139
 Weight factors for state symmetry  2:    0.00139   0.00139   0.00139   0.00139   0.00139   0.00139   0.00139   0.00139
                                          0.00139   0.00139   0.00139   0.00139   0.00139   0.00139   0.00139
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    4870
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.36520064    -109.37938301   -0.01418237    0.19971833 0.00016647 0.00000000  0.13E+00      0.24
   2    2    4    0   -109.37907011    -109.37908505   -0.00001493    0.00612871 0.00002229 0.00000000  0.44E-02      0.40
   3   20   40    0   -109.37908506    -109.37908506   -0.00000000    0.00001261 0.00000025 0.00000000  0.10E-04      1.52
   4   20   40    0   -109.37908506    -109.37908506    0.00000000    0.00000014 0.00000021 0.00000000  0.15E-06      2.67

 CONVERGENCE REACHED!  Final gradient:    0.00000014 ( 0.14E-06)
                       Final energy:   -109.37908506
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.381195414153
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900466
 One electron energy                          -193.58568567
 Two electron energy                            84.20449025
 Virial ratio                                    3.66789880
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.381195413828
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900458
 One electron energy                          -193.58568556
 Two electron energy                            84.20449014
 Virial ratio                                    3.66789881
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.381195413743
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900469
 One electron energy                          -193.58568570
 Two electron energy                            84.20449029
 Virial ratio                                    3.66789880
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.381195412105
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900470
 One electron energy                          -193.58568572
 Two electron energy                            84.20449031
 Virial ratio                                    3.66789880
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.381195411550
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900473
 One electron energy                          -193.58568577
 Two electron energy                            84.20449036
 Virial ratio                                    3.66789880
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.381195409371
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900480
 One electron energy                          -193.58568587
 Two electron energy                            84.20449046
 Virial ratio                                    3.66789879
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.381195409209
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99900482
 One electron energy                          -193.58568589
 Two electron energy                            84.20449048
 Virial ratio                                    3.66789879
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327625842370
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99973604
 One electron energy                          -193.57609984
 Two electron energy                            84.24847400
 Virial ratio                                    3.66654463
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327625838717
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99973617
 One electron energy                          -193.57610003
 Two electron energy                            84.24847419
 Virial ratio                                    3.66654462
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327625833014
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.99973636
 One electron energy                          -193.57610030
 Two electron energy                            84.24847447
 Virial ratio                                    3.66654461
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Quartet
 ==============================
 !MCSCF STATE 11.1 Quartet Energy             -109.283853326626
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534665
 One electron energy                          -189.08008449
 Two electron energy                            79.79623116
 Virial ratio                                    3.83299731
 
 !MCSCF STATE 11.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Quartet
 ==============================
 !MCSCF STATE 12.1 Quartet Energy             -109.283853322686
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534657
 One electron energy                          -189.08008438
 Two electron energy                            79.79623105
 Virial ratio                                    3.83299732
 
 !MCSCF STATE 12.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Quartet
 ==============================
 !MCSCF STATE 13.1 Quartet Energy             -109.283853322562
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534656
 One electron energy                          -189.08008436
 Two electron energy                            79.79623104
 Virial ratio                                    3.83299732
 
 !MCSCF STATE 13.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Quartet
 ==============================
 !MCSCF STATE 14.1 Quartet Energy             -109.283853321538
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534653
 One electron energy                          -189.08008432
 Two electron energy                            79.79623099
 Virial ratio                                    3.83299732
 
 !MCSCF STATE 14.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Quartet
 ==============================
 !MCSCF STATE 15.1 Quartet Energy             -109.283853319859
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534649
 One electron energy                          -189.08008426
 Two electron energy                            79.79623094
 Virial ratio                                    3.83299732
 
 !MCSCF STATE 15.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 16.1 Quartet
 ==============================
 !MCSCF STATE 16.1 Quartet Energy             -109.283853316974
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534641
 One electron energy                          -189.08008414
 Two electron energy                            79.79623083
 Virial ratio                                    3.83299733
 
 !MCSCF STATE 16.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 17.1 Quartet
 ==============================
 !MCSCF STATE 17.1 Quartet Energy             -109.283853316720
 Nuclear energy                                  0.00000000
 Kinetic energy                                 38.57534641
 One electron energy                          -189.08008415
 Two electron energy                            79.79623083
 Virial ratio                                    3.83299733
 
 !MCSCF STATE 17.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.351286311313
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160415
 One electron energy                          -193.55572042
 Two electron energy                            84.20443411
 Virial ratio                                    3.66830176
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.351286310544
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160423
 One electron energy                          -193.55572053
 Two electron energy                            84.20443422
 Virial ratio                                    3.66830175
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.351286309910
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160425
 One electron energy                          -193.55572056
 Two electron energy                            84.20443425
 Virial ratio                                    3.66830175
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.351286308147
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160427
 One electron energy                          -193.55572059
 Two electron energy                            84.20443428
 Virial ratio                                    3.66830175
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.351286307200
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160431
 One electron energy                          -193.55572064
 Two electron energy                            84.20443433
 Virial ratio                                    3.66830175
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.351286304239
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160438
 One electron energy                          -193.55572074
 Two electron energy                            84.20443444
 Virial ratio                                    3.66830174
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.351286303950
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98160439
 One electron energy                          -193.55572075
 Two electron energy                            84.20443445
 Virial ratio                                    3.66830174
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333589142560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07584420
 One electron energy                          -193.70997205
 Two electron energy                            84.37638291
 Virial ratio                                    3.66174905
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333589142211
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07584424
 One electron energy                          -193.70997209
 Two electron energy                            84.37638295
 Virial ratio                                    3.66174904
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333589140726
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07584434
 One electron energy                          -193.70997226
 Two electron energy                            84.37638312
 Virial ratio                                    3.66174904
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333589140485
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07584436
 One electron energy                          -193.70997230
 Two electron energy                            84.37638316
 Virial ratio                                    3.66174904
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333589139793
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.07584441
 One electron energy                          -193.70997238
 Two electron energy                            84.37638324
 Virial ratio                                    3.66174903
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 13.1 Doublet
 ==============================
 !MCSCF STATE 13.1 Doublet Energy             -109.305950766836
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.77965564
 One electron energy                          -193.15809997
 Two electron energy                            83.85214921
 Virial ratio                                    3.68040397
 
 !MCSCF STATE 13.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 14.1 Doublet
 ==============================
 !MCSCF STATE 14.1 Doublet Energy             -109.305950762014
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.77965574
 One electron energy                          -193.15810011
 Two electron energy                            83.85214934
 Virial ratio                                    3.68040396
 
 !MCSCF STATE 14.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 15.1 Doublet
 ==============================
 !MCSCF STATE 15.1 Doublet Energy             -109.305950754839
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.77965588
 One electron energy                          -193.15810029
 Two electron energy                            83.85214954
 Virial ratio                                    3.68040395
 
 !MCSCF STATE 15.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.919247366511
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     6.659519543157
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     1.467456011475
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     6.080859275082
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     2.532552090142
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.340415462172
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999999787
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000000000291
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     1.000000000000
 !MCSCF expec    <11.1 Quartet|LXLX|11.1 Quartet>     5.086275216421
 !MCSCF expec    <12.1 Quartet|LXLX|12.1 Quartet>     6.853731732887
 !MCSCF expec    <13.1 Quartet|LXLX|13.1 Quartet>     0.117393391771
 !MCSCF expec    <14.1 Quartet|LXLX|14.1 Quartet>     3.999999999847
 !MCSCF expec    <15.1 Quartet|LXLX|15.1 Quartet>     3.146177594169
 !MCSCF expec    <16.1 Quartet|LXLX|16.1 Quartet>     4.913741282506
 !MCSCF expec    <17.1 Quartet|LXLX|17.1 Quartet>     3.882610150246
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     6.124298654968
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     4.554427827667
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     1.031115768328
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     4.000000000000
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     5.445466418659
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     2.968872336607
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.875636210989
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     2.020124304983
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000004051
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999998956727
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000002146021
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.979837512052
 !MCSCF expec    <13.1 Doublet|LXLX|13.1 Doublet>     0.999999999267
 !MCSCF expec    <14.1 Doublet|LXLX|14.1 Doublet>     0.000000001411
 !MCSCF expec    <15.1 Doublet|LXLX|15.1 Doublet>     0.999999999115
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     7.810127336496
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     3.554527878338
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     8.999432283624
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     2.189793839059
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     1.000567590201
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     0.445494784303
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.000000000261
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999999999712
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     1.000000000000
 !MCSCF expec    <11.1 Quartet|LYLY|11.1 Quartet>     3.925256777865
 !MCSCF expec    <12.1 Quartet|LYLY|12.1 Quartet>     5.093971967504
 !MCSCF expec    <13.1 Quartet|LYLY|13.1 Quartet>     7.248675209397
 !MCSCF expec    <14.1 Quartet|LYLY|14.1 Quartet>     3.999999998168
 !MCSCF expec    <15.1 Quartet|LYLY|15.1 Quartet>     4.906130329383
 !MCSCF expec    <16.1 Quartet|LYLY|16.1 Quartet>     0.074741074302
 !MCSCF expec    <17.1 Quartet|LYLY|17.1 Quartet>     2.751341640696
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.717886424476
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     7.314315423003
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     8.872618208903
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     4.000000000002
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     2.685771377542
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     1.127374890296
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     0.282130957270
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     0.257974724566
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000000014434
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000001038266
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     3.999997838659
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     3.742044033804
 !MCSCF expec    <13.1 Doublet|LYLY|13.1 Doublet>     0.000000000734
 !MCSCF expec    <14.1 Doublet|LYLY|14.1 Doublet>     0.999999999272
 !MCSCF expec    <15.1 Doublet|LYLY|15.1 Doublet>     0.999999999998
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     0.270625296993
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     1.785952578505
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     1.533111704901
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     3.729346885859
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     8.466880319657
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     8.214089753524
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999999952
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999997
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.000000000000
 !MCSCF expec    <11.1 Quartet|LZLZ|11.1 Quartet>     2.988468005714
 !MCSCF expec    <12.1 Quartet|LZLZ|12.1 Quartet>     0.052296299609
 !MCSCF expec    <13.1 Quartet|LZLZ|13.1 Quartet>     4.633931398832
 !MCSCF expec    <14.1 Quartet|LZLZ|14.1 Quartet>     4.000000001985
 !MCSCF expec    <15.1 Quartet|LZLZ|15.1 Quartet>     3.947692076448
 !MCSCF expec    <16.1 Quartet|LZLZ|16.1 Quartet>     7.011517643192
 !MCSCF expec    <17.1 Quartet|LZLZ|17.1 Quartet>     5.366048209058
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     2.157814920556
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     0.131256749330
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     2.096266022769
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     3.999999999998
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     3.868762203799
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     7.903752773097
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     7.842232831741
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.721900970451
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     3.999999981516
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000005007
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000015320
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     0.278118454144
 !MCSCF expec    <13.1 Doublet|LZLZ|13.1 Doublet>     0.999999999999
 !MCSCF expec    <14.1 Doublet|LZLZ|14.1 Doublet>     0.999999999317
 !MCSCF expec    <15.1 Doublet|LZLZ|15.1 Doublet>     0.000000000888
 
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
 !MCSCF expec    <13.1 Doublet|L**2|13.1 Doublet>     2.000000000000
 !MCSCF expec    <14.1 Doublet|L**2|14.1 Doublet>     2.000000000000
 !MCSCF expec    <15.1 Doublet|L**2|15.1 Doublet>     2.000000000000
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 3 2 6 4 5 1 1 2 3   6 4 5 1 2 3 6 4 5 3   2 6 5 4 11214151113  10 8 7 9 6 5 4 3 2 1
                                       121514111310 8 7 9 5   6 4 3 2 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 2 3 1 2 3 1 2   3 1 6 5 9 7 8 410 2   3 1 5 9 7 6 810 4 2   3 110 5 7 9 8 4 6 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72134     1  1  s    1.00195
    2.1     1.59801    -0.30364     1  1  d2-  1.00367
    3.1     1.59801    -0.30364     1  1  d0   1.00367
    4.1     1.59801    -0.30364     1  1  d1-  1.00367
    5.1     1.59801    -0.30364     1  1  d1+  1.00367
    6.1     1.59801    -0.30364     1  1  d2+  1.00367
    7.1     1.01000    -0.10043     1  2  s    0.95346
    1.2     1.99998    -2.35115     1  1  pz   1.00015
    2.2     1.99998    -2.35115     1  1  py   1.00015
    3.2     1.99998    -2.35115     1  1  px   1.00015
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a22aa 222      0.00000000      0.00000000      0.00000000      1.00000000      0.00000000     -0.00000000     -0.00000000
 2a2aa22 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 222aaa2 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa222a 222      0.26010829      0.00000517     -0.00000044     -0.00000000      0.96557945      0.00000000      0.00000000
 2a222aa 222     -0.43182018      0.00000771     -0.00000055      0.00000000      0.11632392      0.00000038      0.00000478
 2aa2a22 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2aa22a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22a2aa2 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22aa2a2 222     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 222aa2a 222      0.86364055     -0.00001543      0.00000111     -0.00000000     -0.23264795     -0.00000076     -0.00000956
 2a2a22a 222      0.00000413     -0.29848693      0.00006064      0.00000000      0.00000049      0.00025941      0.84315207
 2aaa222 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222a2aa 222      0.00000030      0.00007625      0.34662184     -0.00000000      0.00000008      0.82453209     -0.00025162
 22aa22a 222     -0.00000052      0.00012689      0.61101919     -0.00000000      0.00000042      0.16326541     -0.00004926
 22a2a2a 222     -0.00000715     -0.60058507      0.00012358      0.00000000      0.00000514      0.00006409      0.19823634
 2222aaa 222      0.00001651      0.74175676     -0.00015340     -0.00000000     -0.00000842      0.00014841      0.49979681
 2a22a2a 222     -0.00000121      0.00014352      0.71169432     -0.00000000      0.00000065     -0.54174822      0.00016630
 2a2a2a2 222     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a22aa2 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22aaa22 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 
 Energy:       -109.38119541   -109.38119541   -109.38119541   -109.38119541   -109.38119541   -109.38119541   -109.38119541

 State:                8               9              10              11              12              13              14
 22a22aa 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2aa22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000159     -0.00000125      0.00002785      0.99957775
 222aaa2 222      0.00000000      0.00000000     -0.00000001     -0.00000226     -0.11429364     -0.00000211      0.00000456
 2aa222a 222     -0.00000000     -0.00000000      0.00000002     -0.00000000      0.00000000     -0.00000000      0.00000000
 2a222aa 222     -0.00000618     -0.00000162      0.89377622      0.00000000     -0.00000001     -0.00000000      0.00000000
 2aa2a22 222     -0.00000000     -0.00007095     -0.00000000     -0.00000167      0.00000001      0.07190882     -0.00000642
 2aa22a2 222      0.00000000      0.00000000     -0.00007092     -0.00000293      0.88818589     -0.00000027      0.00000159
 22a2aa2 222     -0.00007095      0.00000000     -0.00000000      0.12221300      0.00000030     -0.00000244      0.00001941
 22aa2a2 222      0.00000000      0.00007094      0.00000000     -0.00000051      0.00000005      0.88083239     -0.00002530
 222aa2a 222     -0.00000309     -0.00000081      0.44688801      0.00000000     -0.00000001     -0.00000000      0.00000000
 2a2a22a 222     -0.44688817      0.00000652     -0.00000309     -0.00000000      0.00000000      0.00000000     -0.00000000
 2aaa222 222     -0.00007094      0.00000000     -0.00000000      0.82698053      0.00000251      0.00000117     -0.00000606
 222a2aa 222     -0.00000652     -0.44688815     -0.00000081      0.00000000     -0.00000000      0.00000000      0.00000000
 22aa22a 222      0.00001130      0.77403284      0.00000140     -0.00000000      0.00000000     -0.00000000      0.00000000
 22a2a2a 222      0.77403282     -0.00001130      0.00000535      0.00000000     -0.00000000      0.00000000      0.00000000
 2222aaa 222      0.44688811     -0.00000652      0.00000309      0.00000000      0.00000000      0.00000000      0.00000000
 2a22a2a 222     -0.00000652     -0.44688810     -0.00000081      0.00000000     -0.00000000      0.00000000      0.00000000
 2a2a2a2 222      0.00012286     -0.00000000      0.00000000      0.54801721      0.00000162     -0.00000074      0.00000771
 2a22aa2 222     -0.00000000     -0.00012286     -0.00000000      0.00000067      0.00000002      0.46703223     -0.00001090
 22aaa22 222     -0.00000000     -0.00000000      0.00014188     -0.00000147      0.44409287     -0.00000013      0.00000080
 
 Energy:       -109.32762584   -109.32762584   -109.32762583   -109.28385333   -109.28385332   -109.28385332   -109.28385332

 State:               15              16              17
 22a22aa 222      0.00000000      0.00000000      0.00000000
 2a2aa22 222     -0.00000474     -0.00002168      0.00000495
 222aaa2 222      0.99302198     -0.00000070      0.00000008
 2aa222a 222      0.00000000      0.00000000      0.00000000
 2a222aa 222      0.00000001     -0.00000000      0.00000000
 2aa2a22 222      0.00000008      0.00016084      0.89115297
 2aa22a2 222      0.10222735      0.00000000     -0.00000000
 22a2aa2 222      0.00000094      0.88565706     -0.00015942
 22aa2a2 222      0.00000186      0.00003007      0.15316285
 222aa2a 222      0.00000001     -0.00000000      0.00000000
 2a2a22a 222     -0.00000000     -0.00000000      0.00000000
 2aaa222 222      0.00000193     -0.33974656      0.00006277
 222a2aa 222      0.00000000     -0.00000000     -0.00000001
 22aa22a 222     -0.00000000      0.00000000      0.00000001
 22a2a2a 222     -0.00000000      0.00000001     -0.00000000
 2222aaa 222     -0.00000000      0.00000000     -0.00000000
 2a22a2a 222     -0.00000000     -0.00000000     -0.00000001
 2a2a2a2 222      0.00000166      0.31518168     -0.00005580
 2a22aa2 222      0.00000103     -0.00007550     -0.42607884
 22aaa22 222      0.05111365      0.00000000     -0.00000000
 
 Energy:       -109.28385332   -109.28385332   -109.28385332
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a22ab 222      0.00000010      0.00000049     -0.00000104      0.81405770      0.00000006     -0.00000019     -0.00000014
 2aa222b 222     -0.00004778      0.14746400      0.00002642     -0.00000015      0.80058998     -0.00001849      0.00001980
 222aa2b 222      0.00005794      0.71606949     -0.00001716     -0.00000042     -0.13189583     -0.00000366     -0.00001334
 2a2a22b 222     -0.19336688      0.00002264      0.00002181      0.00000014     -0.00003307      0.00012471      0.70196946
 222a2ab 222      0.00001211      0.00000981      0.20111746      0.00000042      0.00000772      0.69978829     -0.00012723
 2a222ab 222     -0.00002897     -0.35803463      0.00000858      0.00000021      0.06594786      0.00000183      0.00000667
 2222aab 222      0.63133728     -0.00003776     -0.00002266     -0.00000001      0.00003566      0.00006153      0.36271913
 2a22a2b 222      0.00002764      0.00000751      0.62728775      0.00000071     -0.00003062     -0.36967827      0.00005380
 22aa22b 222      0.00002295      0.00001000      0.47828003      0.00000066     -0.00001322      0.19058920     -0.00004240
 22a2a2b 222     -0.47614328      0.00003487      0.00002568      0.00000009     -0.00003968      0.00003648      0.19586638
 2ba222a 222      0.00002389     -0.07373201     -0.00001321      0.00000007     -0.40029494      0.00000925     -0.00000990
 2ab222a 222      0.00002389     -0.07373199     -0.00001321      0.00000007     -0.40029504      0.00000925     -0.00000990
 222202a 222     -0.00000000      0.00000000      0.00000000      0.00000002     -0.00000000     -0.00000000     -0.00000000
 220222a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a22ba 222     -0.00000005     -0.00000024      0.00000052     -0.40702881     -0.00000003      0.00000010      0.00000007
 222220a 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 202222a 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22b22aa 222     -0.00000005     -0.00000024      0.00000052     -0.40702889     -0.00000003      0.00000010      0.00000007
 222ba2a 222     -0.00002897     -0.35803472      0.00000858      0.00000021      0.06594789      0.00000183      0.00000667
 222ab2a 222     -0.00002897     -0.35803477      0.00000858      0.00000021      0.06594794      0.00000183      0.00000667
 2222aba 222     -0.31566860      0.00001888      0.00001133      0.00000001     -0.00001783     -0.00003077     -0.18135955
 2b22a2a 222     -0.00001382     -0.00000375     -0.31364384     -0.00000036      0.00001531      0.18483912     -0.00002690
 222b2aa 222     -0.00000606     -0.00000491     -0.10055875     -0.00000021     -0.00000386     -0.34989414      0.00006362
 2a22b2a 222     -0.00001382     -0.00000375     -0.31364391     -0.00000036      0.00001531      0.18483916     -0.00002690
 2222baa 222     -0.31566868      0.00001888      0.00001133      0.00000001     -0.00001783     -0.00003077     -0.18135957
 2b2a22a 222      0.09668342     -0.00001132     -0.00001091     -0.00000007      0.00001653     -0.00006235     -0.35098472
 2a2b22a 222      0.09668346     -0.00001132     -0.00001091     -0.00000007      0.00001653     -0.00006235     -0.35098473
 222a2ba 222     -0.00000606     -0.00000491     -0.10055871     -0.00000021     -0.00000386     -0.34989415      0.00006362
 222022a 222     -0.00000000      0.00000000      0.00000000     -0.00000002      0.00000000     -0.00000000     -0.00000000
 2a222ba 222      0.00001449      0.17901732     -0.00000429     -0.00000010     -0.03297393     -0.00000091     -0.00000334
 2b222aa 222      0.00001449      0.17901731     -0.00000429     -0.00000010     -0.03297393     -0.00000091     -0.00000334
 22a2b2a 222      0.23807165     -0.00001743     -0.00001284     -0.00000005      0.00001984     -0.00001824     -0.09793319
 22ba22a 222     -0.00001148     -0.00000500     -0.23914002     -0.00000033      0.00000661     -0.09529461      0.00002120
 22ab22a 222     -0.00001148     -0.00000500     -0.23914002     -0.00000033      0.00000661     -0.09529459      0.00002120
 22b2a2a 222      0.23807162     -0.00001743     -0.00001284     -0.00000005      0.00001984     -0.00001824     -0.09793319
 2222a20 222     -0.00000001      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 222a220 222     -0.00000000      0.00000000      0.00000001      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22220 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000      0.00000000
 22a2220 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000     -0.00000000
 2ab22a2 222      0.00000317      0.03914688     -0.00000094     -0.00000002     -0.00721062     -0.00000020     -0.00000073
 2a20222 222     -0.00000268     -0.01292025      0.00000113      0.00000001      0.02500608     -0.00000042      0.00000086
 202a222 222     -0.00000005      0.00000019     -0.00355169      0.00000000      0.00000073      0.02792171     -0.00000486
 222a202 222      0.00000068      0.00000008      0.01662528      0.00000002     -0.00000109     -0.02271203      0.00000371
 222baa2 222     -0.00000137     -0.01695111      0.00000041      0.00000001      0.00312230      0.00000009      0.00000032
 2220a22 222     -0.02603032      0.00000191      0.00000140      0.00000001     -0.00000217      0.00000199      0.01070783
 222aba2 222      0.00000137      0.01695111     -0.00000041     -0.00000001     -0.00312230     -0.00000009     -0.00000032
 2022a22 222     -0.01687541      0.00000083      0.00000037     -0.00000000     -0.00000060     -0.00000391     -0.02252679
 222a022 222      0.00000125      0.00000055      0.02614714      0.00000004     -0.00000072      0.01041933     -0.00000232
 2a22022 222      0.00000007      0.02098197      0.00000032     -0.00000001      0.01876148     -0.00000059      0.00000023
 220a222 222     -0.00000188     -0.00000082     -0.03922072     -0.00000005      0.00000108     -0.01562902      0.00000348
 2222a02 222      0.00386023      0.00000012      0.00000033      0.00000000     -0.00000048      0.00000491      0.02788073
 2202a22 222      0.03904550     -0.00000286     -0.00000211     -0.00000001      0.00000325     -0.00000299     -0.01606176
 22aa2b2 222      0.00000042     -0.00000006      0.01164918      0.00000001     -0.00000105     -0.02923340      0.00000495
 2baa222 222      0.01197174     -0.00000041     -0.00000002      0.00000000      0.00000007      0.00000509      0.02910279
 2ba2a22 222      0.00000042     -0.00000006      0.01164917      0.00000001     -0.00000105     -0.02923340      0.00000495
 22a2ab2 222     -0.01197172      0.00000041      0.00000002     -0.00000000     -0.00000007     -0.00000509     -0.02910280
 2aa22b2 222     -0.00000158     -0.01957344      0.00000047      0.00000001      0.00360531      0.00000010      0.00000036
 2ba22a2 222     -0.00000158     -0.01957344      0.00000047      0.00000001      0.00360531      0.00000010      0.00000036
 2aab222 222     -0.01725734      0.00000103      0.00000062      0.00000000     -0.00000097     -0.00000168     -0.00991476
 22ab2a2 222     -0.00000076     -0.00000021     -0.01714664     -0.00000002      0.00000084      0.01010499     -0.00000147
 2aa2b22 222      0.00000033      0.00000027      0.00549746      0.00000001      0.00000021      0.01912841     -0.00000348
 22a2ba2 222     -0.00528561      0.00000062      0.00000060      0.00000000     -0.00000090      0.00000341      0.01918803
 2a02222 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2a2b2a2 222      0.03904550     -0.00000286     -0.00000211     -0.00000001      0.00000325     -0.00000299     -0.01606176
 2a22ba2 222      0.00000188      0.00000082      0.03922072      0.00000005     -0.00000108      0.01562901     -0.00000348
 20a2222 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22a2202 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 22022a2 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22220a2 222     -0.00000000     -0.00000001      0.00000003     -0.02225191     -0.00000000      0.00000001      0.00000000
 22202a2 222     -0.00000000     -0.00000001      0.00000003     -0.02225191     -0.00000000      0.00000001      0.00000000
 
 Energy:       -109.35128631   -109.35128631   -109.35128631   -109.35128631   -109.35128631   -109.35128630   -109.35128630

 State:                8               9              10              11              12              13              14
 22a22ab 222     -0.00000005      0.00000000     -0.00000000     -0.00000000     -0.00000002     -0.00000000     -0.00000000
 2aa222b 222     -0.00000000      0.00000006      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222aa2b 222     -0.00000000     -0.00000003     -0.00000000      0.00000000      0.00000000      0.00000027     -0.00000907
 2a2a22b 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.34716889     -0.00000940
 222a2ab 222      0.00000000      0.00000000      0.00000002      0.00000000     -0.00000000      0.00000940     -0.34716887
 2a222ab 222      0.00000000      0.00000003      0.00000000     -0.00000000     -0.00000000      0.00000055     -0.00001814
 2222aab 222      0.00000000     -0.00000000      0.00000000     -0.00000003     -0.00000000      0.34716883      0.00000940
 2a22a2b 222      0.00000000     -0.00000000     -0.00000003     -0.00000000      0.00000000      0.00000940     -0.34716881
 22aa22b 222      0.00000000      0.00000000     -0.00000004     -0.00000000     -0.00000000     -0.00001628      0.60131395
 22a2a2b 222     -0.00000000      0.00000000     -0.00000000      0.00000004      0.00000000      0.60131393      0.00001628
 2ba222a 222      0.00000081     -0.51637615     -0.00001898      0.00003581     -0.00000021      0.00000000      0.00000000
 2ab222a 222     -0.00000081      0.51637609      0.00001898     -0.00003581      0.00000021     -0.00000000      0.00000000
 222202a 222      0.49944717      0.00000083     -0.00000046      0.00000073     -0.13113683     -0.00000000     -0.00000000
 220222a 222      0.13615575      0.00000042     -0.00000018      0.00000035     -0.49810239      0.00000000     -0.00000000
 22a22ba 222      0.49810234      0.00000072     -0.00000042      0.00000065      0.13615574     -0.00000000      0.00000000
 222220a 222     -0.13615569     -0.00000042      0.00000018     -0.00000035      0.49810231      0.00000000      0.00000000
 202222a 222     -0.13615573     -0.00000042      0.00000018     -0.00000035      0.49810230     -0.00000000      0.00000000
 22b22aa 222     -0.49810229     -0.00000072      0.00000042     -0.00000065     -0.13615572      0.00000000     -0.00000000
 222ba2a 222     -0.00000070      0.44719489      0.00001643     -0.00003102      0.00000018     -0.00000014      0.00000454
 222ab2a 222      0.00000070     -0.44719487     -0.00001643      0.00003102     -0.00000018     -0.00000014      0.00000454
 2222aba 222     -0.00000062      0.00003103     -0.00026308      0.44719479      0.00000014     -0.17358440     -0.00000470
 2b22a2a 222      0.00000039     -0.00001642      0.44719479      0.00026308     -0.00000005     -0.00000470      0.17358440
 222b2aa 222     -0.00000039      0.00001642     -0.44719476     -0.00026308      0.00000005     -0.00000470      0.17358439
 2a22b2a 222     -0.00000039      0.00001642     -0.44719476     -0.00026308      0.00000005     -0.00000470      0.17358440
 2222baa 222      0.00000062     -0.00003103      0.00026308     -0.44719475     -0.00000014     -0.17358443     -0.00000470
 2b2a22a 222      0.00000062     -0.00003103      0.00026308     -0.44719475     -0.00000014      0.17358446      0.00000470
 2a2b22a 222     -0.00000062      0.00003103     -0.00026308      0.44719475      0.00000014      0.17358443      0.00000470
 222a2ba 222      0.00000039     -0.00001642      0.44719474      0.00026308     -0.00000005     -0.00000470      0.17358448
 222022a 222     -0.36329144     -0.00000042      0.00000028     -0.00000039     -0.36696546     -0.00000000      0.00000000
 2a222ba 222     -0.00000000     -0.00000003     -0.00000000      0.00000000      0.00000000     -0.00000027      0.00000907
 2b222aa 222     -0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000     -0.00000027      0.00000907
 22a2b2a 222     -0.00000036      0.00001791     -0.00015189      0.25818804      0.00000008     -0.30065700     -0.00000814
 22ba22a 222      0.00000023     -0.00000948      0.25818809      0.00015189     -0.00000003      0.00000814     -0.30065699
 22ab22a 222     -0.00000023      0.00000948     -0.25818805     -0.00015189      0.00000003      0.00000814     -0.30065696
 22b2a2a 222      0.00000036     -0.00001791      0.00015189     -0.25818808     -0.00000008     -0.30065693     -0.00000814
 2222a20 222      0.00000030     -0.00001503      0.00012746     -0.21665279     -0.00000007      0.00000001      0.00000000
 222a220 222      0.00000019     -0.00000795      0.21665274      0.00012746     -0.00000003     -0.00000000      0.00000002
 2a22220 222     -0.00000034      0.21665274      0.00000796     -0.00001503      0.00000009     -0.00000000     -0.00000000
 22a2220 222      0.05712603      0.00000017     -0.00000008      0.00000015     -0.20898580      0.00000000      0.00000000
 22222a0 222      0.20898571      0.00000030     -0.00000018      0.00000027      0.05712603     -0.00000000     -0.00000000
 2ab22a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000013      0.00000443
 2a20222 222      0.00000008     -0.05036882     -0.00000185      0.00000349     -0.00000002     -0.00000009      0.00000288
 202a222 222     -0.00000004      0.00000185     -0.05036882     -0.00002963      0.00000001     -0.00000298      0.11016922
 222a202 222     -0.00000004      0.00000185     -0.05036882     -0.00002963      0.00000001     -0.00000298      0.11016921
 222baa2 222     -0.00000004      0.02391230      0.00000088     -0.00000166      0.00000001     -0.00000009      0.00000288
 2220a22 222     -0.00000007      0.00000349     -0.00002963      0.05036881      0.00000002     -0.11016921     -0.00000298
 222aba2 222     -0.00000004      0.02391230      0.00000088     -0.00000166      0.00000001      0.00000009     -0.00000288
 2022a22 222     -0.00000007      0.00000349     -0.00002963      0.05036882      0.00000002      0.11016921      0.00000298
 222a022 222     -0.00000004      0.00000185     -0.05036880     -0.00002963      0.00000001      0.00000298     -0.11016920
 2a22022 222      0.00000008     -0.05036881     -0.00000185      0.00000349     -0.00000002      0.00000009     -0.00000288
 220a222 222     -0.00000000      0.00000009     -0.00254421     -0.00000150      0.00000000      0.00000298     -0.11016920
 2222a02 222     -0.00000007      0.00000349     -0.00002963      0.05036882      0.00000002      0.11016920      0.00000298
 2202a22 222     -0.00000000      0.00000018     -0.00000150      0.00254421      0.00000000     -0.11016918     -0.00000298
 22aa2b2 222      0.00000004     -0.00000152      0.04141731      0.00002437     -0.00000001     -0.00000287      0.10601038
 2baa222 222     -0.00000006      0.00000287     -0.00002437      0.04141732      0.00000001     -0.10601038     -0.00000287
 2ba2a22 222     -0.00000004      0.00000152     -0.04141731     -0.00002437      0.00000001      0.00000287     -0.10601036
 22a2ab2 222     -0.00000006      0.00000287     -0.00002437      0.04141731      0.00000001     -0.10601036     -0.00000287
 2aa22b2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000007     -0.00000222
 2ba22a2 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000007     -0.00000222
 2aab222 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.08480830      0.00000230
 22ab2a2 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000230     -0.08480830
 2aa2b22 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000230      0.08480829
 22a2ba2 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.08480828      0.00000230
 2a02222 222      0.00000012     -0.07428111     -0.00000273      0.00000515     -0.00000003      0.00000000     -0.00000000
 2a2b2a2 222     -0.00000007      0.00000332     -0.00002813      0.04782460      0.00000002      0.07344615      0.00000199
 2a22ba2 222      0.00000004     -0.00000176      0.04782459      0.00002814     -0.00000001      0.00000199     -0.07344614
 20a2222 222     -0.01958612     -0.00000006      0.00000003     -0.00000005      0.07165243     -0.00000000     -0.00000000
 22a2202 222     -0.01958611     -0.00000006      0.00000003     -0.00000005      0.07165243      0.00000000     -0.00000000
 22022a2 222     -0.07165241     -0.00000010      0.00000006     -0.00000009     -0.01958611      0.00000000      0.00000000
 22220a2 222     -0.05950706     -0.00000010      0.00000006     -0.00000009      0.02667060      0.00000000      0.00000000
 22202a2 222     -0.03766561     -0.00000004      0.00000003     -0.00000004     -0.05323265     -0.00000000      0.00000000
 
 Energy:       -109.33358914   -109.33358914   -109.33358914   -109.33358914   -109.33358914   -109.30595077   -109.30595076

 State:               15
 22a22ab 222      0.00000000
 2aa222b 222      0.00000003
 222aa2b 222      0.34716870
 2a2a22b 222      0.00000027
 222a2ab 222     -0.00000907
 2a222ab 222      0.69433764
 2222aab 222     -0.00000027
 2a22a2b 222     -0.00000907
 22aa22b 222      0.00001571
 22a2a2b 222     -0.00000047
 2ba222a 222      0.00000001
 2ab222a 222     -0.00000004
 222202a 222      0.00000000
 220222a 222     -0.00000000
 22a22ba 222     -0.00000000
 222220a 222     -0.00000000
 202222a 222      0.00000000
 22b22aa 222      0.00000000
 222ba2a 222     -0.17358433
 222ab2a 222     -0.17358436
 2222aba 222      0.00000014
 2b22a2a 222      0.00000454
 222b2aa 222      0.00000454
 2a22b2a 222      0.00000454
 2222baa 222      0.00000014
 2b2a22a 222     -0.00000014
 2a2b22a 222     -0.00000014
 222a2ba 222      0.00000454
 222022a 222     -0.00000000
 2a222ba 222     -0.34716883
 2b222aa 222     -0.34716881
 22a2b2a 222      0.00000024
 22ba22a 222     -0.00000786
 22ab22a 222     -0.00000786
 22b2a2a 222      0.00000024
 2222a20 222     -0.00000000
 222a220 222      0.00000000
 2a22220 222     -0.00000001
 22a2220 222     -0.00000000
 22222a0 222     -0.00000000
 2ab22a2 222     -0.16961662
 2a20222 222     -0.11016923
 202a222 222      0.00000288
 222a202 222      0.00000288
 222baa2 222     -0.11016921
 2220a22 222      0.00000009
 222aba2 222      0.11016921
 2022a22 222     -0.00000009
 222a022 222     -0.00000288
 2a22022 222      0.11016920
 220a222 222     -0.00000288
 2222a02 222     -0.00000009
 2202a22 222      0.00000009
 22aa2b2 222      0.00000277
 2baa222 222      0.00000008
 2ba2a22 222     -0.00000277
 22a2ab2 222      0.00000008
 2aa22b2 222      0.08480831
 2ba22a2 222      0.08480831
 2aab222 222     -0.00000007
 22ab2a2 222     -0.00000222
 2aa2b22 222      0.00000222
 22a2ba2 222     -0.00000007
 2a02222 222      0.00000001
 2a2b2a2 222     -0.00000006
 2a22ba2 222     -0.00000192
 20a2222 222      0.00000000
 22a2202 222      0.00000000
 22022a2 222      0.00000000
 22220a2 222     -0.00000000
 22202a2 222      0.00000000
 
 Energy:       -109.30595075
 


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       4        0.52       700     1000      520     2140   
                                         GEOM     BASIS   MCVARS    MCSCF   

 PROGRAMS   *        TOTAL     MULTI       INT
 CPU TIMES  *         3.46      2.75      0.51
 REAL TIME  *         4.44 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.13 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3811954   12.0
    -109.3276258    2.0
    -109.3276258    2.0
    -109.3276258    2.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.2838533   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3512863   12.0
    -109.3335891    6.0
    -109.3335891    6.0
    -109.3335891    6.0
    -109.3335891    6.0
    -109.3335891    6.0
    -109.3059508    2.0
    -109.3059508    2.0
    -109.3059508    2.0
                                                  


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
 Smallest eigenvalue of S: -0.5442382E-15. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S:  0.1520662E-16. Vector removed
 Internal expansion vectors linearly dependent.
 Smallest eigenvalue of S: -0.1402006E-15. Vector removed

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.38119541
     2      -109.38119541
     3      -109.38119541
     4      -109.38119541
     5      -109.38119541
     6      -109.38119541
     7      -109.38119541
     8      -109.32762584
     9      -109.32762584
    10      -109.32762583
    11      -109.28385333
    12      -109.28385332
    13      -109.28385332
    14      -109.28385332
    15      -109.28385332
    16      -109.28385332
    17      -109.28385332

 Number of blocks in overlap matrix:    47   Smallest eigenvalue:  0.11D-03
 Number of N-2 electron functions:    1575
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       2985228
 Total number of contracted configurations:      3037340
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    932760 words, CPU-Time:      0.36 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    564595 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38119541    -0.00000000    -0.66974413  0.24D-01  0.99D-01     3.04
    1     2     2     1.00000000     0.00000000  -109.38119541     0.00000000    -0.67104924  0.24D-01  0.99D-01     3.04
    1     3     3     1.00000000     0.00000000  -109.38119541    -0.00000000    -0.67041190  0.24D-01  0.99D-01     3.04
    1     4     4     1.00000000     0.00000000  -109.38119541    -0.00000000    -0.67287028  0.25D-01  0.10D+00     3.04
    1     5     5     1.00000000     0.00000000  -109.38119541     0.00000000    -0.67199894  0.24D-01  0.10D+00     3.04
    1     6     6     1.00000000     0.00000000  -109.38119541     0.00000000    -0.67094570  0.24D-01  0.99D-01     3.04
    1     7     7     1.00000000     0.00000000  -109.38119541    -0.00000000    -0.66991681  0.24D-01  0.99D-01     3.04
    1     8     8     1.00000000     0.00000000  -109.32762584    -0.00000000    -0.68174589  0.29D-01  0.10D+00     3.04
    1     9     9     1.00000000     0.00000000  -109.32762584    -0.00000000    -0.68184073  0.29D-01  0.10D+00     3.04
    1    10    10     1.00000000     0.00000000  -109.32762583     0.00000000    -0.68196721  0.29D-01  0.10D+00     3.04
    1    11    11     1.00000000     0.00000000  -109.28385333     0.00000000    -0.70679442  0.93D-01  0.86D-01     3.04
    1    12    12     1.00000000     0.00000000  -109.28385332     0.00000000    -0.70528106  0.93D-01  0.85D-01     3.04
    1    13    13     1.00000000     0.00000000  -109.28385332     0.00000000    -0.70575591  0.93D-01  0.85D-01     3.04
    1    14    14     1.00000000     0.00000000  -109.28385332     0.00000000    -0.70765811  0.95D-01  0.85D-01     3.04
    1    15    15     1.00000000     0.00000000  -109.28385332     0.00000000    -0.70899110  0.95D-01  0.86D-01     3.04
    1    16    16     1.00000000     0.00000000  -109.28385332     0.00000000    -0.70546782  0.93D-01  0.85D-01     3.04
    1    17    17     1.00000000     0.00000000  -109.28385332    -0.00000000    -0.70759446  0.93D-01  0.86D-01     3.04
    2     1     1     1.08663627    -0.56166901  -109.94286442    -0.56166901    -0.01870522  0.12D-02  0.26D-02   160.25
    2     2     2     1.08656620    -0.56142724  -109.94262265    -0.56142724    -0.01879028  0.12D-02  0.26D-02   160.25
    2     3     3     1.08647959    -0.56117197  -109.94236739    -0.56117197    -0.01882358  0.12D-02  0.26D-02   160.25
    2     4     4     1.08645817    -0.56114342  -109.94233883    -0.56114342    -0.01881064  0.11D-02  0.26D-02   160.25
    2     5     5     1.08638021    -0.56084589  -109.94204130    -0.56084589    -0.01891841  0.12D-02  0.26D-02   160.25
    2     6     6     1.08636421    -0.56078003  -109.94197544    -0.56078003    -0.01893627  0.12D-02  0.26D-02   160.25
    2     7     7     1.08633673    -0.56070649  -109.94190190    -0.56070649    -0.01894436  0.12D-02  0.26D-02   160.25
    2     8     8     1.09169525    -0.57133577  -109.89896161    -0.57133577    -0.01837538  0.13D-02  0.27D-02   160.25
    2     9     9     1.09170159    -0.57127172  -109.89889756    -0.57127172    -0.01842820  0.13D-02  0.27D-02   160.25
    2    10    10     1.09168046    -0.57123754  -109.89886337    -0.57123754    -0.01841269  0.13D-02  0.27D-02   160.25
    2    11    11     1.11690022    -0.57173148  -109.85558480    -0.57173148    -0.03163872  0.49D-02  0.38D-02   160.25
    2    12    12     1.11674016    -0.57168571  -109.85553903    -0.57168571    -0.03156647  0.48D-02  0.38D-02   160.25
    2    13    13     1.11769587    -0.57128406  -109.85513738    -0.57128406    -0.03229579  0.52D-02  0.38D-02   160.25
    2    14    14     1.11679869    -0.57118333  -109.85503665    -0.57118333    -0.03183244  0.49D-02  0.38D-02   160.25
    2    15    15     1.11670169    -0.57106911  -109.85492243    -0.57106911    -0.03183222  0.48D-02  0.38D-02   160.25
    2    16    16     1.11674278    -0.57076094  -109.85461425    -0.57076094    -0.03195959  0.49D-02  0.38D-02   160.25
    2    17    17     1.11723598    -0.57067738  -109.85453069    -0.57067738    -0.03224865  0.52D-02  0.38D-02   160.25
    3     1     1     1.08444081    -0.58173195  -109.96292737    -0.02006295    -0.00135163  0.37D-04  0.22D-03   320.18
    3     2     2     1.08437602    -0.58167766  -109.96287307    -0.02025042    -0.00138368  0.38D-04  0.22D-03   320.18
    3     3     3     1.08425520    -0.58155362  -109.96274904    -0.02038165    -0.00143270  0.39D-04  0.22D-03   320.18
    3     4     4     1.08422788    -0.58152412  -109.96271954    -0.02038070    -0.00143867  0.39D-04  0.22D-03   320.18
    3     5     5     1.08414730    -0.58143516  -109.96263058    -0.02058928    -0.00148452  0.41D-04  0.23D-03   320.18
    3     6     6     1.08413366    -0.58142125  -109.96261665    -0.02064121    -0.00149401  0.41D-04  0.23D-03   320.18
    3     7     7     1.08409790    -0.58137332  -109.96256873    -0.02066684    -0.00150897  0.41D-04  0.23D-03   320.18
    3     8     8     1.08845143    -0.59131413  -109.91893997    -0.01997836    -0.00139565  0.53D-04  0.22D-03   320.18
    3     9     9     1.08846063    -0.59131395  -109.91893978    -0.02004223    -0.00140279  0.54D-04  0.22D-03   320.18
    3    10    10     1.08842728    -0.59127766  -109.91890350    -0.02004012    -0.00141186  0.54D-04  0.22D-03   320.18
    3    11    11     1.10325326    -0.60246140  -109.88631472    -0.03072992    -0.00274723  0.18D-03  0.47D-03   320.18
    3    12    12     1.10309736    -0.60237722  -109.88623054    -0.03069151    -0.00276313  0.18D-03  0.47D-03   320.18
    3    13    13     1.10321968    -0.60229532  -109.88614864    -0.03101126    -0.00273614  0.17D-03  0.46D-03   320.18
    3    14    14     1.10293050    -0.60218702  -109.88604034    -0.03100369    -0.00287180  0.19D-03  0.48D-03   320.18
    3    15    15     1.10282397    -0.60213425  -109.88598757    -0.03106514    -0.00281453  0.18D-03  0.47D-03   320.18
    3    16    16     1.10265872    -0.60191480  -109.88576812    -0.03115387    -0.00289464  0.19D-03  0.47D-03   320.18
    3    17    17     1.10255663    -0.60176116  -109.88561448    -0.03108378    -0.00283841  0.18D-03  0.47D-03   320.18
    4     1     1     1.08789155    -0.58372658  -109.96492200    -0.00199463    -0.00022356  0.88D-05  0.34D-04   477.67
    4     2     2     1.08788462    -0.58372487  -109.96492028    -0.00204721    -0.00022423  0.86D-05  0.35D-04   477.67
    4     3     3     1.08784898    -0.58369445  -109.96488986    -0.00214082    -0.00023612  0.91D-05  0.36D-04   477.67
    4     4     4     1.08783111    -0.58368327  -109.96487868    -0.00215915    -0.00024095  0.93D-05  0.36D-04   477.67
    4     5     5     1.08781232    -0.58367148  -109.96486689    -0.00223631    -0.00024455  0.96D-05  0.36D-04   477.67
    4     6     6     1.08781149    -0.58367082  -109.96486623    -0.00224957    -0.00024580  0.95D-05  0.36D-04   477.67
    4     7     7     1.08778784    -0.58365438  -109.96484979    -0.00228106    -0.00025266  0.97D-05  0.37D-04   477.67
    4     8     8     1.09183866    -0.59341829  -109.92104413    -0.00210416    -0.00023557  0.13D-04  0.36D-04   477.67
    4     9     9     1.09183635    -0.59341325  -109.92103909    -0.00209931    -0.00023692  0.13D-04  0.36D-04   477.67
    4    10    10     1.09181039    -0.59340003  -109.92102587    -0.00212237    -0.00024480  0.13D-04  0.37D-04   477.67
    4    11    11     1.11002575    -0.60660273  -109.89045606    -0.00414133    -0.00061601  0.53D-04  0.88D-04   477.67
    4    12    12     1.10990408    -0.60655397  -109.89040729    -0.00417675    -0.00063898  0.54D-04  0.92D-04   477.67
    4    13    13     1.10989767    -0.60652990  -109.89038322    -0.00423458    -0.00065147  0.55D-04  0.92D-04   477.67
    4    14    14     1.10966223    -0.60643009  -109.89028341    -0.00424307    -0.00066912  0.54D-04  0.97D-04   477.67
    4    15    15     1.10967493    -0.60641785  -109.89027117    -0.00428360    -0.00067374  0.57D-04  0.96D-04   477.67
    4    16    16     1.10959213    -0.60636086  -109.89021417    -0.00444605    -0.00069944  0.59D-04  0.98D-04   477.67
    4    17    17     1.10917913    -0.60618046  -109.89003378    -0.00441930    -0.00075519  0.62D-04  0.10D-03   477.67
    5     1     1     1.08908317    -0.58402328  -109.96521869    -0.00029670    -0.00004834  0.10D-05  0.87D-05   635.97
    5     2     2     1.08908771    -0.58402124  -109.96521665    -0.00029637    -0.00004910  0.98D-06  0.89D-05   635.97
    5     3     3     1.08905743    -0.58401130  -109.96520672    -0.00031685    -0.00005243  0.11D-05  0.92D-05   635.97
    5     4     4     1.08904608    -0.58400649  -109.96520191    -0.00032322    -0.00005495  0.11D-05  0.97D-05   635.97
    5     5     5     1.08903768    -0.58400398  -109.96519939    -0.00033251    -0.00005497  0.12D-05  0.94D-05   635.97
    5     6     6     1.08903637    -0.58400334  -109.96519875    -0.00033252    -0.00005548  0.12D-05  0.96D-05   635.97
    5     7     7     1.08901932    -0.58399667  -109.96519208    -0.00034229    -0.00005874  0.12D-05  0.10D-04   635.97
    5     8     8     1.09308188    -0.59373598  -109.92136182    -0.00031769    -0.00005417  0.32D-05  0.94D-05   635.97
    5     9     9     1.09307142    -0.59373231  -109.92135814    -0.00031905    -0.00005639  0.30D-05  0.99D-05   635.97
    5    10    10     1.09305086    -0.59372536  -109.92135120    -0.00032533    -0.00006088  0.30D-05  0.11D-04   635.97
    5    11    11     1.11275335    -0.60746857  -109.89132190    -0.00086584    -0.00012066  0.66D-05  0.18D-04   635.97
    5    12    12     1.11269595    -0.60744653  -109.89129985    -0.00089256    -0.00013782  0.69D-05  0.23D-04   635.97
    5    13    13     1.11264653    -0.60743350  -109.89128682    -0.00090360    -0.00014224  0.71D-05  0.23D-04   635.97
    5    14    14     1.11263034    -0.60740175  -109.89125507    -0.00097166    -0.00015354  0.79D-05  0.24D-04   635.97
    5    15    15     1.11259894    -0.60739569  -109.89124901    -0.00097784    -0.00015185  0.78D-05  0.23D-04   635.97
    5    16    16     1.11253547    -0.60737772  -109.89123103    -0.00101686    -0.00015815  0.83D-05  0.23D-04   635.97
    5    17    17     1.11244310    -0.60731898  -109.89117230    -0.00113852    -0.00018412  0.10D-04  0.26D-04   635.97
    6     1     1     1.08908027    -0.58409048  -109.96528589    -0.00006720    -0.00001419  0.51D-06  0.24D-05   794.43
    6     2     2     1.08908327    -0.58408912  -109.96528454    -0.00006789    -0.00001490  0.54D-06  0.25D-05   794.43
    6     3     3     1.08904816    -0.58408665  -109.96528206    -0.00007534    -0.00001535  0.57D-06  0.24D-05   794.43
    6     4     4     1.08902488    -0.58408549  -109.96528090    -0.00007899    -0.00001528  0.58D-06  0.23D-05   794.43
    6     5     5     1.08902400    -0.58408422  -109.96527963    -0.00008024    -0.00001637  0.61D-06  0.25D-05   794.43
    6     6     6     1.08903404    -0.58408376  -109.96527917    -0.00008042    -0.00001745  0.61D-06  0.28D-05   794.43
    6     7     7     1.08900830    -0.58408125  -109.96527666    -0.00008458    -0.00001826  0.65D-06  0.29D-05   794.43
    6     8     8     1.09304059    -0.59381432  -109.92144016    -0.00007834    -0.00001658  0.82D-06  0.26D-05   794.43
    6     9     9     1.09303804    -0.59381161  -109.92143745    -0.00007931    -0.00001841  0.82D-06  0.30D-05   794.43
    6    10    10     1.09302914    -0.59380743  -109.92143326    -0.00008206    -0.00002117  0.93D-06  0.35D-05   794.43
    6    11    11     1.11261047    -0.60763681  -109.89149014    -0.00016824    -0.00003454  0.39D-05  0.49D-05   794.43
    6    12    12     1.11256174    -0.60762012  -109.89147344    -0.00017358    -0.00004804  0.37D-05  0.84D-05   794.43
    6    13    13     1.11247911    -0.60761880  -109.89147213    -0.00018530    -0.00004482  0.47D-05  0.67D-05   794.43
    6    14    14     1.11237722    -0.60760801  -109.89146133    -0.00020626    -0.00004902  0.54D-05  0.69D-05   794.43
    6    15    15     1.11230862    -0.60760345  -109.89145677    -0.00020776    -0.00005067  0.58D-05  0.69D-05   794.43
    6    16    16     1.11245274    -0.60760344  -109.89145676    -0.00022572    -0.00005564  0.46D-05  0.94D-05   794.43
    6    17    17     1.11212321    -0.60758094  -109.89143426    -0.00026196    -0.00005945  0.76D-05  0.76D-05   794.43
    7     1     1     1.08922555    -0.58410675  -109.96530217    -0.00001627    -0.00000428  0.15D-06  0.75D-06   950.63
    7     2     2     1.08921560    -0.58410603  -109.96530145    -0.00001691    -0.00000464  0.13D-06  0.84D-06   950.63
    7     3     3     1.08922160    -0.58410533  -109.96530074    -0.00001868    -0.00000486  0.21D-06  0.81D-06   950.63
    7     4     4     1.08922673    -0.58410518  -109.96530059    -0.00001969    -0.00000491  0.25D-06  0.76D-06   950.63
    7     5     5     1.08920743    -0.58410439  -109.96529980    -0.00002017    -0.00000534  0.22D-06  0.89D-06   950.63
    7     6     6     1.08919170    -0.58410395  -109.96529936    -0.00002020    -0.00000560  0.18D-06  0.98D-06   950.63
    7     7     7     1.08918681    -0.58410309  -109.96529850    -0.00002184    -0.00000598  0.22D-06  0.10D-05   950.63
    7     8     8     1.09325070    -0.59383435  -109.92146019    -0.00002003    -0.00000532  0.32D-06  0.91D-06   950.63
    7     9     9     1.09322673    -0.59383315  -109.92145899    -0.00002154    -0.00000584  0.34D-06  0.10D-05   950.63
    7    10    10     1.09319316    -0.59383133  -109.92145717    -0.00002391    -0.00000663  0.40D-06  0.12D-05   950.63
    7    11    11     1.11333788    -0.60767791  -109.89153124    -0.00004110    -0.00000951  0.12D-05  0.14D-05   950.63
    7    12    12     1.11322775    -0.60767069  -109.89152401    -0.00005057    -0.00001288  0.14D-05  0.19D-05   950.63
    7    13    13     1.11313723    -0.60767026  -109.89152359    -0.00005146    -0.00001356  0.81D-06  0.23D-05   950.63
    7    14    14     1.11317451    -0.60766542  -109.89151874    -0.00005741    -0.00001537  0.15D-05  0.23D-05   950.63
    7    15    15     1.11318485    -0.60766450  -109.89151782    -0.00006105    -0.00001557  0.19D-05  0.22D-05   950.63
    7    16    16     1.11309077    -0.60766389  -109.89151720    -0.00006045    -0.00001592  0.12D-05  0.25D-05   950.63
    7    17    17     1.11311073    -0.60765420  -109.89150752    -0.00007326    -0.00001983  0.26D-05  0.26D-05   950.63
    8     1     1     1.08935729    -0.58411194  -109.96530736    -0.00000519    -0.00000131  0.31D-07  0.24D-06  1108.94
    8     2     2     1.08935431    -0.58411165  -109.96530707    -0.00000562    -0.00000144  0.36D-07  0.26D-06  1108.94
    8     3     3     1.08935422    -0.58411134  -109.96530675    -0.00000601    -0.00000158  0.35D-07  0.28D-06  1108.94
    8     4     4     1.08935283    -0.58411128  -109.96530669    -0.00000610    -0.00000163  0.32D-07  0.29D-06  1108.94
    8     5     5     1.08934836    -0.58411096  -109.96530637    -0.00000657    -0.00000176  0.38D-07  0.31D-06  1108.94
    8     6     6     1.08934428    -0.58411081  -109.96530622    -0.00000685    -0.00000183  0.40D-07  0.32D-06  1108.94
    8     7     7     1.08934028    -0.58411044  -109.96530585    -0.00000736    -0.00000200  0.43D-07  0.35D-06  1108.94
    8     8     8     1.09339827    -0.59384093  -109.92146677    -0.00000659    -0.00000178  0.11D-06  0.31D-06  1108.94
    8     9     9     1.09339241    -0.59384052  -109.92146636    -0.00000737    -0.00000197  0.13D-06  0.34D-06  1108.94
    8    10    10     1.09338178    -0.59383982  -109.92146565    -0.00000848    -0.00000233  0.17D-06  0.40D-06  1108.94
    8    11    11     1.11351052    -0.60768970  -109.89154303    -0.00001179    -0.00000266  0.20D-06  0.41D-06  1108.94
    8    12    12     1.11346969    -0.60768710  -109.89154042    -0.00001641    -0.00000386  0.31D-06  0.57D-06  1108.94
    8    13    13     1.11349405    -0.60768700  -109.89154032    -0.00001673    -0.00000401  0.36D-06  0.61D-06  1108.94
    8    14    14     1.11344312    -0.60768470  -109.89153802    -0.00001928    -0.00000503  0.36D-06  0.75D-06  1108.94
    8    15    15     1.11341798    -0.60768458  -109.89153790    -0.00002007    -0.00000498  0.38D-06  0.71D-06  1108.94
    8    16    16     1.11345341    -0.60768455  -109.89153787    -0.00002066    -0.00000509  0.42D-06  0.77D-06  1108.94
    8    17    17     1.11336263    -0.60768050  -109.89153382    -0.00002630    -0.00000685  0.55D-06  0.92D-06  1108.94
    9     1     1     1.08937280    -0.58411363  -109.96530905    -0.00000169    -0.00000047  0.17D-07  0.83D-07  1266.00
    9     2     2     1.08937149    -0.58411351  -109.96530893    -0.00000186    -0.00000053  0.19D-07  0.94D-07  1266.00
    9     3     3     1.08936518    -0.58411339  -109.96530880    -0.00000205    -0.00000057  0.23D-07  0.96D-07  1266.00
    9     4     4     1.08936119    -0.58411338  -109.96530879    -0.00000210    -0.00000056  0.27D-07  0.89D-07  1266.00
    9     5     5     1.08936050    -0.58411325  -109.96530866    -0.00000229    -0.00000064  0.27D-07  0.11D-06  1266.00
    9     6     6     1.08936041    -0.58411317  -109.96530858    -0.00000237    -0.00000071  0.25D-07  0.12D-06  1266.00
    9     7     7     1.08935424    -0.58411303  -109.96530844    -0.00000259    -0.00000076  0.30D-07  0.13D-06  1266.00
    9     8     8     1.09339405    -0.59384324  -109.92146908    -0.00000231    -0.00000067  0.52D-07  0.11D-06  1266.00
    9     9     9     1.09339068    -0.59384306  -109.92146890    -0.00000254    -0.00000079  0.46D-07  0.13D-06  1266.00
    9    10    10     1.09338678    -0.59384273  -109.92146857    -0.00000292    -0.00000100  0.41D-07  0.18D-06  1266.00
    9    11    11     1.11356610    -0.60769323  -109.89154656    -0.00000353    -0.00000089  0.86D-07  0.14D-06  1266.00
    9    12    12     1.11352198    -0.60769228  -109.89154560    -0.00000518    -0.00000140  0.13D-06  0.22D-06  1266.00
    9    13    13     1.11351771    -0.60769220  -109.89154553    -0.00000520    -0.00000155  0.14D-06  0.27D-06  1266.00
    9    14    14     1.11347918    -0.60769133  -109.89154466    -0.00000663    -0.00000185  0.18D-06  0.27D-06  1266.00
    9    15    15     1.11347678    -0.60769129  -109.89154461    -0.00000672    -0.00000189  0.21D-06  0.28D-06  1266.00
    9    16    16     1.11349429    -0.60769113  -109.89154445    -0.00000658    -0.00000217  0.14D-06  0.39D-06  1266.00
    9    17    17     1.11341498    -0.60768978  -109.89154309    -0.00000928    -0.00000253  0.28D-06  0.33D-06  1266.00
   10     1     1     1.08938815    -0.58411416  -109.96530957    -0.00000052    -0.00000017  0.37D-08  0.32D-07  1424.19
   10     2     2     1.08938540    -0.58411410  -109.96530952    -0.00000059    -0.00000020  0.24D-08  0.40D-07  1424.19
   10     3     3     1.08938410    -0.58411408  -109.96530949    -0.00000069    -0.00000020  0.84D-08  0.33D-07  1424.19
   10     4     4     1.08938408    -0.58411406  -109.96530947    -0.00000068    -0.00000021  0.61D-08  0.38D-07  1424.19
   10     5     5     1.08938032    -0.58411401  -109.96530942    -0.00000076    -0.00000025  0.54D-08  0.45D-07  1424.19
   10     6     6     1.08937743    -0.58411396  -109.96530937    -0.00000079    -0.00000027  0.47D-08  0.51D-07  1424.19
   10     7     7     1.08937448    -0.58411391  -109.96530932    -0.00000088    -0.00000029  0.65D-08  0.53D-07  1424.19
   10     8     8     1.09341952    -0.59384402  -109.92146987    -0.00000079    -0.00000026  0.77D-08  0.48D-07  1424.19
   10     9     9     1.09341324    -0.59384394  -109.92146978    -0.00000088    -0.00000030  0.81D-08  0.58D-07  1424.19
   10    10    10     1.09340357    -0.59384378  -109.92146962    -0.00000105    -0.00000038  0.12D-07  0.75D-07  1424.19
   10    11    11     1.11368034    -0.60769428  -109.89154760    -0.00000105    -0.00000028  0.38D-07  0.42D-07  1424.19
   10    12    12     1.11365692    -0.60769390  -109.89154722    -0.00000161    -0.00000047  0.57D-07  0.75D-07  1424.19
   10    13    13     1.11363122    -0.60769382  -109.89154715    -0.00000162    -0.00000056  0.23D-07  0.11D-06  1424.19
   10    14    14     1.11364119    -0.60769352  -109.89154684    -0.00000219    -0.00000065  0.83D-07  0.97D-07  1424.19
   10    15    15     1.11363927    -0.60769352  -109.89154684    -0.00000222    -0.00000065  0.77D-07  0.97D-07  1424.19
   10    16    16     1.11360622    -0.60769331  -109.89154663    -0.00000218    -0.00000079  0.36D-07  0.15D-06  1424.19
   10    17    17     1.11362052    -0.60769285  -109.89154617    -0.00000307    -0.00000094  0.14D-06  0.13D-06  1424.19
   11     1     1     1.08940617    -0.58411435  -109.96530976    -0.00000019    -0.00000006  0.18D-08  0.12D-07  1581.03
   11     2     2     1.08940443    -0.58411432  -109.96530974    -0.00000022    -0.00000008  0.22D-08  0.15D-07  1581.03
   11     3     3     1.08940499    -0.58411432  -109.96530974    -0.00000025    -0.00000008  0.18D-08  0.14D-07  1581.03
   11     4     4     1.08940496    -0.58411431  -109.96530972    -0.00000025    -0.00000008  0.25D-08  0.14D-07  1581.03
   11     5     5     1.08940227    -0.58411428  -109.96530970    -0.00000028    -0.00000010  0.26D-08  0.18D-07  1581.03
   11     6     6     1.08940051    -0.58411426  -109.96530967    -0.00000030    -0.00000011  0.27D-08  0.20D-07  1581.03
   11     7     7     1.08939923    -0.58411425  -109.96530966    -0.00000034    -0.00000012  0.31D-08  0.21D-07  1581.03
   11     8     8     1.09344424    -0.59384432  -109.92147016    -0.00000029    -0.00000010  0.72D-08  0.18D-07  1581.03
   11     9     9     1.09344154    -0.59384428  -109.92147012    -0.00000034    -0.00000012  0.95D-08  0.21D-07  1581.03
   11    10    10     1.09343674    -0.59384422  -109.92147005    -0.00000043    -0.00000016  0.14D-07  0.27D-07  1581.03
   11    11    11     1.11369500    -0.60769461  -109.89154794    -0.00000033    -0.00000009  0.71D-08  0.14D-07  1581.03
   11    12    12     1.11368043    -0.60769446  -109.89154779    -0.00000057    -0.00000016  0.13D-07  0.24D-07  1581.03
   11    13    13     1.11368629    -0.60769440  -109.89154773    -0.00000058    -0.00000020  0.16D-07  0.35D-07  1581.03
   11    14    14     1.11366776    -0.60769431  -109.89154764    -0.00000079    -0.00000023  0.19D-07  0.34D-07  1581.03
   11    15    15     1.11367101    -0.60769431  -109.89154763    -0.00000079    -0.00000024  0.15D-07  0.40D-07  1581.03
   11    16    16     1.11367793    -0.60769419  -109.89154751    -0.00000088    -0.00000029  0.24D-07  0.49D-07  1581.03
   11    17    17     1.11364602    -0.60769405  -109.89154736    -0.00000120    -0.00000035  0.32D-07  0.47D-07  1581.03
   12     1     1     1.08941280    -0.58411442  -109.96530984    -0.00000007    -0.00000003  0.51D-09  0.50D-08  1738.17
   12     2     2     1.08941197    -0.58411441  -109.96530982    -0.00000009    -0.00000003  0.54D-09  0.63D-08  1738.17
   12     3     3     1.08941054    -0.58411441  -109.96530982    -0.00000009    -0.00000003  0.97D-09  0.55D-08  1738.17
   12     4     4     1.08941093    -0.58411441  -109.96530982    -0.00000010    -0.00000003  0.86D-09  0.61D-08  1738.17
   12     5     5     1.08940953    -0.58411439  -109.96530981    -0.00000011    -0.00000004  0.95D-09  0.77D-08  1738.17
   12     6     6     1.08940886    -0.58411439  -109.96530980    -0.00000012    -0.00000005  0.79D-09  0.90D-08  1738.17
   12     7     7     1.08940744    -0.58411438  -109.96530979    -0.00000013    -0.00000005  0.10D-08  0.97D-08  1738.17
   12     8     8     1.09344826    -0.59384444  -109.92147028    -0.00000012    -0.00000004  0.23D-08  0.77D-08  1738.17
   12     9     9     1.09344671    -0.59384442  -109.92147026    -0.00000014    -0.00000005  0.20D-08  0.97D-08  1738.17
   12    10    10     1.09344452    -0.59384440  -109.92147023    -0.00000018    -0.00000007  0.13D-08  0.14D-07  1738.17
   12    11    11     1.11370961    -0.60769472  -109.89154805    -0.00000011    -0.00000003  0.24D-08  0.52D-08  1738.17
   12    12    12     1.11369694    -0.60769467  -109.89154799    -0.00000021    -0.00000006  0.50D-08  0.93D-08  1738.17
   12    13    13     1.11369077    -0.60769464  -109.89154796    -0.00000023    -0.00000008  0.65D-08  0.14D-07  1738.17
   12    14    14     1.11368595    -0.60769461  -109.89154793    -0.00000030    -0.00000009  0.75D-08  0.15D-07  1738.17
   12    15    15     1.11368344    -0.60769459  -109.89154791    -0.00000028    -0.00000010  0.76D-08  0.19D-07  1738.17
   12    16    16     1.11368368    -0.60769454  -109.89154786    -0.00000035    -0.00000014  0.68D-08  0.27D-07  1738.17
   12    17    17     1.11366972    -0.60769451  -109.89154783    -0.00000047    -0.00000013  0.13D-07  0.18D-07  1738.17
   13     1     1     1.08941172    -0.58411443  -109.96530984    -0.00000001    -0.00000002  0.34D-09  0.39D-08  1824.90
   13     2     2     1.08941275    -0.58411442  -109.96530984    -0.00000001    -0.00000002  0.60D-09  0.47D-08  1824.90
   13     3     3     1.08941197    -0.58411441  -109.96530982    -0.00000000    -0.00000003  0.53D-09  0.63D-08  1824.90
   13     4     4     1.08941055    -0.58411441  -109.96530982    -0.00000001    -0.00000003  0.98D-09  0.54D-08  1824.90
   13     5     5     1.08941094    -0.58411441  -109.96530982    -0.00000001    -0.00000003  0.86D-09  0.61D-08  1824.90
   13     6     6     1.08940953    -0.58411440  -109.96530981    -0.00000001    -0.00000004  0.95D-09  0.77D-08  1824.90
   13     7     7     1.08940892    -0.58411439  -109.96530980    -0.00000001    -0.00000004  0.80D-09  0.89D-08  1824.90
   13     8     8     1.09346196    -0.59384451  -109.92147035    -0.00000007    -0.00000002  0.13D-08  0.26D-08  1824.90
   13     9     9     1.09345133    -0.59384448  -109.92147032    -0.00000006    -0.00000002  0.50D-09  0.44D-08  1824.90
   13    10    10     1.09344826    -0.59384444  -109.92147028    -0.00000005    -0.00000004  0.23D-08  0.77D-08  1824.90
   13    11    11     1.11373718    -0.60769477  -109.89154810    -0.00000005    -0.00000001  0.11D-09  0.94D-09  1824.90
   13    12    12     1.11373632    -0.60769477  -109.89154810    -0.00000010    -0.00000001  0.18D-09  0.18D-08  1824.90
   13    13    13     1.11373716    -0.60769477  -109.89154809    -0.00000013    -0.00000001  0.23D-09  0.20D-08  1824.90
   13    14    14     1.11373223    -0.60769476  -109.89154808    -0.00000015    -0.00000002  0.99D-09  0.38D-08  1824.90
   13    15    15     1.11372920    -0.60769476  -109.89154807    -0.00000016    -0.00000003  0.15D-08  0.45D-08  1824.90
   13    16    16     1.11373216    -0.60769475  -109.89154807    -0.00000021    -0.00000003  0.20D-08  0.56D-08  1824.90
   13    17    17     1.11370963    -0.60769473  -109.89154805    -0.00000022    -0.00000003  0.24D-08  0.52D-08  1824.90


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   3.3%  83.9%

 Initialization:   0.2%
 Other:           12.5%

 Total CPU:     1824.9 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/22//222           0.0000418   0.0000626   0.9580846   0.0000000   0.0000000   0.0000028  -0.0000000   0.0000000   0.0000000
                     -0.0000000  -0.0000000   0.0000000  -0.0002412  -0.0000000   0.0000000   0.0000000  -0.0000000
 2/2//22222           0.0000000   0.0000000   0.0002090   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0000000   0.0000659  -0.0000000   0.9473406   0.0000000  -0.0000136  -0.0000476   0.0000007
 2//222/222          -0.2166624   0.9332645  -0.0000515   0.0000000  -0.0000000  -0.0000000  -0.0000012   0.0000000  -0.0000004
                     -0.0000000  -0.0002011   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0001331   0.0000000
 2/222//222          -0.4173687  -0.0968944   0.0000245  -0.0000000   0.0000000   0.0000000   0.0000012   0.0000008   0.8550041
                     -0.0000000   0.0000595   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000900  -0.0000000
 222//2/222           0.8347377   0.1937890  -0.0000491   0.0000000  -0.0000000  -0.0000000  -0.0000024   0.0000004   0.4275022
                     -0.0000000  -0.0001190  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0001799  -0.0000000
 222///2222          -0.0000471   0.0002040  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.7898537  -0.0000086  -0.0000812   0.0000009   0.0000000  -0.5230555  -0.0000000
 22//22/222           0.0000000   0.0000000  -0.0000017  -0.0000099   0.0072719   0.6059026   0.0000208   0.0000019  -0.0000000
                      0.7404556   0.0000000   0.0000000   0.0000000  -0.0000000   0.0001513   0.0000000  -0.0000190
 22/2/2/222          -0.0000001  -0.0000001  -0.0000000   0.6044157   0.0000419   0.0000109  -0.0430405   0.7404516  -0.0000007
                     -0.0000019   0.0000000   0.0001510   0.0000000   0.0000211  -0.0000000  -0.0000000  -0.0000000
 22/2//2222          -0.0000000  -0.0000000   0.0000000  -0.0001252  -0.0000000   0.0000000  -0.0001398  -0.0001585   0.0000000
                      0.0000000   0.0000039   0.4206691   0.0000000   0.7355257   0.0000498   0.0000001  -0.0000165
 22//2/2222          -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0001493   0.0001132   0.0000000   0.0000000  -0.0000000
                      0.0001592   0.0000000  -0.0000866  -0.0000067   0.0000951  -0.4321234   0.0000000   0.7288704
 2222///222           0.0000017   0.0000013   0.0000000  -0.4753193  -0.0000192  -0.0000320   0.7130315   0.4275000  -0.0000004
                     -0.0000011   0.0000000  -0.0001545   0.0000000   0.0001505   0.0000001   0.0000000   0.0000000
 2//22/2222           0.0001823   0.0000426  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0001588
                     -0.0000000   0.4678349   0.0000116   0.0000030  -0.0000092  -0.0000000   0.7064772   0.0000000
 2/22/2/222           0.0000000   0.0000000  -0.0000015  -0.0000564   0.6837179   0.5165970   0.0000041  -0.0000011   0.0000000
                     -0.4275045  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0001100  -0.0000000  -0.0001855
 222/2//222           0.0000000   0.0000000  -0.0000015   0.0000392  -0.6711214   0.5328580   0.0000319  -0.0000011   0.0000000
                     -0.4275020  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0001521  -0.0000000   0.0001527
 2/2/22/222           0.0000016   0.0000012   0.0000000   0.5715597   0.0000533  -0.0000132   0.6384843  -0.4275001   0.0000004
                      0.0000011   0.0000000   0.0001071  -0.0000000   0.0001873   0.0000000   0.0000000  -0.0000000
 2///222222           0.0000000   0.0000000   0.0000000  -0.0001042  -0.0000000  -0.0000000   0.0001553  -0.0001583   0.0000000
                      0.0000000  -0.0000031   0.6070076  -0.0000000  -0.5911975  -0.0002892  -0.0000157  -0.0000222
 2//2/22222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0001461  -0.0001169  -0.0000000   0.0000000   0.0000000
                     -0.0001592  -0.0000000   0.0001801   0.0000081  -0.0001299   0.5976915  -0.0000000   0.6006180
 2/22//2222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000011   0.0001309   0.0000000  -0.0000000   0.0000000
                     -0.0002759   0.0000000  -0.0001540  -0.0000086   0.0001300  -0.5945543   0.0000000   0.0740435
 2/2/2/2222           0.0000000   0.0000000   0.0000000  -0.0001313  -0.0000000  -0.0000000   0.0000097   0.0002743  -0.0000000
                      0.0000000   0.0000004   0.5933247  -0.0000000   0.0833403  -0.0001382  -0.0000090  -0.0000224
 22///22222           0.0000906   0.0000209  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0003175
                     -0.0000000   0.2339144   0.0000058   0.0000015  -0.0000046  -0.0000000   0.3532157   0.0000000

 Coefficients of singly external configurations greater than 0.0500000
 =====================================================================

 2/2/\2/222  14.1    -0.0000000  -0.0000000  -0.0000147   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000035   0.0000000  -0.0502836  -0.0000000   0.0000007   0.0000025  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.844808    0.000001    0.000000    0.000042   -0.451913    0.000000    0.000002    0.000000    0.000000   -0.000000
             0.000000    0.000206   -0.000000    0.000000   -0.000023   -0.000000    0.000000
 2           0.451913    0.000001    0.000000    0.000063    0.844808    0.000000    0.000002   -0.000000    0.000000    0.000000
             0.000000    0.000024   -0.000000    0.000000    0.000206   -0.000000    0.000000
 3          -0.000066    0.000000   -0.000003    0.958085   -0.000035   -0.000001    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000   -0.000000    0.000207   -0.000000    0.000000    0.000000
 4           0.000000   -0.886180   -0.000033    0.000000    0.000000    0.000061    0.364160   -0.000000    0.000000    0.000000
            -0.000172   -0.000000   -0.000000    0.000000   -0.000000   -0.000116   -0.000000
 5          -0.000000   -0.000055    0.258404    0.000000   -0.000000   -0.922580    0.000044    0.000000   -0.000001    0.000000
            -0.000000   -0.000000    0.000141   -0.000000   -0.000000   -0.000000    0.000151
 6          -0.000000   -0.000026    0.922581    0.000003   -0.000000    0.258404   -0.000025    0.000000   -0.000000   -0.000000
            -0.000000    0.000000    0.000151    0.000000    0.000000   -0.000000   -0.000141
 7          -0.000003    0.364160    0.000027   -0.000000   -0.000000    0.000028    0.886180   -0.000001    0.000000   -0.000000
             0.000116   -0.000000   -0.000000    0.000000   -0.000000   -0.000172   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.956264    0.000002    0.000001
             0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 9           0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.956269
            -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 10         -0.000000    0.000000   -0.000001   -0.000000   -0.000000    0.000001    0.000000   -0.000002    0.956270   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
 11         -0.000181    0.000000   -0.000000   -0.000000   -0.000160   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000002    0.429420    0.000000    0.000066    0.844647    0.000005   -0.000000
 12         -0.000000   -0.000237    0.000000    0.000000    0.000000    0.000000    0.000043   -0.000000   -0.000000    0.000000
             0.879104    0.000014   -0.000131   -0.000000   -0.000007    0.353562    0.000209
 13          0.000000    0.000000    0.000000   -0.000241    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000013   -0.000009    0.947539   -0.000080    0.000000    0.000010
 14          0.000000    0.000043   -0.000000   -0.000000   -0.000000   -0.000000    0.000237   -0.000000    0.000000   -0.000000
            -0.353563   -0.000010    0.000151    0.000000   -0.000000    0.879106   -0.000171
 15         -0.000000    0.000000    0.000223    0.000000   -0.000000    0.000091    0.000000   -0.000000   -0.000000   -0.000000
            -0.000312   -0.000000   -0.615711   -0.000014    0.000000    0.000121    0.720233
 16         -0.000160    0.000000   -0.000000    0.000000    0.000181   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000018    0.844648    0.000000   -0.000048   -0.429421    0.000003   -0.000000
 17          0.000000    0.000000   -0.000091   -0.000000    0.000000    0.000223   -0.000000   -0.000000   -0.000000   -0.000000
            -0.000032    0.000000    0.720240    0.000001   -0.000000   -0.000017    0.615716

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958085    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000006   -0.000000   -0.000000    0.000000    0.000000   -0.000017    0.000000
 2           0.000000    0.958084   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000017    0.000000    0.000000    0.000000    0.000000    0.000006    0.000000
 3          -0.000000   -0.000000    0.958085    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000018    0.000000    0.000000    0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.958085    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000018   -0.000000    0.000004   -0.000000   -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.958085    0.000000   -0.000000    0.000000    0.000000   -0.000001
             0.000000   -0.000000   -0.000000    0.000000   -0.000002    0.000000   -0.000018
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.958086   -0.000000   -0.000000   -0.000000   -0.000001
            -0.000000    0.000000    0.000000   -0.000000    0.000018   -0.000000   -0.000002
 7           0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958086   -0.000000    0.000000    0.000000
             0.000000   -0.000004   -0.000000    0.000018    0.000000    0.000000    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956264    0.000000    0.000000
            -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.956269   -0.000000
            -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 10          0.000000   -0.000000    0.000000    0.000000   -0.000001   -0.000001    0.000000    0.000000   -0.000000    0.956270
            -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 11         -0.000006   -0.000017    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.947539   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 12         -0.000000    0.000000    0.000000    0.000018   -0.000000    0.000000   -0.000004   -0.000000    0.000000   -0.000000
            -0.000000    0.947539   -0.000000   -0.000000    0.000000    0.000000    0.000000
 13         -0.000000    0.000000   -0.000018   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.947539   -0.000000    0.000000    0.000000   -0.000000
 14          0.000000    0.000000    0.000000    0.000004    0.000000   -0.000000    0.000018   -0.000000    0.000000   -0.000000
             0.000000   -0.000000   -0.000000    0.947541   -0.000000    0.000000   -0.000000
 15          0.000000    0.000000    0.000000   -0.000000   -0.000002    0.000018    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.947542    0.000000   -0.000000
 16         -0.000017    0.000006    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.000000    0.000000    0.947541   -0.000000
 17          0.000000    0.000000   -0.000000    0.000000   -0.000018   -0.000002    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.947550


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.84480826 (fixed)   0.95808486 (relaxed)   0.95808469 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46817455
 Singles      0.01408100   -0.07407962   -0.07554838
 Pairs        0.07533075   -0.00000000   -0.04039150
 Total        1.08941211   -0.07407962   -0.58411443
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119541
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44779719
 One electron energy                 -193.17863158
 Two electron energy                   83.21332174
 Virial quotient                       -2.65310384
 Correlation energy                    -0.58411443
 !MRCI STATE 1.1 Energy              -109.965309842109

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753675 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753652 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753675 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307652 (Pople, fixed reference)
 Cluster corrected energies          -110.01307630 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307652 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84480771 (fixed)   0.95808441 (relaxed)   0.95808424 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46817814
 Singles      0.01407939   -0.07407522   -0.07554758
 Pairs        0.07533339   -0.00000000   -0.04038870
 Total        1.08941314   -0.07407522   -0.58411442
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119541
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44776699
 One electron energy                 -193.17865609
 Two electron energy                   83.21334625
 Virial quotient                       -2.65310577
 Correlation energy                    -0.58411443
 !MRCI STATE 2.1 Energy              -109.965309836550

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753734 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753711 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753734 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307710 (Pople, fixed reference)
 Cluster corrected energies          -110.01307688 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307710 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95808455 (fixed)   0.95808475 (relaxed)   0.95808458 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46817849
 Singles      0.01407932   -0.07407519   -0.07554773
 Pairs        0.07533268   -0.00000000   -0.04038819
 Total        1.08941236   -0.07407519   -0.58411441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119541
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44777722
 One electron energy                 -193.17867534
 Two electron energy                   83.21336551
 Virial quotient                       -2.65310512
 Correlation energy                    -0.58411442
 !MRCI STATE 3.1 Energy              -109.965309824275

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753687 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753664 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753687 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307665 (Pople, fixed reference)
 Cluster corrected energies          -110.01307642 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307665 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.88617982 (fixed)   0.95808538 (relaxed)   0.95808520 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818049
 Singles      0.01407886   -0.07407367   -0.07554724
 Pairs        0.07533173    0.00000000   -0.04038668
 Total        1.08941095   -0.07407367   -0.58411441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119541
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44778120
 One electron energy                 -193.17867449
 Two electron energy                   83.21336467
 Virial quotient                       -2.65310486
 Correlation energy                    -0.58411442
 !MRCI STATE 4.1 Energy              -109.965309823707

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753605 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753582 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753605 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307584 (Pople, fixed reference)
 Cluster corrected energies          -110.01307562 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307584 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92258034 (fixed)   0.95808521 (relaxed)   0.95808503 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46813908
 Singles      0.01407908   -0.07407434   -0.07554738
 Pairs        0.07533189   -0.00004426   -0.04042795
 Total        1.08941133   -0.07411860   -0.58411441
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119540
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44778208
 One electron energy                 -193.17867479
 Two electron energy                   83.21336498
 Virial quotient                       -2.65310481
 Correlation energy                    -0.58411441
 !MRCI STATE 5.1 Energy              -109.965309818027

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753626 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753603 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753626 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307605 (Pople, fixed reference)
 Cluster corrected energies          -110.01307583 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307605 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.92258100 (fixed)   0.95808582 (relaxed)   0.95808565 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46821879
 Singles      0.01407876   -0.07407362   -0.07554746
 Pairs        0.07533080    0.00004121   -0.04034815
 Total        1.08940993   -0.07403241   -0.58411440
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119541
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44777820
 One electron energy                 -193.17868225
 Two electron energy                   83.21337244
 Virial quotient                       -2.65310505
 Correlation energy                    -0.58411440
 !MRCI STATE 6.1 Energy              -109.965309806411

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753543 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753520 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753543 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307524 (Pople, fixed reference)
 Cluster corrected energies          -110.01307502 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307524 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.88618042 (fixed)   0.95808609 (relaxed)   0.95808592 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000036   -0.00000000   -0.46818027
 Singles      0.01407909   -0.07407465   -0.07554780
 Pairs        0.07532986    0.00000000   -0.04038632
 Total        1.08940932   -0.07407465   -0.58411439
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119540
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44777589
 One electron energy                 -193.17868092
 Two electron energy                   83.21337112
 Virial quotient                       -2.65310520
 Correlation energy                    -0.58411439
 !MRCI STATE 7.1 Energy              -109.965309796284

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01753507 (Davidson, fixed reference)
 Cluster corrected energies          -110.01753484 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01753507 (Davidson, rotated reference)

 Cluster corrected energies          -110.01307488 (Pople, fixed reference)
 Cluster corrected energies          -110.01307466 (Pople, relaxed reference)
 Cluster corrected energies          -110.01307488 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Coefficient of reference function:   C(0) = 0.95626443 (fixed)   0.95630882 (relaxed)   0.95626443 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009285   -0.00000000   -0.47033540
 Singles      0.01734749   -0.07955802   -0.08217383
 Pairs        0.07612314   -0.00000000   -0.04133528
 Total        1.09356349   -0.07955802   -0.59384451
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762584
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42706238
 One electron energy                 -193.12277068
 Two electron energy                   83.20130033
 Virial quotient                       -2.65337352
 Correlation energy                    -0.59384451
 !MRCI STATE 8.1 Energy              -109.921470347427

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97703251 (Davidson, fixed reference)
 Cluster corrected energies          -109.97697222 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97703251 (Davidson, rotated reference)

 Cluster corrected energies          -109.97244314 (Pople, fixed reference)
 Cluster corrected energies          -109.97238402 (Pople, relaxed reference)
 Cluster corrected energies          -109.97244314 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95626906 (fixed)   0.95631347 (relaxed)   0.95626906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009288   -0.00000000   -0.47033604
 Singles      0.01734894   -0.07956230   -0.08217552
 Pairs        0.07611107    0.00000000   -0.04133292
 Total        1.09355289   -0.07956230   -0.59384448
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762583
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42719382
 One electron energy                 -193.12285901
 Two electron energy                   83.20138869
 Virial quotient                       -2.65336510
 Correlation energy                    -0.59384448
 !MRCI STATE 9.1 Energy              -109.921470316335

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97702618 (Davidson, fixed reference)
 Cluster corrected energies          -109.97696587 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97702618 (Davidson, rotated reference)

 Cluster corrected energies          -109.97243694 (Pople, fixed reference)
 Cluster corrected energies          -109.97237780 (Pople, relaxed reference)
 Cluster corrected energies          -109.97243694 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95627042 (fixed)   0.95631481 (relaxed)   0.95627042 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009285   -0.00000000   -0.47034115
 Singles      0.01734693   -0.07955784   -0.08217473
 Pairs        0.07611000   -0.00000028   -0.04132856
 Total        1.09354978   -0.07955812   -0.59384444
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32762584
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42705509
 One electron energy                 -193.12277478
 Two electron energy                   83.20130450
 Virial quotient                       -2.65337399
 Correlation energy                    -0.59384444
 !MRCI STATE 10.1 Energy             -109.921470277793

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97702429 (Davidson, fixed reference)
 Cluster corrected energies          -109.97696401 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97702429 (Davidson, rotated reference)

 Cluster corrected energies          -109.97243508 (Pople, fixed reference)
 Cluster corrected energies          -109.97237597 (Pople, relaxed reference)
 Cluster corrected energies          -109.97243508 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 15

 Coefficient of reference function:   C(0) = 0.84464665 (fixed)   0.94756419 (relaxed)   0.94753866 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005389   -0.00000000   -0.41614260
 Singles      0.04110504   -0.14422906   -0.15192168
 Pairs        0.07263827    0.00000000   -0.03963049
 Total        1.11379719   -0.14422906   -0.60769477
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385333
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27936491
 One electron energy                 -190.44126094
 Two electron energy                   80.54971284
 Virial quotient                       -2.72823438
 Correlation energy                    -0.60769477
 !MRCI STATE 11.1 Energy             -109.891548095496

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070205 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066558 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070205 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594652 (Pople, fixed reference)
 Cluster corrected energies          -109.95590969 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594652 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.87910414 (fixed)   0.94756456 (relaxed)   0.94753903 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005389   -0.00000000   -0.41605160
 Singles      0.04110461   -0.14422842   -0.15192156
 Pairs        0.07263784   -0.00010235   -0.03972161
 Total        1.11379633   -0.14433077   -0.60769477
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385333
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27935062
 One electron energy                 -190.44124563
 Two electron energy                   80.54969753
 Virial quotient                       -2.72823535
 Correlation energy                    -0.60769476
 !MRCI STATE 12.1 Energy             -109.891548095426

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070153 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066506 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070153 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594599 (Pople, fixed reference)
 Cluster corrected energies          -109.95590916 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594599 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Maximum overlap with reference state 14

 Coefficient of reference function:   C(0) = 0.94753864 (fixed)   0.94756420 (relaxed)   0.94753867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005389   -0.00000000   -0.41613863
 Singles      0.04110451   -0.14422865   -0.15192134
 Pairs        0.07263877   -0.00000483   -0.03963480
 Total        1.11379718   -0.14423348   -0.60769477
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385333
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27934053
 One electron energy                 -190.44123274
 Two electron energy                   80.54968465
 Virial quotient                       -2.72823603
 Correlation energy                    -0.60769476
 !MRCI STATE 13.1 Energy             -109.891548090650

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96070204 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066557 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96070204 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594650 (Pople, fixed reference)
 Cluster corrected energies          -109.95590967 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594650 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Maximum overlap with reference state 16

 Coefficient of reference function:   C(0) = 0.87910554 (fixed)   0.94756630 (relaxed)   0.94754077 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41622111
 Singles      0.04110229   -0.14422749   -0.15192153
 Pairs        0.07263606    0.00008382   -0.03955213
 Total        1.11379224   -0.14414367   -0.60769476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385332
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27926355
 One electron energy                 -190.44113242
 Two electron energy                   80.54958434
 Virial quotient                       -2.72824124
 Correlation energy                    -0.60769476
 !MRCI STATE 14.1 Energy             -109.891548082298

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96069903 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066256 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96069903 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594346 (Pople, fixed reference)
 Cluster corrected energies          -109.95590664 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594346 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Maximum overlap with reference state 17

 Coefficient of reference function:   C(0) = 0.72023319 (fixed)   0.94756759 (relaxed)   0.94754206 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.09985497
 Singles      0.04110120   -0.14422240   -0.15192088
 Pairs        0.07263412   -0.35228771   -0.35591891
 Total        1.11378920   -0.49651011   -0.60769476
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385332
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27927247
 One electron energy                 -190.44116063
 Two electron energy                   80.54961256
 Virial quotient                       -2.72824064
 Correlation energy                    -0.60769475
 !MRCI STATE 15.1 Energy             -109.891548074943

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96069717 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066071 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96069717 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594159 (Pople, fixed reference)
 Cluster corrected energies          -109.95590477 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594159 (Pople, rotated reference)



 RESULTS FOR STATE 16.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.84464837 (fixed)   0.94756633 (relaxed)   0.94754080 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.41614664
 Singles      0.04110037   -0.14422663   -0.15192089
 Pairs        0.07263792    0.00000000   -0.03962722
 Total        1.11379218   -0.14422663   -0.60769475
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385333
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27919556
 One electron energy                 -190.44104514
 Two electron energy                   80.54949707
 Virial quotient                       -2.72824585
 Correlation energy                    -0.60769474
 !MRCI STATE 16.1 Energy             -109.891548069796

 Properties without orbital relaxation:

 !MRCI STATE 16.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96069898 (Davidson, fixed reference)
 Cluster corrected energies          -109.96066251 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96069898 (Davidson, rotated reference)

 Cluster corrected energies          -109.95594341 (Pople, fixed reference)
 Cluster corrected energies          -109.95590658 (Pople, relaxed reference)
 Cluster corrected energies          -109.95594341 (Pople, rotated reference)



 RESULTS FOR STATE 17.1
 ======================

 Maximum overlap with reference state 13

 Coefficient of reference function:   C(0) = 0.72023992 (fixed)   0.94757591 (relaxed)   0.94755039 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00005388   -0.00000000   -0.14575744
 Singles      0.04110059   -0.14422406   -0.15192430
 Pairs        0.07261517   -0.30116320   -0.31001299
 Total        1.11376963   -0.44538726   -0.60769473
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.28385333
 Nuclear energy                         0.00000000
 Kinetic energy                        40.27927227
 One electron energy                 -190.44110914
 Two electron energy                   80.54956109
 Virial quotient                       -2.72824065
 Correlation energy                    -0.60769472
 !MRCI STATE 17.1 Energy             -109.891548045564

 Properties without orbital relaxation:

 !MRCI STATE 17.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96068525 (Davidson, fixed reference)
 Cluster corrected energies          -109.96064879 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96068525 (Davidson, rotated reference)

 Cluster corrected energies          -109.95592955 (Pople, fixed reference)
 Cluster corrected energies          -109.95589273 (Pople, relaxed reference)
 Cluster corrected energies          -109.95592955 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      402.39       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *      1883.05   1879.58      2.75      0.51
 REAL TIME  *      1994.19 SEC
 DISK USED  *       434.56 MB (local),        5.15 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01753675  AU                              
 SETTING HLSDIAG(2)     =      -110.01753734  AU                              
 SETTING HLSDIAG(3)     =      -110.01753687  AU                              
 SETTING HLSDIAG(4)     =      -110.01753605  AU                              
 SETTING HLSDIAG(5)     =      -110.01753626  AU                              
 SETTING HLSDIAG(6)     =      -110.01753543  AU                              
 SETTING HLSDIAG(7)     =      -110.01753507  AU                              
 SETTING HLSDIAG(8)     =      -109.97703251  AU                              
 SETTING HLSDIAG(9)     =      -109.97702618  AU                              
 SETTING HLSDIAG(10)    =      -109.97702429  AU                              
 SETTING HLSDIAG(11)    =      -109.96070205  AU                              
 SETTING HLSDIAG(12)    =      -109.96070153  AU                              
 SETTING HLSDIAG(13)    =      -109.96070204  AU                              
 SETTING HLSDIAG(14)    =      -109.96069903  AU                              
 SETTING HLSDIAG(15)    =      -109.96069717  AU                              
 SETTING HLSDIAG(16)    =      -109.96069898  AU                              
 SETTING HLSDIAG(17)    =      -109.96068525  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15
 Number of reference states: 15  Roots:   1   2   3   4   5   6   7   8   9  10  11  12  13  14  15

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
     1      -109.35128631
     2      -109.35128631
     3      -109.35128631
     4      -109.35128631
     5      -109.35128631
     6      -109.35128630
     7      -109.35128630
     8      -109.33358914
     9      -109.33358914
    10      -109.33358914
    11      -109.33358914
    12      -109.33358914
    13      -109.30595077
    14      -109.30595076
    15      -109.30595075

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.67D-05
 Number of N-2 electron functions:    1500
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2849760
 Total number of contracted configurations:      2928991
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:    993258 words, CPU-Time:      0.70 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    553837 words, CPU-time:      0.06 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35128631     0.00000000    -0.67841518  0.30D-01  0.97D-01     1.19
    1     2     2     1.00000000     0.00000000  -109.35128631     0.00000000    -0.67986684  0.30D-01  0.98D-01     1.19
    1     3     3     1.00000000     0.00000000  -109.35128631     0.00000000    -0.67923714  0.30D-01  0.98D-01     1.19
    1     4     4     1.00000000     0.00000000  -109.35128631     0.00000000    -0.67953708  0.30D-01  0.98D-01     1.19
    1     5     5     1.00000000     0.00000000  -109.35128631     0.00000000    -0.67868265  0.30D-01  0.98D-01     1.19
    1     6     6     1.00000000     0.00000000  -109.35128630     0.00000000    -0.67903664  0.30D-01  0.98D-01     1.19
    1     7     7     1.00000000     0.00000000  -109.35128630     0.00000000    -0.67937149  0.30D-01  0.98D-01     1.19
    1     8     8     1.00000000     0.00000000  -109.33358914     0.00000000    -0.68431881  0.32D-01  0.10D+00     1.19
    1     9     9     1.00000000     0.00000000  -109.33358914     0.00000000    -0.68385953  0.32D-01  0.10D+00     1.19
    1    10    10     1.00000000     0.00000000  -109.33358914     0.00000000    -0.68335611  0.32D-01  0.10D+00     1.19
    1    11    11     1.00000000     0.00000000  -109.33358914     0.00000000    -0.68320322  0.32D-01  0.10D+00     1.19
    1    12    12     1.00000000     0.00000000  -109.33358914    -0.00000000    -0.68382438  0.32D-01  0.10D+00     1.19
    1    13    13     1.00000000     0.00000000  -109.30595077     0.00000000    -0.69095974  0.40D-01  0.99D-01     1.19
    1    14    14     1.00000000     0.00000000  -109.30595076     0.00000000    -0.69145554  0.40D-01  0.99D-01     1.19
    1    15    15     1.00000000     0.00000000  -109.30595075     0.00000000    -0.69094680  0.40D-01  0.99D-01     1.19
    2     1     1     1.08946362    -0.56794306  -109.91922937    -0.56794306    -0.01759110  0.17D-02  0.23D-02   188.20
    2     2     2     1.08940562    -0.56792328  -109.91920959    -0.56792328    -0.01757128  0.17D-02  0.23D-02   188.20
    2     3     3     1.08941869    -0.56779986  -109.91908617    -0.56779986    -0.01765487  0.17D-02  0.23D-02   188.20
    2     4     4     1.08958160    -0.56776559  -109.91905189    -0.56776559    -0.01776331  0.18D-02  0.23D-02   188.20
    2     5     5     1.08932352    -0.56767372  -109.91896002    -0.56767372    -0.01770296  0.17D-02  0.23D-02   188.20
    2     6     6     1.08937927    -0.56767066  -109.91895697    -0.56767066    -0.01772436  0.17D-02  0.23D-02   188.20
    2     7     7     1.08952515    -0.56753191  -109.91881822    -0.56753191    -0.01785539  0.19D-02  0.23D-02   188.20
    2     8     8     1.09202755    -0.57103882  -109.90462796    -0.57103882    -0.01700888  0.25D-02  0.19D-02   188.20
    2     9     9     1.09202462    -0.57080644  -109.90439558    -0.57080644    -0.01718351  0.26D-02  0.20D-02   188.20
    2    10    10     1.09190534    -0.57044505  -109.90403419    -0.57044505    -0.01740257  0.26D-02  0.20D-02   188.20
    2    11    11     1.09198130    -0.57044356  -109.90403270    -0.57044356    -0.01745229  0.26D-02  0.20D-02   188.20
    2    12    12     1.09188963    -0.57043890  -109.90402804    -0.57043890    -0.01740564  0.26D-02  0.20D-02   188.20
    2    13    13     1.09672863    -0.57659086  -109.88254163    -0.57659086    -0.01812764  0.25D-02  0.23D-02   188.20
    2    14    14     1.09660360    -0.57655690  -109.88250766    -0.57655690    -0.01814488  0.24D-02  0.23D-02   188.20
    2    15    15     1.09670064    -0.57651639  -109.88246714    -0.57651639    -0.01815238  0.25D-02  0.23D-02   188.20
    3     1     1     1.08675994    -0.58630996  -109.93759627    -0.01836690    -0.00120744  0.40D-04  0.22D-03   373.46
    3     2     2     1.08677914    -0.58630459  -109.93759090    -0.01838131    -0.00122332  0.38D-04  0.23D-03   373.46
    3     3     3     1.08678119    -0.58630202  -109.93758833    -0.01850216    -0.00121568  0.40D-04  0.22D-03   373.46
    3     4     4     1.08673983    -0.58628089  -109.93756720    -0.01851531    -0.00122770  0.40D-04  0.23D-03   373.46
    3     5     5     1.08670269    -0.58625353  -109.93753984    -0.01857981    -0.00124011  0.40D-04  0.23D-03   373.46
    3     6     6     1.08669136    -0.58625156  -109.93753786    -0.01858089    -0.00123961  0.40D-04  0.23D-03   373.46
    3     7     7     1.08669535    -0.58624506  -109.93753137    -0.01871315    -0.00124797  0.39D-04  0.23D-03   373.46
    3     8     8     1.08801073    -0.58806343  -109.92165258    -0.01702462    -0.00112626  0.12D-03  0.18D-03   373.46
    3     9     9     1.08796915    -0.58802460  -109.92161374    -0.01721816    -0.00113769  0.12D-03  0.18D-03   373.46
    3    10    10     1.08787952    -0.58795176  -109.92154090    -0.01750672    -0.00118037  0.12D-03  0.19D-03   373.46
    3    11    11     1.08784931    -0.58795095  -109.92154009    -0.01750738    -0.00117583  0.12D-03  0.18D-03   373.46
    3    12    12     1.08784536    -0.58795006  -109.92153920    -0.01751116    -0.00117750  0.12D-03  0.18D-03   373.46
    3    13    13     1.09194060    -0.59494028  -109.90089105    -0.01834942    -0.00126853  0.73D-04  0.24D-03   373.46
    3    14    14     1.09192365    -0.59492324  -109.90087400    -0.01836634    -0.00128113  0.75D-04  0.25D-03   373.46
    3    15    15     1.09191169    -0.59492120  -109.90087196    -0.01840481    -0.00127930  0.74D-04  0.25D-03   373.46
    4     1     1     1.09015585    -0.58803020  -109.93931651    -0.00172024    -0.00025986  0.86D-05  0.50D-04   560.71
    4     2     2     1.09014683    -0.58802752  -109.93931383    -0.00172293    -0.00026122  0.86D-05  0.50D-04   560.71
    4     3     3     1.09012226    -0.58802637  -109.93931268    -0.00172435    -0.00026588  0.80D-05  0.52D-04   560.71
    4     4     4     1.09013888    -0.58802470  -109.93931101    -0.00174381    -0.00026154  0.88D-05  0.50D-04   560.71
    4     5     5     1.09014178    -0.58802374  -109.93931005    -0.00177021    -0.00026403  0.85D-05  0.51D-04   560.71
    4     6     6     1.09014023    -0.58802244  -109.93930874    -0.00177088    -0.00026552  0.84D-05  0.51D-04   560.71
    4     7     7     1.09011822    -0.58801907  -109.93930537    -0.00177401    -0.00027094  0.81D-05  0.53D-04   560.71
    4     8     8     1.09061821    -0.58955474  -109.92314388    -0.00149131    -0.00031156  0.13D-04  0.55D-04   560.71
    4     9     9     1.09061509    -0.58954607  -109.92313521    -0.00152147    -0.00031488  0.14D-04  0.55D-04   560.71
    4    10    10     1.09057814    -0.58953201  -109.92312115    -0.00158025    -0.00032221  0.14D-04  0.56D-04   560.71
    4    11    11     1.09057753    -0.58953153  -109.92312067    -0.00158058    -0.00032280  0.14D-04  0.56D-04   560.71
    4    12    12     1.09055625    -0.58952497  -109.92311411    -0.00157491    -0.00032859  0.13D-04  0.58D-04   560.71
    4    13    13     1.09521582    -0.59665069  -109.90260146    -0.00171041    -0.00032296  0.11D-04  0.67D-04   560.71
    4    14    14     1.09521638    -0.59664966  -109.90260042    -0.00172642    -0.00032119  0.11D-04  0.67D-04   560.71
    4    15    15     1.09521003    -0.59664943  -109.90260019    -0.00172823    -0.00032409  0.10D-04  0.67D-04   560.71
    5     1     1     1.09140161    -0.58833840  -109.93962471    -0.00030820    -0.00006147  0.12D-05  0.13D-04   750.84
    5     2     2     1.09139338    -0.58833833  -109.93962464    -0.00031081    -0.00006117  0.12D-05  0.13D-04   750.84
    5     3     3     1.09139474    -0.58833821  -109.93962452    -0.00031184    -0.00006169  0.12D-05  0.13D-04   750.84
    5     4     4     1.09139354    -0.58833652  -109.93962283    -0.00031182    -0.00006277  0.13D-05  0.14D-04   750.84
    5     5     5     1.09139222    -0.58833626  -109.93962256    -0.00031251    -0.00006355  0.13D-05  0.14D-04   750.84
    5     6     6     1.09138201    -0.58833594  -109.93962224    -0.00031350    -0.00006441  0.14D-05  0.14D-04   750.84
    5     7     7     1.09138491    -0.58833380  -109.93962010    -0.00031473    -0.00006503  0.14D-05  0.14D-04   750.84
    5     8     8     1.09236824    -0.58999058  -109.92357972    -0.00043584    -0.00009857  0.33D-05  0.18D-04   750.84
    5     9     9     1.09236244    -0.58998837  -109.92357751    -0.00044230    -0.00009977  0.34D-05  0.19D-04   750.84
    5    10    10     1.09234405    -0.58998401  -109.92357315    -0.00045200    -0.00009943  0.36D-05  0.18D-04   750.84
    5    11    11     1.09234342    -0.58998387  -109.92357301    -0.00045235    -0.00009979  0.35D-05  0.18D-04   750.84
    5    12    12     1.09232155    -0.58997854  -109.92356768    -0.00045358    -0.00010508  0.34D-05  0.20D-04   750.84
    5    13    13     1.09685299    -0.59704566  -109.90299642    -0.00039496    -0.00007870  0.26D-05  0.17D-04   750.84
    5    14    14     1.09684067    -0.59704375  -109.90299451    -0.00039409    -0.00008178  0.26D-05  0.17D-04   750.84
    5    15    15     1.09683883    -0.59704213  -109.90299288    -0.00039269    -0.00008311  0.27D-05  0.18D-04   750.84
    6     1     1     1.09138254    -0.58841008  -109.93969639    -0.00007167    -0.00001982  0.93D-06  0.43D-05   942.06
    6     2     2     1.09138754    -0.58840955  -109.93969586    -0.00007122    -0.00002012  0.92D-06  0.44D-05   942.06
    6     3     3     1.09138546    -0.58840942  -109.93969573    -0.00007121    -0.00002033  0.91D-06  0.45D-05   942.06
    6     4     4     1.09138238    -0.58840885  -109.93969516    -0.00007233    -0.00002068  0.90D-06  0.46D-05   942.06
    6     5     5     1.09138579    -0.58840810  -109.93969440    -0.00007184    -0.00002130  0.89D-06  0.48D-05   942.06
    6     6     6     1.09139006    -0.58840791  -109.93969422    -0.00007197    -0.00002130  0.90D-06  0.48D-05   942.06
    6     7     7     1.09138249    -0.58840764  -109.93969394    -0.00007384    -0.00002101  0.95D-06  0.46D-05   942.06
    6     8     8     1.09224589    -0.59011152  -109.92370067    -0.00012095    -0.00004132  0.61D-05  0.66D-05   942.06
    6     9     9     1.09221542    -0.59011067  -109.92369981    -0.00012230    -0.00004118  0.61D-05  0.63D-05   942.06
    6    10    10     1.09221527    -0.59011053  -109.92369967    -0.00012652    -0.00004129  0.61D-05  0.64D-05   942.06
    6    11    11     1.09224154    -0.59011016  -109.92369930    -0.00012629    -0.00004238  0.60D-05  0.70D-05   942.06
    6    12    12     1.09221740    -0.59010611  -109.92369525    -0.00012757    -0.00004348  0.65D-05  0.68D-05   942.06
    6    13    13     1.09676112    -0.59713872  -109.90308949    -0.00009307    -0.00002549  0.22D-05  0.49D-05   942.06
    6    14    14     1.09676316    -0.59713723  -109.90308799    -0.00009348    -0.00002671  0.21D-05  0.54D-05   942.06
    6    15    15     1.09676417    -0.59713633  -109.90308709    -0.00009421    -0.00002716  0.21D-05  0.55D-05   942.06
    7     1     1     1.09148012    -0.58843098  -109.93971730    -0.00002091    -0.00000664  0.66D-07  0.16D-05  1128.20
    7     2     2     1.09147788    -0.58843062  -109.93971694    -0.00002108    -0.00000687  0.58D-07  0.17D-05  1128.20
    7     3     3     1.09147608    -0.58843058  -109.93971689    -0.00002116    -0.00000689  0.57D-07  0.17D-05  1128.20
    7     4     4     1.09147151    -0.58843035  -109.93971666    -0.00002150    -0.00000706  0.54D-07  0.17D-05  1128.20
    7     5     5     1.09146762    -0.58843005  -109.93971635    -0.00002195    -0.00000716  0.53D-07  0.17D-05  1128.20
    7     6     6     1.09147017    -0.58843004  -109.93971635    -0.00002213    -0.00000723  0.54D-07  0.17D-05  1128.20
    7     7     7     1.09147039    -0.58843000  -109.93971631    -0.00002237    -0.00000725  0.51D-07  0.18D-05  1128.20
    7     8     8     1.09231003    -0.59015658  -109.92374572    -0.00004505    -0.00001502  0.59D-06  0.26D-05  1128.20
    7     9     9     1.09230830    -0.59015654  -109.92374568    -0.00004587    -0.00001506  0.58D-06  0.26D-05  1128.20
    7    10    10     1.09231409    -0.59015652  -109.92374566    -0.00004599    -0.00001509  0.47D-06  0.28D-05  1128.20
    7    11    11     1.09230413    -0.59015579  -109.92374493    -0.00004563    -0.00001544  0.47D-06  0.28D-05  1128.20
    7    12    12     1.09229452    -0.59015466  -109.92374380    -0.00004855    -0.00001586  0.54D-06  0.28D-05  1128.20
    7    13    13     1.09691310    -0.59716873  -109.90311950    -0.00003001    -0.00000887  0.26D-06  0.20D-05  1128.20
    7    14    14     1.09689931    -0.59716811  -109.90311887    -0.00003088    -0.00000927  0.24D-06  0.21D-05  1128.20
    7    15    15     1.09689542    -0.59716766  -109.90311842    -0.00003133    -0.00000957  0.22D-06  0.22D-05  1128.20
    8     1     1     1.09161380    -0.58843779  -109.93972410    -0.00000681    -0.00000230  0.76D-07  0.53D-06  1314.97
    8     2     2     1.09161186    -0.58843764  -109.93972395    -0.00000702    -0.00000237  0.79D-07  0.54D-06  1314.97
    8     3     3     1.09161085    -0.58843763  -109.93972394    -0.00000705    -0.00000238  0.77D-07  0.54D-06  1314.97
    8     4     4     1.09160769    -0.58843754  -109.93972385    -0.00000719    -0.00000244  0.80D-07  0.56D-06  1314.97
    8     5     5     1.09160555    -0.58843744  -109.93972375    -0.00000739    -0.00000250  0.76D-07  0.57D-06  1314.97
    8     6     6     1.09160434    -0.58843742  -109.93972373    -0.00000738    -0.00000254  0.82D-07  0.57D-06  1314.97
    8     7     7     1.09160364    -0.58843739  -109.93972369    -0.00000738    -0.00000256  0.81D-07  0.59D-06  1314.97
    8     8     8     1.09250264    -0.59017516  -109.92376430    -0.00001858    -0.00000659  0.27D-06  0.13D-05  1314.97
    8     9     9     1.09250123    -0.59017514  -109.92376428    -0.00001860    -0.00000663  0.27D-06  0.13D-05  1314.97
    8    10    10     1.09249874    -0.59017474  -109.92376388    -0.00001822    -0.00000694  0.23D-06  0.14D-05  1314.97
    8    11    11     1.09249398    -0.59017440  -109.92376354    -0.00001861    -0.00000712  0.24D-06  0.15D-05  1314.97
    8    12    12     1.09248680    -0.59017409  -109.92376323    -0.00001942    -0.00000729  0.25D-06  0.15D-05  1314.97
    8    13    13     1.09708309    -0.59717846  -109.90312923    -0.00000973    -0.00000325  0.13D-06  0.77D-06  1314.97
    8    14    14     1.09707574    -0.59717824  -109.90312900    -0.00001012    -0.00000341  0.14D-06  0.80D-06  1314.97
    8    15    15     1.09707090    -0.59717799  -109.90312875    -0.00001033    -0.00000356  0.15D-06  0.84D-06  1314.97
    9     1     1     1.09166124    -0.58844023  -109.93972654    -0.00000244    -0.00000085  0.12D-07  0.21D-06  1504.10
    9     2     2     1.09166049    -0.58844016  -109.93972647    -0.00000252    -0.00000090  0.12D-07  0.22D-06  1504.10
    9     3     3     1.09165990    -0.58844016  -109.93972647    -0.00000252    -0.00000091  0.11D-07  0.22D-06  1504.10
    9     4     4     1.09165843    -0.58844012  -109.93972643    -0.00000258    -0.00000093  0.11D-07  0.23D-06  1504.10
    9     5     5     1.09165718    -0.58844007  -109.93972637    -0.00000263    -0.00000096  0.11D-07  0.23D-06  1504.10
    9     6     6     1.09165731    -0.58844007  -109.93972637    -0.00000264    -0.00000098  0.10D-07  0.25D-06  1504.10
    9     7     7     1.09165761    -0.58844004  -109.93972634    -0.00000265    -0.00000100  0.91D-08  0.25D-06  1504.10
    9     8     8     1.09255133    -0.59018261  -109.92377175    -0.00000745    -0.00000325  0.35D-06  0.59D-06  1504.10
    9     9     9     1.09255079    -0.59018260  -109.92377174    -0.00000746    -0.00000326  0.35D-06  0.59D-06  1504.10
    9    10    10     1.09255283    -0.59018228  -109.92377142    -0.00000754    -0.00000343  0.36D-06  0.63D-06  1504.10
    9    11    11     1.09255030    -0.59018209  -109.92377123    -0.00000768    -0.00000354  0.35D-06  0.66D-06  1504.10
    9    12    12     1.09254603    -0.59018200  -109.92377114    -0.00000791    -0.00000354  0.36D-06  0.64D-06  1504.10
    9    13    13     1.09712799    -0.59718185  -109.90313262    -0.00000339    -0.00000123  0.47D-07  0.29D-06  1504.10
    9    14    14     1.09712566    -0.59718177  -109.90313254    -0.00000354    -0.00000130  0.43D-07  0.31D-06  1504.10
    9    15    15     1.09712335    -0.59718166  -109.90313242    -0.00000367    -0.00000136  0.43D-07  0.32D-06  1504.10
   10     1     1     1.09167848    -0.58844109  -109.93972740    -0.00000087    -0.00000036  0.20D-08  0.10D-06  1690.22
   10     2     2     1.09167762    -0.58844106  -109.93972737    -0.00000089    -0.00000039  0.19D-08  0.11D-06  1690.22
   10     3     3     1.09167713    -0.58844105  -109.93972736    -0.00000090    -0.00000039  0.20D-08  0.11D-06  1690.22
   10     4     4     1.09167621    -0.58844104  -109.93972735    -0.00000092    -0.00000040  0.21D-08  0.11D-06  1690.22
   10     5     5     1.09167575    -0.58844102  -109.93972733    -0.00000095    -0.00000041  0.21D-08  0.11D-06  1690.22
   10     6     6     1.09167480    -0.58844101  -109.93972731    -0.00000094    -0.00000042  0.22D-08  0.12D-06  1690.22
   10     7     7     1.09167546    -0.58844100  -109.93972730    -0.00000096    -0.00000043  0.25D-08  0.12D-06  1690.22
   10     8     8     1.09258221    -0.59018614  -109.92377528    -0.00000353    -0.00000148  0.41D-07  0.30D-06  1690.22
   10     9     9     1.09258172    -0.59018614  -109.92377528    -0.00000354    -0.00000148  0.40D-07  0.30D-06  1690.22
   10    10    10     1.09258205    -0.59018593  -109.92377507    -0.00000365    -0.00000160  0.39D-07  0.34D-06  1690.22
   10    11    11     1.09257903    -0.59018581  -109.92377495    -0.00000373    -0.00000166  0.41D-07  0.36D-06  1690.22
   10    12    12     1.09257742    -0.59018581  -109.92377495    -0.00000381    -0.00000165  0.40D-07  0.35D-06  1690.22
   10    13    13     1.09715611    -0.59718318  -109.90313394    -0.00000132    -0.00000051  0.79D-08  0.13D-06  1690.22
   10    14    14     1.09715298    -0.59718314  -109.90313390    -0.00000137    -0.00000054  0.74D-08  0.14D-06  1690.22
   10    15    15     1.09715115    -0.59718309  -109.90313384    -0.00000143    -0.00000058  0.71D-08  0.15D-06  1690.22
   11     1     1     1.09169573    -0.58844142  -109.93972774    -0.00000033    -0.00000015  0.18D-08  0.41D-07  1875.37
   11     2     2     1.09169489    -0.58844141  -109.93972772    -0.00000035    -0.00000016  0.18D-08  0.43D-07  1875.37
   11     3     3     1.09169444    -0.58844141  -109.93972772    -0.00000035    -0.00000016  0.17D-08  0.44D-07  1875.37
   11     4     4     1.09169384    -0.58844140  -109.93972771    -0.00000036    -0.00000016  0.18D-08  0.45D-07  1875.37
   11     5     5     1.09169346    -0.58844140  -109.93972770    -0.00000038    -0.00000017  0.18D-08  0.46D-07  1875.37
   11     6     6     1.09169268    -0.58844139  -109.93972770    -0.00000038    -0.00000017  0.16D-08  0.47D-07  1875.37
   11     7     7     1.09169267    -0.58844138  -109.93972769    -0.00000039    -0.00000018  0.15D-08  0.49D-07  1875.37
   11     8     8     1.09261541    -0.59018773  -109.92377688    -0.00000159    -0.00000074  0.15D-07  0.17D-06  1875.37
   11     9     9     1.09261490    -0.59018773  -109.92377687    -0.00000159    -0.00000075  0.14D-07  0.17D-06  1875.37
   11    10    10     1.09261293    -0.59018758  -109.92377672    -0.00000165    -0.00000083  0.12D-07  0.19D-06  1875.37
   11    11    11     1.09260947    -0.59018753  -109.92377667    -0.00000172    -0.00000084  0.13D-07  0.19D-06  1875.37
   11    12    12     1.09261041    -0.59018751  -109.92377665    -0.00000170    -0.00000086  0.12D-07  0.20D-06  1875.37
   11    13    13     1.09718438    -0.59718370  -109.90313447    -0.00000052    -0.00000020  0.46D-08  0.51D-07  1875.37
   11    14    14     1.09718185    -0.59718368  -109.90313445    -0.00000054    -0.00000022  0.44D-08  0.56D-07  1875.37
   11    15    15     1.09718020    -0.59718366  -109.90313442    -0.00000058    -0.00000024  0.48D-08  0.60D-07  1875.37
   12     1     1     1.09170767    -0.58844156  -109.93972787    -0.00000014    -0.00000006  0.33D-09  0.17D-07  2062.63
   12     2     2     1.09170675    -0.58844155  -109.93972786    -0.00000015    -0.00000007  0.35D-09  0.19D-07  2062.63
   12     3     3     1.09170710    -0.58844155  -109.93972786    -0.00000015    -0.00000007  0.34D-09  0.18D-07  2062.63
   12     4     4     1.09170643    -0.58844155  -109.93972786    -0.00000015    -0.00000007  0.36D-09  0.19D-07  2062.63
   12     5     5     1.09170618    -0.58844155  -109.93972786    -0.00000016    -0.00000007  0.36D-09  0.19D-07  2062.63
   12     6     6     1.09170574    -0.58844155  -109.93972785    -0.00000016    -0.00000008  0.38D-09  0.21D-07  2062.63
   12     7     7     1.09170572    -0.58844155  -109.93972785    -0.00000016    -0.00000008  0.40D-09  0.21D-07  2062.63
   12     8     8     1.09263532    -0.59018852  -109.92377766    -0.00000078    -0.00000039  0.29D-07  0.78D-07  2062.63
   12     9     9     1.09263504    -0.59018851  -109.92377766    -0.00000079    -0.00000039  0.29D-07  0.78D-07  2062.63
   12    10    10     1.09263337    -0.59018842  -109.92377756    -0.00000084    -0.00000045  0.27D-07  0.97D-07  2062.63
   12    11    11     1.09263174    -0.59018841  -109.92377755    -0.00000087    -0.00000044  0.30D-07  0.90D-07  2062.63
   12    12    12     1.09263153    -0.59018837  -109.92377751    -0.00000086    -0.00000047  0.26D-07  0.10D-06  2062.63
   12    13    13     1.09719866    -0.59718390  -109.90313467    -0.00000020    -0.00000009  0.16D-08  0.23D-07  2062.63
   12    14    14     1.09719734    -0.59718390  -109.90313466    -0.00000022    -0.00000009  0.15D-08  0.24D-07  2062.63
   12    15    15     1.09719621    -0.59718389  -109.90313465    -0.00000023    -0.00000010  0.15D-08  0.27D-07  2062.63
   13     1     1     1.09171382    -0.58844162  -109.93972793    -0.00000006    -0.00000003  0.14D-09  0.78D-08  2247.74
   13     2     2     1.09171314    -0.58844162  -109.93972793    -0.00000007    -0.00000003  0.14D-09  0.89D-08  2247.74
   13     3     3     1.09171344    -0.58844162  -109.93972793    -0.00000006    -0.00000003  0.15D-09  0.86D-08  2247.74
   13     4     4     1.09171295    -0.58844162  -109.93972793    -0.00000007    -0.00000003  0.15D-09  0.90D-08  2247.74
   13     5     5     1.09171313    -0.58844162  -109.93972793    -0.00000007    -0.00000003  0.15D-09  0.90D-08  2247.74
   13     6     6     1.09171256    -0.58844162  -109.93972793    -0.00000007    -0.00000003  0.14D-09  0.98D-08  2247.74
   13     7     7     1.09171260    -0.58844162  -109.93972792    -0.00000007    -0.00000004  0.14D-09  0.10D-07  2247.74
   13     8     8     1.09264550    -0.59018891  -109.92377806    -0.00000040    -0.00000020  0.36D-08  0.48D-07  2247.74
   13     9     9     1.09264533    -0.59018891  -109.92377805    -0.00000040    -0.00000020  0.36D-08  0.48D-07  2247.74
   13    10    10     1.09264341    -0.59018885  -109.92377799    -0.00000043    -0.00000023  0.41D-08  0.55D-07  2247.74
   13    11    11     1.09264410    -0.59018885  -109.92377799    -0.00000044    -0.00000023  0.52D-08  0.55D-07  2247.74
   13    12    12     1.09264263    -0.59018882  -109.92377796    -0.00000045    -0.00000025  0.58D-08  0.58D-07  2247.74
   13    13    13     1.09720520    -0.59718399  -109.90313475    -0.00000008    -0.00000004  0.30D-09  0.11D-07  2247.74
   13    14    14     1.09720611    -0.59718399  -109.90313475    -0.00000009    -0.00000004  0.30D-09  0.11D-07  2247.74
   13    15    15     1.09720439    -0.59718399  -109.90313474    -0.00000010    -0.00000005  0.34D-09  0.12D-07  2247.74
   14     1     1     1.09171684    -0.58844164  -109.93972795    -0.00000002    -0.00000002  0.28D-10  0.49D-08  2364.93
   14     2     2     1.09171394    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.13D-09  0.76D-08  2364.93
   14     3     3     1.09171316    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.14D-09  0.88D-08  2364.93
   14     4     4     1.09171348    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.14D-09  0.85D-08  2364.93
   14     5     5     1.09171295    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.15D-09  0.90D-08  2364.93
   14     6     6     1.09171312    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.15D-09  0.89D-08  2364.93
   14     7     7     1.09171256    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.14D-09  0.98D-08  2364.93
   14     8     8     1.09266802    -0.59018927  -109.92377841    -0.00000035    -0.00000009  0.47D-08  0.18D-07  2364.93
   14     9     9     1.09266723    -0.59018926  -109.92377841    -0.00000035    -0.00000010  0.47D-08  0.20D-07  2364.93
   14    10    10     1.09266749    -0.59018926  -109.92377840    -0.00000041    -0.00000010  0.49D-08  0.20D-07  2364.93
   14    11    11     1.09265188    -0.59018911  -109.92377825    -0.00000026    -0.00000010  0.14D-08  0.24D-07  2364.93
   14    12    12     1.09265178    -0.59018911  -109.92377825    -0.00000029    -0.00000010  0.14D-08  0.24D-07  2364.93
   14    13    13     1.09722063    -0.59718405  -109.90313482    -0.00000006    -0.00000001  0.37D-09  0.29D-08  2364.93
   14    14    14     1.09722045    -0.59718405  -109.90313481    -0.00000006    -0.00000001  0.39D-09  0.33D-08  2364.93
   14    15    15     1.09722012    -0.59718406  -109.90313481    -0.00000007    -0.00000001  0.38D-09  0.35D-08  2364.93
   15     1     1     1.09171684    -0.58844164  -109.93972795    -0.00000000    -0.00000002  0.25D-10  0.49D-08  2434.94
   15     2     2     1.09171394    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.13D-09  0.76D-08  2434.94
   15     3     3     1.09171318    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.14D-09  0.88D-08  2434.94
   15     4     4     1.09171348    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.15D-09  0.85D-08  2434.94
   15     5     5     1.09171295    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.15D-09  0.90D-08  2434.94
   15     6     6     1.09171313    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.15D-09  0.90D-08  2434.94
   15     7     7     1.09171256    -0.58844162  -109.93972793    -0.00000000    -0.00000003  0.14D-09  0.98D-08  2434.94
   15     8     8     1.09266881    -0.59018933  -109.92377847    -0.00000006    -0.00000001  0.22D-09  0.22D-08  2434.94
   15     9     9     1.09266941    -0.59018933  -109.92377847    -0.00000006    -0.00000001  0.20D-09  0.18D-08  2434.94
   15    10    10     1.09266907    -0.59018933  -109.92377847    -0.00000007    -0.00000001  0.22D-09  0.22D-08  2434.94
   15    11    11     1.09266888    -0.59018932  -109.92377846    -0.00000020    -0.00000004  0.11D-08  0.81D-08  2434.94
   15    12    12     1.09266888    -0.59018932  -109.92377846    -0.00000020    -0.00000004  0.11D-08  0.82D-08  2434.94
   15    13    13     1.09722063    -0.59718405  -109.90313482    -0.00000000    -0.00000001  0.37D-09  0.29D-08  2434.94
   15    14    14     1.09722045    -0.59718405  -109.90313481    -0.00000000    -0.00000001  0.39D-09  0.33D-08  2434.94
   15    15    15     1.09722012    -0.59718406  -109.90313481    -0.00000000    -0.00000001  0.38D-09  0.35D-08  2434.94


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.1%   2.8%  87.8%

 Initialization:   0.0%
 Other:            9.1%

 Total CPU:     2434.9 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/22/\222           0.9541076  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000001   0.0000000
                      0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2//222\222           0.0000000   0.9298394   0.0000000   0.0000000   0.2138285   0.0000000  -0.0000000  -0.0000000  -0.0000001
                      0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2/2/22\222           0.0000000   0.0000000   0.0809975  -0.0000000  -0.0000000   0.8495288   0.0000000   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000000  -0.4059745  -0.0000000   0.0000000
 2222//\222          -0.0000000  -0.0000000   0.8428022   0.0000000   0.0000000   0.1339564  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.0000000   0.4059744   0.0000000  -0.0000000
 222//2\222           0.0000000  -0.1912540   0.0000000   0.0000000   0.8316741   0.0000000  -0.0000000  -0.0000000  -0.0000001
                      0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4059745
 2/222/\222           0.0000000   0.0956270   0.0000000   0.0000000  -0.4158370   0.0000000  -0.0000000  -0.0000000  -0.0000001
                      0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.8119492
 222/2/\222           0.0000000   0.0000000  -0.0000000   0.7836517   0.0000000  -0.0000000   0.3378609   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.4059745   0.0000000
 22//22\222          -0.0000000  -0.0000000  -0.0000000   0.1504609   0.0000000  -0.0000000   0.5843724  -0.0000000   0.0000000
                     -0.0000000   0.0000000   0.0000001   0.0000000   0.7031685  -0.0000000
 22/2/2\222          -0.0000000  -0.0000000  -0.4398278   0.0000000   0.0000000   0.4131357  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000  -0.0000001  -0.0000000   0.7031682   0.0000000  -0.0000000
 2/\222/222           0.0000000  -0.0000021  -0.0000000   0.0000000  -0.0000008  -0.0000000  -0.0000000   0.0000000   0.6784671
                      0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000009
 22/22\/222           0.0000003   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0153393  -0.0000000
                      0.6782987   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
 2/22/2\222           0.0000000  -0.0000000   0.0000000  -0.5230449   0.0000000  -0.0000000   0.6743026   0.0000000  -0.0000000
                      0.0000000   0.0000000  -0.0000001   0.0000000  -0.4059746   0.0000000
 222/\2/222           0.0000000   0.0000024   0.0000000  -0.0000000   0.0000003   0.0000000  -0.0000000  -0.0000000  -0.5875695
                     -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000007
 2222/\/222           0.0000000   0.0000000   0.0000008  -0.0000000  -0.0000000  -0.0000017   0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.5875574   0.0000000   0.0000011  -0.0000000   0.0000000
 222/2\/222          -0.0000000   0.0000000  -0.0000000  -0.0000012  -0.0000000  -0.0000000  -0.0000006  -0.0000000   0.0000000
                     -0.0000000   0.0000000  -0.5875572   0.0000000  -0.0000015  -0.0000000
 2/22\2/222           0.0000000  -0.0000000   0.0000000  -0.0000007   0.0000000   0.0000000  -0.0000018   0.0000000  -0.0000000
                      0.0000000   0.0000000   0.5875570  -0.0000000   0.0000005   0.0000000
 2/2\22/222           0.0000000   0.0000000  -0.0000001   0.0000000  -0.0000000  -0.0000001  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.5875570  -0.0000000   0.0000001  -0.0000000  -0.0000000
 220222/222          -0.0000007  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.4796302   0.0000000
                      0.0108466  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 222220/222           0.0000004  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4796298   0.0000000
                     -0.0108466   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 202222/222           0.0000004  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.4796298  -0.0000000
                     -0.0108464   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
 222202/222           0.0000003  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.2304213  -0.0000000
                      0.4207943  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
 222022/222          -0.0000006  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.2492081   0.0000000
                     -0.4099477  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 22/\22/222           0.0000000  -0.0000000   0.0000000   0.0000001   0.0000000   0.0000000   0.0000003   0.0000000  -0.0000000
                      0.0000000  -0.0000000   0.3392264  -0.0000000   0.0000002   0.0000000
 22/2\2/222           0.0000000   0.0000000  -0.0000012   0.0000000  -0.0000000  -0.0000010   0.0000000  -0.0000000   0.0000000
                     -0.0000000   0.3392264  -0.0000000   0.0000002  -0.0000000   0.0000000
 222/220222           0.0000000  -0.0000000   0.0000000   0.0000003   0.0000000   0.0000000  -0.0000023   0.0000000  -0.0000000
                      0.0000000  -0.0000000  -0.3033531  -0.0000000   0.0000042   0.0000000
 2222/20222           0.0000000   0.0000000   0.0000008  -0.0000000  -0.0000000  -0.0000047   0.0000000   0.0000000   0.0000000
                     -0.0000000  -0.3033528   0.0000000   0.0000026  -0.0000000   0.0000000
 2/22220222          -0.0000000   0.0000086  -0.0000000  -0.0000000   0.0000024  -0.0000000   0.0000000  -0.0000000   0.3032946
                     -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000035
 22222/0222          -0.0000010  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0068563   0.0000000
                      0.3031982   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 22/2220222           0.0000031  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.3031963   0.0000000
                      0.0068566  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
 2/\22/2222          -0.0000000  -0.0092289   0.0000000  -0.0000000   0.0401322  -0.0000000   0.0000000   0.0000000  -0.0000001
                      0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.1720466
 222/\/2222           0.0000000  -0.0053285   0.0000000   0.0000000   0.0231705  -0.0000000  -0.0000000   0.0000000   0.0000002
                      0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.1489968
 22/2/\2222           0.0000000   0.0000000  -0.0257372  -0.0000000  -0.0000000  -0.0274003   0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0476755   0.0000000  -0.1241642   0.0000000   0.0000000
 22//2\2222           0.0000000   0.0000000  -0.0000000  -0.0364048   0.0000000  -0.0000000   0.0093730  -0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0476758  -0.0000000   0.1241637  -0.0000000
 2202/22222           0.0000000   0.0000000   0.0300160   0.0000000  -0.0000000  -0.0281942   0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0035117   0.0000000  -0.1053573   0.0000000  -0.0000000
 220/222222          -0.0000000  -0.0000000  -0.0000000  -0.0102683   0.0000000  -0.0000000  -0.0398804   0.0000000   0.0000000
                     -0.0000000   0.0000000   0.0035120  -0.0000000  -0.1053571   0.0000000
 222/202222           0.0000000  -0.0000000  -0.0000000  -0.0240306   0.0000000   0.0000000   0.0132747  -0.0000000   0.0000000
                     -0.0000000  -0.0000000   0.0484607  -0.0000000   0.1053570  -0.0000000
 2222/02222           0.0000000  -0.0000000   0.0131965  -0.0000000   0.0000000   0.0240738  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0484611  -0.0000000   0.1053570  -0.0000000   0.0000000
 2022/22222           0.0000000  -0.0000000  -0.0232017  -0.0000000  -0.0000000  -0.0146757  -0.0000000  -0.0000000  -0.0000000
                      0.0000000   0.0484609  -0.0000000   0.1053570   0.0000000   0.0000000
 2/22022222           0.0000000   0.0173842  -0.0000000  -0.0000000   0.0212480   0.0000000  -0.0000000  -0.0000000  -0.0484611
                     -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.1053569
 202/222222           0.0000000   0.0000000   0.0000000   0.0274537  -0.0000000  -0.0000000   0.0000188  -0.0000000   0.0000000
                      0.0000000  -0.0000000   0.0484607   0.0000000   0.1053569   0.0000000
 2/20222222          -0.0000000   0.0249197   0.0000000  -0.0000000  -0.0115197  -0.0000000   0.0000000  -0.0000000  -0.0484613
                     -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.1053568
 2220/22222          -0.0000000  -0.0000000  -0.0200102   0.0000000   0.0000000   0.0187957   0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0484608   0.0000000  -0.1053567  -0.0000000  -0.0000000
 222/022222          -0.0000000  -0.0000000   0.0000000   0.0068451  -0.0000000   0.0000000   0.0265863   0.0000000  -0.0000000
                      0.0000000  -0.0000000   0.0484608   0.0000000  -0.1053566  -0.0000000
 2//\222222          -0.0000000  -0.0000000  -0.0234807   0.0000000   0.0000000  -0.0037319  -0.0000000   0.0000000  -0.0000000
                      0.0000000   0.0000000  -0.0000000   0.0993313   0.0000000  -0.0000000
 2//22\2222           0.0000000   0.0053284   0.0000000   0.0000000  -0.0231702   0.0000000  -0.0000000   0.0000000   0.0000001
                      0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0993312
 2//2\22222           0.0000000   0.0000000   0.0000000   0.0218328  -0.0000000   0.0000000   0.0094128  -0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000001   0.0000000   0.0993309  -0.0000000
 2/\/222222           0.0000000   0.0000000  -0.0161619   0.0000000  -0.0000000  -0.0294846  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0550512  -0.0000000   0.0860231   0.0000000  -0.0000000
 2/\2/22222           0.0000000  -0.0000000   0.0000000   0.0294320  -0.0000000   0.0000000  -0.0162579  -0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0550512   0.0000000   0.0860231  -0.0000000
 2/2\2/2222           0.0000000  -0.0000000   0.0447045   0.0000000   0.0000000  -0.0162041  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0476759  -0.0000000   0.0744986  -0.0000000  -0.0000000
 2/22\/2222          -0.0000000   0.0000000   0.0000000   0.0290928  -0.0000000  -0.0000000   0.0376119  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0476757   0.0000000  -0.0744983   0.0000000
 2/02222222          -0.0000000   0.0000002   0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000   0.0000000  -0.0709365
                      0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000001
 22022/2222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0016039   0.0000000
                     -0.0709187   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 20/2222222           0.0000002   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0709183  -0.0000000
                     -0.0016037  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 22/2202222           0.0000001   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0709183   0.0000000
                     -0.0016037  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 222//\2222           0.0000000   0.0000008   0.0000000  -0.0000000   0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.0550529
                      0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000   -0.000000    0.957071    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000   -0.041945   -0.000000   -0.000000    0.956152   -0.000000   -0.000000    0.000000   -0.000001   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.894423    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.340582    0.000000   -0.000000    0.000000
            -0.000000   -0.000000    0.000000   -0.000000    0.000000
 4           0.000000   -0.000000   -0.121412    0.000000    0.000000    0.949340   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000    0.956153    0.000000   -0.000000    0.041945   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.340582    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.894423   -0.000000   -0.000000    0.000000
            -0.000001   -0.000000   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000    0.949340    0.000000   -0.000000    0.121412    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.230160    0.000000    0.000000
            -0.000000    0.923196   -0.000000   -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.951451   -0.000000
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.923196    0.000000    0.000000
            -0.000000    0.230160   -0.000000   -0.000000    0.000000
 11          0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.951445    0.000000   -0.000000    0.000000    0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.951445
            -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 13         -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000    0.954625   -0.000000    0.000000
 14          0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000001
            -0.000000    0.000000    0.000000    0.954625    0.000000
 15         -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000   -0.000000   -0.000000    0.954625

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957071    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000   -0.000000    0.000000   -0.000000
 2           0.000000    0.957072   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000001    0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.957072   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.957072   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000    0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.957072    0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957072    0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000   -0.000000    0.000000    0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957073    0.000000   -0.000000   -0.000000
             0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.951454    0.000000   -0.000000
             0.000000    0.000000   -0.000000   -0.000000    0.000000
 9           0.000000   -0.000001    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.951451   -0.000000
             0.000000   -0.000000    0.000000    0.000000   -0.000000
 10          0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.951453
            -0.000000    0.000000    0.000000    0.000000   -0.000000
 11          0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.951445   -0.000000    0.000000   -0.000000    0.000000
 12          0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.951445   -0.000000    0.000000    0.000000
 13         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000    0.954625    0.000000    0.000000
 14          0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000    0.000000    0.954625    0.000000
 15         -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000
             0.000000    0.000000    0.000000    0.000000    0.954625

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00943108    -2.41713091       2212220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00944007    -2.41890593       2122220222                      
    85       0.00026717     1.37165753       2112221222                      
   105       0.00020039     1.02876343       2221121222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00943149    -2.41718348       2222210222                      
   100       0.00026693     1.37066541       2212211222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00945163    -2.42040290       2222120222                      
    88       0.00020063     1.02939437       2121221222                      
   110       0.00020062     1.02936095       2222111222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00945170    -2.42041238       2221220222                      
    90       0.00020063     1.02939042       2122121222                      
   106       0.00020062     1.02937368       2221211222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95707075 (fixed)   0.95707285 (relaxed)   0.95707075 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00000000   -0.46919386
 Singles      0.01526724   -0.07621515   -0.07804047
 Pairs        0.07645000   -0.00000000   -0.04120732
 Total        1.09172163   -0.07621515   -0.58844164
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128631
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46070943
 One electron energy                 -193.12760474
 Two electron energy                   83.18787678
 Virial quotient                       -2.65166056
 Correlation energy                    -0.58844165
 !MRCI STATE 1.1 Energy              -109.939727953761

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99370078 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369796 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99370078 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038922 (Pople, fixed reference)
 Cluster corrected energies          -109.99038638 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038922 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95615245 (fixed)   0.95707412 (relaxed)   0.95707202 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00000000   -0.46919578
 Singles      0.01526695   -0.07621434   -0.07804068
 Pairs        0.07644738   -0.00000005   -0.04120517
 Total        1.09171872   -0.07621439   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128631
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46071396
 One electron energy                 -193.12763595
 Two electron energy                   83.18790802
 Virial quotient                       -2.65166027
 Correlation energy                    -0.58844163
 !MRCI STATE 2.1 Energy              -109.939727934250

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369905 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369623 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369905 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038748 (Pople, fixed reference)
 Cluster corrected energies          -109.99038465 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038748 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.89442255 (fixed)   0.95707445 (relaxed)   0.95707236 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000438   -0.00000000   -0.46919605
 Singles      0.01526707   -0.07621444   -0.07804086
 Pairs        0.07644650   -0.00000000   -0.04120471
 Total        1.09171796   -0.07621444   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128631
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46072130
 One electron energy                 -193.12764474
 Two electron energy                   83.18791681
 Virial quotient                       -2.65165980
 Correlation energy                    -0.58844162
 !MRCI STATE 3.1 Energy              -109.939727930102

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369860 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369578 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369860 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038702 (Pople, fixed reference)
 Cluster corrected energies          -109.99038419 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038702 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.94934001 (fixed)   0.95707432 (relaxed)   0.95707222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000438   -0.00000000   -0.46919602
 Singles      0.01526699   -0.07621433   -0.07804079
 Pairs        0.07644689   -0.00000000   -0.04120481
 Total        1.09171827   -0.07621433   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128630
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46071878
 One electron energy                 -193.12764237
 Two electron energy                   83.18791444
 Virial quotient                       -2.65165996
 Correlation energy                    -0.58844162
 !MRCI STATE 4.1 Energy              -109.939727928591

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369878 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369596 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369878 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038720 (Pople, fixed reference)
 Cluster corrected energies          -109.99038437 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038720 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95615288 (fixed)   0.95707455 (relaxed)   0.95707246 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000438   -0.00000000   -0.46919621
 Singles      0.01526709   -0.07621444   -0.07804090
 Pairs        0.07644626    0.00000007   -0.04120451
 Total        1.09171773   -0.07621437   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128631
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46072450
 One electron energy                 -193.12764914
 Two electron energy                   83.18792122
 Virial quotient                       -2.65165959
 Correlation energy                    -0.58844162
 !MRCI STATE 5.1 Energy              -109.939727927744

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369846 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369564 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369846 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038689 (Pople, fixed reference)
 Cluster corrected energies          -109.99038406 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038689 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.89442250 (fixed)   0.95707447 (relaxed)   0.95707238 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00000000   -0.46919614
 Singles      0.01526705   -0.07621437   -0.07804086
 Pairs        0.07644648   -0.00000000   -0.04120461
 Total        1.09171791   -0.07621437   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128630
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46072186
 One electron energy                 -193.12764592
 Two electron energy                   83.18791799
 Virial quotient                       -2.65165976
 Correlation energy                    -0.58844162
 !MRCI STATE 6.1 Energy              -109.939727926830

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369857 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369575 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369857 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038699 (Pople, fixed reference)
 Cluster corrected energies          -109.99038416 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038699 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94934041 (fixed)   0.95707473 (relaxed)   0.95707263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000439   -0.00000000   -0.46919617
 Singles      0.01526721   -0.07621460   -0.07804102
 Pairs        0.07644574    0.00000000   -0.04120443
 Total        1.09171734   -0.07621460   -0.58844162
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35128631
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46072604
 One electron energy                 -193.12765042
 Two electron energy                   83.18792250
 Virial quotient                       -2.65165950
 Correlation energy                    -0.58844162
 !MRCI STATE 7.1 Energy              -109.939727925116

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99369823 (Davidson, fixed reference)
 Cluster corrected energies          -109.99369541 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99369823 (Davidson, rotated reference)

 Cluster corrected energies          -109.99038665 (Pople, fixed reference)
 Cluster corrected energies          -109.99038382 (Pople, relaxed reference)
 Cluster corrected energies          -109.99038665 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.92319587 (fixed)   0.95665584 (relaxed)   0.95145375 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01096494   -0.00000000   -0.47395908
 Singles      0.01638826   -0.07310189   -0.07493395
 Pairs        0.07729665    0.00000000   -0.04129630
 Total        1.10464985   -0.07310189   -0.59018933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33358914
 Nuclear energy                         0.00000000
 Kinetic energy                        41.50947866
 One electron energy                 -193.35841707
 Two electron energy                   83.43463860
 Virial quotient                       -2.64816090
 Correlation energy                    -0.59018933
 !MRCI STATE 8.1 Energy              -109.923778471514

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98554170 (Davidson, fixed reference)
 Cluster corrected energies          -109.97847061 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98554170 (Davidson, rotated reference)

 Cluster corrected energies          -109.98234175 (Pople, fixed reference)
 Cluster corrected energies          -109.97515290 (Pople, relaxed reference)
 Cluster corrected energies          -109.98234175 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95145118 (fixed)   0.95665557 (relaxed)   0.95145118 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01096983   -0.00000000   -0.47395893
 Singles      0.01638871   -0.07310213   -0.07493391
 Pairs        0.07729728    0.00000001   -0.04129650
 Total        1.10465581   -0.07310212   -0.59018933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33358914
 Nuclear energy                         0.00000000
 Kinetic energy                        41.50949415
 One electron energy                 -193.35845630
 Two electron energy                   83.43467783
 Virial quotient                       -2.64815991
 Correlation energy                    -0.59018933
 !MRCI STATE 9.1 Energy              -109.923778470797

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98554521 (Davidson, fixed reference)
 Cluster corrected energies          -109.97847097 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98554521 (Davidson, rotated reference)

 Cluster corrected energies          -109.98234536 (Pople, fixed reference)
 Cluster corrected energies          -109.97515326 (Pople, relaxed reference)
 Cluster corrected energies          -109.98234536 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.92319554 (fixed)   0.95665572 (relaxed)   0.95145340 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01096542   -0.00000000   -0.47395896
 Singles      0.01638831   -0.07310193   -0.07493393
 Pairs        0.07729692   -0.00000000   -0.04129644
 Total        1.10465065   -0.07310193   -0.59018933
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33358914
 Nuclear energy                         0.00000000
 Kinetic energy                        41.50947912
 One electron energy                 -193.35842004
 Two electron energy                   83.43464157
 Virial quotient                       -2.64816087
 Correlation energy                    -0.59018933
 !MRCI STATE 10.1 Energy             -109.923778470195

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98554217 (Davidson, fixed reference)
 Cluster corrected energies          -109.97847077 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98554217 (Davidson, rotated reference)

 Cluster corrected energies          -109.98234224 (Pople, fixed reference)
 Cluster corrected energies          -109.97515306 (Pople, relaxed reference)
 Cluster corrected energies          -109.98234224 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95144504 (fixed)   0.95665581 (relaxed)   0.95144504 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01098338   -0.00000000   -0.47395583
 Singles      0.01639264   -0.07310676   -0.07493532
 Pairs        0.07729406   -0.00000000   -0.04129816
 Total        1.10467008   -0.07310676   -0.59018932
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33358914
 Nuclear energy                         0.00000000
 Kinetic energy                        41.50949201
 One electron energy                 -193.35847357
 Two electron energy                   83.43469511
 Virial quotient                       -2.64816005
 Correlation energy                    -0.59018932
 !MRCI STATE 11.1 Energy             -109.923778457584

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98555362 (Davidson, fixed reference)
 Cluster corrected energies          -109.97847064 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98555362 (Davidson, rotated reference)

 Cluster corrected energies          -109.98235399 (Pople, fixed reference)
 Cluster corrected energies          -109.97515293 (Pople, relaxed reference)
 Cluster corrected energies          -109.98235399 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95144500 (fixed)   0.95665581 (relaxed)   0.95144500 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.01098346   -0.00000000   -0.47395598
 Singles      0.01639262   -0.07310660   -0.07493527
 Pairs        0.07729409    0.00000000   -0.04129807
 Total        1.10467017   -0.07310660   -0.59018932
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33358914
 Nuclear energy                         0.00000000
 Kinetic energy                        41.50948989
 One electron energy                 -193.35847196
 Two electron energy                   83.43469350
 Virial quotient                       -2.64816019
 Correlation energy                    -0.59018932
 !MRCI STATE 12.1 Energy             -109.923778456440

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98555367 (Davidson, fixed reference)
 Cluster corrected energies          -109.97847064 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98555367 (Davidson, rotated reference)

 Cluster corrected energies          -109.98235405 (Pople, fixed reference)
 Cluster corrected energies          -109.97515293 (Pople, relaxed reference)
 Cluster corrected energies          -109.98235405 (Pople, rotated reference)



 RESULTS FOR STATE 13.1
 ======================

 Coefficient of reference function:   C(0) = 0.95462486 (fixed)   0.95466943 (relaxed)   0.95462486 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009338    0.00000000   -0.46657695
 Singles      0.02045069   -0.08525416   -0.08882409
 Pairs        0.07677901   -0.00000000   -0.04178302
 Total        1.09732309   -0.08525416   -0.59718405
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30595077
 Nuclear energy                         0.00000000
 Kinetic energy                        41.30910848
 One electron energy                 -192.82505971
 Two electron energy                   82.92192489
 Virial quotient                       -2.66050609
 Correlation energy                    -0.59718405
 !MRCI STATE 13.1 Energy             -109.903134817079

 Properties without orbital relaxation:

 !MRCI STATE 13.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96125461 (Davidson, fixed reference)
 Cluster corrected energies          -109.96119343 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96125461 (Davidson, rotated reference)

 Cluster corrected energies          -109.95792796 (Pople, fixed reference)
 Cluster corrected energies          -109.95786588 (Pople, relaxed reference)
 Cluster corrected energies          -109.95792796 (Pople, rotated reference)



 RESULTS FOR STATE 14.1
 ======================

 Coefficient of reference function:   C(0) = 0.95462494 (fixed)   0.95466951 (relaxed)   0.95462494 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009338    0.00000000   -0.46657713
 Singles      0.02045054   -0.08525404   -0.08882404
 Pairs        0.07677899   -0.00000000   -0.04178287
 Total        1.09732291   -0.08525404   -0.59718405
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30595076
 Nuclear energy                         0.00000000
 Kinetic energy                        41.30910917
 One electron energy                 -192.82506335
 Two electron energy                   82.92192854
 Virial quotient                       -2.66050605
 Correlation energy                    -0.59718405
 !MRCI STATE 14.1 Energy             -109.903134813994

 Properties without orbital relaxation:

 !MRCI STATE 14.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96125450 (Davidson, fixed reference)
 Cluster corrected energies          -109.96119332 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96125450 (Davidson, rotated reference)

 Cluster corrected energies          -109.95792785 (Pople, fixed reference)
 Cluster corrected energies          -109.95786577 (Pople, relaxed reference)
 Cluster corrected energies          -109.95792785 (Pople, rotated reference)



 RESULTS FOR STATE 15.1
 ======================

 Coefficient of reference function:   C(0) = 0.95462508 (fixed)   0.95466966 (relaxed)   0.95462508 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009338    0.00000000   -0.00005082
 Singles      0.02045095   -0.08525431   -0.08882423
 Pairs        0.07677825   -0.51192975   -0.50830900
 Total        1.09732258   -0.59718406   -0.59718406
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.30595075
 Nuclear energy                         0.00000000
 Kinetic energy                        41.30911375
 One electron energy                 -192.82506196
 Two electron energy                   82.92192715
 Virial quotient                       -2.66050575
 Correlation energy                    -0.59718406
 !MRCI STATE 15.1 Energy             -109.903134811060

 Properties without orbital relaxation:

 !MRCI STATE 15.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.96125430 (Davidson, fixed reference)
 Cluster corrected energies          -109.96119312 (Davidson, relaxed reference)
 Cluster corrected energies          -109.96125430 (Davidson, rotated reference)

 Cluster corrected energies          -109.95792764 (Pople, fixed reference)
 Cluster corrected energies          -109.95786557 (Pople, relaxed reference)
 Cluster corrected energies          -109.95792764 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      742.49       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      4365.54   2482.49   1879.58      2.75      0.51
 REAL TIME  *      4593.80 SEC
 DISK USED  *       774.66 MB (local),        9.13 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(18)    =      -109.99370078  AU                              
 SETTING HLSDIAG(19)    =      -109.99369905  AU                              
 SETTING HLSDIAG(20)    =      -109.99369860  AU                              
 SETTING HLSDIAG(21)    =      -109.99369878  AU                              
 SETTING HLSDIAG(22)    =      -109.99369846  AU                              
 SETTING HLSDIAG(23)    =      -109.99369857  AU                              
 SETTING HLSDIAG(24)    =      -109.99369823  AU                              
 SETTING HLSDIAG(25)    =      -109.98554170  AU                              
 SETTING HLSDIAG(26)    =      -109.98554521  AU                              
 SETTING HLSDIAG(27)    =      -109.98554217  AU                              
 SETTING HLSDIAG(28)    =      -109.98555362  AU                              
 SETTING HLSDIAG(29)    =      -109.98555367  AU                              
 SETTING HLSDIAG(30)    =      -109.96125461  AU                              
 SETTING HLSDIAG(31)    =      -109.96125450  AU                              
 SETTING HLSDIAG(32)    =      -109.96125430  AU                              


         HLSDIAG
    -110.0175367
    -110.0175373
    -110.0175369
    -110.0175360
    -110.0175363
    -110.0175354
    -110.0175351
    -109.9770325
    -109.9770262
    -109.9770243
    -109.9607021
    -109.9607015
    -109.9607020
    -109.9606990
    -109.9606972
    -109.9606990
    -109.9606853
    -109.9937008
    -109.9936990
    -109.9936986
    -109.9936988
    -109.9936985
    -109.9936986
    -109.9936982
    -109.9855417
    -109.9855452
    -109.9855422
    -109.9855536
    -109.9855537
    -109.9612546
    -109.9612545
    -109.9612543
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  17

 Original energies:   -109.965310   -109.965310   -109.965310   -109.965310   -109.965310   -109.965310   -109.965310   -109.921470
                      -109.921470   -109.921470   -109.891548   -109.891548   -109.891548   -109.891548   -109.891548   -109.891548
                      -109.891548
 Replaced energies:   -110.017537   -110.017537   -110.017537   -110.017536   -110.017536   -110.017535   -110.017535   -109.977033
                      -109.977026   -109.977024   -109.960702   -109.960702   -109.960702   -109.960699   -109.960697   -109.960699
                      -109.960685

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  15

 Original energies:   -109.939728   -109.939728   -109.939728   -109.939728   -109.939728   -109.939728   -109.939728   -109.923778
                      -109.923778   -109.923778   -109.923778   -109.923778   -109.903135   -109.903135   -109.903135
 Replaced energies:   -109.993701   -109.993699   -109.993699   -109.993699   -109.993698   -109.993699   -109.993698   -109.985542
                      -109.985545   -109.985542   -109.985554   -109.985554   -109.961255   -109.961255   -109.961254



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01753734

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.06    -232.54       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.06      -0.00    1001.66       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          232.54   -1001.66      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.28       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -103.40     514.13      -0.09       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.24       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     103.40       0.00      -0.02    1538.89      -0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.42       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -514.13       0.02      -0.00      18.05      -0.00       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.50       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.09   -1538.89     -18.05      -0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8889.78       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     524.63

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.17       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.59
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    -524.63       0.00      -0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       2.67      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.69      -1.58       0.00       0.00       0.00      -0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.73      -3.12      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       4.75      -0.28      -0.00      -0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       1.63       0.00       0.00       0.48       0.00      -0.00      -0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -1.77      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.14       0.00      -0.00       4.77       0.00      -0.00       0.00

   18   1.1  1.5  0.5      -0.00       0.00       0.00       0.02      74.98    -603.08      -0.04      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00     818.20       0.07      -0.01      24.16       0.00      -0.00      -0.00

   19   2.1  1.5  0.5      -0.00      -0.00       0.00       0.06    -361.57    -617.33      -0.04      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00    -317.18      -0.01      -0.02    -332.45       0.00      -0.00       0.00

   20   3.1  1.5  0.5      -0.00      -0.00       0.00     442.34       0.04       0.09    -395.98      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.03     357.90    -473.68      -0.00      -0.00      -0.00       0.00

   21   4.1  1.5  0.5      -0.02      -0.06    -442.34      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                         -818.20     317.18       0.03      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   22   5.1  1.5  0.5     -74.98     361.57      -0.04      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.07       0.01    -357.90      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5     603.08     617.33      -0.09       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.01       0.02     473.68      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   24   7.1  1.5  0.5       0.04       0.04     395.98      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                          -24.16     332.45       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -302.89      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -302.90
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00     302.89       0.00      -0.00

   27  10.1  1.5  0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     302.90       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.97      -2.46      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.04       0.00      -0.00      -0.94      -0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00      -0.00       1.61      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00
                            2.48      -0.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30  13.1  1.5  0.5      -0.00      -0.00      -0.00       1.38       0.00       0.00      -1.23      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       1.12      -1.48       0.00       0.00      -0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00      -0.92      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.61      -1.22       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5      -1.89      -1.78      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.59      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.61      -1.09       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       2.73       0.00       0.00       0.43       0.00      -0.00      -0.00

   34  17.1  1.5  0.5      -0.02       1.33      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.94      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00

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

   69   1.1  0.5  0.5       0.00       0.00       0.00    -303.73      -0.02      -0.01     271.89      -0.00       0.00      -0.00
                            0.00       0.00      -0.00       0.01    -245.74     325.24       0.02      -0.00       0.00      -0.00

   70   2.1  0.5  0.5       0.00      -0.00      -0.00      -0.02     245.69     199.25       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00     442.17       0.04      -0.00     212.41      -0.00       0.00      -0.00

   71   3.1  0.5  0.5      -0.02      -0.03    -405.80       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                         -368.94     -19.96       0.02       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5    -157.76     129.06      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00
                           -0.01      -0.02    -322.10       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   73   5.1  0.5  0.5      -0.00       0.00      -0.00      -0.01      62.65     558.07       0.02       0.00      -0.00      -0.00
                            0.00       0.00       0.00    -409.31      -0.03      -0.01      85.23      -0.00       0.00       0.00

   74   6.1  0.5  0.5       0.00       0.00      38.69       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                          424.00    -314.86       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   75   7.1  0.5  0.5    -386.31    -473.98       0.05       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.01      -0.02    -249.85       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00    -562.31      -0.04      -0.01      54.45    -393.02       0.00       0.00
                           -0.00      -0.00       0.00       0.01     -21.24    -571.96      -0.02      -0.00      -0.00    -425.06

   77   9.1  0.5  0.5       0.00      -0.00      -0.00       0.04    -633.71     171.76       0.02       0.00       0.00     708.66
                           -0.00      -0.00      -0.00     118.57      -0.00       0.02    -645.77     708.66      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00     221.65       0.03      -0.02     621.39     717.73      -0.00      -0.00
                           -0.00      -0.00       0.00       0.05    -637.33    -143.61       0.01      -0.00      -0.00    -699.23

   79  11.1  0.5  0.5      -0.02      -0.03    -519.05      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                          274.26     596.53      -0.05       0.00      -0.00      -0.00      -0.00       0.00     708.64      -0.00

   80  12.1  0.5  0.5    -509.02     414.68      -0.00       0.00       0.00      -0.00       0.00      -0.00    -708.64      -0.00
                            0.02       0.03     519.05       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   81  13.1  0.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     199.17      -0.00

   82  14.1  0.5  0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -199.17      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   83  15.1  0.5  0.5      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     199.17
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -199.17       0.00       0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.73      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00       3.12       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -2.67       0.00       0.00      -0.00      -0.00       1.77      -0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.02       0.06     442.34
                            0.00      -0.00      -0.00       0.00      -1.63       0.00      -0.14    -818.20     317.18       0.03

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      74.98    -361.57       0.04
                           -0.00       0.69      -0.00      -4.75      -0.00      -0.00      -0.00      -0.07       0.01    -357.90

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -603.08    -617.33       0.09
                           -0.00       1.58      -0.00       0.28      -0.00      -0.00       0.00       0.01       0.02     473.68

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.04      -0.04    -395.98
                           -0.00      -0.00      -0.00       0.00      -0.48       0.00      -4.77     -24.16     332.45       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   11  11.1  1.5  1.5   12473.90       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00     904.36       0.00      -0.01      -0.00       0.01       0.00      -0.00       0.00

   12  12.1  1.5  1.5       0.00   12474.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.61
                           -0.00      -0.00      -0.00      -0.24     504.98      -0.00    -290.93       2.48      -0.75      -0.00

   13  13.1  1.5  1.5       0.00       0.00   12473.91       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -904.36       0.00       0.00      -0.00       0.00     598.88       0.00      -0.00      -0.00      -0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00   12474.57       0.00       0.00       0.00      -0.00      -0.00       0.92
                           -0.00       0.24       0.00       0.00     273.97      -0.00    1589.52       0.61      -1.22       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00   12474.98       0.00       0.00       1.89       1.78       0.00
                            0.01    -504.98      -0.00    -273.97      -0.00      -0.00       0.44      -0.00      -0.00      -1.59

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00   12474.58       0.00      -0.00      -0.00       0.00
                            0.00       0.00    -598.88       0.00       0.00      -0.00       0.02      -0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00   12477.59       0.02      -1.33       0.00
                           -0.01     290.93      -0.00   -1589.52      -0.44      -0.02      -0.00      -0.00      -0.00      -0.94

   18   1.1  1.5  0.5      -0.00       0.00       0.00      -0.00       1.89      -0.00       0.02       0.13       0.00       0.00
                           -0.00      -2.48       0.00      -0.61       0.00       0.00       0.00       0.00      -0.02     -77.51

   19   2.1  1.5  0.5      -0.00       0.00       0.00      -0.00       1.78      -0.00      -1.33       0.00       0.00       0.00
                            0.00       0.75       0.00       1.22       0.00      -0.00       0.00       0.02      -0.00     333.89

   20   3.1  1.5  0.5      -0.00      -1.61       0.00       0.92       0.00       0.00       0.00       0.00       0.00       0.10
                           -0.00       0.00       0.00      -0.00       1.59      -0.00       0.94      77.51    -333.89      -0.00

   21   4.1  1.5  0.5      -0.00       0.00      -1.38       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.04      -0.00      -0.00       0.00       0.00      -2.73       0.00      -0.00      -0.00      -0.00

   22   5.1  1.5  0.5       0.97      -0.00      -0.00       0.00       0.00      -0.61       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.12       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       2.46       0.00      -0.00      -0.00       0.00       1.09      -0.00       0.00       0.00       0.00
                            0.00      -0.00       1.48      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   24   7.1  1.5  0.5       0.00      -0.00       1.23       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.94      -0.00      -0.00      -0.00      -0.00      -0.43      -0.00      -0.00       0.00      -0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   26   9.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27  10.1  1.5  0.5      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   28  11.1  1.5  0.5       0.00       0.15       0.01      -0.15     790.33      -0.00    -420.63       0.00       0.00       0.00
                           -0.00     -55.06       0.00     315.14       0.12       0.01       0.02       0.00      -0.00       0.89

   29  12.1  1.5  0.5      -0.15       0.00     543.61       0.00      -0.00      -0.14       0.00       0.00       0.00       0.00
                           55.06      -0.00      -0.11      -0.01       0.00     874.50       0.00      -0.00       0.00      -0.00

   30  13.1  1.5  0.5      -0.01    -543.61      -0.00     310.90       0.18       0.01       0.06       0.00       0.00       0.00
                           -0.00       0.11       0.00      -0.16     538.68      -0.00     319.37       0.24      -1.04      -0.00

   31  14.1  1.5  0.5       0.15      -0.00    -310.90       0.00      -0.00       0.10       0.00       0.00       0.00       0.00
                         -315.14       0.01       0.16       0.00      -0.00     336.64      -0.00       0.00      -0.00       0.00

   32  15.1  1.5  0.5    -790.33       0.00      -0.18       0.00      -0.00    -389.48      -0.00       0.00       0.00       0.00
                           -0.12      -0.00    -538.68       0.00       0.00      -0.13      -0.00      -0.00       0.00       0.00

   33  16.1  1.5  0.5       0.00       0.14      -0.01      -0.10     389.48       0.00     164.87       0.00       0.00       0.00
                           -0.01    -874.50       0.00    -336.64       0.13      -0.00       0.02      -0.00       0.00      -0.59

   34  17.1  1.5  0.5     420.63      -0.00      -0.06      -0.00       0.00    -164.87       0.00       0.00       0.00       0.00
                           -0.02      -0.00    -319.37       0.00       0.00      -0.02      -0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03      -0.07    -510.78
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -944.78     366.24       0.04

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -86.58     417.51      -0.05
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.09       0.01    -413.27

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     696.38     712.83      -0.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01       0.03     546.96

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.05       0.05     457.24
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -27.90     383.88       0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       1.85
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       2.86      -0.87      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.06
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.70      -1.41       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.18      -2.06      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.84

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03       1.54      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.09

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

   69   1.1  0.5  0.5       0.00     -25.77       0.00      14.74       0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.01       0.00      -0.01      25.53      -0.00      15.14     106.45    -458.51       0.03

   70   2.1  0.5  0.5      -0.00       0.00       0.00      -0.00      12.42      -0.00     -19.40       0.00       0.00       0.00
                            0.00      28.25      -0.00      21.86      -0.00      -0.00      -0.00       0.02       0.03     458.73

   71   3.1  0.5  0.5       0.00      -0.00      29.55       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           10.75       0.00       0.00      -0.00      -0.00      24.67       0.00      -0.00       0.00       0.00

   72   4.1  0.5  0.5      -4.79       0.00       0.00      -0.00      -0.00      14.05       0.00       0.00       0.00       0.00
                            0.00      -0.00      23.45       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -0.00       0.01       0.00      -0.01      39.87      -0.00      -9.07       0.00       0.00       0.00
                           -0.00     -30.44       0.00      -0.16       0.01       0.00       0.00       0.00       0.01     105.49

   74   6.1  0.5  0.5      -0.00       0.00      -2.82      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                           10.70      -0.00      -0.00       0.00       0.00     -36.94      -0.00      -0.00       0.00      -0.00

   75   7.1  0.5  0.5      42.16       0.00      -0.00      -0.00       0.00      14.31      -0.00       0.00       0.00       0.00
                            0.00      -0.00      18.19       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   76   8.1  0.5  0.5       0.00     128.48      -0.00      14.72      -0.03      -0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.03       0.00      -0.03     129.57      -0.00     -19.45     780.04     195.00      -0.05

   77   9.1  0.5  0.5       0.00      -0.02      -0.00       0.01     -55.27       0.00    -139.78       0.00       0.00       0.00
                            0.00     -57.45       0.00     138.89       0.05       0.00       0.00       0.03       0.04     599.36

   78  10.1  0.5  0.5      -0.00     -19.88      -0.00    -149.71      -0.03      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      16.38      -0.00    -148.66    -153.22     579.58      -0.03

   79  11.1  0.5  0.5      -0.01       0.00    -118.82      -0.00       0.00       0.01      -0.00       0.00       0.00       0.00
                          149.89       0.00      -0.01      -0.00       0.00      11.13      -0.00       0.00       0.00      -0.00

   80  12.1  0.5  0.5      48.25      -0.00      -0.01       0.00       0.00    -142.35      -0.00       0.00       0.00       0.00
                            0.01      -0.00     118.82       0.00      -0.00      -0.01       0.00       0.00       0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.01       0.00       0.00       0.00       0.00

   82  14.1  0.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.01       0.00       0.00      -0.00       0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.02    -234.29
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -213.01     -11.53       0.01

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -91.08      74.51      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.01    -185.96

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      22.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     244.80    -181.79       0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -223.04    -273.65       0.03
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01      -0.01    -144.25

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01      -0.02    -299.67
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     158.35     344.41      -0.03

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -293.88     239.42      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.01       0.02     299.67

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5      -0.02     -74.98     603.08       0.04       0.00       0.00       0.00       0.00      -0.00      -0.00
                          818.20       0.07      -0.01      24.16       0.00      -0.00      -0.00      -0.00      -2.48       0.00

    2   2.1  1.5  1.5      -0.06     361.57     617.33       0.04       0.00       0.00      -0.00       0.00      -0.00      -0.00
                         -317.18      -0.01      -0.02    -332.45       0.00      -0.00       0.00       0.00       0.75       0.00

    3   3.1  1.5  1.5    -442.34      -0.04      -0.09     395.98       0.00       0.00       0.00       0.00       1.61      -0.00
                           -0.03     357.90    -473.68      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       1.38
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.04      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.97       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.12

    6   6.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -2.46      -0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.48

    7   7.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -1.23
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.94      -0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00    -302.89      -0.00       0.00      -0.00      -0.00

    9   9.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00     302.90       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     302.89      -0.00      -0.00      -0.00      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00    -302.90       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   11  11.1  1.5  1.5      -0.00       0.97       2.46       0.00      -0.00      -0.00      -0.00       0.00      -0.15      -0.01
                           -0.04       0.00      -0.00      -0.94      -0.00       0.00       0.00       0.00     -55.06       0.00

   12  12.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.15       0.00    -543.61
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      55.06       0.00      -0.11

   13  13.1  1.5  1.5      -1.38      -0.00      -0.00       1.23       0.00      -0.00       0.00       0.01     543.61      -0.00
                            0.00       1.12      -1.48       0.00       0.00      -0.00       0.00      -0.00       0.11      -0.00

   14  14.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.15       0.00     310.90
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -315.14       0.01       0.16

   15  15.1  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     790.33      -0.00       0.18
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.12      -0.00    -538.68

   16  16.1  1.5  1.5       0.00      -0.61       1.09      -0.00      -0.00      -0.00      -0.00      -0.00      -0.14       0.01
                            2.73       0.00       0.00       0.43       0.00      -0.00      -0.00      -0.01    -874.50       0.00

   17  17.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -420.63       0.00       0.06
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.02      -0.00    -319.37

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.24

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       1.04

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.89       0.00       0.00

   21   4.1  1.5  0.5       0.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -34.47     171.38      -0.03       0.00       0.00       0.00       0.00      -0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           34.47       0.00      -0.01     512.96      -0.00       0.00      -0.00      -0.00       0.23      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -171.38       0.01      -0.00       6.02      -0.00       0.00      -0.00      -0.00       0.53      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.50       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -512.96      -6.02      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00    8889.78       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00     174.88       0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    8891.17       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    8891.59       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -174.88       0.00      -0.00      -0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.90       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     301.45

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12474.02       0.00
                            0.00      -0.23      -0.53       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12473.91
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00    -301.45       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.58      -0.09      -0.00      -0.00       0.00       0.00      -0.00       0.08       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.54       0.00       0.00       0.16       0.00      -0.00      -0.00       0.00    -168.33      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -199.63

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05       0.00      -0.00       1.59       0.00      -0.00       0.00      -0.00      96.98      -0.00

   35   1.1  1.5 -0.5       0.03      86.58    -696.38      -0.05      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                          944.78       0.09      -0.01      27.90       0.00      -0.00      -0.00      -0.00      -2.86       0.00

   36   2.1  1.5 -0.5       0.07    -417.51    -712.83      -0.05      -0.00      -0.00       0.00      -0.00       0.00       0.00
                         -366.24      -0.01      -0.03    -383.88       0.00      -0.00       0.00       0.00       0.87       0.00

   37   3.1  1.5 -0.5     510.78       0.05       0.10    -457.24      -0.00      -0.00      -0.00      -0.00      -1.85       0.00
                           -0.04     413.27    -546.96      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.59
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.04      -0.00      -0.00

   39   5.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       1.13      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -1.29

   40   6.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       2.84       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.71

   41   7.1  1.5 -0.5      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       1.43
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       1.09      -0.00      -0.00

   42   8.1  1.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00    -349.75      -0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -349.76      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00     349.75       0.00      -0.00      -0.00      -0.00       0.00

   44  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00     349.76       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   45  11.1  1.5 -0.5       0.00      -1.13      -2.84      -0.00       0.00       0.00       0.00       0.00       0.18       0.01
                           -0.04       0.00      -0.00      -1.09      -0.00       0.00       0.00      -0.00     -63.58       0.00

   46  12.1  1.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.18       0.00     627.71
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      63.58      -0.00      -0.13

   47  13.1  1.5 -0.5       1.59       0.00       0.00      -1.43      -0.00       0.00      -0.00      -0.01    -627.71      -0.00
                            0.00       1.29      -1.71       0.00       0.00      -0.00       0.00      -0.00       0.13       0.00

   48  14.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.17      -0.00    -359.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -363.90       0.02       0.18

   49  15.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -912.60       0.00      -0.20
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.14      -0.00    -622.02

   50  16.1  1.5 -0.5      -0.00       0.71      -1.26       0.00       0.00       0.00       0.00       0.00       0.16      -0.01
                            3.15       0.00       0.00       0.50       0.00      -0.00      -0.00      -0.01   -1009.79       0.00

   51  17.1  1.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     485.71      -0.00      -0.07
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.03      -0.00    -368.77

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
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      28.58      -0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -33.40

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.04    -485.42    -165.73       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -107.10      -0.02       0.02    -677.86       0.00      -0.00       0.00      -0.00       2.69      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -7.68

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03    -512.66     167.29       0.02      -0.00      -0.00       0.00      -0.00       0.01       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -214.84      -0.01      -0.01     191.79      -0.00       0.00      -0.00       0.00     -18.22       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -944.64       0.00     104.20       0.00       0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.01      -0.00     137.21

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      21.36       0.00     112.07      -0.00      -0.01

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       9.10     758.07       0.03      -0.00      -0.00    -818.27       0.00      -0.04      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -756.21      -0.05      -0.01      53.85     818.27      -0.00      -0.00       0.00     171.87      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00     229.98       0.00      -0.00       0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00    -229.98       0.00       0.00       0.00      -0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   84   1.1  0.5 -0.5    -175.36      -0.01      -0.01     156.98      -0.00       0.00      -0.00       0.00     -14.88       0.00
                            0.01    -141.88     187.78       0.01      -0.00       0.00      -0.00      -0.00       0.00       0.00

   85   2.1  0.5 -0.5      -0.01     141.85     115.04       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                          255.29       0.02      -0.00     122.64      -0.00       0.00      -0.00       0.00      16.31      -0.00

   86   3.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      17.06
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       6.20       0.00       0.00

   87   4.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -2.77       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      13.54

   88   5.1  0.5 -0.5      -0.01      36.17     322.20       0.01       0.00      -0.00      -0.00      -0.00       0.01       0.00
                         -236.32      -0.02      -0.01      49.21      -0.00       0.00       0.00      -0.00     -17.58       0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -1.63
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       6.18      -0.00      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      24.34       0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      10.50

   91   8.1  0.5 -0.5    -324.65      -0.02      -0.01      31.44    -226.91       0.00       0.00       0.00      74.18      -0.00
                            0.01     -12.26    -330.22      -0.01      -0.00      -0.00    -245.41      -0.00       0.02       0.00

   92   9.1  0.5 -0.5       0.02    -365.87      99.17       0.01       0.00       0.00     409.14       0.00      -0.01      -0.00
                           68.46      -0.00       0.01    -372.84     409.14      -0.00      -0.00       0.00     -33.17       0.00

   93  10.1  0.5 -0.5     127.97       0.02      -0.01     358.76     414.38      -0.00      -0.00      -0.00     -11.48      -0.00
                            0.03    -367.96     -82.91       0.00      -0.00      -0.00    -403.70      -0.00      -0.00       0.00

   94  11.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     -68.60
                            0.00      -0.00      -0.00      -0.00       0.00     409.13      -0.00      86.54       0.00      -0.01

   95  12.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00    -409.13      -0.00      27.86      -0.00      -0.01
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      68.60

   96  13.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00     114.99      -0.00       0.00       0.00      -0.00

   97  14.1  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00    -114.99      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   98  15.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00     114.99       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -114.99       0.00       0.00       0.00      -0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00      -1.89       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.61       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -1.78       0.00       1.33       0.00       0.00       0.00       0.00       0.00       0.00
                            1.22       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.92      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.59      -0.00       0.94       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -2.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00      -0.00       0.61      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      -0.00      -1.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.43      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.15    -790.33       0.00     420.63       0.00       0.00       0.00       0.00       0.00       0.00
                          315.14       0.12       0.01       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5      -0.00       0.00       0.14      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00     874.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5    -310.90      -0.18      -0.01      -0.06       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.16     538.68      -0.00     319.37       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00      -0.10      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     336.64      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5      -0.00      -0.00     389.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.13      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.10    -389.48       0.00    -164.87       0.00       0.00       0.00       0.00       0.00       0.00
                         -336.64       0.13       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00      -0.00     164.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.03     -86.58     696.38
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     944.78       0.09      -0.01

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.07     417.51     712.83
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -366.24      -0.01      -0.03

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -510.78      -0.05      -0.10
                           -0.00      -0.00       0.59      -0.00       0.00      -0.00      -0.00      -0.04     413.27    -546.96

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.03       0.07     510.78      -0.00      -0.00       0.00
                            0.00      -0.54       0.00      -0.05    -944.78     366.24       0.04       0.00       0.00       0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00      86.58    -417.51       0.05       0.00       0.00       0.00
                           -1.58      -0.00      -0.00      -0.00      -0.09       0.01    -413.27      -0.00      -0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00    -696.38    -712.83       0.10      -0.00      -0.00       0.00
                            0.09      -0.00      -0.00       0.00       0.01       0.03     546.96      -0.00       0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.05      -0.05    -457.24       0.00      -0.00      -0.00
                            0.00      -0.16       0.00      -1.59     -27.90     383.88       0.00      -0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       1.13       2.84
                            0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.04       0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -1.85       0.00      -0.00       0.00
                           -0.08     168.33      -0.00     -96.98       2.86      -0.87      -0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.59      -0.00      -0.00
                           -0.00       0.00     199.63       0.00      -0.00      -0.00      -0.00       0.00       1.29      -1.71

   31  14.1  1.5  0.5   12474.57       0.00       0.00       0.00      -0.00      -0.00       1.06       0.00       0.00      -0.00
                            0.00      91.32      -0.00     529.84       0.70      -1.41       0.00      -0.00      -0.00       0.00

   32  15.1  1.5  0.5       0.00   12474.98       0.00       0.00       2.18       2.06       0.00       0.00       0.00       0.00
                          -91.32      -0.00      -0.00       0.15      -0.00      -0.00      -1.84      -0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00   12474.58       0.00      -0.00      -0.00       0.00       0.00      -0.71       1.26
                            0.00       0.00      -0.00       0.01      -0.00       0.00       0.00       3.15       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00   12477.59       0.03      -1.54       0.00      -0.00       0.00      -0.00
                         -529.84      -0.15      -0.01      -0.00      -0.00      -0.00      -1.09      -0.00       0.00      -0.00

   35   1.1  1.5 -0.5      -0.00       2.18      -0.00       0.03       0.13       0.00       0.00       0.00       0.00       0.00
                           -0.70       0.00       0.00       0.00      -0.00       0.02      77.51      -0.00       0.00       0.00

   36   2.1  1.5 -0.5      -0.00       2.06      -0.00      -1.54       0.00       0.00       0.00       0.00       0.00       0.00
                            1.41       0.00      -0.00       0.00      -0.02       0.00    -333.89      -0.00       0.00      -0.00

   37   3.1  1.5 -0.5       1.06       0.00       0.00       0.00       0.00       0.00       0.10       0.00       0.00       0.00
                           -0.00       1.84      -0.00       1.09     -77.51     333.89       0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.28       0.00       0.00
                            0.00       0.00      -3.15       0.00       0.00       0.00       0.00       0.00      34.47    -171.38

   39   5.1  1.5 -0.5       0.00       0.00      -0.71       0.00       0.00       0.00       0.00       0.00       0.24       0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -34.47      -0.00       0.01

   40   6.1  1.5 -0.5      -0.00       0.00       1.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.42
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00     171.38      -0.01       0.00

   41   7.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.50      -0.00       0.00      -0.00       0.00      -0.03     512.96       6.02

   42   8.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   43   9.1  1.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.17     912.60      -0.00    -485.71       0.00       0.00       0.00       0.00       0.00       0.00
                          363.90       0.14       0.01       0.03      -0.00       0.00      -0.89       0.00      -0.00      -0.00

   46  12.1  1.5 -0.5       0.00      -0.00      -0.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02       0.00    1009.79       0.00       0.00      -0.00       0.00      -0.00       0.23       0.53

   47  13.1  1.5 -0.5     359.00       0.20       0.01       0.07       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.18     622.02      -0.00     368.77      -0.24       1.04       0.00      -0.00      -0.00      -0.00

   48  14.1  1.5 -0.5       0.00      -0.00       0.12       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     388.72      -0.00      -0.00       0.00      -0.00       0.00      -1.58       0.09

   49  15.1  1.5 -0.5       0.00      -0.00    -449.74      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.15      -0.01       0.00      -0.00      -0.00      -0.54      -0.00      -0.00

   50  16.1  1.5 -0.5      -0.12     449.74       0.00     190.37       0.00       0.00       0.00       0.00       0.00       0.00
                         -388.72       0.15      -0.00       0.02       0.00      -0.00       0.59       0.00      -0.00      -0.00

   51  17.1  1.5 -0.5      -0.00       0.00    -190.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01      -0.02      -0.00      -0.00      -0.00      -0.00      -0.05      -0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.02      74.98    -603.08
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00     818.20       0.07      -0.01

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.06    -361.57    -617.33
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -317.18      -0.01      -0.02

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     442.34       0.04       0.09
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.03     357.90    -473.68

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.02      -0.06    -442.34      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00    -818.20     317.18       0.03      -0.00       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00     -74.98     361.57      -0.04      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.07       0.01    -357.90      -0.00       0.00      -0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00     603.08     617.33      -0.09       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.01       0.02     473.68      -0.00       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.04       0.04     395.98      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     -24.16     332.45       0.00      -0.00      -0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.97      -2.46
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.04       0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       1.61      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       2.48      -0.75      -0.00       0.00       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       1.38       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       1.12      -1.48

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.92      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.61      -1.22       0.00      -0.00      -0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00      -1.89      -1.78      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -1.59      -0.00      -0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.61      -1.09
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       2.73       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.02       1.33      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.94      -0.00       0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -175.36      -0.01      -0.01
                            0.00       0.00     -18.92      -0.00      -0.00      -0.00       0.00      -0.01     141.88    -187.78

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.01     141.85     115.04
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -255.29      -0.02       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.01      -0.02    -234.29       0.00       0.00      -0.00
                            0.00      -8.05       0.00      36.47     213.01      11.53      -0.01      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00     -91.08      74.51      -0.00      -0.00       0.00      -0.00
                          -49.90      -0.01      -0.00      -0.00       0.01       0.01     185.96      -0.00      -0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.01      36.17     322.20
                           -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     236.32       0.02       0.01

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      22.34       0.00       0.00       0.00
                           -0.00      16.27      -0.00      35.74    -244.80     181.79      -0.00       0.00       0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    -223.04    -273.65       0.03       0.00       0.00       0.00
                           10.39       0.01       0.00       0.00       0.01       0.01     144.25      -0.00      -0.00       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -324.65      -0.02      -0.01
                           -0.00      -0.00     151.73       0.00       0.00       0.00      -0.00      -0.01      12.26     330.22

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.02    -365.87      99.17
                            0.00      -0.00      -0.01       0.00       0.00       0.00       0.00     -68.46       0.00      -0.01

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     127.97       0.02      -0.01
                            0.00       0.00     -79.21      -0.00       0.00       0.00      -0.00      -0.03     367.96      82.91

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.01      -0.02    -299.67      -0.00      -0.00      -0.00
                            0.04    -172.23       0.00      21.45    -158.35    -344.41       0.03      -0.00       0.00       0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00    -293.88     239.42      -0.00       0.00       0.00      -0.00
                           24.14      -0.04      -0.00      -0.01      -0.01      -0.02    -299.67      -0.00      -0.00      -0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.01       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   84   1.1  0.5 -0.5       8.51       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      14.74      -0.00       8.74     106.45    -458.51       0.03      -0.00       0.00       0.00

   85   2.1  0.5 -0.5      -0.00       7.17      -0.00     -11.20       0.00       0.00       0.00       0.00       0.00       0.00
                           12.62      -0.00      -0.00      -0.00       0.02       0.03     458.73       0.00      -0.00       0.00

   86   3.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      14.24       0.00      -0.00       0.00       0.00       0.04    -485.42    -165.73

   87   4.1  0.5 -0.5      -0.00      -0.00       8.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -107.10      -0.02       0.02

   88   5.1  0.5 -0.5      -0.01      23.02      -0.00      -5.24       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.09       0.00       0.00       0.00       0.00       0.01     105.49      -0.00      -0.00       0.00

   89   6.1  0.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -21.33      -0.00      -0.00       0.00      -0.00       0.03    -512.66     167.29

   90   7.1  0.5 -0.5      -0.00       0.00       8.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -214.84      -0.01      -0.01

   91   8.1  0.5 -0.5       8.50      -0.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.02      74.81      -0.00     -11.23     780.04     195.00      -0.05      -0.00      -0.00      -0.00

   92   9.1  0.5 -0.5       0.01     -31.91       0.00     -80.70       0.00       0.00       0.00       0.00       0.00       0.00
                           80.19       0.03       0.00       0.00       0.03       0.04     599.36       0.00      -0.00       0.00

   93  10.1  0.5 -0.5     -86.44      -0.02      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       9.46      -0.00     -85.83    -153.22     579.58      -0.03      -0.00      -0.00      -0.00

   94  11.1  0.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       6.43      -0.00       0.00       0.00      -0.00      -0.01       9.10     758.07

   95  12.1  0.5 -0.5       0.00       0.00     -82.19      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -756.21      -0.05      -0.01

   96  13.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.01       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00

   97  14.1  0.5 -0.5       0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   98  15.1  0.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00


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

   18   1.1  1.5  0.5       0.05       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -2.18       0.00
                           27.90       0.00      -0.00      -0.00      -0.00      -2.86       0.00      -0.70       0.00       0.00

   19   2.1  1.5  0.5       0.05       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -2.06       0.00
                         -383.88       0.00      -0.00       0.00       0.00       0.87       0.00       1.41       0.00      -0.00

   20   3.1  1.5  0.5     457.24       0.00       0.00       0.00       0.00       1.85      -0.00      -1.06      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.84      -0.00

   21   4.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00      -0.00       1.59      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00       0.00       0.04      -0.00      -0.00       0.00       0.00      -3.15

   22   5.1  1.5  0.5       0.00      -0.00       0.00      -0.00      -1.13       0.00       0.00      -0.00      -0.00       0.71
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -1.29       0.00       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00      -0.00       0.00      -2.84      -0.00       0.00       0.00      -0.00      -1.26
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.71      -0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -1.43      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       1.09      -0.00      -0.00      -0.00      -0.00      -0.50

   25   8.1  1.5  0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00    -349.75      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00      -0.00     349.76       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     349.75      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   27  10.1  1.5  0.5       0.00      -0.00    -349.76       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00      -0.00      -0.00      -0.00       0.00      -0.18      -0.01       0.17    -912.60       0.00
                           -1.09      -0.00       0.00       0.00       0.00     -63.58       0.00     363.90       0.14       0.01

   29  12.1  1.5  0.5      -0.00       0.00      -0.00      -0.00       0.18       0.00    -627.71      -0.00       0.00       0.16
                            0.00       0.00       0.00      -0.00      63.58       0.00      -0.13      -0.02       0.00    1009.79

   30  13.1  1.5  0.5       1.43       0.00      -0.00       0.00       0.01     627.71      -0.00    -359.00      -0.20      -0.01
                            0.00       0.00      -0.00       0.00      -0.00       0.13      -0.00      -0.18     622.02      -0.00

   31  14.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.17       0.00     359.00       0.00       0.00      -0.12
                            0.00       0.00       0.00       0.00    -363.90       0.02       0.18      -0.00      -0.00     388.72

   32  15.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00     912.60      -0.00       0.20      -0.00      -0.00     449.74
                            0.00       0.00       0.00      -0.00      -0.14      -0.00    -622.02       0.00      -0.00      -0.15

   33  16.1  1.5  0.5      -0.00      -0.00      -0.00      -0.00      -0.00      -0.16       0.01       0.12    -449.74       0.00
                            0.50       0.00      -0.00      -0.00      -0.01   -1009.79       0.00    -388.72       0.15       0.00

   34  17.1  1.5  0.5       0.00       0.00      -0.00       0.00    -485.71       0.00       0.07       0.00      -0.00     190.37
                            0.00       0.00       0.00       0.00      -0.03      -0.00    -368.77       0.00       0.01      -0.02

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.24       0.00      -0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -1.04      -0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.89      -0.00      -0.00       0.00       0.00      -0.59

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.54      -0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -512.96       0.00      -0.00       0.00       0.00      -0.23       0.00       1.58       0.00       0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.02       0.00      -0.00       0.00       0.00      -0.53       0.00      -0.09       0.00       0.00

   41   7.1  1.5 -0.5       0.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.16      -0.00

   42   8.1  1.5 -0.5       0.00    8889.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -174.88      -0.00       0.00       0.00      -0.00       0.00      -0.00

   43   9.1  1.5 -0.5       0.00       0.00    8891.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00    8891.59       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     174.88      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00   12473.90       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -301.45      -0.00       0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00   12474.02       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.08    -168.33       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12473.91       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     301.45      -0.00      -0.00       0.00      -0.00    -199.63

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12474.57       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.08      -0.00      -0.00     -91.32       0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12474.98       0.00
                           -0.16      -0.00       0.00       0.00      -0.00     168.33       0.00      91.32       0.00       0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12474.58
                            0.00       0.00       0.00      -0.00      -0.00      -0.00     199.63      -0.00      -0.00       0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.59      -0.00       0.00      -0.00       0.00     -96.98       0.00     529.84       0.15       0.01

   52   1.1  1.5 -1.5      -0.04      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.89      -0.00
                           24.16       0.00      -0.00      -0.00      -0.00      -2.48       0.00      -0.61       0.00       0.00

   53   2.1  1.5 -1.5      -0.04      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.78      -0.00
                         -332.45       0.00      -0.00       0.00       0.00       0.75       0.00       1.22       0.00      -0.00

   54   3.1  1.5 -1.5    -395.98      -0.00      -0.00      -0.00      -0.00      -1.61       0.00       0.92       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       1.59      -0.00

   55   4.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -1.38       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.04      -0.00      -0.00       0.00       0.00      -2.73

   56   5.1  1.5 -1.5      -0.00       0.00      -0.00       0.00       0.97      -0.00      -0.00       0.00       0.00      -0.61
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -1.12       0.00       0.00      -0.00

   57   6.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00       2.46       0.00      -0.00      -0.00       0.00       1.09
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       1.48      -0.00      -0.00      -0.00

   58   7.1  1.5 -1.5       0.00      -0.00       0.00       0.00       0.00      -0.00       1.23       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.94      -0.00      -0.00      -0.00      -0.00      -0.43

   59   8.1  1.5 -1.5       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00    -302.89      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   9.1  1.5 -1.5      -0.00      -0.00      -0.00    -302.90      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00     302.89       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   61  10.1  1.5 -1.5      -0.00       0.00     302.90       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   62  11.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.15       0.01      -0.15     790.33      -0.00
                           -0.94      -0.00       0.00       0.00      -0.00     -55.06       0.00     315.14       0.12       0.01

   63  12.1  1.5 -1.5       0.00      -0.00       0.00       0.00      -0.15       0.00     543.61       0.00      -0.00      -0.14
                            0.00       0.00       0.00      -0.00      55.06      -0.00      -0.11      -0.01       0.00     874.50

   64  13.1  1.5 -1.5      -1.23      -0.00       0.00      -0.00      -0.01    -543.61      -0.00     310.90       0.18       0.01
                            0.00       0.00      -0.00       0.00      -0.00       0.11       0.00      -0.16     538.68      -0.00

   65  14.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.15      -0.00    -310.90       0.00      -0.00       0.10
                            0.00       0.00       0.00       0.00    -315.14       0.01       0.16       0.00      -0.00     336.64

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00    -790.33       0.00      -0.18       0.00      -0.00    -389.48
                            0.00       0.00       0.00      -0.00      -0.12      -0.00    -538.68       0.00       0.00      -0.13

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.14      -0.01      -0.10     389.48       0.00
                            0.43       0.00      -0.00      -0.00      -0.01    -874.50       0.00    -336.64       0.13      -0.00

   68  17.1  1.5 -1.5      -0.00      -0.00       0.00      -0.00     420.63      -0.00      -0.06      -0.00       0.00    -164.87
                            0.00       0.00       0.00       0.00      -0.02      -0.00    -319.37       0.00       0.00      -0.02

   69   1.1  0.5  0.5     156.98      -0.00       0.00      -0.00       0.00     -14.88       0.00       8.51       0.01       0.00
                           -0.01       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     -14.74       0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       7.17      -0.00
                         -122.64       0.00      -0.00       0.00      -0.00     -16.31       0.00     -12.62       0.00       0.00

   71   3.1  0.5  0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      17.06       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -6.20      -0.00      -0.00       0.00       0.00     -14.24

   72   4.1  0.5  0.5       0.00       0.00      -0.00       0.00      -2.77       0.00       0.00      -0.00      -0.00       8.11
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -13.54      -0.00       0.00       0.00

   73   5.1  0.5  0.5       0.01       0.00      -0.00      -0.00      -0.00       0.01       0.00      -0.01      23.02      -0.00
                          -49.21       0.00      -0.00      -0.00       0.00      17.58      -0.00       0.09      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00      -1.63      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -6.18       0.00       0.00      -0.00      -0.00      21.33

   75   7.1  0.5  0.5       0.00       0.00       0.00      -0.00      24.34       0.00      -0.00      -0.00       0.00       8.26
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -10.50      -0.00       0.00       0.00

   76   8.1  0.5  0.5      31.44    -226.91       0.00       0.00       0.00      74.18      -0.00       8.50      -0.02      -0.00
                            0.01       0.00       0.00     245.41       0.00      -0.02      -0.00       0.02     -74.81       0.00

   77   9.1  0.5  0.5       0.01       0.00       0.00     409.14       0.00      -0.01      -0.00       0.01     -31.91       0.00
                          372.84    -409.14       0.00       0.00      -0.00      33.17      -0.00     -80.19      -0.03      -0.00

   78  10.1  0.5  0.5     358.76     414.38      -0.00      -0.00      -0.00     -11.48      -0.00     -86.44      -0.02      -0.00
                           -0.00       0.00       0.00     403.70       0.00       0.00      -0.00       0.00      -9.46       0.00

   79  11.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00     -68.60      -0.00       0.00       0.00
                            0.00      -0.00    -409.13       0.00     -86.54      -0.00       0.01       0.00      -0.00      -6.43

   80  12.1  0.5  0.5       0.00      -0.00    -409.13      -0.00      27.86      -0.00      -0.01       0.00       0.00     -82.19
                            0.00      -0.00      -0.00       0.00      -0.00       0.00     -68.60      -0.00       0.00       0.00

   81  13.1  0.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00    -114.99       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.01

   82  14.1  0.5  0.5       0.00      -0.00    -114.99      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01
                           -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00      -0.00     114.99       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00     114.99      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      28.58      -0.00      -0.00       0.00       0.00     -18.92

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -33.40      -0.00       0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -8.05       0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -677.86       0.00      -0.00       0.00      -0.00       2.69      -0.00     -49.90      -0.01      -0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00       0.00      -7.68      -0.00       0.00       0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00      -0.00       0.00      -0.00       0.01       0.00      -0.00      16.27      -0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          191.79      -0.00       0.00      -0.00       0.00     -18.22       0.00      10.39       0.01       0.00

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -944.64       0.00     104.20       0.00       0.00      -0.00      -0.00     151.73

   92   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.01      -0.00     137.21       0.00      -0.00      -0.01

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      21.36       0.00     112.07      -0.00      -0.01       0.00       0.00     -79.21

   94  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03      -0.00      -0.00    -818.27       0.00      -0.04      -0.00       0.04    -172.23       0.00

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.85     818.27      -0.00      -0.00       0.00     171.87      -0.00      24.14      -0.04      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     229.98       0.00      -0.00       0.00       0.00       0.00       0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -229.98       0.00       0.00       0.00      -0.00      -0.00       0.01       0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00


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

   18   1.1  1.5  0.5      -0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   2.1  1.5  0.5       1.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            1.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   22   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   8.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5     485.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29  12.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   30  13.1  1.5  0.5      -0.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          368.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31  14.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33  16.1  1.5  0.5    -190.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.02     -74.98     603.08       0.04       0.00       0.00
                            0.00      -0.00       0.00      -0.00     818.20       0.07      -0.01      24.16       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.06     361.57     617.33       0.04       0.00       0.00
                            0.00      -0.00       0.00       0.00    -317.18      -0.01      -0.02    -332.45       0.00      -0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00    -442.34      -0.04      -0.09     395.98       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.03     357.90    -473.68      -0.00      -0.00      -0.00

   38   4.1  1.5 -0.5       0.00       0.02       0.06     442.34      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.05    -818.20     317.18       0.03       0.00       0.00       0.00       0.00       0.00      -0.00

   39   5.1  1.5 -0.5       0.00      74.98    -361.57       0.04       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.07       0.01    -357.90      -0.00      -0.00      -0.00       0.00       0.00       0.00

   40   6.1  1.5 -0.5       0.00    -603.08    -617.33       0.09      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.01       0.02     473.68      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   41   7.1  1.5 -0.5       0.00      -0.04      -0.04    -395.98       0.00      -0.00      -0.00       0.00       0.00      -0.00
                            1.59     -24.16     332.45       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -302.89

   43   9.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     302.89      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00    -302.90
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45  11.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00      -0.00       0.97       2.46       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.04       0.00      -0.00      -0.94      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00      -1.61       0.00      -0.00       0.00      -0.00       0.00      -0.00
                           96.98       2.48      -0.75      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00      -1.38      -0.00      -0.00       1.23       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       1.12      -1.48       0.00       0.00      -0.00

   48  14.1  1.5 -0.5       0.00      -0.00      -0.00       0.92       0.00       0.00      -0.00       0.00      -0.00      -0.00
                         -529.84       0.61      -1.22       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   49  15.1  1.5 -0.5       0.00       1.89       1.78       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.15      -0.00      -0.00      -1.59      -0.00      -0.00       0.00       0.00       0.00       0.00

   50  16.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.61       1.09      -0.00      -0.00      -0.00
                           -0.01      -0.00       0.00       0.00       2.73       0.00       0.00       0.43       0.00      -0.00

   51  17.1  1.5 -0.5   12477.59       0.02      -1.33       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.94      -0.00       0.00      -0.00       0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.02       0.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.06     232.54      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   53   2.1  1.5 -1.5      -1.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.06       0.00   -1001.66      -0.00       0.00      -0.00       0.00       0.00      -0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.10       0.00       0.00       0.00       0.00       0.00       0.00
                            0.94    -232.54    1001.66       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   55   4.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.28       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     103.40    -514.13       0.09      -0.00      -0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.24       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -103.40      -0.00       0.02   -1538.89       0.00      -0.00

   57   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.42       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     514.13      -0.02       0.00     -18.05       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.50       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.09    1538.89      18.05       0.00      -0.00      -0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8889.78       0.00
                           -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   60   9.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8891.17
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     524.63      -0.00

   62  11.1  1.5 -1.5    -420.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02      -0.00       0.00      -2.67       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.69       1.58      -0.00      -0.00      -0.00

   64  13.1  1.5 -1.5       0.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          319.37      -0.73       3.12       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -4.75       0.28       0.00       0.00      -0.00

   66  15.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -1.63      -0.00      -0.00      -0.48      -0.00       0.00

   67  16.1  1.5 -1.5     164.87       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.02       0.00      -0.00       1.77       0.00      -0.00      -0.00       0.00       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.14      -0.00       0.00      -4.77      -0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.74      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   70   2.1  0.5  0.5     -11.20       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   73   5.1  0.5  0.5      -5.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   74   6.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   75   7.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   76   8.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           11.23      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   77   9.1  0.5  0.5     -80.70       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           85.83      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   79  11.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   81  13.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83  15.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00    -303.73      -0.02      -0.01     271.89      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.01     245.74    -325.24      -0.02       0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00      -0.00      -0.00      -0.02     245.69     199.25       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -442.17      -0.04       0.00    -212.41       0.00      -0.00

   86   3.1  0.5 -0.5       0.00      -0.02      -0.03    -405.80       0.00       0.00      -0.00       0.00      -0.00      -0.00
                           36.47     368.94      19.96      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   87   4.1  0.5 -0.5       0.00    -157.76     129.06      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00       0.01       0.02     322.10      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   88   5.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.01      62.65     558.07       0.02       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     409.31       0.03       0.01     -85.23       0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00      38.69       0.00       0.00       0.00      -0.00       0.00       0.00
                           35.74    -424.00     314.86      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   90   7.1  0.5 -0.5       0.00    -386.31    -473.98       0.05       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.02     249.85      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   91   8.1  0.5 -0.5       0.00       0.00       0.00       0.00    -562.31      -0.04      -0.01      54.45    -393.02       0.00
                            0.00       0.00       0.00      -0.00      -0.01      21.24     571.96       0.02       0.00       0.00

   92   9.1  0.5 -0.5       0.00       0.00      -0.00      -0.00       0.04    -633.71     171.76       0.02       0.00       0.00
                            0.00       0.00       0.00       0.00    -118.57       0.00      -0.02     645.77    -708.66       0.00

   93  10.1  0.5 -0.5       0.00       0.00       0.00       0.00     221.65       0.03      -0.02     621.39     717.73      -0.00
                           -0.00       0.00       0.00      -0.00      -0.05     637.33     143.61      -0.01       0.00       0.00

   94  11.1  0.5 -0.5       0.00      -0.02      -0.03    -519.05      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           21.45    -274.26    -596.53       0.05      -0.00       0.00       0.00       0.00      -0.00    -708.64

   95  12.1  0.5 -0.5       0.00    -509.02     414.68      -0.00       0.00       0.00      -0.00       0.00      -0.00    -708.64
                           -0.01      -0.02      -0.03    -519.05      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   96  13.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -199.17

   97  14.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -199.17
                           -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   98  15.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     199.17      -0.00


   Nr   State  S   Sz       61         62         63         64         65         66         67         68         69         70

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -303.73      -0.02
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01    -442.17

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02     245.69
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     245.74      -0.04

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     199.25
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -325.24       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     271.89       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.02    -212.41

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.77       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.01     -28.25

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      14.74      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01     -21.86

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      12.42
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -25.53       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -19.40
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -15.14       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -106.45      -0.02

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     458.51      -0.03

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.03    -458.73

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -28.58       0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      33.40

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      18.92      -0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00      -1.89       0.00      -0.02       0.00       0.00
                           -0.00      -0.00      -2.48       0.00      -0.61       0.00       0.00       0.00       0.00       0.00

   36   2.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00       0.00      -1.78       0.00       1.33       0.00      -0.00
                            0.00       0.00       0.75       0.00       1.22       0.00      -0.00       0.00       0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       1.61      -0.00      -0.92      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       1.59      -0.00       0.94      -0.00       0.00

   38   4.1  1.5 -0.5      -0.00       0.00      -0.00       1.38      -0.00      -0.00      -0.00       0.00    -175.36      -0.01
                            0.00       0.04      -0.00      -0.00       0.00       0.00      -2.73       0.00       0.01     255.29

   39   5.1  1.5 -0.5      -0.00      -0.97       0.00       0.00      -0.00      -0.00       0.61      -0.00      -0.01     141.85
                            0.00      -0.00      -0.00      -1.12       0.00       0.00      -0.00      -0.00    -141.88       0.02

   40   6.1  1.5 -0.5       0.00      -2.46      -0.00       0.00       0.00      -0.00      -1.09       0.00      -0.01     115.04
                            0.00       0.00      -0.00       1.48      -0.00      -0.00      -0.00       0.00     187.78      -0.00

   41   7.1  1.5 -0.5      -0.00      -0.00       0.00      -1.23      -0.00       0.00       0.00      -0.00     156.98       0.00
                            0.00       0.94      -0.00      -0.00      -0.00      -0.00      -0.43      -0.00       0.01     122.64

   42   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   9.1  1.5 -0.5     302.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   45  11.1  1.5 -0.5      -0.00       0.00      -0.15      -0.01       0.15    -790.33       0.00     420.63       0.00      -0.00
                            0.00       0.00     -55.06       0.00     315.14       0.12       0.01       0.02      -0.00       0.00

   46  12.1  1.5 -0.5      -0.00       0.15       0.00    -543.61      -0.00       0.00       0.14      -0.00     -14.88       0.00
                           -0.00      55.06       0.00      -0.11      -0.01       0.00     874.50       0.00       0.00      16.31

   47  13.1  1.5 -0.5       0.00       0.01     543.61      -0.00    -310.90      -0.18      -0.01      -0.06       0.00       0.00
                            0.00      -0.00       0.11      -0.00      -0.16     538.68      -0.00     319.37       0.00      -0.00

   48  14.1  1.5 -0.5       0.00      -0.15       0.00     310.90       0.00       0.00      -0.10      -0.00       8.51      -0.00
                            0.00    -315.14       0.01       0.16      -0.00      -0.00     336.64      -0.00      -0.00      12.62

   49  15.1  1.5 -0.5      -0.00     790.33      -0.00       0.18      -0.00      -0.00     389.48       0.00       0.01       7.17
                           -0.00      -0.12      -0.00    -538.68       0.00      -0.00      -0.13      -0.00      14.74      -0.00

   50  16.1  1.5 -0.5      -0.00      -0.00      -0.14       0.01       0.10    -389.48       0.00    -164.87       0.00      -0.00
                           -0.00      -0.01    -874.50       0.00    -336.64       0.13       0.00       0.02      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00    -420.63       0.00       0.06       0.00      -0.00     164.87       0.00       0.00     -11.20
                            0.00      -0.02      -0.00    -319.37       0.00       0.00      -0.02       0.00       8.74      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.73       0.00      -0.00      -0.00       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -3.12      -0.00       0.00       0.00       0.00       0.00       0.00

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       2.67      -0.00      -0.00       0.00       0.00      -1.77       0.00       0.00       0.00

   55   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       1.63      -0.00       0.14       0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.69       0.00       4.75       0.00       0.00       0.00       0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -1.58       0.00      -0.28       0.00       0.00      -0.00       0.00       0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.48      -0.00       4.77       0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -524.63      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   61  10.1  1.5 -1.5    8891.59       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00   12473.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -904.36      -0.00       0.01       0.00      -0.01       0.00       0.00

   63  12.1  1.5 -1.5       0.00       0.00   12474.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.24    -504.98       0.00     290.93       0.00       0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00   12473.91       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     904.36      -0.00      -0.00       0.00      -0.00    -598.88      -0.00       0.00       0.00

   65  14.1  1.5 -1.5       0.00       0.00       0.00       0.00   12474.57       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.24      -0.00      -0.00    -273.97       0.00   -1589.52       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00   12474.98       0.00       0.00       0.00       0.00
                            0.00      -0.01     504.98       0.00     273.97       0.00       0.00      -0.44       0.00       0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00   12474.58       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     598.88      -0.00      -0.00       0.00      -0.02       0.00       0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12477.59       0.00       0.00
                           -0.00       0.01    -290.93       0.00    1589.52       0.44       0.02       0.00       0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5231.52       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -652.65

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5231.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     652.65       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     150.09       0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     117.37

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -421.32       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -413.36

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   84   1.1  0.5 -0.5      -0.00       0.00     -25.77       0.00      14.74       0.01       0.00       0.00      -0.00       0.00
                            0.00       0.00      -0.01      -0.00       0.01     -25.53       0.00     -15.14       0.00       0.00

   85   2.1  0.5 -0.5      -0.00      -0.00       0.00       0.00      -0.00      12.42      -0.00     -19.40      -0.00       0.00
                            0.00      -0.00     -28.25       0.00     -21.86       0.00       0.00       0.00      -0.00      -0.00

   86   3.1  0.5 -0.5       0.00       0.00      -0.00      29.55       0.00      -0.00      -0.00       0.00     666.66       0.00
                            0.00     -10.75      -0.00      -0.00       0.00       0.00     -24.67      -0.00       0.00    -236.43

   87   4.1  0.5 -0.5       0.00      -4.79       0.00       0.00      -0.00      -0.00      14.05       0.00       0.00    -304.22
                           -0.00      -0.00       0.00     -23.45      -0.00       0.00       0.00      -0.00     529.15      -0.00

   88   5.1  0.5 -0.5      -0.00      -0.00       0.01       0.00      -0.01      39.87      -0.00      -9.07       0.00       0.00
                           -0.00       0.00      30.44      -0.00       0.16      -0.01      -0.00      -0.00       0.00      -0.00

   89   6.1  0.5 -0.5      -0.00      -0.00       0.00      -2.82      -0.00       0.00       0.00      -0.00     -63.56       0.00
                           -0.00     -10.70       0.00       0.00      -0.00      -0.00      36.94       0.00       0.00     770.41

   90   7.1  0.5 -0.5      -0.00      42.16       0.00      -0.00      -0.00       0.00      14.31      -0.00      -0.00     421.31
                           -0.00      -0.00       0.00     -18.19      -0.00       0.00       0.00      -0.00     410.46      -0.00

   91   8.1  0.5 -0.5       0.00       0.00     128.48      -0.00      14.72      -0.03      -0.00      -0.00       0.00       0.00
                          425.06       0.00      -0.03      -0.00       0.03    -129.57       0.00      19.45       0.00      -0.00

   92   9.1  0.5 -0.5     708.66       0.00      -0.02      -0.00       0.01     -55.27       0.00    -139.78       0.00      -0.00
                            0.00      -0.00      57.45      -0.00    -138.89      -0.05      -0.00      -0.00      -0.00       0.00

   93  10.1  0.5 -0.5      -0.00      -0.00     -19.88      -0.00    -149.71      -0.03      -0.00       0.00       0.00       0.00
                          699.23       0.00       0.00      -0.00       0.00     -16.38       0.00     148.66       0.00      -0.00

   94  11.1  0.5 -0.5       0.00      -0.01       0.00    -118.82      -0.00       0.00       0.01      -0.00    -421.31       0.00
                            0.00    -149.89      -0.00       0.01       0.00      -0.00     -11.13       0.00      -0.00     337.45

   95  12.1  0.5 -0.5      -0.00      48.25      -0.00      -0.01       0.00       0.00    -142.35      -0.00      -0.00     483.73
                            0.00      -0.01       0.00    -118.82      -0.00       0.00       0.01      -0.00     421.31      -0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.01      -0.00      -0.00       0.00

   97  14.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   98  15.1  0.5 -0.5     199.17       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.01      -0.00      -0.00       0.00       0.00      -0.00


   Nr   State  S   Sz       71         72         73         74         75         76         77         78         79         80

    1   1.1  1.5  1.5      -0.02    -157.76      -0.00       0.00    -386.31       0.00       0.00       0.00      -0.02    -509.02
                          368.94       0.01      -0.00    -424.00       0.01       0.00       0.00       0.00    -274.26      -0.02

    2   2.1  1.5  1.5      -0.03     129.06       0.00       0.00    -473.98       0.00      -0.00       0.00      -0.03     414.68
                           19.96       0.02      -0.00     314.86       0.02       0.00       0.00       0.00    -596.53      -0.03

    3   3.1  1.5  1.5    -405.80      -0.00      -0.00      38.69       0.05       0.00      -0.00       0.00    -519.05      -0.00
                           -0.02     322.10      -0.00      -0.00     249.85      -0.00       0.00      -0.00       0.05    -519.05

    4   4.1  1.5  1.5       0.00      -0.00      -0.01       0.00       0.00    -562.31       0.04     221.65      -0.00       0.00
                           -0.00      -0.00     409.31       0.00      -0.00      -0.01    -118.57      -0.05      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00      62.65       0.00       0.00      -0.04    -633.71       0.03      -0.00       0.00
                           -0.00      -0.00       0.03       0.00      -0.00      21.24       0.00     637.33       0.00      -0.00

    6   6.1  1.5  1.5      -0.00      -0.00     558.07       0.00       0.00      -0.01     171.76      -0.02      -0.00      -0.00
                           -0.00       0.00       0.01      -0.00       0.00     571.96      -0.02     143.61       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.02      -0.00       0.00      54.45       0.02     621.39       0.00       0.00
                           -0.00      -0.00     -85.23       0.00      -0.00       0.02     645.77      -0.01       0.00       0.00

    8   8.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00    -393.02       0.00     717.73      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00    -708.66       0.00      -0.00      -0.00

    9   9.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -708.64
                            0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -708.64      -0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00      -0.00      -0.00       0.00     708.66      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00     425.06       0.00     699.23       0.00       0.00

   11  11.1  1.5  1.5       0.00      -4.79      -0.00      -0.00      42.16       0.00       0.00      -0.00      -0.01      48.25
                          -10.75      -0.00       0.00     -10.70      -0.00       0.00      -0.00       0.00    -149.89      -0.01

   12  12.1  1.5  1.5      -0.00       0.00       0.01       0.00       0.00     128.48      -0.02     -19.88       0.00      -0.00
                           -0.00       0.00      30.44       0.00       0.00      -0.03      57.45       0.00      -0.00       0.00

   13  13.1  1.5  1.5      29.55       0.00       0.00      -2.82      -0.00      -0.00      -0.00      -0.00    -118.82      -0.01
                           -0.00     -23.45      -0.00       0.00     -18.19      -0.00      -0.00      -0.00       0.01    -118.82

   14  14.1  1.5  1.5       0.00      -0.00      -0.01      -0.00      -0.00      14.72       0.01    -149.71      -0.00       0.00
                            0.00      -0.00       0.16      -0.00      -0.00       0.03    -138.89       0.00       0.00      -0.00

   15  15.1  1.5  1.5      -0.00      -0.00      39.87       0.00       0.00      -0.03     -55.27      -0.03       0.00       0.00
                            0.00       0.00      -0.01      -0.00       0.00    -129.57      -0.05     -16.38      -0.00       0.00

   16  16.1  1.5  1.5      -0.00      14.05      -0.00       0.00      14.31      -0.00       0.00      -0.00       0.01    -142.35
                          -24.67       0.00      -0.00      36.94       0.00       0.00      -0.00       0.00     -11.13       0.01

   17  17.1  1.5  1.5       0.00       0.00      -9.07      -0.00      -0.00      -0.00    -139.78       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      19.45      -0.00     148.66       0.00      -0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00    -780.04      -0.03     153.22      -0.00      -0.00

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.01      -0.00      -0.00    -195.00      -0.04    -579.58      -0.00      -0.00

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -105.49       0.00      -0.00       0.05    -599.36       0.03       0.00      -0.00

   21   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04     107.10       0.00      -0.03     214.84       0.00      -0.00       0.00       0.01     756.21

   22   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          485.42       0.02       0.00     512.66       0.01       0.00       0.00       0.00      -9.10       0.05

   23   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          165.73      -0.02      -0.00    -167.29       0.01       0.00      -0.00       0.00    -758.07       0.01

   24   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     677.86       0.00      -0.02    -191.79       0.00       0.00       0.00      -0.03     -53.85

   25   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -818.27

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00     944.64      -0.00     -21.36       0.00       0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00     818.27       0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00    -104.20      -0.01    -112.07      -0.00      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -2.69      -0.00      -0.01      18.22      -0.00       0.00       0.00       0.04    -171.87

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       7.68      -0.00      -0.00      -0.00    -137.21       0.01       0.00       0.00

   31  14.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      49.90       0.00       0.00     -10.39       0.00      -0.00      -0.00      -0.04     -24.14

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            8.05       0.01      -0.00     -16.27      -0.01       0.00       0.00      -0.00     172.23       0.04

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -151.73       0.01      79.21      -0.00       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -36.47       0.00       0.00     -35.74      -0.00      -0.00      -0.00       0.00     -21.45       0.01

   35   1.1  1.5 -0.5      -0.01     -91.08      -0.00       0.00    -223.04       0.00       0.00       0.00      -0.01    -293.88
                         -213.01      -0.01       0.00     244.80      -0.01      -0.00      -0.00      -0.00     158.35       0.01

   36   2.1  1.5 -0.5      -0.02      74.51       0.00       0.00    -273.65       0.00      -0.00       0.00      -0.02     239.42
                          -11.53      -0.01       0.00    -181.79      -0.01      -0.00      -0.00      -0.00     344.41       0.02

   37   3.1  1.5 -0.5    -234.29      -0.00      -0.00      22.34       0.03       0.00      -0.00       0.00    -299.67      -0.00
                            0.01    -185.96       0.00       0.00    -144.25       0.00      -0.00       0.00      -0.03     299.67

   38   4.1  1.5 -0.5       0.00      -0.00      -0.01       0.00       0.00    -324.65       0.02     127.97      -0.00       0.00
                            0.00       0.00    -236.32      -0.00       0.00       0.01      68.46       0.03       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00      36.17       0.00       0.00      -0.02    -365.87       0.02      -0.00       0.00
                            0.00       0.00      -0.02      -0.00       0.00     -12.26      -0.00    -367.96      -0.00       0.00

   40   6.1  1.5 -0.5      -0.00      -0.00     322.20       0.00       0.00      -0.01      99.17      -0.01      -0.00      -0.00
                            0.00      -0.00      -0.01       0.00      -0.00    -330.22       0.01     -82.91      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.01      -0.00       0.00      31.44       0.01     358.76       0.00       0.00
                            0.00       0.00      49.21      -0.00       0.00      -0.01    -372.84       0.00      -0.00      -0.00

   42   8.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00    -226.91       0.00     414.38      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00     409.14      -0.00       0.00       0.00

   43   9.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -409.13
                           -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     409.13       0.00

   44  10.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00     409.14      -0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00    -245.41      -0.00    -403.70      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00      -2.77      -0.00      -0.00      24.34       0.00       0.00      -0.00      -0.00      27.86
                            6.20       0.00      -0.00       6.18       0.00      -0.00       0.00      -0.00      86.54       0.00

   46  12.1  1.5 -0.5      -0.00       0.00       0.01       0.00       0.00      74.18      -0.01     -11.48       0.00      -0.00
                            0.00      -0.00     -17.58      -0.00      -0.00       0.02     -33.17      -0.00       0.00      -0.00

   47  13.1  1.5 -0.5      17.06       0.00       0.00      -1.63      -0.00      -0.00      -0.00      -0.00     -68.60      -0.01
                            0.00      13.54       0.00      -0.00      10.50       0.00       0.00       0.00      -0.01      68.60

   48  14.1  1.5 -0.5       0.00      -0.00      -0.01      -0.00      -0.00       8.50       0.01     -86.44      -0.00       0.00
                           -0.00       0.00      -0.09       0.00       0.00      -0.02      80.19      -0.00      -0.00       0.00

   49  15.1  1.5 -0.5      -0.00      -0.00      23.02       0.00       0.00      -0.02     -31.91      -0.02       0.00       0.00
                           -0.00      -0.00       0.00       0.00      -0.00      74.81       0.03       9.46       0.00      -0.00

   50  16.1  1.5 -0.5      -0.00       8.11      -0.00       0.00       8.26      -0.00       0.00      -0.00       0.00     -82.19
                           14.24      -0.00       0.00     -21.33      -0.00      -0.00       0.00      -0.00       6.43      -0.00

   51  17.1  1.5 -0.5       0.00       0.00      -5.24      -0.00      -0.00      -0.00     -80.70       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     -11.23       0.00     -85.83      -0.00       0.00

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
                           -0.00       0.00    -150.09       0.00      -0.00       0.00     421.32       0.00       0.00      -0.00

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00    -117.37      -0.00     413.36       0.00      -0.00

   71   3.1  0.5  0.5    5232.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     605.17       0.00       0.00    -407.84       0.00      -0.00       0.00       0.00     388.43

   72   4.1  0.5  0.5       0.00    5231.96       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -605.17      -0.00      -0.00    -766.21      -0.00      -0.00       0.00       0.00     132.88      -0.00

   73   5.1  0.5  0.5       0.00       0.00    5232.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     552.87      -0.00      81.94       0.00      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00    5232.01       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     766.21      -0.00       0.00      39.45      -0.00       0.00      -0.00       0.00    -364.86

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5232.08       0.00       0.00       0.00       0.00       0.00
                          407.84       0.00      -0.00     -39.45       0.00      -0.00      -0.00      -0.00     516.08      -0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7022.23       0.00       0.00       0.00       0.00
                           -0.00       0.00    -552.87       0.00       0.00       0.00       2.84       0.00       0.00      -0.00

   77   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7021.46       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00      -2.84      -0.00    -125.68      -0.00      -0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7022.13       0.00       0.00
                           -0.00      -0.00     -81.94       0.00       0.00      -0.00     125.68       0.00       0.00       0.00

   79  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7019.62       0.00
                           -0.00    -132.88      -0.00      -0.00    -516.08      -0.00       0.00      -0.00      -0.00      62.88

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7019.60
                         -388.43       0.00       0.00     364.86       0.00       0.00       0.00      -0.00     -62.88       0.00

   81  13.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     595.33

   82  14.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -595.33       0.00

   83  15.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00    -687.27       0.00      15.54       0.00       0.00

   84   1.1  0.5 -0.5    -666.66      -0.00      -0.00      63.56       0.00      -0.00      -0.00      -0.00     421.31       0.00
                           -0.00    -529.15      -0.00      -0.00    -410.46      -0.00       0.00      -0.00       0.00    -421.31

   85   2.1  0.5 -0.5      -0.00     304.22      -0.00      -0.00    -421.31      -0.00       0.00      -0.00      -0.00    -483.73
                          236.43       0.00       0.00    -770.41       0.00       0.00      -0.00       0.00    -337.45       0.00

   86   3.1  0.5 -0.5      -0.00       0.00      -0.00       0.00      -0.00    -342.11       0.00    -248.50      -0.00       0.00
                            0.00       0.00     559.05       0.00       0.00      -0.00     450.39       0.00       0.00      -0.00

   87   4.1  0.5 -0.5      -0.00       0.00     139.89       0.00       0.00      -0.00    -532.93      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00       0.00      -0.00     104.50       0.00    -468.97       0.00       0.00

   88   5.1  0.5 -0.5       0.00    -139.89      -0.00       0.00    -911.90       0.00      -0.00       0.00      -0.00     223.62
                         -559.05      -0.00       0.00     399.03      -0.00      -0.00      -0.00       0.00    -412.46       0.00

   89   6.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00      -0.00     305.34      -0.00    -474.35       0.00       0.00
                           -0.00      -0.00    -399.03       0.00       0.00      -0.00     284.89       0.00       0.00       0.00

   90   7.1  0.5 -0.5       0.00      -0.00     911.90       0.00       0.00      -0.00      -0.36       0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00      -0.00     452.67      -0.00     247.52       0.00      -0.00

   91   8.1  0.5 -0.5     342.11       0.00      -0.00    -305.34       0.00      -0.00       0.00      -0.00    -110.28       0.00
                            0.00    -104.50       0.00       0.00    -452.67      -0.00      -0.00       0.00      -0.00    -107.43

   92   9.1  0.5 -0.5      -0.00     532.93       0.00       0.00       0.36      -0.00       0.00       0.00       0.00     -62.87
                         -450.39      -0.00       0.00    -284.89       0.00       0.00       0.00      -0.00     -62.87      -0.00

   93  10.1  0.5 -0.5     248.50       0.00      -0.00     474.35      -0.00       0.00      -0.00       0.00     -60.39       0.00
                           -0.00     468.97      -0.00      -0.00    -247.52      -0.00       0.00       0.00      -0.00      65.31

   94  11.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00     110.28      -0.00      60.39      -0.00       0.00
                           -0.00      -0.00     412.46      -0.00      -0.00       0.00      62.87       0.00      -0.00      -0.00

   95  12.1  0.5 -0.5      -0.00       0.00    -223.62      -0.00       0.00      -0.00      62.87      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00      -0.00       0.00     107.43       0.00     -65.31       0.00       0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00      -0.00      -0.00     330.17       0.00    -602.96       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00    -595.34      -0.00      -0.00      -0.00

   97  14.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00       0.00    -595.34       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00      -0.00     357.09      -0.00     587.42       0.00      -0.00

   98  15.1  0.5 -0.5       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00     595.33
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -595.33       0.00


   Nr   State  S   Sz       81         82         83         84         85         86         87         88         89         90

    1   1.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     199.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00    -199.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -199.17      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00      -0.00     199.17       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.01     -91.08      -0.00       0.00    -223.04
                           -0.00       0.00      -0.00      -0.00      -0.00     213.01       0.01      -0.00    -244.80       0.01

   19   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.02      74.51       0.00       0.00    -273.65
                           -0.00      -0.00       0.00      -0.00      -0.00      11.53       0.01      -0.00     181.79       0.01

   20   3.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -234.29      -0.00      -0.00      22.34       0.03
                           -0.00       0.00       0.00       0.00      -0.00      -0.01     185.96      -0.00      -0.00     144.25

   21   4.1  1.5  0.5       0.00       0.00       0.00    -175.36      -0.01       0.00      -0.00      -0.01       0.00       0.00
                            0.00       0.00       0.00      -0.01    -255.29      -0.00      -0.00     236.32       0.00      -0.00

   22   5.1  1.5  0.5       0.00       0.00       0.00      -0.01     141.85       0.00       0.00      36.17       0.00       0.00
                           -0.00       0.00      -0.00     141.88      -0.02      -0.00      -0.00       0.02       0.00      -0.00

   23   6.1  1.5  0.5       0.00       0.00       0.00      -0.01     115.04      -0.00      -0.00     322.20       0.00       0.00
                            0.00      -0.00       0.00    -187.78       0.00      -0.00       0.00       0.01      -0.00       0.00

   24   7.1  1.5  0.5       0.00       0.00       0.00     156.98       0.00       0.00       0.00       0.01      -0.00       0.00
                            0.00      -0.00      -0.00      -0.01    -122.64      -0.00      -0.00     -49.21       0.00      -0.00

   25   8.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00     229.98      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   26   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   27  10.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                         -229.98      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -2.77      -0.00      -0.00      24.34
                           -0.00      -0.00       0.00       0.00      -0.00      -6.20      -0.00       0.00      -6.18      -0.00

   29  12.1  1.5  0.5       0.00       0.00       0.00     -14.88       0.00      -0.00       0.00       0.01       0.00       0.00
                            0.00       0.00      -0.00      -0.00     -16.31      -0.00       0.00      17.58       0.00       0.00

   30  13.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      17.06       0.00       0.00      -1.63      -0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00     -13.54      -0.00       0.00     -10.50

   31  14.1  1.5  0.5       0.00       0.00       0.00       8.51      -0.00       0.00      -0.00      -0.01      -0.00      -0.00
                           -0.00      -0.01      -0.00       0.00     -12.62       0.00      -0.00       0.09      -0.00      -0.00

   32  15.1  1.5  0.5       0.00       0.00       0.00       0.01       7.17      -0.00      -0.00      23.02       0.00       0.00
                           -0.00      -0.00      -0.00     -14.74       0.00       0.00       0.00      -0.00      -0.00       0.00

   33  16.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       8.11      -0.00       0.00       8.26
                           -0.00      -0.00      -0.00       0.00       0.00     -14.24       0.00      -0.00      21.33       0.00

   34  17.1  1.5  0.5       0.00       0.00       0.00       0.00     -11.20       0.00       0.00      -5.24      -0.00      -0.00
                            0.00       0.00       0.00      -8.74       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   35   1.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -106.45      -0.02       0.00       0.00      -0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     458.51      -0.03      -0.00       0.00      -0.01      -0.00      -0.00

   37   3.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.03    -458.73      -0.00       0.00    -105.49       0.00      -0.00

   38   4.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.04     107.10       0.00      -0.03     214.84

   39   5.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     485.42       0.02       0.00     512.66       0.01

   40   6.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00      -0.00     165.73      -0.02      -0.00    -167.29       0.01

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -0.00     677.86       0.00      -0.02    -191.79

   42   8.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -114.99       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   43   9.1  1.5 -0.5       0.00    -114.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          114.99       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00

   44  10.1  1.5 -0.5       0.00      -0.00     114.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   45  11.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     -28.58       0.00      -0.00       0.00       0.00       0.00      -0.00

   46  12.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00      -2.69      -0.00      -0.01      18.22

   47  13.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      33.40       0.00       0.00       7.68      -0.00      -0.00

   48  14.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      49.90       0.00       0.00     -10.39

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       8.05       0.01      -0.00     -16.27      -0.01

   50  16.1  1.5 -0.5      -0.00      -0.01      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00      18.92      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   51  17.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     -36.47       0.00       0.00     -35.74      -0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.02    -157.76      -0.00       0.00    -386.31
                            0.00       0.00       0.00       0.00       0.00    -368.94      -0.01       0.00     424.00      -0.01

   53   2.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.03     129.06       0.00       0.00    -473.98
                            0.00       0.00       0.00       0.00       0.00     -19.96      -0.02       0.00    -314.86      -0.02

   54   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -405.80      -0.00      -0.00      38.69       0.05
                            0.00       0.00       0.00      -0.00       0.00       0.02    -322.10       0.00       0.00    -249.85

   55   4.1  1.5 -1.5       0.00       0.00       0.00    -303.73      -0.02       0.00      -0.00      -0.01       0.00       0.00
                            0.00       0.00       0.00       0.01     442.17       0.00       0.00    -409.31      -0.00       0.00

   56   5.1  1.5 -1.5       0.00       0.00       0.00      -0.02     245.69       0.00       0.00      62.65       0.00       0.00
                            0.00       0.00       0.00    -245.74       0.04       0.00       0.00      -0.03      -0.00       0.00

   57   6.1  1.5 -1.5       0.00       0.00       0.00      -0.01     199.25      -0.00      -0.00     558.07       0.00       0.00
                            0.00       0.00       0.00     325.24      -0.00       0.00      -0.00      -0.01       0.00      -0.00

   58   7.1  1.5 -1.5       0.00       0.00       0.00     271.89       0.00       0.00       0.00       0.02      -0.00       0.00
                            0.00       0.00       0.00       0.02     212.41       0.00       0.00      85.23      -0.00       0.00

   59   8.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   60   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   61  10.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -4.79      -0.00      -0.00      42.16
                            0.00       0.00       0.00      -0.00       0.00      10.75       0.00      -0.00      10.70       0.00

   63  12.1  1.5 -1.5       0.00       0.00       0.00     -25.77       0.00      -0.00       0.00       0.01       0.00       0.00
                            0.00       0.00       0.00       0.01      28.25       0.00      -0.00     -30.44      -0.00      -0.00

   64  13.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      29.55       0.00       0.00      -2.82      -0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00      23.45       0.00      -0.00      18.19

   65  14.1  1.5 -1.5       0.00       0.00       0.00      14.74      -0.00       0.00      -0.00      -0.01      -0.00      -0.00
                            0.00       0.00       0.00      -0.01      21.86      -0.00       0.00      -0.16       0.00       0.00

   66  15.1  1.5 -1.5       0.00       0.00       0.00       0.01      12.42      -0.00      -0.00      39.87       0.00       0.00
                            0.00       0.00       0.00      25.53      -0.00      -0.00      -0.00       0.01       0.00      -0.00

   67  16.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      14.05      -0.00       0.00      14.31
                            0.00       0.00       0.00      -0.00      -0.00      24.67      -0.00       0.00     -36.94      -0.00

   68  17.1  1.5 -1.5       0.00       0.00       0.00       0.00     -19.40       0.00       0.00      -9.07      -0.00      -0.00
                            0.00       0.00       0.00      15.14      -0.00       0.00       0.00       0.00      -0.00       0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00     666.66       0.00       0.00     -63.56      -0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00    -529.15      -0.00      -0.00    -410.46

   70   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -304.22       0.00       0.00     421.31
                            0.00       0.00      -0.00      -0.00       0.00     236.43       0.00       0.00    -770.41       0.00

   71   3.1  0.5  0.5       0.00       0.00       0.00    -666.66      -0.00      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00    -236.43      -0.00       0.00     559.05       0.00       0.00

   72   4.1  0.5  0.5       0.00       0.00       0.00      -0.00     304.22       0.00       0.00    -139.89      -0.00      -0.00
                           -0.00      -0.00       0.00     529.15      -0.00      -0.00       0.00       0.00       0.00      -0.00

   73   5.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00      -0.00     139.89      -0.00      -0.00     911.90
                           -0.00       0.00       0.00       0.00      -0.00    -559.05      -0.00      -0.00     399.03      -0.00

   74   6.1  0.5  0.5       0.00       0.00       0.00      63.56      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     770.41      -0.00      -0.00    -399.03      -0.00       0.00

   75   7.1  0.5  0.5       0.00       0.00       0.00       0.00    -421.31      -0.00       0.00    -911.90      -0.00       0.00
                            0.00      -0.00      -0.00     410.46      -0.00      -0.00       0.00       0.00      -0.00       0.00

   76   8.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00    -342.11      -0.00       0.00     305.34      -0.00
                            0.00      -0.00     687.27       0.00      -0.00       0.00    -104.50       0.00       0.00    -452.67

   77   9.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00    -532.93      -0.00      -0.00      -0.36
                            0.00      -0.00      -0.00      -0.00       0.00    -450.39      -0.00       0.00    -284.89       0.00

   78  10.1  0.5  0.5       0.00       0.00       0.00      -0.00      -0.00    -248.50      -0.00       0.00    -474.35       0.00
                           -0.00      -0.00     -15.54       0.00      -0.00      -0.00     468.97      -0.00      -0.00    -247.52

   79  11.1  0.5  0.5       0.00       0.00       0.00     421.31      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00     595.33      -0.00      -0.00     337.45      -0.00      -0.00     412.46      -0.00      -0.00

   80  12.1  0.5  0.5       0.00       0.00       0.00       0.00    -483.73       0.00      -0.00     223.62       0.00      -0.00
                         -595.33      -0.00      -0.00     421.31      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   81  13.1  0.5  0.5   12352.63       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00     349.76       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   82  14.1  0.5  0.5       0.00   12352.66       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                         -349.76      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00   12352.70      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   84   1.1  0.5 -0.5       0.00      -0.00      -0.00    5231.52       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00     652.65       0.00      -0.00     150.09      -0.00       0.00

   85   2.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00    5231.90       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -652.65      -0.00      -0.00       0.00       0.00       0.00       0.00

   86   3.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00    5232.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00    -605.17      -0.00      -0.00     407.84

   87   4.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00    5231.96       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00     605.17       0.00       0.00     766.21       0.00

   88   5.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    5232.03       0.00       0.00
                           -0.00       0.00      -0.00    -150.09      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   89   6.1  0.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    5232.01       0.00
                            0.00      -0.00      -0.00       0.00      -0.00       0.00    -766.21       0.00      -0.00     -39.45

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5232.08
                            0.00       0.00       0.00      -0.00      -0.00    -407.84      -0.00       0.00      39.45      -0.00

   91   8.1  0.5 -0.5    -330.17      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -357.09       0.00       0.00    -117.37       0.00      -0.00     552.87      -0.00      -0.00

   92   9.1  0.5 -0.5      -0.00     595.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          595.34       0.00       0.00     421.32      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   93  10.1  0.5 -0.5     602.96      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -587.42      -0.00       0.00     413.36       0.00       0.00      81.94      -0.00      -0.00

   94  11.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     595.33       0.00       0.00       0.00     132.88       0.00       0.00     516.08

   95  12.1  0.5 -0.5      -0.00      -0.00    -595.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00     388.43      -0.00      -0.00    -364.86      -0.00

   96  13.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -349.76       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00

   97  14.1  0.5 -0.5      -0.00       0.00     349.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   98  15.1  0.5 -0.5      -0.00    -349.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          349.76       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00


   Nr   State  S   Sz       91         92         93         94         95         96         97         98

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11  11.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12  12.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13  13.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14  14.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15  15.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16  16.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17  17.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   1.1  1.5  0.5       0.00       0.00       0.00      -0.01    -293.88      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -158.35      -0.01      -0.00      -0.00      -0.00

   19   2.1  1.5  0.5       0.00      -0.00       0.00      -0.02     239.42       0.00       0.00       0.00
                            0.00       0.00       0.00    -344.41      -0.02       0.00       0.00      -0.00

   20   3.1  1.5  0.5       0.00      -0.00       0.00    -299.67      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.03    -299.67       0.00      -0.00      -0.00

   21   4.1  1.5  0.5    -324.65       0.02     127.97      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.01     -68.46      -0.03      -0.00      -0.00      -0.00       0.00      -0.00

   22   5.1  1.5  0.5      -0.02    -365.87       0.02      -0.00       0.00      -0.00       0.00       0.00
                           12.26       0.00     367.96       0.00      -0.00       0.00       0.00       0.00

   23   6.1  1.5  0.5      -0.01      99.17      -0.01      -0.00      -0.00      -0.00      -0.00      -0.00
                          330.22      -0.01      82.91       0.00      -0.00       0.00      -0.00      -0.00

   24   7.1  1.5  0.5      31.44       0.01     358.76       0.00       0.00       0.00       0.00       0.00
                            0.01     372.84      -0.00       0.00       0.00       0.00      -0.00      -0.00

   25   8.1  1.5  0.5    -226.91       0.00     414.38      -0.00      -0.00      -0.00      -0.00       0.00
                            0.00    -409.14       0.00      -0.00      -0.00      -0.00       0.00     114.99

   26   9.1  1.5  0.5       0.00       0.00      -0.00      -0.00    -409.13       0.00    -114.99      -0.00
                            0.00       0.00       0.00    -409.13      -0.00    -114.99      -0.00      -0.00

   27  10.1  1.5  0.5       0.00     409.14      -0.00       0.00      -0.00       0.00      -0.00     114.99
                          245.41       0.00     403.70       0.00       0.00       0.00       0.00      -0.00

   28  11.1  1.5  0.5       0.00       0.00      -0.00      -0.00      27.86       0.00      -0.00       0.00
                            0.00      -0.00       0.00     -86.54      -0.00      -0.00      -0.00      -0.00

   29  12.1  1.5  0.5      74.18      -0.01     -11.48       0.00      -0.00       0.00      -0.00       0.00
                           -0.02      33.17       0.00      -0.00       0.00      -0.00      -0.00       0.00

   30  13.1  1.5  0.5      -0.00      -0.00      -0.00     -68.60      -0.01      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.01     -68.60       0.00      -0.00      -0.00

   31  14.1  1.5  0.5       8.50       0.01     -86.44      -0.00       0.00      -0.00       0.00      -0.00
                            0.02     -80.19       0.00       0.00      -0.00       0.00       0.00      -0.00

   32  15.1  1.5  0.5      -0.02     -31.91      -0.02       0.00       0.00       0.00       0.00       0.00
                          -74.81      -0.03      -9.46      -0.00       0.00       0.00       0.00      -0.00

   33  16.1  1.5  0.5      -0.00       0.00      -0.00       0.00     -82.19      -0.00      -0.01      -0.00
                            0.00      -0.00       0.00      -6.43       0.00      -0.01      -0.00      -0.00

   34  17.1  1.5  0.5      -0.00     -80.70       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           11.23      -0.00      85.83       0.00      -0.00      -0.00      -0.00       0.00

   35   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -780.04      -0.03     153.22      -0.00      -0.00      -0.00       0.00      -0.00

   36   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -195.00      -0.04    -579.58      -0.00      -0.00      -0.00      -0.00       0.00

   37   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.05    -599.36       0.03       0.00      -0.00      -0.00       0.00       0.00

   38   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.01     756.21       0.00       0.00       0.00

   39   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -9.10       0.05      -0.00       0.00      -0.00

   40   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -758.07       0.01       0.00      -0.00       0.00

   41   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.03     -53.85       0.00      -0.00      -0.00

   42   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -818.27      -0.00     229.98      -0.00

   43   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          944.64      -0.00     -21.36       0.00       0.00       0.00      -0.00      -0.00

   44  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     818.27       0.00    -229.98      -0.00      -0.00

   45  11.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -104.20      -0.01    -112.07      -0.00      -0.00      -0.00      -0.00       0.00

   46  12.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.04    -171.87       0.00       0.00      -0.00

   47  13.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -137.21       0.01       0.00       0.00      -0.00       0.00       0.00

   48  14.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.04     -24.14      -0.00      -0.01      -0.00

   49  15.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     172.23       0.04      -0.00      -0.00      -0.00

   50  16.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -151.73       0.01      79.21      -0.00       0.00      -0.00      -0.00      -0.00

   51  17.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -21.45       0.01       0.00       0.00       0.00

   52   1.1  1.5 -1.5       0.00       0.00       0.00      -0.02    -509.02      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00     274.26       0.02       0.00       0.00       0.00

   53   2.1  1.5 -1.5       0.00      -0.00       0.00      -0.03     414.68       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     596.53       0.03      -0.00      -0.00       0.00

   54   3.1  1.5 -1.5       0.00      -0.00       0.00    -519.05      -0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.05     519.05      -0.00       0.00       0.00

   55   4.1  1.5 -1.5    -562.31       0.04     221.65      -0.00       0.00      -0.00      -0.00      -0.00
                            0.01     118.57       0.05       0.00       0.00       0.00      -0.00       0.00

   56   5.1  1.5 -1.5      -0.04    -633.71       0.03      -0.00       0.00      -0.00       0.00       0.00
                          -21.24      -0.00    -637.33      -0.00       0.00      -0.00      -0.00      -0.00

   57   6.1  1.5 -1.5      -0.01     171.76      -0.02      -0.00      -0.00      -0.00      -0.00      -0.00
                         -571.96       0.02    -143.61      -0.00       0.00      -0.00       0.00       0.00

   58   7.1  1.5 -1.5      54.45       0.02     621.39       0.00       0.00       0.00       0.00       0.00
                           -0.02    -645.77       0.01      -0.00      -0.00      -0.00       0.00       0.00

   59   8.1  1.5 -1.5    -393.02       0.00     717.73      -0.00      -0.00      -0.00      -0.00       0.00
                           -0.00     708.66      -0.00       0.00       0.00       0.00      -0.00    -199.17

   60   9.1  1.5 -1.5       0.00       0.00      -0.00      -0.00    -708.64       0.00    -199.17      -0.00
                           -0.00      -0.00      -0.00     708.64       0.00     199.17       0.00       0.00

   61  10.1  1.5 -1.5       0.00     708.66      -0.00       0.00      -0.00       0.00      -0.00     199.17
                         -425.06      -0.00    -699.23      -0.00      -0.00      -0.00      -0.00       0.00

   62  11.1  1.5 -1.5       0.00       0.00      -0.00      -0.01      48.25       0.00      -0.00       0.00
                           -0.00       0.00      -0.00     149.89       0.01       0.00       0.00       0.00

   63  12.1  1.5 -1.5     128.48      -0.02     -19.88       0.00      -0.00       0.00      -0.00       0.00
                            0.03     -57.45      -0.00       0.00      -0.00       0.00       0.00      -0.00

   64  13.1  1.5 -1.5      -0.00      -0.00      -0.00    -118.82      -0.01      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.01     118.82      -0.00       0.00       0.00

   65  14.1  1.5 -1.5      14.72       0.01    -149.71      -0.00       0.00      -0.00       0.00      -0.00
                           -0.03     138.89      -0.00      -0.00       0.00      -0.00      -0.00       0.01

   66  15.1  1.5 -1.5      -0.03     -55.27      -0.03       0.00       0.00       0.00       0.00       0.00
                          129.57       0.05      16.38       0.00      -0.00      -0.00      -0.00       0.00

   67  16.1  1.5 -1.5      -0.00       0.00      -0.00       0.01    -142.35      -0.00      -0.01      -0.00
                           -0.00       0.00      -0.00      11.13      -0.01       0.01       0.00       0.00

   68  17.1  1.5 -1.5      -0.00    -139.78       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                          -19.45       0.00    -148.66      -0.00       0.00       0.00       0.00      -0.00

   69   1.1  0.5  0.5       0.00       0.00       0.00    -421.31      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -421.31       0.00      -0.00      -0.00

   70   2.1  0.5  0.5       0.00      -0.00       0.00       0.00     483.73       0.00       0.00       0.00
                            0.00      -0.00       0.00    -337.45       0.00      -0.00       0.00       0.00

   71   3.1  0.5  0.5     342.11      -0.00     248.50       0.00      -0.00       0.00       0.00       0.00
                           -0.00     450.39       0.00       0.00      -0.00       0.00      -0.00      -0.00

   72   4.1  0.5  0.5       0.00     532.93       0.00       0.00       0.00       0.00      -0.00      -0.00
                          104.50       0.00    -468.97       0.00       0.00       0.00       0.00       0.00

   73   5.1  0.5  0.5      -0.00       0.00      -0.00       0.00    -223.62       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -412.46       0.00      -0.00       0.00      -0.00

   74   6.1  0.5  0.5    -305.34       0.00     474.35      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00     284.89       0.00       0.00       0.00       0.00      -0.00      -0.00

   75   7.1  0.5  0.5       0.00       0.36      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                          452.67      -0.00     247.52       0.00      -0.00       0.00       0.00       0.00

   76   8.1  0.5  0.5      -0.00      -0.00       0.00     110.28      -0.00     330.17       0.00      -0.00
                            0.00      -0.00       0.00      -0.00    -107.43      -0.00    -357.09       0.00

   77   9.1  0.5  0.5       0.00       0.00      -0.00      -0.00      62.87       0.00    -595.34      -0.00
                            0.00      -0.00      -0.00     -62.87      -0.00     595.34       0.00       0.00

   78  10.1  0.5  0.5      -0.00       0.00       0.00      60.39      -0.00    -602.96       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      65.31       0.00    -587.42      -0.00

   79  11.1  0.5  0.5    -110.28       0.00     -60.39      -0.00      -0.00       0.00       0.00      -0.00
                            0.00      62.87       0.00       0.00      -0.00       0.00      -0.00     595.33

   80  12.1  0.5  0.5       0.00     -62.87       0.00       0.00      -0.00       0.00       0.00     595.33
                          107.43       0.00     -65.31       0.00      -0.00       0.00       0.00      -0.00

   81  13.1  0.5  0.5    -330.17      -0.00     602.96      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00    -595.34      -0.00      -0.00      -0.00       0.00      -0.00    -349.76

   82  14.1  0.5  0.5      -0.00     595.34      -0.00      -0.00      -0.00       0.00       0.00    -349.76
                          357.09      -0.00     587.42       0.00      -0.00       0.00       0.00      -0.00

   83  15.1  0.5  0.5       0.00       0.00      -0.00       0.00    -595.33       0.00     349.76       0.00
                           -0.00      -0.00       0.00    -595.33       0.00     349.76       0.00       0.00

   84   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -421.32      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   85   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          117.37       0.00    -413.36      -0.00       0.00      -0.00      -0.00       0.00

   86   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -388.43       0.00      -0.00      -0.00

   87   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -132.88       0.00       0.00       0.00      -0.00

   88   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -552.87       0.00     -81.94      -0.00       0.00       0.00      -0.00      -0.00

   89   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     364.86       0.00       0.00       0.00

   90   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -516.08       0.00      -0.00       0.00       0.00

   91   8.1  0.5 -0.5    7022.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -2.84      -0.00      -0.00       0.00      -0.00       0.00    -687.27

   92   9.1  0.5 -0.5       0.00    7021.46       0.00       0.00       0.00       0.00       0.00       0.00
                            2.84       0.00     125.68       0.00       0.00      -0.00       0.00       0.00

   93  10.1  0.5 -0.5       0.00       0.00    7022.13       0.00       0.00       0.00       0.00       0.00
                            0.00    -125.68      -0.00      -0.00      -0.00       0.00       0.00      15.54

   94  11.1  0.5 -0.5       0.00       0.00       0.00    7019.62       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     -62.88      -0.00    -595.33       0.00

   95  12.1  0.5 -0.5       0.00       0.00       0.00       0.00    7019.60       0.00       0.00       0.00
                           -0.00      -0.00       0.00      62.88      -0.00     595.33       0.00       0.00

   96  13.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00   12352.63       0.00       0.00
                            0.00       0.00      -0.00       0.00    -595.33      -0.00    -349.76      -0.00

   97  14.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00   12352.66       0.00
                           -0.00      -0.00      -0.00     595.33      -0.00     349.76       0.00       0.00

   98  15.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00   12352.70
                          687.27      -0.00     -15.54      -0.00      -0.00       0.00      -0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02456459    -0.00702725    -1542.30      0.00000000        0.00      0.0000
     2  -110.02456459    -0.00702725    -1542.30      0.00000000        0.00      0.0000
     3  -110.02456438    -0.00702703    -1542.26      0.00000021        0.05      0.0000
     4  -110.02456438    -0.00702703    -1542.26      0.00000021        0.05      0.0000
     5  -110.02456423    -0.00702688    -1542.22      0.00000036        0.08      0.0000
     6  -110.02456423    -0.00702688    -1542.22      0.00000036        0.08      0.0000
     7  -110.02456411    -0.00702677    -1542.20      0.00000047        0.10      0.0000
     8  -110.02456411    -0.00702677    -1542.20      0.00000047        0.10      0.0000
     9  -110.02456361    -0.00702627    -1542.09      0.00000098        0.21      0.0000
    10  -110.02456361    -0.00702627    -1542.09      0.00000098        0.21      0.0000
    11  -110.01831169    -0.00077435     -169.95      0.00625290     1372.35      0.1702
    12  -110.01831169    -0.00077435     -169.95      0.00625290     1372.35      0.1702
    13  -110.01831128    -0.00077394     -169.86      0.00625331     1372.44      0.1702
    14  -110.01831128    -0.00077394     -169.86      0.00625331     1372.44      0.1702
    15  -110.01831099    -0.00077365     -169.80      0.00625359     1372.51      0.1702
    16  -110.01831099    -0.00077365     -169.80      0.00625359     1372.51      0.1702
    17  -110.01831061    -0.00077327     -169.71      0.00625398     1372.59      0.1702
    18  -110.01831061    -0.00077327     -169.71      0.00625398     1372.59      0.1702
    19  -110.01313350     0.00440384      966.53      0.01143108     2508.83      0.3111
    20  -110.01313350     0.00440384      966.53      0.01143108     2508.83      0.3111
    21  -110.01313325     0.00440409      966.59      0.01143134     2508.89      0.3111
    22  -110.01313325     0.00440409      966.59      0.01143134     2508.89      0.3111
    23  -110.01313311     0.00440423      966.62      0.01143148     2508.92      0.3111
    24  -110.01313311     0.00440423      966.62      0.01143148     2508.92      0.3111
    25  -110.01009487     0.00744247     1633.43      0.01446971     3175.74      0.3937
    26  -110.01009487     0.00744247     1633.43      0.01446971     3175.74      0.3937
    27  -110.01009441     0.00744293     1633.54      0.01447018     3175.84      0.3938
    28  -110.01009441     0.00744293     1633.54      0.01447018     3175.84      0.3938
    29  -109.99750415     0.02003319     4396.78      0.02706044     5939.08      0.7364
    30  -109.99750415     0.02003319     4396.78      0.02706044     5939.08      0.7364
    31  -109.99750302     0.02003433     4397.03      0.02706157     5939.33      0.7364
    32  -109.99750302     0.02003433     4397.03      0.02706157     5939.33      0.7364
    33  -109.99750294     0.02003440     4397.04      0.02706164     5939.34      0.7364
    34  -109.99750294     0.02003440     4397.04      0.02706164     5939.34      0.7364
    35  -109.99750266     0.02003469     4397.11      0.02706193     5939.41      0.7364
    36  -109.99750266     0.02003469     4397.11      0.02706193     5939.41      0.7364
    37  -109.99343398     0.02410336     5290.08      0.03113061     6832.38      0.8471
    38  -109.99343398     0.02410336     5290.08      0.03113061     6832.38      0.8471
    39  -109.99343099     0.02410635     5290.73      0.03113360     6833.03      0.8472
    40  -109.99343099     0.02410635     5290.73      0.03113360     6833.03      0.8472
    41  -109.99342987     0.02410748     5290.98      0.03113472     6833.28      0.8472
    42  -109.99342987     0.02410748     5290.98      0.03113472     6833.28      0.8472
    43  -109.98531702     0.03222032     7071.54      0.03924756     8613.84      1.0680
    44  -109.98531702     0.03222032     7071.54      0.03924756     8613.84      1.0680
    45  -109.98531450     0.03222284     7072.10      0.03925009     8614.40      1.0680
    46  -109.98531450     0.03222284     7072.10      0.03925009     8614.40      1.0680
    47  -109.98408681     0.03345054     7341.54      0.04047778     8883.85      1.1015
    48  -109.98408681     0.03345054     7341.54      0.04047778     8883.85      1.1015
    49  -109.98408558     0.03345176     7341.81      0.04047900     8884.11      1.1015
    50  -109.98408558     0.03345176     7341.81      0.04047900     8884.11      1.1015
    51  -109.98408455     0.03345279     7342.04      0.04048004     8884.34      1.1015
    52  -109.98408455     0.03345279     7342.04      0.04048004     8884.34      1.1015
    53  -109.97464351     0.04289383     9414.11      0.04992108    10956.41      1.3584
    54  -109.97464351     0.04289383     9414.11      0.04992108    10956.41      1.3584
    55  -109.97463965     0.04289769     9414.96      0.04992494    10957.26      1.3585
    56  -109.97463965     0.04289769     9414.96      0.04992494    10957.26      1.3585
    57  -109.97459361     0.04294373     9425.06      0.04997098    10967.36      1.3598
    58  -109.97459361     0.04294373     9425.06      0.04997098    10967.36      1.3598
    59  -109.97459159     0.04294575     9425.50      0.04997300    10967.80      1.3598
    60  -109.97459159     0.04294575     9425.50      0.04997300    10967.80      1.3598
    61  -109.97458990     0.04294744     9425.87      0.04997469    10968.18      1.3599
    62  -109.97458990     0.04294744     9425.87      0.04997469    10968.18      1.3599
    63  -109.97311662     0.04442072     9749.22      0.05144796    11291.52      1.4000
    64  -109.97311662     0.04442072     9749.22      0.05144796    11291.52      1.4000
    65  -109.96811404     0.04942330    10847.16      0.05645055    12389.46      1.5361
    66  -109.96811404     0.04942330    10847.16      0.05645055    12389.46      1.5361
    67  -109.96811325     0.04942409    10847.33      0.05645133    12389.64      1.5361
    68  -109.96811325     0.04942409    10847.33      0.05645133    12389.64      1.5361
    69  -109.96811249     0.04942485    10847.50      0.05645210    12389.80      1.5361
    70  -109.96811249     0.04942485    10847.50      0.05645210    12389.80      1.5361
    71  -109.96811097     0.04942637    10847.84      0.05645362    12390.14      1.5362
    72  -109.96811097     0.04942637    10847.84      0.05645362    12390.14      1.5362
    73  -109.96810534     0.04943201    10849.07      0.05645925    12391.37      1.5363
    74  -109.96810534     0.04943201    10849.07      0.05645925    12391.37      1.5363
    75  -109.96116655     0.05637079    12371.96      0.06339804    13914.26      1.7251
    76  -109.96116655     0.05637079    12371.96      0.06339804    13914.26      1.7251
    77  -109.96116648     0.05637087    12371.98      0.06339811    13914.28      1.7252
    78  -109.96116648     0.05637087    12371.98      0.06339811    13914.28      1.7252
    79  -109.96069853     0.05683881    12474.68      0.06386605    14016.98      1.7379
    80  -109.96069853     0.05683881    12474.68      0.06386605    14016.98      1.7379
    81  -109.96069781     0.05683953    12474.84      0.06386678    14017.14      1.7379
    82  -109.96069781     0.05683953    12474.84      0.06386678    14017.14      1.7379
    83  -109.96069660     0.05684074    12475.10      0.06386798    14017.40      1.7379
    84  -109.96069660     0.05684074    12475.10      0.06386798    14017.40      1.7379
    85  -109.96069026     0.05684708    12476.49      0.06387433    14018.79      1.7381
    86  -109.96069026     0.05684708    12476.49      0.06387433    14018.79      1.7381
    87  -109.95799427     0.05954308    13068.20      0.06657032    14610.50      1.8115
    88  -109.95799427     0.05954308    13068.20      0.06657032    14610.50      1.8115
    89  -109.95489680     0.06264054    13748.01      0.06966779    15290.31      1.8958
    90  -109.95489680     0.06264054    13748.01      0.06966779    15290.31      1.8958
    91  -109.95489386     0.06264348    13748.66      0.06967073    15290.96      1.8958
    92  -109.95489386     0.06264348    13748.66      0.06967073    15290.96      1.8958
    93  -109.95489268     0.06264466    13748.91      0.06967191    15291.22      1.8959
    94  -109.95489268     0.06264466    13748.91      0.06967191    15291.22      1.8959
    95  -109.95073326     0.06680408    14661.80      0.07383133    16204.10      2.0091
    96  -109.95073326     0.06680408    14661.80      0.07383133    16204.10      2.0091
    97  -109.95072910     0.06680825    14662.72      0.07383549    16205.02      2.0092
    98  -109.95072910     0.06680825    14662.72      0.07383549    16205.02      2.0092


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.001168550  -0.061440860   0.001128503   0.303116939   0.007183952  -0.167964146   0.005050592  -0.342221355
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.010210489   0.536883957  -0.000688272  -0.184736030   0.004805791  -0.112346927   0.001845080  -0.125046376
                        -0.000002509   0.000129147   0.000000660  -0.000019122  -0.000006833  -0.000001150   0.000002416   0.000012048

    3    3.1  1.5  1.5   0.000002532  -0.000123126  -0.000001714   0.000013004   0.000016880  -0.000031628  -0.000005932   0.000029740
                        -0.009775668   0.514101346  -0.000339158  -0.090776581   0.010584408  -0.247435411  -0.002245555   0.152100130

    4    4.1  1.5  1.5  -0.158280732  -0.003012387  -0.229146629   0.000851369   0.014871819   0.000639820   0.032858270   0.000481773
                         0.014576492   0.000277230   0.337378769  -0.001256069  -0.164293725  -0.007026970  -0.220379693  -0.003252427

    5    5.1  1.5  1.5  -0.001259660  -0.000023959  -0.044877768   0.000167081  -0.056449607  -0.002414392  -0.144926338  -0.002138864
                        -0.013609798  -0.000259835  -0.030449723   0.000113110  -0.005116391  -0.000218041  -0.021619928  -0.000316914

    6    6.1  1.5  1.5  -0.017846198  -0.000339420  -0.129785902   0.000483197   0.442342424   0.018919320  -0.086840073  -0.001281606
                        -0.193749670  -0.003687111  -0.088140097   0.000328843   0.040097246   0.001734106  -0.012972084  -0.000199167

    7    7.1  1.5  1.5   0.003148785   0.000060176   0.000645071  -0.000002476  -0.000849348  -0.000037031   0.002258490   0.000032564
                        -0.000295126  -0.000005615  -0.000955006   0.000003558   0.009463281   0.000404752  -0.015145585  -0.000223525

    8    8.1  1.5  1.5  -0.000000035  -0.000000001   0.000000227  -0.000000001  -0.000000031  -0.000000001  -0.000000017  -0.000000000
                         0.000000003   0.000000000  -0.000000334   0.000000001   0.000000339   0.000000015   0.000000111   0.000000002

    9    9.1  1.5  1.5  -0.000000001   0.000000055   0.000000001   0.000000317   0.000000002  -0.000000058   0.000000009  -0.000000578
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   10   10.1  1.5  1.5   0.000000006   0.000000000   0.000000356  -0.000000001  -0.000000630  -0.000000027   0.000000174   0.000000003
                         0.000000062   0.000000001   0.000000242  -0.000000001  -0.000000057  -0.000000002   0.000000026   0.000000000

   11   11.1  1.5  1.5  -0.000003554   0.000186871  -0.000000097  -0.000026081   0.000002720  -0.000063586   0.000001356  -0.000091888
                        -0.000000001   0.000000046   0.000000000  -0.000000007  -0.000000002   0.000000000   0.000000001   0.000000004

   12   12.1  1.5  1.5   0.000060343   0.000001147   0.000087013  -0.000000321  -0.000005763  -0.000000249  -0.000012268  -0.000000182
                        -0.000005536  -0.000000105  -0.000128082   0.000000477   0.000063134   0.000002700   0.000082347   0.000001215

   13   13.1  1.5  1.5   0.000000001  -0.000000053  -0.000000000   0.000000014   0.000000005  -0.000000016  -0.000000002   0.000000004
                        -0.000003793   0.000199502  -0.000000131  -0.000035194   0.000004108  -0.000096047  -0.000000872   0.000059063

   14   14.1  1.5  1.5   0.000011639   0.000000221   0.000018331  -0.000000069  -0.000000839  -0.000000035  -0.000003529  -0.000000050
                        -0.000001088  -0.000000021  -0.000027012   0.000000101   0.000009727   0.000000416   0.000023636   0.000000349

   15   15.1  1.5  1.5   0.000006807   0.000000129   0.000048053  -0.000000179  -0.000172781  -0.000007390   0.000027115   0.000000400
                         0.000074061   0.000001407   0.000032677  -0.000000122  -0.000015678  -0.000000677   0.000004034   0.000000062

   16   16.1  1.5  1.5   0.000001805  -0.000094971   0.000000502   0.000135117   0.000001959  -0.000045809   0.000001584  -0.000107325
                         0.000000001  -0.000000031   0.000000002   0.000000005  -0.000000000   0.000000007  -0.000000001  -0.000000006

   17   17.1  1.5  1.5  -0.000001255  -0.000000024  -0.000022869   0.000000085  -0.000002572  -0.000000110  -0.000059522  -0.000000878
                        -0.000013623  -0.000000259  -0.000015527   0.000000058  -0.000000231  -0.000000009  -0.000008877  -0.000000130

   18    1.1  1.5  0.5   0.000327304   0.000006222   0.373822690  -0.001391748   0.335215158   0.014337401  -0.385237760  -0.005685445
                         0.003577168   0.000065872   0.253907618  -0.000940907   0.030435252   0.001321794  -0.057435536  -0.000853409

   19    2.1  1.5  0.5  -0.022024973  -0.000418896  -0.320197302   0.001192099   0.289095210   0.012364821  -0.262577934  -0.003875191
                        -0.239360631  -0.004556461  -0.217493080   0.000810422   0.026240540   0.001139556  -0.039140790  -0.000584822

   20    3.1  1.5  0.5   0.151719347   0.002889063   0.078169898  -0.000290569  -0.041567377  -0.001791781  -0.046344665  -0.000679311
                        -0.013963006  -0.000265563  -0.115085667   0.000428471   0.458340586   0.019603572   0.311250556   0.004593522

   21    4.1  1.5  0.5  -0.000000784   0.000047454  -0.000002060   0.000000060   0.000016904  -0.000056532  -0.000004853   0.000013773
                        -0.000251287   0.013281586   0.001864066   0.501064696   0.018078333  -0.422649198   0.001693460  -0.114793716

   22    5.1  1.5  0.5   0.008591520  -0.451701268  -0.000025009  -0.006924132   0.001021276  -0.023884048   0.000880561  -0.059661257
                         0.000001594  -0.000086565  -0.000000963   0.000046677   0.000004239  -0.000031375  -0.000000214  -0.000013837

   23    6.1  1.5  0.5   0.001732696  -0.091016576  -0.000197654  -0.052826518   0.001721001  -0.040214839  -0.009643219   0.653364733
                        -0.000000176   0.000001449   0.000001449  -0.000001100  -0.000011524   0.000015809   0.000004750  -0.000009293

   24    7.1  1.5  0.5  -0.000001242   0.000057199   0.000000628  -0.000014364  -0.000017591   0.000037100   0.000006953   0.000014580
                         0.005591989  -0.294107852   0.000786262   0.211065021  -0.011957401   0.279535591   0.000008329  -0.000491988

   25    8.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000001   0.000000001   0.000000160   0.000000003  -0.000000064   0.000000001  -0.000000080

   26    9.1  1.5  0.5  -0.000000004  -0.000000000   0.000000107  -0.000000000  -0.000000297  -0.000000013   0.000000063   0.000000001
                        -0.000000037  -0.000000001   0.000000073  -0.000000000  -0.000000027  -0.000000001   0.000000009   0.000000000

   27   10.1  1.5  0.5   0.000000000  -0.000000017   0.000000000   0.000000012  -0.000000002   0.000000041  -0.000000006   0.000000383
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   28   11.1  1.5  0.5  -0.000007965  -0.000000151  -0.000065778   0.000000245   0.000150556   0.000006439  -0.000147709  -0.000002180
                        -0.000086551  -0.000001647  -0.000044681   0.000000166   0.000013666   0.000000593  -0.000022020  -0.000000328

   29   12.1  1.5  0.5   0.000000000  -0.000000004   0.000000004   0.000000005  -0.000000007   0.000000029   0.000000002  -0.000000075
                         0.000000549  -0.000028896  -0.000000641  -0.000172991  -0.000007827   0.000182981  -0.000000642   0.000043520

   30   13.1  1.5  0.5   0.000058862   0.000001121   0.000030350  -0.000000113  -0.000016130  -0.000000695  -0.000018000  -0.000000267
                        -0.000005415  -0.000000103  -0.000044658   0.000000166   0.000177935   0.000007610   0.000120833   0.000001783

   31   14.1  1.5  0.5   0.000000001  -0.000000024  -0.000000002   0.000000001   0.000000003  -0.000000013  -0.000000001   0.000000057
                        -0.000002100   0.000110455  -0.000000450  -0.000120662   0.000003065  -0.000071647  -0.000000140   0.000009487

   32   15.1  1.5  0.5  -0.000000295   0.000015446   0.000000075   0.000020064  -0.000000617   0.000014431   0.000003751  -0.000254124
                        -0.000000000   0.000000032  -0.000000000   0.000000020   0.000000006  -0.000000077  -0.000000003  -0.000000007

   33   16.1  1.5  0.5   0.000003095   0.000000059   0.000179144  -0.000000667   0.000082612   0.000003533  -0.000104335  -0.000001540
                         0.000033684   0.000000642   0.000121684  -0.000000450   0.000007489   0.000000321  -0.000015565  -0.000000231

   34   17.1  1.5  0.5   0.000003383  -0.000177832  -0.000000018  -0.000004900   0.000000465  -0.000010877  -0.000000079   0.000005324
                         0.000000001  -0.000000031  -0.000000000   0.000000009   0.000000001  -0.000000008   0.000000000  -0.000000004

   35    1.1  1.5 -0.5  -0.000066165   0.003592110   0.001679957   0.451898752   0.014398182  -0.336593967  -0.005749135   0.389495793
                        -0.000000168  -0.000001416   0.000003661   0.000006866  -0.000023785   0.000089092   0.000005780  -0.000005665

   36    2.1  1.5 -0.5   0.004575675  -0.240371817  -0.001441486  -0.387078225   0.012417205  -0.290283657  -0.003919065   0.265479138
                         0.000000176  -0.000028654   0.000000578   0.000001453  -0.000020131   0.000069529   0.000007045   0.000003313

   37    3.1  1.5 -0.5   0.000000071  -0.000020573  -0.000000386  -0.000000888  -0.000017071   0.000075182   0.000005415  -0.000054801
                        -0.002901243   0.152360511   0.000517704   0.139123124  -0.019685279   0.460221614  -0.004643477   0.314681956

   38    4.1  1.5 -0.5  -0.013230201  -0.000250304  -0.281538754   0.001045679  -0.038161362  -0.001646735  -0.016912351  -0.000244895
                         0.001168144   0.000022215   0.414489758  -0.001543147   0.420922865   0.018003185   0.113541049   0.001675666

   39    5.1  1.5 -0.5   0.041421412   0.000787798   0.005701541  -0.000021229  -0.023789609  -0.001017499  -0.059011198  -0.000870905
                         0.449798077   0.008555326   0.003929150  -0.000013255  -0.002122083  -0.000087854  -0.008783180  -0.000130048

   40    6.1  1.5 -0.5   0.008327490   0.000158384   0.043699671  -0.000162689  -0.040049639  -0.001712953   0.646222072   0.009537118
                         0.090634817   0.001725442   0.029681304  -0.000112257  -0.003641420  -0.000166638   0.096345772   0.001426560

   41    7.1  1.5 -0.5   0.292868586   0.005568412  -0.118581531   0.000442305   0.025239223   0.001095570  -0.000058122  -0.000008105
                        -0.026970786  -0.000512960   0.174604879  -0.000650057  -0.278393839  -0.011907118   0.000488760   0.000007213

   42    8.1  1.5 -0.5   0.000000001   0.000000000  -0.000000090   0.000000000  -0.000000006  -0.000000000  -0.000000012  -0.000000000
                        -0.000000000  -0.000000000   0.000000133  -0.000000000   0.000000064   0.000000003   0.000000079   0.000000001

   43    9.1  1.5 -0.5   0.000000001  -0.000000037   0.000000000   0.000000129  -0.000000013   0.000000298   0.000000001  -0.000000064
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   44   10.1  1.5 -0.5   0.000000002   0.000000000  -0.000000010   0.000000000   0.000000041   0.000000002   0.000000379   0.000000006
                         0.000000017   0.000000000  -0.000000007   0.000000000   0.000000004   0.000000000   0.000000056   0.000000001

   45   11.1  1.5 -0.5   0.000001654  -0.000086916  -0.000000296  -0.000079518   0.000006467  -0.000151175  -0.000002205   0.000149341
                         0.000000000  -0.000000011   0.000000000   0.000000001  -0.000000010   0.000000036   0.000000003  -0.000000000

   46   12.1  1.5 -0.5   0.000028775   0.000000547   0.000097197  -0.000000357   0.000016526   0.000000712   0.000006343   0.000000093
                        -0.000002641  -0.000000050  -0.000143104   0.000000533  -0.000182233  -0.000007794  -0.000043056  -0.000000635

   47   13.1  1.5 -0.5  -0.000000000  -0.000000006  -0.000000000   0.000000014  -0.000000006   0.000000022  -0.000000001  -0.000000013
                        -0.000001126   0.000059110   0.000000201   0.000053995  -0.000007642   0.000178665  -0.000001803   0.000122166

   48   14.1  1.5 -0.5  -0.000109989  -0.000002091   0.000067797  -0.000000254  -0.000006472  -0.000000280   0.000001456   0.000000022
                         0.000010132   0.000000193  -0.000099814   0.000000372   0.000071354   0.000003052  -0.000009375  -0.000000138

   49   15.1  1.5 -0.5  -0.000001445  -0.000000027  -0.000016608   0.000000062   0.000014365   0.000000614  -0.000251347  -0.000003709
                        -0.000015378  -0.000000294  -0.000011257   0.000000042   0.000001377   0.000000061  -0.000037463  -0.000000556

   50   16.1  1.5 -0.5  -0.000000645   0.000033826   0.000000805   0.000216563   0.000003548  -0.000082951  -0.000001557   0.000105490
                         0.000000000  -0.000000001   0.000000003  -0.000000001  -0.000000002   0.000000011   0.000000002  -0.000000011

   51   17.1  1.5 -0.5   0.000016304   0.000000310   0.000004048  -0.000000015  -0.000010833  -0.000000463   0.000005265   0.000000078
                         0.000177083   0.000003368   0.000002761  -0.000000010  -0.000000973  -0.000000041   0.000000789   0.000000012

   52    1.1  1.5 -1.5  -0.005622457  -0.000106934   0.250743822  -0.000933518   0.167280113   0.007154695   0.338480868   0.004995389
                        -0.061183064  -0.001163647   0.170315632  -0.000634084   0.015143253   0.000647688   0.050459465   0.000744694

   53    2.1  1.5 -1.5   0.049258888   0.000936861  -0.152827734   0.000568980   0.111889498   0.004785603   0.123677840   0.001825269
                         0.534619456   0.010167417  -0.103783836   0.000387272   0.010127791   0.000440084   0.018449612   0.000269662

   54    3.1  1.5 -1.5   0.511932988   0.009734419  -0.050994874   0.000191985   0.022339695   0.000971077  -0.022456102  -0.000336968
                        -0.047168054  -0.000897094   0.075099338  -0.000279595  -0.246424881  -0.010539781   0.150433287   0.002220136

   55    4.1  1.5 -1.5   0.000000403  -0.000031052  -0.000001493  -0.000012459  -0.000003679  -0.000001083   0.000003053   0.000004834
                        -0.003025117   0.158950506   0.001517411   0.407838952  -0.007056037   0.164965448  -0.003287914   0.222815787

   56    5.1  1.5 -1.5  -0.000260938   0.013667965   0.000201767   0.054232821   0.002424218  -0.056680998   0.002162214  -0.146530081
                        -0.000000081   0.000008942   0.000000313   0.000027400   0.000000523   0.000006191   0.000001919   0.000014687

   57    6.1  1.5 -1.5  -0.003702701   0.194569832   0.000584480   0.156885490  -0.018998614   0.444156060   0.001296965  -0.087803602
                        -0.000000588   0.000041274  -0.000000526   0.000013141   0.000021323  -0.000053395  -0.000008021   0.000026002

   58    7.1  1.5 -1.5  -0.000000085   0.000005742  -0.000000049   0.000002986   0.000000389   0.000007299   0.000000750   0.000000636
                         0.000060437  -0.003162580  -0.000004334  -0.001152452   0.000406442  -0.009501317  -0.000225883   0.015313051

   59    8.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000035  -0.000000002  -0.000000404   0.000000015  -0.000000340   0.000000002  -0.000000112

   60    9.1  1.5 -1.5   0.000000005   0.000000000   0.000000263  -0.000000001   0.000000058   0.000000002   0.000000572   0.000000008
                         0.000000055   0.000000001   0.000000178  -0.000000001   0.000000005   0.000000000   0.000000085   0.000000001

   61   10.1  1.5 -1.5   0.000000001  -0.000000062  -0.000000002  -0.000000431   0.000000027  -0.000000633  -0.000000003   0.000000176
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   62   11.1  1.5 -1.5   0.000017146   0.000000326  -0.000021579   0.000000080   0.000063327   0.000002709   0.000090883   0.000001341
                         0.000186083   0.000003539  -0.000014649   0.000000055   0.000005733   0.000000248   0.000013553   0.000000199

   63   12.1  1.5 -1.5   0.000000000  -0.000000009   0.000000002  -0.000000012   0.000000004  -0.000000047   0.000000001   0.000000008
                         0.000001152  -0.000060597  -0.000000575  -0.000154843   0.000002712  -0.000063396   0.000001229  -0.000083256

   64   13.1  1.5 -1.5   0.000198660   0.000003777  -0.000019763   0.000000074   0.000008675   0.000000375  -0.000008712  -0.000000130
                        -0.000018309  -0.000000348   0.000029121  -0.000000108  -0.000095655  -0.000004091   0.000058417   0.000000862

   65   14.1  1.5 -1.5  -0.000000000   0.000000019  -0.000000001   0.000000014  -0.000000003   0.000000041  -0.000000002  -0.000000006
                         0.000000222  -0.000011690  -0.000000122  -0.000032645   0.000000417  -0.000009763   0.000000352  -0.000023898

   66   15.1  1.5 -1.5   0.000001413  -0.000074373  -0.000000216  -0.000058111   0.000007421  -0.000173491  -0.000000405   0.000027413
                         0.000000000  -0.000000002   0.000000000   0.000000031  -0.000000008   0.000000036   0.000000002   0.000000008

   67   16.1  1.5 -1.5  -0.000008722  -0.000000166   0.000111774  -0.000000416   0.000045622   0.000001951   0.000106153   0.000001567
                        -0.000094570  -0.000001798   0.000075916  -0.000000281   0.000004137   0.000000177   0.000015819   0.000000235

   68   17.1  1.5 -1.5  -0.000000261   0.000013680   0.000000103   0.000027642   0.000000110  -0.000002583   0.000000888  -0.000060181
                        -0.000000000   0.000000003   0.000000000   0.000000006   0.000000001  -0.000000002   0.000000000   0.000000004

   69    1.1  0.5  0.5   0.000005701   0.000000108   0.000002425  -0.000000009  -0.000000375  -0.000000016   0.000000397   0.000000006
                        -0.000000525  -0.000000010  -0.000003570   0.000000013   0.000004137   0.000000177  -0.000002660  -0.000000039

   70    2.1  0.5  0.5  -0.000000381  -0.000000007  -0.000000891   0.000000003   0.000003124   0.000000134   0.000001100   0.000000016
                        -0.000004136  -0.000000079  -0.000000605   0.000000002   0.000000283   0.000000012   0.000000164   0.000000002

   71    3.1  0.5  0.5   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000082   0.000004314  -0.000000011  -0.000002960   0.000000142  -0.000003310   0.000000025  -0.000001687

   72    4.1  0.5  0.5   0.000000202  -0.000010621   0.000000019   0.000004979  -0.000000221   0.000005163  -0.000000006   0.000000413
                         0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000

   73    5.1  0.5  0.5  -0.000000250  -0.000000005  -0.000000628   0.000000002   0.000002319   0.000000099   0.000003027   0.000000045
                        -0.000002707  -0.000000051  -0.000000426   0.000000002   0.000000210   0.000000009   0.000000451   0.000000007

   74    6.1  0.5  0.5   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000115   0.000006023  -0.000000007  -0.000001843   0.000000096  -0.000002254  -0.000000024   0.000001633

   75    7.1  0.5  0.5  -0.000000085   0.000004475  -0.000000008  -0.000002099   0.000000136  -0.000003187  -0.000000023   0.000001563
                        -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000

   76    8.1  0.5  0.5  -0.000001028  -0.000000020   0.000000269  -0.000000001   0.000000341   0.000000015  -0.000000526  -0.000000008
                         0.000000095   0.000000002  -0.000000396   0.000000001  -0.000003763  -0.000000161   0.000003531   0.000000052

   77    9.1  0.5  0.5   0.000000032   0.000000001  -0.000001565   0.000000006   0.000003450   0.000000148   0.000000909   0.000000013
                         0.000000346   0.000000007  -0.000001063   0.000000004   0.000000313   0.000000014   0.000000135   0.000000002

   78   10.1  0.5  0.5  -0.000000388  -0.000000007  -0.000002048   0.000000008   0.000000289   0.000000013  -0.000000176  -0.000000003
                         0.000000036   0.000000001   0.000003015  -0.000000011  -0.000003186  -0.000000136   0.000001180   0.000000017

   79   11.1  0.5  0.5  -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000044  -0.000002313  -0.000000002  -0.000000654   0.000000009  -0.000000220  -0.000000096   0.000006483

   80   12.1  0.5  0.5   0.000000004  -0.000000188   0.000000011   0.000002849   0.000000067  -0.000001578   0.000000015  -0.000001010
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   81   13.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000033  -0.000000001  -0.000000224  -0.000000007   0.000000173  -0.000000002   0.000000116

   82   14.1  0.5  0.5  -0.000000003   0.000000167   0.000000000   0.000000118  -0.000000003   0.000000070   0.000000007  -0.000000487
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   83   15.1  0.5  0.5  -0.000000015  -0.000000000   0.000000102  -0.000000000   0.000000272   0.000000012  -0.000000423  -0.000000006
                        -0.000000159  -0.000000003   0.000000069  -0.000000000   0.000000025   0.000000001  -0.000000063  -0.000000001

   84    1.1  0.5 -0.5  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000109  -0.000005725  -0.000000016  -0.000004316   0.000000178  -0.000004154  -0.000000040   0.000002689

   85    2.1  0.5 -0.5  -0.000000079   0.000004153   0.000000004   0.000001077  -0.000000134   0.000003137  -0.000000016   0.000001112
                        -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   86    3.1  0.5 -0.5   0.000004296   0.000000082  -0.000001663   0.000000006   0.000000299   0.000000013   0.000000249   0.000000004
                        -0.000000396  -0.000000008   0.000002449  -0.000000009  -0.000003297  -0.000000141  -0.000001669  -0.000000025

   87    4.1  0.5 -0.5  -0.000000974  -0.000000019   0.000004119  -0.000000015  -0.000005142  -0.000000220  -0.000000408  -0.000000006
                        -0.000010576  -0.000000201   0.000002797  -0.000000010  -0.000000466  -0.000000020  -0.000000061  -0.000000001

   88    5.1  0.5 -0.5  -0.000000052   0.000002718   0.000000003   0.000000759  -0.000000100   0.000002328  -0.000000045   0.000003061
                        -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   89    6.1  0.5 -0.5   0.000005998   0.000000114  -0.000001036   0.000000004   0.000000203   0.000000009  -0.000000241  -0.000000004
                        -0.000000552  -0.000000011   0.000001525  -0.000000006  -0.000002245  -0.000000096   0.000001615   0.000000024

   90    7.1  0.5 -0.5   0.000000411   0.000000008  -0.000001737   0.000000006   0.000003174   0.000000136  -0.000001546  -0.000000023
                         0.000004456   0.000000085  -0.000001180   0.000000004   0.000000288   0.000000013  -0.000000231  -0.000000004

   91    8.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000
                        -0.000000020   0.000001032  -0.000000002  -0.000000479  -0.000000162   0.000003779   0.000000053  -0.000003570

   92    9.1  0.5 -0.5   0.000000007  -0.000000347   0.000000007   0.000001892  -0.000000148   0.000003464  -0.000000014   0.000000919
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   93   10.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000
                        -0.000000007   0.000000389   0.000000014   0.000003645  -0.000000137   0.000003199   0.000000018  -0.000001193

   94   11.1  0.5 -0.5  -0.000002303  -0.000000044  -0.000000367   0.000000001   0.000000020   0.000000001  -0.000000956  -0.000000014
                         0.000000212   0.000000004   0.000000540  -0.000000002  -0.000000219  -0.000000009   0.000006412   0.000000095

   95   12.1  0.5 -0.5  -0.000000018  -0.000000000   0.000002357  -0.000000009   0.000001571   0.000000067   0.000000999   0.000000015
                        -0.000000188  -0.000000004   0.000001601  -0.000000006   0.000000142   0.000000006   0.000000149   0.000000002

   96   13.1  0.5 -0.5   0.000000032   0.000000001  -0.000000126   0.000000000  -0.000000016  -0.000000001  -0.000000017  -0.000000000
                        -0.000000003  -0.000000000   0.000000186  -0.000000001   0.000000173   0.000000007   0.000000115   0.000000002

   97   14.1  0.5 -0.5   0.000000015   0.000000000   0.000000097  -0.000000000  -0.000000070  -0.000000003   0.000000481   0.000000007
                         0.000000166   0.000000003   0.000000066  -0.000000000  -0.000000006  -0.000000000   0.000000072   0.000000001

   98   15.1  0.5 -0.5  -0.000000003   0.000000159  -0.000000000  -0.000000123  -0.000000012   0.000000273   0.000000006  -0.000000427
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.055968613  -0.002252143   0.009926309   0.628650094   0.038969718  -0.218655236   0.039062680   0.008423008
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.018897173  -0.000760420   0.003597320   0.227729372  -0.065917753   0.369846182  -0.101749148  -0.021939450
                        -0.000000619   0.000000019   0.000000134   0.000006414  -0.000007696   0.000035792   0.000093451   0.000019599

    3    3.1  1.5  1.5  -0.000001578   0.000000233  -0.000000681  -0.000042553  -0.000000141   0.000007775   0.000395815   0.000076852
                        -0.008212892   0.000330087   0.000229936   0.014536232  -0.025071176   0.140660729   0.475236958   0.102466432

    4    4.1  1.5  1.5   0.000832965   0.020703620  -0.085426272   0.001349347   0.369133977   0.065790139   0.050292286  -0.233267068
                         0.000355830   0.008842822  -0.001905906   0.000030094   0.230910594   0.041153923  -0.053614043   0.248641379

    5    5.1  1.5  1.5   0.010868613   0.270099417  -0.004661957   0.000073612  -0.022264462  -0.003968072   0.000006500  -0.000030146
                        -0.025595431  -0.635937445   0.209587623  -0.003309285   0.035639890   0.006351727  -0.000001391   0.000007034

    6    6.1  1.5  1.5  -0.000038710  -0.000961975   0.000451948  -0.000007136  -0.049265840  -0.008780379  -0.062276291   0.288813569
                         0.000089405   0.002216718  -0.020792532   0.000327760   0.078725895   0.014032286  -0.058429651   0.271015595

    7    7.1  1.5  1.5   0.026288304   0.653144139   0.216477897  -0.003420068   0.008479090   0.001510740  -0.002878506   0.013352211
                         0.011162611   0.277405630   0.004807946  -0.000075917   0.005312759   0.000946864   0.003064190  -0.014210537

    8    8.1  1.5  1.5  -0.000000000  -0.000000006  -0.000000181   0.000000003  -0.000000173  -0.000000031   0.000000035  -0.000000162
                        -0.000000000  -0.000000002  -0.000000004   0.000000000  -0.000000108  -0.000000019  -0.000000037   0.000000172

    9    9.1  1.5  1.5   0.000000020  -0.000000001   0.000000001   0.000000034  -0.000000032   0.000000181  -0.000000307  -0.000000066
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   10   10.1  1.5  1.5  -0.000000004  -0.000000100   0.000000007  -0.000000000   0.000000012   0.000000002   0.000000148  -0.000000684
                         0.000000009   0.000000235  -0.000000327   0.000000005  -0.000000019  -0.000000003   0.000000138  -0.000000642

   11   11.1  1.5  1.5   0.000014449  -0.000000583  -0.000006695  -0.000424023   0.000047157  -0.000264581   0.000079847   0.000017217
                        -0.000000000  -0.000000001  -0.000000000  -0.000000006   0.000000007  -0.000000032  -0.000000082  -0.000000017

   12   12.1  1.5  1.5   0.000001814   0.000045062  -0.000126197   0.000001985   0.000351809   0.000062708   0.000048749  -0.000226113
                         0.000000769   0.000019119  -0.000002817   0.000000044   0.000220102   0.000039227  -0.000052003   0.000241170

   13   13.1  1.5  1.5   0.000000001   0.000000000   0.000000000   0.000000005  -0.000000004   0.000000013  -0.000000392  -0.000000073
                        -0.000003189   0.000000128  -0.000000227  -0.000014305   0.000024573  -0.000137863  -0.000465345  -0.000100330

   14   14.1  1.5  1.5  -0.000010027  -0.000249130   0.000189971  -0.000002992   0.000083720   0.000014919   0.000007553  -0.000035032
                        -0.000004257  -0.000105798   0.000004234  -0.000000067   0.000052355   0.000009331  -0.000008026   0.000037221

   15   15.1  1.5  1.5   0.000000483   0.000012013   0.000001033  -0.000000016  -0.000045562  -0.000008120  -0.000060637   0.000281211
                        -0.000001146  -0.000028476  -0.000043165   0.000000681   0.000072629   0.000012947  -0.000056862   0.000263770

   16   16.1  1.5  1.5   0.000017752  -0.000000718  -0.000007875  -0.000499034  -0.000058315   0.000327164  -0.000070577  -0.000015215
                         0.000000000  -0.000000002   0.000000000   0.000000003  -0.000000007   0.000000021   0.000000065   0.000000010

   17   17.1  1.5  1.5   0.000004182   0.000103940   0.000004493  -0.000000071   0.000027073   0.000004825   0.000006805  -0.000031559
                        -0.000009850  -0.000244740  -0.000201870   0.000003187  -0.000043294  -0.000007716   0.000006388  -0.000029633

   18    1.1  1.5  0.5  -0.000403877  -0.010036879   0.001791487  -0.000028287   0.055252991   0.009847436  -0.040836330   0.189383248
                         0.000952253   0.023645914  -0.079684330   0.001257830  -0.088318937  -0.015740102  -0.038309624   0.177690575

   19    2.1  1.5  0.5  -0.000430928  -0.010709107  -0.010464356   0.000165231   0.044142516   0.007867278  -0.005441357   0.025234931
                         0.001016788   0.025236258   0.471969396  -0.007452188  -0.070548013  -0.012574141  -0.005101693   0.023666159

   20    3.1  1.5  0.5   0.002148327   0.053343765   0.412684719  -0.006515989   0.195882266   0.034911745  -0.000709160   0.003285798
                         0.000911729   0.022657660   0.009151500  -0.000144501   0.122567297   0.021844494   0.000754691  -0.003499966

   21    4.1  1.5  0.5   0.000002879   0.000000441  -0.000000070  -0.000004985   0.000002373  -0.000013454   0.000237572   0.000046440
                         0.042645489  -0.001717340  -0.000546809  -0.034606404   0.024247399  -0.136049526   0.335273347   0.072289835

   22    5.1  1.5  0.5   0.007458408  -0.000299750   0.001885371   0.119338424  -0.111051927   0.623081089   0.287981611   0.062091884
                         0.000001988   0.000000079   0.000000121   0.000006249  -0.000005030   0.000015531  -0.000242652  -0.000046972

   23    6.1  1.5  0.5  -0.081559801   0.003284608  -0.000585052  -0.037097592   0.027593169  -0.154818096   0.315931644   0.068119599
                        -0.000001938   0.000001222  -0.000000048  -0.000004052   0.000006762  -0.000035162  -0.000248699  -0.000049240

   24    7.1  1.5  0.5  -0.000005528   0.000000006  -0.000000067  -0.000003553   0.000001740  -0.000004744   0.000179308   0.000033701
                        -0.009746839   0.000392713   0.000252947   0.015987930  -0.029171585   0.163670855   0.212059816   0.045721382

   25    8.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000366   0.000000015   0.000000009   0.000000540   0.000000072  -0.000000406   0.000000569   0.000000123

   26    9.1  1.5  0.5   0.000000002   0.000000048   0.000000008  -0.000000000  -0.000000301  -0.000000054   0.000000224  -0.000001037
                        -0.000000005  -0.000000112  -0.000000367   0.000000006   0.000000481   0.000000086   0.000000210  -0.000000973

   27   10.1  1.5  0.5   0.000000363  -0.000000015  -0.000000016  -0.000001033   0.000000081  -0.000000454   0.000000881   0.000000190
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000

   28   11.1  1.5  0.5  -0.000000212  -0.000005273   0.000008992  -0.000000142  -0.000059450  -0.000010595   0.000018956  -0.000087912
                         0.000000501   0.000012425  -0.000405830   0.000006408   0.000095020   0.000016937   0.000017783  -0.000082474

   29   12.1  1.5  0.5   0.000000007  -0.000000001  -0.000000000  -0.000000014   0.000000009  -0.000000056   0.000000278   0.000000053
                        -0.000016962   0.000000683  -0.000000571  -0.000036391   0.000029198  -0.000163818   0.000277695   0.000059873

   30   13.1  1.5  0.5   0.000000836   0.000020757  -0.000404129   0.000006380  -0.000191914  -0.000034207   0.000000709  -0.000003270
                         0.000000355   0.000008817  -0.000008949   0.000000141  -0.000120078  -0.000021401  -0.000000746   0.000003460

   31   14.1  1.5  0.5  -0.000000006   0.000000000   0.000000000   0.000000011  -0.000000010   0.000000066   0.000000160   0.000000031
                         0.000000234  -0.000000010   0.000000130   0.000008175  -0.000022969   0.000128860   0.000271773   0.000058599

   32   15.1  1.5  0.5   0.000031709  -0.000001277  -0.000000771  -0.000049154   0.000039009  -0.000218854   0.000276043   0.000059519
                         0.000000006  -0.000000001   0.000000000   0.000000008  -0.000000005   0.000000043  -0.000000224  -0.000000045

   33   16.1  1.5  0.5  -0.000000088  -0.000002178  -0.000005195   0.000000082  -0.000035571  -0.000006340   0.000035615  -0.000165171
                         0.000000207   0.000005126   0.000234552  -0.000003702   0.000056890   0.000010143   0.000033411  -0.000154977

   34   17.1  1.5  0.5  -0.000000663   0.000000027  -0.000001771  -0.000112073   0.000105036  -0.000589330  -0.000314687  -0.000067850
                         0.000000000   0.000000000  -0.000000000  -0.000000007   0.000000004  -0.000000012   0.000000280   0.000000055

   35    1.1  1.5 -0.5  -0.025687899   0.001034361  -0.001258148  -0.079704464  -0.018566712   0.104178345  -0.259691958  -0.055993138
                        -0.000005786   0.000000529   0.000000318   0.000019597  -0.000001339   0.000008991   0.000204725   0.000040175

   36    2.1  1.5 -0.5  -0.027414478   0.001104336   0.007454020   0.472085387  -0.014832501   0.083220093  -0.034596075  -0.007458929
                        -0.000008770   0.000000859   0.000000478   0.000030497  -0.000000601   0.000001122   0.000019436   0.000003175

   37    3.1  1.5 -0.5  -0.000000810  -0.000000674  -0.000000390  -0.000025082  -0.000000634   0.000001395  -0.000005187  -0.000001592
                        -0.057956250   0.002333786   0.006517591   0.412786175   0.041182664  -0.231068397  -0.004800646  -0.001035598

   38    4.1  1.5 -0.5   0.001580846   0.039250629   0.034597741  -0.000546673  -0.115324900  -0.020553770  -0.049455606   0.229386566
                         0.000670956   0.016674108   0.000774312  -0.000012226  -0.072177844  -0.012863860   0.052725378  -0.244520095

   39    5.1  1.5 -0.5  -0.000117254  -0.002913895   0.002646744  -0.000041792  -0.330495473  -0.058902388  -0.045282549   0.210003110
                         0.000275865   0.006865644  -0.119309070   0.001884908   0.528207144   0.094143716  -0.042484056   0.197058775

   40    6.1  1.5 -0.5   0.001282932   0.031882499  -0.000820658   0.000012958   0.082092277   0.014630855  -0.049680025   0.230396912
                        -0.003023696  -0.075070017   0.037088514  -0.000584909  -0.131261198  -0.023394895  -0.046606623   0.216171526

   41    7.1  1.5 -0.5  -0.000361459  -0.008969023  -0.015984057   0.000252886   0.138749732   0.024730287  -0.031282504   0.145107805
                        -0.000153529  -0.003815433  -0.000351872   0.000005556   0.086813942   0.015472371   0.033344428  -0.154638684

   42    8.1  1.5 -0.5  -0.000000014  -0.000000336  -0.000000539   0.000000009  -0.000000344  -0.000000061  -0.000000084   0.000000389
                        -0.000000006  -0.000000143  -0.000000012   0.000000000  -0.000000215  -0.000000038   0.000000089  -0.000000415

   43    9.1  1.5 -0.5   0.000000122  -0.000000005  -0.000000006  -0.000000367   0.000000101  -0.000000568   0.000001421   0.000000306
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000

   44   10.1  1.5 -0.5  -0.000000006  -0.000000142  -0.000000023   0.000000000   0.000000240   0.000000043  -0.000000139   0.000000642
                         0.000000013   0.000000334   0.000001033  -0.000000016  -0.000000385  -0.000000069  -0.000000130   0.000000603

   45   11.1  1.5 -0.5  -0.000013498   0.000000544  -0.000006410  -0.000405929   0.000019978  -0.000112085   0.000120542   0.000025991
                        -0.000000004   0.000000000  -0.000000001  -0.000000032   0.000000002  -0.000000006  -0.000000088  -0.000000018

   46   12.1  1.5 -0.5  -0.000000629  -0.000015615   0.000036382  -0.000000571  -0.000138842  -0.000024747  -0.000040972   0.000190052
                        -0.000000267  -0.000006624   0.000000823  -0.000000013  -0.000086943  -0.000015495   0.000043659  -0.000202472

   47   13.1  1.5 -0.5  -0.000000001  -0.000000000   0.000000001   0.000000038   0.000000003  -0.000000007   0.000000021   0.000000007
                        -0.000022552   0.000000908  -0.000006382  -0.000404228  -0.000040350   0.000226384   0.000004761   0.000001029

   48   14.1  1.5 -0.5   0.000000009   0.000000217  -0.000008173   0.000000130   0.000109202   0.000019466  -0.000040085   0.000185917
                         0.000000003   0.000000086  -0.000000193   0.000000003   0.000068408   0.000012192   0.000042744  -0.000198231

   49   15.1  1.5 -0.5  -0.000000499  -0.000012391  -0.000001100   0.000000017   0.000116125   0.000020696  -0.000043407   0.000201303
                         0.000001176   0.000029188   0.000049142  -0.000000771  -0.000185504  -0.000033065  -0.000040724   0.000188884

   50   16.1  1.5 -0.5  -0.000005569   0.000000224   0.000003703   0.000234609   0.000011961  -0.000067095   0.000226494   0.000048834
                         0.000000001   0.000000000   0.000000000   0.000000020   0.000000006  -0.000000023  -0.000000182  -0.000000035

   51   17.1  1.5 -0.5   0.000000010   0.000000259  -0.000002485   0.000000039   0.000312595   0.000055712   0.000049480  -0.000229467
                        -0.000000025  -0.000000610   0.000112045  -0.000001770  -0.000499594  -0.000089044   0.000046426  -0.000215343

   52    1.1  1.5 -1.5   0.000880433   0.021879885  -0.013975407   0.000220670  -0.115984012  -0.020671192   0.006147112  -0.028507947
                        -0.002072917  -0.051514622   0.628494733  -0.009923856   0.185358629   0.033035448   0.005758479  -0.026705616

   53    2.1  1.5 -1.5   0.000297289   0.007388067  -0.005056199   0.000079837   0.196151761   0.034959048  -0.015998013   0.074192647
                        -0.000699898  -0.017393091   0.227673234  -0.003596434  -0.313545350  -0.055883944  -0.015013441   0.069630087

   54    3.1  1.5 -1.5   0.000303727   0.007558692   0.014533586  -0.000229895  -0.119236925  -0.021253287   0.070108352  -0.325189661
                         0.000129256   0.003212129   0.000280610  -0.000004431  -0.074619008  -0.013298935  -0.074727469   0.346557365

   55    4.1  1.5 -1.5   0.000045415  -0.000001880   0.000000089   0.000006339   0.000010837  -0.000056566  -0.000252003  -0.000049504
                         0.022512958  -0.000905783   0.001349682   0.085447530  -0.077601467   0.435407387  -0.340934006  -0.073510388

   56    5.1  1.5 -1.5  -0.690919771   0.027807424  -0.003310104  -0.209639466  -0.007489326   0.042022697  -0.000017192  -0.000003792
                        -0.000003019   0.000002369   0.000000025   0.000001500  -0.000005407   0.000030858  -0.000025743  -0.000005459

   57    6.1  1.5 -1.5   0.002416377  -0.000097423   0.000327837   0.020797441  -0.016552949   0.092870283   0.396058855   0.085395294
                        -0.000018837   0.000000678   0.000000152   0.000010399  -0.000000008  -0.000004132  -0.000336737  -0.000066115

   58    7.1  1.5 -1.5  -0.000004871   0.000002634   0.000000133   0.000005723  -0.000001315   0.000006068   0.000029260   0.000005868
                         0.709613381  -0.028560091  -0.003420911  -0.216531283  -0.001782943   0.010006015   0.019499232   0.004204167

   59    8.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000006   0.000000000   0.000000003   0.000000181   0.000000036  -0.000000205  -0.000000236  -0.000000051

   60    9.1  1.5 -1.5   0.000000000   0.000000008  -0.000000001   0.000000000   0.000000096   0.000000017  -0.000000048   0.000000224
                        -0.000000001  -0.000000019   0.000000034  -0.000000001  -0.000000153  -0.000000027  -0.000000045   0.000000210

   61   10.1  1.5 -1.5   0.000000255  -0.000000010   0.000000005   0.000000327   0.000000004  -0.000000022  -0.000000938  -0.000000202
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000

   62   11.1  1.5 -1.5   0.000000227   0.000005649   0.000009421  -0.000000149  -0.000140318  -0.000025008   0.000012553  -0.000058216
                        -0.000000537  -0.000013299  -0.000423919   0.000006693   0.000224307   0.000039980   0.000011783  -0.000054648

   63   12.1  1.5 -1.5  -0.000000018   0.000000001   0.000000000   0.000000011   0.000000009  -0.000000030  -0.000000139  -0.000000024
                         0.000048951  -0.000001971   0.000001985   0.000126228  -0.000073967   0.000414987  -0.000330590  -0.000071279

   64   13.1  1.5 -1.5   0.000000118   0.000002935  -0.000014302   0.000000227   0.000116876   0.000020834  -0.000068645   0.000318425
                         0.000000050   0.000001246  -0.000000313   0.000000005   0.000073117   0.000013031   0.000073171  -0.000339341

   65   14.1  1.5 -1.5   0.000000014  -0.000000002  -0.000000000  -0.000000010   0.000000004  -0.000000026  -0.000000120  -0.000000025
                        -0.000270664   0.000010894  -0.000002993  -0.000190018  -0.000017597   0.000098742  -0.000051114  -0.000011021

   66   15.1  1.5 -1.5  -0.000030907   0.000001244   0.000000681   0.000043178  -0.000015283   0.000085737   0.000385557   0.000083127
                        -0.000000075   0.000000003  -0.000000001  -0.000000073   0.000000016  -0.000000098  -0.000000247  -0.000000043

   67   16.1  1.5 -1.5   0.000000279   0.000006940   0.000011097  -0.000000175   0.000173524   0.000030926  -0.000011097   0.000051463
                        -0.000000661  -0.000016339  -0.000498910   0.000007873  -0.000277355  -0.000049438  -0.000010409   0.000048298

   68   17.1  1.5 -1.5  -0.000265897   0.000010702   0.000003188   0.000201920   0.000009100  -0.000051062  -0.000043290  -0.000009334
                        -0.000000009   0.000000001  -0.000000000  -0.000000005   0.000000003  -0.000000014   0.000000051   0.000000010

   69    1.1  0.5  0.5   0.000000118   0.000002936  -0.087173819   0.001376419   0.047125943   0.008399381  -0.001302217   0.006039631
                         0.000000050   0.000001247  -0.001937067   0.000030586   0.029481499   0.005254325   0.001386493  -0.006430024

   70    2.1  0.5  0.5  -0.000000033  -0.000000820   0.001141038  -0.000018017   0.050024068   0.008915514  -0.003573589   0.016572934
                         0.000000078   0.000001930  -0.051249128   0.000809164  -0.079960077  -0.014251111  -0.003350736   0.015541381

   71    3.1  0.5  0.5   0.000000000  -0.000000000  -0.000000011  -0.000000600  -0.000000127   0.000002653   0.000085653   0.000016845
                         0.000001509  -0.000000061   0.001445133   0.091518831  -0.007430657   0.041689576   0.102789213   0.022162711

   72    4.1  0.5  0.5   0.000000361  -0.000000015   0.000331224   0.020992485   0.010684721  -0.059948158  -0.076282247  -0.016447265
                         0.000000000   0.000000000  -0.000000009  -0.000000233  -0.000000227   0.000002997   0.000063997   0.000012387

   73    5.1  0.5  0.5  -0.000000010  -0.000000243   0.000581137  -0.000009176  -0.020028413  -0.003569554   0.019446753  -0.090186586
                         0.000000023   0.000000573  -0.026171605   0.000413420   0.032025523   0.005707751   0.018243905  -0.084619229

   74    6.1  0.5  0.5  -0.000000000   0.000000000  -0.000000030  -0.000001492   0.000001528  -0.000006735   0.000001770   0.000000201
                        -0.000001093   0.000000044  -0.000870771  -0.055166013  -0.022884553   0.128400025  -0.006681303  -0.001440845

   75    7.1  0.5  0.5   0.000001787  -0.000000072   0.001898325   0.120215875  -0.005227918   0.029331895  -0.057150003  -0.012322428
                         0.000000000   0.000000000   0.000000017   0.000000880  -0.000001229   0.000005998   0.000044587   0.000008854

   76    8.1  0.5  0.5   0.000000029   0.000000712   0.000001935  -0.000000031  -0.000001198  -0.000000213  -0.000001039   0.000004820
                         0.000000012   0.000000302   0.000000043  -0.000000001  -0.000000749  -0.000000133   0.000001108  -0.000005137

   77    9.1  0.5  0.5   0.000000076   0.000001883   0.000000121  -0.000000002  -0.000000242  -0.000000043  -0.000000553   0.000002566
                        -0.000000178  -0.000004434  -0.000005427   0.000000086   0.000000386   0.000000069  -0.000000519   0.000002408

   78   10.1  0.5  0.5   0.000000163   0.000004060   0.000008427  -0.000000133   0.000001194   0.000000213  -0.000000517   0.000002399
                         0.000000069   0.000001725   0.000000187  -0.000000003   0.000000747   0.000000133   0.000000551  -0.000002557

   79   11.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000006   0.000000001
                        -0.000000402   0.000000016  -0.000000031  -0.000001946   0.000000963  -0.000005402   0.000008168   0.000001761

   80   12.1  0.5  0.5  -0.000000100   0.000000004  -0.000000025  -0.000001611   0.000000619  -0.000003471   0.000004609   0.000000994
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000003  -0.000000001

   81   13.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000399   0.000000016   0.000000011   0.000000694  -0.000000018   0.000000102  -0.000000017  -0.000000004

   82   14.1  0.5  0.5   0.000000451  -0.000000018  -0.000000010  -0.000000625  -0.000000051   0.000000284  -0.000000187  -0.000000040
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   83   15.1  0.5  0.5  -0.000000001  -0.000000013   0.000000002  -0.000000000  -0.000000195  -0.000000035   0.000000035  -0.000000161
                         0.000000001   0.000000031  -0.000000085   0.000000001   0.000000313   0.000000056   0.000000032  -0.000000151

   84    1.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000020  -0.000001357   0.000001186  -0.000005514   0.000011769   0.000002467
                         0.000003190  -0.000000128   0.001376759   0.087195338  -0.009907448   0.055587888   0.008821690   0.001902137

   85    2.1  0.5 -0.5   0.000002097  -0.000000084   0.000809365   0.051261829   0.016810133  -0.094318721   0.022719959   0.004898771
                         0.000000000  -0.000000000  -0.000000024  -0.000001446   0.000001526  -0.000007765  -0.000011838  -0.000002246

   86    3.1  0.5 -0.5  -0.000000056  -0.000001389   0.091496226  -0.001444776  -0.035339720  -0.006299057   0.015164066  -0.070335447
                        -0.000000024  -0.000000590   0.002033939  -0.000032116  -0.022116169  -0.003941643  -0.016162832   0.074957018

   87    4.1  0.5 -0.5   0.000000006   0.000000141  -0.000466913   0.000007372  -0.031801587  -0.005667822  -0.011994746   0.055627037
                        -0.000000013  -0.000000332   0.020987292  -0.000331142   0.050817721   0.009057542  -0.011253387   0.052197874

   88    5.1  0.5 -0.5   0.000000622  -0.000000025   0.000413522   0.026178056  -0.006732023   0.037772627  -0.123669012  -0.026664881
                         0.000000000   0.000000000   0.000000017   0.000000822  -0.000001648   0.000009190   0.000098102   0.000019424

   89    6.1  0.5 -0.5   0.000000040   0.000001006  -0.055152346   0.000870555  -0.108850967  -0.019400526  -0.000984902   0.004566452
                         0.000000017   0.000000427  -0.001227878   0.000019388  -0.068103110  -0.012137642   0.001051667  -0.004877226

   90    7.1  0.5 -0.5   0.000000028   0.000000698  -0.002671617   0.000042185   0.015553796   0.002772068  -0.008986856   0.041677594
                        -0.000000066  -0.000001645   0.120186185  -0.001897856  -0.024868444  -0.004432468  -0.008430820   0.039103746

   91    8.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000005   0.000000001
                         0.000000773  -0.000000031  -0.000000031  -0.000001936   0.000000252  -0.000001413   0.000007044   0.000001519

   92    9.1  0.5 -0.5  -0.000004817   0.000000194   0.000000086   0.000005429  -0.000000081   0.000000456   0.000003519   0.000000759
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000003  -0.000000001

   93   10.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000003   0.000000000
                         0.000004412  -0.000000178  -0.000000133  -0.000008429  -0.000000251   0.000001408   0.000003506   0.000000756

   94   11.1  0.5 -0.5   0.000000015   0.000000370  -0.000001946   0.000000031   0.000004580   0.000000816   0.000001205  -0.000005589
                         0.000000006   0.000000157  -0.000000043   0.000000001   0.000002865   0.000000511  -0.000001285   0.000005957

   95   12.1  0.5 -0.5  -0.000000002  -0.000000039   0.000000036  -0.000000001  -0.000001840  -0.000000328   0.000000725  -0.000003361
                         0.000000004   0.000000092  -0.000001610   0.000000025   0.000002942   0.000000524   0.000000680  -0.000003154

   96   13.1  0.5 -0.5   0.000000015   0.000000367   0.000000694  -0.000000011  -0.000000086  -0.000000015  -0.000000002   0.000000012
                         0.000000006   0.000000156   0.000000015  -0.000000000  -0.000000054  -0.000000010   0.000000003  -0.000000012

   97   14.1  0.5 -0.5   0.000000007   0.000000176   0.000000014  -0.000000000   0.000000151   0.000000027  -0.000000029   0.000000137
                        -0.000000017  -0.000000415  -0.000000625   0.000000010  -0.000000241  -0.000000043  -0.000000028   0.000000128

   98   15.1  0.5 -0.5   0.000000033  -0.000000001   0.000000001   0.000000085  -0.000000066   0.000000369  -0.000000220  -0.000000047
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.001680389  -0.053486992   0.107255152   0.021042544  -0.011463322   0.420979148  -0.009460130  -0.238121897
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.008911839   0.283783237  -0.431148953  -0.084587862  -0.002199256   0.080790170  -0.003846471  -0.096782883
                        -0.000000396   0.000043851   0.000113438   0.000021509   0.000001315   0.000001658  -0.000001341   0.000006146

    3    3.1  1.5  1.5  -0.000000631  -0.000039595   0.000109891   0.000021975   0.000001214  -0.000022945  -0.000000416   0.000020516
                         0.004221887   0.134424013   0.444260899   0.087160101  -0.000449187   0.016485220   0.001606480   0.040408137

    4    4.1  1.5  1.5  -0.264882682   0.008317889   0.015635122  -0.079693597  -0.033405391  -0.000910789   0.115736452  -0.004600008
                        -0.126380548   0.003970470   0.085275598  -0.434655080  -0.067973185  -0.001850915   0.124385621  -0.004941603

    5    5.1  1.5  1.5   0.004152617  -0.000130462  -0.000134270   0.000684367  -0.302355162  -0.008233173  -0.148935437   0.005916921
                        -0.008749645   0.000274512   0.000030786  -0.000158007   0.148720126   0.004050125   0.138576939  -0.005506281

    6    6.1  1.5  1.5   0.210471369  -0.006612332   0.077248675  -0.393741350   0.121447775   0.003307040  -0.168657635   0.006700441
                        -0.441059676   0.013851684  -0.014162825   0.072187777  -0.059745051  -0.001630005   0.156882825  -0.006238940

    7    7.1  1.5  1.5   0.015415467  -0.000484733  -0.000914985   0.004665594   0.152209681   0.004144087   0.128788801  -0.005116436
                         0.007337043  -0.000230507  -0.005008279   0.025527524   0.309427979   0.008425767   0.138442320  -0.005500050

    8    8.1  1.5  1.5  -0.000001397   0.000000044   0.000297846  -0.001518457  -0.004595362  -0.000125303   0.011792950  -0.000468872
                        -0.000000667   0.000000021   0.001624582  -0.008280596  -0.009343656  -0.000254429   0.012677390  -0.000503648

    9    9.1  1.5  1.5   0.000000006   0.000000179   0.000262100   0.000051422  -0.000438632   0.016108121  -0.000379291  -0.009546238
                        -0.000000000  -0.000000000   0.000000007   0.000000000  -0.000000012  -0.000000022  -0.000000041  -0.000000034

   10   10.1  1.5  1.5   0.000000490  -0.000000015   0.000870970  -0.004439391   0.009771697   0.000266084  -0.013536369   0.000537774
                        -0.000001026   0.000000032  -0.000159769   0.000813920  -0.004805879  -0.000131081   0.012591911  -0.000500672

   11   11.1  1.5  1.5  -0.000007604  -0.000242140  -0.000772228  -0.000151505  -0.000012778   0.000469211  -0.000014554  -0.000366216
                         0.000000000  -0.000000039   0.000000217   0.000000042  -0.000000002   0.000000003  -0.000000005   0.000000012

   12   12.1  1.5  1.5  -0.000256746   0.000008065  -0.000032616   0.000166291   0.000135698   0.000003710  -0.000181553   0.000007210
                        -0.000122643   0.000003853  -0.000177687   0.000905680   0.000276175   0.000007520  -0.000195306   0.000007759

   13   13.1  1.5  1.5   0.000000003   0.000000047   0.000000261   0.000000062  -0.000000002   0.000000008   0.000000002   0.000000013
                        -0.000004144  -0.000131787   0.000935802   0.000183594  -0.000000946   0.000034769   0.000003385   0.000085228

   14   14.1  1.5  1.5  -0.000039518   0.000001241  -0.000004955   0.000025253  -0.000298519  -0.000008139  -0.000316015   0.000012563
                        -0.000018741   0.000000589  -0.000027216   0.000138722  -0.000607088  -0.000016531  -0.000339551   0.000013490

   15   15.1  1.5  1.5   0.000204443  -0.000006423  -0.000161571   0.000823540  -0.000325252  -0.000008857   0.000317879  -0.000012629
                        -0.000428263   0.000013451   0.000029657  -0.000151221   0.000159714   0.000004355  -0.000295736   0.000011761

   16   16.1  1.5  1.5   0.000004596   0.000146193   0.000529072   0.000103797  -0.000021017   0.000771596  -0.000015848  -0.000398928
                         0.000000002   0.000000024  -0.000000145  -0.000000042  -0.000000012  -0.000000004   0.000000000  -0.000000010

   17   17.1  1.5  1.5  -0.000027053   0.000000850   0.000017870  -0.000091087  -0.000603828  -0.000016442  -0.000351058   0.000013947
                         0.000056716  -0.000001781  -0.000003269   0.000016664   0.000296992   0.000008087   0.000326601  -0.000012979

   18    1.1  1.5  0.5   0.048997033  -0.001539329  -0.076244283   0.388621901   0.062384618   0.001698739  -0.017303529   0.000687437
                        -0.102688282   0.003226787   0.013981117  -0.071260078  -0.030686044  -0.000836199   0.016124963  -0.000641316

   19    2.1  1.5  0.5  -0.079830170   0.002508007  -0.010548112   0.053764384  -0.327134218  -0.008907907   0.191638531  -0.007613428
                         0.167262039  -0.005251923   0.001935923  -0.009859419   0.160893735   0.004385056  -0.178223668   0.007087211

   20    3.1  1.5  0.5  -0.200768757   0.006304561   0.001464275  -0.007470258  -0.022696800  -0.000622797   0.306178063  -0.012171260
                        -0.095812022   0.003010105   0.007967401  -0.040610335  -0.046209385  -0.001258284   0.329158483  -0.013076834

   21    4.1  1.5  0.5   0.000000136   0.000004585  -0.000010568  -0.000002010  -0.000000254  -0.000025319  -0.000000990  -0.000029592
                        -0.001195525  -0.038054275  -0.083353577  -0.016353271   0.010181778  -0.373898676   0.006779629   0.170655093

   22    5.1  1.5  0.5  -0.001628112  -0.051802533  -0.048301963  -0.009476110  -0.007159074   0.262830729   0.017171853   0.432074295
                        -0.000000445  -0.000004395   0.000001960   0.000002137  -0.000003271  -0.000041230   0.000006389  -0.000011632

   23    6.1  1.5  0.5  -0.002630977  -0.083745084  -0.074873312  -0.014689587  -0.009456520   0.347274714  -0.008821234  -0.222038708
                        -0.000000918  -0.000029582   0.000012815   0.000002033  -0.000000424   0.000001988   0.000000659   0.000018212

   24    7.1  1.5  0.5   0.000000759  -0.000100213   0.000006280   0.000001897  -0.000003793  -0.000003321   0.000005329  -0.000030902
                         0.020522743   0.653502056   0.053474609   0.010491138   0.006338892  -0.232719605  -0.017805842  -0.448039424

   25    8.1  1.5  0.5  -0.000000000   0.000000000   0.000002211   0.000000401   0.000000043   0.000000002  -0.000000014   0.000000150
                        -0.000000015  -0.000000487   0.011433324   0.002243126  -0.000391173   0.014364680  -0.000287869  -0.007246467

   26    9.1  1.5  0.5  -0.000000330   0.000000010   0.004323262  -0.022035938   0.000745742   0.000020307  -0.001492554   0.000059296
                         0.000000691  -0.000000022  -0.000792765   0.004040519  -0.000366766  -0.000010053   0.001388258  -0.000055264

   27   10.1  1.5  0.5  -0.000000015  -0.000000482   0.010976974   0.002153593   0.000368412  -0.013529670   0.000368895   0.009283914
                         0.000000000  -0.000000000  -0.000002222  -0.000000409  -0.000000004  -0.000000036   0.000000066  -0.000000048

   28   11.1  1.5  0.5   0.000056503  -0.000001775  -0.000076824   0.000391576  -0.000599737  -0.000016331   0.000365134  -0.000014506
                        -0.000118381   0.000003721   0.000014090  -0.000071803   0.000294966   0.000008044  -0.000339558   0.000013510

   29   12.1  1.5  0.5  -0.000000002   0.000000002   0.000000066   0.000000026   0.000000010  -0.000000153   0.000000007   0.000000180
                        -0.000005346  -0.000170301   0.000195533   0.000038359  -0.000018188   0.000667809  -0.000021803  -0.000548814

   30   13.1  1.5  0.5   0.000196624  -0.000006175   0.000003075  -0.000015681  -0.000047611  -0.000001314   0.000644710  -0.000025622
                         0.000093846  -0.000002948   0.000016782  -0.000085541  -0.000096987  -0.000002641   0.000693117  -0.000027536

   31   14.1  1.5  0.5   0.000000002  -0.000000078  -0.000000039  -0.000000021   0.000000004   0.000000167  -0.000000018  -0.000000092
                         0.000019414   0.000618220  -0.000073281  -0.000014375  -0.000017531   0.000643663   0.000033668   0.000847117

   32   15.1  1.5  0.5  -0.000002384  -0.000075830   0.000145705   0.000028586   0.000018115  -0.000665248   0.000022497   0.000566418
                         0.000000004   0.000000175  -0.000000100  -0.000000017   0.000000002  -0.000000037   0.000000007   0.000000326

   33   16.1  1.5  0.5  -0.000072263   0.000002270  -0.000142600   0.000726843   0.000363929   0.000009910  -0.000175021   0.000006953
                         0.000151400  -0.000004746   0.000026142  -0.000133272  -0.000178989  -0.000004882   0.000162746  -0.000006453

   34   17.1  1.5  0.5   0.000001878   0.000059766  -0.000118661  -0.000023280  -0.000017201   0.000631537   0.000033848   0.000851659
                         0.000000001   0.000000021   0.000000011   0.000000006  -0.000000008  -0.000000047   0.000000014  -0.000000011

   35    1.1  1.5 -0.5   0.003575149   0.113778698  -0.395101221  -0.077515560  -0.001893394   0.069523189   0.000940135   0.023652191
                         0.000000986   0.000022438   0.000074918   0.000014206  -0.000000577   0.000000945   0.000001314   0.000020138

   36    2.1  1.5 -0.5  -0.005820034  -0.185336034  -0.054660928  -0.010724293   0.009928722  -0.364559447  -0.010401578  -0.261704033
                         0.000000735  -0.000016516   0.000009525   0.000000306   0.000003179   0.000011739  -0.000003255   0.000042097

   37    3.1  1.5 -0.5   0.000000360  -0.000028941   0.000015481   0.000001733   0.000003488   0.000028816  -0.000004314   0.000027674
                         0.006986288   0.222459067  -0.041291692  -0.008100838  -0.001403974   0.051482533   0.017864577   0.449544561

   38    4.1  1.5 -0.5  -0.034343731   0.001078950  -0.002950533   0.015038723  -0.165003571  -0.004494122  -0.116259985   0.004618535
                        -0.016390119   0.000514925  -0.016084895   0.081985704  -0.335520554  -0.009136272  -0.124927090   0.004963115

   39    5.1  1.5 -0.5   0.022313211  -0.000701010   0.009320771  -0.047508553  -0.235863308  -0.006422586   0.316356485  -0.012568233
                        -0.046750648   0.001469468  -0.001708768   0.008718776   0.115967640   0.003162710  -0.294290285   0.011700943

   40    6.1  1.5 -0.5   0.036051730  -0.001132630   0.014448554  -0.073645205  -0.311618102  -0.008485404  -0.162580803   0.006459025
                        -0.075587781   0.002374698  -0.002650140   0.013505438   0.153277153   0.004174171   0.151223910  -0.006007925

   41    7.1  1.5 -0.5   0.589790532  -0.018520247   0.001892262  -0.009648426  -0.102711621  -0.002801177   0.305150506  -0.012131996
                         0.281446398  -0.008842139   0.010319076  -0.052596974  -0.208827052  -0.005686385   0.328058677  -0.013033139

   42    8.1  1.5 -0.5  -0.000000440   0.000000014   0.000404592  -0.002062061   0.006340084   0.000172689   0.004935897  -0.000196066
                        -0.000000210   0.000000007   0.002206337  -0.011245835   0.012889816   0.000350992   0.005305489  -0.000210777

   43    9.1  1.5 -0.5  -0.000000024  -0.000000765   0.022403311   0.004395347  -0.000022659   0.000831052   0.000081057   0.002038376
                        -0.000000000  -0.000000000  -0.000004371  -0.000000808  -0.000000058  -0.000000036   0.000000074  -0.000000193

   44   10.1  1.5 -0.5   0.000000208  -0.000000007  -0.002118276   0.010796986   0.012140522   0.000330588   0.006797366  -0.000270046
                        -0.000000435   0.000000014   0.000388420  -0.001979658  -0.005971574  -0.000162601  -0.006323518   0.000251314

   45   11.1  1.5 -0.5   0.000004123   0.000131174  -0.000398104  -0.000078105   0.000018204  -0.000668348  -0.000019823  -0.000498620
                         0.000000001   0.000000009   0.000000074   0.000000012   0.000000010   0.000000023  -0.000000011   0.000000092

   46   12.1  1.5 -0.5  -0.000153688   0.000004824   0.000006900  -0.000035237   0.000294886   0.000008037   0.000373945  -0.000014856
                        -0.000073366   0.000002305   0.000037734  -0.000192331   0.000599176   0.000016316   0.000401698  -0.000015959

   47   13.1  1.5 -0.5  -0.000000000   0.000000018  -0.000000021  -0.000000005   0.000000014   0.000000084  -0.000000004   0.000000071
                        -0.000006843  -0.000217871  -0.000086966  -0.000017062  -0.000002950   0.000108043   0.000037613   0.000946606

   48   14.1  1.5 -0.5   0.000557941  -0.000017519  -0.000002575   0.000013192   0.000283941   0.000007742  -0.000577064   0.000022945
                         0.000266267  -0.000008365  -0.000014142   0.000072084   0.000577650   0.000015729  -0.000620165   0.000024638

   49   15.1  1.5 -0.5   0.000032827  -0.000001031  -0.000028120   0.000143328   0.000596928   0.000016254   0.000414487  -0.000016467
                        -0.000068356   0.000002150   0.000005144  -0.000026208  -0.000293651  -0.000007997  -0.000386043   0.000015328

   50   16.1  1.5 -0.5  -0.000005261  -0.000167762  -0.000738960  -0.000144977  -0.000011047   0.000405564   0.000009486   0.000238995
                         0.000000004  -0.000000012   0.000000146   0.000000033  -0.000000007  -0.000000014  -0.000000011  -0.000000055

   51   17.1  1.5 -0.5  -0.000025729   0.000000808   0.000022898  -0.000116712  -0.000566716  -0.000015432   0.000623560  -0.000024773
                         0.000053944  -0.000001696  -0.000004197   0.000021413   0.000278697   0.000007599  -0.000580083   0.000023066

   52    1.1  1.5 -1.5  -0.023042863   0.000723933   0.020696744  -0.105492588   0.377755958   0.010286348   0.174343904  -0.006926352
                         0.048268880  -0.001516453  -0.003799138   0.019364440  -0.185806026  -0.005059524  -0.162191988   0.006443579

   53    2.1  1.5 -1.5   0.122217784  -0.003839689  -0.083201681   0.424084202   0.072494470   0.001974032   0.070864976  -0.002815328
                        -0.256116655   0.008042243   0.015250806  -0.077730449  -0.035659550  -0.000969498  -0.065917234   0.002620929

   54    3.1  1.5 -1.5  -0.121326862   0.003810278  -0.015714754   0.080101241  -0.007296610  -0.000199346   0.027508176  -0.001094526
                        -0.057875809   0.001818272  -0.085731734   0.436980034  -0.014782506  -0.000402532   0.029599293  -0.001175921

   55    4.1  1.5 -1.5   0.000000334   0.000063715   0.000091075   0.000017946  -0.000000344  -0.000025517   0.000002079   0.000015092
                        -0.009216936  -0.293487434   0.441900554   0.086697084   0.002062868  -0.075738189  -0.006751260  -0.169902056

   56    5.1  1.5 -1.5  -0.000303935  -0.009685042   0.000701648   0.000137621  -0.009175438   0.336951509  -0.008082641  -0.203433852
                        -0.000000529  -0.000021962   0.000031851   0.000006038  -0.000000441   0.000001194  -0.000001299  -0.000016421

   57    6.1  1.5 -1.5  -0.015349009  -0.488704235  -0.400304033  -0.078536253   0.003686926  -0.135347823  -0.009155341  -0.230342394
                        -0.000000235  -0.000075915   0.000086758   0.000016822   0.000003032  -0.000007887  -0.000004046   0.000014081

   58    7.1  1.5 -1.5  -0.000000810  -0.000019923  -0.000019958  -0.000004274  -0.000000248  -0.000010762  -0.000000187  -0.000002909
                         0.000536748   0.017072446  -0.025950373  -0.005091172  -0.009389729   0.344838311  -0.007511888  -0.189084191

   59    8.1  1.5 -1.5  -0.000000000   0.000000000   0.000001521   0.000000359  -0.000000142  -0.000000433   0.000000241  -0.000000597
                        -0.000000049  -0.000001548   0.008418669   0.001651659   0.000283611  -0.010412553  -0.000688115  -0.017314442

   60    9.1  1.5 -1.5   0.000000077  -0.000000002   0.000050577  -0.000257791   0.014454262   0.000393592   0.006989374  -0.000277674
                        -0.000000162   0.000000005  -0.000009284   0.000047327  -0.007109563  -0.000193608  -0.006502254   0.000258377

   61   10.1  1.5 -1.5  -0.000000036  -0.000001137  -0.004513387  -0.000885503   0.000296620  -0.010889560  -0.000734761  -0.018487550
                         0.000000000  -0.000000000   0.000000968   0.000000106   0.000000182   0.000000453  -0.000000280   0.000000704

   62   11.1  1.5 -1.5  -0.000104281   0.000003276  -0.000149023   0.000759577   0.000421034   0.000011465   0.000268138  -0.000010653
                         0.000218534  -0.000006862   0.000027312  -0.000139209  -0.000207096  -0.000005642  -0.000249433   0.000009917

   63   12.1  1.5 -1.5  -0.000000003  -0.000000069   0.000000042  -0.000000001   0.000000010   0.000000129   0.000000006   0.000000103
                        -0.000008938  -0.000284534  -0.000920820  -0.000180655  -0.000008386   0.000307712   0.000010592   0.000266656

   64   13.1  1.5 -1.5   0.000118950  -0.000003741  -0.000033086   0.000168699  -0.000015339  -0.000000415   0.000058041  -0.000002304
                         0.000056733  -0.000001782  -0.000180588   0.000920471  -0.000031203  -0.000000850   0.000062410  -0.000002479

   65   14.1  1.5 -1.5   0.000000003   0.000000112  -0.000000208  -0.000000040  -0.000000007  -0.000000079  -0.000000010  -0.000000096
                        -0.000001373  -0.000043737  -0.000141002  -0.000027664   0.000018426  -0.000676512   0.000018433   0.000463853

   66   15.1  1.5 -1.5  -0.000014906  -0.000474559   0.000837309   0.000164271  -0.000009870   0.000362350   0.000017257   0.000434174
                         0.000000001  -0.000000003   0.000000049  -0.000000001   0.000000001  -0.000000240   0.000000009   0.000000010

   67   16.1  1.5 -1.5   0.000062960  -0.000001978   0.000102099  -0.000520404   0.000692376   0.000018853   0.000292073  -0.000011604
                        -0.000131941   0.000004148  -0.000018699   0.000095379  -0.000340553  -0.000009287  -0.000271730   0.000010794

   68   17.1  1.5 -1.5   0.000001973   0.000062837  -0.000092599  -0.000018167  -0.000018324   0.000672913  -0.000019051  -0.000479489
                         0.000000000   0.000000020   0.000000056   0.000000011   0.000000000  -0.000000010  -0.000000003  -0.000000009

   69    1.1  0.5  0.5  -0.092030013   0.002890173   0.000058214  -0.000297046  -0.028589565  -0.000778829  -0.005169764   0.000205016
                        -0.043915591   0.001379686   0.000317885  -0.001620283  -0.058125839  -0.001582774  -0.005555812   0.000220722

   70    2.1  0.5  0.5  -0.040683184   0.001278135   0.003380547  -0.017230858   0.033421536   0.000910073   0.036957935  -0.001468268
                         0.085257707  -0.002677290  -0.000619827   0.003159784  -0.016439452  -0.000447505  -0.034381225   0.001366422

   71    3.1  0.5  0.5   0.000000159  -0.000001328   0.000006807   0.000001130   0.000000470   0.000000981  -0.000000642   0.000001665
                         0.000224406   0.007156251   0.034150237   0.006700021  -0.001300306   0.047743473   0.001099419   0.027657028

   72    4.1  0.5  0.5  -0.003297975  -0.105018972  -0.018740883  -0.003676765  -0.001082731   0.039752710   0.001910993   0.048083343
                         0.000000163  -0.000015815   0.000003355   0.000000850  -0.000000495  -0.000001245   0.000000720  -0.000001730

   73    5.1  0.5  0.5  -0.024023254   0.000754733  -0.011849063   0.060395419   0.005509744   0.000150031   0.012861845  -0.000510976
                         0.050337220  -0.001580884   0.002172771  -0.011074060  -0.002710293  -0.000073614  -0.011964431   0.000475789

   74    6.1  0.5  0.5   0.000000108  -0.000003189  -0.000007552  -0.000001598   0.000000283   0.000000856  -0.000000503   0.000001018
                         0.001077333   0.034305542  -0.040421584  -0.007930347  -0.000019069   0.000694764   0.002009408   0.050566312

   75    7.1  0.5  0.5   0.001574930   0.050151195  -0.048362383  -0.009488314  -0.000577657   0.021217622  -0.001473829  -0.037086943
                        -0.000000123   0.000006106   0.000009632   0.000001729   0.000000196   0.000000361  -0.000000436   0.000000836

   76    8.1  0.5  0.5  -0.000003940   0.000000124   0.004128142  -0.021040312   0.002048024   0.000056066  -0.009068323   0.000360931
                        -0.000001880   0.000000059   0.022512657  -0.114748428   0.004164304   0.000113395  -0.009749329   0.000387322

   77    9.1  0.5  0.5  -0.000003045   0.000000096   0.001834648  -0.009351318  -0.087600831  -0.002385382   0.050198476  -0.001994288
                         0.000006382  -0.000000200  -0.000336126   0.001715086   0.043085553   0.001174338  -0.046695174   0.001857024

   78   10.1  0.5  0.5   0.000007648  -0.000000240  -0.000477913   0.002438011   0.005951829   0.000163053  -0.080426874   0.003197306
                         0.000003649  -0.000000115  -0.002607824   0.013292243   0.012105238   0.000329626  -0.086457163   0.003434777

   79   11.1  0.5  0.5  -0.000000000   0.000000000   0.000013220   0.000002430   0.000000033  -0.000000007  -0.000000392   0.000000403
                        -0.000000136  -0.000004331   0.066202996   0.012988489   0.002221821  -0.081594802   0.002224794   0.055990996

   80   12.1  0.5  0.5  -0.000000098  -0.000003108   0.068939547   0.013525361  -0.002358652   0.086614596  -0.001735795  -0.043694536
                        -0.000000000  -0.000000001  -0.000013135  -0.000002509  -0.000000247  -0.000000226   0.000000084  -0.000000760

   81   13.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000001  -0.000000034  -0.000003203  -0.000000628   0.000000117  -0.000004302   0.000000094   0.000002374

   82   14.1  0.5  0.5   0.000000005   0.000000173  -0.000002936  -0.000000576  -0.000000094   0.000003463  -0.000000112  -0.000002820
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   83   15.1  0.5  0.5  -0.000000051   0.000000002   0.000001184  -0.000006034   0.000000848   0.000000023  -0.000000385   0.000000015
                         0.000000107  -0.000000003  -0.000000217   0.000001106  -0.000000417  -0.000000011   0.000000358  -0.000000014

   84    1.1  0.5 -0.5   0.000000036   0.000016426   0.000000370   0.000000136  -0.000000281  -0.000000600   0.000000235  -0.000000876
                        -0.003202598  -0.101971085   0.001647286   0.000323172   0.001764015  -0.064776356   0.000301247   0.007589039

   85    2.1  0.5 -0.5   0.002966734   0.094466914  -0.017518182  -0.003436900   0.001014147  -0.037245868   0.002005722   0.050477298
                        -0.000000032   0.000015890   0.000003097   0.000000701  -0.000000117  -0.000000423   0.000000362  -0.000000520

   86    3.1  0.5 -0.5  -0.006458670   0.000202445  -0.001208548   0.006158978  -0.021071482  -0.000574333   0.018836814  -0.000749318
                        -0.003081803   0.000096820  -0.006590121   0.033590262  -0.042841940  -0.001166592   0.020250570  -0.000804516

   87    4.1  0.5 -0.5  -0.045229211   0.001420956  -0.003616497   0.018433513   0.035671730   0.000971346  -0.035205995   0.001398666
                         0.094780290  -0.002976159   0.000662988  -0.003380283  -0.017544391  -0.000478325   0.032749745  -0.001302162

   88    5.1  0.5 -0.5   0.001751804   0.055775913   0.061402290   0.012046627   0.000167118  -0.006140274   0.000698192   0.017566293
                        -0.000000038   0.000006321  -0.000012048  -0.000002230  -0.000000162  -0.000000203   0.000000314  -0.000000683

   89    6.1  0.5 -0.5  -0.030960117   0.000972184   0.001430218  -0.007290509  -0.000305878  -0.000008670   0.034441491  -0.001369036
                        -0.014776377   0.000464226   0.007800313  -0.039758684  -0.000623808  -0.000016986   0.037023446  -0.001470870

   90    7.1  0.5 -0.5   0.021600250  -0.000678610  -0.009332701   0.047569365   0.019038986   0.000518434   0.027154235  -0.001078785
                        -0.045261149   0.001421229   0.001711372  -0.008722139  -0.009365068  -0.000254782  -0.025260420   0.001004189

   91    8.1  0.5 -0.5   0.000000000   0.000000001   0.000022768   0.000004258   0.000000261   0.000000236  -0.000000444   0.000001075
                        -0.000000137  -0.000004366   0.116661459   0.022888016  -0.000126498   0.004640672   0.000529423   0.013314800

   92    9.1  0.5 -0.5   0.000000222   0.000007072  -0.009507296  -0.001865185  -0.002658781   0.097623104   0.002725018   0.068558926
                        -0.000000000   0.000000001   0.000001437   0.000000636  -0.000000938  -0.000002228   0.000001274  -0.000003241

   93   10.1  0.5 -0.5   0.000000000  -0.000000002  -0.000001909  -0.000000771   0.000000826   0.000002107  -0.000001417   0.000003041
                         0.000000266   0.000008474  -0.013513978  -0.002651254  -0.000367749   0.013489294   0.004692596   0.118081849

   94   11.1  0.5 -0.5   0.000003909  -0.000000123  -0.002342623   0.011939653   0.036013193   0.000980607   0.038136857  -0.001515661
                         0.000001866  -0.000000059  -0.012775483   0.065117445   0.073217222   0.001993715   0.040994778  -0.001628644

   95   12.1  0.5 -0.5  -0.000001338   0.000000042   0.013303546  -0.067809009   0.077721715   0.002116374   0.031990980  -0.001270941
                         0.000002805  -0.000000088  -0.002439476   0.012433809  -0.038228565  -0.001041251  -0.029762220   0.001182240

   96   13.1  0.5 -0.5   0.000000031  -0.000000001   0.000000113  -0.000000578   0.000001899   0.000000052   0.000001617  -0.000000064
                         0.000000015  -0.000000000   0.000000618  -0.000003150   0.000003861   0.000000105   0.000001738  -0.000000069

   97   14.1  0.5 -0.5   0.000000075  -0.000000002  -0.000000567   0.000002888   0.000003108   0.000000085   0.000002065  -0.000000082
                        -0.000000156   0.000000005   0.000000104  -0.000000530  -0.000001529  -0.000000042  -0.000001921   0.000000076

   98   15.1  0.5 -0.5   0.000000004   0.000000119  -0.000006134  -0.000001203   0.000000026  -0.000000945  -0.000000021  -0.000000525
                        -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.092446268   0.001013213  -0.027889187  -0.149947328  -0.000000000  -0.052308313  -0.001990341  -0.114268174
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.350773525  -0.003844004  -0.010980066  -0.059033167   0.000000032  -0.011225171   0.000197932   0.011360354
                         0.000087938  -0.000000871   0.000001165   0.000003535  -0.000000012   0.000000297  -0.000000098  -0.000002468

    3    3.1  1.5  1.5   0.000085041  -0.000000195   0.000003355   0.000012480   0.000000090   0.000002951   0.000000105   0.000005740
                         0.362606850   0.003973883   0.004389433   0.023596725   0.000000235   0.003786761  -0.000399614  -0.022942538

    4    4.1  1.5  1.5  -0.000640177   0.058507486   0.010478497  -0.001948516  -0.080782839   0.000000098   0.052870388  -0.000920959
                         0.002452327  -0.223752098  -0.018118179   0.003369858   0.031125173  -0.000000000  -0.050539760   0.000880310

    5    5.1  1.5  1.5  -0.000330940   0.030195032   0.436270267  -0.081143314   0.005713515   0.000000000   0.023724507  -0.000413237
                        -0.000087520   0.007874574   0.253335562  -0.047123748   0.014844752  -0.000000017   0.024812069  -0.000432201

    6    6.1  1.5  1.5   0.002437194  -0.222371330   0.007664516  -0.001425549  -0.030395033  -0.000000000  -0.003623172   0.000063109
                         0.000637209  -0.058148317   0.004472283  -0.000832457  -0.078882273   0.000000106  -0.003789898   0.000065957

    7    7.1  1.5  1.5  -0.000049474   0.004435667   0.253179497  -0.047094262   0.021580483   0.000000124   0.021158035  -0.000368292
                         0.000186443  -0.017011015  -0.435997664   0.081092612  -0.008318271   0.000000000  -0.020225015   0.000352283

    8    8.1  1.5  1.5  -0.000027520   0.002515617  -0.000326236   0.000060695  -0.000008386   0.000000000   0.000000902  -0.000000016
                         0.000105445  -0.009620851   0.000561662  -0.000104465   0.000003231   0.000000000  -0.000000862   0.000000015

    9    9.1  1.5  1.5   0.001139768   0.000012500  -0.003150021  -0.016935758   0.000000000   0.000015991   0.000000089   0.000005087
                        -0.000000094  -0.000000031   0.000000130  -0.000000083  -0.000000000  -0.000000000   0.000000000   0.000000000

   10   10.1  1.5  1.5   0.000105421  -0.009618688   0.000557574  -0.000103705  -0.000003017   0.000000000   0.000001021  -0.000000018
                         0.000027515  -0.002515052   0.000323859  -0.000060269  -0.000007830   0.000000000   0.000001068  -0.000000019

   11   11.1  1.5  1.5  -0.002063123  -0.000022609  -0.000139445  -0.000749644  -0.000000002  -0.001140509  -0.000020211  -0.001159948
                         0.000000556  -0.000000003   0.000000031   0.000000018   0.000000001   0.000000010   0.000000005  -0.000000085

   12   12.1  1.5  1.5   0.000004300  -0.000390988   0.000296965  -0.000055258   0.003310680  -0.000000033  -0.001873903   0.000032569
                        -0.000016407   0.001496971  -0.000510929   0.000095029  -0.001274608   0.000000000   0.001791383  -0.000031203

   13   13.1  1.5  1.5   0.000000677   0.000000017   0.000000014   0.000000024   0.000000018  -0.000000013   0.000000001  -0.000000082
                         0.002523805   0.000027664   0.000030558   0.000164268   0.000000046   0.000149905  -0.000015839  -0.000909487

   14   14.1  1.5  1.5   0.000001271  -0.000115623  -0.001737628   0.000323233  -0.000168246   0.000000023  -0.001258546   0.000021971
                        -0.000004832   0.000440890   0.002992088  -0.000556508   0.000064029   0.000000000   0.001202875  -0.000020952

   15   15.1  1.5  1.5  -0.000017100   0.001560240   0.000285329  -0.000053069   0.001221413   0.000000000   0.000247875  -0.000004318
                        -0.000004497   0.000407647   0.000166737  -0.000031013   0.003172803  -0.000000006   0.000258854  -0.000004496

   16   16.1  1.5  1.5   0.001455932   0.000015961  -0.000155259  -0.000834624  -0.000000058  -0.001786374  -0.000076644  -0.004401189
                        -0.000000386  -0.000000020   0.000000037  -0.000000028   0.000000022  -0.000000014  -0.000000014   0.000000097

   17   17.1  1.5  1.5  -0.000000394   0.000035985   0.003021112  -0.000561906   0.000090928  -0.000000000   0.000918176  -0.000015993
                        -0.000000110   0.000009325   0.001754430  -0.000326347   0.000236367  -0.000000000   0.000960450  -0.000016731

   18    1.1  1.5  0.5  -0.005083966   0.463864756   0.043043210  -0.008005743  -0.006302326  -0.000000000  -0.026584459   0.000463053
                        -0.001327087   0.121291104   0.025010550  -0.004651037  -0.016355850   0.000000215  -0.027817728   0.000484520

   19    2.1  1.5  0.5  -0.000918997   0.083850139  -0.306529459   0.057012403   0.029199950  -0.000000000   0.032743855  -0.000570338
                        -0.000238907   0.021929026  -0.177980335   0.033106952   0.075788531   0.000000058   0.034247802  -0.000596591

   20    3.1  1.5  0.5   0.000068757  -0.006095679  -0.179031994   0.033303049  -0.010553727   0.000000008   0.065803945  -0.001146143
                        -0.000254458   0.023216767   0.308337403  -0.057348668   0.004061381   0.000000000  -0.062900390   0.001095609

   21    4.1  1.5  0.5  -0.000067318   0.000000674   0.000000929   0.000000751   0.000000003   0.000005167  -0.000000052  -0.000001952
                        -0.411432417  -0.004508938   0.037035064   0.199118047   0.000000008   0.007287052  -0.000593923  -0.034096782

   22    5.1  1.5  0.5  -0.004585457  -0.000050249  -0.000560826  -0.003015185  -0.000000072  -0.073733396   0.000679596   0.039014941
                        -0.000027649  -0.000000333   0.000002606   0.000013811   0.000000028   0.000002066  -0.000000115  -0.000004941

   23    6.1  1.5  0.5  -0.382117617  -0.004187391  -0.046747060  -0.251324858  -0.000000027   0.002471882  -0.000579037  -0.033253008
                         0.000063847  -0.000001688   0.000004877   0.000004590   0.000000011  -0.000002662  -0.000000164  -0.000000080

   24    7.1  1.5  0.5  -0.000007850  -0.000001477  -0.000001154  -0.000008464  -0.000000004   0.000001294   0.000000002  -0.000000361
                         0.029304310   0.000320812  -0.002637326  -0.014181002  -0.000000010   0.080066376  -0.000301059  -0.017284549

   25    8.1  1.5  0.5   0.000002074  -0.000000061   0.000000117  -0.000000006   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.010829531   0.000118670   0.001957512   0.010524272   0.000000000   0.000013627   0.000000082   0.000004682

   26    9.1  1.5  0.5   0.000060816  -0.005548906   0.000322478  -0.000059979   0.000000345  -0.000000000   0.000000143  -0.000000002
                         0.000015863  -0.001450919   0.000187306  -0.000034867   0.000000896  -0.000000000   0.000000150  -0.000000003

   27   10.1  1.5  0.5   0.012143383   0.000133083  -0.001678943  -0.009026747  -0.000000000  -0.000014668  -0.000000081  -0.000004640
                        -0.000002179   0.000000010   0.000000025  -0.000000141   0.000000000   0.000000000  -0.000000000  -0.000000000

   28   11.1  1.5  0.5  -0.000018342   0.001673533  -0.001893940   0.000352260   0.000997559  -0.000000000   0.000848178  -0.000014774
                        -0.000004780   0.000437619  -0.001099655   0.000204554   0.002589185  -0.000000020   0.000887002  -0.000015445

   29   12.1  1.5  0.5   0.000001191   0.000000050   0.000000099   0.000000470  -0.000000010  -0.000000222  -0.000000015   0.000000445
                         0.002842099   0.000031159  -0.000255891  -0.001375847  -0.000000027   0.000381936   0.000020508   0.001178764

   30   13.1  1.5  0.5   0.000000507  -0.000042205  -0.001245752   0.000231752  -0.000418422  -0.000000003   0.002608542  -0.000045418
                        -0.000001771   0.000161582   0.002145631  -0.000399073   0.000160911  -0.000000000  -0.002493627   0.000043434

   31   14.1  1.5  0.5  -0.000000505  -0.000000043  -0.000000071  -0.000000376  -0.000000000   0.000000101   0.000000003  -0.000000386
                         0.000399057   0.000004364  -0.000035900  -0.000193014  -0.000000001  -0.003162826   0.000016600   0.000952442

   32   15.1  1.5  0.5   0.002638579   0.000028915   0.000322893   0.001735880   0.000000006  -0.000424467   0.000025778   0.001482029
                        -0.000001154   0.000000002   0.000000006   0.000000318  -0.000000002  -0.000000791   0.000000033  -0.000000107

   33   16.1  1.5  0.5  -0.000030908   0.002820085   0.001025821  -0.000190796  -0.000638422   0.000000000  -0.001440970   0.000025099
                        -0.000008114   0.000737373   0.000595550  -0.000110751  -0.001657043  -0.000000035  -0.001507252   0.000026245

   34   17.1  1.5  0.5  -0.000328532  -0.000003600  -0.000040164  -0.000215928  -0.000000003  -0.002891324   0.000024197   0.001389015
                        -0.000000046  -0.000000002   0.000000014   0.000000053   0.000000001  -0.000000014  -0.000000005  -0.000000132

   35    1.1  1.5 -0.5   0.479460150   0.005254319  -0.009258729  -0.049781979   0.000000200   0.017528067   0.000670207   0.038478039
                        -0.000088012   0.000001227   0.000001663   0.000012452  -0.000000077   0.000000549  -0.000000058  -0.000003907

   36    2.1  1.5 -0.5   0.086670223   0.000949543   0.065927873   0.354453535   0.000000054  -0.081219078  -0.000825352  -0.047382190
                        -0.000019719   0.000001172   0.000001229   0.000024344  -0.000000021   0.000000540  -0.000000058  -0.000005594

   37    3.1  1.5 -0.5  -0.000028565  -0.000002197  -0.000000519  -0.000022834   0.000000003   0.000004534   0.000000041   0.000000727
                        -0.024003640  -0.000263575   0.066317139   0.356545100   0.000000007   0.011308225  -0.001585561  -0.091030865

   38    4.1  1.5 -0.5  -0.001139193   0.104073895   0.099994823  -0.018599272   0.006801658  -0.000000009  -0.024649252   0.000429371
                         0.004362656  -0.398051835  -0.172188943   0.032025975  -0.002615070   0.000000000   0.023558543  -0.000410347

   39    5.1  1.5 -0.5  -0.000048701   0.004443508  -0.002600476   0.000483671  -0.026507221  -0.000000000   0.026954697  -0.000469499
                        -0.000012381   0.001132438  -0.001526125   0.000283892  -0.068803931   0.000000078   0.028206558  -0.000491346

   40    6.1  1.5 -0.5  -0.004051808   0.369690073  -0.217333376   0.040422537   0.000886224  -0.000000000  -0.022976987   0.000400217
                        -0.001056926   0.096659852  -0.126215641   0.023479908   0.002307556   0.000000029  -0.024037899   0.000418462

   41    7.1  1.5 -0.5   0.000079671  -0.007400438  -0.007128811   0.001325424   0.074713176   0.000000011  -0.012494915   0.000217628
                        -0.000310765   0.028354473   0.012258912  -0.002280075  -0.028784819   0.000000000   0.011942895  -0.000208025

   42    8.1  1.5 -0.5   0.000029940  -0.002739676   0.005285131  -0.000983135   0.000012716  -0.000000000   0.000003385  -0.000000059
                        -0.000114831   0.010477258  -0.009100972   0.001692719  -0.000004899  -0.000000000  -0.000003236   0.000000056

   43    9.1  1.5 -0.5  -0.005735462  -0.000062851  -0.000069377  -0.000372928  -0.000000000  -0.000000960  -0.000000004  -0.000000207
                         0.000001047  -0.000000026   0.000000031   0.000000031   0.000000000   0.000000000   0.000000000  -0.000000000

   44   10.1  1.5 -0.5   0.000128763  -0.011748408  -0.007806040   0.001451871  -0.000005273   0.000000000  -0.000003206   0.000000056
                         0.000033634  -0.003071915  -0.004532979   0.000843162  -0.000013687   0.000000000  -0.000003354   0.000000058

   45   11.1  1.5 -0.5   0.001729804   0.000018955   0.000407345   0.002190034  -0.000000018  -0.002774708  -0.000021373  -0.001227265
                        -0.000000341   0.000000012   0.000000010   0.000000172   0.000000007   0.000000025  -0.000000007  -0.000000237

   46   12.1  1.5 -0.5   0.000007925  -0.000719626  -0.000690524   0.000128419   0.000356317   0.000000029   0.000852413  -0.000014814
                        -0.000030134   0.002749485   0.001190013  -0.000221334  -0.000137524  -0.000000000  -0.000814172   0.000014181

   47   13.1  1.5 -0.5   0.000000013  -0.000000042   0.000000001  -0.000000228  -0.000000001   0.000000282   0.000000015   0.000000163
                        -0.000167003  -0.000001841   0.000461485   0.002481054  -0.000000003   0.000448296  -0.000062844  -0.003608693

   48   14.1  1.5 -0.5   0.000001062  -0.000100392  -0.000097254   0.000018089  -0.002951306   0.000000001   0.000688236  -0.000012001
                        -0.000004233   0.000386223   0.000166722  -0.000031009   0.001137215  -0.000000000  -0.000658391   0.000011468

   49   15.1  1.5 -0.5   0.000027976  -0.002552585   0.001501279  -0.000279228  -0.000153346  -0.000000000   0.001023964  -0.000017836
                         0.000007308  -0.000668141   0.000871459  -0.000162147  -0.000395801  -0.000000006   0.001071404  -0.000018611

   50   16.1  1.5 -0.5   0.002914893   0.000031955  -0.000220610  -0.001186165  -0.000000032   0.001775775   0.000036315   0.002085235
                        -0.000000514  -0.000000037  -0.000000042  -0.000000144   0.000000012  -0.000000018   0.000000009   0.000000179

   51   17.1  1.5 -0.5  -0.000003484   0.000317873  -0.000186699   0.000034725  -0.001039522  -0.000000000   0.000959677  -0.000016716
                        -0.000000908   0.000083008  -0.000108481   0.000020182  -0.002697989   0.000000003   0.001004183  -0.000017495

   52    1.1  1.5 -1.5  -0.000980304   0.089443560   0.129668449  -0.024117453   0.018806253  -0.000000000   0.078956217  -0.001375272
                        -0.000256137   0.023370113   0.075301358  -0.014005542   0.048810701  -0.000000000   0.082602248  -0.001438779

   53    2.1  1.5 -1.5   0.003719369  -0.339357966   0.051047745  -0.009494536   0.004035475   0.000000000  -0.007847914   0.000136695
                         0.000970909  -0.088759476   0.029648651  -0.005515036   0.010474703   0.000000034  -0.008213885   0.000143149

   54    3.1  1.5 -1.5  -0.001004396   0.091748100  -0.011860723   0.002207210  -0.003534619   0.000000252   0.016580749  -0.000288801
                         0.003844858  -0.350807670   0.020399237  -0.003794121   0.001358690  -0.000000000  -0.015856822   0.000276198

   55    4.1  1.5 -1.5  -0.000043333   0.000000557  -0.000007295  -0.000037300  -0.000000035   0.000000363  -0.000000001  -0.000002205
                        -0.231274999  -0.002534509   0.003892635   0.020930025  -0.000000092  -0.086571609   0.001274014   0.073140586

   56    5.1  1.5 -1.5  -0.031204946  -0.000342316   0.093834349   0.504490488   0.000000016   0.015906316   0.000597965   0.034329156
                        -0.000014402   0.000001017  -0.000001745   0.000014098  -0.000000006  -0.000005611   0.000000082   0.000005517

   57    6.1  1.5 -1.5   0.229848283   0.002519117   0.001650805   0.008873881  -0.000000099  -0.084535620  -0.000091286  -0.005243157
                        -0.000044884  -0.000000398  -0.000003986  -0.000018443   0.000000038  -0.000002349  -0.000000046  -0.000000404

   58    7.1  1.5 -1.5   0.000008735  -0.000000734   0.000001709  -0.000012159  -0.000000044  -0.000003301  -0.000000179  -0.000000641
                        -0.017579809  -0.000192894   0.093775697   0.504176378  -0.000000115   0.023128140   0.000509649   0.029269672

   59    8.1  1.5 -1.5  -0.000001789   0.000000030  -0.000000026  -0.000000058  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.009944300  -0.000108977  -0.000120818  -0.000649534  -0.000000000  -0.000008986   0.000000022   0.000001248

   60    9.1  1.5 -1.5  -0.000012086   0.001102724   0.014645408  -0.002723947  -0.000005749   0.000000000  -0.000003515   0.000000061
                        -0.000003190   0.000288221   0.008504819  -0.001582007  -0.000014922   0.000000000  -0.000003677   0.000000064

   61   10.1  1.5 -1.5   0.009942064   0.000108953   0.000119946   0.000644805  -0.000000000  -0.000008391   0.000000026   0.000001478
                        -0.000001789   0.000000029  -0.000000039  -0.000000055   0.000000000  -0.000000000   0.000000000   0.000000000

   62   11.1  1.5 -1.5   0.000021876  -0.001995971   0.000648253  -0.000120571   0.000410035  -0.000000000   0.000801554  -0.000013962
                         0.000005712  -0.000522089   0.000376475  -0.000070054   0.001064252  -0.000000002   0.000838445  -0.000014613

   63   12.1  1.5 -1.5  -0.000000141   0.000000013   0.000000063   0.000000223   0.000000012   0.000000898   0.000000051   0.000000140
                         0.001547189   0.000016961   0.000109927   0.000590962   0.000000031   0.003547567  -0.000045104  -0.002592406

   64   13.1  1.5 -1.5  -0.000007010   0.000638665  -0.000082514   0.000015358  -0.000139877   0.000000049   0.000657507  -0.000011449
                         0.000026761  -0.002441659   0.000142040  -0.000026418   0.000053907  -0.000000000  -0.000628372   0.000010945

   65   14.1  1.5 -1.5   0.000000412   0.000000008  -0.000000049  -0.000000048  -0.000000008  -0.000000742  -0.000000036  -0.000000086
                         0.000455799   0.000004997  -0.000643569  -0.003460050  -0.000000022  -0.000180016  -0.000030360  -0.001740932

   66   15.1  1.5 -1.5  -0.001612614  -0.000017682   0.000061467   0.000330474   0.000000006   0.003399783   0.000006234   0.000358396
                        -0.000000017   0.000000028  -0.000000169  -0.000000900  -0.000000002  -0.000000966   0.000000014   0.000000323

   67   16.1  1.5 -1.5  -0.000015438   0.001408545   0.000721763  -0.000134243   0.000642263  -0.000000000   0.003041032  -0.000052969
                        -0.000004054   0.000368429   0.000419112  -0.000078001   0.001666922  -0.000000062   0.003181601  -0.000055395

   68   17.1  1.5 -1.5  -0.000037174  -0.000000409   0.000649801   0.003493586   0.000000000   0.000253254   0.000023145   0.001328726
                        -0.000000075   0.000000006  -0.000000031  -0.000000003  -0.000000000  -0.000000132   0.000000001   0.000000087

   69    1.1  0.5  0.5   0.000000011  -0.000001000  -0.000010712   0.000001992   0.687542165  -0.000000822   0.056088667  -0.000976993
                        -0.000000042   0.000003827   0.000018446  -0.000003431  -0.264904658   0.000000000  -0.053613125   0.000933842

   70    2.1  0.5  0.5   0.000000055  -0.000004974  -0.000017768   0.000003305  -0.155018516   0.000000000   0.407261092  -0.007093740
                         0.000000014  -0.000001300  -0.000010318   0.000001919  -0.402340565   0.000000497   0.426073090  -0.007421789

   71    3.1  0.5  0.5  -0.000000003   0.000000000  -0.000000000  -0.000000000   0.000000115  -0.000000440   0.000000007  -0.000007042
                        -0.000014071  -0.000000154  -0.000000280  -0.000001506   0.000000297   0.314603152   0.006840771   0.392729229

   72    4.1  0.5  0.5   0.000002729   0.000000030  -0.000000212  -0.000001139   0.000000360   0.313467405   0.000679036   0.038980850
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000138   0.000001310  -0.000000277  -0.000011586

   73    5.1  0.5  0.5  -0.000000158   0.000014435  -0.000004149   0.000000772  -0.029703369  -0.000000000  -0.142700037   0.002485575
                        -0.000000041   0.000003775  -0.000002410   0.000000448  -0.077092766   0.000000092  -0.149285675   0.002600476

   74    6.1  0.5  0.5   0.000000003  -0.000000000  -0.000000000  -0.000000000  -0.000000003   0.000000596  -0.000000501  -0.000010745
                         0.000015532   0.000000170  -0.000000283  -0.000001524  -0.000000007   0.005358655  -0.010092863  -0.579426608

   75    7.1  0.5  0.5   0.000018955   0.000000208   0.000000689   0.000003704   0.000000162   0.172654058   0.004765493   0.273589393
                        -0.000000004   0.000000000  -0.000000000  -0.000000000  -0.000000062   0.000000273  -0.000000091  -0.000001590

   76    8.1  0.5  0.5  -0.000471811   0.043127637  -0.007486900   0.001393126  -0.000002864  -0.000000000  -0.000001236   0.000000022
                         0.001807719  -0.164937612   0.012890484  -0.002397543   0.000001103  -0.000000000   0.000001181  -0.000000021

   77    9.1  0.5  0.5  -0.000119894   0.010939114   0.145223184  -0.027010528   0.000017061   0.000000000   0.000004263  -0.000000074
                        -0.000031737   0.002859176   0.084333389  -0.015687118   0.000044281  -0.000000000   0.000004459  -0.000000078

   78   10.1  0.5  0.5   0.000042408  -0.003834608  -0.084173234   0.015657316   0.000000222  -0.000000000  -0.000008865   0.000000154
                        -0.000160779   0.014669564   0.144947439  -0.026959242  -0.000000086  -0.000000000   0.000008474  -0.000000148

   79   11.1  0.5  0.5   0.000026533  -0.000000623   0.000001238   0.000000436  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.142295550   0.001559322   0.017410516   0.093604720  -0.000000000  -0.000046770  -0.000000260  -0.000014916

   80   12.1  0.5  0.5   0.153598307   0.001683303  -0.013828374  -0.074347888   0.000000000   0.000042472   0.000000261   0.000014978
                        -0.000027469   0.000000226   0.000000061  -0.000001257  -0.000000000   0.000000000  -0.000000000   0.000000000

   81   13.1  0.5  0.5  -0.000002779  -0.000000017   0.000000133  -0.000000203   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.016132349  -0.000176807   0.004408797   0.023703541   0.000000000   0.000000369   0.000000002   0.000000130

   82   14.1  0.5  0.5  -0.012814071  -0.000140409  -0.004759231  -0.025587401   0.000000000  -0.000000219  -0.000000007  -0.000000375
                         0.000002504  -0.000000100   0.000000248  -0.000000038  -0.000000000   0.000000000  -0.000000000   0.000000000

   83   15.1  0.5  0.5  -0.000306934   0.028004855  -0.001629096   0.000303001   0.000000046  -0.000000000  -0.000000145   0.000000003
                        -0.000080111   0.007322663  -0.000946244   0.000176092   0.000000118  -0.000000000  -0.000000151   0.000000003

   84    1.1  0.5 -0.5   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000296  -0.000001725   0.000000019  -0.000000138
                         0.000003955   0.000000043  -0.000003967  -0.000021331   0.000000767   0.736809817   0.001351509   0.077590629

   85    2.1  0.5 -0.5   0.000005141   0.000000056  -0.000003822  -0.000020547  -0.000000464  -0.431171277   0.010266649   0.589406375
                        -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000179  -0.000000842  -0.000000328  -0.000003831

   86    3.1  0.5 -0.5   0.000000039  -0.000003560   0.000000756  -0.000000141  -0.293566950   0.000000318  -0.283891481   0.004945066
                        -0.000000149   0.000013614  -0.000001302   0.000000242   0.113108749   0.000000000   0.271370364  -0.004726782

   87    4.1  0.5 -0.5  -0.000000029   0.000002641   0.000000985  -0.000000183  -0.112701229   0.000000000  -0.026926338   0.000468995
                        -0.000000008   0.000000690   0.000000572  -0.000000106  -0.292506833   0.000000385  -0.028186506   0.000491053

   88    5.1  0.5 -0.5  -0.000014921  -0.000000164  -0.000000892  -0.000004798  -0.000000085  -0.082617097  -0.003597299  -0.206517586
                         0.000000003  -0.000000000   0.000000000   0.000000001   0.000000033  -0.000000309   0.000000085  -0.000002728

   89    6.1  0.5 -0.5  -0.000000043   0.000003930   0.000000766  -0.000000142  -0.005000561  -0.000000008   0.418863687  -0.007296282
                         0.000000165  -0.000015027  -0.000001318   0.000000245   0.001926025   0.000000000  -0.400360344   0.006973533

   90    7.1  0.5 -0.5  -0.000000201   0.000018338  -0.000003203   0.000000596  -0.062074056   0.000000000  -0.189041720   0.003292761
                        -0.000000052   0.000004795  -0.000001860   0.000000346  -0.161109390   0.000000174  -0.197773567   0.003444945

   91    8.1  0.5 -0.5  -0.000031140   0.000000499  -0.000000709  -0.000000959   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.170482867  -0.001868276  -0.002772907  -0.014906987   0.000000000  -0.000003069  -0.000000030  -0.000001710

   92    9.1  0.5 -0.5  -0.011306595  -0.000124022   0.031235465   0.167934194   0.000000000   0.000047454   0.000000107   0.000006169
                         0.000000936   0.000000397  -0.000001299   0.000000821  -0.000000000   0.000000000   0.000000000  -0.000000000

   93   10.1  0.5 -0.5   0.000001640   0.000000386  -0.000001283   0.000000842   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.015162464   0.000166278  -0.031176149  -0.167615314   0.000000000   0.000000238  -0.000000214  -0.000012264

   94   11.1  0.5 -0.5  -0.000393589   0.035997519  -0.047007300   0.008744378   0.000043643  -0.000000000   0.000010782  -0.000000188
                         0.001508832  -0.137667000   0.080945398  -0.015055296  -0.000016815   0.000000000  -0.000010306   0.000000180

   95   12.1  0.5 -0.5  -0.001628685   0.148602400   0.064293710  -0.011958194  -0.000015270  -0.000000000  -0.000010350   0.000000180
                        -0.000425315   0.038855724   0.037335336  -0.006944460  -0.000039632   0.000000000  -0.000010827   0.000000189

   96   13.1  0.5 -0.5   0.000044713  -0.004080893  -0.011903396   0.002214149  -0.000000345   0.000000000  -0.000000094   0.000000002
                        -0.000171060   0.015607658   0.020497976  -0.003812485   0.000000133   0.000000000   0.000000090  -0.000000002

   97   14.1  0.5 -0.5   0.000135874  -0.012397230   0.022126979  -0.004115468   0.000000079   0.000000000   0.000000259  -0.000000005
                         0.000035398  -0.003241778   0.012849586  -0.002390231   0.000000204   0.000000000   0.000000271  -0.000000005

   98   15.1  0.5 -0.5  -0.028946386  -0.000317216  -0.000350454  -0.001883966   0.000000000   0.000000127  -0.000000004  -0.000000209
                         0.000005283  -0.000000083   0.000000115   0.000000166  -0.000000000  -0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.013312371  -0.000131186   0.001369940  -0.037316214  -0.027140392  -0.000034821  -0.004208414   0.000213144
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.062076541   0.000611701   0.003045564  -0.082961904  -0.004424449  -0.000005648   0.024527798  -0.001242264
                         0.000034314   0.000000290   0.000000121  -0.000002370  -0.000000097   0.000000008  -0.000008034   0.000000447

    3    3.1  1.5  1.5  -0.000044854  -0.000000308  -0.000000236   0.000004880   0.000001478  -0.000000000  -0.000007906   0.000000497
                         0.090659822   0.000893335  -0.001590041   0.043306755  -0.001826795  -0.000002337  -0.024846066   0.001258389

    4    4.1  1.5  1.5   0.000047189  -0.004790479  -0.050766260  -0.001863613  -0.000002328   0.001812330   0.000124230   0.002452121
                         0.000130306  -0.013223484   0.016258102   0.000596862  -0.000000650   0.000506318  -0.001286255  -0.025396437

    5    5.1  1.5  1.5  -0.000000876   0.000088952   0.005648648   0.000207371   0.000007474  -0.005825205  -0.000070596  -0.001393872
                         0.000000331  -0.000033968   0.017646165   0.000647791  -0.000026715   0.020789384  -0.000006906  -0.000136325

    6    6.1  1.5  1.5   0.000188162  -0.019094518   0.027892195   0.001023969  -0.000001161   0.000905104  -0.001071796  -0.021162061
                        -0.000067861   0.006915515   0.087084264   0.003196969   0.000004147  -0.003232519  -0.000103596  -0.002043430

    7    7.1  1.5  1.5  -0.000002294   0.000224167   0.020257558   0.000743899  -0.000026591   0.020751143  -0.000014504  -0.000285621
                        -0.000006136   0.000622668  -0.006485693  -0.000238101  -0.000007460   0.005814507   0.000149470   0.002951211

    8    8.1  1.5  1.5  -0.000000009   0.000000887   0.000000212   0.000000008  -0.000023834   0.018701362  -0.000535149  -0.010562884
                        -0.000000024   0.000002449  -0.000000068  -0.000000003  -0.000006724   0.005240949   0.005541809   0.109420180

    9    9.1  1.5  1.5  -0.000001122  -0.000000011  -0.000000098   0.000002676   0.201293878   0.000258623  -0.010638658   0.000538827
                        -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000607   0.000000100   0.000002890  -0.000000255

   10   10.1  1.5  1.5   0.000000019  -0.000001882   0.000000369   0.000000014   0.000010300  -0.008028200   0.001563986   0.030880095
                        -0.000000007   0.000000682   0.000001153   0.000000042  -0.000036796   0.028647982   0.000151020   0.002980931

   11   11.1  1.5  1.5   0.002121471   0.000020905   0.000132085  -0.003598107   0.005758962   0.000007446  -0.009080807   0.000459918
                         0.000001250   0.000000011   0.000000006  -0.000000100   0.000000033   0.000000016   0.000003105  -0.000000175

   12   12.1  1.5  1.5  -0.000001871   0.000187708   0.002135454   0.000078388   0.000001556  -0.001081806   0.000052679   0.001038093
                        -0.000005100   0.000517514  -0.000684937  -0.000025145   0.000000390  -0.000304175  -0.000545830  -0.010777124

   13   13.1  1.5  1.5  -0.000001856  -0.000000004  -0.000000020   0.000000152   0.000000105   0.000000008   0.000003630  -0.000000327
                         0.003593857   0.000035410  -0.000063066   0.001716626   0.000769779   0.000000961   0.010485220  -0.000531059

   14   14.1  1.5  1.5  -0.000000302   0.000030834  -0.000364424  -0.000013357  -0.000011375   0.008752733   0.000005115   0.000101016
                        -0.000000843   0.000085548   0.000117533   0.000004315  -0.000003148   0.002453313  -0.000051976  -0.001026240

   15   15.1  1.5  1.5  -0.000007414   0.000752399  -0.001074235  -0.000039437  -0.000000843   0.000657381  -0.000447765  -0.008840888
                         0.000002634  -0.000272645  -0.003351538  -0.000123059   0.000002992  -0.002337412  -0.000043255  -0.000850829

   16   16.1  1.5  1.5  -0.001353984  -0.000013345   0.000008674  -0.000237332   0.010089463   0.000013065   0.005277807  -0.000267322
                        -0.000000721  -0.000000014   0.000000015  -0.000000084  -0.000000067   0.000000034  -0.000001892   0.000000272

   17   17.1  1.5  1.5   0.000000797  -0.000080919   0.000345913   0.000012699  -0.000003089   0.002407404   0.000080337   0.001586220
                        -0.000000286   0.000029258   0.001080220   0.000039656   0.000011040  -0.008590713   0.000007786   0.000153544

   18    1.1  1.5  0.5   0.000114785  -0.011648351   0.013522941   0.000496450  -0.000000455   0.000354521   0.001135833   0.022426433
                        -0.000041307   0.004219650   0.042211568   0.001549472   0.000001628  -0.001263809   0.000109662   0.002164830

   19    2.1  1.5  0.5   0.000003588  -0.000364041   0.011548038   0.000423948   0.000004433  -0.003455528   0.000028562   0.000563944
                        -0.000001105   0.000130947   0.036043072   0.001323064  -0.000015844   0.012332899   0.000002738   0.000054223

   20    3.1  1.5  0.5  -0.000003351   0.000335372   0.044848986   0.001646225  -0.000009555   0.007484325   0.000016768   0.000331302
                        -0.000009161   0.000929508  -0.014369979  -0.000527546  -0.000002690   0.002096501  -0.000174362  -0.003442683

   21    4.1  1.5  0.5  -0.000018604  -0.000000160   0.000000191  -0.000004281   0.000000650  -0.000000011   0.000000343  -0.000000023
                         0.022394239   0.000220669  -0.002223546   0.060570708   0.023155066   0.000029751   0.003044216  -0.000154181

   22    5.1  1.5  0.5   0.111950440   0.001103154   0.000119639  -0.003259198  -0.003316007  -0.000004259   0.004965767  -0.000251502
                         0.000053849   0.000000437  -0.000000094   0.000002662   0.000001697   0.000000001  -0.000001168   0.000000066

   23    6.1  1.5  0.5   0.013545253   0.000133473  -0.002327697   0.063411351  -0.022278152  -0.000028604   0.005733941  -0.000290407
                         0.000003150   0.000000017  -0.000000301   0.000006107   0.000000380  -0.000000005  -0.000001287   0.000000063

   24    7.1  1.5  0.5  -0.000050007  -0.000000379  -0.000000268   0.000005179  -0.000000678   0.000000004  -0.000001226   0.000000014
                         0.104890064   0.001033571   0.001523246  -0.041498770   0.001408207   0.000001788  -0.005128105   0.000259719

   25    8.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000076  -0.000000099   0.000029763  -0.000001450
                        -0.000000273  -0.000000003  -0.000000040   0.000001088   0.183309940   0.000235543   0.112947197  -0.005720437

   26    9.1  1.5  0.5  -0.000000011   0.000001139   0.000000688   0.000000025   0.000006205  -0.004836191   0.012308899   0.243032896
                         0.000000004  -0.000000413   0.000002149   0.000000079  -0.000022335   0.017258321   0.001188514   0.023461701

   27   10.1  1.5  0.5   0.000001373   0.000000014   0.000000138  -0.000003753  -0.165298400  -0.000212397   0.131318636  -0.006650919
                         0.000000001   0.000000000   0.000000000  -0.000000000   0.000000068  -0.000000089  -0.000034702   0.000001939

   28   11.1  1.5  0.5   0.000001723  -0.000174803   0.000616178   0.000022621  -0.000001683   0.001312017  -0.000179982  -0.003553656
                        -0.000000646   0.000063288   0.001923285   0.000070609   0.000006031  -0.004682770  -0.000017385  -0.000342960

   29   12.1  1.5  0.5   0.000000164  -0.000000006   0.000000022  -0.000000495  -0.000002304  -0.000000019   0.000000905  -0.000000194
                         0.000001155   0.000000014   0.000098825  -0.002691562   0.009430402   0.000012155   0.001688162  -0.000085515

   30   13.1  1.5  0.5  -0.000000135   0.000013252   0.001778049   0.000065236   0.000003910  -0.003146276  -0.000007102  -0.000140832
                        -0.000000363   0.000036826  -0.000569606  -0.000020911   0.000001131  -0.000881195   0.000073785   0.001456847

   31   14.1  1.5  0.5   0.000001968   0.000000021  -0.000000023   0.000000464   0.000002026   0.000000001  -0.000000945   0.000000154
                        -0.004251080  -0.000041892  -0.000040640   0.001106512   0.002630020   0.000003381  -0.001855668   0.000093994

   32   15.1  1.5  0.5  -0.000038006  -0.000000375   0.000092192  -0.002512066  -0.009189338  -0.000011762   0.002149878  -0.000108883
                        -0.000000960  -0.000000010  -0.000000020   0.000000801  -0.000001884   0.000000005  -0.000001420   0.000000054

   33   16.1  1.5  0.5   0.000004214  -0.000427670   0.000342264   0.000012565   0.000000829  -0.000646359  -0.000447123  -0.008828207
                        -0.000001567   0.000154934   0.001068840   0.000039292  -0.000003095   0.002307118  -0.000043226  -0.000852319

   34   17.1  1.5  0.5   0.004467779   0.000044025  -0.000005585   0.000152181   0.002446219   0.000003140  -0.002355290   0.000119289
                         0.000002007   0.000000016  -0.000000004   0.000000086  -0.000000373  -0.000000000   0.000000547  -0.000000030

   35    1.1  1.5 -0.5  -0.012389088  -0.000121991   0.001627061  -0.044324784  -0.001312592  -0.000001691   0.022530676  -0.001141114
                        -0.000006108   0.000000197   0.000000228  -0.000004687   0.000000355  -0.000000001  -0.000005734   0.000000310

   36    2.1  1.5 -0.5  -0.000386876  -0.000003750   0.001389327  -0.037847856   0.012807852   0.000016453   0.000566545  -0.000028693
                         0.000000682   0.000000182   0.000000232  -0.000005185   0.000000454   0.000000006   0.000000069  -0.000000012

   37    3.1  1.5 -0.5  -0.000000777   0.000000035  -0.000000335   0.000006991  -0.000000772   0.000000012  -0.000000136   0.000000018
                        -0.000988159  -0.000009755   0.001728687  -0.047094881   0.007772415   0.000009926   0.003458588  -0.000175166

   38    4.1  1.5 -0.5  -0.000075207   0.007634458   0.057683605   0.002117551   0.000028651  -0.022296011  -0.000014798  -0.000292070
                        -0.000207458   0.021052728  -0.018477349  -0.000678334   0.000008017  -0.006248599   0.000153469   0.003030173

   39    5.1  1.5 -0.5   0.001037234  -0.105257443  -0.000991477  -0.000036399   0.000001150  -0.000896398  -0.000250338  -0.004942801
                        -0.000375627   0.038128394  -0.003104730  -0.000113967  -0.000004101   0.003192551  -0.000024168  -0.000477034

   40    6.1  1.5 -0.5   0.000125509  -0.012736590   0.019345447   0.000710204   0.000007713  -0.006011719  -0.000289064  -0.005707428
                        -0.000045414   0.004610115   0.060388352   0.002216705  -0.000027544   0.021451696  -0.000027892  -0.000550767

   41    7.1  1.5 -0.5  -0.000351905   0.035723332  -0.039520046  -0.001450592   0.000001721  -0.001356156   0.000024902   0.000492649
                        -0.000971819   0.098619327   0.012661513   0.000464825   0.000000487  -0.000379326  -0.000258522  -0.005104386

   42    8.1  1.5 -0.5   0.000000001  -0.000000093   0.000001036   0.000000038   0.000226833  -0.176510492  -0.000549635  -0.010853395
                         0.000000003  -0.000000257  -0.000000332  -0.000000012   0.000063461  -0.049462919   0.005693970   0.112424526

   43    9.1  1.5 -0.5   0.000001212   0.000000012   0.000000083  -0.000002257   0.017923125   0.000023181   0.244162724  -0.012366145
                         0.000000001   0.000000000   0.000000000  -0.000000000   0.000000039   0.000000052  -0.000063796   0.000003478

   44   10.1  1.5 -0.5   0.000000013  -0.000001291  -0.000001145  -0.000000042   0.000057226  -0.044602826  -0.006620123  -0.130710940
                        -0.000000005   0.000000468  -0.000003574  -0.000000131  -0.000204542   0.159167048  -0.000639290  -0.012618853

   45   11.1  1.5 -0.5  -0.000185907  -0.000001840   0.000074144  -0.002019580  -0.004863098  -0.000006261  -0.003570167   0.000180820
                        -0.000000059  -0.000000022   0.000000008  -0.000000245  -0.000000209  -0.000000006   0.000000833  -0.000000057

   46   12.1  1.5 -0.5  -0.000000010   0.000000238  -0.002563478  -0.000094123   0.000011709  -0.009081227  -0.000008388  -0.000162678
                        -0.000000011   0.000001142   0.000820419   0.000030119   0.000003262  -0.002542404   0.000085103   0.001680305

   47   13.1  1.5 -0.5  -0.000000063   0.000000003  -0.000000019   0.000000186   0.000000456  -0.000000034  -0.000000573  -0.000000001
                        -0.000039138  -0.000000387   0.000068506  -0.001867058  -0.003267347  -0.000004070  -0.001463638   0.000074126

   48   14.1  1.5 -0.5   0.000014268  -0.001447773   0.001053936   0.000038711   0.000003255  -0.002531920   0.000009161   0.000178770
                         0.000039387  -0.003996954  -0.000337029  -0.000012373   0.000000913  -0.000711614  -0.000093547  -0.001847037

   49   15.1  1.5 -0.5  -0.000000349   0.000035413  -0.000765385  -0.000028099   0.000003179  -0.002477761  -0.000108377  -0.002139848
                         0.000000137  -0.000013830  -0.002392626  -0.000087806  -0.000011325   0.008848990  -0.000010488  -0.000207437

   50   16.1  1.5 -0.5  -0.000454870  -0.000004496   0.000041252  -0.001122303   0.002395950   0.000003204  -0.008869255   0.000449207
                        -0.000000233  -0.000000040  -0.000000017   0.000000025   0.000000150   0.000000036   0.000002387  -0.000000179

   51   17.1  1.5 -0.5   0.000041395  -0.004200719   0.000046495   0.000001707  -0.000000847   0.000660427   0.000118737   0.002344398
                        -0.000014989   0.001521515   0.000144904   0.000005318   0.000003024  -0.002355382   0.000011461   0.000226253

   52    1.1  1.5 -1.5   0.000123364  -0.012518665   0.011380956   0.000417814  -0.000009396   0.007323340  -0.000212163  -0.004189045
                        -0.000044620   0.004527943   0.035538341   0.001304671   0.000033530  -0.026133686  -0.000020426  -0.000403294

   53    2.1  1.5 -1.5  -0.000575131   0.058363758   0.025304551   0.000928972  -0.000001532   0.001193764   0.001236504   0.024414143
                         0.000208331  -0.021146391   0.079008590   0.002900426   0.000005436  -0.004260361   0.000119492   0.002358504

   54    3.1  1.5 -1.5   0.000304140  -0.030878347  -0.041244960  -0.001514358   0.000002250  -0.001759434  -0.000121087  -0.002388877
                         0.000839969  -0.085239269   0.013203346   0.000484717   0.000000631  -0.000491504   0.001252550   0.024730959

   55    4.1  1.5 -1.5   0.000007152   0.000000054  -0.000000048   0.000000466   0.000001487   0.000000003  -0.000007086   0.000000396
                        -0.014064464  -0.000138587   0.001956859  -0.053306088  -0.001881726  -0.000002417  -0.025514542   0.001292240

   56    5.1  1.5 -1.5  -0.000095202  -0.000000936  -0.000680174   0.018528205  -0.021590078  -0.000027741   0.001400521  -0.000070932
                        -0.000001687  -0.000000013   0.000000076  -0.000002323  -0.000000503  -0.000000012  -0.000002123   0.000000109

   57    6.1  1.5 -1.5   0.020308247   0.000200025  -0.003356952   0.091442023   0.003356842   0.000004306   0.021260490  -0.001076791
                         0.000008573  -0.000000185  -0.000000150   0.000003755   0.000000705   0.000000001  -0.000006057   0.000000409

   58    7.1  1.5 -1.5   0.000000986  -0.000000070  -0.000000123   0.000001598   0.000000485  -0.000000008   0.000001491  -0.000000114
                         0.000661789   0.000006551  -0.000781075   0.021270469  -0.021550369  -0.000027618   0.002965000  -0.000150172

   59    8.1  1.5 -1.5  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000328  -0.000000044   0.000028497  -0.000001612
                         0.000002605   0.000000026  -0.000000008   0.000000222  -0.019421856  -0.000024764   0.109928839  -0.005567588

   60    9.1  1.5 -1.5   0.000000010  -0.000001055  -0.000000816  -0.000000030   0.000069688  -0.054316068  -0.000536323  -0.010589419
                        -0.000000004   0.000000382  -0.000002549  -0.000000094  -0.000249057   0.193827217  -0.000051890  -0.001022383

   61   10.1  1.5 -1.5   0.000002002   0.000000020  -0.000000044   0.000001211  -0.029751619  -0.000038210  -0.031023639   0.001571260
                         0.000000001   0.000000000   0.000000000  -0.000000000   0.000000278  -0.000000010   0.000007962  -0.000000447

   62   11.1  1.5 -1.5  -0.000019655   0.001994560   0.001097471   0.000040290   0.000001994  -0.001553919  -0.000457784  -0.009038716
                         0.000007121  -0.000722752   0.003426650   0.000125790  -0.000007174   0.005545356  -0.000044249  -0.000873308

   63   12.1  1.5 -1.5  -0.000000494  -0.000000025   0.000000040  -0.000001019   0.000000986  -0.000000044  -0.000000540   0.000000130
                         0.000550504   0.000005432  -0.000082322   0.002242611   0.001123755   0.000001604  -0.010827005   0.000548366

   64   13.1  1.5 -1.5   0.000012048  -0.001224126  -0.001634886  -0.000060068  -0.000000924   0.000741197   0.000051217   0.001008416
                         0.000033297  -0.003378953   0.000523404   0.000019215  -0.000000267   0.000207812  -0.000528584  -0.010436616

   65   14.1  1.5 -1.5   0.000000102   0.000000003  -0.000000036   0.000000789  -0.000000548   0.000000038  -0.000002206   0.000000111
                         0.000090935   0.000000895   0.000014036  -0.000382908  -0.009090053  -0.000011802  -0.001031198   0.000052227

   66   15.1  1.5 -1.5  -0.000800275  -0.000007868   0.000129224  -0.003519487   0.002428094   0.000003108   0.008881735  -0.000449849
                        -0.000000476   0.000000045   0.000000027  -0.000000880  -0.000002289  -0.000000005   0.000000313   0.000000147

   67   16.1  1.5 -1.5   0.000012545  -0.001273012   0.000072463   0.000002660   0.000003493  -0.002722522   0.000266066   0.005253336
                        -0.000004552   0.000461209   0.000225999   0.000008256  -0.000012590   0.009715201   0.000025888   0.000507658

   68   17.1  1.5 -1.5   0.000086046   0.000000847  -0.000041640   0.001134254   0.008921656   0.000011464  -0.001593634   0.000080714
                        -0.000000010  -0.000000003   0.000000001  -0.000000020  -0.000000060   0.000000005   0.000000829  -0.000000051

   69    1.1  0.5  0.5   0.000081276  -0.008254674   0.026083617   0.000957544   0.000491136  -0.382204070   0.000241771   0.004772551
                         0.000224551  -0.022787311  -0.008354595  -0.000306711   0.000137417  -0.107104914  -0.002503804  -0.049436326

   70    2.1  0.5  0.5  -0.000149409   0.015162953   0.039070028   0.001434326  -0.000123822   0.096509498  -0.005114884  -0.100990758
                         0.000054183  -0.005503926   0.121979229   0.004477892   0.000442566  -0.344395302  -0.000493924  -0.009749040

   71    3.1  0.5  0.5   0.000252276   0.000001975  -0.000000105   0.000001732  -0.000000789   0.000000108  -0.000048538   0.000002733
                        -0.541640537  -0.005337269   0.002141463  -0.058335487  -0.223531778  -0.000287183  -0.185479910   0.009394036

   72    4.1  0.5  0.5   0.670855441   0.006610581   0.000547569  -0.014916834  -0.097485136  -0.000125238   0.157166934  -0.007960063
                         0.000304462   0.000002455   0.000000173  -0.000004217   0.000000620  -0.000000045  -0.000040841   0.000002294

   73    5.1  0.5  0.5   0.001404858  -0.142564151   0.210677337   0.007734315  -0.000017767   0.013847711   0.020073498   0.396340920
                        -0.000508672   0.051638250   0.657731784   0.024145183   0.000063525  -0.049415179   0.001938414   0.038261683

   74    6.1  0.5  0.5   0.000188170   0.000001550   0.000000574  -0.000012634   0.000000138  -0.000000080   0.000071286  -0.000004013
                        -0.434336239  -0.004279959  -0.005865514   0.159781854   0.147743371   0.000189840   0.273943733  -0.013874480

   75    7.1  0.5  0.5  -0.081860149  -0.000806635  -0.024298071   0.661892115  -0.196761101  -0.000252840   0.318977464  -0.016155311
                        -0.000044879  -0.000000357  -0.000001771   0.000038752   0.000000642  -0.000000109  -0.000083534   0.000004680

   76    8.1  0.5  0.5  -0.000000009   0.000000898  -0.000005088  -0.000000187   0.000043434  -0.033823324  -0.002569633  -0.050720994
                        -0.000000024   0.000002477   0.000001630   0.000000060   0.000012160  -0.009478086   0.026610160   0.525403962

   77    9.1  0.5  0.5  -0.000000073   0.000007439   0.000000895   0.000000033  -0.000094042   0.073297743   0.004895389   0.096656939
                         0.000000027  -0.000002695   0.000002793   0.000000103   0.000336086  -0.261562114   0.000472710   0.009330797

   78   10.1  0.5  0.5   0.000000017  -0.000001710  -0.000005844  -0.000000215  -0.000205119   0.159597885   0.000418503   0.008260451
                         0.000000047  -0.000004722   0.000001872   0.000000069  -0.000057381   0.044723631  -0.004333976  -0.085572135

   79   11.1  0.5  0.5  -0.000000003  -0.000000000  -0.000000000   0.000000001  -0.000001367   0.000000221   0.000086270  -0.000004825
                         0.000004694   0.000000046   0.000000444  -0.000012084  -0.414465017  -0.000532558   0.329248619  -0.016675515

   80   12.1  0.5  0.5  -0.000000998  -0.000000010  -0.000000119   0.000003242   0.459420796   0.000590289   0.283049160  -0.014335646
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000001270   0.000000236  -0.000073700   0.000004160

   81   13.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000008   0.000000000
                        -0.000000048  -0.000000000  -0.000000009   0.000000240  -0.000040056  -0.000000051  -0.000030473   0.000001543

   82   14.1  0.5  0.5  -0.000000067  -0.000000001  -0.000000004   0.000000118   0.000030312   0.000000039  -0.000033685   0.000001706
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000009  -0.000000000

   83   15.1  0.5  0.5  -0.000000001   0.000000097   0.000000091   0.000000003   0.000000003  -0.000002419   0.000003184   0.000062874
                         0.000000000  -0.000000035   0.000000285   0.000000010  -0.000000011   0.000008631   0.000000308   0.000006070

   84    1.1  0.5 -0.5   0.000011857   0.000000054   0.000000060  -0.000001392   0.000001322  -0.000000205  -0.000013086   0.000000718
                        -0.024236358  -0.000238807  -0.001005466   0.027388945   0.396927467   0.000509998  -0.049666160   0.002515450

   85    2.1  0.5 -0.5  -0.016130964  -0.000158930  -0.004702000   0.128083564   0.357662142   0.000459561   0.101460220  -0.005138676
                        -0.000018390  -0.000000134  -0.000000291   0.000006531  -0.000000923   0.000000189  -0.000026192   0.000001489

   86    3.1  0.5 -0.5  -0.001817225   0.184465685   0.055555655   0.002039405   0.000276560  -0.215240208  -0.000902954  -0.017822919
                        -0.005018380   0.509261177  -0.017793208  -0.000653218   0.000077387  -0.060316735   0.009350540   0.184621621

   87    4.1  0.5 -0.5  -0.006215611   0.630754313   0.004553455   0.000167166  -0.000033750   0.026305183   0.007923209   0.156439688
                         0.002250769  -0.228464685   0.014204858   0.000521428   0.000120605  -0.093868999   0.000765099   0.015102015

   88    5.1  0.5 -0.5   0.151627970   0.001494113  -0.025353688   0.690648998   0.051318797   0.000065963  -0.398183464   0.020166872
                         0.000069076   0.000000509  -0.000001861   0.000040366  -0.000000279   0.000000033   0.000104103  -0.000005843

   89    6.1  0.5 -0.5  -0.001457202   0.147907939  -0.152165442  -0.005585885  -0.000182820   0.142263160   0.001333591   0.026323081
                        -0.004024253   0.408376352   0.048743403   0.001789452  -0.000051148   0.039865988  -0.013810241  -0.272676125

   90    7.1  0.5 -0.5   0.000758421  -0.076964239  -0.201905326  -0.007412280  -0.000068119   0.053093014   0.016080510   0.317501423
                        -0.000274697   0.027885334  -0.630345471  -0.023139887   0.000243491  -0.189462563   0.001552828   0.030650871

   91    8.1  0.5 -0.5  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000087  -0.000000011   0.000137916  -0.000007746
                         0.000002635   0.000000026   0.000000196  -0.000005343   0.035126221   0.000045104   0.527846496  -0.026733941

   92    9.1  0.5 -0.5  -0.000007912  -0.000000078  -0.000000108   0.000002932   0.271638176   0.000348996  -0.097106266   0.004918159
                        -0.000000004  -0.000000000  -0.000000000   0.000000000  -0.000001177   0.000000133   0.000025186  -0.000001407

   93   10.1  0.5 -0.5   0.000000002   0.000000000  -0.000000000   0.000000001  -0.000000139   0.000000096  -0.000022027   0.000001250
                        -0.000005022  -0.000000049   0.000000225  -0.000006136  -0.165745854  -0.000212994  -0.085969907   0.004354135

   94   11.1  0.5 -0.5   0.000000016  -0.000001599   0.000011508   0.000000422   0.000512864  -0.399091097   0.001602823   0.031637883
                         0.000000043  -0.000004413  -0.000003686  -0.000000135   0.000143488  -0.111837145  -0.016598307  -0.327725045

   95   12.1  0.5 -0.5   0.000000009  -0.000000938  -0.000000989  -0.000000036   0.000159051  -0.123967549   0.014269270   0.281739415
                        -0.000000003   0.000000340  -0.000003087  -0.000000113  -0.000568457   0.442379379   0.001377931   0.027198060

   96   13.1  0.5 -0.5  -0.000000000   0.000000016  -0.000000228  -0.000000008   0.000000050  -0.000038571  -0.000000148  -0.000002928
                        -0.000000000   0.000000045   0.000000073   0.000000003   0.000000014  -0.000010809   0.000001536   0.000030332

   97   14.1  0.5 -0.5   0.000000001  -0.000000063  -0.000000036  -0.000000001   0.000000010  -0.000008179  -0.000001698  -0.000033529
                        -0.000000000   0.000000023  -0.000000113  -0.000000004  -0.000000038   0.000029188  -0.000000164  -0.000003237

   98   15.1  0.5 -0.5  -0.000000104  -0.000000001  -0.000000011   0.000000299  -0.000008964  -0.000000012  -0.000063167   0.000003199
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000016  -0.000000001


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.002261372  -0.000041023   0.020020771   0.003673622  -0.044919202  -0.000023996  -0.000606774   0.076044332
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.004857703  -0.000088124  -0.096601420  -0.017725431  -0.004923466  -0.000002424   0.000033694  -0.004216902
                         0.000000062  -0.000000004   0.000027260   0.000005141  -0.000000292   0.000000043   0.000000078   0.000001336

    3    3.1  1.5  1.5  -0.000000128   0.000000040   0.000026658   0.000005195   0.000002286   0.000000004  -0.000000014  -0.000002888
                        -0.004219088   0.000076521   0.098627676   0.018097210  -0.005362051  -0.000002879  -0.000169974   0.021304492

    4    4.1  1.5  1.5   0.000065223   0.003594718   0.001312241  -0.007151964  -0.000007119   0.013146684   0.010021259   0.000080004
                         0.000140163   0.007726353   0.011206533  -0.061074173  -0.000001458   0.002730133   0.018954588   0.000151243

    5    5.1  1.5  1.5  -0.000045523  -0.002509430   0.001497827  -0.008162964   0.000015421  -0.028866506  -0.050979558  -0.000406777
                         0.000021195   0.001168078  -0.000174677   0.000951928  -0.000075087   0.138506985   0.026944272   0.000215101

    6    6.1  1.5  1.5  -0.000267997  -0.014773069   0.011310977  -0.061643376  -0.000000555   0.001038176   0.021230033   0.000169399
                         0.000124679   0.006872299  -0.001324224   0.007218864   0.000002689  -0.005003635  -0.011221451  -0.000089495

    7    7.1  1.5  1.5   0.000015071   0.000831329  -0.000252899   0.001378982  -0.000074681   0.137975788   0.026432335   0.000210836
                         0.000032441   0.001788257  -0.002163441   0.011790476  -0.000015362   0.028756563   0.050012276   0.000399059

    8    8.1  1.5  1.5  -0.001608789  -0.088666684  -0.002620816   0.014283992   0.000003697  -0.006475108  -0.002140918  -0.000017537
                        -0.003457756  -0.190605498  -0.022376466   0.121948877   0.000000721  -0.001349610  -0.004050764  -0.000032322

    9    9.1  1.5  1.5  -0.024187171   0.000438879   0.011319388   0.002076988   0.216400709   0.000117250   0.002622481  -0.328628182
                        -0.000001870   0.000000254  -0.000002492  -0.000000562  -0.000001163   0.000000342   0.000000510   0.000004132

   10   10.1  1.5  1.5   0.003849759   0.212214314  -0.022321819   0.121651059   0.000000739  -0.001383201  -0.062006046  -0.000494759
                        -0.001791152  -0.098718790   0.002614426  -0.014249107  -0.000003582   0.006636250   0.032768914   0.000261419

   11   11.1  1.5  1.5  -0.002253218   0.000040880   0.012724108   0.002334752   0.003089963   0.000001786   0.000009787  -0.001225461
                        -0.000000036   0.000000011  -0.000003789  -0.000000711   0.000000036   0.000000028   0.000000018  -0.000000059

   12   12.1  1.5  1.5   0.000025577   0.001409830   0.000204423  -0.001114881   0.000001425  -0.002439067   0.000232408   0.000001791
                         0.000055052   0.003034682   0.001742787  -0.009497965   0.000000272  -0.000510078   0.000438599   0.000003500

   13   13.1  1.5  1.5   0.000000025  -0.000000087  -0.000004500  -0.000000982   0.000000094   0.000000005   0.000000019  -0.000000120
                         0.001781045  -0.000032270  -0.015022552  -0.002756478   0.000818242   0.000000412   0.000009084  -0.001139598

   14   14.1  1.5  1.5   0.000012119   0.000667160   0.000003778  -0.000020552  -0.000011464   0.021007959   0.001513282   0.000012125
                         0.000025954   0.001430675   0.000035390  -0.000192872  -0.000002340   0.004379584   0.002864266   0.000022855

   15   15.1  1.5  1.5  -0.000110518  -0.006092199   0.001691438  -0.009218122  -0.000000350   0.000654552   0.001451913   0.000011585
                         0.000051384   0.002833414  -0.000198346   0.001082238   0.000001675  -0.003114068  -0.000766651  -0.000006103

   16   16.1  1.5  1.5  -0.000178021   0.000003213  -0.007993537  -0.001466719   0.006147801   0.000003572   0.000031243  -0.003913856
                        -0.000000113  -0.000000033   0.000002448   0.000000619  -0.000000071   0.000000060   0.000000026   0.000000103

   17   17.1  1.5  1.5   0.000031947   0.001761049  -0.000419386   0.002285602  -0.000002328   0.004356980   0.002613766   0.000020856
                        -0.000014866  -0.000819364   0.000049043  -0.000267342   0.000011332  -0.020902458  -0.001381326  -0.000011028

   18    1.1  1.5  0.5  -0.000019159  -0.001056148  -0.023221444   0.126553901   0.000003236  -0.006056553  -0.010050515  -0.000080195
                         0.000009003   0.000492466   0.002719792  -0.014823284  -0.000015737   0.029035369   0.005312592   0.000042401

   19    2.1  1.5  0.5   0.000354904   0.019563751  -0.006373116   0.034732669  -0.000010452   0.019564579  -0.031935641  -0.000254821
                        -0.000165042  -0.009099090   0.000746513  -0.004068491   0.000050896  -0.093893989   0.016878759   0.000134714

   20    3.1  1.5  0.5   0.000181922   0.010027149   0.000114652  -0.000623005   0.000053337  -0.098080873   0.010163281   0.000081000
                         0.000391087   0.021558273   0.000963755  -0.005252344   0.000010919  -0.020438891   0.019225405   0.000153404

   21    4.1  1.5  0.5   0.000001904  -0.000000036  -0.000020644  -0.000003923   0.000001276  -0.000000106  -0.000000084  -0.000002183
                         0.000018663  -0.000000338  -0.104336300  -0.019144709   0.069101963   0.000037426   0.000514103  -0.064423533

   22    5.1  1.5  0.5  -0.027541065   0.000499635  -0.001311018  -0.000240559  -0.000657873  -0.000000357  -0.000058532   0.007336685
                        -0.000001435   0.000000058  -0.000006946  -0.000001273   0.000004791   0.000000002   0.000000054  -0.000004651

   23    6.1  1.5  0.5   0.003842542  -0.000069681  -0.111240154  -0.020411503  -0.057521578  -0.000031460  -0.000450069   0.056402553
                        -0.000000665   0.000000068   0.000022122   0.000004171   0.000001590  -0.000000152  -0.000000026  -0.000001658

   24    7.1  1.5  0.5  -0.000001316   0.000000023  -0.000002152  -0.000000772  -0.000001998  -0.000000015   0.000000094   0.000001813
                         0.027656817  -0.000501719   0.007405743   0.001358928  -0.004953442  -0.000002580   0.000016607  -0.002088458

   25    8.1  1.5  0.5   0.000000318   0.000000018  -0.000032450  -0.000006052  -0.000000330   0.000000188  -0.000000620  -0.000003484
                        -0.000186356   0.000003369  -0.148672695  -0.027280022  -0.117002329  -0.000063404   0.002789248  -0.349521509

   26    9.1  1.5  0.5   0.000681830   0.037585224  -0.012832776   0.069936988   0.000000425  -0.000795231  -0.114147282  -0.000910806
                        -0.000317230  -0.017483978   0.001503134  -0.008191578  -0.000001950   0.003815276   0.060324401   0.000481833

   27   10.1  1.5  0.5   0.041657959  -0.000755741  -0.135288340  -0.024824110   0.132319502   0.000071672  -0.001759569   0.220493050
                         0.000003032  -0.000000116   0.000029502   0.000005594  -0.000000359   0.000000205  -0.000000377  -0.000002200

   28   11.1  1.5  0.5  -0.000138044  -0.007609533   0.002149757  -0.011715900   0.000001321  -0.002473703   0.001803707   0.000014392
                         0.000064273   0.003539081  -0.000251806   0.001372314  -0.000006430   0.011872893  -0.000953305  -0.000007613

   29   12.1  1.5  0.5   0.000001379   0.000000026  -0.000007709  -0.000001711  -0.000002201   0.000000014  -0.000000013   0.000000717
                        -0.002438998   0.000044222  -0.015790505  -0.002897374   0.010453545   0.000005511   0.000026808  -0.003359323

   30   13.1  1.5  0.5  -0.000076889  -0.004239539  -0.000017421   0.000093568  -0.000008231   0.014952358  -0.000543974  -0.000004301
                        -0.000165362  -0.009115424  -0.000146663   0.000799293  -0.000001664   0.003115326  -0.001029024  -0.000008211

   31   14.1  1.5  0.5  -0.000001451   0.000000048   0.000003162   0.000000802   0.000001908  -0.000000007  -0.000000003  -0.000000661
                         0.011446637  -0.000207662  -0.002217783  -0.000406968   0.001467694   0.000000820   0.000006666  -0.000834827

   32   15.1  1.5  0.5   0.002906419  -0.000052666  -0.016829373  -0.003088030  -0.008694174  -0.000004927  -0.000023803   0.002983746
                         0.000003360   0.000000066   0.000007310   0.000001349  -0.000002382  -0.000000060   0.000000004   0.000000665

   33   16.1  1.5  0.5   0.000060036   0.003309406   0.002980387  -0.016242726  -0.000001018   0.001906487  -0.000080617  -0.000000643
                        -0.000027772  -0.001538944  -0.000348821   0.001902489   0.000004801  -0.009150248   0.000042665   0.000000388

   34   17.1  1.5  0.5   0.011397825  -0.000206776   0.002094403   0.000384303   0.001081667   0.000000597   0.000005851  -0.000733354
                         0.000000905  -0.000000036   0.000000143   0.000000024  -0.000000400   0.000000004  -0.000000002   0.000000134

   35    1.1  1.5 -0.5  -0.001165320   0.000021169   0.127419068   0.023380178  -0.029660319  -0.000016066   0.000090715  -0.011368222
                        -0.000001136   0.000000083  -0.000027226  -0.000005135   0.000004490  -0.000000044   0.000000017  -0.000000897

   36    2.1  1.5 -0.5   0.021576232  -0.000391402   0.034970142   0.006416688   0.095910656   0.000051958   0.000288239  -0.036121706
                         0.000000000   0.000000022  -0.000007228  -0.000001343   0.000006017   0.000000154   0.000000039  -0.000001020

   37    3.1  1.5 -0.5   0.000000370  -0.000000025  -0.000006613  -0.000001548  -0.000004430  -0.000000194   0.000000064   0.000002550
                        -0.023776098   0.000431329   0.005289159   0.000970550   0.100187853   0.000054443   0.000173475  -0.021746459

   38    4.1  1.5 -0.5   0.000000110   0.000006144   0.002227364  -0.012139591  -0.000036660   0.067647844  -0.030099948  -0.000240289
                         0.000000322   0.000017725   0.019014698  -0.103627671  -0.000007533   0.014101433  -0.056959501  -0.000454492

   39    5.1  1.5 -0.5   0.000453008   0.024971621  -0.000238771   0.001301274  -0.000000074   0.000138928  -0.006488723  -0.000051775
                        -0.000210758  -0.011615870   0.000029301  -0.000159694   0.000000349  -0.000643054   0.003423952   0.000027302

   40    6.1  1.5 -0.5  -0.000063210  -0.003484417  -0.020272888   0.110484649  -0.000006271   0.011738775  -0.049867704  -0.000397905
                         0.000029324   0.001619867   0.002374759  -0.012942748   0.000030829  -0.056311039   0.026352611   0.000210318

   41    7.1  1.5 -0.5   0.000211605   0.011664577  -0.000159146   0.000865256   0.000002523  -0.004848817  -0.000977434  -0.000007676
                         0.000454913   0.025076626  -0.001349577   0.007355023   0.000000541  -0.001012700  -0.001845612  -0.000014726

   42    8.1  1.5 -0.5  -0.000001404  -0.000078878   0.003173397  -0.017295145   0.000062109  -0.114540612  -0.163310744  -0.001303823
                        -0.000003063  -0.000168840   0.027094819  -0.147663297   0.000012754  -0.023874527  -0.309022469  -0.002465756

   43    9.1  1.5 -0.5   0.041452847  -0.000752015   0.070415084   0.012920509  -0.003897271  -0.000001996   0.001030402  -0.129107070
                         0.000002821  -0.000000101  -0.000015201  -0.000002733  -0.000000003   0.000000018   0.000000427   0.000000950

   44   10.1  1.5 -0.5  -0.000685202  -0.037771116  -0.024655590   0.134369810   0.000014424  -0.027000009  -0.194944532  -0.001555504
                         0.000318815   0.017570669   0.002887623  -0.015738165  -0.000070206   0.129535517   0.103023369   0.000822492

   45   11.1  1.5 -0.5  -0.008392263   0.000152273  -0.011795997  -0.002164454  -0.012127851  -0.000006565  -0.000016282   0.002040135
                         0.000000099   0.000000063   0.000002493   0.000000458  -0.000000994  -0.000000018  -0.000000006   0.000000060

   46   12.1  1.5 -0.5  -0.000018626  -0.001029820   0.000335981  -0.001832681  -0.000005392   0.010234059  -0.001570277  -0.000012537
                        -0.000040108  -0.002210924   0.002877828  -0.015683794  -0.000001138   0.002130880  -0.002969728  -0.000023696

   47   13.1  1.5 -0.5   0.000000036  -0.000000019  -0.000000225   0.000000209   0.000001232   0.000000050  -0.000000034  -0.000000130
                         0.010053091  -0.000182364  -0.000804751  -0.000147693  -0.015273450  -0.000008398  -0.000009269   0.001163958

   48   14.1  1.5 -0.5   0.000087619   0.004828571   0.000048228  -0.000261616  -0.000000804   0.001436425  -0.000389488  -0.000003117
                         0.000188273   0.010378362   0.000404101  -0.002202300  -0.000000161   0.000301349  -0.000738401  -0.000005892

   49   15.1  1.5 -0.5  -0.000047782  -0.002633911  -0.003067143   0.016715535  -0.000000946   0.001771705  -0.002637695  -0.000021047
                         0.000022151   0.001228737   0.000358561  -0.001954155   0.000004835  -0.008511741   0.001394742   0.000011118

   50   16.1  1.5 -0.5   0.003649729  -0.000066148  -0.016353764  -0.003000730   0.009346750   0.000004907   0.000000750  -0.000091211
                        -0.000000234   0.000000136   0.000003519   0.000000911   0.000000723  -0.000000017   0.000000042  -0.000000053

   51   17.1  1.5 -0.5  -0.000187474  -0.010334333   0.000381681  -0.002080113   0.000000118  -0.000221105   0.000648440   0.000005174
                         0.000087234   0.004807490  -0.000044814   0.000244239  -0.000000585   0.001058827  -0.000342541  -0.000002732

   52    1.1  1.5 -1.5   0.000037197   0.002050447  -0.003648587   0.019884333   0.000004896  -0.009165717   0.067232725   0.000536464
                        -0.000017300  -0.000953662   0.000428150  -0.002333363  -0.000023492   0.043974133  -0.035531692  -0.000283515

   53    2.1  1.5 -1.5   0.000079903   0.004404584   0.017605234  -0.095946275   0.000000536  -0.001004342  -0.003728895  -0.000029754
                        -0.000037167  -0.002048638  -0.002060742   0.011231543  -0.000002365   0.004819939   0.001969165   0.000015813

   54    3.1  1.5 -1.5   0.000032234   0.001779150   0.002104018  -0.011468295  -0.000002819   0.005249704  -0.009957071  -0.000079408
                         0.000069400   0.003825615   0.017974486  -0.097958652  -0.000000583   0.001091883  -0.018834493  -0.000150284

   55    4.1  1.5 -1.5  -0.000001084   0.000000030  -0.000014795  -0.000002791  -0.000009875  -0.000000025   0.000000066  -0.000003523
                         0.008521651  -0.000154595  -0.061491504  -0.011283101   0.013427168   0.000007267  -0.000171100   0.021440663

   56    5.1  1.5 -1.5   0.002767967  -0.000050216   0.008218280   0.001507977   0.141483073   0.000076654  -0.000460148   0.057662025
                         0.000000855  -0.000000020  -0.000005929  -0.000001080   0.000003032   0.000000225  -0.000000110   0.000001931

   57    6.1  1.5 -1.5   0.016293313  -0.000295579   0.062064624   0.011388229  -0.005110200  -0.000002746   0.000191587  -0.024013231
                         0.000001226  -0.000000030  -0.000014690  -0.000003062  -0.000004652  -0.000000006  -0.000000026  -0.000001443

   58    7.1  1.5 -1.5   0.000000352  -0.000000016   0.000004561   0.000000967  -0.000002272  -0.000000200  -0.000000055  -0.000001277
                         0.001972048  -0.000035770   0.011870842   0.002178172   0.140940619   0.000076244  -0.000451331   0.056567624

   59    8.1  1.5 -1.5   0.000014664  -0.000000534   0.000026141   0.000004957   0.000000024   0.000000049  -0.000000402   0.000000122
                        -0.210219496   0.003813696   0.122782574   0.022529422  -0.006614263  -0.000003767   0.000036771  -0.004581726

   60    9.1  1.5 -1.5  -0.000397837  -0.021930371  -0.002062899   0.011242539  -0.000023589   0.044157479  -0.290550450  -0.002318363
                         0.000185313   0.010201865   0.000241509  -0.001316767   0.000114853  -0.211847548   0.153547770   0.001225805

   61   10.1  1.5 -1.5  -0.234051948   0.004246042  -0.122482720  -0.022474403   0.006778868   0.000003658  -0.000559577   0.070132386
                        -0.000016348   0.000000572   0.000026079   0.000004935   0.000000020   0.000000007   0.000000049  -0.000000478

   62   11.1  1.5 -1.5  -0.000037063  -0.002043038  -0.002318923   0.012637836  -0.000000337   0.000630468  -0.001083433  -0.000008645
                         0.000017250   0.000950256   0.000271402  -0.001479195   0.000001754  -0.003024959   0.000572648   0.000004589

   63   12.1  1.5 -1.5   0.000001450  -0.000000025   0.000000323  -0.000000087  -0.000001657   0.000000024  -0.000000052  -0.000000543
                         0.003346179  -0.000060703  -0.009563174  -0.001754735  -0.002491832  -0.000001450  -0.000003931   0.000496369

   64   13.1  1.5 -1.5  -0.000013530  -0.000751077  -0.000320284   0.001746366   0.000000402  -0.000801008   0.000532371   0.000004228
                        -0.000029296  -0.001614932  -0.002737807   0.014920700   0.000000089  -0.000167053   0.001007603   0.000008040

   65   14.1  1.5 -1.5  -0.000001591   0.000000044  -0.000002066  -0.000000372   0.000000789  -0.000000049   0.000000041   0.000000396
                         0.001578586  -0.000028644  -0.000193953  -0.000035589   0.021459615   0.000011700  -0.000025872   0.003239451

   66   15.1  1.5 -1.5   0.006718863  -0.000121879   0.009281434   0.001703028  -0.003182111  -0.000001711   0.000013094  -0.001641891
                        -0.000000058   0.000000016   0.000000518  -0.000000138   0.000005358   0.000000001  -0.000000018   0.000000591

   67   16.1  1.5 -1.5  -0.000002927  -0.000161368   0.001456795  -0.007939348  -0.000000670   0.001254522  -0.003460388  -0.000027611
                         0.000001325   0.000075177  -0.000170327   0.000929192   0.000003509  -0.006018440   0.001828657   0.000014621

   68   17.1  1.5 -1.5  -0.001942331   0.000035236  -0.002301184  -0.000422244  -0.021351722  -0.000011569   0.000023592  -0.002956321
                        -0.000000272   0.000000007   0.000000861   0.000000169   0.000000187  -0.000000034   0.000000006   0.000000016

   69    1.1  0.5  0.5   0.000930859   0.051305513  -0.000003573   0.000019476   0.000000259  -0.000477946   0.198557158   0.001585039
                         0.002000770   0.110290503  -0.000030510   0.000166278   0.000000053  -0.000099623   0.375719163   0.002997942

   70    2.1  0.5  0.5   0.003150189   0.173651192   0.000047823  -0.000260628  -0.000000071   0.000132614  -0.366541923  -0.002924716
                        -0.001465709  -0.080780689  -0.000005601   0.000030526   0.000000345  -0.000636216   0.193707216   0.001546459

   71    3.1  0.5  0.5   0.000021499  -0.000000734  -0.000000166  -0.000000031   0.000000000  -0.000000000  -0.000000308  -0.000003176
                        -0.300866117   0.005458143  -0.000774048  -0.000142030   0.000096801   0.000000052   0.002402663  -0.301093299

   72    4.1  0.5  0.5  -0.375097769   0.006804816   0.000033209   0.000006093  -0.000120878  -0.000000065   0.000589764  -0.073914666
                        -0.000027186   0.000000930  -0.000000008  -0.000000002   0.000000002  -0.000000000  -0.000000037   0.000000851

   73    5.1  0.5  0.5   0.001901802   0.104835028  -0.000182092   0.000992377  -0.000000019   0.000036426   0.045808812   0.000365518
                        -0.000884848  -0.048767677   0.000021327  -0.000116235   0.000000095  -0.000174758  -0.024209525  -0.000193171

   74    6.1  0.5  0.5   0.000020477  -0.000000710   0.000000108   0.000000020  -0.000000003   0.000000001   0.000000438   0.000002622
                        -0.279097284   0.005063234   0.000498098   0.000091396  -0.000400525  -0.000000217  -0.001819951   0.228056096

   75    7.1  0.5  0.5   0.185084642  -0.003357711   0.000796073   0.000146072   0.000434963   0.000000236   0.001013475  -0.126993968
                         0.000013301  -0.000000476  -0.000000171  -0.000000032  -0.000000003   0.000000001   0.000000291   0.000002249

   76    8.1  0.5  0.5   0.000775944   0.042765749  -0.011731564   0.063939188   0.000009121  -0.016951194  -0.042780832  -0.000341471
                         0.001667751   0.091933200  -0.100165665   0.545890065   0.000001888  -0.003533119  -0.080950885  -0.000645924

   77    9.1  0.5  0.5  -0.007497342  -0.413283801  -0.005377484   0.029306604  -0.000060897   0.113995313   0.126490131   0.001009291
                         0.003488243   0.192254321   0.000629854  -0.003432441   0.000296483  -0.546897786  -0.066846650  -0.000533534

   78   10.1  0.5  0.5   0.003871958   0.213400913  -0.000362201   0.001973685  -0.000296680   0.547262919   0.045664149   0.000364660
                         0.008321983   0.458741363  -0.003092231   0.016852268  -0.000060938   0.114071416   0.086408171   0.000689469

   79   11.1  0.5  0.5  -0.000007603   0.000000291  -0.000105876  -0.000019991  -0.000001521   0.000000412   0.000000309   0.000002595
                         0.104483839  -0.001895502  -0.490806069  -0.090058206  -0.253622477  -0.000137468  -0.001469346   0.184124903

   80   12.1  0.5  0.5  -0.000500392   0.000009090  -0.461444786  -0.084670685   0.305467095   0.000165441   0.002321860  -0.290958842
                        -0.000000527   0.000000037   0.000099357   0.000018828  -0.000001484   0.000000469   0.000000423   0.000003379

   81   13.1  0.5  0.5  -0.000000001   0.000000000   0.000020275   0.000003858  -0.000000981   0.000000295  -0.000000000  -0.000000003
                         0.000011100  -0.000000201   0.094364024   0.017314890  -0.188857115  -0.000102308   0.000002092  -0.000262107

   82   14.1  0.5  0.5  -0.000024334   0.000000441   0.113667434   0.020856886   0.177524930   0.000096194  -0.000000612   0.000076684
                        -0.000000002   0.000000000  -0.000024561  -0.000004622  -0.000000989   0.000000283  -0.000000000  -0.000000001

   83   15.1  0.5  0.5   0.000000258   0.000014209   0.037912400  -0.206617730  -0.000001236   0.002312470   0.000168006   0.000001341
                        -0.000000120  -0.000006610  -0.004440361   0.024200790   0.000005989  -0.011094519  -0.000088787  -0.000000709

   84    1.1  0.5 -0.5  -0.000008579   0.000000274   0.000000036   0.000000007  -0.000000003   0.000000001   0.000000586   0.000005246
                         0.121639840  -0.002206712   0.000167415   0.000030719  -0.000488219  -0.000000265  -0.003391166   0.424958626

   85    2.1  0.5 -0.5  -0.191520902   0.003474478   0.000262410   0.000048150  -0.000649891  -0.000000352  -0.003308398   0.414578662
                        -0.000014159   0.000000506  -0.000000057  -0.000000011   0.000000005  -0.000000001  -0.000000691  -0.000005140

   86    3.1  0.5 -0.5   0.002302464   0.126900211  -0.000016522   0.000090048   0.000000051  -0.000094765   0.140682949   0.001122916
                         0.004948736   0.272794349  -0.000141066   0.000768793   0.000000011  -0.000019752   0.266205714   0.002124111

   87    4.1  0.5 -0.5  -0.006169718  -0.340099791  -0.000006052   0.000032983   0.000000013  -0.000024667  -0.065350231  -0.000521443
                         0.002870558   0.158210207   0.000000709  -0.000003862  -0.000000064   0.000118334   0.034535854   0.000275535

   88    5.1  0.5 -0.5  -0.115622962   0.002097572  -0.000999161  -0.000183336  -0.000178514  -0.000000097   0.000413423  -0.051812627
                        -0.000008127   0.000000291   0.000000215   0.000000041   0.000000001  -0.000000000  -0.000000001  -0.000000101

   89    6.1  0.5 -0.5   0.002135902   0.117718972   0.000010632  -0.000057944  -0.000000212   0.000392097  -0.106556827  -0.000850758
                         0.004590672   0.253056392   0.000090776  -0.000494716  -0.000000044   0.000081730  -0.201631410  -0.001608860

   90    7.1  0.5 -0.5   0.003044327   0.167815623  -0.000145080   0.000790668  -0.000000047   0.000088757  -0.112279643  -0.000895903
                        -0.001416439  -0.078065623   0.000016992  -0.000092610   0.000000231  -0.000425811   0.059335906   0.000473803

   91    8.1  0.5 -0.5  -0.000006953   0.000000248   0.000118461   0.000022405   0.000000089   0.000000013  -0.000000095  -0.000000658
                         0.101393404  -0.001839425   0.549621842   0.100850332  -0.017315482  -0.000009314   0.000730630  -0.091560064

   92    9.1  0.5 -0.5   0.455812706  -0.008269098  -0.029506926  -0.005414245  -0.558652056  -0.000302671   0.001141633  -0.143067214
                         0.000032872  -0.000001119   0.000006550   0.000001169   0.000003003  -0.000000881   0.000000120   0.000001656

   93   10.1  0.5 -0.5  -0.000036776   0.000001277   0.000003849   0.000000658   0.000003000  -0.000000881   0.000000250   0.000001359
                         0.505948205  -0.009178641   0.016967450   0.003113372   0.559025036   0.000302872  -0.000779964   0.097732218

   94   11.1  0.5 -0.5  -0.000799631  -0.044069631  -0.010476170   0.057096879  -0.000134660   0.248286123  -0.086030014  -0.000686824
                        -0.001718580  -0.094735106  -0.089446804   0.487473645  -0.000027646   0.051752893  -0.162790714  -0.001298941

   95   12.1  0.5 -0.5  -0.000008227  -0.000453497   0.084095863  -0.458311695  -0.000033299   0.062331697  -0.257245679  -0.002052618
                         0.000003867   0.000211502  -0.009849425   0.053681380   0.000162056  -0.299039973   0.135947447   0.001085263

   96   13.1  0.5 -0.5  -0.000000085  -0.000004682   0.002014169  -0.010977718  -0.000100216   0.184883491   0.000122467   0.000000978
                        -0.000000183  -0.000010064   0.017197342  -0.093723312  -0.000020587   0.038537059   0.000231737   0.000001849

   97   14.1  0.5 -0.5  -0.000000400  -0.000022064  -0.020715288   0.112895671  -0.000019352   0.036224746   0.000067799   0.000000541
                         0.000000186   0.000010264   0.002426219  -0.013223218   0.000094228  -0.173789725  -0.000035830  -0.000000286

   98   15.1  0.5 -0.5  -0.000015671   0.000000284   0.208030196   0.038171544  -0.011332955  -0.000006115   0.000001516  -0.000190024
                        -0.000000001   0.000000000  -0.000044835  -0.000008480  -0.000000008  -0.000000012   0.000000000   0.000000001


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.000765723   0.000000000   0.000368310  -0.010062369   0.000461660   0.000322228   0.011360347  -0.001157985
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.041043184   0.000001035   0.002094474  -0.057223215  -0.016266759  -0.011352173  -0.009532742   0.000971770
                         0.000100409  -0.000002115   0.000000454  -0.000010297   0.000026353   0.000017946   0.000001158  -0.000000146

    3    3.1  1.5  1.5   0.000098298  -0.000002072   0.000000245  -0.000008733   0.000025856   0.000017610   0.000000619  -0.000000072
                         0.040153308  -0.000001014  -0.001957042   0.053465812   0.015949854   0.011131020   0.011854940  -0.001208426

    4    4.1  1.5  1.5  -0.000003771  -0.029361581  -0.016024337  -0.000586465   0.005242680  -0.007512406   0.000942667   0.009247519
                        -0.000000009   0.059276390   0.024560525   0.000898982  -0.001410026   0.002020160  -0.000338789  -0.003323667

    5    5.1  1.5  1.5  -0.000000001   0.006133637   0.015865186   0.000580709  -0.002723225   0.003901596   0.000850769   0.008346420
                         0.000000401   0.003043173   0.010351230   0.000378820  -0.010120142   0.014501420   0.002368167   0.023231357

    6    6.1  1.5  1.5  -0.000000001   0.008516832   0.059438731   0.002175618  -0.001365621   0.001956540  -0.000262117  -0.002571484
                         0.000000638   0.004220373   0.038774191   0.001419250  -0.005076256   0.007274026  -0.000729468  -0.007156408

    7    7.1  1.5  1.5   0.000000738   0.005086938   0.011051801   0.000404590  -0.010457352   0.014984681   0.002315707   0.022716824
                         0.000000001  -0.010269369  -0.016938407  -0.000619991   0.002814183  -0.004031912  -0.000831883  -0.008161139

    8    8.1  1.5  1.5   0.000022108   0.171129086  -0.070826514  -0.002592150   0.203175590  -0.291137244   0.023659810   0.232096766
                         0.000000051  -0.345491345   0.108577636   0.003974235  -0.054677699   0.078337365  -0.008498667  -0.083375717

    9    9.1  1.5  1.5   0.038367998  -0.000001148  -0.003741342   0.102221932  -0.324936156  -0.226765991   0.622977009  -0.063504993
                        -0.000091726   0.000002343  -0.000001280   0.000024223   0.000506964   0.000345169  -0.000028767   0.000004224

   10   10.1  1.5  1.5  -0.000000033   0.219525822  -0.265202034  -0.009707111  -0.049433657   0.070824165  -0.007825696  -0.076773569
                         0.000014092   0.108735644  -0.172994881  -0.006331483  -0.183689693   0.263214615  -0.021785721  -0.213718106

   11   11.1  1.5  1.5   0.002055641  -0.000000052  -0.000112355   0.003069744   0.004870233   0.003398863   0.001622003  -0.000165297
                        -0.000005049   0.000000106  -0.000000029   0.000000538  -0.000007931  -0.000005414  -0.000000328   0.000000020

   12   12.1  1.5  1.5  -0.000000220  -0.001608560  -0.000975765  -0.000035721   0.002372244  -0.003399329   0.000139845   0.001372627
                        -0.000000000   0.003247749   0.001497516   0.000054813  -0.000638637   0.000914983  -0.000050388  -0.000494331

   13   13.1  1.5  1.5  -0.000005328   0.000000116   0.000000024   0.000000453  -0.000008417  -0.000005725  -0.000000501   0.000000042
                        -0.002159592   0.000000057   0.000105118  -0.002871146  -0.005127284  -0.003578173  -0.003838817   0.000391274

   14   14.1  1.5  1.5  -0.000000011  -0.000063519   0.000406603   0.000014869  -0.002935843   0.004206830   0.000798353   0.007831380
                        -0.000000000   0.000128014  -0.000624796  -0.000022869   0.000790359  -0.001132356  -0.000286676  -0.002812422

   15   15.1  1.5  1.5   0.000000000   0.000423713   0.003099702   0.000113457  -0.000350617   0.000502333  -0.000115121  -0.001129390
                         0.000000057   0.000208854   0.002021225   0.000074016  -0.001297738   0.001859728  -0.000320865  -0.003148219

   16   16.1  1.5  1.5  -0.000807789   0.000000046   0.000020669  -0.000564145  -0.001931641  -0.001347904  -0.004501835   0.000458956
                         0.000002030  -0.000000093  -0.000000031   0.000000003   0.000003277   0.000002196   0.000000390  -0.000000066

   17   17.1  1.5  1.5   0.000000000  -0.000379615  -0.001217912  -0.000044579   0.000919377  -0.001317202  -0.000264226  -0.002592174
                        -0.000000026  -0.000188190  -0.000794549  -0.000029080   0.003416744  -0.004895952  -0.000735584  -0.007215936

   18    1.1  1.5  0.5   0.000000007  -0.042699964  -0.033855280  -0.001239195   0.002986519  -0.004278821   0.000691612   0.006785019
                        -0.000002557  -0.021147892  -0.022086850  -0.000808458   0.011096399  -0.015900386   0.001925621   0.018890251

   19    2.1  1.5  0.5  -0.000000006   0.041061707  -0.032405348  -0.001186123   0.002256259  -0.003232569  -0.000512805  -0.005030843
                         0.000002755   0.020342152  -0.021141827  -0.000773873   0.008382392  -0.012011360  -0.001427298  -0.014001557

   20    3.1  1.5  0.5  -0.000002770  -0.021767019   0.024804341   0.000907895   0.007070428  -0.010131272  -0.001689237  -0.016571203
                        -0.000000007   0.043943634  -0.038017409  -0.001391540  -0.001903795   0.002727589   0.000606781   0.005952795

   21    4.1  1.5  0.5   0.000015052  -0.000000234   0.000000179  -0.000004044  -0.000017172  -0.000011679  -0.000001147   0.000000159
                         0.004312406  -0.000000114  -0.000214752   0.005867661  -0.011226680  -0.007834836  -0.025194004   0.002568197

   22    5.1  1.5  0.5  -0.064134282   0.000001617  -0.001644778   0.044937150   0.001024905   0.000715257   0.000859779  -0.000087644
                         0.000153994  -0.000003304  -0.000000455   0.000010616  -0.000002391  -0.000001641  -0.000001795   0.000000185

   23    6.1  1.5  0.5  -0.013549557   0.000000281   0.001058727  -0.028924168  -0.021716124  -0.015155256  -0.001018323   0.000103740
                         0.000030204  -0.000000576   0.000000154  -0.000005233   0.000033639   0.000022909  -0.000000441   0.000000066

   24    7.1  1.5  0.5   0.000152484  -0.000003258  -0.000000272   0.000009429  -0.000001538  -0.000001036  -0.000000006  -0.000000008
                         0.063823501  -0.000001595   0.001676999  -0.045814960  -0.000489230  -0.000341332   0.000919932  -0.000093794

   25    8.1  1.5  0.5  -0.000209901   0.000004232  -0.000000923   0.000017284   0.000856669   0.000583277  -0.000003127   0.000000566
                        -0.088065990   0.000002070   0.002663577  -0.072775129   0.549944920   0.383794915  -0.075224990   0.007668535

   26    9.1  1.5  0.5   0.000000033  -0.217491695  -0.270988005  -0.009918893  -0.027688299   0.039669341  -0.004738711  -0.046488870
                        -0.000013697  -0.107729035  -0.176770422  -0.006469513  -0.102887938   0.147430276  -0.013192014  -0.129414170

   27   10.1  1.5  0.5  -0.154358439   0.000003879   0.009157533  -0.250197045   0.139551868   0.097389760   0.618329337  -0.063030649
                         0.000368219  -0.000007926   0.000002732  -0.000059806  -0.000217561  -0.000147989  -0.000026992   0.000003829

   28   11.1  1.5  0.5   0.000000000  -0.001268316   0.002292136   0.000083898  -0.001030507   0.001476419   0.000076563   0.000751121
                        -0.000000064  -0.000628420   0.001495391   0.000054718  -0.003828694   0.005486236   0.000213032   0.002089843

   29   12.1  1.5  0.5  -0.000001103   0.000000073   0.000000049  -0.000000759  -0.000007266  -0.000004954  -0.000000462   0.000000017
                        -0.000483952   0.000000036  -0.000030700   0.000839093  -0.003490213  -0.002435653  -0.008017035   0.000817110

   30   13.1  1.5  0.5   0.000000144   0.001174503  -0.001335310  -0.000048895  -0.002275932   0.003261028   0.000547552   0.005371461
                         0.000000000  -0.002370624   0.002046816   0.000074919   0.000612598  -0.000877676  -0.000196740  -0.001930110

   31   14.1  1.5  0.5   0.000008198  -0.000000198  -0.000000062   0.000000973   0.000000192   0.000000133   0.000000025   0.000000021
                         0.003417508  -0.000000097   0.000086018  -0.002350516  -0.000874058  -0.000610077  -0.001386483   0.000141394

   32   15.1  1.5  0.5  -0.000333508  -0.000000008   0.000065953  -0.001801421  -0.007029635  -0.004905899  -0.000375847   0.000038230
                         0.000001674   0.000000017   0.000000018  -0.000001168   0.000011662   0.000007970   0.000001808  -0.000000155

   33   16.1  1.5  0.5  -0.000000000   0.002940156   0.001112365   0.000040716  -0.000650025   0.000931299  -0.000266951  -0.002618907
                         0.000000228   0.001456471   0.000725480   0.000026515  -0.002415822   0.003461818  -0.000742968  -0.007289644

   34   17.1  1.5  0.5   0.003517542  -0.000000088   0.000081896  -0.002237514   0.000492013   0.000343369  -0.000212911   0.000021708
                        -0.000008344   0.000000180   0.000000026  -0.000000584  -0.000000636  -0.000000432   0.000000311  -0.000000034

   35    1.1  1.5 -0.5  -0.047649847   0.000001124   0.001479597  -0.040422876   0.016466024   0.011491261   0.020071822  -0.002046056
                         0.000111304  -0.000002297   0.000000266  -0.000007717  -0.000025140  -0.000017101  -0.000001614   0.000000197

   36    2.1  1.5 -0.5   0.045824168  -0.000001211   0.001416251  -0.038692162   0.012438726   0.008680729  -0.014877936   0.001516624
                        -0.000112089   0.000002474   0.000000222  -0.000006634  -0.000018710  -0.000012729  -0.000000451   0.000000016

   37    3.1  1.5 -0.5  -0.000117397   0.000002488   0.000000260  -0.000006858   0.000014815   0.000010087  -0.000000725   0.000000107
                        -0.049039089   0.000001217  -0.001661522   0.045393597   0.010492006   0.007322246  -0.017607968   0.001794910

   38    4.1  1.5 -0.5  -0.000000260  -0.001918393  -0.003203612  -0.000117223   0.007565622  -0.010841031   0.002416998   0.023710606
                        -0.000000001   0.003862233   0.004915927   0.000179936  -0.002036214   0.002917308  -0.000868190  -0.008517333

   39    5.1  1.5 -0.5  -0.000000009   0.057470142  -0.037637224  -0.001377624  -0.000185335   0.000265532  -0.000029460  -0.000289013
                         0.000003678   0.028467747  -0.024551720  -0.000898580  -0.000690830   0.000989913  -0.000082545  -0.000809749

   40    6.1  1.5 -0.5  -0.000000002   0.012142663   0.024224635   0.000886687   0.003938429  -0.005642632   0.000035138   0.000344723
                         0.000000641   0.006012249   0.015804258   0.000578524   0.014634585  -0.020970262   0.000097608   0.000958200

   41    7.1  1.5 -0.5  -0.000003628  -0.028329112   0.025032485   0.000916344   0.000329741  -0.000472631  -0.000088273  -0.000865751
                        -0.000000009   0.057191992  -0.038371674  -0.001404507  -0.000088201   0.000126367   0.000031706   0.000311047

   42    8.1  1.5 -0.5   0.000004711   0.039089090   0.039761114   0.001455017  -0.370610151   0.531057751   0.007217093   0.070795719
                         0.000000012  -0.078915814  -0.060953044  -0.002231046   0.099734613  -0.142890917  -0.002592297  -0.025431582

   43    9.1  1.5 -0.5  -0.242709390   0.000006021   0.011842256  -0.323546403  -0.152673791  -0.106548316  -0.137510881   0.014017297
                         0.000578168  -0.000012302   0.000003496  -0.000078077   0.000237346   0.000161730   0.000005638  -0.000000760

   44   10.1  1.5 -0.5  -0.000000021   0.138320249   0.209553550   0.007670226  -0.025308145   0.036259269  -0.021307860  -0.209039603
                         0.000008825   0.068514028   0.136696286   0.005002805  -0.094044059   0.134759180  -0.059319793  -0.581922344

   45   11.1  1.5 -0.5  -0.001415459   0.000000028  -0.000100165   0.002736802  -0.005681419  -0.003964947   0.002220727  -0.000226372
                         0.000003543  -0.000000058  -0.000000033   0.000000502   0.000008613   0.000005862   0.000000281  -0.000000026

   46   12.1  1.5 -0.5   0.000000081   0.000214762  -0.000457975  -0.000016738   0.002352307  -0.003370824   0.000768992   0.007545033
                        -0.000000000  -0.000433691   0.000703091   0.000025735  -0.000631731   0.000905088  -0.000276259  -0.002710227

   47   13.1  1.5 -0.5   0.000006548  -0.000000130  -0.000000001   0.000000477  -0.000005033  -0.000003462  -0.000000278   0.000000019
                         0.002645614  -0.000000063   0.000089463  -0.002443872  -0.003377068  -0.002356932   0.005707706  -0.000581825

   48   14.1  1.5 -0.5  -0.000000220  -0.001516947   0.001283870   0.000046962   0.000588842  -0.000843634   0.000133074   0.001304818
                        -0.000000000   0.003062401  -0.001968909  -0.000072067  -0.000159560   0.000228604  -0.000047787  -0.000468811

   49   15.1  1.5 -0.5  -0.000000000   0.000298468   0.001509191   0.000055240   0.001274372  -0.001825807   0.000012780   0.000125377
                        -0.000000018   0.000148820   0.000983597   0.000036032   0.004737498  -0.006788397   0.000036031   0.000354323

   50   16.1  1.5 -0.5   0.003281122  -0.000000100  -0.000048588   0.001328035  -0.003584894  -0.002501743  -0.007745811   0.000789471
                        -0.000007941   0.000000205  -0.000000049   0.000000434   0.000005746   0.000003893   0.000000053   0.000000022

   51   17.1  1.5 -0.5   0.000000000  -0.003152082   0.001874066   0.000068596  -0.000089316   0.000127964   0.000007308   0.000071695
                        -0.000000200  -0.001561265   0.001222434   0.000044739  -0.000331550   0.000475081   0.000020441   0.000200477

   52    1.1  1.5 -1.5  -0.000000000   0.000686970  -0.008426463  -0.000308431   0.000084208  -0.000120646   0.000391529   0.003841078
                         0.000000000   0.000338238  -0.005499635  -0.000201302   0.000311030  -0.000445617   0.001089786   0.010691286

   53    2.1  1.5 -1.5   0.000000006  -0.036777600  -0.047925688  -0.001754210  -0.002949356   0.004225576  -0.000328431  -0.003222051
                        -0.000002355  -0.018219803  -0.031266994  -0.001144365  -0.010962365   0.015708362  -0.000914588  -0.008971708

   54    3.1  1.5 -1.5   0.000002307   0.017824829   0.029214677   0.001069426   0.010748810  -0.015402341   0.001137281   0.011156960
                         0.000000005  -0.035980179  -0.044778295  -0.001639007  -0.002891886   0.004143238  -0.000408516  -0.004007723

   55    4.1  1.5 -1.5   0.000158038  -0.000003387   0.000000223  -0.000004515  -0.000013269  -0.000009050   0.000001218  -0.000000108
                         0.066149587  -0.000001658  -0.001073364   0.029325735  -0.007779275  -0.005428976  -0.009826667   0.001001698

   56    5.1  1.5 -1.5  -0.006847041   0.000000176   0.000693345  -0.018943391   0.015017092   0.010480122  -0.024685191   0.002516351
                         0.000020818  -0.000000360   0.000000157  -0.000002829  -0.000023663  -0.000016119  -0.000000046  -0.000000044

   57    6.1  1.5 -1.5  -0.009505125   0.000000281   0.002597611  -0.070967601   0.007532552   0.005256731   0.007604387  -0.000775131
                         0.000024233  -0.000000573   0.000000581  -0.000016103  -0.000012382  -0.000008420   0.000000365  -0.000000037

   58    7.1  1.5 -1.5  -0.000027537   0.000000663  -0.000000046   0.000002729   0.000024166   0.000016445  -0.000000353   0.000000080
                        -0.011460197   0.000000325   0.000740326  -0.020225032   0.015517616   0.010829385  -0.024138316   0.002460595

   59    8.1  1.5 -1.5  -0.000917221   0.000019857   0.000001410  -0.000031836  -0.000468196  -0.000318536  -0.000009510   0.000001539
                        -0.385549728   0.000009719  -0.004744869   0.129636018  -0.301491987  -0.210404063  -0.246617961   0.025139887

   60    9.1  1.5 -1.5  -0.000000005   0.034381388   0.085616278   0.003133787  -0.058927875   0.084426638   0.021467869   0.210609369
                         0.000002609   0.017030321   0.055849592   0.002043777  -0.218975888   0.313776840   0.059766334   0.586296894

   61   10.1  1.5 -1.5  -0.244978952   0.000006195  -0.011589463   0.316637556   0.272576258   0.190224885   0.227089431  -0.023148632
                         0.000582728  -0.000012657  -0.000003335   0.000077453  -0.000423248  -0.000288068  -0.000008769   0.000001222

   62   11.1  1.5 -1.5  -0.000000000   0.001841991   0.002570970   0.000094104   0.000883004  -0.001265089   0.000055870   0.000548111
                         0.000000118   0.000912554   0.001677332   0.000061384   0.003282164  -0.004703061   0.000155569   0.001526587

   63   12.1  1.5 -1.5   0.000008517  -0.000000198   0.000000045  -0.000001346  -0.000005164  -0.000003498   0.000001115  -0.000000137
                         0.003624261  -0.000000097  -0.000065425   0.001787364  -0.003520313  -0.002456702  -0.001458926   0.000148646

   64   13.1  1.5 -1.5  -0.000000130  -0.000958722  -0.001568859  -0.000057472  -0.003455325   0.004951306  -0.000368244  -0.003612902
                        -0.000000000   0.001935128   0.002404612   0.000088015   0.000929563  -0.001331795   0.000132255   0.001297482

   65   14.1  1.5 -1.5   0.000000440  -0.000000010  -0.000000047   0.000000987   0.000006371   0.000004334  -0.000001103   0.000000141
                         0.000142905  -0.000000005   0.000027278  -0.000745450   0.004356559   0.003040365  -0.008321071   0.000848263

   66   15.1  1.5 -1.5  -0.000472391   0.000000025   0.000135466  -0.003700473   0.001926377   0.001344268   0.003344668  -0.000340892
                         0.000000210  -0.000000051   0.000000028  -0.000001536  -0.000001129  -0.000000707  -0.000001578   0.000000148

   67   16.1  1.5 -1.5  -0.000000000  -0.000723813  -0.000472427  -0.000017292  -0.000350130   0.000501635  -0.000155116  -0.001521760
                        -0.000000103  -0.000358640  -0.000308338  -0.000011323  -0.001301637   0.001865371  -0.000431948  -0.004236834

   68   17.1  1.5 -1.5   0.000423700  -0.000000012  -0.000053225   0.001454173  -0.005070040  -0.003538271   0.007667405  -0.000781600
                        -0.000001150   0.000000024  -0.000000012   0.000000281   0.000008037   0.000005474  -0.000000290   0.000000046

   69    1.1  0.5  0.5   0.000011773   0.090639811   0.008939329   0.000326968  -0.003758379   0.005385502  -0.000378588  -0.003713948
                         0.000000028  -0.182991797  -0.013701679  -0.000501519   0.001011423  -0.001449077   0.000135990   0.001334123

   70    2.1  0.5  0.5   0.000000022  -0.149272944   0.126844322   0.004642845  -0.000529839   0.000759107  -0.000047326  -0.000464291
                        -0.000009460  -0.073937150   0.082742707   0.003028165  -0.001968914   0.002821312  -0.000131755  -0.001292577

   71    3.1  0.5  0.5   0.000294299  -0.000006503  -0.000003558   0.000083715  -0.000011396  -0.000007758  -0.000000132   0.000000018
                         0.124111457  -0.000003183   0.012484464  -0.341089213  -0.007330226  -0.005115606  -0.003008737   0.000306699

   72    4.1  0.5  0.5   0.433843724  -0.000010929   0.006211480  -0.169703675  -0.003957378  -0.002761758  -0.003407254   0.000347329
                        -0.001031361   0.000022329   0.000001765  -0.000042665   0.000006133   0.000004172   0.000000129  -0.000000020

   73    5.1  0.5  0.5  -0.000000032   0.213584806   0.337990519   0.012371366   0.000685992  -0.000982828  -0.000027897  -0.000273681
                         0.000013531   0.105794188   0.220477344   0.008069174   0.002549112  -0.003652679  -0.000077667  -0.000761854

   74    6.1  0.5  0.5   0.000974029  -0.000021001  -0.000000587   0.000013557   0.000001386   0.000000947  -0.000000024   0.000000007
                         0.409651613  -0.000010279   0.001906755  -0.052094920   0.000873179   0.000609383  -0.001251870   0.000127619

   75    7.1  0.5  0.5   0.146743290  -0.000003661  -0.015729147   0.429741261   0.002204882   0.001538749  -0.001313416   0.000133887
                        -0.000350375   0.000007481  -0.000004632   0.000103788  -0.000003420  -0.000002331   0.000000065  -0.000000009

   76    8.1  0.5  0.5   0.000009697   0.075839244   0.130601085   0.004779840  -0.074870419   0.107284180  -0.009204489  -0.090295937
                         0.000000023  -0.153110049  -0.200210723  -0.007328253   0.020148562  -0.028867075   0.003306335   0.032436622

   77    9.1  0.5  0.5   0.000000032  -0.216506104   0.103765784   0.003798108   0.017484689  -0.025050513  -0.004709140  -0.046198761
                        -0.000013875  -0.107239492   0.067686933   0.002477365   0.064972792  -0.093101282  -0.013110169  -0.128608813

   78   10.1  0.5  0.5  -0.000012477  -0.096706560   0.105612749   0.003865310  -0.048636953   0.069693122   0.014737368   0.144571336
                        -0.000000029   0.195241958  -0.161905251  -0.005926170   0.013088423  -0.018751932  -0.005293641  -0.051932979

   79   11.1  0.5  0.5  -0.000306857   0.000006610  -0.000002279   0.000049912  -0.000222691  -0.000151605   0.000000243  -0.000000058
                        -0.128715972   0.000003235   0.007618685  -0.208153499  -0.143069133  -0.099844865  -0.003865345   0.000393912

   80   12.1  0.5  0.5  -0.073176896   0.000001804   0.002212759  -0.060453978  -0.080555268  -0.056217659  -0.164519208   0.016770557
                         0.000174081  -0.000003685   0.000000576  -0.000014909   0.000125155   0.000085166   0.000007227  -0.000001009

   81   13.1  0.5  0.5  -0.000000223   0.000000005  -0.000000000   0.000000008  -0.000000738  -0.000000504   0.000000372  -0.000000053
                        -0.000094267   0.000000002   0.000001241  -0.000033908  -0.000464448  -0.000324135   0.008300367  -0.000846117

   82   14.1  0.5  0.5  -0.000054850   0.000000001   0.000010550  -0.000288253   0.006139413   0.004284566  -0.003666810   0.000373789
                         0.000000132  -0.000000003   0.000000003  -0.000000070  -0.000009565  -0.000006512   0.000000180  -0.000000027

   83   15.1  0.5  0.5  -0.000000000   0.000142235   0.000265925   0.000009734  -0.001032221   0.001478875  -0.000157100  -0.001541226
                         0.000000009   0.000070452   0.000173468   0.000006349  -0.003835653   0.005496225  -0.000437351  -0.004290416

   84    1.1  0.5 -0.5  -0.000485945   0.000010574  -0.000000297   0.000002714   0.000008679   0.000005907   0.000000183  -0.000000025
                        -0.204209052   0.000005176   0.000598689  -0.016359939   0.005577040   0.003892089   0.003946302  -0.000402272

   85    2.1  0.5 -0.5   0.166580184  -0.000004159   0.005543085  -0.151445820   0.002921648   0.002038956   0.001373434  -0.000139997
                        -0.000395523   0.000008497   0.000001712  -0.000036679  -0.000004570  -0.000003112  -0.000000090   0.000000009

   86    3.1  0.5 -0.5   0.000007240   0.055086921  -0.186353805  -0.006820463  -0.004939862   0.007078472  -0.000288642  -0.002831584
                         0.000000017  -0.111216777   0.285681846   0.010456727   0.001329379  -0.001904617   0.000103682   0.001017168

   87    4.1  0.5 -0.5  -0.000000058   0.388767956  -0.142137149  -0.005202604  -0.000717707   0.001028267  -0.000117417  -0.001151915
                         0.000024860   0.192564058  -0.092716611  -0.003393436  -0.002666875   0.003821458  -0.000326880  -0.003206630

   88    5.1  0.5 -0.5  -0.238349652   0.000005948   0.014770316  -0.403544100  -0.003782590  -0.002639799   0.000809520  -0.000082525
                         0.000568080  -0.000012153   0.000004313  -0.000097415   0.000005885   0.000004010  -0.000000030   0.000000006

   89    6.1  0.5 -0.5   0.000023381   0.181826410  -0.028461370  -0.001041654   0.000588454  -0.000843197  -0.000120106  -0.001178150
                         0.000000055  -0.367089293   0.043632915   0.001597083  -0.000158337   0.000226851   0.000043143   0.000423251

   90    7.1  0.5 -0.5  -0.000000020   0.131496189   0.359932118   0.013174488   0.000399873  -0.000572903  -0.000045260  -0.000444021
                         0.000008329   0.065134233   0.234790189   0.008592960   0.001485886  -0.002129154  -0.000126005  -0.001236086

   91    8.1  0.5 -0.5  -0.000407052   0.000008710  -0.000002541   0.000057705   0.000172793   0.000117600   0.000003917  -0.000000544
                        -0.170862847   0.000004263   0.008749295  -0.239041782   0.111099835   0.077534060   0.095945248  -0.009780310

   92    9.1  0.5 -0.5   0.241608923  -0.000006100   0.004534640  -0.123890507  -0.096412418  -0.067284230   0.136654865  -0.013930274
                        -0.000574332   0.000012462   0.000001270  -0.000031054   0.000150291   0.000102342  -0.000006360   0.000000917

   93   10.1  0.5 -0.5   0.000517560  -0.000011206  -0.000002075   0.000047486   0.000112707   0.000076769  -0.000006987   0.000001016
                         0.217879125  -0.000005485   0.007075316  -0.193306390   0.072171695   0.050367193  -0.153616097   0.015659267

   94   11.1  0.5 -0.5  -0.000007359  -0.057132108  -0.113725474  -0.004162120  -0.096414792   0.138155558  -0.000370693  -0.003637615
                        -0.000000018   0.115342177   0.174339892   0.006381311   0.025946250  -0.037173489   0.000133241   0.001307151

   95   12.1  0.5 -0.5   0.000000010  -0.065573864  -0.050633725  -0.001853331  -0.014609227   0.020930806  -0.005669389  -0.055619233
                        -0.000004103  -0.032480098  -0.033028921  -0.001208911  -0.054286305   0.077788613  -0.015783206  -0.154832396

   96   13.1  0.5 -0.5  -0.000000005  -0.000041841  -0.000018526  -0.000000678  -0.000313002   0.000448501   0.000796303   0.007811648
                        -0.000000000   0.000084473   0.000028400   0.000001040   0.000084220  -0.000120663  -0.000286033  -0.002806110

   97   14.1  0.5 -0.5   0.000000000  -0.000049151  -0.000241428  -0.000008837   0.001113405  -0.001595189  -0.000126358  -0.001239626
                        -0.000000003  -0.000024347  -0.000157488  -0.000005764   0.004137376  -0.005928563  -0.000351784  -0.003450917

   98   15.1  0.5 -0.5  -0.000158727   0.000000004   0.000011621  -0.000317501   0.005691703   0.003972113   0.004558843  -0.000464711
                         0.000000378  -0.000000008   0.000000003  -0.000000077  -0.000008853  -0.000006026  -0.000000188   0.000000026


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.008255645   0.045204271  -0.000620818  -0.007041594   0.001675229   0.004392371   0.000024073   0.000000944
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000909201  -0.004978734  -0.002528683  -0.028682767   0.011159805   0.029260512  -0.000009472  -0.000000371
                         0.000000171   0.000000965  -0.000000177  -0.000003371   0.000002502   0.000006534   0.000000001   0.000000000

    3    3.1  1.5  1.5  -0.000000276  -0.000001520  -0.000000110  -0.000002518   0.000002123   0.000005770  -0.000000000   0.000000000
                         0.002752690   0.015072387   0.002322805   0.026347525  -0.010492000  -0.027509345   0.000014691   0.000000576

    4    4.1  1.5  1.5   0.019038481  -0.003476955   0.027042244  -0.002383904  -0.008926102   0.003404354   0.000001742  -0.000044430
                        -0.001617703   0.000295441   0.028524624  -0.002514854   0.009617013  -0.003667881  -0.000000903   0.000023028

    5    5.1  1.5  1.5   0.002828176  -0.000516509   0.007994804  -0.000704857   0.007090372  -0.002704233   0.000000701  -0.000017876
                         0.033307258  -0.006082836  -0.007576075   0.000667874   0.006580643  -0.002509795   0.000001352  -0.000034485

    6    6.1  1.5  1.5  -0.001268907   0.000231740   0.005942128  -0.000523884   0.029655511  -0.011310465   0.000000127  -0.000003228
                        -0.014943863   0.002729229  -0.005631949   0.000496545   0.027519782  -0.010495964   0.000000244  -0.000006230

    7    7.1  1.5  1.5   0.032214071  -0.005883294  -0.009454678   0.000833553   0.006901682  -0.002632312   0.000001219  -0.000031076
                        -0.002734597   0.000499419  -0.009972751   0.000879241  -0.007435647   0.002835919  -0.000000631   0.000016105

    8    8.1  1.5  1.5   0.108513124  -0.019816863   0.343204481  -0.030255399   0.145078892  -0.055332177  -0.017317011   0.441558635
                        -0.009208740   0.001681792   0.362001026  -0.031915573  -0.156342532   0.059628268   0.008972220  -0.228827540

    9    9.1  1.5  1.5   0.082238449   0.450306612  -0.011658277  -0.132235331   0.039484620   0.103527878  -0.000142257  -0.000005993
                        -0.000001169  -0.000006836  -0.000001809  -0.000022465   0.000011444   0.000028875  -0.000000005   0.000000215

   10   10.1  1.5  1.5  -0.004571876   0.000834959  -0.224425986   0.019786364   0.341259073  -0.130154521   0.009004498  -0.229650761
                        -0.053878718   0.009840062   0.212772783  -0.018757194   0.316673251  -0.120777268   0.017379310  -0.443147171

   11   11.1  1.5  1.5  -0.000608018  -0.003329595   0.000770230   0.008736809  -0.003276903  -0.008591932   0.000000143   0.000000006
                        -0.000000048  -0.000000235   0.000000041   0.000000996  -0.000000731  -0.000001868  -0.000000001   0.000000000

   12   12.1  1.5  1.5   0.003546815  -0.000647969   0.008447543  -0.000744709  -0.003033369   0.001156939   0.000000488  -0.000012456
                        -0.000302815   0.000055303   0.008909622  -0.000785511   0.003273113  -0.001248349  -0.000000253   0.000006454

   13   13.1  1.5  1.5  -0.000000091  -0.000000464   0.000000050   0.000000738  -0.000000506  -0.000001686  -0.000000000  -0.000000000
                        -0.000814226  -0.004457965  -0.000691714  -0.007845902   0.003114529   0.008165816  -0.000004894  -0.000000192

   14   14.1  1.5  1.5   0.010549781  -0.001926537  -0.001076605   0.000094873   0.001459103  -0.000556455   0.000000567  -0.000014456
                        -0.000893958   0.000163263  -0.001134958   0.000100063  -0.001576094   0.000601114  -0.000000294   0.000007493

   15   15.1  1.5  1.5  -0.000468109   0.000085491   0.001481777  -0.000130640   0.008534714  -0.003255098   0.000000018  -0.000000467
                        -0.005532792   0.001010514  -0.001409720   0.000124382   0.007917562  -0.003019843   0.000000036  -0.000000905

   16   16.1  1.5  1.5  -0.002391805  -0.013096839  -0.000090700  -0.001027139   0.000689271   0.001807036  -0.000008844  -0.000000347
                         0.000000068   0.000000406  -0.000000133   0.000000200  -0.000000027   0.000000145   0.000000000  -0.000000000

   17   17.1  1.5  1.5  -0.000791179   0.000144493  -0.002560648   0.000225758  -0.003086151   0.001177043  -0.000000243   0.000006199
                        -0.009322614   0.001702566   0.002427005  -0.000213959  -0.002864071   0.001092339  -0.000000469   0.000011964

   18    1.1  1.5  0.5   0.001001099  -0.000182831  -0.021474424   0.001893278  -0.015248424   0.005815673   0.000000594  -0.000015159
                         0.011787665  -0.002152747   0.020360786  -0.001794812  -0.014151644   0.005397426   0.000001147  -0.000029247

   19    2.1  1.5  0.5   0.001462502  -0.000267096   0.020262579  -0.001786437  -0.019070158   0.007273264  -0.000000833   0.000021239
                         0.017222329  -0.003145288  -0.019208319   0.001693392  -0.017698646   0.006750231  -0.000001607   0.000040990

   20    3.1  1.5  0.5   0.018052345  -0.003296942   0.016708901  -0.001472933   0.019197141  -0.007321711   0.000001664  -0.000042433
                        -0.001533459   0.000280055   0.017624596  -0.001553860  -0.020683797   0.007888698  -0.000000862   0.000021988

   21    4.1  1.5  0.5  -0.000000164  -0.000000929   0.000000153   0.000001382   0.000000974   0.000002509   0.000000004   0.000000000
                        -0.006781512  -0.037132927   0.000725595   0.008230360  -0.000905292  -0.002373674  -0.000009159  -0.000000359

   22    5.1  1.5  0.5  -0.000368881  -0.002019975  -0.003157691  -0.035817668  -0.011349802  -0.029758683  -0.000061225  -0.000002401
                        -0.000000468  -0.000002547  -0.000000309  -0.000005282  -0.000003145  -0.000008211   0.000000002   0.000000000

   23    6.1  1.5  0.5   0.006120975   0.033515808  -0.001390028  -0.015767607   0.005207649   0.013654107   0.000015852   0.000000622
                        -0.000000231  -0.000001269  -0.000000217  -0.000003811   0.000001020   0.000002787  -0.000000003  -0.000000000

   24    7.1  1.5  0.5   0.000000215   0.000001222  -0.000000384  -0.000006281  -0.000002876  -0.000007719   0.000000003   0.000000000
                         0.000926279   0.005072416   0.003097123   0.035130811   0.011505198   0.030165927   0.000062080   0.000002435

   25    8.1  1.5  0.5   0.000000956   0.000005722  -0.000000437  -0.000012001   0.000008231   0.000021047  -0.000007288  -0.000001023
                         0.086129974   0.471615405   0.005864654   0.066526295  -0.028572810  -0.074917070  -0.287094934  -0.011258279

   26    9.1  1.5  0.5  -0.019517742   0.003564522   0.256376320  -0.022603242   0.293281412  -0.111856078  -0.010389577   0.264975833
                        -0.230005429   0.042005069  -0.243063015   0.021427002   0.272153752  -0.103797612  -0.020052469   0.511315703

   27   10.1  1.5  0.5  -0.052810617  -0.289170714   0.027852661   0.315933381  -0.108958663  -0.285685420  -0.288290940  -0.011305659
                         0.000000627   0.000003692   0.000003398   0.000055192  -0.000031120  -0.000080630   0.000007307   0.000001275

   28   11.1  1.5  0.5  -0.000513277   0.000093740  -0.003421506   0.000301655   0.006916865  -0.002638058   0.000000194  -0.000004941
                        -0.006044642   0.001103922   0.003243178  -0.000285851   0.006419340  -0.002448248   0.000000374  -0.000009536

   29   12.1  1.5  0.5   0.000000448   0.000002454   0.000000088  -0.000000512   0.000000943   0.000002344   0.000000002   0.000000000
                        -0.002025405  -0.011090200   0.000016788   0.000191853  -0.000984306  -0.002580925  -0.000007924  -0.000000310

   30   13.1  1.5  0.5  -0.005371848   0.000981192  -0.004973450   0.000438378  -0.005705634   0.002176167  -0.000000572   0.000014584
                         0.000456169  -0.000083310  -0.005247066   0.000462604   0.006147916  -0.002344785   0.000000296  -0.000007558

   31   14.1  1.5  0.5  -0.000000401  -0.000002213  -0.000000118  -0.000001187  -0.000001432  -0.000003571  -0.000000001  -0.000000000
                        -0.000151706  -0.000830908   0.000945639   0.010725726   0.003289118   0.008624085   0.000020524   0.000000805

   32   15.1  1.5  0.5   0.001825514   0.009995381  -0.000306631  -0.003478927   0.001905760   0.004996587   0.000007565   0.000000296
                         0.000000468   0.000002590   0.000000240   0.000001698   0.000001437   0.000004012   0.000000006   0.000000000

   33   16.1  1.5  0.5  -0.000128761   0.000023516   0.008075129  -0.000711938   0.002279474  -0.000869380  -0.000000310   0.000007905
                        -0.001520294   0.000277827  -0.007655314   0.000674955   0.002114772  -0.000806414  -0.000000598   0.000015254

   34   17.1  1.5  0.5  -0.000094691  -0.000518429   0.000978161   0.011095309   0.003178659   0.008334316   0.000020471   0.000000803
                         0.000000081   0.000000441   0.000000125   0.000002013   0.000000967   0.000002514  -0.000000000  -0.000000000

   35    1.1  1.5 -0.5  -0.002160497  -0.011830099  -0.002608802  -0.029592439   0.007934372   0.020803448  -0.000032942  -0.000001292
                        -0.000000134  -0.000000719  -0.000000356  -0.000006374   0.000001743   0.000004684  -0.000000002   0.000000000

   36    2.1  1.5 -0.5  -0.003156609  -0.017284315   0.002461490   0.027920094   0.009923003   0.026017551   0.000046166   0.000001810
                        -0.000000166  -0.000000901   0.000000238   0.000003498   0.000002150   0.000005744  -0.000000004  -0.000000000

   37    3.1  1.5 -0.5   0.000000255   0.000001416   0.000000210   0.000003994   0.000002110   0.000005565  -0.000000002  -0.000000000
                        -0.003308815  -0.018117358  -0.002141031  -0.024286081  -0.010762853  -0.028219668  -0.000047791  -0.000001874

   38    4.1  1.5 -0.5  -0.037000002   0.006757236   0.005660528  -0.000499014  -0.001613256   0.000615264  -0.000000319   0.000008130
                         0.003139127  -0.000573298   0.005974718  -0.000526757   0.001741190  -0.000664081   0.000000165  -0.000004218

   39    5.1  1.5 -0.5  -0.000173352   0.000031659   0.025993576  -0.002291706  -0.021813423   0.008319532  -0.000001105   0.000028170
                        -0.002012524   0.000367520  -0.024642228   0.002172349  -0.020242378   0.007720324  -0.000002132   0.000054360

   40    6.1  1.5 -0.5   0.002832915  -0.000517375   0.011441836  -0.001008762   0.010007935  -0.003816977   0.000000286  -0.000007292
                         0.033395867  -0.006099070  -0.010849047   0.000956335   0.009288481  -0.003542640   0.000000552  -0.000014076

   41    7.1  1.5 -0.5   0.005054351  -0.000922979   0.024170475  -0.002130739   0.020519835  -0.007826256   0.000002162  -0.000055119
                        -0.000427719   0.000078114   0.025494354  -0.002247692  -0.022111526   0.008433227  -0.000001120   0.000028562

   42    8.1  1.5 -0.5   0.469926647  -0.085821553   0.045771071  -0.004034518  -0.050959629   0.019435472  -0.009996146   0.254900896
                        -0.039875266   0.007282411   0.048277915  -0.004256388   0.054915244  -0.020944402   0.005179375  -0.132094795

   43    9.1  1.5 -0.5   0.042156040   0.230832059   0.031145192   0.353282384  -0.152596607  -0.400102035   0.575895772   0.022584172
                        -0.000000298  -0.000001995   0.000003760   0.000063078  -0.000043845  -0.000114036  -0.000013105  -0.000002364

   44   10.1  1.5 -0.5  -0.024449313   0.004465171  -0.229273061   0.020213704  -0.209411600   0.079868547  -0.005200952   0.132645097
                        -0.288135268   0.052621512   0.217365517  -0.019161861  -0.194326910   0.074114819  -0.010038328   0.255962780

   45   11.1  1.5 -0.5   0.001107895   0.006066395  -0.000415580  -0.004714330  -0.003599064  -0.009436680  -0.000010740  -0.000000421
                         0.000000054   0.000000289   0.000000027  -0.000000368  -0.000000855  -0.000002133   0.000000001   0.000000000

   46   12.1  1.5 -0.5  -0.011050269   0.002018113   0.000132344  -0.000011484  -0.001754394   0.000669050  -0.000000276   0.000007034
                         0.000940260  -0.000171720   0.000138899  -0.000012246   0.001892955  -0.000721964   0.000000143  -0.000003648

   47   13.1  1.5 -0.5  -0.000000040  -0.000000279   0.000000034  -0.000000461  -0.000000693  -0.000001945  -0.000000000   0.000000000
                         0.000984722   0.005391182   0.000637321   0.007229586   0.003199018   0.008387558   0.000016426   0.000000644

   48   14.1  1.5 -0.5  -0.000828119   0.000151196   0.007378915  -0.000650575   0.005865381  -0.002236932   0.000000715  -0.000018222
                         0.000068058  -0.000012429   0.007784139  -0.000686283  -0.006322354   0.002411315  -0.000000370   0.000009444

   49   15.1  1.5 -0.5   0.000847815  -0.000154836   0.002526246  -0.000222725   0.003664342  -0.001397562   0.000000137  -0.000003486
                         0.009959360  -0.001818936  -0.002391865   0.000210752   0.003396836  -0.001295663   0.000000263  -0.000006714

   50   16.1  1.5 -0.5   0.000278820   0.001525737   0.000981030   0.011127064  -0.001185801  -0.003109383   0.000017181   0.000000673
                        -0.000000062  -0.000000260   0.000000165   0.000001636  -0.000000585  -0.000001247  -0.000000001   0.000000000

   51   17.1  1.5 -0.5  -0.000043400   0.000007926  -0.008051821   0.000709883   0.006109286  -0.002330051   0.000000369  -0.000009419
                        -0.000516610   0.000094358   0.007633744  -0.000672952   0.005668991  -0.002162114   0.000000713  -0.000018175

   52    1.1  1.5 -1.5  -0.003822585   0.000698118  -0.005110935   0.000450602  -0.003218829   0.001227645  -0.000000434   0.000011077
                        -0.045042357   0.008226075   0.004843798  -0.000427050  -0.002988656   0.001139859  -0.000000838   0.000021373

   53    2.1  1.5 -1.5   0.000420053  -0.000076714  -0.020816231   0.001835249  -0.021447211   0.008179860   0.000000171  -0.000004357
                         0.004960982  -0.000905959   0.019732858  -0.001739569  -0.019904641   0.007591518   0.000000330  -0.000008410

   54    3.1  1.5 -1.5  -0.015018272   0.002742807  -0.018125864   0.001597900   0.018713673  -0.007137408  -0.000000511   0.000013043
                         0.001276073  -0.000233049  -0.019121850   0.001685865  -0.020163396   0.007690219   0.000000265  -0.000006760

   55    4.1  1.5 -1.5  -0.000000363  -0.000001968  -0.000000360  -0.000006197   0.000000911   0.000002356  -0.000000002   0.000000000
                         0.003489485   0.019107086   0.003465182   0.039305688  -0.005004296  -0.013121060   0.000050043   0.000001962

   56    5.1  1.5 -1.5   0.006104725   0.033427115  -0.000971019  -0.011014255   0.003689437   0.009673584   0.000038842   0.000001523
                         0.000000279   0.000001501   0.000000103   0.000000623   0.000000778   0.000001985   0.000000003   0.000000000

   57    6.1  1.5 -1.5  -0.002739050  -0.014997639  -0.000721811  -0.008187047   0.015430225   0.040457232   0.000007017   0.000000275
                        -0.000000120  -0.000000672  -0.000000031  -0.000000292   0.000004184   0.000011076  -0.000000001  -0.000000000

   58    7.1  1.5 -1.5  -0.000000124  -0.000000700   0.000000194   0.000002308  -0.000000598  -0.000001652   0.000000000   0.000000000
                         0.005904454   0.032329931  -0.001211559  -0.013742150   0.003869302   0.010145051   0.000035001   0.000001373

   59    8.1  1.5 -1.5  -0.000000005   0.000000383  -0.000005793  -0.000090315  -0.000023579  -0.000061451  -0.000010020  -0.000002098
                         0.019888099   0.108903163   0.043977186   0.498832688   0.081346048   0.213285884  -0.497328936  -0.019503323

   60    9.1  1.5 -1.5  -0.038072231   0.006953122  -0.095963703   0.008460576  -0.075887217   0.028943009   0.000002567  -0.000065461
                        -0.448694273   0.081943984   0.090978849  -0.008020853  -0.070421251   0.026857729   0.000005420  -0.000126301

   61   10.1  1.5 -1.5  -0.009875422  -0.054072344   0.027264125   0.309256006   0.177559413   0.465553096   0.499118109   0.019573487
                         0.000000131   0.000000617   0.000003642   0.000055915   0.000051391   0.000134087  -0.000010057  -0.000002105

   62   11.1  1.5 -1.5   0.000281793  -0.000051464   0.006340673  -0.000559021   0.006297633  -0.002401886  -0.000000003   0.000000065
                         0.003317649  -0.000605836  -0.006010632   0.000529858   0.005844751  -0.002229134  -0.000000005   0.000000127

   63   12.1  1.5 -1.5  -0.000000311  -0.000001803  -0.000000185  -0.000002618   0.000001570   0.000004169   0.000000002   0.000000000
                         0.000650325   0.003559717   0.001082413   0.012277717  -0.001702023  -0.004462576   0.000014029   0.000000550

   64   13.1  1.5 -1.5   0.004442036  -0.000811317   0.005397605  -0.000475855  -0.005554947   0.002118816   0.000000170  -0.000004345
                        -0.000376514   0.000068763   0.005694212  -0.000502026   0.005985242  -0.002282742  -0.000000088   0.000002251

   65   14.1  1.5 -1.5   0.000000234   0.000001359   0.000000029   0.000000703  -0.000001227  -0.000003142  -0.000000001   0.000000000
                         0.001933442   0.010587589  -0.000137890  -0.001564355   0.000819133   0.002147800   0.000016282   0.000000639

   66   15.1  1.5 -1.5  -0.001014123  -0.005552559  -0.000180382  -0.002045228   0.004440170   0.011641697   0.000001019   0.000000040
                         0.000000267   0.000001434  -0.000000414  -0.000003914   0.000001823   0.000005020  -0.000000002  -0.000000000

   67   16.1  1.5 -1.5   0.001107097  -0.000202189  -0.000745656   0.000065740  -0.001324335   0.000505095   0.000000160  -0.000004069
                         0.013049963  -0.002383244   0.000706407  -0.000062488  -0.001229437   0.000469013   0.000000308  -0.000007852

   68   17.1  1.5 -1.5  -0.001708686  -0.009356126   0.000311039   0.003528069  -0.001605813  -0.004210372  -0.000013475  -0.000000528
                        -0.000000002  -0.000000002   0.000000001   0.000000143  -0.000000392  -0.000001022   0.000000002   0.000000000

   69    1.1  0.5  0.5   0.131940663  -0.024096082  -0.063358143   0.005585383  -0.004462180   0.001701940  -0.000000008   0.000000209
                        -0.011195261   0.002044588  -0.066828603   0.005891899   0.004809213  -0.001834210   0.000000004  -0.000000109

   70    2.1  0.5  0.5   0.012615787  -0.002304019  -0.020882818   0.001841119   0.037072575  -0.014139297   0.000003128  -0.000079787
                         0.148679260  -0.027152959   0.019799194  -0.001745379   0.034401850  -0.013120584   0.000006038  -0.000153962

   71    3.1  0.5  0.5  -0.000000228  -0.000001292  -0.000000560  -0.000008127  -0.000012989  -0.000033950   0.000000001   0.000000000
                        -0.016995421  -0.093059966   0.003883473   0.044049809   0.044782371   0.117417383   0.000058955   0.000002312

   72    4.1  0.5  0.5  -0.000197064  -0.001078659   0.012709555   0.144164491   0.027168501   0.071234581   0.000193753   0.000007598
                         0.000000056   0.000000272   0.000001674   0.000026274   0.000007984   0.000020892  -0.000000003  -0.000000001

   73    5.1  0.5  0.5  -0.002362576   0.000431477   0.068508770  -0.006040029   0.089220254  -0.034028163  -0.000000526   0.000013426
                        -0.027839406   0.005084288  -0.064951000   0.005725720   0.082792913  -0.031576671  -0.000001016   0.000025907

   74    6.1  0.5  0.5   0.000000188   0.000001135  -0.000001436  -0.000022899  -0.000003350  -0.000008715   0.000000004   0.000000001
                         0.018029629   0.098723510   0.011015700   0.124951381   0.011209985   0.029392122   0.000217961   0.000008547

   75    7.1  0.5  0.5  -0.006803653  -0.037254406   0.006498516   0.073713015  -0.050213681  -0.131658229  -0.000046093  -0.000001808
                         0.000000142   0.000000825   0.000000767   0.000012792  -0.000014447  -0.000037552   0.000000001   0.000000000

   76    8.1  0.5  0.5  -0.167902852   0.030663835  -0.178317495   0.015719461   0.207614068  -0.079182671  -0.000007710   0.000196597
                         0.014247879  -0.002602088  -0.188084559   0.016582346  -0.223731485   0.085330080   0.000003995  -0.000101882

   77    9.1  0.5  0.5  -0.012152084   0.002219331  -0.258191840   0.022763308   0.152712449  -0.058243772   0.000006110  -0.000155834
                        -0.143221446   0.026156437   0.244785763  -0.021579221   0.141708917  -0.054047061   0.000011793  -0.000300700

   78   10.1  0.5  0.5   0.187990335  -0.034332091   0.174969125  -0.015424487   0.198820250  -0.075828766   0.000027084  -0.000690602
                        -0.015951714   0.002913259   0.184549898  -0.016270715  -0.214256686   0.081716439  -0.000014033   0.000357888

   79   11.1  0.5  0.5   0.000000734   0.000004242   0.000002840   0.000045855  -0.000027137  -0.000070312   0.000000002   0.000000000
                         0.044345831   0.242820874  -0.023069465  -0.261677338   0.094715100   0.248339348   0.000078530   0.000003079

   80   12.1  0.5  0.5  -0.077000865  -0.421626763  -0.004877459  -0.055326156   0.030533811   0.080058027  -0.000259174  -0.000010163
                         0.000000992   0.000005774  -0.000000593  -0.000010693   0.000008794   0.000023272   0.000000007   0.000000001

   81   13.1  0.5  0.5  -0.000000000  -0.000000002  -0.000000001  -0.000000013  -0.000000000  -0.000000001   0.000000912   0.000000173
                        -0.000040311  -0.000220729   0.000006490   0.000073623   0.000000648   0.000001698   0.040077087   0.001571669

   82   14.1  0.5  0.5  -0.000037342  -0.000204472  -0.000005447  -0.000061795   0.000102137   0.000267799   0.040069745   0.001571381
                         0.000000000   0.000000002  -0.000000000  -0.000000011   0.000000029   0.000000076  -0.000000911  -0.000000173

   83   15.1  0.5  0.5  -0.000027796   0.000005076  -0.000106342   0.000009376   0.000260155  -0.000099222  -0.000722902   0.018436885
                        -0.000327558   0.000059822   0.000100819  -0.000008888   0.000241413  -0.000092073  -0.001395259   0.035577089

   84    1.1  0.5 -0.5   0.000000360   0.000002068   0.000001046   0.000016346   0.000000812   0.000002297   0.000000001  -0.000000000
                         0.024182669   0.132414775  -0.008118557  -0.092088632  -0.002502184  -0.006560456  -0.000000236  -0.000000009

   85    2.1  0.5 -0.5   0.027250535   0.149213540   0.002536940   0.028776729   0.019289100   0.050575319   0.000173407   0.000006800
                        -0.000000355  -0.000002086   0.000000357   0.000005715   0.000005596   0.000014458  -0.000000004  -0.000000001

   86    3.1  0.5 -0.5   0.092726752  -0.016934566  -0.030307049   0.002671784  -0.079868225   0.030461290  -0.000002053   0.000052343
                        -0.007868094   0.001436948  -0.031966678   0.002818321   0.086069214  -0.032826372   0.000001064  -0.000027126

   87    4.1  0.5 -0.5   0.000090943  -0.000016608   0.104619516  -0.009223708  -0.052216528   0.019915125  -0.000003495   0.000089149
                         0.001074819  -0.000196363  -0.099187489   0.008743912  -0.048454104   0.018480133  -0.000006746   0.000172026

   88    5.1  0.5 -0.5  -0.005102564  -0.027939476  -0.008322608  -0.094403833   0.046421998   0.121716552  -0.000029179  -0.000001144
                         0.000000008   0.000000056  -0.000001008  -0.000016715   0.000013335   0.000034702   0.000000000   0.000000000

   89    6.1  0.5 -0.5  -0.098369996   0.017965066  -0.085968652   0.007578564  -0.019992593   0.007625040  -0.000007589   0.000193519
                         0.008347173  -0.001524443  -0.090676562   0.007994437   0.021545141  -0.008217210   0.000003932  -0.000100287

   90    7.1  0.5 -0.5   0.003149502  -0.000575193   0.053493642  -0.004716231   0.096507679  -0.036807551   0.000000832  -0.000021208
                         0.037121038  -0.006779295  -0.050715274   0.004470780   0.089555338  -0.034155793   0.000001605  -0.000040924

   91    8.1  0.5 -0.5  -0.000000242  -0.000001436   0.000002785   0.000046228  -0.000033418  -0.000087033  -0.000000004  -0.000000001
                        -0.030774042  -0.168506290  -0.022848975  -0.259177407   0.116409265   0.305220201  -0.000221428  -0.000008683

   92    9.1  0.5 -0.5  -0.026250421  -0.143736063   0.031366079   0.355785176   0.079457040   0.208332680   0.000338681   0.000013282
                         0.000000471   0.000002603   0.000004137   0.000064618   0.000023303   0.000061064  -0.000000004  -0.000000001

   93   10.1  0.5 -0.5   0.000000382   0.000002350  -0.000003053  -0.000047348  -0.000032443  -0.000084501   0.000000016   0.000000003
                         0.034455472   0.188665904   0.022419879   0.254308587   0.111479043   0.292293366   0.000777828   0.000030503

   94   11.1  0.5 -0.5  -0.241951492   0.044187055   0.180036887  -0.015871173  -0.168923467   0.064426136  -0.000002734   0.000069724
                         0.020529307  -0.003749262   0.189899318  -0.016742345   0.182036532  -0.069427832   0.000001417  -0.000036132

   95   12.1  0.5 -0.5   0.035648050  -0.006510395  -0.040149521   0.003539753  -0.058684168   0.022381851   0.000004676  -0.000119248
                         0.420117060  -0.076725146   0.038065728  -0.003355555  -0.054456007   0.020769363   0.000009023  -0.000230111

   96   13.1  0.5 -0.5   0.000219938  -0.000040167  -0.000050653   0.000004465  -0.000001155   0.000000440  -0.001395487   0.035582903
                        -0.000018664   0.000003409  -0.000053428   0.000004710   0.000001246  -0.000000475   0.000723020  -0.018439898

   97   14.1  0.5 -0.5   0.000017288  -0.000003157  -0.000044844   0.000003954  -0.000196301   0.000074868  -0.000722887   0.018436521
                         0.000203740  -0.000037209   0.000042516  -0.000003747  -0.000182160   0.000069475  -0.001395232   0.035576385

   98   15.1  0.5 -0.5  -0.000060037  -0.000328736   0.000012919   0.000146537   0.000135361   0.000354910  -0.040070538  -0.001571412
                         0.000000000   0.000000003   0.000000002   0.000000025   0.000000039   0.000000102   0.000000912   0.000000173


   Nr   State  S   Sz       65            66            67            68            69            70            71            72

    1    1.1  1.5  1.5   0.000016241   0.000079946  -0.000080651  -0.000074395  -0.000128115   0.000010185   0.000033436  -0.000007996
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000018429   0.000090712   0.000044989   0.000041498  -0.000013142   0.000001044  -0.000195043   0.000046645
                         0.000000003   0.000000013  -0.000000014  -0.000000013   0.000000021   0.000000000  -0.000000085   0.000000024

    3    3.1  1.5  1.5  -0.000000015  -0.000000062   0.000000040   0.000000037  -0.000000071   0.000000003   0.000000083  -0.000000023
                         0.000022530   0.000110897   0.000007843   0.000007235   0.000095907  -0.000007626  -0.000172789   0.000041323

    4    4.1  1.5  1.5   0.000031896  -0.000006481  -0.000108271   0.000117379   0.000002170   0.000027314   0.000011289   0.000047206
                         0.000074289  -0.000015092  -0.000018703   0.000020276  -0.000003640  -0.000045791   0.000010231   0.000042785

    5    5.1  1.5  1.5   0.000011444  -0.000002325   0.000000218  -0.000000236   0.000000471   0.000005928   0.000001751   0.000007323
                        -0.000004926   0.000001001  -0.000001282   0.000001390   0.000000281   0.000003530  -0.000001933  -0.000008083

    6    6.1  1.5  1.5  -0.000134137   0.000027250   0.000005263  -0.000005706  -0.000004885  -0.000061448  -0.000016497  -0.000068987
                         0.000057698  -0.000011726  -0.000030327   0.000032878  -0.000002915  -0.000036630   0.000018196   0.000076085

    7    7.1  1.5  1.5  -0.000009058   0.000001839  -0.000011319   0.000012271  -0.000002163  -0.000027207   0.000001992   0.000008327
                        -0.000021100   0.000004287  -0.000001955   0.000002119   0.000003622   0.000045562   0.000001804   0.000007543

    8    8.1  1.5  1.5   0.000000274  -0.000000056   0.000000228  -0.000000247   0.000000020   0.000000254   0.000001353   0.000005658
                         0.000000631  -0.000000128   0.000000040  -0.000000044  -0.000000034  -0.000000425   0.000001226   0.000005129

    9    9.1  1.5  1.5  -0.000000036  -0.000000177  -0.000001477  -0.000001362   0.000003224  -0.000000256   0.000002524  -0.000000604
                         0.000000000   0.000000001  -0.000000001  -0.000000001   0.000000000   0.000000000   0.000000001  -0.000000000

   10   10.1  1.5  1.5  -0.000001306   0.000000265   0.000000292  -0.000000316  -0.000000092  -0.000001160  -0.000001568  -0.000006557
                         0.000000559  -0.000000114  -0.000001678   0.000001819  -0.000000055  -0.000000691   0.000001729   0.000007230

   11   11.1  1.5  1.5  -0.059294704  -0.291871140  -0.036039431  -0.033241207   0.149442716  -0.011878305   0.441419832  -0.105567025
                        -0.000006729  -0.000028580   0.000032714   0.000030576  -0.000048461   0.000000117   0.000203997  -0.000058201

   12   12.1  1.5  1.5   0.085285189  -0.017330818  -0.267526465   0.290039112   0.006620520   0.083266121   0.027213451   0.113810873
                         0.198905479  -0.040408121  -0.046236555   0.050125221  -0.011103396  -0.139667162   0.024691011   0.103253586

   13   13.1  1.5  1.5   0.000031891   0.000150379  -0.000086898  -0.000080312   0.000204149  -0.000012331  -0.000229074   0.000061224
                        -0.057905252  -0.285030803  -0.020701688  -0.019094754  -0.248960783   0.019794458   0.445357402  -0.106505340

   14   14.1  1.5  1.5  -0.005451096   0.001108550  -0.086574946   0.093852271  -0.004247722  -0.053374427   0.011131979   0.046539754
                        -0.012948160   0.002630453  -0.014933623   0.016189597   0.007111218   0.089450434   0.010062323   0.042078916

   15   15.1  1.5  1.5  -0.346158065   0.070322824   0.013325419  -0.014446143  -0.012637163  -0.158960121  -0.042333905  -0.177033170
                         0.148830631  -0.030244124  -0.076455258   0.082886278  -0.007530065  -0.094674932   0.046679379   0.195212461

   16   16.1  1.5  1.5  -0.022608773  -0.111282639   0.234647577   0.216436353   0.298094296  -0.023701212  -0.255492459   0.061098365
                         0.000003189   0.000032231  -0.000010438  -0.000010922   0.000036182   0.000002188  -0.000107495   0.000027970

   17   17.1  1.5  1.5   0.009514632  -0.001932920  -0.001996741   0.002164675   0.000125741   0.001581662   0.000243727   0.001019229
                        -0.004077615   0.000828540   0.011515627  -0.012484521   0.000075548   0.000948471  -0.000261670  -0.001098840

   18    1.1  1.5  0.5  -0.000067530   0.000013719  -0.000023031   0.000024968  -0.000010571  -0.000132971  -0.000005076  -0.000021227
                         0.000029124  -0.000005921   0.000133508  -0.000144740  -0.000006303  -0.000079268   0.000005591   0.000023379

   19    2.1  1.5  0.5  -0.000071101   0.000014444   0.000015390  -0.000016685  -0.000009001  -0.000113219  -0.000017053  -0.000071313
                         0.000030577  -0.000006216  -0.000088928   0.000096407  -0.000005374  -0.000067564   0.000018810   0.000078650

   20    3.1  1.5  0.5  -0.000075270   0.000015295   0.000033505  -0.000036324  -0.000003165  -0.000039841  -0.000014315  -0.000059861
                        -0.000175144   0.000035581   0.000005798  -0.000006285   0.000005302   0.000066697  -0.000012981  -0.000054285

   21    4.1  1.5  0.5  -0.000000014  -0.000000055   0.000000037   0.000000034  -0.000000083   0.000000006  -0.000000008   0.000000002
                         0.000030629   0.000150762  -0.000149349  -0.000137762  -0.000028291   0.000002249   0.000027652  -0.000006612

   22    5.1  1.5  0.5  -0.000002704  -0.000013312   0.000009172   0.000008460  -0.000033195   0.000002639   0.000168999  -0.000040416
                        -0.000000002  -0.000000011   0.000000006   0.000000005  -0.000000027   0.000000001   0.000000072  -0.000000020

   23    6.1  1.5  0.5  -0.000010101  -0.000049727  -0.000001451  -0.000001337   0.000248539  -0.000019759   0.000044995  -0.000010761
                         0.000000017   0.000000074  -0.000000032  -0.000000030   0.000000088  -0.000000006   0.000000010  -0.000000004

   24    7.1  1.5  0.5   0.000000008   0.000000024  -0.000000023  -0.000000021   0.000000055  -0.000000001  -0.000000037   0.000000011
                        -0.000025654  -0.000126273  -0.000048159  -0.000044422  -0.000041086   0.000003268   0.000090893  -0.000021738

   25    8.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000
                         0.000000118   0.000000581  -0.000000924  -0.000000852  -0.000001632   0.000000130   0.000000920  -0.000000220

   26    9.1  1.5  0.5  -0.000002014   0.000000409   0.000000097  -0.000000105  -0.000000029  -0.000000360  -0.000000299  -0.000001251
                         0.000000865  -0.000000176  -0.000000558   0.000000605  -0.000000017  -0.000000214   0.000000330   0.000001379

   27   10.1  1.5  0.5   0.000000213   0.000001048   0.000000565   0.000000521  -0.000003491   0.000000278  -0.000001230   0.000000294
                        -0.000000001  -0.000000003   0.000000001   0.000000001  -0.000000001   0.000000000  -0.000000001   0.000000000

   28   11.1  1.5  0.5   0.232990831  -0.047332635  -0.016552126   0.017944232   0.031425349   0.395292636   0.046395616   0.194018542
                        -0.100276030   0.020384905   0.095250428  -0.103261940   0.018753740   0.235819531  -0.051168687  -0.213954923

   29   12.1  1.5  0.5  -0.000045493  -0.000188520   0.000104596   0.000093682  -0.000059344   0.000004518   0.000030876  -0.000009562
                         0.090971987   0.447786571  -0.352007478  -0.324682898  -0.049080676   0.003901743   0.020557731  -0.004913564

   30   13.1  1.5  0.5   0.194391876  -0.039502175  -0.086867933   0.094176909   0.008225124   0.103429522   0.037359042   0.156215845
                         0.452299908  -0.091885795  -0.015059422   0.016325979  -0.013762126  -0.173110770   0.033875784   0.141662729

   31   14.1  1.5  0.5   0.000015046   0.000061952  -0.000035673  -0.000032001  -0.000069260   0.000006750  -0.000101968   0.000028867
                        -0.048035907  -0.236447431  -0.201786861  -0.186137666  -0.118484355   0.009420132   0.248013581  -0.059312386

   32   15.1  1.5  0.5  -0.024986348  -0.122994364  -0.006633873  -0.006117464   0.643838553  -0.051186964   0.065559793  -0.015682639
                         0.000002208   0.000008050  -0.000037347  -0.000034140   0.000216243  -0.000013051   0.000061020  -0.000019440

   33   16.1  1.5  0.5   0.099565656  -0.020226992   0.069338016  -0.075169598   0.017452325   0.219528992  -0.003233885  -0.013523539
                        -0.043055135   0.008743514  -0.401652265   0.435447251   0.010400262   0.130820399   0.003582733   0.014969251

   34   17.1  1.5  0.5   0.009974652   0.049102172  -0.022720604  -0.020957320   0.014271102  -0.001135340  -0.442605836   0.105849521
                         0.000001256   0.000012691  -0.000021824  -0.000020020   0.000039534  -0.000001805  -0.000179005   0.000051213

   35    1.1  1.5 -0.5   0.000014942   0.000073542  -0.000146878  -0.000135480   0.000154805  -0.000012307   0.000031578  -0.000007552
                         0.000000023   0.000000090  -0.000000057  -0.000000052   0.000000135  -0.000000010  -0.000000009   0.000000002

   36    2.1  1.5 -0.5   0.000015725   0.000077397   0.000097840   0.000090250   0.000131846  -0.000010483   0.000106167  -0.000025390
                         0.000000007   0.000000015  -0.000000015  -0.000000014   0.000000054  -0.000000002   0.000000041  -0.000000012

   37    3.1  1.5 -0.5   0.000000002  -0.000000008  -0.000000005  -0.000000005   0.000000002   0.000000001   0.000000025  -0.000000007
                        -0.000038729  -0.000190633  -0.000036864  -0.000034003   0.000077691  -0.000006175  -0.000080810   0.000019325

   38    4.1  1.5 -0.5  -0.000059584   0.000012108  -0.000135753   0.000147172  -0.000001158  -0.000014579  -0.000004898  -0.000020484
                        -0.000138488   0.000028134  -0.000023438   0.000025409   0.000001928   0.000024246  -0.000004442  -0.000018576

   39    5.1  1.5 -0.5  -0.000012226   0.000002484  -0.000001436   0.000001557  -0.000002267  -0.000028512   0.000027144   0.000113512
                         0.000005266  -0.000001070   0.000008337  -0.000009039  -0.000001352  -0.000016999  -0.000029944  -0.000125203

   40    6.1  1.5 -0.5  -0.000045714   0.000009287   0.000000198  -0.000000215   0.000016967   0.000213418   0.000007229   0.000030229
                         0.000019569  -0.000003973  -0.000001322   0.000001435   0.000010127   0.000127375  -0.000007972  -0.000033328

   41    7.1  1.5 -0.5   0.000049886  -0.000010138  -0.000043769   0.000047451  -0.000001675  -0.000021021  -0.000016106  -0.000067336
                         0.000116001  -0.000023566  -0.000007589   0.000008227   0.000002806   0.000035301  -0.000014599  -0.000061052

   42    8.1  1.5 -0.5  -0.000000229   0.000000047  -0.000000840   0.000000910  -0.000000067  -0.000000837  -0.000000163  -0.000000682
                        -0.000000534   0.000000108  -0.000000145   0.000000158   0.000000111   0.000001401  -0.000000148  -0.000000618

   43    9.1  1.5 -0.5   0.000000445   0.000002192   0.000000614   0.000000566   0.000000419  -0.000000033   0.000001862  -0.000000445
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000000964  -0.000000196  -0.000000088   0.000000095  -0.000000238  -0.000002998  -0.000000198  -0.000000826
                        -0.000000411   0.000000083   0.000000513  -0.000000557  -0.000000142  -0.000001789   0.000000218   0.000000911

   45   11.1  1.5 -0.5  -0.051535631  -0.253653296  -0.104809426  -0.096677869  -0.460290187   0.036595835  -0.288825024   0.069070884
                        -0.000037307  -0.000122166   0.000088607   0.000081817  -0.000251954   0.000014591  -0.000093735   0.000026237

   46   12.1  1.5 -0.5  -0.176997240   0.035965237  -0.319951759   0.346878694  -0.002004684  -0.025219415  -0.003632358  -0.015203462
                        -0.411320831   0.083560794  -0.055225581   0.059870256   0.003347366   0.042105788  -0.003308954  -0.013837486

   47   13.1  1.5 -0.5  -0.000007572   0.000012502   0.000041878   0.000039106  -0.000024376   0.000004157  -0.000066128   0.000017946
                         0.100017104   0.492304183   0.095581515   0.088163611  -0.201655657   0.016032740   0.210883178  -0.050430808

   48   14.1  1.5 -0.5   0.093426377  -0.018982466  -0.183410746   0.198830513  -0.004836418  -0.060817988  -0.043943712  -0.183737179
                         0.217207053  -0.044126122  -0.031744764   0.034414616   0.008083810   0.101684411  -0.039836041  -0.166587502

   49   15.1  1.5 -0.5  -0.113001879   0.022956598   0.001008623  -0.001093446   0.043951180   0.552852315   0.010524204   0.044010434
                         0.048561190  -0.009864696  -0.006033838   0.006543244   0.026237363   0.329973404  -0.011626981  -0.048591892

   50   16.1  1.5 -0.5  -0.022035838  -0.108475838   0.441887727   0.407593291  -0.255552119   0.020316216   0.020173315  -0.004826367
                        -0.000045607  -0.000239126   0.000118821   0.000107316  -0.000263466   0.000020793   0.000044232  -0.000012684

   51   17.1  1.5 -0.5   0.045106662  -0.009163523   0.003550879  -0.003849521   0.000975626   0.012272148  -0.071092051  -0.297294790
                        -0.019401353   0.003939991  -0.020654320   0.022392130   0.000580650   0.007284250   0.078422217   0.327895967

   52    1.1  1.5 -1.5  -0.000073449   0.000014921  -0.000012675   0.000013741   0.000008744   0.000109988  -0.000005373  -0.000022469
                         0.000031570  -0.000006413   0.000073307  -0.000079472   0.000005223   0.000065697   0.000005921   0.000024761

   53    2.1  1.5 -1.5  -0.000083335   0.000016930   0.000007083  -0.000007678   0.000000896   0.000011272   0.000031327   0.000131004
                         0.000035833  -0.000007280  -0.000040889   0.000044329   0.000000535   0.000006757  -0.000034560  -0.000144498

   54    3.1  1.5 -1.5   0.000043848  -0.000008910  -0.000007123   0.000007722  -0.000003908  -0.000049120  -0.000030617  -0.000128016
                         0.000101860  -0.000020693  -0.000001269   0.000001376   0.000006549   0.000082374  -0.000027751  -0.000116051

   55    4.1  1.5 -1.5  -0.000000005  -0.000000031   0.000000019   0.000000017  -0.000000032   0.000000004   0.000000037  -0.000000010
                        -0.000016425  -0.000080847  -0.000119118  -0.000109875   0.000053319  -0.000004238  -0.000063710   0.000015236

   56    5.1  1.5 -1.5   0.000002531   0.000012459  -0.000001410  -0.000001301   0.000006899  -0.000000549   0.000010907  -0.000002609
                         0.000000002   0.000000007  -0.000000004  -0.000000004   0.000000009  -0.000000001   0.000000009  -0.000000002

   57    6.1  1.5 -1.5  -0.000029666  -0.000146020  -0.000033369  -0.000030780  -0.000071538   0.000005688  -0.000102704   0.000024561
                        -0.000000013  -0.000000040   0.000000021   0.000000020  -0.000000063   0.000000003  -0.000000040   0.000000010

   58    7.1  1.5 -1.5   0.000000003   0.000000010   0.000000002   0.000000002   0.000000007  -0.000000001   0.000000010  -0.000000003
                         0.000004665   0.000022962  -0.000012453  -0.000011487  -0.000053067   0.000004219  -0.000011235   0.000002688

   59    8.1  1.5 -1.5   0.000000001   0.000000003   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000004  -0.000000001
                        -0.000000140  -0.000000688   0.000000251   0.000000232   0.000000496  -0.000000039  -0.000007637   0.000001826

   60    9.1  1.5 -1.5   0.000000163  -0.000000033  -0.000000232   0.000000251  -0.000000220  -0.000002768  -0.000000405  -0.000001695
                        -0.000000069   0.000000014   0.000001342  -0.000001455  -0.000000131  -0.000001653   0.000000447   0.000001870

   61   10.1  1.5 -1.5  -0.000000289  -0.000001421  -0.000001846  -0.000001703  -0.000001350   0.000000107  -0.000009760   0.000002334
                         0.000000000   0.000000002   0.000000002   0.000000002  -0.000000002   0.000000000  -0.000000003   0.000000001

   62   11.1  1.5 -1.5   0.268139694  -0.054473209  -0.005693604   0.006172459  -0.010197576  -0.128273120  -0.070897041  -0.296479298
                        -0.115281689   0.023420750   0.032749987  -0.035506935  -0.006091270  -0.076675514   0.078217707   0.327034456

   63   12.1  1.5 -1.5  -0.000034192  -0.000190597   0.000023100   0.000019315  -0.000136281   0.000010020   0.000014579  -0.000002060
                        -0.043967856  -0.216418383  -0.294338620  -0.271492593   0.162604258  -0.012927358  -0.153669183   0.036745311

   64   13.1  1.5 -1.5  -0.112692445   0.022895194   0.018801891  -0.020384209   0.010139970   0.127491300   0.078914616   0.329967310
                        -0.261807170   0.053186740   0.003332409  -0.003612680  -0.017000051  -0.213839850   0.071525342   0.299106740

   65   14.1  1.5 -1.5   0.000020266   0.000104940   0.000037200   0.000034936   0.000047549   0.000000092   0.000112404  -0.000028853
                         0.002854427   0.014048427  -0.095238388  -0.087853476  -0.104164328   0.008283270  -0.062742101   0.015005681

   66   15.1  1.5 -1.5  -0.076550679  -0.376796976  -0.084135684  -0.077607747  -0.185017858   0.014710524  -0.263531103   0.063016852
                        -0.000016802  -0.000042767   0.000113169   0.000104516  -0.000235099   0.000015680  -0.000077628   0.000017396

   67   16.1  1.5 -1.5   0.102251506  -0.020772633   0.036886136  -0.039988398  -0.020346590  -0.255935298   0.041036867   0.171609151
                        -0.043914194   0.008924927  -0.213270035   0.231215080  -0.012155810  -0.152831063  -0.045265732  -0.189279442

   68   17.1  1.5 -1.5   0.002103011   0.010351572   0.012670795   0.011687455   0.001844245  -0.000146691   0.001498670  -0.000357565
                        -0.000002075  -0.000010952  -0.000005974  -0.000005571  -0.000003199   0.000000379  -0.000016388   0.000004654

   69    1.1  0.5  0.5   0.000000319  -0.000000065   0.000000066  -0.000000072  -0.000000028  -0.000000349  -0.000000543  -0.000002270
                         0.000000742  -0.000000151   0.000000011  -0.000000012   0.000000047   0.000000586  -0.000000492  -0.000002058

   70    2.1  0.5  0.5   0.000000660  -0.000000134   0.000000078  -0.000000085   0.000000032   0.000000405  -0.000000290  -0.000001213
                        -0.000000284   0.000000058  -0.000000453   0.000000491   0.000000019   0.000000241   0.000000320   0.000001338

   71    3.1  0.5  0.5   0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000001   0.000000000
                        -0.000000310  -0.000001524   0.000000061   0.000000057  -0.000000660   0.000000053   0.000002193  -0.000000524

   72    4.1  0.5  0.5   0.000000070   0.000000345  -0.000000009  -0.000000008  -0.000000282   0.000000022  -0.000004717   0.000001128
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000001

   73    5.1  0.5  0.5   0.000000754  -0.000000153   0.000000037  -0.000000041  -0.000000005  -0.000000057  -0.000000128  -0.000000536
                        -0.000000325   0.000000066  -0.000000218   0.000000237  -0.000000003  -0.000000034   0.000000141   0.000000591

   74    6.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000001   0.000000000
                        -0.000000093  -0.000000458  -0.000000065  -0.000000060  -0.000000364   0.000000029   0.000002191  -0.000000524

   75    7.1  0.5  0.5   0.000000140   0.000000687   0.000000419   0.000000386  -0.000000987   0.000000078   0.000001426  -0.000000341
                        -0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   76    8.1  0.5  0.5   0.000001271  -0.000000258  -0.000003011   0.000003265  -0.000000072  -0.000000910   0.000000875   0.000003658
                         0.000002966  -0.000000603  -0.000000522   0.000000566   0.000000121   0.000001527   0.000000794   0.000003319

   77    9.1  0.5  0.5  -0.000002423   0.000000492   0.000000031  -0.000000034   0.000000061   0.000000761  -0.000002565  -0.000010726
                         0.000001043  -0.000000212  -0.000000176   0.000000190   0.000000037   0.000000458   0.000002830   0.000011832

   78   10.1  0.5  0.5   0.000000435  -0.000000088  -0.000002248   0.000002437  -0.000000101  -0.000001265   0.000002562   0.000010711
                         0.000001013  -0.000000206  -0.000000389   0.000000422   0.000000169   0.000002120   0.000002322   0.000009712

   79   11.1  0.5  0.5  -0.000000000  -0.000000002   0.000000001   0.000000001  -0.000000002   0.000000000  -0.000000002   0.000000001
                        -0.000000617  -0.000003037  -0.000000823  -0.000000759   0.000008495  -0.000000675   0.000003709  -0.000000887

   80   12.1  0.5  0.5  -0.000000258  -0.000001270   0.000002566   0.000002367  -0.000001367   0.000000109  -0.000002971   0.000000710
                        -0.000000000  -0.000000001   0.000000001   0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000000

   81   13.1  0.5  0.5   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000003  -0.000000000   0.000000000  -0.000000000
                         0.000000126   0.000000620  -0.000001367  -0.000001261  -0.000004431   0.000000352   0.000000650  -0.000000155

   82   14.1  0.5  0.5  -0.000000402  -0.000001978   0.000001826   0.000001684  -0.000003844   0.000000306  -0.000002942   0.000000704
                         0.000000000   0.000000000   0.000000001   0.000000001  -0.000000003   0.000000000  -0.000000001   0.000000000

   83   15.1  0.5  0.5  -0.000000033   0.000000007   0.000000272  -0.000000294  -0.000000342  -0.000004302  -0.000000265  -0.000001109
                         0.000000013  -0.000000003  -0.000001567   0.000001699  -0.000000204  -0.000002567   0.000000292   0.000001223

   84    1.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000001   0.000000000
                        -0.000000164  -0.000000808   0.000000073   0.000000067  -0.000000682   0.000000054   0.000003063  -0.000000733

   85    2.1  0.5 -0.5   0.000000146   0.000000719  -0.000000498  -0.000000460   0.000000471  -0.000000037  -0.000001806   0.000000432
                         0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000001   0.000000000

   86    3.1  0.5 -0.5  -0.000000602   0.000000122  -0.000000056   0.000000061   0.000000027   0.000000338   0.000000388   0.000001624
                        -0.000001400   0.000000284  -0.000000009   0.000000010  -0.000000045  -0.000000567   0.000000352   0.000001473

   87    4.1  0.5 -0.5  -0.000000317   0.000000064  -0.000000001   0.000000002   0.000000019   0.000000242   0.000000758   0.000003168
                         0.000000136  -0.000000028   0.000000008  -0.000000009   0.000000011   0.000000145  -0.000000836  -0.000003495

   88    5.1  0.5 -0.5   0.000000167   0.000000821  -0.000000240  -0.000000222  -0.000000066   0.000000005  -0.000000798   0.000000191
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   89    6.1  0.5 -0.5  -0.000000181   0.000000037   0.000000059  -0.000000064   0.000000015   0.000000186   0.000000388   0.000001623
                        -0.000000421   0.000000086   0.000000010  -0.000000011  -0.000000025  -0.000000313   0.000000352   0.000001472

   90    7.1  0.5 -0.5  -0.000000632   0.000000128   0.000000066  -0.000000071   0.000000067   0.000000848  -0.000000229  -0.000000958
                         0.000000271  -0.000000055  -0.000000381   0.000000413   0.000000040   0.000000506   0.000000253   0.000001056

   91    8.1  0.5 -0.5  -0.000000001  -0.000000003  -0.000000001  -0.000000001   0.000000002  -0.000000000   0.000000000  -0.000000000
                        -0.000000656  -0.000003227  -0.000003313  -0.000003056  -0.000001777   0.000000141  -0.000004939   0.000001181

   92    9.1  0.5 -0.5  -0.000000536  -0.000002638  -0.000000193  -0.000000178   0.000000888  -0.000000071  -0.000015971   0.000003819
                        -0.000000000  -0.000000002   0.000000001   0.000000001  -0.000000003   0.000000000  -0.000000008   0.000000002

   93   10.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000005  -0.000000002
                        -0.000000224  -0.000001102  -0.000002473  -0.000002281  -0.000002469   0.000000196  -0.000014458   0.000003458

   94   11.1  0.5 -0.5  -0.000001197   0.000000243   0.000000748  -0.000000811  -0.000000346  -0.000004355   0.000000657   0.000002748
                        -0.000002791   0.000000567   0.000000129  -0.000000140   0.000000580   0.000007294   0.000000596   0.000002491

   95   12.1  0.5 -0.5   0.000001166  -0.000000237   0.000000403  -0.000000437   0.000000093   0.000001174   0.000000477   0.000001996
                        -0.000000502   0.000000102  -0.000002332   0.000002529   0.000000056   0.000000702  -0.000000526  -0.000002201

   96   13.1  0.5 -0.5   0.000000244  -0.000000050   0.000001242  -0.000001347   0.000000180   0.000002269   0.000000115   0.000000481
                         0.000000570  -0.000000116   0.000000215  -0.000000233  -0.000000303  -0.000003805   0.000000104   0.000000437

   97   14.1  0.5 -0.5   0.000001817  -0.000000369   0.000000286  -0.000000310   0.000000262   0.000003301   0.000000473   0.000001977
                        -0.000000781   0.000000159  -0.000001660   0.000001799   0.000000157   0.000001969  -0.000000521  -0.000002179

   98   15.1  0.5 -0.5  -0.000000007  -0.000000035  -0.000001724  -0.000001591  -0.000005010   0.000000398  -0.000001651   0.000000395
                         0.000000000   0.000000001   0.000000001   0.000000001  -0.000000002   0.000000000  -0.000000000   0.000000000


   Nr   State  S   Sz       73            74            75            76            77            78            79            80

    1    1.1  1.5  1.5  -0.000000000  -0.000018342   0.000013539  -0.004682995   0.000012881   0.004849884  -0.000005536   0.000097203
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000009757  -0.000035964   0.012429512   0.000013648   0.005145306  -0.000006424   0.000112843
                        -0.000000000   0.000000003  -0.000000032  -0.000002317  -0.000000012  -0.000000008   0.000000001  -0.000000059

    3    3.1  1.5  1.5   0.000000000  -0.000000002  -0.000000008  -0.000002156  -0.000000021  -0.000000345  -0.000000001   0.000000011
                        -0.000000000   0.000000793   0.000038075  -0.013166678  -0.000010368  -0.003915263   0.000011080  -0.000194541

    4    4.1  1.5  1.5  -0.000009413  -0.000000000  -0.005439269  -0.000015752  -0.000980209   0.000002589   0.000238944   0.000013609
                        -0.000010603  -0.000000000  -0.006797205  -0.000019650  -0.000597197   0.000001587  -0.000182977  -0.000010422

    5    5.1  1.5  1.5  -0.000208005   0.000000000   0.004246601   0.000012278  -0.009689612   0.000025736  -0.000024782  -0.000001411
                         0.000184916   0.000000009  -0.003398839  -0.000009835   0.015945864  -0.000042169  -0.000032408  -0.000001845

    6    6.1  1.5  1.5  -0.000008501   0.000000000  -0.006557777  -0.000018958  -0.001171299   0.000003112  -0.000033035  -0.000001882
                         0.000007558   0.000000000   0.005247410   0.000015159   0.001926282  -0.000005102  -0.000043293  -0.000002461

    7    7.1  1.5  1.5  -0.000176061  -0.000000008  -0.003082844  -0.000008932   0.016032022  -0.000042418  -0.000048930  -0.000002787
                        -0.000198044   0.000000000  -0.003852198  -0.000011138   0.009741965  -0.000025875   0.000037459   0.000002134

    8    8.1  1.5  1.5  -0.000000569  -0.000000000   0.017649375   0.000051127   0.007183004  -0.000019029  -0.000000494  -0.000000028
                        -0.000000640   0.000000000   0.022056789   0.000063764   0.004364795  -0.000011596   0.000000378   0.000000022

    9    9.1  1.5  1.5  -0.000000000   0.000002530  -0.000042134   0.014562133  -0.000129659  -0.048969117   0.000000292  -0.000005132
                        -0.000000000  -0.000000000  -0.000000032  -0.000001917   0.000000241  -0.000001851  -0.000000000   0.000000001

   10   10.1  1.5  1.5  -0.000001791   0.000000000   0.022069098   0.000063800   0.004362449  -0.000011589  -0.000002031  -0.000000116
                         0.000001587   0.000000000  -0.017659224  -0.000051142  -0.007179144   0.000018973  -0.000002652  -0.000000151

   11   11.1  1.5  1.5  -0.000002942   0.038939305   0.000030292  -0.010478720  -0.000017712  -0.006722847   0.015021676  -0.263841602
                        -0.000003310  -0.000006163  -0.000000007   0.000002167   0.000000089  -0.000000013  -0.000001389   0.000100970

   12   12.1  1.5  1.5   0.072472503   0.000003967  -0.004889316  -0.000014012  -0.004501778   0.000011856   0.457844789   0.026074643
                         0.081496059  -0.000000001  -0.006106057  -0.000017652  -0.002736399   0.000007269  -0.350638492  -0.019970974

   13   13.1  1.5  1.5  -0.000000179   0.000007142  -0.000000076   0.000002811   0.000000017   0.000000128   0.000001025  -0.000028202
                         0.000000156  -0.001884726  -0.000039727   0.013760863   0.000010811   0.004079663  -0.020910342   0.367117978

   14   14.1  1.5  1.5  -0.455385901  -0.000022606  -0.004310826  -0.000012508   0.016060158  -0.000042411   0.007387145   0.000423567
                        -0.512201842   0.000000003  -0.005390756  -0.000015586   0.009759352  -0.000025921  -0.005646547  -0.000321606

   15   15.1  1.5  1.5   0.037877509  -0.000000007  -0.007316943  -0.000021153  -0.000090079   0.000000240  -0.057004129  -0.003246730
                        -0.033943507  -0.000001941   0.005855524   0.000016760   0.000158863  -0.000000475  -0.074455616  -0.004236972

   16   16.1  1.5  1.5  -0.000006503   0.034123450  -0.000026163   0.009057629  -0.000006934  -0.002703750   0.005427276  -0.095386571
                        -0.000007314   0.000002387   0.000000033  -0.000001781   0.000000149  -0.000000271   0.000007851  -0.000062974

   17   17.1  1.5  1.5   0.529202978  -0.000000003  -0.003615796  -0.000010455   0.010155008  -0.000026972   0.050667707   0.002885832
                        -0.470482131  -0.000022758   0.002893549   0.000008382  -0.016710806   0.000044195   0.066252958   0.003772025

   18    1.1  1.5  0.5  -0.000005777   0.000000000   0.014133244   0.000040858   0.001110877  -0.000002952  -0.000055794  -0.000003178
                         0.000005141   0.000000000  -0.011308827  -0.000032752  -0.001829311   0.000004831  -0.000072911  -0.000004151

   19    2.1  1.5  0.5  -0.000018345  -0.000000000   0.000141668   0.000000408   0.007279448  -0.000019335  -0.000104978  -0.000005979
                         0.000016297   0.000000001  -0.000113100  -0.000000335  -0.011980797   0.000031683  -0.000137079  -0.000007808

   20    3.1  1.5  0.5   0.000000820   0.000000000   0.002446057   0.000007044  -0.011255718   0.000029730  -0.000008951  -0.000000507
                         0.000000905  -0.000000000   0.003058276   0.000008842  -0.006838679   0.000018164   0.000006827   0.000000389

   21    4.1  1.5  0.5  -0.000000000  -0.000000003   0.000000034   0.000001823  -0.000000017  -0.000000114  -0.000000001  -0.000000006
                         0.000000000  -0.000012269  -0.000048775   0.016860649  -0.000010671  -0.004028556   0.000009717  -0.000170626

   22    5.1  1.5  0.5  -0.000000000   0.000006405  -0.000000414   0.000143066   0.000000403   0.000152348  -0.000001998   0.000035086
                        -0.000000000  -0.000000007  -0.000000004   0.000001152  -0.000000002  -0.000000273   0.000000000  -0.000000008

   23    6.1  1.5  0.5  -0.000000001   0.000028712  -0.000034563   0.011949398   0.000033370   0.012617650   0.000008939  -0.000156977
                        -0.000000001   0.000000000  -0.000000021  -0.000001068  -0.000000087   0.000000464   0.000000000   0.000000017

   24    7.1  1.5  0.5  -0.000000000  -0.000000002  -0.000000038   0.000000266  -0.000000014   0.000000426  -0.000000002   0.000000100
                         0.000000000  -0.000002003   0.000003500  -0.001200302   0.000000784   0.000285984   0.000010024  -0.000175913

   25    8.1  1.5  0.5  -0.000000000   0.000000000   0.000000075   0.000002842   0.000000201  -0.000001618   0.000000000  -0.000000001
                         0.000000000  -0.000013016  -0.000070144   0.024241467   0.000100460   0.037948418   0.000000001  -0.000000020

   26    9.1  1.5  0.5  -0.000001281  -0.000000000   0.012729954   0.000036801   0.002516469  -0.000006685  -0.000001266  -0.000000072
                         0.000001139   0.000000000  -0.010186185  -0.000029522  -0.004141249   0.000010909  -0.000001653  -0.000000094

   27   10.1  1.5  0.5  -0.000000000   0.000013104  -0.000118776   0.041059394  -0.000049123  -0.018549393   0.000000099  -0.000001733
                        -0.000000000  -0.000000000  -0.000000077  -0.000005012   0.000000083  -0.000000665   0.000000000  -0.000000000

   28   11.1  1.5  0.5   0.052097932   0.000000000  -0.005250329  -0.000015177  -0.007561359   0.000020084   0.221880466   0.012637433
                        -0.046290165  -0.000001938   0.004200867   0.000012184   0.012444967  -0.000032910   0.289764917   0.016500702

   29   12.1  1.5  0.5  -0.000000930   0.000014817  -0.000000202   0.000005287   0.000000018   0.000003468   0.000004681  -0.000132331
                         0.000000826  -0.030424418  -0.000050267   0.017439255  -0.000011134  -0.004187124   0.013721503  -0.240979389

   30   13.1  1.5  0.5  -0.004068065   0.000000593  -0.002583356  -0.000007297   0.011841933  -0.000031128   0.017825421   0.001007368
                        -0.004529296   0.000000001  -0.003227914  -0.000009333   0.007194714  -0.000019109  -0.013589906  -0.000774030

   31   14.1  1.5  0.5  -0.000000706  -0.000022021   0.000000173  -0.000002416   0.000000015  -0.000002840  -0.000011226   0.000257053
                         0.000000629  -0.011346221  -0.000007190   0.002440932  -0.000001533  -0.000563651   0.022117324  -0.388244576

   32   15.1  1.5  0.5  -0.000001396   0.071682013  -0.000035704   0.012354134   0.000034375   0.013049106   0.017016200  -0.298825853
                        -0.000001572   0.000008524   0.000000028  -0.000005483  -0.000000170   0.000001541   0.000002754   0.000001909

   33   16.1  1.5  0.5  -0.003464507  -0.000000001  -0.013767783  -0.000039802   0.001603207  -0.000004257   0.027234412   0.001551168
                         0.003055469   0.000000685   0.011016861   0.000031638  -0.002639468   0.000007050   0.035661656   0.002027930

   34   17.1  1.5  0.5   0.000000222  -0.024300891   0.000004369  -0.001510905  -0.000004369  -0.001653718   0.001803621  -0.031674818
                         0.000000250   0.000016903   0.000000003  -0.000000496   0.000000015   0.000000081   0.000000796  -0.000007904

   35    1.1  1.5 -0.5  -0.000000000   0.000007733   0.000052365  -0.018100777  -0.000005662  -0.002140193  -0.000005228   0.000091810
                        -0.000000000   0.000000004   0.000000040   0.000002313   0.000000014  -0.000000727   0.000000000  -0.000000018

   36    2.1  1.5 -0.5  -0.000000000   0.000024538   0.000000528  -0.000181277  -0.000037116  -0.014018911  -0.000009834   0.000172659
                        -0.000000001  -0.000000010   0.000000007   0.000000224   0.000000069  -0.000001407  -0.000000001   0.000000031

   37    3.1  1.5 -0.5   0.000000000  -0.000000012  -0.000000026   0.000001317  -0.000000082   0.000001507   0.000000000   0.000000021
                        -0.000000000   0.000001221  -0.000011305   0.003916152  -0.000034839  -0.013170373  -0.000000639   0.000011258

   38    4.1  1.5 -0.5   0.000008150   0.000000000  -0.010534291  -0.000030504   0.003442602  -0.000009110  -0.000135486  -0.000007715
                         0.000009171   0.000000000  -0.013164733  -0.000038059   0.002092308  -0.000005556   0.000103713   0.000005907

   39    5.1  1.5 -0.5   0.000004791  -0.000000000   0.000110976   0.000000321   0.000079354  -0.000000211   0.000021321   0.000001214
                        -0.000004250  -0.000000000  -0.000090297  -0.000000262  -0.000130050   0.000000344   0.000027864   0.000001586

   40    6.1  1.5 -0.5   0.000021457  -0.000000000   0.009329906   0.000026971   0.006552516  -0.000017405  -0.000095408  -0.000005434
                        -0.000019077  -0.000000001  -0.007465986  -0.000021614  -0.010782839   0.000028472  -0.000124655  -0.000007098

   41    7.1  1.5 -0.5   0.000001330   0.000000000   0.000750240   0.000002217  -0.000244170   0.000000677  -0.000139621  -0.000007958
                         0.000001498   0.000000000   0.000936944   0.000002709  -0.000148889   0.000000395   0.000107012   0.000006095

   42    8.1  1.5 -0.5   0.000008648   0.000000000  -0.015145546  -0.000043889  -0.032430219   0.000085745  -0.000000017  -0.000000001
                         0.000009727  -0.000000000  -0.018927787  -0.000054716  -0.019706936   0.000052345   0.000000011   0.000000001

   43    9.1  1.5 -0.5  -0.000000000   0.000001714   0.000047179  -0.016303683  -0.000012795  -0.004845881  -0.000000119   0.000002082
                        -0.000000000  -0.000000000   0.000000053   0.000001918   0.000000047  -0.000000251  -0.000000000   0.000000000

   44   10.1  1.5 -0.5   0.000009794  -0.000000000   0.032059384   0.000092684  -0.009632965   0.000025582  -0.000001054  -0.000000060
                        -0.000008707  -0.000000000  -0.025652871  -0.000074279   0.015852001  -0.000041935  -0.000001376  -0.000000078

   45   11.1  1.5 -0.5   0.000001288  -0.069691990  -0.000019463   0.006724079   0.000038554   0.014561983   0.020784077  -0.364958417
                         0.000001448   0.000020400  -0.000000029  -0.000001036  -0.000000072   0.000001560   0.000004305  -0.000041854

   46   12.1  1.5 -0.5   0.020225953   0.000001244  -0.010893140  -0.000031253   0.003579970  -0.000009524  -0.191426907  -0.010898221
                         0.022727874  -0.000000001  -0.013618632  -0.000039371   0.002171598  -0.000005767   0.146379038   0.008337172

   47   13.1  1.5 -0.5   0.000000442   0.000030875   0.000000135  -0.000000126   0.000000164  -0.000001699  -0.000002259  -0.000044653
                        -0.000000395  -0.006087916   0.000011846  -0.004134387   0.000036525   0.013856237   0.001270396  -0.022414932

   48   14.1  1.5 -0.5   0.007522306   0.000000946  -0.001527151  -0.000004628   0.000480201  -0.000001318  -0.308124168  -0.017555142
                         0.008494241   0.000000001  -0.001904196  -0.000005505   0.000295157  -0.000000784   0.236206296   0.013453369

   49   15.1  1.5 -0.5   0.053565960  -0.000000001   0.009648655   0.000027893   0.006775670  -0.000017998  -0.181645722  -0.010345822
                        -0.047634011  -0.000002102  -0.007715446  -0.000022289  -0.011152106   0.000029288  -0.237279839  -0.013509812

   50   16.1  1.5 -0.5  -0.000000456   0.004619346  -0.000050845   0.017633011  -0.000008235  -0.003088213   0.002553159  -0.044871640
                        -0.000000511  -0.000018413   0.000000171  -0.000001893  -0.000000023  -0.000000750  -0.000001033   0.000052526

   51   17.1  1.5 -0.5  -0.018172526   0.000000000  -0.001179297  -0.000003409  -0.000858919   0.000002281  -0.019260444  -0.001096999
                         0.016133595   0.000000335   0.000944506   0.000002733   0.001413167  -0.000003726  -0.025146162  -0.001431658

   52    1.1  1.5 -1.5   0.000013708  -0.000000000   0.003656149   0.000010570  -0.002518762   0.000006690  -0.000059087  -0.000003365
                        -0.000012187   0.000000000  -0.002926263  -0.000008460   0.004144539  -0.000011008  -0.000077183  -0.000004396

   53    2.1  1.5 -1.5   0.000007294  -0.000000000  -0.009705526  -0.000028058  -0.002672195   0.000007099  -0.000068547  -0.000003904
                        -0.000006481   0.000000000   0.007765021   0.000022497   0.004396992  -0.000011657  -0.000089637  -0.000005101

   54    3.1  1.5 -1.5   0.000000528   0.000000000  -0.008225779  -0.000023798  -0.003345667   0.000008849   0.000154466   0.000008798
                         0.000000592   0.000000000  -0.010280953  -0.000029721  -0.002033667   0.000005403  -0.000118264  -0.000006736

   55    4.1  1.5 -1.5   0.000000000   0.000000010   0.000000019   0.000000776   0.000000012   0.000001277   0.000000003  -0.000000044
                        -0.000000000   0.000014178  -0.000025184   0.008705610   0.000003036   0.001147803  -0.000017141   0.000300957

   56    5.1  1.5 -1.5   0.000000006  -0.000278316  -0.000015732   0.005439276  -0.000049402  -0.018659024   0.000002323  -0.000040797
                         0.000000007   0.000000008  -0.000000006  -0.000000002   0.000000093  -0.000001003  -0.000000001   0.000000022

   57    6.1  1.5 -1.5   0.000000000  -0.000011375   0.000024273  -0.008398795  -0.000005976  -0.002254441   0.000003098  -0.000054457
                         0.000000000   0.000000000  -0.000000011   0.000000954   0.000000010   0.000000546  -0.000000002   0.000000085

   58    7.1  1.5 -1.5   0.000000006   0.000000007   0.000000013   0.000000258  -0.000000082   0.000001010  -0.000000000   0.000000001
                        -0.000000006   0.000264989  -0.000014277   0.004933898  -0.000049687  -0.018759840   0.000003510  -0.000061622

   59    8.1  1.5 -1.5   0.000000000   0.000000000  -0.000000072  -0.000003250  -0.000000026   0.000000457   0.000000000   0.000000000
                        -0.000000000   0.000000856   0.000081730  -0.028248935  -0.000022284  -0.008405176   0.000000035  -0.000000622

   60    9.1  1.5 -1.5  -0.000001891  -0.000000000  -0.011370275  -0.000032875   0.025430281  -0.000067544   0.000003119   0.000000178
                         0.000001681   0.000000000   0.009097944   0.000026353  -0.041848241   0.000110677   0.000004076   0.000000232

   61   10.1  1.5 -1.5   0.000000000  -0.000002393  -0.000081767   0.028264700   0.000022233   0.008400659   0.000000190  -0.000003340
                         0.000000000   0.000000004  -0.000000061  -0.000003252  -0.000000050   0.000000457   0.000000000  -0.000000000

   62   11.1  1.5 -1.5  -0.029105423   0.000000001   0.008182392   0.000023654   0.003491466  -0.000009275   0.160301191   0.009130122
                         0.025867815   0.000004429  -0.006546146  -0.000018923  -0.005745115   0.000015089   0.209561279   0.011928605

   63   12.1  1.5 -1.5  -0.000002966   0.000014015  -0.000000091  -0.000001738   0.000000054   0.000000455   0.000007695  -0.000109753
                         0.000002635  -0.109059027  -0.000022537   0.007822362   0.000013907   0.005268196  -0.032843976   0.576688123

   64   13.1  1.5 -1.5  -0.001257605  -0.000000238   0.008596556   0.000024765   0.003486270  -0.000009230  -0.291487986  -0.016602955
                        -0.001403807   0.000000002   0.010745259   0.000031064   0.002118862  -0.000005629   0.223182357   0.012711581

   65   14.1  1.5 -1.5   0.000016897  -0.000011112   0.000000026   0.000002936  -0.000000125   0.000000764  -0.000002107   0.000006857
                        -0.000015018   0.685366359  -0.000019984   0.006902425  -0.000049705  -0.018792914  -0.000531822   0.009298030

   66   15.1  1.5 -1.5  -0.000001285   0.050860860   0.000026988  -0.009371489  -0.000000530  -0.000182541   0.005337900  -0.093771581
                        -0.000001455   0.000200781  -0.000000133   0.000000562  -0.000000041  -0.000005527   0.000002494  -0.000004041

   67   16.1  1.5 -1.5  -0.025500608  -0.000000001  -0.007072665  -0.000020447   0.001403947  -0.000003728   0.058032628   0.003305311
                         0.022674409   0.000009788   0.005658450   0.000016323  -0.002310670   0.000005848   0.075702153   0.004304684

   68   17.1  1.5 -1.5  -0.000015119   0.708102554   0.000013400  -0.004631048   0.000051775   0.019554417  -0.004749337   0.083406650
                        -0.000017010  -0.000002761   0.000000011   0.000000325  -0.000000097   0.000000561   0.000001444  -0.000041162

   69    1.1  0.5  0.5   0.000000519   0.000000000  -0.000000676  -0.000000002   0.000004382  -0.000000012  -0.002673438  -0.000152304
                         0.000000584  -0.000000000  -0.000000845  -0.000000002   0.000002663  -0.000000007   0.002048150   0.000116654

   70    2.1  0.5  0.5  -0.000000289   0.000000000   0.000003108   0.000000009  -0.000003202   0.000000009   0.001485767   0.000084623
                         0.000000258   0.000000000  -0.000002487  -0.000000007   0.000005269  -0.000000014   0.001938956   0.000110471

   71    3.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000006  -0.000000096
                        -0.000000000   0.000001491   0.000000018  -0.000006066   0.000000002   0.000000756  -0.000065572   0.001151275

   72    4.1  0.5  0.5  -0.000000000   0.000000381  -0.000000007   0.000002359  -0.000000000  -0.000000108   0.000188373  -0.003306665
                        -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000042  -0.000001251

   73    5.1  0.5  0.5   0.000000069  -0.000000000  -0.000007432  -0.000000021  -0.000002292   0.000000006  -0.002465553  -0.000140428
                        -0.000000063  -0.000000000   0.000005947   0.000000017   0.000003772  -0.000000010  -0.003221733  -0.000183421

   74    6.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000408
                         0.000000000  -0.000001460  -0.000000021   0.000007138  -0.000000011  -0.000004241   0.000034752  -0.000610700

   75    7.1  0.5  0.5  -0.000000000   0.000003171  -0.000000017   0.000005881   0.000000021   0.000007760   0.000201756  -0.003543250
                        -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000007   0.000000596

   76    8.1  0.5  0.5   0.000002881   0.000000000   0.093845533   0.000271781   0.041349666  -0.000109286   0.000005139   0.000000293
                         0.000003243   0.000000000   0.117281309   0.000339051   0.025126573  -0.000066751  -0.000003934  -0.000000224

   77    9.1  0.5  0.5   0.000015454  -0.000000000  -0.035110167  -0.000101515   0.078537848  -0.000208599   0.000006856   0.000000390
                        -0.000013743  -0.000000001   0.028093458   0.000081295  -0.129242409   0.000341787   0.000008964   0.000000510

   78   10.1  0.5  0.5   0.000015618   0.000000001  -0.030229135  -0.000087480   0.128359351  -0.000339453  -0.000018303  -0.000001042
                         0.000017571  -0.000000000  -0.037779182  -0.000109231   0.078001249  -0.000207174   0.000014008   0.000000798

   79   11.1  0.5  0.5  -0.000000000  -0.000000000   0.000000264   0.000012447   0.000000611  -0.000004873  -0.000000000  -0.000000001
                         0.000000000  -0.000007189  -0.000313732   0.108443288   0.000303147   0.114512671   0.000000436  -0.000007651

   80   12.1  0.5  0.5  -0.000000000   0.000005897  -0.000443742   0.153394192  -0.000097085  -0.036652791   0.000000814  -0.000014296
                        -0.000000000   0.000000000  -0.000000300  -0.000018363   0.000000145  -0.000000842   0.000000000  -0.000000002

   81   13.1  0.5  0.5   0.000000000  -0.000000000   0.000000967   0.000070013  -0.000002599   0.000018908  -0.000000000  -0.000000008
                        -0.000000000   0.000014652  -0.001654481   0.571951457  -0.001434097  -0.541605136   0.000004445  -0.000078056

   82   14.1  0.5  0.5   0.000000000  -0.000017127  -0.000529834   0.183104316   0.002028255   0.766106329  -0.000001971   0.000034607
                         0.000000000   0.000000000  -0.000000659  -0.000018832  -0.000003941   0.000030530  -0.000000000  -0.000000004

   83   15.1  0.5  0.5  -0.000002849   0.000000000   0.589500035   0.001704199   0.116585531  -0.000309725  -0.000023714  -0.000001351
                         0.000002534   0.000000000  -0.471702905  -0.001366068  -0.191859967   0.000507058  -0.000030978  -0.000001763

   84    1.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000047   0.000001203
                         0.000000000  -0.000000781  -0.000000003   0.000001082  -0.000000014  -0.000005127   0.000191845  -0.003367816

   85    2.1  0.5 -0.5   0.000000000  -0.000000387  -0.000000012   0.000003981  -0.000000016  -0.000006166  -0.000139158   0.002442755
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000042   0.000001120

   86    3.1  0.5 -0.5   0.000000991   0.000000000  -0.000003790  -0.000000011   0.000000646  -0.000000002  -0.000914096  -0.000052063
                         0.000001114  -0.000000000  -0.000004736  -0.000000014   0.000000393  -0.000000001   0.000699902   0.000039864

   87    4.1  0.5 -0.5  -0.000000284  -0.000000000  -0.000001842  -0.000000005   0.000000056  -0.000000000   0.002011016   0.000114539
                         0.000000253   0.000000000   0.000001474   0.000000004  -0.000000092   0.000000000   0.002624853   0.000149550

   88    5.1  0.5 -0.5  -0.000000000   0.000000093   0.000000028  -0.000009518  -0.000000012  -0.000004413   0.000231005  -0.004056909
                        -0.000000000   0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000009   0.000000655

   89    6.1  0.5 -0.5  -0.000000970  -0.000000000   0.000004460   0.000000013  -0.000003625   0.000000010   0.000485166   0.000027594
                        -0.000001091   0.000000000   0.000005573   0.000000016  -0.000002203   0.000000006  -0.000370902  -0.000021125

   90    7.1  0.5 -0.5  -0.000002370  -0.000000000  -0.000004592  -0.000000013  -0.000004030   0.000000011   0.002153362   0.000122647
                         0.000002106   0.000000000   0.000003674   0.000000011   0.000006632  -0.000000018   0.002813833   0.000160197

   91    8.1  0.5 -0.5  -0.000000000  -0.000000002  -0.000000325  -0.000017660  -0.000000286   0.000002457   0.000000000   0.000000000
                         0.000000000  -0.000004338   0.000434535  -0.150206156  -0.000128059  -0.048385324  -0.000000369   0.000006472

   92    9.1  0.5 -0.5  -0.000000000   0.000020681   0.000130054  -0.044966278   0.000400414   0.151234235  -0.000000642   0.000011285
                        -0.000000000   0.000000002   0.000000036   0.000005918  -0.000000756   0.000005717   0.000000000  -0.000000005

   93   10.1  0.5 -0.5  -0.000000001  -0.000000002   0.000000043   0.000006321  -0.000000750   0.000005664  -0.000000000  -0.000000003
                         0.000000000  -0.000023509  -0.000139943   0.048384575  -0.000397679  -0.150200924   0.000001312  -0.000023048

   94   11.1  0.5 -0.5  -0.000004777  -0.000000000   0.067753240   0.000196248   0.097861018  -0.000258741   0.000006076   0.000000346
                        -0.000005373   0.000000000   0.084672577   0.000244775   0.059467412  -0.000157960  -0.000004650  -0.000000265

   95   12.1  0.5 -0.5  -0.000004407  -0.000000000  -0.119770740  -0.000346255   0.019034722  -0.000050545   0.000008692   0.000000495
                         0.000003918   0.000000000   0.095837092   0.000277515  -0.031322619   0.000082890   0.000011350   0.000000646

   96   13.1  0.5 -0.5   0.000009735   0.000000000   0.357340646   0.001034590  -0.462846454   0.001224179   0.000061984   0.000003529
                         0.000010950   0.000000000   0.446582732   0.001291097  -0.281263726   0.000747012  -0.000047442  -0.000002702

   97   14.1  0.5 -0.5   0.000012800  -0.000000000  -0.142966583  -0.000413245  -0.397847352   0.001056732  -0.000021034  -0.000001198
                        -0.000011380  -0.000000001   0.114401691   0.000331592   0.654703286  -0.001731229  -0.000027482  -0.000001565

   98   15.1  0.5 -0.5   0.000000000  -0.000003813  -0.002184133   0.754992659   0.000594168   0.224504862   0.000002221  -0.000039013
                         0.000000000  -0.000000000  -0.000001626  -0.000088837  -0.000001342   0.000011622   0.000000001   0.000000001


   Nr   State  S   Sz       81            82            83            84            85            86            87            88

    1    1.1  1.5  1.5   0.000004547  -0.000293592  -0.000001457   0.000189836   0.000000000   0.000046766  -0.000000084   0.000000001
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000002187  -0.000141163   0.000001381  -0.000180027  -0.000000001  -0.000135946   0.000000334  -0.000000003
                        -0.000000001  -0.000000018  -0.000000000   0.000000005  -0.000000001  -0.000000029  -0.000000000  -0.000000000

    3    3.1  1.5  1.5   0.000000000   0.000000057   0.000000002   0.000000065   0.000000001   0.000000004   0.000000000  -0.000000000
                         0.000001242  -0.000080108  -0.000000059   0.000007459  -0.000000001  -0.000189752  -0.000000301   0.000000003

    4    4.1  1.5  1.5   0.000061810   0.000000961   0.000011931   0.000000097  -0.000101917   0.000000001  -0.000000001  -0.000000173
                        -0.000089544  -0.000001387   0.000017219   0.000000132  -0.000084032  -0.000000000  -0.000000003  -0.000000331

    5    5.1  1.5  1.5   0.000088204   0.000001366  -0.000036784  -0.000000282   0.000005303   0.000000000   0.000000003   0.000000293
                         0.000060950   0.000000944   0.000025685   0.000000197  -0.000006446  -0.000000000  -0.000000001  -0.000000153

    6    6.1  1.5  1.5   0.000074573   0.000001155   0.000221237   0.000001698   0.000122957   0.000000000  -0.000000002  -0.000000237
                         0.000051510   0.000000800  -0.000154444  -0.000001184  -0.000149066   0.000000001   0.000000001   0.000000124

    7    7.1  1.5  1.5   0.000056043   0.000000869   0.000026726   0.000000205   0.000002581  -0.000000000  -0.000000001  -0.000000143
                        -0.000081079  -0.000001256   0.000038253   0.000000294   0.000002120   0.000000000  -0.000000002  -0.000000272

    8    8.1  1.5  1.5  -0.000000705  -0.000000011   0.000000078   0.000000001   0.000008811  -0.000000000   0.000138788   0.016105670
                         0.000001021   0.000000016   0.000000112   0.000000001   0.000007267   0.000000000   0.000264381   0.030760331

    9    9.1  1.5  1.5  -0.000000175   0.000011278   0.000000040  -0.000005156  -0.000000000  -0.000003456   0.000000209  -0.000000017
                         0.000000000  -0.000000001  -0.000000000  -0.000000002  -0.000000000  -0.000000001  -0.000000000  -0.000000029

   10   10.1  1.5  1.5   0.000000926   0.000000014   0.000001676   0.000000013  -0.000005807   0.000000000   0.000264488   0.030772742
                         0.000000641   0.000000010  -0.000001169  -0.000000009   0.000007041  -0.000000000  -0.000138844  -0.016112168

   11   11.1  1.5  1.5  -0.006810512   0.439701192  -0.001490156   0.194258589   0.000002100   0.206664225  -0.000000882   0.000000008
                         0.000000108   0.000030218   0.000000880  -0.000009864   0.000001733   0.000048765  -0.000000000   0.000000000

   12   12.1  1.5  1.5   0.092766272   0.001449937   0.012129212   0.000095088  -0.189713866  -0.000000905   0.000000012   0.000001445
                        -0.134345791  -0.002080750   0.017376314   0.000133342  -0.156551979  -0.000000000   0.000000024   0.000002758

   13   13.1  1.5  1.5   0.000000385  -0.000075116   0.000002095  -0.000152599   0.000000636  -0.000017365   0.000000001   0.000000000
                        -0.002310109   0.149119613   0.000115903  -0.015188052  -0.000000772   0.357497973  -0.000001218   0.000000010

   14   14.1  1.5  1.5   0.120585115   0.001862151   0.050612562   0.000393116  -0.033387568   0.000000578   0.000000002   0.000000280
                        -0.174554002  -0.002703500   0.072723835   0.000558070  -0.027426099  -0.000000001   0.000000005   0.000000535

   15   15.1  1.5  1.5   0.121290700   0.001878559   0.419619205   0.003220096   0.229755066   0.000000001   0.000000022   0.000002608
                         0.083764524   0.001300163  -0.292913650  -0.002245379  -0.278449046  -0.000001787  -0.000000012  -0.000001364

   16   16.1  1.5  1.5  -0.006521022   0.421055942   0.003455376  -0.450239307   0.000001959  -0.169889054  -0.000001022   0.000000009
                        -0.000000105  -0.000021710   0.000000412   0.000004385   0.000001617  -0.000043582   0.000000002  -0.000000000

   17   17.1  1.5  1.5  -0.170757555  -0.002644700   0.017850707   0.000136982  -0.034147323  -0.000000000   0.000000009   0.000001011
                        -0.118002572  -0.001828143  -0.012467139  -0.000096054   0.041416699   0.000000074  -0.000000005  -0.000000529

   18    1.1  1.5  0.5  -0.000031961  -0.000000495   0.000111539   0.000000856   0.000025112   0.000000000   0.000000005   0.000000526
                        -0.000022097  -0.000000343  -0.000077838  -0.000000599  -0.000030440   0.000000000  -0.000000002  -0.000000275

   19    2.1  1.5  0.5   0.000123948   0.000001920  -0.000111036  -0.000000852  -0.000045711  -0.000000000  -0.000000001  -0.000000080
                         0.000085674   0.000001325   0.000077550   0.000000593   0.000055413  -0.000000001   0.000000000   0.000000042

   20    3.1  1.5  0.5   0.000148641   0.000002304   0.000014093   0.000000110  -0.000074761   0.000000001   0.000000000   0.000000036
                        -0.000215118  -0.000003332   0.000020210   0.000000155  -0.000061659  -0.000000000   0.000000001   0.000000069

   21    4.1  1.5  0.5   0.000000000   0.000000019   0.000000001   0.000000042   0.000000000   0.000000017  -0.000000000   0.000000000
                         0.000000244  -0.000015749  -0.000000802   0.000104324  -0.000000000  -0.000033898   0.000000480  -0.000000004

   22    5.1  1.5  0.5   0.000000314  -0.000020273   0.000000271  -0.000035251  -0.000000003  -0.000384186  -0.000000100   0.000000001
                         0.000000001  -0.000000003   0.000000000  -0.000000011  -0.000000003  -0.000000019  -0.000000000   0.000000000

   23    6.1  1.5  0.5   0.000000097  -0.000006250  -0.000000974   0.000126860  -0.000000000  -0.000022395   0.000000395  -0.000000003
                        -0.000000001  -0.000000006  -0.000000001  -0.000000026  -0.000000000   0.000000014   0.000000000  -0.000000000

   24    7.1  1.5  0.5   0.000000003   0.000000069   0.000000004   0.000000071   0.000000001   0.000000014   0.000000000  -0.000000000
                         0.000002988  -0.000192788   0.000002065  -0.000269449  -0.000000001  -0.000084547   0.000000056  -0.000000000

   25    8.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000008238  -0.000000289
                         0.000000062  -0.000003996  -0.000000038   0.000004960  -0.000000000   0.000000580  -0.020044900   0.000172397

   26    9.1  1.5  0.5   0.000001731   0.000000027   0.000001342   0.000000010   0.000001445  -0.000000000  -0.000305370  -0.035529375
                         0.000001197   0.000000019  -0.000000936  -0.000000007  -0.000001752  -0.000000000   0.000160323   0.018602556

   27   10.1  1.5  0.5  -0.000000053   0.000003424   0.000000029  -0.000003792  -0.000000000  -0.000000641  -0.020053115   0.000172451
                         0.000000000  -0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000000001  -0.000008241   0.000000256

   28   11.1  1.5  0.5  -0.202021634  -0.003128919   0.125044888   0.000959575   0.065411054  -0.000000000  -0.000000018  -0.000002136
                        -0.139638508  -0.002161801  -0.087375709  -0.000668965  -0.079300410   0.000000406   0.000000010   0.000001119

   29   12.1  1.5  0.5   0.000001691   0.000004627  -0.000003884   0.000114952  -0.000001078   0.000013960  -0.000000000  -0.000000000
                        -0.000653541   0.042274863  -0.002293436   0.299136646   0.000001307  -0.026120452   0.000000302  -0.000000003

   30   13.1  1.5  0.5  -0.282928008  -0.004385187  -0.029111403  -0.000223413   0.144309405  -0.000000910  -0.000000004  -0.000000470
                         0.409481424   0.006342063  -0.041705288  -0.000320040   0.119028568   0.000000000  -0.000000008  -0.000000897

   31   14.1  1.5  0.5   0.000004908   0.000134537   0.000009694   0.000084714   0.000002208   0.000001584  -0.000000001   0.000000000
                         0.005587086  -0.360423273   0.003472505  -0.453451491  -0.000002676  -0.172837520  -0.000001569   0.000000013

   32   15.1  1.5  0.5   0.000059127  -0.003529541  -0.001841441   0.239777624  -0.000001837   0.038914796   0.000000675  -0.000000006
                        -0.000004708  -0.000112970  -0.000000174  -0.000243411  -0.000001517  -0.000005926  -0.000000001   0.000000000

   33   16.1  1.5  0.5   0.140372552   0.002174095  -0.270162359  -0.002073185  -0.074504965  -0.000000001  -0.000000014  -0.000001592
                         0.096996502   0.001496810   0.188581029   0.001438364   0.090293538  -0.000002713   0.000000007   0.000000833

   34   17.1  1.5  0.5  -0.000601683   0.038877688  -0.000301725   0.039301413   0.000005884   0.716701072  -0.000003986   0.000000034
                        -0.000000618  -0.000002740  -0.000000345   0.000020512   0.000004855   0.000026161  -0.000000003   0.000000000

   35    1.1  1.5 -0.5  -0.000000602   0.000038856   0.000001045  -0.000136014   0.000000000   0.000039461  -0.000000594   0.000000005
                         0.000000000  -0.000000007   0.000000001   0.000000026   0.000000000  -0.000000005  -0.000000000   0.000000000

   36    2.1  1.5 -0.5   0.000002333  -0.000150675  -0.000001038   0.000135436  -0.000000001  -0.000071834   0.000000090  -0.000000001
                         0.000000002   0.000000007   0.000000002   0.000000026  -0.000000001   0.000000005   0.000000000  -0.000000000

   37    3.1  1.5 -0.5   0.000000001   0.000000030   0.000000001   0.000000014  -0.000000000  -0.000000002  -0.000000000   0.000000000
                         0.000004051  -0.000261476  -0.000000190   0.000024638   0.000000000   0.000096907   0.000000078  -0.000000001

   38    4.1  1.5 -0.5  -0.000008939  -0.000000139  -0.000059685  -0.000000460  -0.000026161   0.000000000  -0.000000002  -0.000000223
                         0.000012967   0.000000201  -0.000085564  -0.000000657  -0.000021556  -0.000000000  -0.000000004  -0.000000425

   39    5.1  1.5 -0.5  -0.000016679  -0.000000258  -0.000028898  -0.000000222   0.000244437   0.000000000  -0.000000001  -0.000000088
                        -0.000011524  -0.000000178   0.000020188   0.000000155  -0.000296393   0.000000004   0.000000000   0.000000046

   40    6.1  1.5 -0.5  -0.000005145  -0.000000080   0.000104033   0.000000798   0.000014260   0.000000000   0.000000003   0.000000350
                        -0.000003549  -0.000000056  -0.000072598  -0.000000559  -0.000017268   0.000000001  -0.000000002  -0.000000183

   41    7.1  1.5 -0.5  -0.000109555  -0.000001701   0.000154302   0.000001179  -0.000065233   0.000000001  -0.000000000  -0.000000026
                         0.000158635   0.000002457   0.000220893   0.000001695  -0.000053785  -0.000000000  -0.000000000  -0.000000050

   42    8.1  1.5 -0.5  -0.000002272  -0.000000035  -0.000002839  -0.000000022   0.000000447   0.000000000   0.000080159   0.009297763
                         0.000003287   0.000000051  -0.000004068  -0.000000031   0.000000370  -0.000000000   0.000152628   0.017758088

   43    9.1  1.5 -0.5   0.000000033  -0.000002104   0.000000013  -0.000001636  -0.000000000   0.000002271   0.040104754  -0.000344898
                        -0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000016587  -0.000000529

   44   10.1  1.5 -0.5   0.000002817   0.000000044  -0.000003109  -0.000000024   0.000000407   0.000000000  -0.000152691  -0.017765365
                         0.000001948   0.000000030   0.000002170   0.000000017  -0.000000495   0.000000000   0.000080155   0.009301574

   45   11.1  1.5 -0.5  -0.003803093   0.245584310   0.001169742  -0.152547483   0.000000313   0.102796698   0.000002412  -0.000000021
                        -0.000000594  -0.000010821  -0.000000785  -0.000062527   0.000000258  -0.000003802   0.000000002  -0.000000000

   46   12.1  1.5 -0.5   0.024039635   0.000370187  -0.171143839  -0.001309672  -0.020159586  -0.000001694  -0.000000001  -0.000000140
                        -0.034774416  -0.000538591  -0.245341665  -0.001882717  -0.016609314  -0.000000000  -0.000000002  -0.000000268

   47   13.1  1.5 -0.5  -0.000001588  -0.000066824   0.000000017  -0.000004043   0.000000579  -0.000002871   0.000000001  -0.000000000
                        -0.007710488   0.497718082   0.000390307  -0.050860641  -0.000000702  -0.187064172  -0.000001013   0.000000009

   48   14.1  1.5 -0.5  -0.204811860  -0.003180636   0.259643705   0.001979856  -0.133337046   0.000003469   0.000000006   0.000000726
                         0.296575548   0.004593377   0.371757190   0.002852815  -0.109972909  -0.000000000   0.000000012   0.000001391

   49   15.1  1.5 -0.5  -0.002967777  -0.000045964   0.196744014   0.001509782  -0.024765520   0.000000001   0.000000005   0.000000598
                        -0.001913825  -0.000037491  -0.137058969  -0.001054259   0.030017168   0.000002382  -0.000000003  -0.000000312

   50   16.1  1.5 -0.5   0.002639528  -0.170624659  -0.002523279   0.329470035  -0.000002093  -0.117063710   0.000001796  -0.000000015
                         0.000004767  -0.000017003   0.000007395  -0.000025785  -0.000001727   0.000024552   0.000000000  -0.000000000

   51   17.1  1.5 -0.5   0.031980832   0.000495321   0.032213290   0.000247201  -0.456006827  -0.000000001  -0.000000030  -0.000003531
                         0.022106582   0.000341585  -0.022514561  -0.000173003   0.552917897  -0.000007629   0.000000016   0.000001850

   52    1.1  1.5 -1.5   0.000241521   0.000003741  -0.000155655  -0.000001194   0.000029756  -0.000000000   0.000000001   0.000000075
                         0.000166925   0.000002585   0.000108670   0.000000834  -0.000036078   0.000000000  -0.000000000  -0.000000039

   53    2.1  1.5 -1.5   0.000116137   0.000001799   0.000147615   0.000001133  -0.000086478  -0.000000000  -0.000000003  -0.000000296
                         0.000080245   0.000001244  -0.000103051  -0.000000791   0.000104895  -0.000000002   0.000000001   0.000000155

   54    3.1  1.5 -1.5   0.000045500   0.000000706   0.000004216   0.000000035   0.000146387  -0.000000002  -0.000000001  -0.000000139
                        -0.000065933  -0.000001021   0.000006153   0.000000047   0.000120734   0.000000000  -0.000000002  -0.000000267

   55    4.1  1.5 -1.5  -0.000000002  -0.000000063  -0.000000004  -0.000000075   0.000000001   0.000000022  -0.000000000   0.000000000
                        -0.000001687   0.000108805   0.000000164  -0.000020949  -0.000000001  -0.000132093   0.000000373  -0.000000003

   56    5.1  1.5 -1.5  -0.000001661   0.000107214   0.000000344  -0.000044864   0.000000000  -0.000008348   0.000000330  -0.000000003
                        -0.000000000   0.000000010   0.000000000  -0.000000003   0.000000000  -0.000000010   0.000000000  -0.000000000

   57    6.1  1.5 -1.5  -0.000001405   0.000090633  -0.000002070   0.000269812  -0.000000001  -0.000193234  -0.000000267   0.000000002
                         0.000000002   0.000000025   0.000000001  -0.000000010  -0.000000001   0.000000007  -0.000000000   0.000000000

   58    7.1  1.5 -1.5  -0.000000001   0.000000005   0.000000000   0.000000016  -0.000000000  -0.000000006  -0.000000000   0.000000000
                        -0.000001527   0.000098563   0.000000358  -0.000046665   0.000000000   0.000003340   0.000000307  -0.000000003

   59    8.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000001   0.000014451  -0.000000445
                         0.000000019  -0.000001241   0.000000001  -0.000000137   0.000000000   0.000011421  -0.034721612   0.000298595

   60    9.1  1.5 -1.5  -0.000009277  -0.000000144   0.000004227   0.000000032  -0.000002198  -0.000000000  -0.000000002  -0.000000185
                        -0.000006413  -0.000000099  -0.000002953  -0.000000023   0.000002666  -0.000000000   0.000000033   0.000000097

   61   10.1  1.5 -1.5  -0.000000017   0.000001127  -0.000000016   0.000002044   0.000000000   0.000009127   0.034735622  -0.000298716
                        -0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000000   0.000000000   0.000014457  -0.000000445

   62   11.1  1.5 -1.5  -0.361733523  -0.005602547  -0.159287177  -0.001222351   0.131459976   0.000000001   0.000000007   0.000000781
                        -0.249971993  -0.003872278   0.111193501   0.000852305  -0.159462781   0.000002723  -0.000000004  -0.000000409

   63   12.1  1.5 -1.5  -0.000009745  -0.000070384  -0.000001636  -0.000001618  -0.000000576  -0.000060190   0.000000002  -0.000000000
                        -0.002536089   0.163261655   0.000163765  -0.021190896   0.000000698  -0.245967212  -0.000003113   0.000000027

   64   13.1  1.5 -1.5  -0.084721770  -0.001313120  -0.008569141  -0.000064629  -0.275803962  -0.000001000  -0.000000005  -0.000000566
                         0.122714655   0.001900610  -0.012540735  -0.000096234  -0.227457634  -0.000000000  -0.000000009  -0.000001078

   65   14.1  1.5 -1.5   0.000005222  -0.000046268  -0.000002871  -0.000130546   0.000000368   0.000086100  -0.000000000  -0.000000000
                        -0.003282756   0.212155291   0.000682623  -0.088602316  -0.000000445  -0.043207791  -0.000000604   0.000000005

   66   15.1  1.5 -1.5  -0.002284602   0.147403957  -0.003925652   0.511740835   0.000001379  -0.361000356   0.000002943  -0.000000025
                         0.000001493   0.000052981   0.000002226  -0.000033914   0.000001136   0.000071966   0.000000000  -0.000000000

   67   16.1  1.5 -1.5  -0.346365647  -0.005364522   0.369174377   0.002832986  -0.108064441   0.000000001   0.000000008   0.000000906
                        -0.239413753  -0.003707511  -0.257731863  -0.001978337   0.131089165   0.000002540  -0.000000004  -0.000000472

   68   17.1  1.5 -1.5   0.003215050  -0.207563844  -0.000167303   0.021773316  -0.000000057   0.053678511   0.000001141  -0.000000010
                        -0.000000233  -0.000012264  -0.000000345   0.000003902  -0.000000047   0.000009817   0.000000001  -0.000000000

   69    1.1  0.5  0.5   0.000357852   0.000005484   0.002040436   0.000015599   0.002354903  -0.000000030  -0.000000000  -0.000000046
                        -0.000516382  -0.000007998   0.002921575   0.000022420   0.001942228   0.000000000  -0.000000001  -0.000000088

   70    2.1  0.5  0.5   0.003530635   0.000054683   0.000382563   0.000002936   0.001926488   0.000000000   0.000000002   0.000000267
                         0.002439144   0.000037836  -0.000268091  -0.000001986  -0.002336040   0.000000021  -0.000000001  -0.000000140

   71    3.1  0.5  0.5  -0.000000005  -0.000000343  -0.000000024  -0.000000783  -0.000000031   0.000000033   0.000000000  -0.000000000
                        -0.000057442   0.003708352   0.000013681  -0.001780040   0.000000037   0.003941933  -0.000000091   0.000000001

   72    4.1  0.5  0.5   0.000024845  -0.001601954   0.000026131  -0.003410713  -0.000000028  -0.002936762   0.000000215  -0.000000002
                        -0.000000034  -0.000000947  -0.000000052  -0.000001097  -0.000000023  -0.000000111   0.000000000  -0.000000000

   73    5.1  0.5  0.5   0.000704279   0.000010908   0.003105860   0.000023834   0.000944969   0.000000000  -0.000000001  -0.000000077
                         0.000486955   0.000007547  -0.002167246  -0.000016665  -0.001145243   0.000000015   0.000000000   0.000000040

   74    6.1  0.5  0.5  -0.000000003  -0.000000062   0.000000006   0.000000097  -0.000000023  -0.000000342  -0.000000000   0.000000000
                         0.000030083  -0.001942500  -0.000030102   0.003922120   0.000000028   0.003776269   0.000000378  -0.000000003

   75    7.1  0.5  0.5  -0.000068397   0.004415756  -0.000009991   0.001301241   0.000000006   0.000081554   0.000000023  -0.000000000
                         0.000000008   0.000000018  -0.000000005  -0.000000400   0.000000005   0.000000184   0.000000000  -0.000000000

   76    8.1  0.5  0.5   0.000002916   0.000000045   0.000001144   0.000000009   0.000001604  -0.000000000   0.000000023   0.000002691
                        -0.000004223  -0.000000065   0.000001638   0.000000013   0.000001317   0.000000000   0.000000044   0.000005140

   77    9.1  0.5  0.5  -0.000038997  -0.000000604   0.000021286   0.000000163  -0.000026073  -0.000000000  -0.000000006  -0.000000706
                        -0.000026953  -0.000000418  -0.000014863  -0.000000114   0.000031613  -0.000000000   0.000000003   0.000000369

   78   10.1  0.5  0.5   0.000026777   0.000000415   0.000011682   0.000000090   0.000014324  -0.000000000  -0.000000017  -0.000002028
                        -0.000038738  -0.000000600   0.000016729   0.000000128   0.000011813  -0.000000000  -0.000000033  -0.000003874

   79   11.1  0.5  0.5   0.000000000   0.000000001  -0.000000000   0.000000006   0.000000000   0.000000002  -0.000000001   0.000000000
                         0.000000194  -0.000012529  -0.000000159   0.000020761  -0.000000000  -0.000006905   0.000003546  -0.000000030

   80   12.1  0.5  0.5  -0.000000326   0.000021018   0.000000071  -0.000009281   0.000000000  -0.000011044   0.000004178  -0.000000036
                         0.000000000  -0.000000003   0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000002  -0.000000000

   81   13.1  0.5  0.5  -0.000000000   0.000000014   0.000000000   0.000000008   0.000000000   0.000000006   0.000238188  -0.000007364
                        -0.000002490   0.000160761   0.000000614  -0.000080035  -0.000000000  -0.000052737  -0.575911666   0.004952667

   82   14.1  0.5  0.5   0.000002321  -0.000149796  -0.000000826   0.000107705  -0.000000000   0.000023184  -0.575929673   0.004952822
                        -0.000000001   0.000000006   0.000000001   0.000000002  -0.000000000  -0.000000006  -0.000238196   0.000007364

   83   15.1  0.5  0.5   0.000010763   0.000000167   0.000018384   0.000000141   0.000015497   0.000000000   0.004385558   0.510252933
                         0.000007449   0.000000115  -0.000012823  -0.000000098  -0.000018812   0.000000000  -0.002302201  -0.267159457

   84    1.1  0.5 -0.5   0.000000036   0.000000790   0.000000044   0.000000617  -0.000000019  -0.000000055  -0.000000000   0.000000000
                        -0.000009697   0.000628258   0.000027312  -0.003563563   0.000000023   0.003052510   0.000000099  -0.000000001

   85    2.1  0.5 -0.5  -0.000066496   0.004291247  -0.000003544   0.000467147  -0.000000016  -0.003027943   0.000000302  -0.000000003
                         0.000000035   0.000000840   0.000000052   0.000000825  -0.000000013  -0.000000195   0.000000000  -0.000000000

   86    3.1  0.5 -0.5  -0.002108142  -0.000032663  -0.001018326  -0.000007851  -0.003040996   0.000000049  -0.000000000  -0.000000042
                         0.003050839   0.000047251  -0.001459985  -0.000011204  -0.002508223  -0.000000000  -0.000000001  -0.000000081

   87    4.1  0.5 -0.5   0.001318372   0.000020419   0.002795972   0.000021456  -0.001868536  -0.000000000  -0.000000002  -0.000000190
                         0.000910029   0.000014154  -0.001953332  -0.000014916   0.002265645  -0.000000037   0.000000001   0.000000100

   88    5.1  0.5 -0.5  -0.000013264   0.000856232  -0.000029082   0.003787258  -0.000000011  -0.001484772  -0.000000087   0.000000001
                         0.000000006  -0.000000164  -0.000000021  -0.000000897  -0.000000009   0.000000297  -0.000000000   0.000000000

   89    6.1  0.5 -0.5   0.001104480   0.000017101   0.002245103   0.000017236  -0.002913432   0.000000036   0.000000002   0.000000175
                        -0.001597946  -0.000024749   0.003215982   0.000024679  -0.002402524  -0.000000000   0.000000003   0.000000335

   90    7.1  0.5 -0.5  -0.003632593  -0.000056262  -0.001067176  -0.000008189   0.000051750  -0.000000000  -0.000000000  -0.000000020
                        -0.002510611  -0.000038894   0.000744556   0.000005723  -0.000063032   0.000000008   0.000000000   0.000000011

   91    8.1  0.5 -0.5  -0.000000000  -0.000000002   0.000000000   0.000000000  -0.000000000  -0.000000005   0.000000002  -0.000000000
                        -0.000000080   0.000005132   0.000000015  -0.000001998   0.000000000   0.000002075  -0.000005801   0.000000050

   92    9.1  0.5 -0.5   0.000000734  -0.000047405  -0.000000199   0.000025961   0.000000000   0.000040978  -0.000000796   0.000000007
                        -0.000000000   0.000000001   0.000000000   0.000000002   0.000000000   0.000000001  -0.000000000   0.000000000

   93   10.1  0.5 -0.5  -0.000000000   0.000000003   0.000000000   0.000000002  -0.000000000  -0.000000001  -0.000000002   0.000000000
                        -0.000000729   0.000047092   0.000000157  -0.000020404   0.000000000   0.000018567   0.000004373  -0.000000038

   94   11.1  0.5 -0.5   0.000007122   0.000000111   0.000011880   0.000000091   0.000005329  -0.000000000   0.000000014   0.000001645
                        -0.000010307  -0.000000160   0.000017026   0.000000131   0.000004392   0.000000000   0.000000027   0.000003142

   95   12.1  0.5 -0.5  -0.000017289  -0.000000268   0.000007609   0.000000058  -0.000007027  -0.000000000  -0.000000032  -0.000003702
                        -0.000011952  -0.000000185  -0.000005313  -0.000000041   0.000008520   0.000000000   0.000000017   0.000001938

   96   13.1  0.5 -0.5  -0.000091414  -0.000001416  -0.000045822  -0.000000352   0.000040688  -0.000000000  -0.002302000  -0.267136130
                         0.000132241   0.000002048  -0.000065620  -0.000000504   0.000033551   0.000000000  -0.004385175  -0.510208380

   97   14.1  0.5 -0.5   0.000123225   0.000001909  -0.000088311  -0.000000678   0.000014756  -0.000000000   0.004385312   0.510224333
                         0.000085173   0.000001320   0.000061656   0.000000472  -0.000017881  -0.000000000  -0.002302072  -0.267144483

   98   15.1  0.5 -0.5  -0.000000202   0.000013090  -0.000000172   0.000022414  -0.000000000  -0.000024373   0.575961955  -0.004953100
                        -0.000000000  -0.000000009   0.000000001  -0.000000010  -0.000000000  -0.000000015   0.000238209  -0.000007364


   Nr   State  S   Sz       89            90            91            92            93            94            95            96

    1    1.1  1.5  1.5   0.000006041   0.000392248  -0.001432722   0.000007468  -0.000004012   0.000390757   0.000639300   0.000000000
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000020800  -0.001350900  -0.000418071   0.000002177  -0.000000478   0.000046632  -0.002469692  -0.000000005
                         0.000000006  -0.000000186  -0.000000111   0.000000004  -0.000000000   0.000000071   0.000000238  -0.000000008

    3    3.1  1.5  1.5   0.000000010  -0.000000186  -0.000000022   0.000000002  -0.000000002   0.000000047   0.000000229  -0.000000004
                         0.000021625   0.001404557   0.000083267  -0.000000432  -0.000000437   0.000042728   0.002550246   0.000000002

    4    4.1  1.5  1.5  -0.000457065   0.000007029  -0.000000596  -0.000115130  -0.000451305  -0.000004608   0.000000005  -0.000802828
                        -0.001285464   0.000019796   0.000000729   0.000139779  -0.000420283  -0.000004315   0.000000000  -0.001411831

    5    5.1  1.5  1.5   0.000042234  -0.000000650  -0.000004735  -0.000908396  -0.000204554  -0.000002100   0.000000000   0.000160120
                        -0.000015004   0.000000233  -0.000003900  -0.000747863   0.000219599   0.000002256  -0.000000006  -0.000090862

    6    6.1  1.5  1.5  -0.001226527   0.000018888  -0.000000975  -0.000187098   0.000493808   0.000005070   0.000000000  -0.001404908
                         0.000436074  -0.000006704  -0.000000794  -0.000153978  -0.000530112  -0.000005418   0.000000002   0.000798899

    7    7.1  1.5  1.5   0.000012293  -0.000000185  -0.000003854  -0.000739731   0.000258741   0.000002654  -0.000000004  -0.000043498
                         0.000034383  -0.000000529   0.000004683   0.000898498   0.000240914   0.000002474  -0.000000000  -0.000076945

    8    8.1  1.5  1.5  -0.000798714   0.000012275  -0.000005061  -0.000981148  -0.004639861  -0.000047401   0.000000006  -0.000853761
                        -0.002245806   0.000034585   0.000006209   0.001191156  -0.004321517  -0.000044371   0.000000000  -0.001501323

    9    9.1  1.5  1.5   0.000004542   0.000294746  -0.005726522   0.000029856  -0.000015435   0.001503503   0.000168303  -0.000000002
                         0.000000002  -0.000000471  -0.000000115  -0.000000008   0.000000001   0.000000053  -0.000000242  -0.000000003

   10   10.1  1.5  1.5  -0.001693641   0.000026082  -0.000007212  -0.001383697   0.004409676   0.000045276   0.000000000  -0.001502044
                         0.000602050  -0.000009269  -0.000005873  -0.001139244  -0.004734228  -0.000048373  -0.000000006   0.000854172

   11   11.1  1.5  1.5  -0.005710206  -0.370872130  -0.293006380   0.001528442  -0.000610109   0.059391113  -0.308783752  -0.000000485
                         0.000002249  -0.000060587  -0.000034272  -0.000001256  -0.000000517   0.000021849   0.000030423  -0.000000851

   12   12.1  1.5  1.5   0.147808880  -0.002268318  -0.000080508  -0.013912652   0.162537525   0.001662508   0.000002561   0.114630879
                         0.415331629  -0.006396002   0.000088362   0.016952414   0.151453360   0.001555036  -0.000000001   0.201437569

   13   13.1  1.5  1.5   0.000007992  -0.000044876  -0.000036304   0.000001378  -0.000002555   0.000023683   0.000046407   0.000001790
                         0.007103785   0.461492952   0.027388420  -0.000141782  -0.000143081   0.014177110   0.376595448  -0.000001018

   14   14.1  1.5  1.5   0.027347962  -0.000421923   0.001288222   0.246046156  -0.052191346  -0.000538650   0.000000337   0.031024701
                         0.077293995  -0.001190306  -0.001557700  -0.298846230  -0.048678903  -0.000499805   0.000000000   0.054747047

   15   15.1  1.5  1.5   0.402197450  -0.006193738   0.000144726   0.027765808  -0.168705551  -0.001732171  -0.000000000   0.208810203
                        -0.143103731   0.002194717   0.000115047   0.022706284   0.180991589   0.001850064  -0.000004645  -0.118792443

   16   16.1  1.5  1.5   0.004246588   0.275922533  -0.393096500   0.002052236  -0.001182356   0.114826506   0.215863814  -0.000001330
                        -0.000007313  -0.000010082   0.000010836  -0.000004026  -0.000003060  -0.000009179  -0.000038053  -0.000002334

   17   17.1  1.5  1.5  -0.031249651   0.000481237  -0.001586474  -0.304366578  -0.048820041  -0.000501255   0.000000001   0.000357351
                         0.011130516  -0.000170222  -0.001306423  -0.250590596   0.052417809   0.000539419  -0.000000741  -0.000165277

   18    1.1  1.5  0.5   0.001158823  -0.000017846   0.000000507   0.000097261   0.000188824   0.000001939  -0.000000000   0.002926508
                        -0.000412067   0.000006337   0.000000417   0.000079993  -0.000202885  -0.000002076   0.000000012  -0.001664155

   19    2.1  1.5  0.5   0.000241654  -0.000003721  -0.000000849  -0.000162874  -0.000927470  -0.000009523  -0.000000000   0.000550952
                        -0.000085847   0.000001323  -0.000000712  -0.000134014   0.000995659   0.000010176   0.000000007  -0.000313524

   20    3.1  1.5  0.5  -0.000028729   0.000000441  -0.000002903  -0.000559849  -0.000802067  -0.000008190   0.000000012   0.000070745
                        -0.000080647   0.000001242   0.000003544   0.000679943  -0.000747175  -0.000007672   0.000000000   0.000125191

   21    4.1  1.5  0.5  -0.000000001  -0.000000050  -0.000000014  -0.000000003   0.000000003  -0.000000118  -0.000000190   0.000000006
                        -0.000004836  -0.000314033   0.001183737  -0.000006172   0.000004494  -0.000437919  -0.002877682  -0.000000004

   22    5.1  1.5  0.5  -0.000001106  -0.000071912   0.000381051  -0.000001977  -0.000015614   0.001524698  -0.000032502  -0.000000000
                         0.000000002  -0.000000072   0.000000043  -0.000000012   0.000000039  -0.000000123  -0.000000200  -0.000000000

   23    6.1  1.5  0.5  -0.000002964  -0.000192531  -0.001249638   0.000006513  -0.000003047   0.000296464  -0.002703223  -0.000000006
                         0.000000001  -0.000000156  -0.000000009   0.000000001  -0.000000004   0.000000069  -0.000000078  -0.000000011

   24    7.1  1.5  0.5  -0.000000001  -0.000000051  -0.000000081  -0.000000011   0.000000040  -0.000000083  -0.000000076  -0.000000009
                         0.000001420   0.000092209  -0.000481474   0.000002500   0.000015298  -0.001494094   0.000204991   0.000000005

   25    8.1  1.5  0.5   0.000000006  -0.000000246  -0.000000177   0.000000011   0.000000001   0.000000124  -0.000000060  -0.000000010
                         0.000059677   0.003875434  -0.004739070   0.000024710  -0.000014489   0.001410853   0.001894360   0.000000006

   26    9.1  1.5  0.5  -0.006824583   0.000105097  -0.000001732  -0.000332329   0.000149992   0.000001540   0.000000000  -0.000868891
                         0.002426622  -0.000037325  -0.000001406  -0.000272877  -0.000160543  -0.000001651  -0.000000005   0.000494111

   27   10.1  1.5  0.5   0.000051843   0.003367138   0.005171173  -0.000026956   0.000012238  -0.001191794   0.002090857   0.000000002
                        -0.000000013   0.000001061   0.000000401  -0.000000000   0.000000004  -0.000000222  -0.000000219   0.000000004

   28   11.1  1.5  0.5   0.207343803  -0.003193041  -0.000202548  -0.038858708  -0.263795637  -0.002708503  -0.000000001   0.227191881
                        -0.073703829   0.001134289  -0.000170197  -0.031979639   0.283173127   0.002897741   0.000001871  -0.129223803

   29   12.1  1.5  0.5   0.000005994   0.000030004   0.000114084   0.000000286   0.000004554   0.000005886   0.000136911   0.000005243
                         0.001650585   0.107310378  -0.413144214   0.002154189  -0.000395920   0.038078515   0.421884965  -0.000002980

   30   13.1  1.5  0.5  -0.009382149   0.000144888  -0.000948026  -0.183726940  -0.263425219  -0.002690513   0.000006355   0.010473261
                        -0.026413144   0.000406756   0.001163116   0.223144615  -0.245416004  -0.002519791  -0.000000001   0.018469831

   31   14.1  1.5  0.5  -0.000005008   0.000005625  -0.000081859   0.000003937  -0.000012911   0.000029762  -0.000081744  -0.000004944
                        -0.000122407  -0.008066249   0.073335275  -0.000379359  -0.005223721   0.510084126   0.059263801   0.000002811

   32   15.1  1.5  0.5   0.000928222   0.060288392   0.422072706  -0.002197316   0.000425070  -0.040855733   0.396268464   0.000000792
                        -0.000000323   0.000016238   0.000138401  -0.000003984   0.000004276   0.000091184  -0.000094502   0.000001390

   33   16.1  1.5  0.5   0.329046503  -0.005067233   0.000252598   0.048461654   0.164519476   0.001689193  -0.000000003   0.376555251
                        -0.117013491   0.001797296   0.000216940   0.039838503  -0.176634141  -0.001800977  -0.000005186  -0.214117697

   34   17.1  1.5  0.5  -0.000472145  -0.030681444   0.078742599  -0.000407480  -0.005220643   0.509751490  -0.049410388  -0.000000110
                         0.000000555  -0.000026401   0.000003545  -0.000003606   0.000012511  -0.000021340  -0.000016420  -0.000000194

   35    1.1  1.5 -0.5  -0.000018937  -0.001229907  -0.000125931   0.000000656  -0.000002841   0.000277159   0.003366580   0.000000006
                         0.000000004  -0.000000247  -0.000000068   0.000000001   0.000000004   0.000000096  -0.000000178   0.000000010

   36    2.1  1.5 -0.5  -0.000003950  -0.000256450   0.000210921  -0.000001108   0.000013937  -0.001360712   0.000633913   0.000000004
                        -0.000000001   0.000000027   0.000000070   0.000000010  -0.000000033   0.000000130   0.000000163   0.000000006

   37    3.1  1.5 -0.5   0.000000000   0.000000066   0.000000006   0.000000011  -0.000000032   0.000000133  -0.000000395  -0.000000011
                        -0.000001318  -0.000085611   0.000880769  -0.000004582  -0.000011222   0.001096167  -0.000143797   0.000000006

   38    4.1  1.5 -0.5   0.000105107  -0.000001619   0.000003925   0.000752410  -0.000320382  -0.000003286   0.000000007  -0.001422452
                         0.000295921  -0.000004557  -0.000004763  -0.000913845  -0.000298544  -0.000003065   0.000000000  -0.002501537

   39    5.1  1.5 -0.5  -0.000067736   0.000001043   0.000001533   0.000294195  -0.001039228  -0.000010670   0.000000000   0.000028154
                         0.000024148  -0.000000369   0.000001248   0.000242175   0.001115665   0.000011399   0.000000000  -0.000016241

   40    6.1  1.5 -0.5  -0.000181364   0.000002793  -0.000005028  -0.000964717  -0.000202000  -0.000002074  -0.000000000   0.002349755
                         0.000064616  -0.000000992  -0.000004139  -0.000794302   0.000216994   0.000002232   0.000000013  -0.001336439

   41    7.1  1.5 -0.5  -0.000030924   0.000000477  -0.000001581  -0.000306103  -0.001093297  -0.000011168  -0.000000010   0.000101406
                        -0.000086869   0.000001338   0.000001937   0.000371643  -0.001018340  -0.000010456   0.000000000   0.000178152

   42    8.1  1.5 -0.5  -0.001297920   0.000019977  -0.000015715  -0.003012441   0.001032354   0.000010603  -0.000000011   0.000936552
                        -0.003651629   0.000056234   0.000019069   0.003658414   0.000961639   0.000009874  -0.000000000   0.001646654

   43    9.1  1.5 -0.5   0.000111528   0.007243164   0.000430005  -0.000002231  -0.000002258   0.000219708  -0.000999559  -0.000000003
                        -0.000000022   0.000001325   0.000000580  -0.000000015   0.000000002  -0.000000346   0.000000037  -0.000000005

   44   10.1  1.5 -0.5   0.003172403  -0.000048854   0.000020810   0.003992361   0.000812089   0.000008338   0.000000000  -0.001817599
                        -0.001128486   0.000017347   0.000017133   0.003286652  -0.000872287  -0.000008958  -0.000000004   0.001033450

   45   11.1  1.5 -0.5  -0.003388528  -0.220053872   0.050325902  -0.000264548   0.003966464  -0.387007953   0.261371272   0.000000926
                         0.000000381  -0.000019959   0.000011791   0.000002645  -0.000007121   0.000048435   0.000013523   0.000001626

   46   12.1  1.5 -0.5  -0.035904600   0.000547050  -0.001369492  -0.262519512   0.027861227   0.000292832   0.000006031   0.208444922
                        -0.101125555   0.001557306   0.001662835   0.319016708   0.025956220   0.000266501  -0.000000001   0.366793753

   47   13.1  1.5 -0.5   0.000000321  -0.000003908  -0.000002003   0.000007445  -0.000010258   0.000057446  -0.000026839  -0.000005524
                        -0.000431790  -0.028029964   0.289048625  -0.001500512  -0.003686204   0.360030356  -0.021232596   0.000003141

   48   14.1  1.5 -0.5   0.002706284  -0.000036269   0.000238093   0.046551035   0.373251000   0.003813835  -0.000005687   0.029368833
                         0.007598713  -0.000117018  -0.000295365  -0.056666307   0.347662923   0.003569607   0.000000001   0.051475008

   49   15.1  1.5 -0.5   0.056802594  -0.000874746   0.001698843   0.325924893   0.027911416   0.000286572   0.000000001  -0.344505488
                        -0.020202864   0.000310511   0.001393609   0.268175973  -0.029835417  -0.000313974  -0.000001600   0.195817959

   50   16.1  1.5 -0.5  -0.005376533  -0.349233092  -0.062734647   0.000332898  -0.002469173   0.241384087   0.433174612  -0.000002561
                         0.000003222  -0.000077278  -0.000048745  -0.000006917   0.000008691  -0.000010001  -0.000031531  -0.000004510

   51   17.1  1.5 -0.5  -0.028901409   0.000445075   0.000316864   0.060790941  -0.347430057  -0.003567216  -0.000000000   0.042942162
                         0.010298556  -0.000157575   0.000256223   0.050048560   0.373013321   0.003811855   0.000000223  -0.024440896

   52    1.1  1.5 -1.5  -0.000369604   0.000005692   0.000005765   0.001106051   0.000266315   0.000002734  -0.000000000   0.000555715
                         0.000131344  -0.000002023   0.000004747   0.000910684  -0.000285950  -0.000002936   0.000000000  -0.000316045

   53    2.1  1.5 -1.5   0.001272852  -0.000019602   0.000001683   0.000322818   0.000031729   0.000000326   0.000000000  -0.002146913
                        -0.000452525   0.000006959   0.000001381   0.000265654  -0.000034173  -0.000000350  -0.000000010   0.001220715

   54    3.1  1.5 -1.5   0.000470491  -0.000007232  -0.000000273  -0.000052910  -0.000031236  -0.000000319   0.000000005  -0.001260546
                         0.001323412  -0.000020380   0.000000335   0.000064296  -0.000029155  -0.000000299   0.000000000  -0.002216930

   55    4.1  1.5 -1.5   0.000000006  -0.000000242  -0.000000032  -0.000000003   0.000000017   0.000000025  -0.000000093   0.000000005
                         0.000021007   0.001364305  -0.000181088   0.000000941   0.000006313  -0.000616696  -0.001624130  -0.000000003

   56    5.1  1.5 -1.5   0.000000691   0.000044820  -0.001176641   0.000006134  -0.000003082   0.000300110  -0.000184104   0.000000003
                         0.000000002  -0.000000004  -0.000000061  -0.000000001  -0.000000000  -0.000000025   0.000000175   0.000000005

   57    6.1  1.5 -1.5  -0.000020043  -0.001301741  -0.000242311   0.000001257   0.000007420  -0.000724476   0.001616170  -0.000000001
                         0.000000008  -0.000000198  -0.000000055   0.000000007  -0.000000018   0.000000069  -0.000000086  -0.000000001

   58    7.1  1.5 -1.5  -0.000000003   0.000000070   0.000000047  -0.000000002  -0.000000001  -0.000000044  -0.000000228  -0.000000003
                        -0.000000561  -0.000036515  -0.001163830   0.000006065  -0.000003628   0.000353534  -0.000088389   0.000000002

   59    8.1  1.5 -1.5   0.000000015  -0.000000597  -0.000000302  -0.000000039   0.000000164  -0.000000180  -0.000000061   0.000000006
                         0.000036699   0.002383608  -0.001543212   0.000008010   0.000064928  -0.006340648  -0.001727101  -0.000000003

   60    9.1  1.5 -1.5  -0.000277889   0.000004279   0.000023043   0.004420904   0.001024654   0.000010521   0.000000000   0.000146418
                         0.000098252  -0.000001523   0.000018983   0.003639871  -0.001100275  -0.000011294  -0.000000003  -0.000082993

   61   10.1  1.5 -1.5  -0.000027680  -0.001797466  -0.001792344   0.000009301   0.000066256  -0.006469788   0.001727932   0.000000003
                        -0.000000001  -0.000000179  -0.000000034   0.000000050  -0.000000165   0.000000379  -0.000000059   0.000000006

   62   11.1  1.5 -1.5   0.349441940  -0.005381318   0.001179147   0.226220483   0.040461245   0.000415433   0.000000001  -0.268427193
                        -0.124243594   0.001909943   0.000972496   0.186217704  -0.043476344  -0.000446820  -0.000000979   0.152624535

   63   12.1  1.5 -1.5  -0.000004330   0.000202327   0.000035031   0.000005986  -0.000004889   0.000055792  -0.000060491   0.000002227
                        -0.006786316  -0.440848938  -0.021930458   0.000119389  -0.002276411   0.222163373   0.231769991  -0.000001266

   64   13.1  1.5 -1.5   0.154573166  -0.002371171  -0.000089057  -0.017380924  -0.010358439  -0.000102963  -0.000002059  -0.186134172
                         0.434836617  -0.006696370   0.000110331   0.021166728  -0.009679554  -0.000099385  -0.000000000  -0.327380823

   65   14.1  1.5 -1.5  -0.000001008  -0.000112684  -0.000010393  -0.000004374  -0.000001361  -0.000052103   0.000096455   0.000000292
                        -0.001262873  -0.081989389   0.387101769  -0.002021367   0.000734811  -0.071369248   0.062926639  -0.000000167

   66   15.1  1.5 -1.5   0.006571084   0.426897457   0.035867828  -0.000184855  -0.002534386   0.247425761  -0.240236018   0.000002296
                        -0.000005954   0.000166777   0.000119751  -0.000003177   0.000006687  -0.000103541  -0.000033205   0.000004038

   67   16.1  1.5 -1.5  -0.259997307   0.004003887   0.001581752   0.303460623   0.078265216   0.000803580   0.000000002   0.187659744
                         0.092383139  -0.001415078   0.001307575   0.249872986  -0.084021918  -0.000867314  -0.000002687  -0.106681808

   68   17.1  1.5 -1.5  -0.000510455  -0.033172707  -0.394252027   0.002055150  -0.000736362   0.071631161  -0.000392336   0.000000367
                         0.000000746  -0.000024025  -0.000011029  -0.000000135  -0.000000823  -0.000001043   0.000032993   0.000000644

   69    1.1  0.5  0.5   0.000010251  -0.000000160   0.000002890   0.000553301  -0.000509403  -0.000005215   0.000000000   0.000000089
                         0.000029131  -0.000000449  -0.000003503  -0.000672045  -0.000474438  -0.000004871   0.000000000   0.000000156

   70    2.1  0.5  0.5  -0.000299086   0.000004606   0.000004249   0.000815210  -0.000113485  -0.000001165  -0.000000000   0.000000139
                         0.000106264  -0.000001635   0.000003497   0.000671228   0.000121831   0.000001235   0.000000000  -0.000000079

   71    3.1  0.5  0.5   0.000000001  -0.000000059  -0.000000029   0.000000007  -0.000000019   0.000000058   0.000000000   0.000000000
                         0.000010029   0.000651287  -0.000221772   0.000001162  -0.000009018   0.000880187   0.000000074  -0.000000000

   72    4.1  0.5  0.5  -0.000004095  -0.000265974   0.000102540  -0.000000528  -0.000011020   0.001076000   0.000000141  -0.000000000
                         0.000000002  -0.000000089  -0.000000042  -0.000000007   0.000000026  -0.000000030  -0.000000000  -0.000000000

   73    5.1  0.5  0.5   0.001007263  -0.000015512   0.000001255   0.000240699  -0.000049827  -0.000000512  -0.000000000  -0.000000826
                        -0.000358173   0.000005508   0.000001030   0.000198067   0.000053415   0.000000545  -0.000000000   0.000000470

   74    6.1  0.5  0.5  -0.000000003   0.000000105   0.000000057   0.000000004  -0.000000020   0.000000007   0.000000000   0.000000000
                        -0.000010477  -0.000680437   0.000594365  -0.000003094  -0.000006738   0.000658325  -0.000000516  -0.000000000

   75    7.1  0.5  0.5  -0.000012863  -0.000835409  -0.000723547   0.000003769   0.000001396  -0.000136703  -0.000000500  -0.000000000
                         0.000000003  -0.000000202  -0.000000077   0.000000003  -0.000000007   0.000000059   0.000000000  -0.000000000

   76    8.1  0.5  0.5   0.009198586  -0.000141473  -0.000006648  -0.001284827  -0.000962692  -0.000009870  -0.000000122   0.016332647
                         0.025869890  -0.000398390   0.000008152   0.001563918  -0.000898414  -0.000009224  -0.000000000   0.028720707

   77    9.1  0.5  0.5   0.000523348  -0.000008059   0.000018133   0.003478795   0.018523373   0.000190188  -0.000000000  -0.001624313
                        -0.000187778   0.000002833   0.000015177   0.002863399  -0.019887709  -0.000203305   0.000000057   0.000920697

   78   10.1  0.5  0.5  -0.000768023   0.000011794  -0.000056544  -0.010889426  -0.015696716  -0.000160262  -0.000000054  -0.001289470
                        -0.002161174   0.000033282   0.000068934   0.013224995  -0.014620380  -0.000150114  -0.000000000  -0.002272805

   79   11.1  0.5  0.5  -0.000000056   0.000004696   0.000001704  -0.000000001   0.000000016  -0.000000960   0.000000266   0.000000116
                        -0.000227267  -0.014760823  -0.022691940   0.000118285  -0.000053659   0.005225564  -0.027711064  -0.000000066

   80   12.1  0.5  0.5  -0.000261728  -0.016997237   0.020809244  -0.000108504   0.000063605  -0.006193717  -0.029571117  -0.000000038
                         0.000000054  -0.000001116  -0.000000835   0.000000051   0.000000005   0.000000561   0.000002407  -0.000000067

   81   13.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000000  -0.000000002  -0.000001860   0.000000006
                         0.000000038   0.000002481   0.000023467  -0.000000122   0.000000056  -0.000005446  -0.011497654  -0.000000004

   82   14.1  0.5  0.5   0.000000007   0.000000448  -0.000020407   0.000000106   0.000000040  -0.000003897  -0.009454228  -0.000000034
                         0.000000000   0.000000001   0.000000002   0.000000000  -0.000000000   0.000000002  -0.000001077  -0.000000060

   83   15.1  0.5  0.5   0.000000585  -0.000000009   0.000000017   0.000003209   0.000001690   0.000000017  -0.000000000   0.018211035
                        -0.000000208   0.000000003   0.000000014   0.000002640  -0.000001810  -0.000000019   0.000000077  -0.010356053

   84    1.1  0.5 -0.5   0.000000001  -0.000000095  -0.000000029  -0.000000004   0.000000011  -0.000000009   0.000000000   0.000000000
                        -0.000000476  -0.000030882   0.000870509  -0.000004541   0.000007136  -0.000696120   0.000000179  -0.000000000

   85    2.1  0.5 -0.5  -0.000004888  -0.000317403   0.001055990  -0.000005503  -0.000001698   0.000166498  -0.000000160  -0.000000000
                         0.000000001   0.000000020  -0.000000009  -0.000000002   0.000000011  -0.000000014  -0.000000000  -0.000000000

   86    3.1  0.5 -0.5   0.000218139  -0.000003357   0.000000744   0.000140988  -0.000644067  -0.000006586  -0.000000000  -0.000000036
                         0.000613669  -0.000009450  -0.000000892  -0.000171188  -0.000599923  -0.000006160  -0.000000000  -0.000000064

   87    4.1  0.5 -0.5   0.000250590  -0.000003859  -0.000000412  -0.000079133   0.000733356   0.000007530  -0.000000000   0.000000123
                        -0.000089145   0.000001369  -0.000000330  -0.000065211  -0.000787379  -0.000008046  -0.000000000  -0.000000070

   88    5.1  0.5 -0.5   0.000016461   0.001069050   0.000311716  -0.000001623  -0.000000747   0.000073047   0.000000951   0.000000000
                        -0.000000004   0.000000214   0.000000090  -0.000000002   0.000000003  -0.000000058  -0.000000000   0.000000000

   89    6.1  0.5 -0.5  -0.000227943   0.000003505  -0.000001964  -0.000377841  -0.000481747  -0.000004917  -0.000000000   0.000000255
                        -0.000641121   0.000009873   0.000002391   0.000458809  -0.000448678  -0.000004607   0.000000000   0.000000449

   90    7.1  0.5 -0.5   0.000787115  -0.000012121   0.000002912   0.000558621  -0.000093211  -0.000000957  -0.000000000  -0.000000435
                        -0.000279927   0.000004305   0.000002394   0.000459850   0.000099997   0.000001017  -0.000000000   0.000000247

   91    8.1  0.5 -0.5  -0.000000094   0.000005034   0.000002199  -0.000000049   0.000000023  -0.000001334   0.000001176  -0.000000106
                        -0.000422764  -0.027456605  -0.002024009   0.000010519   0.000013510  -0.001316785   0.033039891   0.000000061

   92    9.1  0.5 -0.5   0.000008543   0.000556013   0.004505671  -0.000023646   0.000278395  -0.027177864   0.001867102  -0.000000028
                        -0.000000030   0.000001694   0.000000711   0.000000191  -0.000000617   0.000000897  -0.000002677  -0.000000049

   93   10.1  0.5 -0.5   0.000000031  -0.000000017  -0.000000327  -0.000000165   0.000000626  -0.000001066  -0.000002709  -0.000000047
                         0.000035310   0.002293585  -0.017131261   0.000089157   0.000219586  -0.021450931  -0.002613115   0.000000027

   94   11.1  0.5 -0.5  -0.004947086   0.000076047   0.000075185   0.014422402  -0.003824638  -0.000039277  -0.000000133   0.013699531
                        -0.013907130   0.000214166  -0.000091316  -0.017519089  -0.003560712  -0.000036559  -0.000000000   0.024087879

   95   12.1  0.5 -0.5   0.016015638  -0.000246637  -0.000083732  -0.016064048  -0.004221657  -0.000043346   0.000000000  -0.025706063
                        -0.005692575   0.000087589  -0.000069008  -0.013227661   0.004532079   0.000046548  -0.000000077   0.014616747

   96   13.1  0.5 -0.5   0.000000831  -0.000000013  -0.000000078  -0.000014914   0.000003984   0.000000041  -0.000000007   0.005682387
                         0.000002338  -0.000000036   0.000000094   0.000018118   0.000003713   0.000000038   0.000000000   0.009995325

   97   14.1  0.5 -0.5  -0.000000422   0.000000006   0.000000082   0.000015753  -0.000002658  -0.000000027   0.000000000  -0.008217613
                         0.000000151  -0.000000002   0.000000068   0.000012972   0.000002851   0.000000029  -0.000000069   0.004674748

   98   15.1  0.5 -0.5   0.000000010   0.000000620   0.000004156  -0.000000022   0.000000025  -0.000002477  -0.020949693  -0.000000038
                         0.000000000  -0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000003   0.000000783  -0.000000067


   Nr   State  S   Sz       97            98

    1    1.1  1.5  1.5  -0.000000000  -0.001077230
                        -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000397617
                         0.000000002  -0.000000205

    3    3.1  1.5  1.5   0.000000006  -0.000000135
                         0.000000000   0.000143743

    4    4.1  1.5  1.5   0.000001752   0.000000002
                        -0.000165572   0.000000000

    5    5.1  1.5  1.5   0.003608349   0.000000000
                         0.000040908  -0.000000033

    6    6.1  1.5  1.5   0.000047838   0.000000000
                         0.000000538  -0.000000003

    7    7.1  1.5  1.5   0.000040876  -0.000000030
                        -0.003605012  -0.000000000

    8    8.1  1.5  1.5  -0.000000956   0.000000001
                         0.000096139   0.000000000

    9    9.1  1.5  1.5  -0.000000000  -0.002986393
                         0.000000027  -0.000000143

   10   10.1  1.5  1.5   0.000098493   0.000000000
                         0.000000982  -0.000000004

   11   11.1  1.5  1.5  -0.000000050  -0.110547746
                         0.000004389  -0.000028560

   12   12.1  1.5  1.5   0.001007802  -0.000003371
                        -0.087376616  -0.000000000

   13   13.1  1.5  1.5   0.000001284  -0.000029457
                         0.000000017   0.021221569

   14   14.1  1.5  1.5  -0.005987590   0.000006597
                         0.525842763   0.000000000

   15   15.1  1.5  1.5   0.052492910   0.000000002
                         0.000752969  -0.000000334

   16   16.1  1.5  1.5  -0.000000083  -0.128516716
                         0.000007272   0.000009144

   17   17.1  1.5  1.5   0.530887109   0.000000000
                         0.006031776  -0.000004933

   18    1.1  1.5  0.5   0.000388773  -0.000000000
                         0.000004791   0.000000003

   19    2.1  1.5  0.5  -0.002527601  -0.000000000
                        -0.000028488   0.000000025

   20    3.1  1.5  0.5  -0.000028817   0.000000029
                         0.002549514   0.000000000

   21    4.1  1.5  0.5   0.000000008   0.000000179
                         0.000000000   0.001450850

   22    5.1  1.5  0.5  -0.000000000  -0.000021524
                         0.000000000   0.000000097

   23    6.1  1.5  0.5  -0.000000000  -0.001769464
                         0.000000029  -0.000000279

   24    7.1  1.5  0.5   0.000000003  -0.000000071
                         0.000000000  -0.000103045

   25    8.1  1.5  0.5   0.000000021  -0.000000249
                         0.000000000   0.001842628

   26    9.1  1.5  0.5   0.000056486   0.000000000
                         0.000000563  -0.000000004

   27   10.1  1.5  0.5  -0.000000000  -0.001618530
                         0.000000011   0.000000074

   28   11.1  1.5  0.5  -0.329594256  -0.000000000
                        -0.003696301   0.000003416

   29   12.1  1.5  0.5   0.000001853   0.000045108
                         0.000000020  -0.212567170

   30   13.1  1.5  0.5  -0.004243399   0.000007204
                         0.376342060   0.000000001

   31   14.1  1.5  0.5  -0.000000198  -0.000059739
                        -0.000000002  -0.029906943

   32   15.1  1.5  0.5   0.000000097   0.259236716
                        -0.000008568   0.000094233

   33   16.1  1.5  0.5   0.184120451  -0.000000002
                         0.002106077   0.000002322

   34   17.1  1.5  0.5  -0.000000008  -0.032358516
                         0.000000670   0.000002443

   35    1.1  1.5 -0.5   0.000000000  -0.000388802
                        -0.000000003   0.000000356

   36    2.1  1.5 -0.5   0.000000000   0.002527761
                        -0.000000025   0.000000349

   37    3.1  1.5 -0.5   0.000000029  -0.000000270
                         0.000000000   0.002549677

   38    4.1  1.5 -0.5   0.000016731  -0.000000008
                        -0.001450754   0.000000000

   39    5.1  1.5 -0.5  -0.000021522  -0.000000000
                        -0.000000342   0.000000000

   40    6.1  1.5 -0.5  -0.001769352  -0.000000000
                        -0.000019907   0.000000029

   41    7.1  1.5 -0.5  -0.000001247  -0.000000003
                         0.000103037  -0.000000000

   42    8.1  1.5 -0.5   0.000020772  -0.000000021
                        -0.001842511  -0.000000000

   43    9.1  1.5 -0.5  -0.000000000  -0.000056488
                         0.000000004  -0.000000082

   44   10.1  1.5 -0.5  -0.001618424   0.000000000
                        -0.000018539   0.000000011

   45   11.1  1.5 -0.5   0.000000039   0.329614975
                        -0.000003415   0.000064001

   46   12.1  1.5 -0.5  -0.002379894  -0.000001854
                         0.212553852  -0.000000001

   47   13.1  1.5 -0.5   0.000007203  -0.000050245
                         0.000000081   0.376365979

   48   14.1  1.5 -0.5  -0.000400918   0.000000198
                         0.029904315   0.000000000

   49   15.1  1.5 -0.5   0.259220921   0.000000001
                         0.002863186  -0.000008568

   50   16.1  1.5 -0.5   0.000000025  -0.184132496
                        -0.000002322   0.000005465

   51   17.1  1.5 -0.5  -0.032356382  -0.000000000
                        -0.000371593   0.000000670

   52    1.1  1.5 -1.5   0.001077159   0.000000000
                         0.000012289   0.000000000

   53    2.1  1.5 -1.5   0.000397594   0.000000000
                         0.000004331  -0.000000002

   54    3.1  1.5 -1.5  -0.000001505   0.000000006
                         0.000143735   0.000000000

   55    4.1  1.5 -1.5  -0.000000002  -0.000000137
                        -0.000000000   0.000165581

   56    5.1  1.5 -1.5   0.000000000   0.003608581
                        -0.000000033   0.000000259

   57    6.1  1.5 -1.5   0.000000000   0.000047841
                        -0.000000003   0.000000008

   58    7.1  1.5 -1.5   0.000000030  -0.000000253
                         0.000000000   0.003605244

   59    8.1  1.5 -1.5  -0.000000001   0.000000141
                        -0.000000000  -0.000096144

   60    9.1  1.5 -1.5   0.002986200   0.000000000
                         0.000033926  -0.000000027

   61   10.1  1.5 -1.5   0.000000000   0.000098498
                        -0.000000004   0.000000142

   62   11.1  1.5 -1.5   0.110540878   0.000000000
                         0.001232587  -0.000004389

   63   12.1  1.5 -1.5   0.000003371   0.000010930
                         0.000000038   0.087382427

   64   13.1  1.5 -1.5  -0.000212644   0.000001284
                         0.021220524  -0.000000002

   65   14.1  1.5 -1.5  -0.000006597   0.000011695
                        -0.000000075  -0.525876851

   66   15.1  1.5 -1.5   0.000000002   0.052498084
                        -0.000000334  -0.000154073

   67   16.1  1.5 -1.5   0.128508248  -0.000000000
                         0.001475282  -0.000007273

   68   17.1  1.5 -1.5   0.000000056   0.530921373
                        -0.000004932   0.000025058

   69    1.1  0.5  0.5  -0.000000011   0.000000000
                         0.000000946   0.000000000

   70    2.1  0.5  0.5  -0.000001089  -0.000000000
                        -0.000000012   0.000000000

   71    3.1  0.5  0.5  -0.000000000  -0.000000000
                        -0.000000000  -0.000000424

   72    4.1  0.5  0.5  -0.000000000  -0.000000049
                         0.000000000  -0.000000000

   73    5.1  0.5  0.5  -0.000000197  -0.000000000
                        -0.000000002  -0.000000000

   74    6.1  0.5  0.5   0.000000000  -0.000000000
                         0.000000000   0.000000417

   75    7.1  0.5  0.5  -0.000000000  -0.000000581
                         0.000000000  -0.000000000

   76    8.1  0.5  0.5   0.000027081  -0.000000088
                        -0.002613419  -0.000000000

   77    9.1  0.5  0.5  -0.033080071  -0.000000000
                        -0.000375819   0.000000305

   78   10.1  0.5  0.5   0.000375411  -0.000000303
                        -0.033038920  -0.000000000

   79   11.1  0.5  0.5  -0.000000222   0.000003127
                        -0.000000003  -0.018133134

   80   12.1  0.5  0.5   0.000000001   0.014904227
                        -0.000000082  -0.000001541

   81   13.1  0.5  0.5   0.000000142  -0.000000017
                         0.000000002   0.017545664

   82   14.1  0.5  0.5  -0.000000002  -0.018724531
                         0.000000193  -0.000001724

   83   15.1  0.5  0.5  -0.001181983  -0.000000000
                        -0.000011777   0.000000051

   84    1.1  0.5 -0.5  -0.000000000   0.000000000
                         0.000000000  -0.000000946

   85    2.1  0.5 -0.5  -0.000000000  -0.000001089
                         0.000000000  -0.000000000

   86    3.1  0.5 -0.5   0.000000005  -0.000000000
                        -0.000000424  -0.000000000

   87    4.1  0.5 -0.5   0.000000049  -0.000000000
                         0.000000000  -0.000000000

   88    5.1  0.5 -0.5   0.000000000  -0.000000197
                        -0.000000000  -0.000000000

   89    6.1  0.5 -0.5  -0.000000005   0.000000000
                         0.000000417   0.000000000

   90    7.1  0.5 -0.5   0.000000581  -0.000000000
                         0.000000007  -0.000000000

   91    8.1  0.5 -0.5   0.000000088  -0.000002735
                         0.000000001   0.002613557

   92    9.1  0.5 -0.5  -0.000000003  -0.033082206
                         0.000000305  -0.000001588

   93   10.1  0.5 -0.5   0.000000303  -0.000001527
                         0.000000003   0.033041053

   94   11.1  0.5 -0.5   0.000203739  -0.000000222
                        -0.018131990  -0.000000000

   95   12.1  0.5 -0.5  -0.014903240   0.000000000
                        -0.000171571   0.000000082

   96   13.1  0.5 -0.5  -0.000200147   0.000000142
                         0.017544522   0.000000000

   97   14.1  0.5 -0.5   0.018723333   0.000000000
                         0.000211888  -0.000000193

   98   15.1  0.5 -0.5  -0.000000001  -0.001182041
                         0.000000051  -0.000001708


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   0.377%   0.000%   9.188%   0.005%   2.821%   0.003%  11.712%   0.313%   0.001%
    2    2.1  1.5  1.5   0.010%  28.824%   0.000%   3.413%   0.002%   1.262%   0.000%   1.564%   0.036%   0.000%
    3    3.1  1.5  1.5   0.010%  26.430%   0.000%   0.824%   0.011%   6.122%   0.001%   2.313%   0.007%   0.000%
    4    4.1  1.5  1.5   2.527%   0.001%  16.633%   0.000%   2.721%   0.005%   4.965%   0.001%   0.000%   0.051%
    5    5.1  1.5  1.5   0.019%   0.000%   0.294%   0.000%   0.321%   0.001%   2.147%   0.000%   0.077%  47.737%
    6    6.1  1.5  1.5   3.786%   0.001%   2.461%   0.000%  19.727%   0.036%   0.771%   0.000%   0.000%   0.001%
    7    7.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.009%   0.000%   0.023%   0.000%   0.082%  50.355%
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
   18    1.1  1.5  0.5   0.001%   0.000%  20.421%   0.000%  11.330%   0.021%  15.171%   0.003%   0.000%   0.066%
   19    2.1  1.5  0.5   5.778%   0.002%  14.983%   0.000%   8.426%   0.015%   7.048%   0.002%   0.000%   0.075%
   20    3.1  1.5  0.5   2.321%   0.001%   1.936%   0.000%  21.180%   0.039%   9.902%   0.002%   0.001%   0.336%
   21    4.1  1.5  0.5   0.000%   0.018%   0.000%  25.107%   0.033%  17.863%   0.000%   1.318%   0.182%   0.000%
   22    5.1  1.5  0.5   0.007%  20.403%   0.000%   0.005%   0.000%   0.057%   0.000%   0.356%   0.006%   0.000%
   23    6.1  1.5  0.5   0.000%   0.828%   0.000%   0.279%   0.000%   0.162%   0.009%  42.689%   0.665%   0.001%
   24    7.1  1.5  0.5   0.003%   8.650%   0.000%   4.455%   0.014%   7.814%   0.000%   0.000%   0.010%   0.000%
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
   35    1.1  1.5 -0.5   0.000%   0.001%   0.000%  20.421%   0.021%  11.330%   0.003%  15.171%   0.066%   0.000%
   36    2.1  1.5 -0.5   0.002%   5.778%   0.000%  14.983%   0.015%   8.426%   0.002%   7.048%   0.075%   0.000%
   37    3.1  1.5 -0.5   0.001%   2.321%   0.000%   1.936%   0.039%  21.180%   0.002%   9.902%   0.336%   0.001%
   38    4.1  1.5 -0.5   0.018%   0.000%  25.107%   0.000%  17.863%   0.033%   1.318%   0.000%   0.000%   0.182%
   39    5.1  1.5 -0.5  20.403%   0.007%   0.005%   0.000%   0.057%   0.000%   0.356%   0.000%   0.000%   0.006%
   40    6.1  1.5 -0.5   0.828%   0.000%   0.279%   0.000%   0.162%   0.000%  42.689%   0.009%   0.001%   0.665%
   41    7.1  1.5 -0.5   8.650%   0.003%   4.455%   0.000%   7.814%   0.014%   0.000%   0.000%   0.000%   0.010%
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
   52    1.1  1.5 -1.5   0.377%   0.000%   9.188%   0.000%   2.821%   0.005%  11.712%   0.003%   0.001%   0.313%
   53    2.1  1.5 -1.5  28.824%   0.010%   3.413%   0.000%   1.262%   0.002%   1.564%   0.000%   0.000%   0.036%
   54    3.1  1.5 -1.5  26.430%   0.010%   0.824%   0.000%   6.122%   0.011%   2.313%   0.001%   0.000%   0.007%
   55    4.1  1.5 -1.5   0.001%   2.527%   0.000%  16.633%   0.005%   2.721%   0.001%   4.965%   0.051%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.019%   0.000%   0.294%   0.001%   0.321%   0.000%   2.147%  47.737%   0.077%
   57    6.1  1.5 -1.5   0.001%   3.786%   0.000%   2.461%   0.036%  19.727%   0.000%   0.771%   0.001%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.009%   0.000%   0.023%  50.355%   0.082%
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
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.010%  39.520%   0.152%   4.781%   0.153%   0.007%   0.000%   0.286%   1.150%   0.044%
    2    2.1  1.5  1.5   0.001%   5.186%   0.435%  13.679%   1.035%   0.048%   0.008%   8.053%  18.589%   0.716%
    3    3.1  1.5  1.5   0.000%   0.021%   0.063%   1.979%  22.585%   1.050%   0.002%   1.807%  19.737%   0.760%
    4    4.1  1.5  1.5   0.730%   0.000%  18.958%   0.602%   0.540%  11.624%   8.613%   0.008%   0.752%  19.528%
    5    5.1  1.5  1.5   4.395%   0.001%   0.177%   0.006%   0.000%   0.000%   0.009%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.043%   0.000%   0.862%   0.027%   0.729%  15.686%  23.883%   0.024%   0.617%  16.024%
    7    7.1  1.5  1.5   4.689%   0.001%   0.010%   0.000%   0.002%   0.038%   0.029%   0.000%   0.003%   0.067%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.635%   0.000%   1.085%   0.034%   0.314%   6.744%   1.295%   0.001%   0.601%  15.610%
   19    2.1  1.5  0.5  22.286%   0.006%   0.693%   0.022%   0.006%   0.120%   3.435%   0.003%   0.012%   0.299%
   20    3.1  1.5  0.5  17.039%   0.004%   5.339%   0.170%   0.000%   0.002%   4.949%   0.005%   0.007%   0.171%
   21    4.1  1.5  0.5   0.000%   0.120%   0.059%   1.851%  11.241%   0.523%   0.000%   0.145%   0.695%   0.027%
   22    5.1  1.5  0.5   0.000%   1.424%   1.233%  38.823%   8.293%   0.386%   0.000%   0.268%   0.233%   0.009%
   23    6.1  1.5  0.5   0.000%   0.138%   0.076%   2.397%   9.981%   0.464%   0.001%   0.701%   0.561%   0.022%
   24    7.1  1.5  0.5   0.000%   0.026%   0.085%   2.679%   4.497%   0.209%   0.042%  42.706%   0.286%   0.011%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.001%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.050%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.635%   0.034%   1.085%   6.744%   0.314%   0.001%   1.295%  15.610%   0.601%
   36    2.1  1.5 -0.5   0.006%  22.286%   0.022%   0.693%   0.120%   0.006%   0.003%   3.435%   0.299%   0.012%
   37    3.1  1.5 -0.5   0.004%  17.039%   0.170%   5.339%   0.002%   0.000%   0.005%   4.949%   0.171%   0.007%
   38    4.1  1.5 -0.5   0.120%   0.000%   1.851%   0.059%   0.523%  11.241%   0.145%   0.000%   0.027%   0.695%
   39    5.1  1.5 -0.5   1.424%   0.000%  38.823%   1.233%   0.386%   8.293%   0.268%   0.000%   0.009%   0.233%
   40    6.1  1.5 -0.5   0.138%   0.000%   2.397%   0.076%   0.464%   9.981%   0.701%   0.001%   0.022%   0.561%
   41    7.1  1.5 -0.5   0.026%   0.000%   2.679%   0.085%   0.209%   4.497%  42.706%   0.042%   0.011%   0.286%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.013%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.050%   0.002%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52    1.1  1.5 -1.5  39.520%   0.010%   4.781%   0.152%   0.007%   0.153%   0.286%   0.000%   0.044%   1.150%
   53    2.1  1.5 -1.5   5.186%   0.001%  13.679%   0.435%   0.048%   1.035%   8.053%   0.008%   0.716%  18.589%
   54    3.1  1.5 -1.5   0.021%   0.000%   1.979%   0.063%   1.050%  22.585%   1.807%   0.002%   0.760%  19.737%
   55    4.1  1.5 -1.5   0.000%   0.730%   0.602%  18.958%  11.624%   0.540%   0.008%   8.613%  19.528%   0.752%
   56    5.1  1.5 -1.5   0.001%   4.395%   0.006%   0.177%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.043%   0.027%   0.862%  15.686%   0.729%   0.024%  23.883%  16.024%   0.617%
   58    7.1  1.5 -1.5   0.001%   4.689%   0.000%   0.010%   0.038%   0.002%   0.000%   0.029%   0.067%   0.003%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.760%   0.000%   0.309%   0.010%   0.000%   0.008%   1.040%   0.001%   0.000%   0.000%
   70    2.1  0.5  0.5   0.263%   0.000%   0.890%   0.028%   0.002%   0.052%   0.892%   0.001%   0.001%   0.031%
   71    3.1  0.5  0.5   0.000%   0.838%   0.006%   0.174%   1.057%   0.049%   0.000%   0.005%   0.117%   0.004%
   72    4.1  0.5  0.5   0.000%   0.044%   0.011%   0.359%   0.582%   0.027%   0.001%   1.103%   0.035%   0.001%
   73    5.1  0.5  0.5   0.069%   0.000%   0.143%   0.005%   0.071%   1.529%   0.311%   0.000%   0.015%   0.377%
   74    6.1  0.5  0.5   0.000%   0.304%   0.052%   1.649%   0.004%   0.000%   0.000%   0.118%   0.163%   0.006%
   75    7.1  0.5  0.5   0.000%   1.445%   0.003%   0.086%   0.327%   0.015%   0.000%   0.252%   0.234%   0.009%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.052%   1.361%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.018%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.438%   0.017%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.475%   0.018%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.760%   0.010%   0.309%   0.008%   0.000%   0.001%   1.040%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.263%   0.028%   0.890%   0.052%   0.002%   0.001%   0.892%   0.031%   0.001%
   86    3.1  0.5 -0.5   0.838%   0.000%   0.174%   0.006%   0.049%   1.057%   0.005%   0.000%   0.004%   0.117%
   87    4.1  0.5 -0.5   0.044%   0.000%   0.359%   0.011%   0.027%   0.582%   1.103%   0.001%   0.001%   0.035%
   88    5.1  0.5 -0.5   0.000%   0.069%   0.005%   0.143%   1.529%   0.071%   0.000%   0.311%   0.377%   0.015%
   89    6.1  0.5 -0.5   0.304%   0.000%   1.649%   0.052%   0.000%   0.004%   0.118%   0.000%   0.006%   0.163%
   90    7.1  0.5 -0.5   1.445%   0.000%   0.086%   0.003%   0.015%   0.327%   0.252%   0.000%   0.009%   0.234%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.361%   0.052%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.001%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.438%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.018%   0.475%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.013%  17.722%   0.009%   5.670%   0.855%   0.000%   0.078%   2.248%   0.000%   0.274%
    2    2.1  1.5  1.5   0.000%   0.653%   0.001%   0.937%  12.304%   0.001%   0.012%   0.348%   0.000%   0.013%
    3    3.1  1.5  1.5   0.000%   0.027%   0.000%   0.163%  13.148%   0.002%   0.002%   0.056%   0.000%   0.001%
    4    4.1  1.5  1.5   0.574%   0.000%   2.887%   0.005%   0.001%   5.349%   0.044%   0.002%   0.749%   0.000%
    5    5.1  1.5  1.5  11.354%   0.008%   4.139%   0.007%   0.000%   0.097%  25.451%   0.880%   0.025%   0.000%
    6    6.1  1.5  1.5   1.832%   0.001%   5.306%   0.008%   0.001%   5.283%   0.008%   0.000%   0.715%   0.000%
    7    7.1  1.5  1.5  11.891%   0.009%   3.575%   0.006%   0.000%   0.031%  25.419%   0.879%   0.053%   0.000%
    8    8.1  1.5  1.5   0.011%   0.000%   0.030%   0.000%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.026%   0.000%   0.009%   0.000%   0.000%   0.001%   0.029%   0.000%   0.000%
   10   10.1  1.5  1.5   0.012%   0.000%   0.034%   0.000%   0.000%   0.010%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   13   13.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.483%   0.000%   0.056%   0.000%   0.003%  22.988%   0.248%   0.009%   0.031%   0.000%
   19    2.1  1.5  0.5  13.290%   0.010%   6.849%   0.011%   0.000%   0.751%  12.564%   0.435%   0.660%   0.000%
   20    3.1  1.5  0.5   0.265%   0.000%  20.209%   0.032%   0.000%   0.058%  12.712%   0.440%   0.013%   0.000%
   21    4.1  1.5  0.5   0.010%  13.980%   0.005%   2.912%  16.928%   0.002%   0.137%   3.965%   0.000%   0.005%
   22    5.1  1.5  0.5   0.005%   6.908%   0.029%  18.669%   0.002%   0.000%   0.000%   0.001%   0.000%   0.544%
   23    6.1  1.5  0.5   0.009%  12.060%   0.008%   4.930%  14.601%   0.002%   0.219%   6.316%   0.000%   0.001%
   24    7.1  1.5  0.5   0.004%   5.416%   0.032%  20.074%   0.086%   0.000%   0.001%   0.020%   0.000%   0.641%
   25    8.1  1.5  0.5   0.000%   0.021%   0.000%   0.005%   0.012%   0.000%   0.000%   0.011%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.018%   0.000%   0.009%   0.015%   0.000%   0.000%   0.008%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   34   17.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   35    1.1  1.5 -0.5   0.000%   0.483%   0.000%   0.056%  22.988%   0.003%   0.009%   0.248%   0.000%   0.031%
   36    2.1  1.5 -0.5   0.010%  13.290%   0.011%   6.849%   0.751%   0.000%   0.435%  12.564%   0.000%   0.660%
   37    3.1  1.5 -0.5   0.000%   0.265%   0.032%  20.209%   0.058%   0.000%   0.440%  12.712%   0.000%   0.013%
   38    4.1  1.5 -0.5  13.980%   0.010%   2.912%   0.005%   0.002%  16.928%   3.965%   0.137%   0.005%   0.000%
   39    5.1  1.5 -0.5   6.908%   0.005%  18.669%   0.029%   0.000%   0.002%   0.001%   0.000%   0.544%   0.000%
   40    6.1  1.5 -0.5  12.060%   0.009%   4.930%   0.008%   0.002%  14.601%   6.316%   0.219%   0.001%   0.000%
   41    7.1  1.5 -0.5   5.416%   0.004%  20.074%   0.032%   0.000%   0.086%   0.020%   0.001%   0.641%   0.000%
   42    8.1  1.5 -0.5   0.021%   0.000%   0.005%   0.000%   0.000%   0.012%   0.011%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.018%   0.000%   0.009%   0.000%   0.000%   0.015%   0.008%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52    1.1  1.5 -1.5  17.722%   0.013%   5.670%   0.009%   0.000%   0.855%   2.248%   0.078%   0.274%   0.000%
   53    2.1  1.5 -1.5   0.653%   0.000%   0.937%   0.001%   0.001%  12.304%   0.348%   0.012%   0.013%   0.000%
   54    3.1  1.5 -1.5   0.027%   0.000%   0.163%   0.000%   0.002%  13.148%   0.056%   0.002%   0.001%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.574%   0.005%   2.887%   5.349%   0.001%   0.002%   0.044%   0.000%   0.749%
   56    5.1  1.5 -1.5   0.008%  11.354%   0.007%   4.139%   0.097%   0.000%   0.880%  25.451%   0.000%   0.025%
   57    6.1  1.5 -1.5   0.001%   1.832%   0.008%   5.306%   5.283%   0.001%   0.000%   0.008%   0.000%   0.715%
   58    7.1  1.5 -1.5   0.009%  11.891%   0.006%   3.575%   0.031%   0.000%   0.879%  25.419%   0.000%   0.053%
   59    8.1  1.5 -1.5   0.000%   0.011%   0.000%   0.030%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.026%   0.000%   0.009%   0.000%   0.000%   0.000%   0.029%   0.001%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.012%   0.000%   0.034%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   69    1.1  0.5  0.5   0.420%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%  54.289%   0.000%
   70    2.1  0.5  0.5   0.139%   0.000%   0.255%   0.000%   0.000%   0.000%   0.000%   0.000%  18.591%   0.000%
   71    3.1  0.5  0.5   0.000%   0.228%   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   9.898%
   72    4.1  0.5  0.5   0.000%   0.158%   0.000%   0.231%   0.000%   0.000%   0.000%   0.000%   0.000%   9.826%
   73    5.1  0.5  0.5   0.004%   0.000%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%   0.683%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.256%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   75    7.1  0.5  0.5   0.000%   0.045%   0.000%   0.138%   0.000%   0.000%   0.000%   0.000%   0.000%   2.981%
   76    8.1  0.5  0.5   0.002%   0.000%   0.018%   0.000%   0.000%   2.906%   0.022%   0.001%   0.000%   0.000%
   77    9.1  0.5  0.5   0.953%   0.001%   0.470%   0.001%   0.000%   0.013%   2.820%   0.098%   0.000%   0.000%
   78   10.1  0.5  0.5   0.018%   0.000%   1.394%   0.002%   0.000%   0.023%   2.809%   0.097%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.666%   0.000%   0.313%   2.025%   0.000%   0.030%   0.876%   0.000%   0.000%
   80   12.1  0.5  0.5   0.001%   0.750%   0.000%   0.191%   2.359%   0.000%   0.019%   0.553%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.026%   0.000%   0.002%   0.056%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%   0.002%   0.065%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.084%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.420%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%  54.289%
   85    2.1  0.5 -0.5   0.000%   0.139%   0.000%   0.255%   0.000%   0.000%   0.000%   0.000%   0.000%  18.591%
   86    3.1  0.5 -0.5   0.228%   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   9.898%   0.000%
   87    4.1  0.5 -0.5   0.158%   0.000%   0.231%   0.000%   0.000%   0.000%   0.000%   0.000%   9.826%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.004%   0.000%   0.031%   0.000%   0.000%   0.000%   0.000%   0.000%   0.683%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.256%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   90    7.1  0.5 -0.5   0.045%   0.000%   0.138%   0.000%   0.000%   0.000%   0.000%   0.000%   2.981%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.002%   0.000%   0.018%   2.906%   0.000%   0.001%   0.022%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.001%   0.953%   0.001%   0.470%   0.013%   0.000%   0.098%   2.820%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.018%   0.002%   1.394%   0.023%   0.000%   0.097%   2.809%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.666%   0.000%   0.313%   0.000%   0.000%   2.025%   0.876%   0.030%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.750%   0.001%   0.191%   0.000%   0.000%   2.359%   0.553%   0.019%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.056%   0.002%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.065%   0.002%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.084%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   1.306%   0.018%   0.000%   0.000%   0.139%   0.074%   0.000%   0.002%   0.000%
    2    2.1  1.5  1.5   0.000%   0.013%   0.385%   0.000%   0.001%   0.688%   0.002%   0.000%   0.060%   0.000%
    3    3.1  1.5  1.5   0.000%   0.053%   0.822%   0.000%   0.000%   0.188%   0.000%   0.000%   0.062%   0.000%
    4    4.1  1.5  1.5   0.535%   0.000%   0.000%   0.020%   0.284%   0.000%   0.000%   0.000%   0.000%   0.065%
    5    5.1  1.5  1.5   0.118%   0.000%   0.000%   0.000%   0.034%   0.000%   0.000%   0.047%   0.000%   0.000%
    6    6.1  1.5  1.5   0.003%   0.000%   0.000%   0.041%   0.836%   0.001%   0.000%   0.001%   0.000%   0.045%
    7    7.1  1.5  1.5   0.086%   0.000%   0.000%   0.000%   0.045%   0.000%   0.000%   0.046%   0.000%   0.001%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.003%   1.208%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.052%   0.000%   0.011%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.089%   0.000%   0.096%
   11   11.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.008%   0.000%
   12   12.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.012%
   13   13.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.008%
   16   16.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.003%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%
   18    1.1  1.5  0.5   0.148%   0.000%   0.000%   0.015%   0.196%   0.000%   0.000%   0.000%   0.000%   0.051%
   19    2.1  1.5  0.5   0.225%   0.000%   0.000%   0.000%   0.143%   0.000%   0.000%   0.016%   0.000%   0.000%
   20    3.1  1.5  0.5   0.829%   0.000%   0.000%   0.000%   0.222%   0.000%   0.000%   0.006%   0.000%   0.001%
   21    4.1  1.5  0.5   0.000%   0.116%   0.050%   0.000%   0.000%   0.367%   0.054%   0.000%   0.001%   0.000%
   22    5.1  1.5  0.5   0.000%   0.152%   1.253%   0.000%   0.000%   0.001%   0.001%   0.000%   0.002%   0.000%
   23    6.1  1.5  0.5   0.000%   0.111%   0.018%   0.000%   0.001%   0.402%   0.050%   0.000%   0.003%   0.000%
   24    7.1  1.5  0.5   0.000%   0.030%   1.100%   0.000%   0.000%   0.172%   0.000%   0.000%   0.003%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.360%   0.000%   1.276%   0.003%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   0.015%   5.962%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.732%   0.000%   1.724%   0.004%
   28   11.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%
   29   12.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.009%   0.000%   0.000%   0.000%
   30   13.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   31   14.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   32   15.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.008%   0.000%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.008%
   34   17.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.148%   0.015%   0.000%   0.000%   0.196%   0.000%   0.000%   0.051%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.225%   0.000%   0.000%   0.000%   0.143%   0.016%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.829%   0.000%   0.000%   0.000%   0.222%   0.006%   0.000%   0.001%   0.000%
   38    4.1  1.5 -0.5   0.116%   0.000%   0.000%   0.050%   0.367%   0.000%   0.000%   0.054%   0.000%   0.001%
   39    5.1  1.5 -0.5   0.152%   0.000%   0.000%   1.253%   0.001%   0.000%   0.000%   0.001%   0.000%   0.002%
   40    6.1  1.5 -0.5   0.111%   0.000%   0.000%   0.018%   0.402%   0.001%   0.000%   0.050%   0.000%   0.003%
   41    7.1  1.5 -0.5   0.030%   0.000%   0.000%   1.100%   0.172%   0.000%   0.000%   0.000%   0.000%   0.003%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.360%   0.003%   1.276%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.032%   0.000%   5.962%   0.015%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.732%   0.004%   1.724%
   45   11.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.009%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.008%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.008%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   52    1.1  1.5 -1.5   1.306%   0.000%   0.000%   0.018%   0.139%   0.000%   0.000%   0.074%   0.000%   0.002%
   53    2.1  1.5 -1.5   0.013%   0.000%   0.000%   0.385%   0.688%   0.001%   0.000%   0.002%   0.000%   0.060%
   54    3.1  1.5 -1.5   0.053%   0.000%   0.000%   0.822%   0.188%   0.000%   0.000%   0.000%   0.000%   0.062%
   55    4.1  1.5 -1.5   0.000%   0.535%   0.020%   0.000%   0.000%   0.284%   0.000%   0.000%   0.065%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.118%   0.000%   0.000%   0.000%   0.034%   0.047%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.003%   0.041%   0.000%   0.001%   0.836%   0.001%   0.000%   0.045%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.086%   0.000%   0.000%   0.000%   0.045%   0.046%   0.000%   0.001%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.038%   0.000%   1.208%   0.003%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.052%   0.000%   0.011%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.089%   0.000%   0.096%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.008%
   63   12.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.012%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.001%   0.000%   0.008%   0.000%
   67   16.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.010%   0.000%   0.003%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%
   69    1.1  0.5  0.5   0.602%   0.000%   0.000%   0.059%   0.075%   0.000%   0.000%  15.755%   0.001%   0.247%
   70    2.1  0.5  0.5  34.740%   0.011%   0.000%   0.026%   1.641%   0.002%   0.000%  12.792%   0.003%   1.029%
   71    3.1  0.5  0.5   0.005%  15.424%  29.337%   0.003%   0.000%   0.340%   4.997%   0.000%   3.440%   0.009%
   72    4.1  0.5  0.5   0.000%   0.152%  45.005%   0.004%   0.000%   0.022%   0.950%   0.000%   2.470%   0.006%
   73    5.1  0.5  0.5   4.265%   0.001%   0.000%   2.299%  47.700%   0.064%   0.000%   0.263%   0.041%  15.855%
   74    6.1  0.5  0.5   0.010%  33.574%  18.865%   0.002%   0.003%   2.553%   2.183%   0.000%   7.505%   0.019%
   75    7.1  0.5  0.5   0.002%   7.485%   0.670%   0.000%   0.059%  43.810%   3.871%   0.000%  10.175%   0.026%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.123%   0.071%  27.862%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.379%   0.002%   0.943%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.747%   0.002%   0.739%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  17.178%   0.000%  10.840%   0.028%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.107%   0.000%   8.012%   0.021%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.602%   0.059%   0.000%   0.000%   0.075%  15.755%   0.000%   0.247%   0.001%
   85    2.1  0.5 -0.5   0.011%  34.740%   0.026%   0.000%   0.002%   1.641%  12.792%   0.000%   1.029%   0.003%
   86    3.1  0.5 -0.5  15.424%   0.005%   0.003%  29.337%   0.340%   0.000%   0.000%   4.997%   0.009%   3.440%
   87    4.1  0.5 -0.5   0.152%   0.000%   0.004%  45.005%   0.022%   0.000%   0.000%   0.950%   0.006%   2.470%
   88    5.1  0.5 -0.5   0.001%   4.265%   2.299%   0.000%   0.064%  47.700%   0.263%   0.000%  15.855%   0.041%
   89    6.1  0.5 -0.5  33.574%   0.010%   0.002%  18.865%   2.553%   0.003%   0.000%   2.183%   0.019%   7.505%
   90    7.1  0.5 -0.5   7.485%   0.002%   0.000%   0.670%  43.810%   0.059%   0.000%   3.871%   0.026%  10.175%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.123%   0.000%  27.862%   0.071%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   7.379%   0.000%   0.943%   0.002%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.747%   0.000%   0.739%   0.002%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  17.178%   0.028%  10.840%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  21.107%   0.021%   8.012%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.001%   0.000%   0.040%   0.001%   0.202%   0.000%   0.000%   0.578%   0.000%   0.000%
    2    2.1  1.5  1.5   0.002%   0.000%   0.933%   0.031%   0.002%   0.000%   0.000%   0.002%   0.168%   0.000%
    3    3.1  1.5  1.5   0.002%   0.000%   0.973%   0.033%   0.003%   0.000%   0.000%   0.045%   0.161%   0.000%
    4    4.1  1.5  1.5   0.000%   0.007%   0.013%   0.378%   0.000%   0.018%   0.046%   0.000%   0.000%   0.438%
    5    5.1  1.5  1.5   0.000%   0.001%   0.000%   0.007%   0.000%   2.002%   0.332%   0.000%   0.000%   0.005%
    6    6.1  1.5  1.5   0.000%   0.027%   0.013%   0.385%   0.000%   0.003%   0.058%   0.000%   0.000%   0.009%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.014%   0.000%   1.986%   0.320%   0.000%   0.000%   0.013%
    8    8.1  1.5  1.5   0.001%   4.419%   0.051%   1.508%   0.000%   0.004%   0.002%   0.000%   0.000%  14.865%
    9    9.1  1.5  1.5   0.059%   0.000%   0.013%   0.000%   4.683%   0.000%   0.001%  10.800%   0.147%   0.000%
   10   10.1  1.5  1.5   0.002%   5.478%   0.051%   1.500%   0.000%   0.005%   0.492%   0.000%   0.000%   6.002%
   11   11.1  1.5  1.5   0.001%   0.000%   0.016%   0.001%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   12   12.1  1.5  1.5   0.000%   0.001%   0.000%   0.009%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%
   13   13.1  1.5  1.5   0.000%   0.000%   0.023%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.046%   0.001%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.000%   0.005%   0.000%   0.009%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.006%   0.000%   0.004%   0.000%   0.000%   0.002%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.046%   0.001%   0.000%   0.000%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.055%   1.624%   0.000%   0.088%   0.013%   0.000%   0.000%   0.227%
   19    2.1  1.5  0.5   0.000%   0.047%   0.004%   0.122%   0.000%   0.920%   0.130%   0.000%   0.000%   0.210%
   20    3.1  1.5  0.5   0.000%   0.057%   0.000%   0.003%   0.000%   1.004%   0.047%   0.000%   0.000%   0.240%
   21    4.1  1.5  0.5   0.000%   0.000%   1.089%   0.037%   0.478%   0.000%   0.000%   0.415%   0.002%   0.000%
   22    5.1  1.5  0.5   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.411%   0.000%
   23    6.1  1.5  0.5   0.001%   0.000%   1.237%   0.042%   0.331%   0.000%   0.000%   0.318%   0.018%   0.000%
   24    7.1  1.5  0.5   0.076%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.407%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   2.210%   0.074%   1.369%   0.000%   0.001%  12.217%   0.776%   0.000%
   26    9.1  1.5  0.5   0.000%   0.172%   0.017%   0.496%   0.000%   0.002%   1.667%   0.000%   0.000%   5.891%
   27   10.1  1.5  0.5   0.174%   0.000%   1.830%   0.062%   1.751%   0.000%   0.000%   4.862%   2.383%   0.000%
   28   11.1  1.5  0.5   0.000%   0.007%   0.000%   0.014%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%
   29   12.1  1.5  0.5   0.001%   0.000%   0.025%   0.001%   0.011%   0.000%   0.000%   0.001%   0.000%   0.000%
   30   13.1  1.5  0.5   0.000%   0.010%   0.000%   0.000%   0.000%   0.023%   0.000%   0.000%   0.000%   0.001%
   31   14.1  1.5  0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   32   15.1  1.5  0.5   0.001%   0.000%   0.028%   0.001%   0.008%   0.000%   0.000%   0.001%   0.000%   0.000%
   33   16.1  1.5  0.5   0.000%   0.001%   0.001%   0.027%   0.000%   0.009%   0.000%   0.000%   0.000%   0.001%
   34   17.1  1.5  0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   35    1.1  1.5 -0.5   0.000%   0.000%   1.624%   0.055%   0.088%   0.000%   0.000%   0.013%   0.227%   0.000%
   36    2.1  1.5 -0.5   0.047%   0.000%   0.122%   0.004%   0.920%   0.000%   0.000%   0.130%   0.210%   0.000%
   37    3.1  1.5 -0.5   0.057%   0.000%   0.003%   0.000%   1.004%   0.000%   0.000%   0.047%   0.240%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.037%   1.089%   0.000%   0.478%   0.415%   0.000%   0.000%   0.002%
   39    5.1  1.5 -0.5   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%   0.000%   0.411%
   40    6.1  1.5 -0.5   0.000%   0.001%   0.042%   1.237%   0.000%   0.331%   0.318%   0.000%   0.000%   0.018%
   41    7.1  1.5 -0.5   0.000%   0.076%   0.000%   0.005%   0.000%   0.002%   0.000%   0.000%   0.000%   0.407%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.074%   2.210%   0.000%   1.369%  12.217%   0.001%   0.000%   0.776%
   43    9.1  1.5 -0.5   0.172%   0.000%   0.496%   0.017%   0.002%   0.000%   0.000%   1.667%   5.891%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.174%   0.062%   1.830%   0.000%   1.751%   4.862%   0.000%   0.000%   2.383%
   45   11.1  1.5 -0.5   0.007%   0.000%   0.014%   0.000%   0.015%   0.000%   0.000%   0.000%   0.000%   0.000%
   46   12.1  1.5 -0.5   0.000%   0.001%   0.001%   0.025%   0.000%   0.011%   0.001%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.010%   0.000%   0.000%   0.000%   0.023%   0.000%   0.000%   0.000%   0.001%   0.000%
   48   14.1  1.5 -0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   49   15.1  1.5 -0.5   0.000%   0.001%   0.001%   0.028%   0.000%   0.008%   0.001%   0.000%   0.000%   0.000%
   50   16.1  1.5 -0.5   0.001%   0.000%   0.027%   0.001%   0.009%   0.000%   0.000%   0.000%   0.001%   0.000%
   51   17.1  1.5 -0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   52    1.1  1.5 -1.5   0.000%   0.001%   0.001%   0.040%   0.000%   0.202%   0.578%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.002%   0.031%   0.933%   0.000%   0.002%   0.002%   0.000%   0.000%   0.168%
   54    3.1  1.5 -1.5   0.000%   0.002%   0.033%   0.973%   0.000%   0.003%   0.045%   0.000%   0.000%   0.161%
   55    4.1  1.5 -1.5   0.007%   0.000%   0.378%   0.013%   0.018%   0.000%   0.000%   0.046%   0.438%   0.000%
   56    5.1  1.5 -1.5   0.001%   0.000%   0.007%   0.000%   2.002%   0.000%   0.000%   0.332%   0.005%   0.000%
   57    6.1  1.5 -1.5   0.027%   0.000%   0.385%   0.013%   0.003%   0.000%   0.000%   0.058%   0.009%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.014%   0.000%   1.986%   0.000%   0.000%   0.320%   0.013%   0.000%
   59    8.1  1.5 -1.5   4.419%   0.001%   1.508%   0.051%   0.004%   0.000%   0.000%   0.002%  14.865%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.059%   0.000%   0.013%   0.000%   4.683%  10.800%   0.001%   0.000%   0.147%
   61   10.1  1.5 -1.5   5.478%   0.002%   1.500%   0.051%   0.005%   0.000%   0.000%   0.492%   6.002%   0.000%
   62   11.1  1.5 -1.5   0.000%   0.001%   0.001%   0.016%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   63   12.1  1.5 -1.5   0.001%   0.000%   0.009%   0.000%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%
   64   13.1  1.5 -1.5   0.000%   0.000%   0.001%   0.023%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.046%   0.000%   0.000%   0.001%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.005%   0.000%   0.009%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.006%   0.000%   0.004%   0.002%   0.000%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.046%   0.000%   0.000%   0.001%   0.000%   0.000%
   69    1.1  0.5  0.5   0.000%   1.480%   0.000%   0.000%   0.000%   0.000%  18.059%   0.001%   0.000%   4.170%
   70    2.1  0.5  0.5   0.001%   3.668%   0.000%   0.000%   0.000%   0.000%  17.188%   0.001%   0.000%   2.775%
   71    3.1  0.5  0.5   9.052%   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   9.066%   1.540%   0.000%
   72    4.1  0.5  0.5  14.070%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%   0.546%  18.822%   0.000%
   73    5.1  0.5  0.5   0.000%   1.337%   0.000%   0.000%   0.000%   0.000%   0.268%   0.000%   0.000%   5.681%
   74    6.1  0.5  0.5   7.790%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   5.201%  16.782%   0.000%
   75    7.1  0.5  0.5   3.426%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   1.613%   2.153%   0.000%
   76    8.1  0.5  0.5   0.000%   1.028%   1.017%  30.208%   0.000%   0.030%   0.838%   0.000%   0.000%   2.919%
   77    9.1  0.5  0.5   0.007%  20.777%   0.003%   0.087%   0.000%  31.209%   2.047%   0.000%   0.000%   5.838%
   78   10.1  0.5  0.5   0.008%  25.598%   0.001%   0.029%   0.000%  31.251%   0.955%   0.000%   0.000%   4.747%
   79   11.1  0.5  0.5   1.092%   0.000%  24.089%   0.811%   6.432%   0.000%   0.000%   3.390%   1.657%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%  21.293%   0.717%   9.331%   0.000%   0.001%   8.466%   0.535%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.890%   0.030%   3.567%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   1.292%   0.044%   3.152%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.146%   4.328%   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   1.480%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%  18.059%   4.170%   0.000%
   85    2.1  0.5 -0.5   3.668%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%  17.188%   2.775%   0.000%
   86    3.1  0.5 -0.5   0.003%   9.052%   0.000%   0.000%   0.000%   0.000%   9.066%   0.001%   0.000%   1.540%
   87    4.1  0.5 -0.5   0.005%  14.070%   0.000%   0.000%   0.000%   0.000%   0.546%   0.000%   0.000%  18.822%
   88    5.1  0.5 -0.5   1.337%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.268%   5.681%   0.000%
   89    6.1  0.5 -0.5   0.003%   7.790%   0.000%   0.000%   0.000%   0.000%   5.201%   0.000%   0.000%  16.782%
   90    7.1  0.5 -0.5   0.001%   3.426%   0.000%   0.000%   0.000%   0.000%   1.613%   0.000%   0.000%   2.153%
   91    8.1  0.5 -0.5   1.028%   0.000%  30.208%   1.017%   0.030%   0.000%   0.000%   0.838%   2.919%   0.000%
   92    9.1  0.5 -0.5  20.777%   0.007%   0.087%   0.003%  31.209%   0.000%   0.000%   2.047%   5.838%   0.000%
   93   10.1  0.5 -0.5  25.598%   0.008%   0.029%   0.001%  31.251%   0.000%   0.000%   0.955%   4.747%   0.000%
   94   11.1  0.5 -0.5   0.000%   1.092%   0.811%  24.089%   0.000%   6.432%   3.390%   0.000%   0.000%   1.657%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.717%  21.293%   0.000%   9.331%   8.466%   0.001%   0.000%   0.535%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.030%   0.890%   0.000%   3.567%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.044%   1.292%   0.000%   3.152%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   4.328%   0.146%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.000%   0.010%   0.000%   0.000%   0.013%   0.000%   0.007%   0.204%   0.000%   0.005%
    2    2.1  1.5  1.5   0.000%   0.327%   0.026%   0.013%   0.009%   0.000%   0.000%   0.002%   0.001%   0.082%
    3    3.1  1.5  1.5   0.000%   0.286%   0.025%   0.012%   0.014%   0.000%   0.001%   0.023%   0.001%   0.069%
    4    4.1  1.5  1.5   0.086%   0.000%   0.003%   0.006%   0.000%   0.010%   0.037%   0.001%   0.154%   0.001%
    5    5.1  1.5  1.5   0.036%   0.000%   0.011%   0.023%   0.001%   0.061%   0.112%   0.004%   0.012%   0.000%
    6    6.1  1.5  1.5   0.504%   0.001%   0.003%   0.006%   0.000%   0.006%   0.022%   0.001%   0.007%   0.000%
    7    7.1  1.5  1.5   0.041%   0.000%   0.012%   0.024%   0.001%   0.058%   0.105%   0.003%   0.019%   0.000%
    8    8.1  1.5  1.5   1.681%   0.002%   4.427%   9.090%   0.063%   6.082%   1.186%   0.040%  24.883%   0.193%
    9    9.1  1.5  1.5   0.001%   1.045%  10.558%   5.142%  38.810%   0.403%   0.676%  20.278%   0.014%   1.749%
   10   10.1  1.5  1.5  10.026%   0.013%   3.619%   7.430%   0.054%   5.157%   0.292%   0.010%   9.564%   0.074%
   11   11.1  1.5  1.5   0.000%   0.001%   0.002%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.008%
   12   12.1  1.5  1.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.001%   0.000%   0.015%   0.000%
   13   13.1  1.5  1.5   0.000%   0.001%   0.003%   0.001%   0.001%   0.000%   0.000%   0.002%   0.000%   0.006%
   14   14.1  1.5  1.5   0.000%   0.000%   0.001%   0.002%   0.000%   0.007%   0.011%   0.000%   0.000%   0.000%
   15   15.1  1.5  1.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%   0.003%   0.000%   0.000%   0.000%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.017%   0.000%   0.000%
   17   17.1  1.5  1.5   0.000%   0.000%   0.001%   0.003%   0.000%   0.006%   0.009%   0.000%   0.001%   0.000%
   18    1.1  1.5  0.5   0.163%   0.000%   0.013%   0.027%   0.000%   0.040%   0.014%   0.000%   0.088%   0.001%
   19    2.1  1.5  0.5   0.150%   0.000%   0.008%   0.015%   0.000%   0.022%   0.030%   0.001%   0.078%   0.001%
   20    3.1  1.5  0.5   0.206%   0.000%   0.005%   0.011%   0.000%   0.031%   0.033%   0.001%   0.059%   0.000%
   21    4.1  1.5  0.5   0.000%   0.003%   0.013%   0.006%   0.063%   0.001%   0.005%   0.138%   0.000%   0.007%
   22    5.1  1.5  0.5   0.000%   0.202%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.128%
   23    6.1  1.5  0.5   0.000%   0.084%   0.047%   0.023%   0.000%   0.000%   0.004%   0.112%   0.000%   0.025%
   24    7.1  1.5  0.5   0.000%   0.210%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.001%   0.123%
   25    8.1  1.5  0.5   0.001%   0.530%  30.244%  14.730%   0.566%   0.006%   0.742%  22.242%   0.003%   0.443%
   26    9.1  1.5  0.5  10.468%   0.014%   1.135%   2.331%   0.020%   1.891%   5.328%   0.178%  12.481%   0.097%
   27   10.1  1.5  0.5   0.008%   6.260%   1.947%   0.948%  38.233%   0.397%   0.279%   8.362%   0.078%   9.981%
   28   11.1  1.5  0.5   0.001%   0.000%   0.002%   0.003%   0.000%   0.000%   0.004%   0.000%   0.002%   0.000%
   29   12.1  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.006%   0.000%   0.000%   0.012%   0.000%   0.000%
   30   13.1  1.5  0.5   0.001%   0.000%   0.001%   0.001%   0.000%   0.003%   0.003%   0.000%   0.005%   0.000%
   31   14.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   32   15.1  1.5  0.5   0.000%   0.000%   0.005%   0.002%   0.000%   0.000%   0.000%   0.010%   0.000%   0.001%
   33   16.1  1.5  0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.006%   0.000%   0.000%   0.012%   0.000%
   34   17.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%
   35    1.1  1.5 -0.5   0.000%   0.163%   0.027%   0.013%   0.040%   0.000%   0.000%   0.014%   0.001%   0.088%
   36    2.1  1.5 -0.5   0.000%   0.150%   0.015%   0.008%   0.022%   0.000%   0.001%   0.030%   0.001%   0.078%
   37    3.1  1.5 -0.5   0.000%   0.206%   0.011%   0.005%   0.031%   0.000%   0.001%   0.033%   0.000%   0.059%
   38    4.1  1.5 -0.5   0.003%   0.000%   0.006%   0.013%   0.001%   0.063%   0.138%   0.005%   0.007%   0.000%
   39    5.1  1.5 -0.5   0.202%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.128%   0.001%
   40    6.1  1.5 -0.5   0.084%   0.000%   0.023%   0.047%   0.000%   0.000%   0.112%   0.004%   0.025%   0.000%
   41    7.1  1.5 -0.5   0.210%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.123%   0.001%
   42    8.1  1.5 -0.5   0.530%   0.001%  14.730%  30.244%   0.006%   0.566%  22.242%   0.742%   0.443%   0.003%
   43    9.1  1.5 -0.5   0.014%  10.468%   2.331%   1.135%   1.891%   0.020%   0.178%   5.328%   0.097%  12.481%
   44   10.1  1.5 -0.5   6.260%   0.008%   0.948%   1.947%   0.397%  38.233%   8.362%   0.279%   9.981%   0.078%
   45   11.1  1.5 -0.5   0.000%   0.001%   0.003%   0.002%   0.000%   0.000%   0.000%   0.004%   0.000%   0.002%
   46   12.1  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.006%   0.012%   0.000%   0.000%   0.000%
   47   13.1  1.5 -0.5   0.000%   0.001%   0.001%   0.001%   0.003%   0.000%   0.000%   0.003%   0.000%   0.005%
   48   14.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   49   15.1  1.5 -0.5   0.000%   0.000%   0.002%   0.005%   0.000%   0.000%   0.010%   0.000%   0.001%   0.000%
   50   16.1  1.5 -0.5   0.000%   0.000%   0.001%   0.001%   0.006%   0.000%   0.000%   0.000%   0.000%   0.012%
   51   17.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.012%   0.000%
   52    1.1  1.5 -1.5   0.010%   0.000%   0.000%   0.000%   0.000%   0.013%   0.204%   0.007%   0.005%   0.000%
   53    2.1  1.5 -1.5   0.327%   0.000%   0.013%   0.026%   0.000%   0.009%   0.002%   0.000%   0.082%   0.001%
   54    3.1  1.5 -1.5   0.286%   0.000%   0.012%   0.025%   0.000%   0.014%   0.023%   0.001%   0.069%   0.001%
   55    4.1  1.5 -1.5   0.000%   0.086%   0.006%   0.003%   0.010%   0.000%   0.001%   0.037%   0.001%   0.154%
   56    5.1  1.5 -1.5   0.000%   0.036%   0.023%   0.011%   0.061%   0.001%   0.004%   0.112%   0.000%   0.012%
   57    6.1  1.5 -1.5   0.001%   0.504%   0.006%   0.003%   0.006%   0.000%   0.001%   0.022%   0.000%   0.007%
   58    7.1  1.5 -1.5   0.000%   0.041%   0.024%   0.012%   0.058%   0.001%   0.003%   0.105%   0.000%   0.019%
   59    8.1  1.5 -1.5   0.002%   1.681%   9.090%   4.427%   6.082%   0.063%   0.040%   1.186%   0.193%  24.883%
   60    9.1  1.5 -1.5   1.045%   0.001%   5.142%  10.558%   0.403%  38.810%  20.278%   0.676%   1.749%   0.014%
   61   10.1  1.5 -1.5   0.013%  10.026%   7.430%   3.619%   5.157%   0.054%   0.010%   0.292%   0.074%   9.564%
   62   11.1  1.5 -1.5   0.001%   0.000%   0.001%   0.002%   0.000%   0.000%   0.001%   0.000%   0.008%   0.000%
   63   12.1  1.5 -1.5   0.000%   0.000%   0.001%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.015%
   64   13.1  1.5 -1.5   0.001%   0.000%   0.001%   0.003%   0.000%   0.001%   0.002%   0.000%   0.006%   0.000%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.002%   0.001%   0.007%   0.000%   0.000%   0.011%   0.000%   0.000%
   66   15.1  1.5 -1.5   0.000%   0.001%   0.000%   0.000%   0.001%   0.000%   0.000%   0.003%   0.000%   0.000%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.017%   0.001%   0.000%   0.000%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.003%   0.001%   0.006%   0.000%   0.000%   0.009%   0.000%   0.001%
   69    1.1  0.5  0.5   0.027%   0.000%   0.002%   0.003%   0.000%   0.002%   1.753%   0.058%   0.848%   0.007%
   70    2.1  0.5  0.5   2.294%   0.003%   0.000%   0.001%   0.000%   0.000%   2.226%   0.074%   0.083%   0.001%
   71    3.1  0.5  0.5   0.016%  11.634%   0.005%   0.003%   0.001%   0.000%   0.029%   0.866%   0.002%   0.194%
   72    4.1  0.5  0.5   0.004%   2.880%   0.002%   0.001%   0.001%   0.000%   0.000%   0.000%   0.016%   2.078%
   73    5.1  0.5  0.5  16.285%   0.022%   0.001%   0.001%   0.000%   0.000%   0.078%   0.003%   0.891%   0.007%
   74    6.1  0.5  0.5   0.000%   0.271%   0.000%   0.000%   0.000%   0.000%   0.033%   0.975%   0.012%   1.561%
   75    7.1  0.5  0.5   0.025%  18.468%   0.000%   0.000%   0.000%   0.000%   0.005%   0.139%   0.004%   0.543%
   76    8.1  0.5  0.5   5.714%   0.008%   0.601%   1.234%   0.010%   0.921%   2.839%   0.095%   6.717%   0.052%
   77    9.1  0.5  0.5   1.535%   0.002%   0.453%   0.930%   0.019%   1.867%   2.066%   0.069%  12.658%   0.098%
   78   10.1  0.5  0.5   3.737%   0.005%   0.254%   0.521%   0.025%   2.360%   3.559%   0.119%   6.467%   0.050%
   79   11.1  0.5  0.5   0.006%   4.333%   2.047%   0.997%   0.001%   0.000%   0.197%   5.896%   0.053%   6.848%
   80   12.1  0.5  0.5   0.000%   0.365%   0.649%   0.316%   2.707%   0.028%   0.593%  17.777%   0.002%   0.306%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.004%   0.002%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.002%   0.003%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.027%   0.003%   0.002%   0.002%   0.000%   0.058%   1.753%   0.007%   0.848%
   85    2.1  0.5 -0.5   0.003%   2.294%   0.001%   0.000%   0.000%   0.000%   0.074%   2.226%   0.001%   0.083%
   86    3.1  0.5 -0.5  11.634%   0.016%   0.003%   0.005%   0.000%   0.001%   0.866%   0.029%   0.194%   0.002%
   87    4.1  0.5 -0.5   2.880%   0.004%   0.001%   0.002%   0.000%   0.001%   0.000%   0.000%   2.078%   0.016%
   88    5.1  0.5 -0.5   0.022%  16.285%   0.001%   0.001%   0.000%   0.000%   0.003%   0.078%   0.007%   0.891%
   89    6.1  0.5 -0.5   0.271%   0.000%   0.000%   0.000%   0.000%   0.000%   0.975%   0.033%   1.561%   0.012%
   90    7.1  0.5 -0.5  18.468%   0.025%   0.000%   0.000%   0.000%   0.000%   0.139%   0.005%   0.543%   0.004%
   91    8.1  0.5 -0.5   0.008%   5.714%   1.234%   0.601%   0.921%   0.010%   0.095%   2.839%   0.052%   6.717%
   92    9.1  0.5 -0.5   0.002%   1.535%   0.930%   0.453%   1.867%   0.019%   0.069%   2.066%   0.098%  12.658%
   93   10.1  0.5 -0.5   0.005%   3.737%   0.521%   0.254%   2.360%   0.025%   0.119%   3.559%   0.050%   6.467%
   94   11.1  0.5 -0.5   4.333%   0.006%   0.997%   2.047%   0.000%   0.001%   5.896%   0.197%   6.848%   0.053%
   95   12.1  0.5 -0.5   0.365%   0.000%   0.316%   0.649%   0.028%   2.707%  17.777%   0.593%   0.306%   0.002%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.002%   0.004%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.003%   0.002%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      61       62       63       64       65       66       67       68       69       70

    1    1.1  1.5  1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.012%   0.086%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.011%   0.076%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.017%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.009%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.164%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.010%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   4.549%   0.662%   0.038%  24.734%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.156%   1.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5  21.674%   3.153%   0.038%  24.912%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   0.001%   0.007%   0.000%   0.000%   0.352%   8.519%   0.130%   0.110%   2.233%   0.014%
   12   12.1  1.5  1.5   0.002%   0.000%   0.000%   0.000%   4.684%   0.193%   7.371%   8.664%   0.017%   2.644%
   13   13.1  1.5  1.5   0.001%   0.007%   0.000%   0.000%   0.335%   8.124%   0.043%   0.036%   6.198%   0.039%
   14   14.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.020%   0.001%   0.772%   0.907%   0.007%   1.085%
   15   15.1  1.5  1.5   0.014%   0.002%   0.000%   0.000%  14.198%   0.586%   0.602%   0.708%   0.022%   3.423%
   16   16.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.051%   1.238%   5.506%   4.684%   8.886%   0.056%
   17   17.1  1.5  1.5   0.002%   0.000%   0.000%   0.000%   0.011%   0.000%   0.014%   0.016%   0.000%   0.000%
   18    1.1  1.5  0.5   0.043%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.068%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.080%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.013%   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.003%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.013%   0.091%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.082%   0.561%   8.242%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5  16.008%   2.329%   0.051%  33.166%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   1.187%   8.162%   8.311%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.009%   0.001%   0.000%   0.000%   6.434%   0.266%   0.935%   1.099%   0.134%  21.187%
   29   12.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.828%  20.051%  12.391%  10.542%   0.241%   0.002%
   30   13.1  1.5  0.5   0.007%   0.001%   0.000%   0.000%  24.236%   1.000%   0.777%   0.914%   0.026%   4.067%
   31   14.1  1.5  0.5   0.001%   0.007%   0.000%   0.000%   0.231%   5.591%   4.072%   3.465%   1.404%   0.009%
   32   15.1  1.5  0.5   0.000%   0.002%   0.000%   0.000%   0.062%   1.513%   0.004%   0.004%  41.453%   0.262%
   33   16.1  1.5  0.5   0.001%   0.000%   0.000%   0.000%   1.177%   0.049%  16.613%  19.526%   0.041%   6.531%
   34   17.1  1.5  0.5   0.001%   0.007%   0.000%   0.000%   0.010%   0.241%   0.052%   0.044%   0.020%   0.000%
   35    1.1  1.5 -0.5   0.006%   0.043%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.010%   0.068%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.012%   0.080%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.089%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.019%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.091%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.561%   0.082%   0.013%   8.242%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   2.329%  16.008%  33.166%   0.051%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   8.162%   1.187%   0.013%   8.311%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.001%   0.009%   0.000%   0.000%   0.266%   6.434%   1.099%   0.935%  21.187%   0.134%
   46   12.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%  20.051%   0.828%  10.542%  12.391%   0.002%   0.241%
   47   13.1  1.5 -0.5   0.001%   0.007%   0.000%   0.000%   1.000%  24.236%   0.914%   0.777%   4.067%   0.026%
   48   14.1  1.5 -0.5   0.007%   0.001%   0.000%   0.000%   5.591%   0.231%   3.465%   4.072%   0.009%   1.404%
   49   15.1  1.5 -0.5   0.002%   0.000%   0.000%   0.000%   1.513%   0.062%   0.004%   0.004%   0.262%  41.453%
   50   16.1  1.5 -0.5   0.000%   0.001%   0.000%   0.000%   0.049%   1.177%  19.526%  16.613%   6.531%   0.041%
   51   17.1  1.5 -0.5   0.007%   0.001%   0.000%   0.000%   0.241%   0.010%   0.044%   0.052%   0.000%   0.020%
   52    1.1  1.5 -1.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.086%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.076%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.003%   0.017%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.001%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.024%   0.164%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.001%   0.010%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.662%   4.549%  24.734%   0.038%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   1.072%   0.156%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   3.153%  21.674%  24.912%   0.038%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.007%   0.001%   0.000%   0.000%   8.519%   0.352%   0.110%   0.130%   0.014%   2.233%
   63   12.1  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.193%   4.684%   8.664%   7.371%   2.644%   0.017%
   64   13.1  1.5 -1.5   0.007%   0.001%   0.000%   0.000%   8.124%   0.335%   0.036%   0.043%   0.039%   6.198%
   65   14.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.020%   0.907%   0.772%   1.085%   0.007%
   66   15.1  1.5 -1.5   0.002%   0.014%   0.000%   0.000%   0.586%  14.198%   0.708%   0.602%   3.423%   0.022%
   67   16.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   1.238%   0.051%   4.684%   5.506%   0.056%   8.886%
   68   17.1  1.5 -1.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.011%   0.016%   0.014%   0.000%   0.000%
   69    1.1  0.5  0.5   0.004%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.256%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.201%   1.379%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.074%   0.507%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   1.481%   0.216%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.013%   0.086%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.252%   1.733%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   9.316%   1.355%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   4.340%   0.631%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   8.544%   1.243%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.897%   6.167%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   80   12.1  0.5  0.5   0.093%   0.641%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.001%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.037%   0.256%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   1.379%   0.201%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.507%   0.074%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.216%   1.481%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.086%   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   1.733%   0.252%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   1.355%   9.316%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.631%   4.340%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5   1.243%   8.544%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   94   11.1  0.5 -0.5   6.167%   0.897%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.641%   0.093%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.161%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      71       72       73       74       75       76       77       78       79       80

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.003%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.002%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.035%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.035%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.080%   0.000%   0.007%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.021%   0.000%   0.240%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.080%   0.000%   0.007%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5  19.485%   1.114%   0.000%   0.152%   0.000%   0.011%   0.000%   0.005%   0.023%   6.961%
   12   12.1  1.5  1.5   0.135%   2.361%   1.189%   0.000%   0.006%   0.000%   0.003%   0.000%  33.257%   0.108%
   13   13.1  1.5  1.5  19.834%   1.134%   0.000%   0.000%   0.000%   0.019%   0.000%   0.002%   0.044%  13.478%
   14   14.1  1.5  1.5   0.023%   0.394%  46.973%   0.000%   0.005%   0.000%   0.035%   0.000%   0.009%   0.000%
   15   15.1  1.5  1.5   0.397%   6.945%   0.259%   0.000%   0.009%   0.000%   0.000%   0.000%   0.879%   0.003%
   16   16.1  1.5  1.5   6.528%   0.373%   0.000%   0.116%   0.000%   0.008%   0.000%   0.001%   0.003%   0.910%
   17   17.1  1.5  1.5   0.000%   0.000%  50.141%   0.000%   0.002%   0.000%   0.038%   0.000%   0.696%   0.002%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.017%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%   0.002%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.016%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.144%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.027%   0.000%   0.002%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.169%   0.000%   0.034%   0.000%   0.000%
   28   11.1  1.5  0.5   0.477%   8.342%   0.486%   0.000%   0.005%   0.000%   0.021%   0.000%  13.319%   0.043%
   29   12.1  1.5  0.5   0.042%   0.002%   0.000%   0.093%   0.000%   0.030%   0.000%   0.002%   0.019%   5.807%
   30   13.1  1.5  0.5   0.254%   4.447%   0.004%   0.000%   0.002%   0.000%   0.019%   0.000%   0.050%   0.000%
   31   14.1  1.5  0.5   6.151%   0.352%   0.000%   0.013%   0.000%   0.001%   0.000%   0.000%   0.049%  15.073%
   32   15.1  1.5  0.5   0.430%   0.025%   0.000%   0.514%   0.000%   0.015%   0.000%   0.017%   0.029%   8.930%
   33   16.1  1.5  0.5   0.002%   0.041%   0.002%   0.000%   0.031%   0.000%   0.001%   0.000%   0.201%   0.001%
   34   17.1  1.5  0.5  19.590%   1.120%   0.000%   0.059%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.017%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.028%   0.000%   0.002%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%   0.016%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.059%   0.000%   0.144%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.027%   0.000%   0.002%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.169%   0.000%   0.034%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   8.342%   0.477%   0.000%   0.486%   0.000%   0.005%   0.000%   0.021%   0.043%  13.319%
   46   12.1  1.5 -0.5   0.002%   0.042%   0.093%   0.000%   0.030%   0.000%   0.002%   0.000%   5.807%   0.019%
   47   13.1  1.5 -0.5   4.447%   0.254%   0.000%   0.004%   0.000%   0.002%   0.000%   0.019%   0.000%   0.050%
   48   14.1  1.5 -0.5   0.352%   6.151%   0.013%   0.000%   0.001%   0.000%   0.000%   0.000%  15.073%   0.049%
   49   15.1  1.5 -0.5   0.025%   0.430%   0.514%   0.000%   0.015%   0.000%   0.017%   0.000%   8.930%   0.029%
   50   16.1  1.5 -0.5   0.041%   0.002%   0.000%   0.002%   0.000%   0.031%   0.000%   0.001%   0.001%   0.201%
   51   17.1  1.5 -0.5   1.120%  19.590%   0.059%   0.000%   0.000%   0.000%   0.000%   0.000%   0.100%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.002%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.003%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.017%   0.000%   0.002%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   0.035%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   0.001%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.035%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.080%   0.000%   0.007%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.021%   0.000%   0.240%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.080%   0.000%   0.007%   0.000%   0.000%
   62   11.1  1.5 -1.5   1.114%  19.485%   0.152%   0.000%   0.011%   0.000%   0.005%   0.000%   6.961%   0.023%
   63   12.1  1.5 -1.5   2.361%   0.135%   0.000%   1.189%   0.000%   0.006%   0.000%   0.003%   0.108%  33.257%
   64   13.1  1.5 -1.5   1.134%  19.834%   0.000%   0.000%   0.019%   0.000%   0.002%   0.000%  13.478%   0.044%
   65   14.1  1.5 -1.5   0.394%   0.023%   0.000%  46.973%   0.000%   0.005%   0.000%   0.035%   0.000%   0.009%
   66   15.1  1.5 -1.5   6.945%   0.397%   0.000%   0.259%   0.000%   0.009%   0.000%   0.000%   0.003%   0.879%
   67   16.1  1.5 -1.5   0.373%   6.528%   0.116%   0.000%   0.008%   0.000%   0.001%   0.000%   0.910%   0.003%
   68   17.1  1.5 -1.5   0.000%   0.000%   0.000%  50.141%   0.000%   0.002%   0.000%   0.038%   0.002%   0.696%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   2.256%   0.000%   0.234%   0.000%   0.000%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.202%   0.000%   2.287%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.234%   0.000%   2.256%   0.000%   0.000%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   1.176%   0.000%   1.311%   0.000%   0.000%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   2.353%   0.000%   0.134%   0.000%   0.000%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%  32.713%   0.000%  29.334%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   3.353%   0.000%  58.692%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%  57.001%   0.000%   5.040%   0.000%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   2.256%   0.000%   0.234%   0.000%   0.000%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.202%   0.000%   2.287%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.234%   0.000%   2.256%   0.000%   0.000%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   1.176%   0.000%   1.311%   0.000%   0.000%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   2.353%   0.000%   0.134%   0.000%   0.000%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%  32.713%   0.000%  29.334%   0.000%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   3.353%   0.000%  58.692%   0.000%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%  57.001%   0.000%   5.040%   0.000%   0.000%

   Nr   State  S   Sz      81       82       83       84       85       86       87       88       89       90

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.121%   0.001%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.121%   0.000%   0.000%
   11   11.1  1.5  1.5   0.005%  19.334%   0.000%   3.774%   0.000%   4.271%   0.000%   0.000%   0.003%  13.755%
   12   12.1  1.5  1.5   2.665%   0.001%   0.045%   0.000%   6.050%   0.000%   0.000%   0.000%  19.435%   0.005%
   13   13.1  1.5  1.5   0.001%   2.224%   0.000%   0.023%   0.000%  12.780%   0.000%   0.000%   0.005%  21.298%
   14   14.1  1.5  1.5   4.501%   0.001%   0.785%   0.000%   0.187%   0.000%   0.000%   0.000%   0.672%   0.000%
   15   15.1  1.5  1.5   2.173%   0.001%  26.188%   0.002%  13.032%   0.000%   0.000%   0.000%  18.224%   0.004%
   16   16.1  1.5  1.5   0.004%  17.729%   0.001%  20.272%   0.000%   2.886%   0.000%   0.000%   0.002%   7.613%
   17   17.1  1.5  1.5   4.308%   0.001%   0.047%   0.000%   0.288%   0.000%   0.000%   0.000%   0.110%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%   0.000%   0.002%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%   0.005%   0.000%
   27   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.000%   0.000%   0.001%
   28   11.1  1.5  0.5   6.031%   0.001%   2.327%   0.000%   1.057%   0.000%   0.000%   0.000%   4.842%   0.001%
   29   12.1  1.5  0.5   0.000%   0.179%   0.001%   8.948%   0.000%   0.068%   0.000%   0.000%   0.000%   1.152%
   30   13.1  1.5  0.5  24.772%   0.006%   0.259%   0.000%   3.499%   0.000%   0.000%   0.000%   0.079%   0.000%
   31   14.1  1.5  0.5   0.003%  12.990%   0.001%  20.562%   0.000%   2.987%   0.000%   0.000%   0.000%   0.007%
   32   15.1  1.5  0.5   0.000%   0.001%   0.000%   5.749%   0.000%   0.151%   0.000%   0.000%   0.000%   0.363%
   33   16.1  1.5  0.5   2.911%   0.001%  10.855%   0.001%   1.370%   0.000%   0.000%   0.000%  12.196%   0.003%
   34   17.1  1.5  0.5   0.000%   0.151%   0.000%   0.154%   0.000%  51.366%   0.000%   0.000%   0.000%   0.094%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.002%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%   0.000%   0.000%   0.005%
   44   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.040%   0.001%   0.000%
   45   11.1  1.5 -0.5   0.001%   6.031%   0.000%   2.327%   0.000%   1.057%   0.000%   0.000%   0.001%   4.842%
   46   12.1  1.5 -0.5   0.179%   0.000%   8.948%   0.001%   0.068%   0.000%   0.000%   0.000%   1.152%   0.000%
   47   13.1  1.5 -0.5   0.006%  24.772%   0.000%   0.259%   0.000%   3.499%   0.000%   0.000%   0.000%   0.079%
   48   14.1  1.5 -0.5  12.990%   0.003%  20.562%   0.001%   2.987%   0.000%   0.000%   0.000%   0.007%   0.000%
   49   15.1  1.5 -0.5   0.001%   0.000%   5.749%   0.000%   0.151%   0.000%   0.000%   0.000%   0.363%   0.000%
   50   16.1  1.5 -0.5   0.001%   2.911%   0.001%  10.855%   0.000%   1.370%   0.000%   0.000%   0.003%  12.196%
   51   17.1  1.5 -0.5   0.151%   0.000%   0.154%   0.000%  51.366%   0.000%   0.000%   0.000%   0.094%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.121%   0.000%   0.000%   0.001%
   60    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.121%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5  19.334%   0.005%   3.774%   0.000%   4.271%   0.000%   0.000%   0.000%  13.755%   0.003%
   63   12.1  1.5 -1.5   0.001%   2.665%   0.000%   0.045%   0.000%   6.050%   0.000%   0.000%   0.005%  19.435%
   64   13.1  1.5 -1.5   2.224%   0.001%   0.023%   0.000%  12.780%   0.000%   0.000%   0.000%  21.298%   0.005%
   65   14.1  1.5 -1.5   0.001%   4.501%   0.000%   0.785%   0.000%   0.187%   0.000%   0.000%   0.000%   0.672%
   66   15.1  1.5 -1.5   0.001%   2.173%   0.002%  26.188%   0.000%  13.032%   0.000%   0.000%   0.004%  18.224%
   67   16.1  1.5 -1.5  17.729%   0.004%  20.272%   0.001%   2.886%   0.000%   0.000%   0.000%   7.613%   0.002%
   68   17.1  1.5 -1.5   0.001%   4.308%   0.000%   0.047%   0.000%   0.288%   0.000%   0.000%   0.000%   0.110%
   69    1.1  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.075%   0.000%
   77    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   78   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   79   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%
   80   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.167%   0.002%   0.000%   0.000%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.170%   0.002%   0.000%   0.000%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  33.173%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.002%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.075%
   92    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   93   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   94   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.029%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  33.167%   0.000%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%  33.170%   0.000%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  33.173%   0.002%   0.000%   0.000%

   Nr   State  S   Sz      91       92       93       94       95       96       97       98

    1    1.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   10   10.1  1.5  1.5   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%
   11   11.1  1.5  1.5   8.585%   0.000%   0.000%   0.353%   9.535%   0.000%   0.000%   1.222%
   12   12.1  1.5  1.5   0.000%   0.048%   4.936%   0.001%   0.000%   5.372%   0.764%   0.000%
   13   13.1  1.5  1.5   0.075%   0.000%   0.000%   0.020%  14.182%   0.000%   0.000%   0.045%
   14   14.1  1.5  1.5   0.000%  14.985%   0.509%   0.000%   0.000%   0.396%  27.655%   0.000%
   15   15.1  1.5  1.5   0.000%   0.129%   6.122%   0.001%   0.000%   5.771%   0.276%   0.000%
   16   16.1  1.5  1.5  15.452%   0.000%   0.000%   1.319%   4.660%   0.000%   0.000%   1.652%
   17   17.1  1.5  1.5   0.000%  15.543%   0.513%   0.000%   0.000%   0.000%  28.188%   0.000%
   18    1.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   19    2.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   20    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   21    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   22    5.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   23    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   24    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   25    8.1  1.5  0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   26    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   27   10.1  1.5  0.5   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   28   11.1  1.5  0.5   0.000%   0.253%  14.978%   0.002%   0.000%   6.831%  10.865%   0.000%
   29   12.1  1.5  0.5  17.069%   0.000%   0.000%   0.145%  17.799%   0.000%   0.000%   4.518%
   30   13.1  1.5  0.5   0.000%   8.355%  12.962%   0.001%   0.000%   0.045%  14.165%   0.000%
   31   14.1  1.5  0.5   0.538%   0.000%   0.003%  26.019%   0.351%   0.000%   0.000%   0.089%
   32   15.1  1.5  0.5  17.815%   0.000%   0.000%   0.167%  15.703%   0.000%   0.000%   6.720%
   33   16.1  1.5  0.5   0.000%   0.394%   5.827%   0.001%   0.000%  18.764%   3.390%   0.000%
   34   17.1  1.5  0.5   0.620%   0.000%   0.003%  25.985%   0.244%   0.000%   0.000%   0.105%
   35    1.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%
   36    2.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   37    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   38    4.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   39    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   41    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    8.1  1.5 -0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44   10.1  1.5 -0.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45   11.1  1.5 -0.5   0.253%   0.000%   0.002%  14.978%   6.831%   0.000%   0.000%  10.865%
   46   12.1  1.5 -0.5   0.000%  17.069%   0.145%   0.000%   0.000%  17.799%   4.518%   0.000%
   47   13.1  1.5 -0.5   8.355%   0.000%   0.001%  12.962%   0.045%   0.000%   0.000%  14.165%
   48   14.1  1.5 -0.5   0.000%   0.538%  26.019%   0.003%   0.000%   0.351%   0.089%   0.000%
   49   15.1  1.5 -0.5   0.000%  17.815%   0.167%   0.000%   0.000%  15.703%   6.720%   0.000%
   50   16.1  1.5 -0.5   0.394%   0.000%   0.001%   5.827%  18.764%   0.000%   0.000%   3.390%
   51   17.1  1.5 -0.5   0.000%   0.620%  25.985%   0.003%   0.000%   0.244%   0.105%   0.000%
   52    1.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    2.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   54    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%
   55    4.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   57    6.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   59    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
   60    9.1  1.5 -1.5   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   61   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%
   62   11.1  1.5 -1.5   0.000%   8.585%   0.353%   0.000%   0.000%   9.535%   1.222%   0.000%
   63   12.1  1.5 -1.5   0.048%   0.000%   0.001%   4.936%   5.372%   0.000%   0.000%   0.764%
   64   13.1  1.5 -1.5   0.000%   0.075%   0.020%   0.000%   0.000%  14.182%   0.045%   0.000%
   65   14.1  1.5 -1.5  14.985%   0.000%   0.000%   0.509%   0.396%   0.000%   0.000%  27.655%
   66   15.1  1.5 -1.5   0.129%   0.000%   0.001%   6.122%   5.771%   0.000%   0.000%   0.276%
   67   16.1  1.5 -1.5   0.000%  15.452%   1.319%   0.000%   0.000%   4.660%   1.652%   0.000%
   68   17.1  1.5 -1.5  15.543%   0.000%   0.000%   0.513%   0.000%   0.000%   0.000%  28.188%
   69    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   70    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   71    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   72    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   73    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   74    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   75    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   76    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.109%   0.001%   0.000%
   77    9.1  0.5  0.5   0.000%   0.002%   0.074%   0.000%   0.000%   0.000%   0.109%   0.000%
   78   10.1  0.5  0.5   0.000%   0.029%   0.046%   0.000%   0.000%   0.001%   0.109%   0.000%
   79   11.1  0.5  0.5   0.051%   0.000%   0.000%   0.003%   0.077%   0.000%   0.000%   0.033%
   80   12.1  0.5  0.5   0.043%   0.000%   0.000%   0.004%   0.087%   0.000%   0.000%   0.022%
   81   13.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.000%   0.031%
   82   14.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.009%   0.000%   0.000%   0.035%
   83   15.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%   0.000%
   84    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   85    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   86    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   87    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   88    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   89    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   90    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   91    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.109%   0.000%   0.000%   0.001%
   92    9.1  0.5 -0.5   0.002%   0.000%   0.000%   0.074%   0.000%   0.000%   0.000%   0.109%
   93   10.1  0.5 -0.5   0.029%   0.000%   0.000%   0.046%   0.001%   0.000%   0.000%   0.109%
   94   11.1  0.5 -0.5   0.000%   0.051%   0.003%   0.000%   0.000%   0.077%   0.033%   0.000%
   95   12.1  0.5 -0.5   0.000%   0.043%   0.004%   0.000%   0.000%   0.087%   0.022%   0.000%
   96   13.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.031%   0.000%
   97   14.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.009%   0.035%   0.000%
   98   15.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%   0.000%   0.000%


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
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      742.49       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *     28783.64  24418.09   2482.49   1879.58      2.75      0.51
 REAL TIME  *     29654.77 SEC
 DISK USED  *       774.66 MB (local),        9.13 GB (total)
 SF USED    *         3.88 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.950729095387

              CI              CI           MULTI
   -109.90313481   -109.89154805   -109.33358914
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
