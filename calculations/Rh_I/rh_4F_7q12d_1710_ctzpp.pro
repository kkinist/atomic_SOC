
 Working directory              : /wrk/irikura/molpro.EhUKkpS42y/
 Global scratch directory       : /wrk/irikura/molpro.EhUKkpS42y/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.EhUKkpS42y/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! Heavy weight on 4F
                                                                                 ! 4F + 2F,2D
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,7;
         weight,all,99
     wf,nelec=17,sym=1,spin=1; state,12;
         weight,all,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,7;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,12;save,5101.2}
 hlsdiag(8) = energd4
 
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
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 15-Feb-24          TIME: 11:24:50  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  30000 MW

 GA preallocation disabled
 GA check disabled

 Variable memory set to 1000.0 MW


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

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.10 SEC, REAL TIME:     0.12 SEC
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
 CPU TIMES  *         1.44      1.10
 REAL TIME  *         2.60 SEC
 DISK USED  *        29.10 MB (local),     1002.23 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:             7
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.285D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.294D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.324D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.318D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 3 5 1 4 6 2 5 3 2   6 4 3 5 1 711 91415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14043   0.14043   0.14043   0.14043   0.14043   0.14043   0.14043
 Weight factors for state symmetry  2:    0.00142   0.00142   0.00142   0.00142   0.00142   0.00142   0.00142   0.00142
                                          0.00142   0.00142   0.00142   0.00142
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3617
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.36721703    -109.38084554   -0.01362851    0.19683765 0.00013327 0.00000000  0.13E+00      0.33
   2    2    4    0   -109.38055272    -109.38056637   -0.00001366    0.00587332 0.00001473 0.00000000  0.42E-02      0.58
   3   20   40    0   -109.38056638    -109.38056638   -0.00000000    0.00000675 0.00000018 0.00000000  0.50E-05      2.16

 CONVERGENCE REACHED!  Final gradient:    0.00000027 ( 0.27E-06)
                       Final energy:   -109.38056638
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.381199857318
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281224
 One electron energy                          -193.55965066
 Two electron energy                            84.17845080
 Virial ratio                                    3.66895300
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.381199854969
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281244
 One electron energy                          -193.55965095
 Two electron energy                            84.17845109
 Virial ratio                                    3.66895299
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.381199854526
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281237
 One electron energy                          -193.55965085
 Two electron energy                            84.17845099
 Virial ratio                                    3.66895300
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.381199849017
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281275
 One electron energy                          -193.55965139
 Two electron energy                            84.17845154
 Virial ratio                                    3.66895297
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.381199848962
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281277
 One electron energy                          -193.55965141
 Two electron energy                            84.17845156
 Virial ratio                                    3.66895297
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.381199847122
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281259
 One electron energy                          -193.55965115
 Two electron energy                            84.17845130
 Virial ratio                                    3.66895298
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.381199847102
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98281259
 One electron energy                          -193.55965116
 Two electron energy                            84.17845131
 Virial ratio                                    3.66895298
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.351364944349
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96559994
 One electron energy                          -193.53000762
 Two electron energy                            84.17864267
 Virial ratio                                    3.66934611
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.351364940046
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560007
 One electron energy                          -193.53000780
 Two electron energy                            84.17864286
 Virial ratio                                    3.66934610
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.351364939565
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560013
 One electron energy                          -193.53000789
 Two electron energy                            84.17864295
 Virial ratio                                    3.66934610
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.351364930500
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560029
 One electron energy                          -193.53000810
 Two electron energy                            84.17864317
 Virial ratio                                    3.66934609
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.351364930381
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560030
 One electron energy                          -193.53000811
 Two electron energy                            84.17864318
 Virial ratio                                    3.66934609
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.351364929952
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560045
 One electron energy                          -193.53000834
 Two electron energy                            84.17864341
 Virial ratio                                    3.66934608
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.351364929697
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96560047
 One electron energy                          -193.53000836
 Two electron energy                            84.17864343
 Virial ratio                                    3.66934608
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333649695091
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06285466
 One electron energy                          -193.69010233
 Two electron energy                            84.35645263
 Virial ratio                                    3.66259252
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333649695034
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06285466
 One electron energy                          -193.69010233
 Two electron energy                            84.35645263
 Virial ratio                                    3.66259252
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333649692422
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06285486
 One electron energy                          -193.69010267
 Two electron energy                            84.35645298
 Virial ratio                                    3.66259251
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333649691825
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06285486
 One electron energy                          -193.69010269
 Two electron energy                            84.35645300
 Virial ratio                                    3.66259251
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333649689484
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06285509
 One electron energy                          -193.69010300
 Two electron energy                            84.35645331
 Virial ratio                                    3.66259249
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     6.666254580809
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     8.902475924122
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     3.004946269756
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.333760206716
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     3.999999995597
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     0.995043513742
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     1.097520229331
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     6.348104224032
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.184281710223
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     8.994282390355
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     0.815701588971
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     1.005717777297
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     3.651891406327
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.999999922722
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     0.563481287364
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000000001
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     1.000000143554
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     3.999999721444
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     3.436503191356
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     5.302504516740
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     1.937194547520
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     7.846080518502
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.697479263862
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     3.999999997384
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     2.153936795111
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     2.062812547995
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     5.643606651392
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     7.528842909032
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     1.604215094807
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     2.471189609094
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     2.395780491286
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     4.356397919190
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.999999975574
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     1.513140906119
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000000000001
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     3.999999846835
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000279848
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     2.486880732968
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     0.031240902451
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     1.160329528358
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     1.148973211743
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     3.968760529422
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     4.000000007020
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     8.851019691147
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     8.839667222675
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     0.008289124575
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     1.286875380745
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     1.401502514838
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     8.713108801936
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     8.598501731418
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     3.991710674484
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     4.000000101704
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.923377806517
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     4.000000000000
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000009612
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     0.999999998709
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     0.076616075677
 
 !MCSCF expec      <1.1 Quartet|L**2|1.1 Quartet>    12.000000000000
 !MCSCF expec      <2.1 Quartet|L**2|2.1 Quartet>    12.000000000000
 !MCSCF expec      <3.1 Quartet|L**2|3.1 Quartet>    12.000000000000
 !MCSCF expec      <4.1 Quartet|L**2|4.1 Quartet>    12.000000000001
 !MCSCF expec      <5.1 Quartet|L**2|5.1 Quartet>    12.000000000001
 !MCSCF expec      <6.1 Quartet|L**2|6.1 Quartet>    12.000000000001
 !MCSCF expec      <7.1 Quartet|L**2|7.1 Quartet>    12.000000000001
 !MCSCF expec      <1.1 Doublet|L**2|1.1 Doublet>    11.999999999999
 !MCSCF expec      <2.1 Doublet|L**2|2.1 Doublet>    12.000000000000
 !MCSCF expec      <3.1 Doublet|L**2|3.1 Doublet>    12.000000000000
 !MCSCF expec      <4.1 Doublet|L**2|4.1 Doublet>    12.000000000001
 !MCSCF expec      <5.1 Doublet|L**2|5.1 Doublet>    12.000000000001
 !MCSCF expec      <6.1 Doublet|L**2|6.1 Doublet>    12.000000000001
 !MCSCF expec      <7.1 Doublet|L**2|7.1 Doublet>    12.000000000001
 !MCSCF expec      <8.1 Doublet|L**2|8.1 Doublet>     6.000000000001
 !MCSCF expec      <9.1 Doublet|L**2|9.1 Doublet>     6.000000000001
 !MCSCF expec    <10.1 Doublet|L**2|10.1 Doublet>     6.000000000001
 !MCSCF expec    <11.1 Doublet|L**2|11.1 Doublet>     6.000000000001
 !MCSCF expec    <12.1 Doublet|L**2|12.1 Doublet>     6.000000000001
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 5 2 3 4 1 1 6 2   4 5 3 1 6 2 4 5 3 6   2 4 5 3 1 9 7 81310  14151211 4 3 2 5 6 1
                                       1310 9 81415 71211 4   3 2 5 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 3 2 1 3 2 1 3   2 1 510 9 7 6 8 4 3   1 210 5 8 6 4 7 9 1   2 3 9 7 4 8 610 5 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.71988     1  1  s    1.00198
    2.1     1.60004    -0.30303     1  1  d1-  1.00365
    3.1     1.60004    -0.30303     1  1  d2+  1.00365
    4.1     1.60004    -0.30303     1  1  d0   1.00365
    5.1     1.60004    -0.30303     1  1  d2-  1.00365
    6.1     1.60004    -0.30303     1  1  d1+  1.00365
    7.1     0.99984    -0.09900     1  2  s    0.95058
    1.2     1.99999    -2.34985     1  1  py   1.00016
    2.2     1.99999    -2.34985     1  1  pz   1.00016
    3.2     1.99999    -2.34985     1  1  px   1.00016
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================
 
 22aa22a 222      0.00000001     -0.00000333     -0.00000175     -0.00000000      1.00000000     -0.00000662      0.00003797
 222aa2a 222      0.08837548      0.00000007     -0.00000026      0.99608723     -0.00000000      0.00000000      0.00000000
 2a222aa 222      0.89092760     -0.00000001      0.00000003     -0.07904545     -0.00000001      0.00000000      0.00000000
 22a22aa 222     -0.00000000     -0.44210329      0.00005013      0.00000003     -0.00003101     -0.00229860      0.77752126
 2222aaa 222     -0.00000000      0.00005120      0.44610615      0.00000012      0.00000583      0.77523154      0.00229219
 2a22a2a 222      0.00000000      0.64230913     -0.00007256     -0.00000005     -0.00002151     -0.00184110      0.62244320
 2aa222a 222     -0.00000000      0.00007169      0.63909139      0.00000017     -0.00000295     -0.62574652     -0.00185035
 2a2a22a 222      0.00000001     -0.00007095     -0.62653929     -0.00000016     -0.00000166     -0.08630529     -0.00025509
 222a2aa 222     -0.00000000     -0.62608597      0.00007083      0.00000005     -0.00000549     -0.00026414      0.08953443
 22a2a2a 222      0.44546357     -0.00000000      0.00000001     -0.03952268     -0.00000000      0.00000000      0.00000000
 
 Energy:       -109.38119986   -109.38119985   -109.38119985   -109.38119985   -109.38119985   -109.38119985   -109.38119985
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 22aa22b 222      0.00000054     -0.00001037     -0.00000456     -0.00009122     -0.00000322     -0.00003144      0.81408994
 222aa2b 222      0.03705926     -0.00000465     -0.00000569     -0.00005014      0.00000137      0.81324599      0.00003138
 2a222ab 222      0.72738945      0.00000170      0.00000069      0.00000293     -0.00000015     -0.03314682     -0.00000177
 22a22ab 222      0.00000028      0.00006586     -0.30560162      0.00026183      0.66090956     -0.00000325      0.00000093
 2222aab 222     -0.00000147      0.32881941      0.00006727      0.64967035     -0.00025904      0.00004200      0.00007698
 2a22a2b 222     -0.00000029     -0.00012281      0.56352251      0.00018767      0.46112497      0.00000319      0.00000500
 2aa222b 222     -0.00000054      0.54683574      0.00012190     -0.48079571      0.00019235     -0.00002649     -0.00004691
 222ab2a 222     -0.01852964      0.00000232      0.00000284      0.00002507     -0.00000069     -0.40662293     -0.00001569
 222ba2a 222     -0.01852962      0.00000232      0.00000284      0.00002507     -0.00000069     -0.40662307     -0.00001569
 222022a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 22ba22a 222     -0.00000027      0.00000518      0.00000228      0.00004561      0.00000161      0.00001572     -0.40704490
 220222a 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222202a 222     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22ab22a 222     -0.00000027      0.00000518      0.00000228      0.00004561      0.00000161      0.00001572     -0.40704504
 2a2a22b 222      0.00000116     -0.50555997     -0.00010921     -0.09749992      0.00003850     -0.00000895     -0.00001736
 222a2ab 222      0.00000033      0.00010893     -0.50178923      0.00004282      0.11534578     -0.00000372     -0.00000235
 202222a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000003
 2a222ba 222     -0.36369470     -0.00000085     -0.00000034     -0.00000147      0.00000008      0.01657338      0.00000088
 2b222aa 222     -0.36369475     -0.00000085     -0.00000034     -0.00000147      0.00000008      0.01657345      0.00000088
 2ab222a 222      0.00000027     -0.27341778     -0.00006095      0.24039782     -0.00009618      0.00001325      0.00002345
 2a22b2a 222      0.00000015      0.00006140     -0.28176118     -0.00009384     -0.23056246     -0.00000159     -0.00000250
 2222baa 222      0.00000074     -0.16440964     -0.00003363     -0.32483515      0.00012952     -0.00002100     -0.00003849
 22b22aa 222     -0.00000014     -0.00003293      0.15280075     -0.00013092     -0.33045475      0.00000162     -0.00000047
 2b22a2a 222      0.00000015      0.00006140     -0.28176134     -0.00009384     -0.23056251     -0.00000159     -0.00000250
 22a22ba 222     -0.00000014     -0.00003293      0.15280087     -0.00013092     -0.33045481      0.00000162     -0.00000047
 2222aba 222      0.00000074     -0.16440977     -0.00003363     -0.32483520      0.00012952     -0.00002100     -0.00003849
 2ba222a 222      0.00000027     -0.27341796     -0.00006095      0.24039789     -0.00009618      0.00001325      0.00002345
 222220a 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000004
 22a2a2b 222      0.36369443      0.00000085      0.00000034      0.00000147     -0.00000008     -0.01657337     -0.00000088
 222b2aa 222     -0.00000016     -0.00005446      0.25089459     -0.00002141     -0.05767289      0.00000186      0.00000117
 2a2b22a 222     -0.00000058      0.25277994      0.00005461      0.04874996     -0.00001925      0.00000448      0.00000868
 222a2ba 222     -0.00000016     -0.00005446      0.25089465     -0.00002141     -0.05767289      0.00000186      0.00000117
 2b2a22a 222     -0.00000058      0.25278003      0.00005461      0.04874996     -0.00001925      0.00000448      0.00000868
 2a22220 222     -0.00000000      0.00000002      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000001     -0.00000000     -0.00000001     -0.00000000      0.00000000
 2222a20 222     -0.00000001     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000002     -0.00000000
 222a220 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000001
 22a2220 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000002
 22a2b2a 222     -0.18184722     -0.00000042     -0.00000017     -0.00000073      0.00000004      0.00828669      0.00000044
 22b2a2a 222     -0.18184722     -0.00000042     -0.00000017     -0.00000073      0.00000004      0.00828669      0.00000044
 2220a22 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 220a222 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 222a022 222     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22a0222 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 20a2222 222      0.00000001     -0.00000028     -0.00000012     -0.00000248     -0.00000009     -0.00000085      0.02210469
 
 Energy:       -109.35136494   -109.35136494   -109.35136494   -109.35136493   -109.35136493   -109.35136493   -109.35136493

 State:                8               9              10              11              12
 22aa22b 222      0.00000009      0.00000000     -0.00000000      0.00000000     -0.00000002
 222aa2b 222      0.00000000     -0.00000009      0.00000000      0.00000000      0.00000000
 2a222ab 222     -0.00000000      0.00000003     -0.00000000      0.00000000      0.00000000
 22a22ab 222     -0.00000000     -0.00000000      0.00000002     -0.00000000     -0.00000000
 2222aab 222     -0.00000000     -0.00000000      0.00000000      0.00000003     -0.00000000
 2a22a2b 222     -0.00000000     -0.00000000     -0.00000006      0.00000000     -0.00000000
 2aa222b 222     -0.00000000      0.00000000      0.00000000      0.00000008     -0.00000000
 222ab2a 222     -0.00001802      0.51618964     -0.00000009      0.00000010     -0.00000003
 222ba2a 222      0.00001802     -0.51618956      0.00000009     -0.00000010      0.00000003
 222022a 222     -0.07144251     -0.00000252     -0.00000067     -0.00002078     -0.51122189
 22ba22a 222     -0.51122179     -0.00001784      0.00002073      0.00000059      0.07144250
 220222a 222      0.07144245      0.00000252      0.00000067      0.00002078      0.51122172
 222202a 222      0.07144249      0.00000252      0.00000067      0.00002078      0.51122171
 22ab22a 222      0.51122170      0.00001784     -0.00002073     -0.00000059     -0.07144248
 2a2a22b 222      0.00000000      0.00000000     -0.00000000     -0.00000012      0.00000000
 222a2ab 222      0.00000000      0.00000000      0.00000011     -0.00000000      0.00000000
 202222a 222     -0.47845234     -0.00001671      0.00001761     -0.00000988     -0.19373984
 2a222ba 222      0.00001561     -0.44703340      0.00000007     -0.00000008      0.00000002
 2b222aa 222     -0.00001561      0.44703337     -0.00000007      0.00000008     -0.00000002
 2ab222a 222      0.00000198      0.00000008     -0.00009785     -0.44703333      0.00001790
 2a22b2a 222      0.00001770      0.00000008      0.44703333     -0.00009785     -0.00000306
 2222baa 222      0.00000198      0.00000008     -0.00009785     -0.44703330      0.00001790
 22b22aa 222     -0.00001770     -0.00000008     -0.44703329      0.00009785      0.00000306
 2b22a2a 222     -0.00001770     -0.00000008     -0.44703327      0.00009785      0.00000306
 22a22ba 222      0.00001770      0.00000008      0.44703327     -0.00009785     -0.00000306
 2222aba 222     -0.00000198     -0.00000008      0.00009785      0.44703326     -0.00001790
 2ba222a 222     -0.00000198     -0.00000008      0.00009785      0.44703326     -0.00001790
 222220a 222      0.40700986      0.00001419     -0.00001829     -0.00001090     -0.31748185
 22a2a2b 222     -0.00000000      0.00000002      0.00000000      0.00000000     -0.00000000
 222b2aa 222     -0.00001022     -0.00000004     -0.25809495      0.00005650      0.00000177
 2a2b22a 222     -0.00000114     -0.00000005      0.00005650      0.25809494     -0.00001033
 222a2ba 222      0.00001022      0.00000004      0.25809484     -0.00005650     -0.00000177
 2b2a22a 222      0.00000114      0.00000005     -0.00005650     -0.25809482      0.00001033
 2a22220 222      0.00000097      0.00000004     -0.00004793     -0.21895820      0.00000877
 22222a0 222     -0.00000867     -0.00000004     -0.21895816      0.00004793      0.00000150
 2222a20 222     -0.00000764      0.21895803     -0.00000004      0.00000004     -0.00000001
 222a220 222     -0.03030459     -0.00000107     -0.00000029     -0.00000882     -0.21685091
 22a2220 222      0.21685075      0.00000757     -0.00000879     -0.00000025     -0.03030458
 22a2b2a 222     -0.00000000      0.00000001     -0.00000000     -0.00000000      0.00000000
 22b2a2a 222      0.00000000     -0.00000003      0.00000000      0.00000000      0.00000000
 2220a22 222      0.00000257     -0.07364481      0.00000001     -0.00000001      0.00000000
 220a222 222      0.01019271      0.00000036      0.00000010      0.00000297      0.07293609
 222a022 222      0.01019271      0.00000036      0.00000010      0.00000297      0.07293608
 22a0222 222     -0.07293605     -0.00000255      0.00000296      0.00000008      0.01019271
 20a2222 222     -0.05516666     -0.00000193      0.00000195     -0.00000159     -0.03368978
 
 Energy:       -109.33364970   -109.33364970   -109.33364969   -109.33364969   -109.33364969
 


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
 CPU TIMES  *         3.68      2.24      1.10
 REAL TIME  *         5.10 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.84 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3513649   12.0
    -109.3336497    6.0
    -109.3336497    6.0
    -109.3336497    6.0
    -109.3336497    6.0
    -109.3336497    6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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

 Reference wavefunction optimized for reference space (refopt=1)

 State     Reference Energy 
     1      -109.38119986
     2      -109.38119985
     3      -109.38119985
     4      -109.38119985
     5      -109.38119985
     6      -109.38119985
     7      -109.38119985

 Number of blocks in overlap matrix:    83   Smallest eigenvalue:  0.19D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  409059 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  413743 words, CPU-time:      0.02 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.71635787  0.24D-01  0.12D+00     0.21
    1     2     2     1.00000000     0.00000000  -109.38119985    -0.00000000    -0.71643719  0.24D-01  0.12D+00     0.21
    1     3     3     1.00000000     0.00000000  -109.38119985     0.00000000    -0.71646678  0.24D-01  0.12D+00     0.21
    1     4     4     1.00000000     0.00000000  -109.38119985    -0.00000000    -0.71683866  0.24D-01  0.12D+00     0.21
    1     5     5     1.00000000     0.00000000  -109.38119985     0.00000000    -0.71692125  0.24D-01  0.12D+00     0.21
    1     6     6     1.00000000     0.00000000  -109.38119985    -0.00000000    -0.71658157  0.24D-01  0.12D+00     0.21
    1     7     7     1.00000000     0.00000000  -109.38119985    -0.00000000    -0.71659793  0.24D-01  0.12D+00     0.21
    2     1     1     1.09333836    -0.56818413  -109.94938399    -0.56818413    -0.01588690  0.11D-02  0.21D-02     6.30
    2     2     2     1.09331252    -0.56817301  -109.94937287    -0.56817301    -0.01590098  0.11D-02  0.21D-02     6.30
    2     3     3     1.09331983    -0.56816952  -109.94936938    -0.56816952    -0.01590360  0.11D-02  0.21D-02     6.30
    2     4     4     1.09334935    -0.56816318  -109.94936303    -0.56816318    -0.01591302  0.11D-02  0.21D-02     6.30
    2     5     5     1.09334550    -0.56815898  -109.94935883    -0.56815898    -0.01591779  0.11D-02  0.21D-02     6.30
    2     6     6     1.09336040    -0.56807428  -109.94927413    -0.56807428    -0.01601694  0.11D-02  0.21D-02     6.30
    2     7     7     1.09336252    -0.56806545  -109.94926529    -0.56806545    -0.01602982  0.11D-02  0.21D-02     6.30
    3     1     1     1.08812732    -0.58323146  -109.96443131    -0.01504732    -0.00018973  0.14D-04  0.25D-04    11.91
    3     2     2     1.08812691    -0.58323123  -109.96443108    -0.01505821    -0.00018991  0.14D-04  0.25D-04    11.91
    3     3     3     1.08812134    -0.58323104  -109.96443090    -0.01506152    -0.00018966  0.14D-04  0.25D-04    11.91
    3     4     4     1.08813485    -0.58323032  -109.96443017    -0.01506714    -0.00019161  0.14D-04  0.25D-04    11.91
    3     5     5     1.08810823    -0.58323031  -109.96443016    -0.01507132    -0.00019021  0.14D-04  0.25D-04    11.91
    3     6     6     1.08813631    -0.58323009  -109.96442993    -0.01515581    -0.00019199  0.14D-04  0.25D-04    11.91
    3     7     7     1.08810810    -0.58323009  -109.96442993    -0.01516464    -0.00019039  0.14D-04  0.25D-04    11.91
    4     1     1     1.08865366    -0.58342643  -109.96462629    -0.00019497    -0.00000850  0.24D-05  0.91D-06    17.45
    4     2     2     1.08865389    -0.58342642  -109.96462627    -0.00019519    -0.00000851  0.24D-05  0.91D-06    17.45
    4     3     3     1.08865216    -0.58342636  -109.96462622    -0.00019532    -0.00000851  0.25D-05  0.89D-06    17.45
    4     4     4     1.08865203    -0.58342635  -109.96462620    -0.00019603    -0.00000853  0.25D-05  0.90D-06    17.45
    4     5     5     1.08865023    -0.58342630  -109.96462615    -0.00019600    -0.00000854  0.25D-05  0.90D-06    17.45
    4     6     6     1.08864619    -0.58342623  -109.96462608    -0.00019614    -0.00000859  0.25D-05  0.91D-06    17.45
    4     7     7     1.08864594    -0.58342620  -109.96462605    -0.00019612    -0.00000861  0.25D-05  0.91D-06    17.45
    5     1     1     1.08883716    -0.58343537  -109.96463523    -0.00000894    -0.00000046  0.81D-07  0.68D-07    23.00
    5     2     2     1.08883718    -0.58343537  -109.96463522    -0.00000895    -0.00000046  0.81D-07  0.69D-07    23.00
    5     3     3     1.08883739    -0.58343536  -109.96463522    -0.00000900    -0.00000047  0.84D-07  0.67D-07    23.00
    5     4     4     1.08883745    -0.58343537  -109.96463522    -0.00000902    -0.00000047  0.84D-07  0.68D-07    23.00
    5     5     5     1.08883755    -0.58343537  -109.96463522    -0.00000906    -0.00000047  0.86D-07  0.67D-07    23.00
    5     6     6     1.08883685    -0.58343536  -109.96463521    -0.00000913    -0.00000048  0.86D-07  0.68D-07    23.00
    5     7     7     1.08883685    -0.58343536  -109.96463521    -0.00000916    -0.00000048  0.86D-07  0.68D-07    23.00
    6     1     1     1.08888135    -0.58343587  -109.96463572    -0.00000050    -0.00000003  0.56D-08  0.40D-08    28.56
    6     2     2     1.08888124    -0.58343587  -109.96463572    -0.00000050    -0.00000003  0.57D-08  0.40D-08    28.56
    6     3     3     1.08888127    -0.58343587  -109.96463572    -0.00000050    -0.00000003  0.57D-08  0.40D-08    28.56
    6     4     4     1.08888133    -0.58343587  -109.96463572    -0.00000050    -0.00000003  0.57D-08  0.41D-08    28.56
    6     5     5     1.08888133    -0.58343587  -109.96463572    -0.00000050    -0.00000003  0.57D-08  0.41D-08    28.56
    6     6     6     1.08888134    -0.58343587  -109.96463572    -0.00000051    -0.00000003  0.56D-08  0.40D-08    28.56
    6     7     7     1.08888131    -0.58343587  -109.96463572    -0.00000051    -0.00000003  0.57D-08  0.40D-08    28.56


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.0%   0.6%
 P   0.9%  19.2%  33.0%

 Initialization:   0.4%
 Other:           45.7%

 Total CPU:       28.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//22/222          -0.0000000  -0.0000000  -0.0000000   0.9583180   0.0000000   0.0000000   0.0000000
 222//2/222           0.0618837   0.0000000  -0.0000000   0.0000000   0.9563179  -0.0000000   0.0000000
 2/222//222           0.8553601  -0.0000000   0.0000000  -0.0000000  -0.0553504   0.0000000  -0.0000000
 22/22//222          -0.0000000  -0.0000000  -0.3429620   0.0000000   0.0000000   0.0000000   0.7855411
 2222///222          -0.0000000   0.4083531  -0.0000000   0.0000000  -0.0000000   0.7536228  -0.0000000
 2/22/2/222           0.0000000   0.0000000   0.6748555   0.0000000   0.0000000  -0.0000000   0.5284580
 2//222/222          -0.0000000   0.6276023  -0.0000000   0.0000000  -0.0000000  -0.5837914  -0.0000000
 2/2/22/222          -0.0000000  -0.5981109  -0.0000000   0.0000000  -0.0000000  -0.0980498  -0.0000000
 222/2//222           0.0000000   0.0000000  -0.5876398   0.0000000   0.0000000  -0.0000000   0.1484278
 22/2/2/222           0.4276716   0.0000000   0.0000000   0.0000000  -0.0276754  -0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958045   -0.000000   -0.000000   -0.022869   -0.000000    0.000000   -0.000000
 2          -0.000000    0.000000    0.958004   -0.000000   -0.000000   -0.024530    0.000000
 3           0.000000    0.953004    0.000000    0.000000   -0.000000   -0.000000    0.100785
 4           0.000000   -0.000000    0.000000   -0.000000    0.958318    0.000000   -0.000000
 5           0.022869    0.000000    0.000000    0.958045    0.000000   -0.000000   -0.000000
 6           0.000000   -0.000000    0.024530    0.000000   -0.000000    0.958004   -0.000000
 7           0.000000   -0.100785    0.000000    0.000000    0.000000    0.000000    0.953004

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958318   -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 2          -0.000000    0.958318   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3           0.000000   -0.000000    0.958318    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.958318    0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958318    0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.958318    0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.958318


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95804510 (fixed)   0.95831817 (relaxed)   0.95831801 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818557
 Singles      0.01383291   -0.07363736   -0.07504280
 Pairs        0.07504847   -0.00000000   -0.04020749
 Total        1.08888170   -0.07363736   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44345825
 One electron energy                 -193.17175633
 Two electron energy                   83.20712060
 Virial quotient                       -2.65336534
 Correlation energy                    -0.58343587
 !MRCI STATE 1.1 Energy              -109.964635722928

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649249 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649229 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649249 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204536 (Pople, fixed reference)
 Cluster corrected energies          -110.01204516 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204536 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95800408 (fixed)   0.95831821 (relaxed)   0.95831806 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818568
 Singles      0.01383282   -0.07363729   -0.07504275
 Pairs        0.07504845    0.00000000   -0.04020743
 Total        1.08888159   -0.07363729   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44345876
 One electron energy                 -193.17175800
 Two electron energy                   83.20712228
 Virial quotient                       -2.65336531
 Correlation energy                    -0.58343587
 !MRCI STATE 2.1 Energy              -109.964635721509

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649243 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649222 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649243 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204529 (Pople, fixed reference)
 Cluster corrected energies          -110.01204510 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204529 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95300364 (fixed)   0.95831820 (relaxed)   0.95831805 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.41894748
 Singles      0.01383283   -0.07363729   -0.07504276
 Pairs        0.07504847   -0.05361455   -0.08944563
 Total        1.08888162   -0.12725184   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44345940
 One electron energy                 -193.17175914
 Two electron energy                   83.20712342
 Virial quotient                       -2.65336527
 Correlation energy                    -0.58343587
 !MRCI STATE 3.1 Energy              -109.964635721502

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649245 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649224 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649245 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204531 (Pople, fixed reference)
 Cluster corrected energies          -110.01204511 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204531 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95831802 (fixed)   0.95831817 (relaxed)   0.95831802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818564
 Singles      0.01383311   -0.07363729   -0.07504283
 Pairs        0.07504825   -0.00000000   -0.04020740
 Total        1.08888168   -0.07363729   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44346458
 One electron energy                 -193.17177527
 Two electron energy                   83.20713955
 Virial quotient                       -2.65336494
 Correlation energy                    -0.58343587
 !MRCI STATE 4.1 Energy              -109.964635719481

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649248 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649228 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649248 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204534 (Pople, fixed reference)
 Cluster corrected energies          -110.01204515 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204534 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95804511 (fixed)   0.95831818 (relaxed)   0.95831802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46818563
 Singles      0.01383312   -0.07363731   -0.07504283
 Pairs        0.07504824   -0.00000000   -0.04020741
 Total        1.08888167   -0.07363731   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44346416
 One electron energy                 -193.17177580
 Two electron energy                   83.20714008
 Virial quotient                       -2.65336496
 Correlation energy                    -0.58343587
 !MRCI STATE 5.1 Energy              -109.964635719414

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649248 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649227 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649248 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204534 (Pople, fixed reference)
 Cluster corrected energies          -110.01204514 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204534 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95800403 (fixed)   0.95831817 (relaxed)   0.95831802 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818551
 Singles      0.01383301   -0.07363743   -0.07504284
 Pairs        0.07504836    0.00000000   -0.04020752
 Total        1.08888169   -0.07363743   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44345952
 One electron energy                 -193.17176318
 Two electron energy                   83.20712746
 Virial quotient                       -2.65336526
 Correlation energy                    -0.58343587
 !MRCI STATE 6.1 Energy              -109.964635719034

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649248 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649228 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649248 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204535 (Pople, fixed reference)
 Cluster corrected energies          -110.01204515 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204535 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95300362 (fixed)   0.95831818 (relaxed)   0.95831803 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.00259653
 Singles      0.01383300   -0.07363741   -0.07504283
 Pairs        0.07504834   -0.50697134   -0.50579651
 Total        1.08888166   -0.58060875   -0.58343587
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119985
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44345999
 One electron energy                 -193.17176345
 Two electron energy                   83.20712774
 Virial quotient                       -2.65336523
 Correlation energy                    -0.58343587
 !MRCI STATE 7.1 Energy              -109.964635718976

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649247 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649227 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649247 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204533 (Pople, fixed reference)
 Cluster corrected energies          -110.01204514 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204533 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       66.10       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        35.91     32.21      2.24      1.10
 REAL TIME  *        45.38 SEC
 DISK USED  *        98.20 MB (local),        3.00 GB (total)
 SF USED    *       657.95 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01649249  AU                              
 SETTING HLSDIAG(2)     =      -110.01649243  AU                              
 SETTING HLSDIAG(3)     =      -110.01649245  AU                              
 SETTING HLSDIAG(4)     =      -110.01649248  AU                              
 SETTING HLSDIAG(5)     =      -110.01649248  AU                              
 SETTING HLSDIAG(6)     =      -110.01649248  AU                              
 SETTING HLSDIAG(7)     =      -110.01649247  AU                              


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
     1      -109.35136494
     2      -109.35136494
     3      -109.35136494
     4      -109.35136493
     5      -109.35136493
     6      -109.35136493
     7      -109.35136493
     8      -109.33364970
     9      -109.33364970
    10      -109.33364969
    11      -109.33364969
    12      -109.33364969

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.67D-05
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
    1     1     1     1.00000000     0.00000000  -109.35136494     0.00000000    -0.68998552  0.30D-01  0.10D+00     0.51
    1     2     2     1.00000000     0.00000000  -109.35136494     0.00000000    -0.68968119  0.30D-01  0.10D+00     0.51
    1     3     3     1.00000000     0.00000000  -109.35136494     0.00000000    -0.69032137  0.30D-01  0.10D+00     0.51
    1     4     4     1.00000000     0.00000000  -109.35136493     0.00000000    -0.69111979  0.30D-01  0.10D+00     0.51
    1     5     5     1.00000000     0.00000000  -109.35136493     0.00000000    -0.69100251  0.30D-01  0.10D+00     0.51
    1     6     6     1.00000000     0.00000000  -109.35136493     0.00000000    -0.69047401  0.30D-01  0.10D+00     0.51
    1     7     7     1.00000000     0.00000000  -109.35136493     0.00000000    -0.69095973  0.30D-01  0.10D+00     0.51
    1     8     8     1.00000000     0.00000000  -109.33364970     0.00000000    -0.69662583  0.32D-01  0.11D+00     0.51
    1     9     9     1.00000000     0.00000000  -109.33364970     0.00000000    -0.69650837  0.32D-01  0.11D+00     0.51
    1    10    10     1.00000000     0.00000000  -109.33364969     0.00000000    -0.69627716  0.32D-01  0.11D+00     0.51
    1    11    11     1.00000000     0.00000000  -109.33364969    -0.00000000    -0.69616373  0.32D-01  0.11D+00     0.51
    1    12    12     1.00000000     0.00000000  -109.33364969     0.00000000    -0.69568963  0.32D-01  0.11D+00     0.51
    2     1     1     1.09110113    -0.56931447  -109.92067941    -0.56931447    -0.01683881  0.17D-02  0.23D-02    36.63
    2     2     2     1.09113574    -0.56913866  -109.92050360    -0.56913866    -0.01697564  0.17D-02  0.23D-02    36.63
    2     3     3     1.09102863    -0.56901026  -109.92037520    -0.56901026    -0.01704534  0.17D-02  0.23D-02    36.63
    2     4     4     1.09090963    -0.56897087  -109.92033580    -0.56897087    -0.01702904  0.17D-02  0.23D-02    36.63
    2     5     5     1.09097002    -0.56894718  -109.92031211    -0.56894718    -0.01705190  0.17D-02  0.23D-02    36.63
    2     6     6     1.09127374    -0.56893685  -109.92030178    -0.56893685    -0.01722749  0.18D-02  0.23D-02    36.63
    2     7     7     1.09123424    -0.56881778  -109.92018271    -0.56881778    -0.01729290  0.18D-02  0.23D-02    36.63
    2     8     8     1.09376520    -0.57173118  -109.90538087    -0.57173118    -0.01691937  0.24D-02  0.20D-02    36.63
    2     9     9     1.09375603    -0.57157812  -109.90522782    -0.57157812    -0.01704947  0.24D-02  0.20D-02    36.63
    2    10    10     1.09368023    -0.57141196  -109.90506166    -0.57141196    -0.01715065  0.24D-02  0.21D-02    36.63
    2    11    11     1.09366913    -0.57141132  -109.90506101    -0.57141132    -0.01714936  0.24D-02  0.21D-02    36.63
    2    12    12     1.09372902    -0.57140591  -109.90505560    -0.57140591    -0.01719186  0.25D-02  0.21D-02    36.63
    3     1     1     1.08736714    -0.58647102  -109.93783596    -0.01715655    -0.00084815  0.28D-04  0.17D-03    71.26
    3     2     2     1.08733890    -0.58644175  -109.93780669    -0.01730309    -0.00087229  0.28D-04  0.18D-03    71.26
    3     3     3     1.08733761    -0.58643247  -109.93779741    -0.01742221    -0.00089160  0.26D-04  0.19D-03    71.26
    3     4     4     1.08729762    -0.58641694  -109.93778187    -0.01744607    -0.00089686  0.27D-04  0.19D-03    71.26
    3     5     5     1.08728993    -0.58640714  -109.93777207    -0.01745996    -0.00090281  0.27D-04  0.19D-03    71.26
    3     6     6     1.08723565    -0.58638872  -109.93775365    -0.01745187    -0.00090176  0.28D-04  0.18D-03    71.26
    3     7     7     1.08724275    -0.58638696  -109.93775189    -0.01756918    -0.00090248  0.28D-04  0.18D-03    71.26
    3     8     8     1.08867374    -0.58829654  -109.92194624    -0.01656536    -0.00085343  0.87D-04  0.15D-03    71.26
    3     9     9     1.08864662    -0.58827300  -109.92192269    -0.01669488    -0.00085645  0.86D-04  0.15D-03    71.26
    3    10    10     1.08860514    -0.58824958  -109.92189927    -0.01683761    -0.00087103  0.85D-04  0.15D-03    71.26
    3    11    11     1.08858649    -0.58824610  -109.92189579    -0.01683478    -0.00087019  0.86D-04  0.15D-03    71.26
    3    12    12     1.08858448    -0.58824492  -109.92189461    -0.01683901    -0.00087195  0.86D-04  0.15D-03    71.26
    4     1     1     1.09015160    -0.58766516  -109.93903010    -0.00119414    -0.00017987  0.80D-05  0.37D-04   105.79
    4     2     2     1.09011873    -0.58765749  -109.93902243    -0.00121574    -0.00018841  0.78D-05  0.40D-04   105.79
    4     3     3     1.09007231    -0.58765023  -109.93901517    -0.00121776    -0.00019402  0.77D-05  0.41D-04   105.79
    4     4     4     1.09007418    -0.58764601  -109.93901094    -0.00122907    -0.00019824  0.76D-05  0.42D-04   105.79
    4     5     5     1.09004813    -0.58764504  -109.93900997    -0.00123790    -0.00019720  0.75D-05  0.42D-04   105.79
    4     6     6     1.09007729    -0.58764471  -109.93900964    -0.00125599    -0.00020143  0.77D-05  0.43D-04   105.79
    4     7     7     1.09005423    -0.58764412  -109.93900905    -0.00125716    -0.00020080  0.75D-05  0.43D-04   105.79
    4     8     8     1.09052109    -0.58933420  -109.92298389    -0.00103766    -0.00021361  0.90D-05  0.43D-04   105.79
    4     9     9     1.09050707    -0.58932338  -109.92297307    -0.00105038    -0.00022021  0.92D-05  0.44D-04   105.79
    4    10    10     1.09049759    -0.58931982  -109.92296951    -0.00107024    -0.00022429  0.95D-05  0.45D-04   105.79
    4    11    11     1.09049490    -0.58931917  -109.92296886    -0.00107307    -0.00022500  0.94D-05  0.45D-04   105.79
    4    12    12     1.09049235    -0.58931898  -109.92296867    -0.00107406    -0.00022356  0.92D-05  0.45D-04   105.79
    5     1     1     1.09112318    -0.58786246  -109.93922740    -0.00019730    -0.00004602  0.85D-06  0.12D-04   140.40
    5     2     2     1.09110339    -0.58786046  -109.93922540    -0.00020297    -0.00004547  0.99D-06  0.11D-04   140.40
    5     3     3     1.09110465    -0.58786009  -109.93922503    -0.00020986    -0.00004748  0.96D-06  0.12D-04   140.40
    5     4     4     1.09109664    -0.58785851  -109.93922344    -0.00021250    -0.00004679  0.11D-05  0.11D-04   140.40
    5     5     5     1.09108333    -0.58785670  -109.93922163    -0.00021166    -0.00005018  0.11D-05  0.12D-04   140.40
    5     6     6     1.09107068    -0.58785574  -109.93922067    -0.00021103    -0.00005106  0.12D-05  0.13D-04   140.40
    5     7     7     1.09106786    -0.58785366  -109.93921859    -0.00020953    -0.00005384  0.11D-05  0.14D-04   140.40
    5     8     8     1.09189580    -0.58959957  -109.92324927    -0.00026537    -0.00005929  0.18D-05  0.13D-04   140.40
    5     9     9     1.09188270    -0.58959422  -109.92324391    -0.00027084    -0.00006452  0.18D-05  0.15D-04   140.40
    5    10    10     1.09187764    -0.58959321  -109.92324290    -0.00027339    -0.00006401  0.19D-05  0.14D-04   140.40
    5    11    11     1.09187326    -0.58959271  -109.92324240    -0.00027354    -0.00006476  0.19D-05  0.15D-04   140.40
    5    12    12     1.09186852    -0.58959186  -109.92324155    -0.00027289    -0.00006569  0.19D-05  0.15D-04   140.40
    6     1     1     1.09113763    -0.58790809  -109.93927303    -0.00004563    -0.00001255  0.64D-06  0.28D-05   175.00
    6     2     2     1.09114836    -0.58790807  -109.93927301    -0.00004761    -0.00001258  0.62D-06  0.29D-05   175.00
    6     3     3     1.09113685    -0.58790762  -109.93927256    -0.00004753    -0.00001286  0.62D-06  0.30D-05   175.00
    6     4     4     1.09113507    -0.58790742  -109.93927235    -0.00004891    -0.00001291  0.65D-06  0.29D-05   175.00
    6     5     5     1.09112786    -0.58790671  -109.93927164    -0.00005001    -0.00001353  0.63D-06  0.32D-05   175.00
    6     6     6     1.09112409    -0.58790618  -109.93927111    -0.00005044    -0.00001401  0.60D-06  0.34D-05   175.00
    6     7     7     1.09112023    -0.58790515  -109.93927008    -0.00005149    -0.00001472  0.61D-06  0.37D-05   175.00
    6     8     8     1.09192232    -0.58965892  -109.92330862    -0.00005935    -0.00001815  0.24D-05  0.35D-05   175.00
    6     9     9     1.09190916    -0.58965649  -109.92330619    -0.00006227    -0.00001935  0.25D-05  0.37D-05   175.00
    6    10    10     1.09190566    -0.58965629  -109.92330598    -0.00006308    -0.00001938  0.25D-05  0.37D-05   175.00
    6    11    11     1.09191592    -0.58965594  -109.92330563    -0.00006322    -0.00002036  0.24D-05  0.43D-05   175.00
    6    12    12     1.09190539    -0.58965576  -109.92330545    -0.00006390    -0.00001977  0.25D-05  0.38D-05   175.00
    7     1     1     1.09119496    -0.58792149  -109.93928643    -0.00001340    -0.00000412  0.33D-07  0.11D-05   209.58
    7     2     2     1.09119344    -0.58792139  -109.93928633    -0.00001333    -0.00000426  0.32D-07  0.11D-05   209.58
    7     3     3     1.09118861    -0.58792124  -109.93928618    -0.00001362    -0.00000439  0.29D-07  0.12D-05   209.58
    7     4     4     1.09119224    -0.58792119  -109.93928612    -0.00001377    -0.00000434  0.31D-07  0.11D-05   209.58
    7     5     5     1.09118251    -0.58792087  -109.93928580    -0.00001415    -0.00000468  0.29D-07  0.13D-05   209.58
    7     6     6     1.09117920    -0.58792041  -109.93928534    -0.00001423    -0.00000508  0.26D-07  0.14D-05   209.58
    7     7     7     1.09117134    -0.58792012  -109.93928505    -0.00001497    -0.00000522  0.28D-07  0.14D-05   209.58
    7     8     8     1.09194056    -0.58967774  -109.92332744    -0.00001882    -0.00000551  0.12D-06  0.12D-05   209.58
    7     9     9     1.09192543    -0.58967693  -109.92332663    -0.00002044    -0.00000596  0.14D-06  0.13D-05   209.58
    7    10    10     1.09192765    -0.58967693  -109.92332662    -0.00002064    -0.00000597  0.13D-06  0.13D-05   209.58
    7    11    11     1.09192370    -0.58967664  -109.92332634    -0.00002071    -0.00000621  0.13D-06  0.14D-05   209.58
    7    12    12     1.09192425    -0.58967627  -109.92332596    -0.00002051    -0.00000658  0.12D-06  0.16D-05   209.58
    8     1     1     1.09127151    -0.58792550  -109.93929045    -0.00000402    -0.00000137  0.43D-07  0.34D-06   244.25
    8     2     2     1.09126928    -0.58792540  -109.93929034    -0.00000401    -0.00000145  0.46D-07  0.36D-06   244.25
    8     3     3     1.09126620    -0.58792538  -109.93929032    -0.00000413    -0.00000147  0.39D-07  0.38D-06   244.25
    8     4     4     1.09126419    -0.58792538  -109.93929031    -0.00000419    -0.00000147  0.44D-07  0.37D-06   244.25
    8     5     5     1.09125977    -0.58792520  -109.93929013    -0.00000433    -0.00000159  0.44D-07  0.41D-06   244.25
    8     6     6     1.09125625    -0.58792503  -109.93928996    -0.00000462    -0.00000170  0.49D-07  0.44D-06   244.25
    8     7     7     1.09125053    -0.58792492  -109.93928985    -0.00000480    -0.00000179  0.48D-07  0.47D-06   244.25
    8     8     8     1.09202316    -0.58968341  -109.92333310    -0.00000567    -0.00000214  0.49D-07  0.53D-06   244.25
    8     9     9     1.09201368    -0.58968309  -109.92333279    -0.00000616    -0.00000239  0.46D-07  0.59D-06   244.25
    8    10    10     1.09201496    -0.58968308  -109.92333278    -0.00000615    -0.00000237  0.51D-07  0.58D-06   244.25
    8    11    11     1.09201050    -0.58968292  -109.92333261    -0.00000627    -0.00000251  0.49D-07  0.63D-06   244.25
    8    12    12     1.09200700    -0.58968265  -109.92333234    -0.00000637    -0.00000265  0.59D-07  0.66D-06   244.25
    9     1     1     1.09130800    -0.58792684  -109.93929178    -0.00000133    -0.00000048  0.38D-08  0.13D-06   278.94
    9     2     2     1.09130418    -0.58792680  -109.93929174    -0.00000139    -0.00000052  0.36D-08  0.14D-06   278.94
    9     3     3     1.09130615    -0.58792679  -109.93929173    -0.00000142    -0.00000052  0.34D-08  0.14D-06   278.94
    9     4     4     1.09130586    -0.58792680  -109.93929173    -0.00000141    -0.00000051  0.40D-08  0.14D-06   278.94
    9     5     5     1.09130211    -0.58792672  -109.93929165    -0.00000153    -0.00000057  0.36D-08  0.16D-06   278.94
    9     6     6     1.09129939    -0.58792666  -109.93929159    -0.00000162    -0.00000063  0.30D-08  0.18D-06   278.94
    9     7     7     1.09129562    -0.58792660  -109.93929153    -0.00000168    -0.00000068  0.30D-08  0.20D-06   278.94
    9     8     8     1.09206744    -0.58968542  -109.92333511    -0.00000201    -0.00000076  0.53D-07  0.16D-06   278.94
    9     9     9     1.09206141    -0.58968529  -109.92333499    -0.00000220    -0.00000083  0.58D-07  0.18D-06   278.94
    9    10    10     1.09206254    -0.58968529  -109.92333498    -0.00000221    -0.00000083  0.58D-07  0.18D-06   278.94
    9    11    11     1.09205987    -0.58968523  -109.92333492    -0.00000231    -0.00000087  0.60D-07  0.19D-06   278.94
    9    12    12     1.09205800    -0.58968510  -109.92333479    -0.00000246    -0.00000098  0.54D-07  0.23D-06   278.94
   10     1     1     1.09132355    -0.58792729  -109.93929224    -0.00000046    -0.00000019  0.12D-08  0.52D-07   313.51
   10     2     2     1.09132241    -0.58792728  -109.93929222    -0.00000048    -0.00000020  0.15D-08  0.55D-07   313.51
   10     3     3     1.09132111    -0.58792727  -109.93929221    -0.00000048    -0.00000021  0.13D-08  0.61D-07   313.51
   10     4     4     1.09132195    -0.58792727  -109.93929220    -0.00000048    -0.00000021  0.10D-08  0.64D-07   313.51
   10     5     5     1.09131963    -0.58792724  -109.93929217    -0.00000052    -0.00000024  0.13D-08  0.73D-07   313.51
   10     6     6     1.09131778    -0.58792721  -109.93929214    -0.00000055    -0.00000027  0.16D-08  0.84D-07   313.51
   10     7     7     1.09131508    -0.58792718  -109.93929211    -0.00000058    -0.00000028  0.17D-08  0.88D-07   313.51
   10     8     8     1.09208763    -0.58968615  -109.92333584    -0.00000073    -0.00000030  0.53D-08  0.78D-07   313.51
   10     9     9     1.09208365    -0.58968610  -109.92333579    -0.00000081    -0.00000033  0.44D-08  0.86D-07   313.51
   10    10    10     1.09208437    -0.58968610  -109.92333579    -0.00000080    -0.00000033  0.50D-08  0.87D-07   313.51
   10    11    11     1.09208255    -0.58968607  -109.92333576    -0.00000084    -0.00000036  0.49D-08  0.96D-07   313.51
   10    12    12     1.09208011    -0.58968599  -109.92333568    -0.00000088    -0.00000042  0.83D-08  0.12D-06   313.51
   11     1     1     1.09133408    -0.58792747  -109.93929241    -0.00000017    -0.00000007  0.66D-09  0.21D-07   348.11
   11     2     2     1.09133345    -0.58792746  -109.93929240    -0.00000019    -0.00000008  0.66D-09  0.23D-07   348.11
   11     3     3     1.09133244    -0.58792746  -109.93929240    -0.00000019    -0.00000008  0.68D-09  0.25D-07   348.11
   11     4     4     1.09133265    -0.58792746  -109.93929239    -0.00000019    -0.00000009  0.67D-09  0.26D-07   348.11
   11     5     5     1.09133119    -0.58792745  -109.93929238    -0.00000021    -0.00000010  0.64D-09  0.30D-07   348.11
   11     6     6     1.09132988    -0.58792744  -109.93929237    -0.00000023    -0.00000011  0.54D-09  0.33D-07   348.11
   11     7     7     1.09132811    -0.58792742  -109.93929235    -0.00000024    -0.00000012  0.57D-09  0.35D-07   348.11
   11     8     8     1.09210075    -0.58968642  -109.92333611    -0.00000027    -0.00000012  0.16D-08  0.33D-07   348.11
   11     9     9     1.09209802    -0.58968640  -109.92333610    -0.00000030    -0.00000014  0.17D-08  0.36D-07   348.11
   11    10    10     1.09209841    -0.58968640  -109.92333609    -0.00000030    -0.00000014  0.18D-08  0.36D-07   348.11
   11    11    11     1.09209701    -0.58968639  -109.92333608    -0.00000032    -0.00000015  0.19D-08  0.41D-07   348.11
   11    12    12     1.09209490    -0.58968634  -109.92333603    -0.00000035    -0.00000018  0.21D-08  0.50D-07   348.11
   12     1     1     1.09134083    -0.58792753  -109.93929247    -0.00000006    -0.00000003  0.14D-09  0.85D-08   382.80
   12     2     2     1.09133967    -0.58792753  -109.93929247    -0.00000007    -0.00000003  0.17D-09  0.96D-08   382.80
   12     3     3     1.09134030    -0.58792753  -109.93929247    -0.00000007    -0.00000003  0.17D-09  0.93D-08   382.80
   12     4     4     1.09133971    -0.58792754  -109.93929247    -0.00000007    -0.00000004  0.15D-09  0.10D-07   382.80
   12     5     5     1.09133885    -0.58792753  -109.93929246    -0.00000008    -0.00000004  0.18D-09  0.11D-07   382.80
   12     6     6     1.09133792    -0.58792753  -109.93929246    -0.00000009    -0.00000004  0.23D-09  0.13D-07   382.80
   12     7     7     1.09133688    -0.58792752  -109.93929245    -0.00000010    -0.00000005  0.25D-09  0.15D-07   382.80
   12     8     8     1.09211017    -0.58968653  -109.92333623    -0.00000011    -0.00000005  0.15D-08  0.14D-07   382.80
   12     9     9     1.09210829    -0.58968652  -109.92333622    -0.00000012    -0.00000006  0.16D-08  0.15D-07   382.80
   12    10    10     1.09210856    -0.58968652  -109.92333621    -0.00000013    -0.00000006  0.17D-08  0.15D-07   382.80
   12    11    11     1.09210738    -0.58968652  -109.92333621    -0.00000013    -0.00000006  0.16D-08  0.16D-07   382.80
   12    12    12     1.09210556    -0.58968649  -109.92333618    -0.00000015    -0.00000008  0.12D-08  0.22D-07   382.80
   13     1     1     1.09134428    -0.58792755  -109.93929250    -0.00000002    -0.00000002  0.50D-10  0.47D-08   410.09
   13     2     2     1.09134298    -0.58792756  -109.93929250    -0.00000002    -0.00000002  0.48D-10  0.66D-08   410.09
   13     3     3     1.09134371    -0.58792755  -109.93929249    -0.00000002    -0.00000002  0.54D-10  0.55D-08   410.09
   13     4     4     1.09134230    -0.58792756  -109.93929249    -0.00000002    -0.00000002  0.52D-10  0.72D-08   410.09
   13     5     5     1.09134084    -0.58792754  -109.93929247    -0.00000002    -0.00000003  0.14D-09  0.85D-08   410.09
   13     6     6     1.09133981    -0.58792754  -109.93929247    -0.00000002    -0.00000003  0.17D-09  0.93D-08   410.09
   13     7     7     1.09134030    -0.58792754  -109.93929247    -0.00000002    -0.00000003  0.17D-09  0.93D-08   410.09
   13     8     8     1.09212361    -0.58968660  -109.92333629    -0.00000007    -0.00000002  0.13D-08  0.35D-08   410.09
   13     9     9     1.09212403    -0.58968660  -109.92333629    -0.00000007    -0.00000001  0.11D-08  0.31D-08   410.09
   13    10    10     1.09212338    -0.58968660  -109.92333629    -0.00000007    -0.00000002  0.13D-08  0.46D-08   410.09
   13    11    11     1.09211597    -0.58968658  -109.92333627    -0.00000006    -0.00000002  0.61D-09  0.56D-08   410.09
   13    12    12     1.09211472    -0.58968658  -109.92333627    -0.00000009    -0.00000002  0.52D-09  0.62D-08   410.09


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.2%   9.8%  61.4%

 Initialization:   0.1%
 Other:           28.1%

 Total CPU:      410.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22//22\222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.9543378   0.0000000  -0.0000000
                      0.0000001   0.0000000   0.0000000
 222//2\222          -0.0000000   0.0623424   0.0000000   0.0000000   0.9522991  -0.0000000   0.0000000  -0.0000000  -0.0000001
                     -0.0000000  -0.0000000  -0.0000000
 2/222/\222          -0.0000000   0.8517636   0.0000000   0.0000000  -0.0557611   0.0000000   0.0000000   0.0000000  -0.0000003
                      0.0000000   0.0000000   0.0000000
 2222//\222          -0.0000000  -0.0000000   0.8494672  -0.0000000   0.0000000   0.0837409  -0.0000000  -0.0000005   0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2//222\222          -0.0000000  -0.0000000  -0.2934479  -0.0000000   0.0000000   0.8015583  -0.0000000  -0.0000005   0.0000000
                      0.0000000   0.0000000   0.0000000
 2/22/2\222           0.7668715  -0.0000000  -0.0000000  -0.3748524   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0000000   0.0000000   0.0000001
 222/\2/222          -0.0000000  -0.0000002   0.0000000   0.0000000  -0.0000013  -0.0000000   0.0000000   0.0000000   0.6845795
                     -0.0000000   0.0000000   0.0000000
 22/\22/222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000022   0.0000000   0.0000000
                      0.6696166   0.1423691   0.0000000
 22/22/\222           0.5546663   0.0000000   0.0000000   0.6488084  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                      0.0000000  -0.0000000   0.0000003
 22/22\/222           0.0000023   0.0000000   0.0000000   0.0000008   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.0000000  -0.0000000   0.5928995
 2/22\2/222          -0.0000010   0.0000000  -0.0000000  -0.0000022   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                     -0.0000000   0.0000000   0.5928988
 2/222\/222          -0.0000000   0.0000002   0.0000000  -0.0000000   0.0000014  -0.0000000   0.0000000  -0.0000000  -0.5928651
                      0.0000000   0.0000000   0.0000000
 2222/\/222          -0.0000000   0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000067  -0.0000000  -0.5928651   0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2/\222/222           0.0000000  -0.0000000   0.0000042  -0.0000000   0.0000000   0.0000072  -0.0000000   0.5928644   0.0000000
                      0.0000000  -0.0000000  -0.0000000
 222/2/\222          -0.1225173  -0.0000000  -0.0000000   0.5910094   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0000012
 2/2/22\222          -0.0000000  -0.0000000  -0.3210163  -0.0000000   0.0000000  -0.5111289  -0.0000000  -0.0000004   0.0000000
                      0.0000000   0.0000000  -0.0000000
 222202/222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000006   0.0000000  -0.0000000
                     -0.1006666   0.4735192   0.0000000
 222022/222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000013   0.0000000  -0.0000000
                      0.1006670  -0.4735190  -0.0000000
 220222/222           0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000006  -0.0000000  -0.0000000
                     -0.1006666   0.4735189  -0.0000000
 222220/222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000013  -0.0000000  -0.0000000
                      0.4603898  -0.1495751   0.0000000
 22/2/2\222           0.0000000   0.4258761   0.0000000  -0.0000000  -0.0278800   0.0000000  -0.0000000  -0.0000000   0.0000007
                      0.0000000   0.0000000  -0.0000000
 202222/222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000016   0.0000000  -0.0000000
                     -0.3597233  -0.3239440  -0.0000000
 222/2\/222          -0.0000014   0.0000000  -0.0000000   0.0000012   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0000000   0.3423090
 2/2\22/222          -0.0000000   0.0000000  -0.0000005   0.0000000  -0.0000000  -0.0000019   0.0000000  -0.3422905   0.0000000
                     -0.0000000   0.0000000   0.0000000
 2222/20222           0.0000000   0.0000007  -0.0000000  -0.0000000   0.0000069  -0.0000000  -0.0000000  -0.0000000   0.2786459
                      0.0000000  -0.0000000  -0.0000000
 2/22220222          -0.0000000   0.0000000  -0.0000081  -0.0000000  -0.0000000  -0.0000312  -0.0000000   0.2786434   0.0000000
                     -0.0000000   0.0000000   0.0000000
 22222/0222           0.0000008   0.0000000  -0.0000000  -0.0000021   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0000000  -0.2784886
 22/2220222           0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000105   0.0000000  -0.0000000
                      0.2725397   0.0579166   0.0000000
 222/220222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000050  -0.0000000   0.0000000
                      0.0579397  -0.2723824   0.0000000
 2220/22222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000003   0.0000000   0.0000000  -0.0000000  -0.0712013
                     -0.0000000  -0.0000000   0.0000000
 22/0222222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000002  -0.0000000  -0.0000000
                     -0.0696445  -0.0148063   0.0000000
 222/022222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0148068   0.0696427   0.0000000
 220/222222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0148067   0.0696427   0.0000000
 22/2202222          -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0214666   0.0000000   0.0000000
                     -0.0556275   0.0283424  -0.0000000
 22/\2/2222          -0.0298426   0.0000000  -0.0000000  -0.0146772   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0555644
 222/\/2222           0.0000000   0.0000000  -0.0316904   0.0000000   0.0000000   0.0100857   0.0000000   0.0555643   0.0000000
                     -0.0000000   0.0000000  -0.0000000
 22/2/\2222          -0.0000000  -0.0000000   0.0265317   0.0000000  -0.0000000   0.0422440   0.0000000   0.0555637  -0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2/22/\2222          -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000001   0.0000000   0.0000000
                      0.0171680   0.0528464   0.0000000
 2/22\/2222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001  -0.0000000  -0.0000000
                     -0.0528459   0.0171681  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000   -0.000000    0.399345    0.000000    0.869955    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 2           0.957047   -0.000000   -0.000000    0.000000   -0.000000    0.018985    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 3           0.000000    0.346391   -0.000000    0.892363   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000001    0.000000
 4           0.000000    0.000000   -0.869956    0.000000    0.399345   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 5          -0.018985   -0.000000    0.000000    0.000000   -0.000000    0.957048   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 6           0.000000    0.892365   -0.000000   -0.346392    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000003    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957236    0.000001    0.000000   -0.000000
            -0.000000    0.000000
 8          -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.954209   -0.000000
 9           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.954208    0.000000
            -0.000000   -0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.896902   -0.000000   -0.000000
             0.000000   -0.325705
 11          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.325709    0.000000   -0.000000
             0.000000    0.896917
 12          0.000000    0.000000   -0.000001    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954225
            -0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957235   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 2          -0.000000    0.957235    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 3          -0.000000    0.000000    0.957235    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.957235   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000    0.000000   -0.000000    0.957236   -0.000000    0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 6          -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.957237    0.000000    0.000001   -0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957236    0.000000    0.000000    0.000000
             0.000000   -0.000000
 8           0.000000   -0.000000    0.000000    0.000000    0.000000    0.000001    0.000000    0.954209   -0.000000   -0.000000
            -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954208   -0.000000
             0.000000    0.000000
 10         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954210
            -0.000000   -0.000000
 11         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.954226    0.000000
 12          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
             0.000000    0.954225

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00485969    -1.74894573       2122220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00486008    -1.74901424       2222120222                      
   105       0.00014387     1.00328873       2221121222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00464787    -1.67300921       2212220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00462598    -1.66903788       2221220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00483765    -1.74494481       2222210222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.86995510 (fixed)   0.95723620 (relaxed)   0.95723460 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922336
 Singles      0.01504724   -0.07584358   -0.07760133
 Pairs        0.07629734    0.00000000   -0.04110287
 Total        1.09134792   -0.07584358   -0.58792755
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136493
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45708470
 One electron energy                 -193.12159112
 Two electron energy                   83.18229863
 Virial quotient                       -2.65188190
 Correlation energy                    -0.58792757
 !MRCI STATE 1.1 Energy              -109.939292497238

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299846 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299632 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299846 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968857 (Pople, fixed reference)
 Cluster corrected energies          -109.98968642 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968857 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95704689 (fixed)   0.95723676 (relaxed)   0.95723517 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922356
 Singles      0.01504750   -0.07584397   -0.07760163
 Pairs        0.07629579    0.00000000   -0.04110237
 Total        1.09134662   -0.07584397   -0.58792756
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136494
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45709672
 One electron energy                 -193.12160133
 Two electron energy                   83.18230884
 Virial quotient                       -2.65188113
 Correlation energy                    -0.58792755
 !MRCI STATE 2.1 Energy              -109.939292496122

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299769 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299555 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299769 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968780 (Pople, fixed reference)
 Cluster corrected energies          -109.98968565 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968780 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.89236286 (fixed)   0.95723644 (relaxed)   0.95723485 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922347
 Singles      0.01504735   -0.07584372   -0.07760145
 Pairs        0.07629667   -0.00000000   -0.04110263
 Total        1.09134736   -0.07584372   -0.58792755
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136493
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45708935
 One electron energy                 -193.12159515
 Two electron energy                   83.18230266
 Virial quotient                       -2.65188160
 Correlation energy                    -0.58792756
 !MRCI STATE 3.1 Energy              -109.939292494426

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299812 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299598 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299812 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968823 (Pople, fixed reference)
 Cluster corrected energies          -109.98968608 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968823 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.86995603 (fixed)   0.95723706 (relaxed)   0.95723547 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922374
 Singles      0.01504763   -0.07584409   -0.07760178
 Pairs        0.07629498   -0.00000000   -0.04110204
 Total        1.09134594   -0.07584409   -0.58792756
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136494
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45710076
 One electron energy                 -193.12160524
 Two electron energy                   83.18231275
 Virial quotient                       -2.65188087
 Correlation energy                    -0.58792755
 !MRCI STATE 4.1 Energy              -109.939292490722

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299729 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299514 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299729 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968739 (Pople, fixed reference)
 Cluster corrected energies          -109.98968524 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968739 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95704783 (fixed)   0.95723770 (relaxed)   0.95723611 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922254
 Singles      0.01504861   -0.07584608   -0.07760256
 Pairs        0.07629253   -0.00000000   -0.04110245
 Total        1.09134448   -0.07584608   -0.58792754
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136493
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45713035
 One electron energy                 -193.12162079
 Two electron energy                   83.18232831
 Virial quotient                       -2.65187898
 Correlation energy                    -0.58792754
 !MRCI STATE 5.1 Energy              -109.939292474759

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299641 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299427 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299641 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968651 (Pople, fixed reference)
 Cluster corrected energies          -109.98968436 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968651 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.89236456 (fixed)   0.95723815 (relaxed)   0.95723656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922285
 Singles      0.01504882   -0.07584622   -0.07760278
 Pairs        0.07629130    0.00000000   -0.04110192
 Total        1.09134346   -0.07584622   -0.58792754
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136494
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45714213
 One electron energy                 -193.12162994
 Two electron energy                   83.18233747
 Virial quotient                       -2.65187822
 Correlation energy                    -0.58792753
 !MRCI STATE 6.1 Energy              -109.939292472780

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299581 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299366 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299581 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968590 (Pople, fixed reference)
 Cluster corrected energies          -109.98968375 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968590 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95723634 (fixed)   0.95723794 (relaxed)   0.95723634 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922241
 Singles      0.01504876   -0.07584631   -0.07760271
 Pairs        0.07629184   -0.00000015   -0.04110242
 Total        1.09134394   -0.07584646   -0.58792754
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136493
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45713852
 One electron energy                 -193.12162636
 Two electron energy                   83.18233389
 Virial quotient                       -2.65187846
 Correlation energy                    -0.58792754
 !MRCI STATE 7.1 Energy              -109.939292470702

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299609 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299395 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299609 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968619 (Pople, fixed reference)
 Cluster corrected energies          -109.98968404 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968619 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95420869 (fixed)   0.95689460 (relaxed)   0.95420869 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563752    0.00000000   -0.47367068
 Singles      0.01585083   -0.07278771   -0.07478434
 Pairs        0.07679213    0.00000000   -0.04123158
 Total        1.09828048   -0.07278771   -0.58968660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33364969
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48722022
 One electron energy                 -193.30230209
 Two electron energy                   83.37896580
 Virial quotient                       -2.64957102
 Correlation energy                    -0.58968660
 !MRCI STATE 8.1 Energy              -109.923336294416

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98129098 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766035 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98129098 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801472 (Pople, fixed reference)
 Cluster corrected energies          -109.97434325 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801472 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95420829 (fixed)   0.95689441 (relaxed)   0.95420829 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563797   -0.00000000   -0.47367057
 Singles      0.01585090   -0.07278766   -0.07478428
 Pairs        0.07679253    0.00000000   -0.04123175
 Total        1.09828140   -0.07278766   -0.58968660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33364970
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48721618
 One electron energy                 -193.30230248
 Two electron energy                   83.37896619
 Virial quotient                       -2.64957128
 Correlation energy                    -0.58968660
 !MRCI STATE 9.1 Energy              -109.923336291729

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98129151 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766060 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98129151 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801527 (Pople, fixed reference)
 Cluster corrected energies          -109.97434349 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801527 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.89690176 (fixed)   0.95689470 (relaxed)   0.95420980 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563539   -0.00000000   -0.63431766
 Singles      0.01585081   -0.07278793   -0.07478447
 Pairs        0.07679172    0.17643529    0.11941554
 Total        1.09827792    0.10364737   -0.58968660
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33364969
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48720745
 One electron energy                 -193.30226815
 Two electron energy                   83.37893186
 Virial quotient                       -2.64957183
 Correlation energy                    -0.58968659
 !MRCI STATE 10.1 Energy             -109.923336288257

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98128946 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766021 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98128946 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801318 (Pople, fixed reference)
 Cluster corrected energies          -109.97434310 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801318 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.89691679 (fixed)   0.95689794 (relaxed)   0.95422552 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560909   -0.00000000   -0.03127866
 Singles      0.01584772   -0.07278602   -0.07478434
 Pairs        0.07678494   -0.48585664   -0.48362358
 Total        1.09824174   -0.55864265   -0.58968658
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33364969
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48712446
 One electron energy                 -193.30202618
 Two electron energy                   83.37868991
 Virial quotient                       -2.64957713
 Correlation energy                    -0.58968658
 !MRCI STATE 11.1 Energy             -109.923336271140

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98126811 (Davidson, fixed reference)
 Cluster corrected energies          -109.97765582 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98126811 (Davidson, rotated reference)

 Cluster corrected energies          -109.97799149 (Pople, fixed reference)
 Cluster corrected energies          -109.97433869 (Pople, relaxed reference)
 Cluster corrected energies          -109.97799149 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95422476 (fixed)   0.95689849 (relaxed)   0.95422476 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561182    0.00000000   -0.47367406
 Singles      0.01584821   -0.07278635   -0.07478455
 Pairs        0.07678345   -0.00000000   -0.04122797
 Total        1.09824348   -0.07278635   -0.58968658
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33364969
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48713984
 One electron energy                 -193.30206326
 Two electron energy                   83.37872699
 Virial quotient                       -2.64957615
 Correlation energy                    -0.58968658
 !MRCI STATE 12.1 Energy             -109.923336268891

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98126913 (Davidson, fixed reference)
 Cluster corrected energies          -109.97765508 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98126913 (Davidson, rotated reference)

 Cluster corrected energies          -109.97799253 (Pople, fixed reference)
 Cluster corrected energies          -109.97433795 (Pople, relaxed reference)
 Cluster corrected energies          -109.97799253 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      285.25       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       470.01    434.08     32.21      2.24      1.10
 REAL TIME  *       544.90 SEC
 DISK USED  *       317.36 MB (local),        9.42 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -109.99299846  AU                              
 SETTING HLSDIAG(9)     =      -109.99299769  AU                              
 SETTING HLSDIAG(10)    =      -109.99299812  AU                              
 SETTING HLSDIAG(11)    =      -109.99299729  AU                              
 SETTING HLSDIAG(12)    =      -109.99299641  AU                              
 SETTING HLSDIAG(13)    =      -109.99299581  AU                              
 SETTING HLSDIAG(14)    =      -109.99299609  AU                              
 SETTING HLSDIAG(15)    =      -109.98129098  AU                              
 SETTING HLSDIAG(16)    =      -109.98129151  AU                              
 SETTING HLSDIAG(17)    =      -109.98128946  AU                              
 SETTING HLSDIAG(18)    =      -109.98126811  AU                              
 SETTING HLSDIAG(19)    =      -109.98126913  AU                              


         HLSDIAG
    -110.0164925
    -110.0164924
    -110.0164924
    -110.0164925
    -110.0164925
    -110.0164925
    -110.0164925
    -109.9929985
    -109.9929977
    -109.9929981
    -109.9929973
    -109.9929964
    -109.9929958
    -109.9929961
    -109.9812910
    -109.9812915
    -109.9812895
    -109.9812681
    -109.9812691
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636
 Replaced energies:   -110.016492   -110.016492   -110.016492   -110.016492   -110.016492   -110.016492   -110.016492

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.923336
                      -109.923336   -109.923336   -109.923336   -109.923336
 Replaced energies:   -109.992998   -109.992998   -109.992998   -109.992997   -109.992996   -109.992996   -109.992996   -109.981291
                      -109.981292   -109.981289   -109.981268   -109.981269



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01649249

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     689.98       0.00
                           -0.00      -0.00      -0.00      66.41       0.00       0.00       0.00      -0.00      -0.00    -738.69

    2   2.1  1.5  1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00    -689.98       0.00      -0.00
                            0.00      -0.00     553.08       0.00      -0.00       0.00     117.69       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                            0.00    -553.08       0.00      -0.00      -0.00     292.13       0.00     738.69       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -366.05
                          -66.41      -0.00       0.00       0.00   -1026.23       0.00      -0.00      -0.00     522.02       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -449.88      -0.00
                           -0.00       0.00       0.00    1026.23       0.00       0.00       0.00      -0.00      -0.00    -497.47

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -89.32       0.00      -0.00
                           -0.00      -0.00    -292.13      -0.00      -0.00       0.00   -1496.26      -0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00
                           -0.00    -117.69      -0.00       0.00      -0.00    1496.26      -0.00    -162.37       0.00      -0.00

    8   1.1  1.5  0.5      -0.00    -689.98      -0.00      -0.00      -0.00     -89.32       0.00       0.00       0.00       0.00
                            0.00      -0.00    -738.69       0.00       0.00       0.00     162.37      -0.00      -0.00      -0.00

    9   2.1  1.5  0.5     689.98       0.00       0.00      -0.00    -449.88       0.00      -0.00       0.00       0.01       0.00
                            0.00       0.00      -0.00    -522.02       0.00      -0.00      -0.00       0.00      -0.00     184.36

   10   3.1  1.5  0.5       0.00      -0.00      -0.00    -366.05      -0.00      -0.00       0.00       0.00       0.00       0.01
                          738.69       0.00      -0.00      -0.00     497.47      -0.00       0.00       0.00    -184.36       0.00

   11   4.1  1.5  0.5       0.00       0.00     366.05       0.00      -0.00       0.00    -467.46       0.00       0.00       0.00
                           -0.00     522.02       0.00      -0.00       0.00    -282.86       0.00     -22.14      -0.00       0.00

   12   5.1  1.5  0.5       0.00     449.88       0.00       0.00       0.00     441.42      -0.00       0.00       0.00       0.00
                           -0.00      -0.00    -497.47      -0.00      -0.00       0.00    -248.57      -0.00       0.00       0.00

   13   6.1  1.5  0.5      89.32      -0.00       0.00      -0.00    -441.42       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     282.86      -0.00       0.00      -0.00      -0.00      -0.00     -97.38

   14   7.1  1.5  0.5      -0.00       0.00      -0.00     467.46       0.00       0.00      -0.00       0.00       0.00       0.00
                         -162.37       0.00      -0.00      -0.00     248.57       0.00       0.00      -0.00     -39.23      -0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -796.72      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -852.97

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     796.72       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     852.97       0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     422.68
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     602.78       0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     519.47       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -574.43

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     103.14      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -187.48       0.00      -0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00    -178.93       0.00      -0.00       0.00       0.00       0.00       0.00
                         -121.08       0.00      -0.00       0.00    -302.52       0.00      -0.00       0.00    -158.92      -0.00

   30   2.1  0.5  0.5      -0.00     473.28      -0.00       0.00       0.00      61.07       0.00       0.00       0.00       0.00
                            0.00       0.00     507.20       0.00      -0.00       0.00    -111.30      -0.00       0.00       0.00

   31   3.1  0.5  0.5    -240.15      -0.00      -0.00       0.00     398.96       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     -39.97       0.00      -0.00       0.00       0.00      -0.00     -25.05

   32   4.1  0.5  0.5       0.00      -0.00       0.00    -366.06       0.00      -0.00       0.00       0.00       0.00       0.00
                          504.72       0.00      -0.00      -0.00     232.66       0.00       0.00       0.00     204.14      -0.00

   33   5.1  0.5  0.5       0.00    -309.09      -0.00       0.00       0.00    -302.98      -0.00       0.00       0.00       0.00
                            0.00      -0.00     341.02       0.00      -0.00      -0.00     170.67      -0.00       0.00      -0.00

   34   6.1  0.5  0.5    -412.67       0.00       0.00      -0.00     167.08       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     405.50       0.00       0.00      -0.00      -0.00      -0.00     285.06

   35   7.1  0.5  0.5       0.00      -0.00    -251.21      -0.00       0.00      -0.00     320.80       0.00       0.00       0.00
                           -0.00    -358.25       0.00      -0.00       0.00     194.12       0.00     -30.38      -0.00      -0.00

   36   8.1  0.5  0.5     437.68       0.00       0.00       0.00     495.33      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     522.56       0.00       0.00       0.00      -0.00      -0.00    -740.00

   37   9.1  0.5  0.5      -0.00     266.61      -0.00      -0.00      -0.00    -604.84      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -3.49       0.00      -0.00      -0.00     660.98      -0.00       0.00       0.00

   38  10.1  0.5  0.5       0.00      -0.00    -425.44      -0.00       0.00       0.00    -538.21       0.00       0.00       0.00
                           -0.00      59.24       0.00       0.00       0.00    -624.65      -0.00    -206.11      -0.00      -0.00

   39  11.1  0.5  0.5      -0.00       0.00     476.99      -0.00       0.00      -0.00    -257.76       0.00       0.00       0.00
                           -0.00    -564.96       0.00      -0.00      -0.00    -227.49      -0.00     782.13      -0.00       0.00

   40  12.1  0.5  0.5      -0.00      -0.00       0.00     522.59      -0.00       0.00      -0.00       0.00       0.00       0.00
                          370.21      -0.00       0.00      -0.00    -547.63      -0.00       0.00       0.00     753.23       0.00

   41   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -69.91       0.00      -0.00

   42   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     273.25      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     292.83

   43   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -138.65      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   44   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     291.40       0.00      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -178.45      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     196.89

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -238.25       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -145.04
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -206.83       0.00

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     252.69       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     153.93      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -2.01

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -245.63
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      34.20       0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     275.39
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -326.18       0.00

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     213.74      -0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5       0.00       0.00      89.32      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     162.37       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00     449.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -522.02       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5     366.05       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     497.47      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00      -0.00     467.46       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -282.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00       0.00    -441.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -248.57       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00     441.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          282.86      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5    -467.46      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     248.57       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00     796.72       0.00       0.00       0.00     103.14
                           22.14       0.00       0.00       0.00      -0.00      -0.00    -852.97       0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00    -796.72       0.00      -0.00       0.00     519.47      -0.00
                            0.00      -0.00       0.00      39.23       0.00      -0.00      -0.00    -602.78       0.00      -0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     422.68       0.00       0.00
                           -0.00      -0.00      97.38       0.00     852.97       0.00       0.00      -0.00     574.43      -0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -422.68       0.00       0.00      -0.00
                            0.00    -342.08       0.00      -0.00      -0.00     602.78       0.00       0.00       0.00    -326.62

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -519.47      -0.00      -0.00       0.00    -509.71
                          342.08       0.00       0.00       0.00      -0.00      -0.00    -574.43      -0.00       0.00       0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00    -103.14       0.00      -0.00       0.00     509.71       0.00
                           -0.00      -0.00       0.00    -498.75      -0.00       0.00       0.00     326.62      -0.00      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.01       0.00      -0.00       0.00    -539.78      -0.00      -0.00
                            0.00      -0.00     498.75      -0.00    -187.48       0.00      -0.00      -0.00     287.02       0.00

   15   1.1  1.5 -0.5      -0.00      -0.00    -103.14       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00     187.48       0.00       0.00       0.00     -22.14      -0.00      -0.00

   16   2.1  1.5 -0.5      -0.00    -519.47       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00
                         -602.78       0.00      -0.00      -0.00      -0.00       0.00    -184.36      -0.00       0.00      -0.00

   17   3.1  1.5 -0.5    -422.68      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                           -0.00     574.43      -0.00       0.00      -0.00     184.36      -0.00       0.00       0.00     -97.38

   18   4.1  1.5 -0.5       0.00      -0.00       0.00    -539.78       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -326.62       0.00      22.14       0.00      -0.00      -0.00     342.08      -0.00

   19   5.1  1.5 -0.5       0.00       0.00     509.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -287.02       0.00      -0.00      -0.00    -342.08      -0.00      -0.00

   20   6.1  1.5 -0.5      -0.00    -509.71       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          326.62      -0.00       0.00      -0.00       0.00       0.00      97.38       0.00       0.00      -0.00

   21   7.1  1.5 -0.5     539.78       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     287.02       0.00       0.00       0.00      39.23       0.00      -0.00       0.00    -498.75

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -689.98      -0.00      -0.00      -0.00     -89.32
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -738.69       0.00       0.00       0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00     689.98       0.00       0.00      -0.00    -449.88       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -522.02       0.00      -0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -366.05      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00     738.69       0.00      -0.00      -0.00     497.47      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00     366.05       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     522.02       0.00      -0.00       0.00    -282.86

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     449.88       0.00       0.00       0.00     441.42
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -497.47      -0.00      -0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      89.32      -0.00       0.00      -0.00    -441.42       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     282.86      -0.00       0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     467.46       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -162.37       0.00      -0.00      -0.00     248.57       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -103.31       0.00      -0.00
                            0.00       0.00     674.22       0.00      69.91      -0.00       0.00      -0.00     174.66      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     273.25      -0.00       0.00       0.00      35.26
                           30.74       0.00       0.00       0.00      -0.00      -0.00    -292.83      -0.00       0.00      -0.00

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00    -138.65      -0.00      -0.00       0.00     230.34       0.00
                           -0.00       0.00       0.00    -610.09       0.00       0.00      -0.00      23.08      -0.00       0.00

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -211.35       0.00      -0.00
                           -0.00      -0.00     178.63       0.00    -291.40      -0.00       0.00       0.00    -134.33      -0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -178.45      -0.00       0.00       0.00    -174.92
                          469.49      -0.00      -0.00       0.00      -0.00       0.00    -196.89      -0.00       0.00       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00    -238.25       0.00       0.00      -0.00      96.46       0.00
                            0.00      -0.00      -0.00     315.14       0.00      -0.00       0.00    -234.11      -0.00      -0.00

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00    -145.04      -0.00       0.00      -0.00
                           -0.00    -469.51       0.00       0.00       0.00     206.83      -0.00       0.00      -0.00    -112.07

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00     252.69       0.00       0.00       0.00     285.98      -0.00
                           -0.00      -0.00       0.00     186.91      -0.00      -0.00      -0.00    -301.70      -0.00      -0.00

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     153.93      -0.00      -0.00      -0.00    -349.20
                         -603.39      -0.00      -0.00      -0.00       0.00      -0.00       2.01      -0.00       0.00       0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00    -245.63      -0.00       0.00       0.00
                            0.00    -578.10      -0.00       0.00       0.00     -34.20      -0.00      -0.00      -0.00     360.64

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     275.39      -0.00       0.00      -0.00
                           -0.00    -176.36      -0.00       0.00       0.00     326.18      -0.00       0.00       0.00     131.34

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     301.71      -0.00       0.00
                           -0.00      -0.00     123.48       0.00    -213.74       0.00      -0.00       0.00     316.18       0.00

   41   1.1  0.5 -0.5    -103.31       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -174.66       0.00      -0.00       0.00    -158.92      -0.00       0.00       0.00     674.22

   42   2.1  0.5 -0.5       0.00       0.00      35.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -64.26      -0.00       0.00       0.00      30.74       0.00       0.00

   43   3.1  0.5 -0.5       0.00     230.34       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -23.08       0.00      -0.00       0.00       0.00      -0.00     -25.05      -0.00       0.00       0.00

   44   4.1  0.5 -0.5    -211.35       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     134.33       0.00       0.00       0.00     204.14      -0.00      -0.00      -0.00     178.63

   45   5.1  0.5 -0.5       0.00       0.00    -174.92      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      98.53      -0.00       0.00      -0.00     469.49      -0.00      -0.00

   46   6.1  0.5 -0.5      -0.00      96.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          234.11       0.00       0.00      -0.00      -0.00      -0.00     285.06       0.00      -0.00      -0.00

   47   7.1  0.5 -0.5      -0.00       0.00      -0.00     185.21       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     112.07       0.00     -30.38      -0.00      -0.00      -0.00    -469.51       0.00

   48   8.1  0.5 -0.5       0.00     285.98      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          301.70       0.00       0.00       0.00      -0.00      -0.00    -740.00      -0.00      -0.00       0.00

   49   9.1  0.5 -0.5      -0.00      -0.00    -349.20      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     381.62      -0.00       0.00       0.00    -603.39      -0.00      -0.00

   50  10.1  0.5 -0.5      -0.00       0.00       0.00    -310.74       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -360.64      -0.00    -206.11      -0.00      -0.00       0.00    -578.10      -0.00

   51  11.1  0.5 -0.5      -0.00       0.00      -0.00    -148.82       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -131.34      -0.00     782.13      -0.00       0.00      -0.00    -176.36      -0.00

   52  12.1  0.5 -0.5     301.71      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -316.18      -0.00       0.00       0.00     753.23       0.00      -0.00      -0.00     123.48


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     121.08      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     473.28
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -507.20

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -178.93       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     302.52       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      61.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     111.30

    8   1.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          187.48       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     158.92      -0.00

   10   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   11   4.1  1.5  0.5     539.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -30.74

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -287.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -674.22      -0.00

   14   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   15   1.1  1.5 -0.5       0.00      -0.00     689.98       0.00       0.00       0.00      89.32      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00    -738.69       0.00       0.00       0.00     162.37     -69.91       0.00

   16   2.1  1.5 -0.5       0.00    -689.98       0.00      -0.00       0.00     449.88      -0.00       0.00       0.00     273.25
                          -39.23       0.00      -0.00      -0.00    -522.02       0.00      -0.00      -0.00       0.00       0.00

   17   3.1  1.5 -0.5       0.00      -0.00       0.00      -0.00     366.05       0.00       0.00      -0.00       0.00      -0.00
                           -0.00     738.69       0.00       0.00      -0.00     497.47      -0.00       0.00      -0.00     292.83

   18   4.1  1.5 -0.5       0.00      -0.00      -0.00    -366.05       0.00       0.00      -0.00     467.46    -103.31       0.00
                            0.00      -0.00     522.02       0.00       0.00       0.00    -282.86       0.00       0.00       0.00

   19   5.1  1.5 -0.5       0.00      -0.00    -449.88      -0.00      -0.00       0.00    -441.42       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -497.47      -0.00       0.00       0.00    -248.57    -174.66      -0.00

   20   6.1  1.5 -0.5       0.00     -89.32       0.00      -0.00       0.00     441.42       0.00       0.00      -0.00      35.26
                          498.75      -0.00       0.00       0.00     282.86      -0.00      -0.00      -0.00       0.00       0.00

   21   7.1  1.5 -0.5       0.01       0.00      -0.00       0.00    -467.46      -0.00      -0.00      -0.00       0.00       0.00
                            0.00    -162.37       0.00      -0.00      -0.00     248.57       0.00      -0.00      -0.00     -64.26

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          162.37       0.00       0.00       0.00     -66.41      -0.00      -0.00      -0.00       0.00       0.00

   23   2.1  1.5 -1.5      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -553.08      -0.00       0.00      -0.00    -117.69       0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     553.08      -0.00       0.00       0.00    -292.13      -0.00       0.00       0.00

   25   4.1  1.5 -1.5    -467.46       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      66.41       0.00      -0.00      -0.00    1026.23      -0.00       0.00       0.00       0.00

   26   5.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -248.57       0.00      -0.00      -0.00   -1026.23      -0.00      -0.00      -0.00       0.00       0.00

   27   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     292.13       0.00       0.00      -0.00    1496.26       0.00       0.00

   28   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00     117.69       0.00      -0.00       0.00   -1496.26       0.00       0.00       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5156.34       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5156.51
                           64.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   31   3.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -796.92      -0.00

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -98.53      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     580.79       0.00

   35   7.1  0.5  0.5     185.21       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     -43.75

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     108.99      -0.00

   37   9.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -381.62      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   38  10.1  0.5  0.5    -310.74       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     145.30

   39  11.1  0.5  0.5    -148.82       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -550.13

   40  12.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   41   1.1  0.5 -0.5       0.00       0.00       0.00       0.00    -178.93       0.00      -0.00       0.00       0.00       0.00
                            0.00     121.08      -0.00       0.00      -0.00     302.52      -0.00       0.00       0.00     199.41

   42   2.1  0.5 -0.5       0.00      -0.00     473.28      -0.00       0.00       0.00      61.07       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00    -507.20      -0.00       0.00      -0.00     111.30    -199.41       0.00

   43   3.1  0.5 -0.5       0.00    -240.15      -0.00      -0.00       0.00     398.96       0.00      -0.00      -0.00     394.27
                         -610.09       0.00       0.00      -0.00      39.97      -0.00       0.00      -0.00       0.00      -0.00

   44   4.1  0.5 -0.5       0.00       0.00      -0.00       0.00    -366.06       0.00      -0.00       0.00       0.00      -0.00
                            0.00    -504.72      -0.00       0.00       0.00    -232.66      -0.00      -0.00       0.00    -829.95

   45   5.1  0.5 -0.5       0.00       0.00    -309.09      -0.00       0.00       0.00    -302.98      -0.00      -0.00       0.00
                            0.00      -0.00       0.00    -341.02      -0.00       0.00       0.00    -170.67    -497.14       0.00

   46   6.1  0.5 -0.5       0.00    -412.67       0.00       0.00      -0.00     167.08       0.00       0.00       0.00     678.15
                          315.14       0.00      -0.00       0.00    -405.50      -0.00      -0.00       0.00       0.00      -0.00

   47   7.1  0.5 -0.5       0.00       0.00      -0.00    -251.21      -0.00       0.00      -0.00     320.80    -294.14      -0.00
                            0.00       0.00     358.25      -0.00       0.00      -0.00    -194.12      -0.00       0.00      -0.00

   48   8.1  0.5 -0.5       0.00     437.68       0.00       0.00       0.00     495.33      -0.00       0.00       0.00     355.84
                          186.91      -0.00      -0.00      -0.00    -522.56      -0.00      -0.00      -0.00       0.00       0.00

   49   9.1  0.5 -0.5       0.00      -0.00     266.61      -0.00      -0.00      -0.00    -604.84      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       3.49      -0.00       0.00       0.00    -660.98     481.82      -0.00

   50  10.1  0.5 -0.5       0.00       0.00      -0.00    -425.44      -0.00       0.00       0.00    -538.21    -544.22      -0.00
                            0.00       0.00     -59.24      -0.00      -0.00      -0.00     624.65       0.00      -0.00      -0.00

   51  11.1  0.5 -0.5       0.00      -0.00       0.00     476.99      -0.00       0.00      -0.00    -257.76     -19.20       0.00
                            0.00       0.00     564.96      -0.00       0.00       0.00     227.49       0.00      -0.00      -0.00

   52  12.1  0.5 -0.5       0.00      -0.00      -0.00       0.00     522.59      -0.00       0.00      -0.00       0.00       0.00
                            0.00    -370.21       0.00      -0.00       0.00     547.63       0.00      -0.00       0.00     300.39


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5    -240.15       0.00       0.00    -412.67       0.00     437.68      -0.00       0.00      -0.00      -0.00
                            0.00    -504.72      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -370.21

    2   2.1  1.5  1.5      -0.00      -0.00    -309.09       0.00      -0.00       0.00     266.61      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00     358.25      -0.00      -0.00     -59.24     564.96       0.00

    3   3.1  1.5  1.5      -0.00       0.00      -0.00       0.00    -251.21       0.00      -0.00    -425.44     476.99       0.00
                           -0.00       0.00    -341.02       0.00      -0.00      -0.00       3.49      -0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00    -366.06       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     522.59
                           39.97       0.00      -0.00    -405.50       0.00    -522.56      -0.00      -0.00       0.00       0.00

    5   5.1  1.5  1.5     398.96       0.00       0.00     167.08       0.00     495.33      -0.00       0.00       0.00      -0.00
                           -0.00    -232.66       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     547.63

    6   6.1  1.5  1.5       0.00      -0.00    -302.98       0.00      -0.00      -0.00    -604.84       0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00    -194.12      -0.00       0.00     624.65     227.49       0.00

    7   7.1  1.5  1.5      -0.00       0.00      -0.00       0.00     320.80       0.00      -0.00    -538.21    -257.76      -0.00
                           -0.00      -0.00    -170.67       0.00      -0.00      -0.00    -660.98       0.00       0.00      -0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00      30.38       0.00       0.00     206.11    -782.13      -0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -204.14      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -753.23

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           25.05       0.00       0.00    -285.06       0.00     740.00      -0.00       0.00      -0.00      -0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -469.49      -0.00       0.00       0.00     603.39      -0.00       0.00       0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00     469.51       0.00       0.00     578.10     176.36       0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -178.63       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00    -123.48

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          610.09      -0.00      -0.00    -315.14      -0.00    -186.91       0.00      -0.00      -0.00      -0.00

   15   1.1  1.5 -0.5    -138.65       0.00       0.00    -238.25       0.00     252.69      -0.00       0.00      -0.00      -0.00
                           -0.00     291.40       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     213.74

   16   2.1  1.5 -0.5      -0.00      -0.00    -178.45       0.00      -0.00       0.00     153.93      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00    -206.83       0.00       0.00      34.20    -326.18      -0.00

   17   3.1  1.5 -0.5      -0.00       0.00      -0.00       0.00    -145.04       0.00      -0.00    -245.63     275.39       0.00
                            0.00      -0.00     196.89      -0.00       0.00       0.00      -2.01       0.00       0.00       0.00

   18   4.1  1.5 -0.5       0.00    -211.35       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     301.71
                          -23.08      -0.00       0.00     234.11      -0.00     301.70       0.00       0.00      -0.00      -0.00

   19   5.1  1.5 -0.5     230.34       0.00       0.00      96.46       0.00     285.98      -0.00       0.00       0.00      -0.00
                            0.00     134.33      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -316.18

   20   6.1  1.5 -0.5       0.00      -0.00    -174.92       0.00      -0.00      -0.00    -349.20       0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00     112.07       0.00      -0.00    -360.64    -131.34      -0.00

   21   7.1  1.5 -0.5      -0.00       0.00      -0.00       0.00     185.21       0.00      -0.00    -310.74    -148.82      -0.00
                            0.00       0.00      98.53      -0.00       0.00       0.00     381.62      -0.00      -0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          796.92       0.00      -0.00    -580.79      -0.00    -108.99       0.00      -0.00       0.00      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      43.75       0.00      -0.00    -145.30     550.13      -0.00

   31   3.1  0.5  0.5    5156.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -347.11      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     285.59

   32   4.1  0.5  0.5       0.00    5156.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          347.11       0.00       0.00     169.24       0.00     525.76      -0.00       0.00      -0.00      -0.00

   33   5.1  0.5  0.5       0.00       0.00    5156.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     668.35      -0.00      -0.00    -406.58    -124.48       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00    5156.93       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -169.24       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00     454.72

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5156.86       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -668.35       0.00       0.00      -0.00    -424.49       0.00       0.00      -0.00

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7725.84       0.00       0.00       0.00       0.00
                           -0.00    -525.76       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      55.02

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7725.72       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     424.49      -0.00       0.00    -107.67     -22.88       0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7726.17       0.00       0.00
                            0.00      -0.00     406.58       0.00      -0.00      -0.00     107.67       0.00      -0.00      -0.00

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7730.86       0.00
                            0.00       0.00     124.48      -0.00      -0.00      -0.00      22.88       0.00       0.00       0.00

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7730.63
                         -285.59       0.00      -0.00    -454.72       0.00     -55.02      -0.00       0.00      -0.00       0.00

   41   1.1  0.5 -0.5       0.00      -0.00       0.00      -0.00     294.14      -0.00       0.00     544.22      19.20      -0.00
                           -0.00      -0.00     497.14      -0.00      -0.00      -0.00    -481.82       0.00       0.00      -0.00

   42   2.1  0.5 -0.5    -394.27       0.00      -0.00    -678.15       0.00    -355.84      -0.00       0.00      -0.00      -0.00
                            0.00     829.95      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -300.39

   43   3.1  0.5 -0.5      -0.00       0.00    -656.12      -0.00       0.00       0.00     368.86       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      65.71      -0.00       0.00     449.03     348.33       0.00

   44   4.1  0.5 -0.5      -0.00      -0.00       0.00       0.00     601.75       0.00      -0.00    -120.03     440.00       0.00
                            0.00       0.00    -381.83      -0.00      -0.00      -0.00    -236.97       0.00       0.00       0.00

   45   5.1  0.5 -0.5     656.12      -0.00      -0.00     275.14       0.00    -402.10       0.00      -0.00      -0.00       0.00
                           -0.00     381.83       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     445.08

   46   6.1  0.5 -0.5       0.00      -0.00    -275.14      -0.00      -0.00      -0.00    -390.18       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -666.55      -0.00       0.00    -241.17     351.34       0.00

   47   7.1  0.5 -0.5      -0.00    -601.75      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -424.51
                          -65.71       0.00      -0.00     666.55      -0.00    -424.49       0.00      -0.00       0.00       0.00

   48   8.1  0.5 -0.5      -0.00      -0.00     402.10       0.00       0.00       0.00     -55.04      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     424.49       0.00      -0.00      73.66     -81.76       0.00

   49   9.1  0.5 -0.5    -368.86       0.00      -0.00     390.18      -0.00      55.04       0.00       0.00       0.00       0.00
                           -0.00     236.97       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     -55.02

   50  10.1  0.5 -0.5      -0.00     120.03       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     -34.00
                         -449.03      -0.00       0.00     241.17       0.00     -73.66       0.00       0.00      -0.00      -0.00

   51  11.1  0.5 -0.5      -0.00    -440.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -104.60
                         -348.33      -0.00      -0.00    -351.34      -0.00      81.76      -0.00       0.00      -0.00       0.00

   52  12.1  0.5 -0.5      -0.00      -0.00      -0.00      -0.00     424.51      -0.00      -0.00      34.00     104.60       0.00
                           -0.00      -0.00    -445.08      -0.00      -0.00      -0.00      55.02       0.00      -0.00      -0.00


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

    8   1.1  1.5  0.5       0.00      -0.00    -138.65       0.00       0.00    -238.25       0.00     252.69      -0.00       0.00
                           69.91      -0.00       0.00    -291.40      -0.00       0.00       0.00      -0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00     273.25      -0.00      -0.00    -178.45       0.00      -0.00       0.00     153.93      -0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00     206.83      -0.00      -0.00     -34.20

   10   3.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00    -145.04       0.00      -0.00    -245.63
                            0.00    -292.83      -0.00       0.00    -196.89       0.00      -0.00      -0.00       2.01      -0.00

   11   4.1  1.5  0.5    -103.31       0.00       0.00    -211.35       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      23.08       0.00      -0.00    -234.11       0.00    -301.70      -0.00      -0.00

   12   5.1  1.5  0.5       0.00       0.00     230.34       0.00       0.00      96.46       0.00     285.98      -0.00       0.00
                          174.66       0.00      -0.00    -134.33       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   13   6.1  1.5  0.5      -0.00      35.26       0.00      -0.00    -174.92       0.00      -0.00      -0.00    -349.20       0.00
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00    -112.07      -0.00       0.00     360.64

   14   7.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00     185.21       0.00      -0.00    -310.74
                            0.00      64.26      -0.00      -0.00     -98.53       0.00      -0.00      -0.00    -381.62       0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      30.38       0.00       0.00     206.11

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          158.92      -0.00       0.00    -204.14      -0.00       0.00       0.00       0.00      -0.00       0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      25.05       0.00       0.00    -285.06       0.00     740.00      -0.00       0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -30.74       0.00       0.00    -469.49      -0.00       0.00       0.00     603.39      -0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00     469.51       0.00       0.00     578.10

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -674.22      -0.00      -0.00    -178.63       0.00       0.00      -0.00      -0.00       0.00       0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     610.09      -0.00      -0.00    -315.14      -0.00    -186.91       0.00      -0.00

   22   1.1  1.5 -1.5       0.00      -0.00    -240.15       0.00       0.00    -412.67       0.00     437.68      -0.00       0.00
                         -121.08       0.00      -0.00     504.72       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00     473.28      -0.00      -0.00    -309.09       0.00      -0.00       0.00     266.61      -0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00    -358.25       0.00       0.00      59.24

   24   3.1  1.5 -1.5       0.00      -0.00      -0.00       0.00      -0.00       0.00    -251.21       0.00      -0.00    -425.44
                           -0.00     507.20       0.00      -0.00     341.02      -0.00       0.00       0.00      -3.49       0.00

   25   4.1  1.5 -1.5    -178.93       0.00       0.00    -366.06       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00     -39.97      -0.00       0.00     405.50      -0.00     522.56       0.00       0.00

   26   5.1  1.5 -1.5       0.00       0.00     398.96       0.00       0.00     167.08       0.00     495.33      -0.00       0.00
                         -302.52      -0.00       0.00     232.66      -0.00       0.00       0.00       0.00      -0.00       0.00

   27   6.1  1.5 -1.5      -0.00      61.07       0.00      -0.00    -302.98       0.00      -0.00      -0.00    -604.84       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00     194.12       0.00      -0.00    -624.65

   28   7.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00       0.00     320.80       0.00      -0.00    -538.21
                           -0.00    -111.30       0.00       0.00     170.67      -0.00       0.00       0.00     660.98      -0.00

   29   1.1  0.5  0.5       0.00      -0.00      -0.00       0.00      -0.00       0.00    -294.14       0.00      -0.00    -544.22
                           -0.00     199.41      -0.00      -0.00     497.14      -0.00      -0.00      -0.00    -481.82       0.00

   30   2.1  0.5  0.5       0.00      -0.00     394.27      -0.00       0.00     678.15      -0.00     355.84       0.00      -0.00
                         -199.41      -0.00       0.00     829.95      -0.00       0.00       0.00      -0.00       0.00       0.00

   31   3.1  0.5  0.5       0.00    -394.27      -0.00      -0.00     656.12       0.00      -0.00      -0.00    -368.86      -0.00
                            0.00      -0.00       0.00      -0.00       0.00      -0.00      65.71      -0.00       0.00     449.03

   32   4.1  0.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -601.75      -0.00       0.00     120.03
                            0.00    -829.95       0.00      -0.00    -381.83      -0.00      -0.00      -0.00    -236.97       0.00

   33   5.1  0.5  0.5       0.00      -0.00    -656.12       0.00      -0.00    -275.14      -0.00     402.10      -0.00       0.00
                         -497.14       0.00      -0.00     381.83      -0.00       0.00       0.00       0.00      -0.00      -0.00

   34   6.1  0.5  0.5      -0.00    -678.15      -0.00       0.00     275.14      -0.00       0.00       0.00     390.18      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00    -666.55      -0.00       0.00    -241.17

   35   7.1  0.5  0.5     294.14       0.00       0.00     601.75       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00     -65.71       0.00      -0.00     666.55       0.00    -424.49       0.00      -0.00

   36   8.1  0.5  0.5      -0.00    -355.84       0.00       0.00    -402.10      -0.00      -0.00       0.00      55.04       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00     424.49      -0.00      -0.00      73.66

   37   9.1  0.5  0.5       0.00      -0.00     368.86      -0.00       0.00    -390.18       0.00     -55.04       0.00      -0.00
                          481.82      -0.00      -0.00     236.97       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   38  10.1  0.5  0.5     544.22       0.00       0.00    -120.03      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -449.03      -0.00       0.00     241.17       0.00     -73.66       0.00      -0.00

   39  11.1  0.5  0.5      19.20      -0.00       0.00     440.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -348.33      -0.00      -0.00    -351.34      -0.00      81.76      -0.00       0.00

   40  12.1  0.5  0.5      -0.00      -0.00       0.00       0.00       0.00       0.00    -424.51       0.00       0.00     -34.00
                            0.00     300.39      -0.00      -0.00    -445.08      -0.00      -0.00      -0.00      55.02       0.00

   41   1.1  0.5 -0.5    5156.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -796.92      -0.00       0.00     580.79       0.00     108.99      -0.00       0.00

   42   2.1  0.5 -0.5       0.00    5156.51       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00     -43.75      -0.00       0.00     145.30

   43   3.1  0.5 -0.5       0.00       0.00    5156.42       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          796.92       0.00      -0.00     347.11       0.00      -0.00      -0.00      -0.00       0.00       0.00

   44   4.1  0.5 -0.5       0.00       0.00       0.00    5156.60       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -347.11      -0.00      -0.00    -169.24      -0.00    -525.76       0.00      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00    5156.79       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00    -668.35       0.00       0.00     406.58

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5156.93       0.00       0.00       0.00       0.00
                         -580.79      -0.00       0.00     169.24      -0.00       0.00       0.00       0.00      -0.00       0.00

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5156.86       0.00       0.00       0.00
                           -0.00      43.75       0.00       0.00     668.35      -0.00      -0.00       0.00     424.49      -0.00

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7725.84       0.00       0.00
                         -108.99       0.00       0.00     525.76      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7725.72       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00    -424.49       0.00      -0.00     107.67

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7726.17
                           -0.00    -145.30      -0.00       0.00    -406.58      -0.00       0.00       0.00    -107.67      -0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     550.13      -0.00      -0.00    -124.48       0.00       0.00       0.00     -22.88      -0.00

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     285.59      -0.00       0.00     454.72      -0.00      55.02       0.00      -0.00


   Nr   State  S   Sz       51         52

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

    8   1.1  1.5  0.5      -0.00      -0.00
                            0.00    -213.74

    9   2.1  1.5  0.5       0.00      -0.00
                          326.18       0.00

   10   3.1  1.5  0.5     275.39       0.00
                           -0.00      -0.00

   11   4.1  1.5  0.5      -0.00     301.71
                            0.00       0.00

   12   5.1  1.5  0.5       0.00      -0.00
                            0.00     316.18

   13   6.1  1.5  0.5      -0.00       0.00
                          131.34       0.00

   14   7.1  1.5  0.5    -148.82      -0.00
                            0.00      -0.00

   15   1.1  1.5 -0.5       0.00       0.00
                         -782.13      -0.00

   16   2.1  1.5 -0.5       0.00       0.00
                            0.00    -753.23

   17   3.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00
                          176.36       0.00

   20   6.1  1.5 -0.5       0.00       0.00
                            0.00    -123.48

   21   7.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   22   1.1  1.5 -1.5      -0.00      -0.00
                           -0.00     370.21

   23   2.1  1.5 -1.5       0.00      -0.00
                         -564.96      -0.00

   24   3.1  1.5 -1.5     476.99       0.00
                            0.00       0.00

   25   4.1  1.5 -1.5      -0.00     522.59
                           -0.00      -0.00

   26   5.1  1.5 -1.5       0.00      -0.00
                           -0.00    -547.63

   27   6.1  1.5 -1.5      -0.00       0.00
                         -227.49      -0.00

   28   7.1  1.5 -1.5    -257.76      -0.00
                           -0.00       0.00

   29   1.1  0.5  0.5     -19.20       0.00
                            0.00      -0.00

   30   2.1  0.5  0.5       0.00       0.00
                            0.00    -300.39

   31   3.1  0.5  0.5      -0.00      -0.00
                          348.33       0.00

   32   4.1  0.5  0.5    -440.00      -0.00
                            0.00       0.00

   33   5.1  0.5  0.5       0.00      -0.00
                            0.00     445.08

   34   6.1  0.5  0.5      -0.00      -0.00
                          351.34       0.00

   35   7.1  0.5  0.5      -0.00     424.51
                            0.00       0.00

   36   8.1  0.5  0.5      -0.00      -0.00
                          -81.76       0.00

   37   9.1  0.5  0.5      -0.00      -0.00
                            0.00     -55.02

   38  10.1  0.5  0.5      -0.00      34.00
                           -0.00      -0.00

   39  11.1  0.5  0.5       0.00     104.60
                            0.00       0.00

   40  12.1  0.5  0.5    -104.60       0.00
                           -0.00       0.00

   41   1.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   42   2.1  0.5 -0.5       0.00       0.00
                         -550.13       0.00

   43   3.1  0.5 -0.5       0.00       0.00
                            0.00    -285.59

   44   4.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   45   5.1  0.5 -0.5       0.00       0.00
                          124.48      -0.00

   46   6.1  0.5 -0.5       0.00       0.00
                           -0.00    -454.72

   47   7.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   48   8.1  0.5 -0.5       0.00       0.00
                           -0.00     -55.02

   49   9.1  0.5 -0.5       0.00       0.00
                           22.88      -0.00

   50  10.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   51  11.1  0.5 -0.5    7730.86       0.00
                           -0.00      -0.00

   52  12.1  0.5 -0.5       0.00    7730.63
                            0.00      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02352090    -0.00702841    -1542.56      0.00000000        0.00      0.0000
     2  -110.02352090    -0.00702841    -1542.56      0.00000000        0.00      0.0000
     3  -110.02352088    -0.00702839    -1542.55      0.00000002        0.00      0.0000
     4  -110.02352088    -0.00702839    -1542.55      0.00000002        0.00      0.0000
     5  -110.02352087    -0.00702838    -1542.55      0.00000003        0.01      0.0000
     6  -110.02352087    -0.00702838    -1542.55      0.00000003        0.01      0.0000
     7  -110.02352087    -0.00702837    -1542.55      0.00000003        0.01      0.0000
     8  -110.02352087    -0.00702837    -1542.55      0.00000003        0.01      0.0000
     9  -110.02352086    -0.00702837    -1542.55      0.00000004        0.01      0.0000
    10  -110.02352086    -0.00702837    -1542.55      0.00000004        0.01      0.0000
    11  -110.01727964    -0.00078715     -172.76      0.00624126     1369.80      0.1698
    12  -110.01727964    -0.00078715     -172.76      0.00624126     1369.80      0.1698
    13  -110.01727959    -0.00078709     -172.75      0.00624131     1369.81      0.1698
    14  -110.01727959    -0.00078709     -172.75      0.00624131     1369.81      0.1698
    15  -110.01727956    -0.00078707     -172.74      0.00624134     1369.82      0.1698
    16  -110.01727956    -0.00078707     -172.74      0.00624134     1369.82      0.1698
    17  -110.01727954    -0.00078705     -172.74      0.00624135     1369.82      0.1698
    18  -110.01727954    -0.00078705     -172.74      0.00624135     1369.82      0.1698
    19  -110.01200742     0.00448507      984.36      0.01151348     2526.92      0.3133
    20  -110.01200742     0.00448507      984.36      0.01151348     2526.92      0.3133
    21  -110.01200732     0.00448517      984.38      0.01151358     2526.94      0.3133
    22  -110.01200732     0.00448517      984.38      0.01151358     2526.94      0.3133
    23  -110.01200706     0.00448544      984.44      0.01151384     2527.00      0.3133
    24  -110.01200706     0.00448544      984.44      0.01151384     2527.00      0.3133
    25  -110.00880582     0.00768667     1687.03      0.01471508     3229.59      0.4004
    26  -110.00880582     0.00768667     1687.03      0.01471508     3229.59      0.4004
    27  -110.00880503     0.00768746     1687.20      0.01471587     3229.76      0.4004
    28  -110.00880503     0.00768746     1687.20      0.01471587     3229.76      0.4004
    29  -109.99678867     0.01970382     4324.49      0.02673223     5867.05      0.7274
    30  -109.99678867     0.01970382     4324.49      0.02673223     5867.05      0.7274
    31  -109.99678788     0.01970461     4324.66      0.02673302     5867.22      0.7274
    32  -109.99678788     0.01970461     4324.66      0.02673302     5867.22      0.7274
    33  -109.99678736     0.01970514     4324.78      0.02673354     5867.33      0.7275
    34  -109.99678736     0.01970514     4324.78      0.02673354     5867.33      0.7275
    35  -109.99678673     0.01970576     4324.92      0.02673417     5867.47      0.7275
    36  -109.99678673     0.01970576     4324.92      0.02673417     5867.47      0.7275
    37  -109.99005190     0.02644059     5803.04      0.03346900     7345.60      0.9107
    38  -109.99005190     0.02644059     5803.04      0.03346900     7345.60      0.9107
    39  -109.99005009     0.02644240     5803.44      0.03347081     7345.99      0.9108
    40  -109.99005009     0.02644240     5803.44      0.03347081     7345.99      0.9108
    41  -109.99004542     0.02644708     5804.46      0.03347548     7347.02      0.9109
    42  -109.99004542     0.02644708     5804.46      0.03347548     7347.02      0.9109
    43  -109.97885328     0.03763922     8260.85      0.04466762     9803.41      1.2155
    44  -109.97885328     0.03763922     8260.85      0.04466762     9803.41      1.2155
    45  -109.97883799     0.03765450     8264.21      0.04468291     9806.76      1.2159
    46  -109.97883799     0.03765450     8264.21      0.04468291     9806.76      1.2159
    47  -109.97765267     0.03883982     8524.36      0.04586823    10066.91      1.2481
    48  -109.97765267     0.03883982     8524.36      0.04586823    10066.91      1.2481
    49  -109.97764927     0.03884322     8525.10      0.04587163    10067.66      1.2482
    50  -109.97764927     0.03884322     8525.10      0.04587163    10067.66      1.2482
    51  -109.97763700     0.03885549     8527.79      0.04588390    10070.35      1.2486
    52  -109.97763700     0.03885549     8527.79      0.04588390    10070.35      1.2486


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.000000000   0.025247323  -0.001119159  -0.037252751  -0.264489411  -0.004674570   0.255376419   0.001775136
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.045128605   0.000000000  -0.030706702   0.000922500  -0.001655069   0.093644587   0.002607639  -0.375142772
                        -0.050123490  -0.000000000   0.025981714  -0.000780551  -0.001548022   0.087587834   0.001695296  -0.243890318

    3    3.1  1.5  1.5   0.056018414  -0.000000000  -0.072494168   0.002177893   0.005107302  -0.288973619  -0.001030359   0.148230462
                         0.050436090   0.000000000  -0.085677826   0.002573960  -0.005460475   0.308956321   0.001584858  -0.228002436

    4    4.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.032880860   0.017370504   0.578201254  -0.059583328  -0.001053072  -0.050306756  -0.000349685

    5    5.1  1.5  1.5   0.000000000  -0.002645511   0.016230202   0.540244718  -0.219631692  -0.003881757   0.034632722   0.000240734
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    6    6.1  1.5  1.5  -0.465437123  -0.000000000   0.026726352  -0.000802921   0.000776340  -0.043925694  -0.000072315   0.010403502
                         0.516952232  -0.000000000  -0.022613840   0.000679372   0.000726128  -0.041084665  -0.000047014   0.006763594

    7    7.1  1.5  1.5   0.514229248  -0.000000000  -0.024222743   0.000727707   0.000690799  -0.039085765   0.000241680  -0.034768874
                         0.462985489   0.000000000  -0.028627847   0.000860047  -0.000738569   0.041788569  -0.000371744   0.053480154

    8    1.1  1.5  0.5   0.051689889   0.000000000   0.076667938  -0.002303282   0.005462382  -0.309064198   0.001233666  -0.177478828
                        -0.057410984   0.000000000  -0.064870675   0.001948865   0.005109085  -0.289074519   0.000802039  -0.115383719

    9    2.1  1.5  0.5  -0.000000000   0.023604485  -0.001479340  -0.049241881   0.021051020   0.000372054  -0.153483029  -0.001066870
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   10    3.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.073257872   0.001200947   0.039975167   0.545088102   0.009633854  -0.355035392  -0.002467872

   11    4.1  1.5  0.5   0.045294554  -0.000000000   0.016063957  -0.000482598  -0.001369227   0.077471495   0.002133757  -0.306968658
                         0.040780880  -0.000000000   0.018985319  -0.000570363   0.001463909  -0.082828697  -0.003282063   0.472167465

   12    5.1  1.5  0.5   0.060339854   0.000000000   0.088023692  -0.002644436   0.005447680  -0.308232345  -0.001389577   0.199908726
                        -0.067018338   0.000000000  -0.074479065   0.002237524   0.005095334  -0.288296468  -0.000903401   0.129965993

   13    6.1  1.5  0.5   0.000000000  -0.040525872   0.012667565   0.421657423   0.013690575   0.000241966   0.137989371   0.000959172
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   14    7.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.001965864  -0.011591262  -0.385831189   0.088498006   0.001564108   0.255191159   0.001773849

   15    1.1  1.5 -0.5   0.000000000   0.077251962  -0.003017149  -0.100429961  -0.423184067  -0.007479329   0.211688778   0.001471461
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.015793945   0.000000000  -0.037591108   0.001129324   0.000271723  -0.015374201   0.000894458  -0.128679418
                         0.017542036  -0.000000000   0.031806784  -0.000955549   0.000254148  -0.014379828   0.000581511  -0.083657921

   17    3.1  1.5 -0.5  -0.054442715  -0.000000000  -0.025821140   0.000775727   0.006580828  -0.372346441   0.001345145  -0.193516654
                        -0.049017412  -0.000000000  -0.030516925   0.000916799  -0.007035897   0.398094424  -0.002069052   0.297659925

   18    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.060948149   0.000747138   0.024869520   0.113412639   0.002004448   0.563180141   0.003914698

   19    5.1  1.5 -0.5   0.000000000   0.090179574  -0.003464037  -0.115305254  -0.422045061  -0.007459199  -0.238442144  -0.001657425
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   20    6.1  1.5 -0.5   0.027116176   0.000000000   0.321892039  -0.009670382   0.000176715  -0.009998643  -0.000804165   0.115689611
                        -0.030117425   0.000000000  -0.272360968   0.008182354   0.000165286  -0.009351949  -0.000522809   0.075212901

   21    7.1  1.5 -0.5  -0.001460962   0.000000000   0.249219747  -0.007487138   0.001068433  -0.060452459  -0.000966859   0.139095259
                        -0.001315375   0.000000000   0.294542398  -0.008848736  -0.001142316   0.064632784   0.001487186  -0.213951015

   22    1.1  1.5 -1.5   0.016893180   0.000000000   0.028438641  -0.000854363   0.003413980  -0.193164664   0.001488266  -0.214106334
                        -0.018762937  -0.000000000  -0.024062651   0.000722898   0.003193171  -0.180671145   0.000967561  -0.139196236

   23    2.1  1.5 -1.5   0.000000000  -0.067445943  -0.001208415  -0.040223762  -0.128222222  -0.002266192  -0.447453445  -0.003110275
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   24    3.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.075378127   0.003371719   0.112232322   0.423036361   0.007476719   0.271951059   0.001890347

   25    4.1  1.5 -1.5   0.024435918  -0.000000000   0.373477247  -0.011220121   0.000719347  -0.040701016  -0.000190600   0.027420352
                         0.022000840   0.000000000   0.441397140  -0.013260592  -0.000769091   0.043515517   0.000293174  -0.042176938

   26    5.1  1.5 -1.5  -0.001770133  -0.000000000  -0.412421232   0.012390089   0.002834965  -0.160403706   0.000201830  -0.029035902
                         0.001966052   0.000000000   0.348960001  -0.010483566   0.002651605  -0.150029102   0.000131215  -0.018877014

   27    6.1  1.5 -1.5   0.000000000   0.695608601   0.001051774   0.035009764   0.060144960   0.001062998   0.012408829   0.000086254
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000000000   0.691944567   0.001126605   0.037500597   0.057218716   0.001011280  -0.063788726  -0.000443399

   29    1.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000003  -0.000000012  -0.000000394  -0.000000032  -0.000000001  -0.000000007  -0.000000000

   30    2.1  0.5  0.5  -0.000000078   0.000000000   0.000000013  -0.000000000  -0.000000000   0.000000017   0.000000001  -0.000000087
                         0.000000087  -0.000000000  -0.000000011   0.000000000  -0.000000000   0.000000016   0.000000000  -0.000000056

   31    3.1  0.5  0.5   0.000000000  -0.000000006   0.000000011   0.000000354  -0.000000194  -0.000000003  -0.000000079  -0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000125  -0.000000010  -0.000000339  -0.000000034  -0.000000001  -0.000000188  -0.000000001

   33    5.1  0.5  0.5  -0.000000138  -0.000000000   0.000000060  -0.000000002   0.000000001  -0.000000083  -0.000000000   0.000000059
                         0.000000153   0.000000000  -0.000000050   0.000000002   0.000000001  -0.000000078  -0.000000000   0.000000039

   34    6.1  0.5  0.5   0.000000000   0.000000059  -0.000000001  -0.000000049  -0.000000373  -0.000000007   0.000000181   0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   35    7.1  0.5  0.5  -0.000000001   0.000000000   0.000000079  -0.000000002  -0.000000000   0.000000018   0.000000001  -0.000000094
                        -0.000000001   0.000000000   0.000000094  -0.000000003   0.000000000  -0.000000020  -0.000000001   0.000000144

   36    8.1  0.5  0.5  -0.000000000  -0.000000092   0.000000003   0.000000085   0.000000610   0.000000011  -0.000000425  -0.000000003
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   37    9.1  0.5  0.5  -0.000000079   0.000000000   0.000000052  -0.000000002   0.000000001  -0.000000038  -0.000000001   0.000000196
                         0.000000087  -0.000000000  -0.000000044   0.000000001   0.000000001  -0.000000035  -0.000000001   0.000000127

   38   10.1  0.5  0.5  -0.000000029  -0.000000000  -0.000000053   0.000000002   0.000000004  -0.000000230  -0.000000000   0.000000044
                        -0.000000026  -0.000000000  -0.000000063   0.000000002  -0.000000004   0.000000246   0.000000000  -0.000000067

   39   11.1  0.5  0.5   0.000000045  -0.000000000   0.000000022  -0.000000001  -0.000000002   0.000000110  -0.000000001   0.000000085
                         0.000000041  -0.000000000   0.000000026  -0.000000001   0.000000002  -0.000000118   0.000000001  -0.000000130

   40   12.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000042  -0.000000006  -0.000000202   0.000000000   0.000000000  -0.000000205  -0.000000001

   41    1.1  0.5 -0.5   0.000000002   0.000000000  -0.000000255   0.000000008   0.000000000  -0.000000022  -0.000000000   0.000000004
                         0.000000002   0.000000000  -0.000000301   0.000000009  -0.000000000   0.000000023   0.000000000  -0.000000006

   42    2.1  0.5 -0.5   0.000000000   0.000000117   0.000000001   0.000000017  -0.000000023  -0.000000000  -0.000000103  -0.000000001
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   43    3.1  0.5 -0.5  -0.000000004  -0.000000000  -0.000000270   0.000000008   0.000000003  -0.000000142  -0.000000000   0.000000066
                         0.000000005   0.000000000   0.000000228  -0.000000007   0.000000002  -0.000000132  -0.000000000   0.000000043

   44    4.1  0.5 -0.5  -0.000000093  -0.000000000  -0.000000219   0.000000007   0.000000000  -0.000000023  -0.000000001   0.000000102
                        -0.000000083  -0.000000000  -0.000000259   0.000000008  -0.000000000   0.000000025   0.000000001  -0.000000158

   45    5.1  0.5 -0.5  -0.000000000   0.000000206   0.000000002   0.000000078   0.000000114   0.000000002   0.000000071   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   46    6.1  0.5 -0.5   0.000000039  -0.000000000   0.000000037  -0.000000001   0.000000005  -0.000000272   0.000000001  -0.000000152
                        -0.000000043  -0.000000000  -0.000000031   0.000000001   0.000000005  -0.000000255   0.000000001  -0.000000099

   47    7.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000  -0.000000001  -0.000000004  -0.000000123  -0.000000027  -0.000000000  -0.000000172  -0.000000001

   48    8.1  0.5 -0.5  -0.000000061   0.000000000  -0.000000065   0.000000002  -0.000000008   0.000000446  -0.000000002   0.000000357
                         0.000000068  -0.000000000   0.000000055  -0.000000002  -0.000000007   0.000000417  -0.000000002   0.000000232

   49    9.1  0.5 -0.5   0.000000000   0.000000117   0.000000002   0.000000069   0.000000052   0.000000001   0.000000233   0.000000002
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   50   10.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000000  -0.000000039   0.000000002   0.000000082   0.000000336   0.000000006   0.000000080   0.000000001

   51   11.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.000000061  -0.000000001  -0.000000034  -0.000000162  -0.000000003   0.000000155   0.000000001

   52   12.1  0.5 -0.5  -0.000000031  -0.000000000  -0.000000131   0.000000004  -0.000000000   0.000000000  -0.000000001   0.000000112
                        -0.000000028  -0.000000000  -0.000000154   0.000000005   0.000000000  -0.000000000   0.000000001  -0.000000172


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.004818525  -0.318351175   0.065637219  -0.001316490   0.595838043  -0.022927698   0.098605512   0.003153670
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.224594312  -0.003399433  -0.000002721  -0.000135674   0.000383956   0.009978036  -0.017779258   0.555902368
                         0.028184624   0.000426599   0.000010982   0.000547552   0.000275049   0.007147775   0.009448827  -0.295436540

    3    3.1  1.5  1.5   0.012980427   0.000196470  -0.002102317  -0.104817341  -0.007839098  -0.203720028  -0.001777242   0.055569065
                         0.103436895   0.001565608  -0.000520925  -0.025971931   0.010943095   0.284385741  -0.003344133   0.104560449

    4    4.1  1.5  1.5  -0.000000000   0.000000000   0.000000003   0.000000022  -0.000000001  -0.000000002   0.000000011  -0.000000006
                         0.001875720  -0.123925413  -0.340505301   0.006829515  -0.094277072   0.003627755  -0.187910318  -0.006009871

    5    5.1  1.5  1.5  -0.001857187   0.122700978  -0.443070980   0.008886674   0.081465543  -0.003134776   0.205069004   0.006558654
                         0.000000000  -0.000000000  -0.000000003  -0.000000029  -0.000000000   0.000000001   0.000000010  -0.000000008

    6    6.1  1.5  1.5  -0.103346458  -0.001564240   0.000145029   0.007230771   0.005970471   0.155158768  -0.002143980   0.067035615
                         0.012969078   0.000196298  -0.000585302  -0.029181896   0.004276953   0.111148148   0.001139422  -0.035626348

    7    7.1  1.5  1.5  -0.008004728  -0.000121159   0.001128571   0.056268206  -0.002327282  -0.060480717   0.000865763  -0.027069765
                        -0.063787138  -0.000965474   0.000279643   0.013942292   0.003248801   0.084428880   0.001629050  -0.050935297

    8    1.1  1.5  0.5  -0.481634142  -0.007289957   0.000180250   0.008986748  -0.003589447  -0.093281459  -0.005512904   0.172371510
                         0.060440877   0.000914826  -0.000727439  -0.036268656  -0.002571304  -0.066822273   0.002929847  -0.091607531

    9    2.1  1.5  0.5  -0.009728436   0.642740050  -0.149980468   0.003008157   0.144421563  -0.005557306   0.163098198   0.005216314
                         0.000000000  -0.000000000  -0.000000001  -0.000000010  -0.000000001  -0.000000000   0.000000009  -0.000000005

   10    3.1  1.5  0.5   0.000000000  -0.000000000   0.000000001   0.000000005  -0.000000001  -0.000000001   0.000000008  -0.000000003
                        -0.000661710   0.043717955  -0.070519236   0.001414405  -0.148321225   0.005707363  -0.124338627  -0.003976678

   11    4.1  1.5  0.5  -0.018780751  -0.000284263   0.000618119   0.030817951  -0.011048183  -0.287116780  -0.002276599   0.071182546
                        -0.149657834  -0.002265203   0.000153159   0.007636157   0.015422861   0.400804573  -0.004283740   0.133939237

   12    5.1  1.5  0.5   0.315552303   0.004776162  -0.000468532  -0.023359872  -0.009097989  -0.236435811  -0.007169370   0.224163928
                        -0.039599057  -0.000599367   0.001890887   0.094275612  -0.006517353  -0.169371044   0.003810180  -0.119132813

   13    6.1  1.5  0.5  -0.001898582   0.125435853   0.585111701  -0.011735584  -0.156256206   0.006012707   0.355716113   0.011376754
                         0.000000000  -0.000000000   0.000000005   0.000000038  -0.000000001  -0.000000003   0.000000015  -0.000000016

   14    7.1  1.5  0.5   0.000000000  -0.000000000   0.000000004   0.000000033  -0.000000000  -0.000000002  -0.000000014   0.000000019
                        -0.000385288   0.025455282  -0.497039641   0.009969125  -0.108487303   0.004174565   0.399939742   0.012791148

   15    1.1  1.5 -0.5  -0.007347134   0.485411728   0.037365453  -0.000749438  -0.114746010   0.004415397  -0.195202144  -0.006243085
                         0.000000000  -0.000000000   0.000000000   0.000000003   0.000000001   0.000000000  -0.000000010   0.000000007

   16    2.1  1.5 -0.5   0.637738097   0.009652727   0.000723500   0.036071734  -0.004517749  -0.117405862  -0.004606222   0.144022406
                        -0.080030560  -0.001211333  -0.002919856  -0.145578058  -0.003236294  -0.084103814   0.002447989  -0.076541287

   17    3.1  1.5 -0.5  -0.005443527  -0.000082393  -0.001372887  -0.068449269   0.003323679   0.086374780  -0.001866235   0.058351588
                        -0.043377732  -0.000656560  -0.000340183  -0.016960549  -0.004639737  -0.120576047  -0.003511571   0.109796113

   18    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000008   0.000000010
                         0.002282970  -0.150831641  -0.031749913   0.000636811  -0.493031795   0.018971742   0.151679511   0.004851117

   19    5.1  1.5 -0.5   0.004813623  -0.318027264  -0.097126590   0.001948070  -0.290840924   0.011191483  -0.253854474  -0.008118949
                         0.000000000   0.000000000  -0.000000000  -0.000000003   0.000000000   0.000000000  -0.000000007   0.000000009

   20    6.1  1.5 -0.5   0.124459683   0.001883807  -0.002822557  -0.140724948   0.004887960   0.127026701  -0.010046148   0.314111937
                        -0.015618603  -0.000236401   0.011391098   0.567936785   0.003501499   0.090995710   0.005339047  -0.166936047

   21    7.1  1.5 -0.5  -0.003169556  -0.000047974  -0.009676491  -0.482449924   0.002431054   0.063177518   0.006002814  -0.187690004
                        -0.025257183  -0.000382290  -0.002397702  -0.119542777  -0.003393666  -0.088193515   0.011295118  -0.353163219

   22    1.1  1.5 -1.5   0.315873692   0.004781026   0.000316628   0.015786378   0.018638811   0.484379739   0.002784821  -0.087072719
                        -0.039639389  -0.000599977  -0.001277846  -0.063710555   0.013351932   0.346985939  -0.001480004   0.046275141

   23    2.1  1.5 -1.5   0.003426095  -0.226355866   0.000564110  -0.000011314  -0.012274033   0.000472307   0.629531724   0.020134110
                         0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000001  -0.000000001   0.000000027  -0.000000026

   24    3.1  1.5 -1.5   0.000000000   0.000000000   0.000000001   0.000000007   0.000000001  -0.000000000   0.000000001  -0.000000009
                         0.001577888  -0.104248178  -0.107987112   0.002165895   0.349824384  -0.013461159  -0.118409495  -0.003787059

   25    4.1  1.5 -1.5  -0.015430531  -0.000233555   0.006629042   0.330510372  -0.002112619  -0.054902199   0.002820401  -0.088185509
                        -0.122960996  -0.001861123   0.001642585   0.081894774   0.002949144   0.076641470   0.005306965  -0.165932527

   26    5.1  1.5 -1.5  -0.121746090  -0.001842734  -0.002137358  -0.106562799   0.002548379   0.066226484   0.005791565  -0.181084352
                         0.015278071   0.000231247   0.008625815   0.430065417   0.001825536   0.047441412  -0.003077941   0.096238006

   27    6.1  1.5 -1.5   0.001576508  -0.104157032  -0.030064383   0.000603003  -0.190861610   0.007344308   0.075914494   0.002427948
                        -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000005  -0.000000004

   28    7.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000   0.000000002
                        -0.000973047   0.064287438   0.057969807  -0.001162701   0.103856405  -0.003996367   0.057681684   0.001844817

   29    1.1  0.5  0.5  -0.000000000   0.000000000   0.000000001   0.000000009  -0.000000000  -0.000000001   0.000000001  -0.000000001
                         0.000000005  -0.000000308  -0.137421736   0.002756267   0.049973146  -0.001922955  -0.023101418  -0.000738845

   30    2.1  0.5  0.5   0.000000047   0.000000001  -0.000104251  -0.005197696   0.001692454   0.043982965   0.002290006  -0.071601446
                        -0.000000006  -0.000000000   0.000420731   0.020976824   0.001212391   0.031507244  -0.001217030   0.038052877

   31    3.1  0.5  0.5  -0.000000000   0.000000021   0.124399838  -0.002495088   0.051788993  -0.001992827  -0.059335209  -0.001897699
                        -0.000000000  -0.000000000   0.000000001   0.000000008   0.000000000  -0.000000000  -0.000000003   0.000000003

   32    4.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000003  -0.000000002
                        -0.000000005   0.000000334  -0.031785448   0.000637522  -0.123124411   0.004737796  -0.074463209  -0.002381532

   33    5.1  0.5  0.5   0.000000086   0.000000001  -0.000017641  -0.000879524   0.003410868   0.088640571  -0.002779165   0.086895872
                        -0.000000011  -0.000000000   0.000071193   0.003549578   0.002443379   0.063497767   0.001476993  -0.046181159

   34    6.1  0.5  0.5   0.000000000  -0.000000002  -0.043468395   0.000871845   0.054038631  -0.002079393  -0.008487743  -0.000271459
                         0.000000000  -0.000000000  -0.000000001  -0.000000004   0.000000000   0.000000000  -0.000000002   0.000000000

   35    7.1  0.5  0.5  -0.000000001  -0.000000000  -0.000499646  -0.024911331   0.000373907   0.009717014  -0.001674145   0.052345493
                        -0.000000009  -0.000000000  -0.000123805  -0.006172598  -0.000521961  -0.013564598  -0.003150133   0.098494871

   36    8.1  0.5  0.5  -0.000000001   0.000000044  -0.000000088   0.000000002  -0.000000458   0.000000018  -0.000000226  -0.000000007
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   37    9.1  0.5  0.5  -0.000000075  -0.000000001   0.000000001   0.000000025  -0.000000014  -0.000000371   0.000000006  -0.000000200
                         0.000000009   0.000000000  -0.000000002  -0.000000102  -0.000000010  -0.000000266  -0.000000003   0.000000107

   38   10.1  0.5  0.5  -0.000000004  -0.000000000  -0.000000005  -0.000000227  -0.000000007  -0.000000188  -0.000000008   0.000000254
                        -0.000000031  -0.000000000  -0.000000001  -0.000000056   0.000000010   0.000000262  -0.000000015   0.000000477

   39   11.1  0.5  0.5  -0.000000040  -0.000000001   0.000000002   0.000000124  -0.000000003  -0.000000087  -0.000000002   0.000000051
                        -0.000000321  -0.000000005   0.000000001   0.000000031   0.000000005   0.000000122  -0.000000003   0.000000096

   40   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000009   0.000000597  -0.000000112   0.000000002  -0.000000386   0.000000015  -0.000000094  -0.000000003

   41    1.1  0.5 -0.5  -0.000000038  -0.000000001   0.002675360   0.133387965   0.001119833   0.029101833   0.000346736  -0.010841397
                        -0.000000305  -0.000000005   0.000662917   0.033051239  -0.001563244  -0.040625099   0.000652431  -0.020399501

   42    2.1  0.5 -0.5  -0.000000001   0.000000047   0.021611182  -0.000433455  -0.054103675   0.002081896  -0.081085070  -0.002593316
                        -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000004   0.000000003

   43    3.1  0.5 -0.5  -0.000000021  -0.000000000   0.000600100   0.029919348   0.001620046   0.042101271  -0.001675748   0.052395426
                         0.000000003   0.000000000  -0.002421847  -0.120748302   0.001160521   0.030159290   0.000890579  -0.027845759

   44    4.1  0.5 -0.5   0.000000042   0.000000001   0.000618808   0.030852443  -0.002759053  -0.071701430   0.001117641  -0.034945265
                         0.000000331   0.000000005   0.000153331   0.007644704   0.003851537   0.100092585   0.002102992  -0.065754072

   45    5.1  0.5 -0.5  -0.000000001   0.000000087   0.003656920  -0.000073346  -0.109037229   0.004195726   0.098405244   0.003147264
                         0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000004  -0.000000005

   46    6.1  0.5 -0.5   0.000000002   0.000000000  -0.000209691  -0.010454564   0.001690419   0.043930089  -0.000239710   0.007495025
                        -0.000000000  -0.000000000   0.000846253   0.042192458   0.001210934   0.031469365   0.000127394  -0.003983263

   47    7.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000004  -0.000000005
                        -0.000000000   0.000000009  -0.025664671   0.000514756  -0.016685882   0.000642067  -0.111540532  -0.003567366

   48    8.1  0.5 -0.5  -0.000000043  -0.000000001  -0.000000000  -0.000000021  -0.000000014  -0.000000372  -0.000000006   0.000000199
                         0.000000005   0.000000000   0.000000002   0.000000085  -0.000000010  -0.000000267   0.000000003  -0.000000106

   49    9.1  0.5 -0.5   0.000000001  -0.000000076  -0.000000105   0.000000002   0.000000456  -0.000000018  -0.000000227  -0.000000007
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   50   10.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000031  -0.000000234   0.000000005   0.000000322  -0.000000012  -0.000000540  -0.000000017

   51   11.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000005   0.000000324   0.000000128  -0.000000003   0.000000150  -0.000000006  -0.000000109  -0.000000003

   52   12.1  0.5 -0.5   0.000000074   0.000000001   0.000000002   0.000000109  -0.000000009  -0.000000225   0.000000001  -0.000000044
                         0.000000593   0.000000009   0.000000001   0.000000027   0.000000012   0.000000314   0.000000003  -0.000000083


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.026223516  -0.294715595  -0.000796950  -0.028994762   0.026211924   0.448983836  -0.215506205  -0.005146528
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.032258278  -0.002870304  -0.101223188   0.002782221   0.203837003  -0.011900117  -0.003352974   0.140402724
                         0.067593404   0.006014396  -0.120422991   0.003309945   0.195978178  -0.011441314  -0.008005917   0.335240519

    3    3.1  1.5  1.5   0.442111379   0.039338654   0.217449504  -0.005976815   0.178434036  -0.010417078  -0.006498739   0.272128811
                         0.210993289   0.018773988  -0.182780148   0.005023895  -0.185589333   0.010834808   0.002721750  -0.113970788

    4    4.1  1.5  1.5   0.000000001   0.000000002  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000001
                         0.029990423  -0.337050362   0.001816804   0.066099252  -0.012571719  -0.215340870  -0.396435787  -0.009467329

    5    5.1  1.5  1.5  -0.015445508   0.173585902  -0.001768972  -0.064359019   0.010901866   0.186737968   0.411208555   0.009820119
                        -0.000000003   0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000001

    6    6.1  1.5  1.5  -0.047426850  -0.004219995  -0.029363574   0.000807087  -0.218379216   0.012749099  -0.002335435   0.097794210
                         0.099377335   0.008842501  -0.034933195   0.000960174  -0.209959722   0.012257565  -0.005576333   0.233503885

    7    7.1  1.5  1.5  -0.201538972  -0.017932748  -0.039461448   0.001084637   0.201332327  -0.011753892   0.005981341  -0.250463243
                        -0.096182484  -0.008558228   0.033169858  -0.000911707  -0.209405857   0.012225230  -0.002505057   0.104896991

    8    1.1  1.5  0.5  -0.085391577  -0.007598061  -0.054673126   0.001502745  -0.128760076   0.007517085   0.003292208  -0.137858204
                         0.178927913   0.015920836  -0.065043410   0.001787783  -0.123795801   0.007227267   0.007860826  -0.329164952

    9    2.1  1.5  0.5  -0.024583476   0.276283852  -0.002467667  -0.089779068   0.017910534   0.306789383  -0.276637926  -0.006606422
                        -0.000000001   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000

   10    3.1  1.5  0.5   0.000000001   0.000000001  -0.000000000   0.000000002   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.030297060  -0.340496534   0.002525190   0.091871890   0.023409321   0.400978058  -0.110179710  -0.002631214

   11    4.1  1.5  0.5  -0.076600576  -0.006815847   0.321993697  -0.008850316   0.079990131  -0.004669868   0.002929857  -0.122685097
                        -0.036556866  -0.003252792  -0.270656195   0.007439256  -0.083197777   0.004857132  -0.001227059   0.051381980

   12    5.1  1.5  0.5   0.145685748   0.012962983  -0.255770067   0.007030096   0.159701624  -0.009323469   0.000222053  -0.009298285
                        -0.305267182  -0.027162387  -0.304284000   0.008363547   0.153544414  -0.008964008   0.000530198  -0.022201575

   13    6.1  1.5  0.5   0.001970000  -0.022140020   0.013629248   0.495861550   0.006346221   0.108704366   0.007983667   0.000190659
                        -0.000000002   0.000000004   0.000000002  -0.000000007  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   14    7.1  1.5  0.5   0.000000007  -0.000000003  -0.000000002   0.000000007   0.000000000   0.000000000   0.000000000   0.000000000
                         0.022187244  -0.249353507   0.013646152   0.496476567  -0.002441870  -0.041826767   0.082111272   0.001960909

   15    1.1  1.5 -0.5   0.017640962  -0.198259727   0.002335468   0.084969382  -0.010427845  -0.178618469  -0.356867552  -0.008522395
                         0.000000001  -0.000000002   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000001  -0.000000001

   16    2.1  1.5 -0.5  -0.118997006  -0.010588241  -0.057767894   0.001587808  -0.221154198   0.012911104  -0.002552066   0.106865439
                         0.249344098   0.022186402  -0.068725188   0.001888980  -0.212627717   0.012413324  -0.006093584   0.255163320

   17    3.1  1.5 -0.5  -0.307295561  -0.027342869   0.070327227  -0.001933013  -0.277907430   0.016224389  -0.002426961   0.101626776
                        -0.146653769  -0.013049115  -0.059114510   0.001624821   0.289051662  -0.016874996   0.001016440  -0.042562505

   18    4.1  1.5 -0.5   0.000000003  -0.000000002   0.000000002  -0.000000006  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.007552246   0.084876691  -0.011561601  -0.420636086   0.006737908   0.115413566  -0.133010304  -0.003176434

   19    5.1  1.5 -0.5  -0.030097079   0.338249005   0.010925711   0.397501044   0.012933697   0.221541183  -0.024070065  -0.000574820
                         0.000000003  -0.000000002   0.000000002  -0.000000006  -0.000000000  -0.000000000  -0.000000000   0.000000000

   20    6.1  1.5 -0.5   0.009535835   0.000848492   0.319059645  -0.008769673  -0.078361339   0.004574778   0.000073652  -0.003084096
                        -0.019981200  -0.001777910   0.379578213  -0.010433083  -0.075340160   0.004398400   0.000175859  -0.007363918

   21    7.1  1.5 -0.5  -0.225039662  -0.020023818   0.380049003  -0.010446023   0.028989040  -0.001692396   0.001808689  -0.075737210
                        -0.107397959  -0.009556177  -0.319455374   0.008780550  -0.030151517   0.001760262  -0.000757500   0.031719646

   22    1.1  1.5 -1.5  -0.126935663  -0.011294616   0.018656536  -0.000512794   0.323657420  -0.018895299   0.001988108  -0.083250209
                         0.265978607   0.023666526   0.022195268  -0.000610059   0.311178982  -0.018166801   0.004747018  -0.198777079

   23    2.1  1.5 -1.5  -0.006664203   0.074896360  -0.004323944  -0.157314432  -0.016508073  -0.282766635  -0.363454441  -0.008679697
                        -0.000000006   0.000000006  -0.000000001   0.000000002  -0.000000000   0.000000001   0.000000001  -0.000000001

   24    3.1  1.5 -1.5  -0.000000004   0.000000002  -0.000000001   0.000000004   0.000000000  -0.000000000  -0.000000001   0.000000001
                        -0.043588901   0.489878189   0.007807806   0.284064903  -0.015030255  -0.257453114  -0.295031236  -0.007045675

   25    4.1  1.5 -1.5   0.304185417   0.027066131  -0.050598470   0.001390749  -0.149247139   0.008713130   0.008732407  -0.365661618
                         0.145169483   0.012917044   0.042531235  -0.001169013   0.155232026  -0.009062532  -0.003657237   0.153143442

   26    5.1  1.5 -1.5   0.074764422   0.006652465   0.041411491  -0.001138236   0.134613151  -0.007858790  -0.003793520   0.158850174
                        -0.156659971  -0.013939456   0.049266335  -0.001354134   0.129423214  -0.007555799  -0.009057811   0.379287619

   27    6.1  1.5 -1.5  -0.009797867   0.110114308  -0.001254322  -0.045634938   0.017685797   0.302939873  -0.253155628  -0.006045639
                        -0.000000001   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   28    7.1  1.5 -1.5   0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.019870247  -0.223313742  -0.001416914  -0.051550415  -0.016959075  -0.290491857   0.271542289   0.006484733

   29    1.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000434065  -0.004878284  -0.001903734  -0.069261956   0.000283086   0.004848970  -0.000950143  -0.000022690

   30    2.1  0.5  0.5   0.046936599   0.004176374  -0.007771439   0.000213606  -0.026037164   0.001520064   0.000535502  -0.022423671
                        -0.098350072  -0.008751096  -0.009245510   0.000254122  -0.025033316   0.001461459   0.001278622  -0.053541149

   31    3.1  0.5  0.5   0.001426810  -0.016035353  -0.001506084  -0.054794610  -0.000132900  -0.002276441  -0.042601156  -0.001017363
                         0.000000001  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.001272890  -0.014305501  -0.000108154  -0.003934862  -0.003623247  -0.062062563  -0.030730553  -0.000733880

   33    5.1  0.5  0.5   0.007843540   0.000697912  -0.019579881   0.000538173  -0.035942466   0.002098341  -0.000345559   0.014469973
                        -0.016435205  -0.001462389  -0.023293752   0.000640252  -0.034556724   0.002017441  -0.000825094   0.034550052

   34    6.1  0.5  0.5   0.011576130  -0.130099489   0.001147949   0.041764876   0.000650011   0.011134032  -0.054344967  -0.001297818
                        -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000

   35    7.1  0.5  0.5   0.083147374   0.007398375   0.019035349  -0.000523205  -0.040559853   0.002367907  -0.000610879   0.025579986
                         0.039681264   0.003530803  -0.016000422   0.000439788   0.042186324  -0.002462861   0.000255843  -0.010713203

   36    8.1  0.5  0.5   0.000000016  -0.000000179   0.000349082   0.012700368  -0.005882685  -0.100764456  -0.010943727  -0.000261348
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   37    9.1  0.5  0.5  -0.000000019  -0.000000002   0.058034520  -0.001595137  -0.033879239   0.001977889  -0.000097411   0.004079014
                         0.000000039   0.000000003   0.069042387  -0.001897698  -0.032573043   0.001901632  -0.000232590   0.009739488

   38   10.1  0.5  0.5   0.000000231   0.000000021   0.072987602  -0.002006137   0.024506638  -0.001430711   0.000235518  -0.009862100
                         0.000000110   0.000000010  -0.061350725   0.001686286  -0.025489366   0.001488083  -0.000098638   0.004130365

   39   11.1  0.5  0.5   0.000000132   0.000000012   0.003913803  -0.000107575  -0.028978570   0.001691785   0.002050648  -0.085869010
                         0.000000063   0.000000006  -0.003289800   0.000090423   0.030140625  -0.001759626  -0.000858836   0.035962965

   40   12.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000063   0.000000712  -0.000121295  -0.004412967  -0.002624966  -0.044963020   0.091654186   0.002188804

   41    1.1  0.5 -0.5   0.004402615   0.000391740   0.053019496  -0.001457293   0.003360695  -0.000196199   0.000020929  -0.000876386
                         0.002101104   0.000186954  -0.044566261   0.001224948  -0.003495460   0.000204067  -0.000008765   0.000367041

   42    2.1  0.5 -0.5   0.009696586  -0.108976057  -0.000331972  -0.012077861   0.002108662   0.036119258   0.058047184   0.001386231
                         0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   43    3.1  0.5 -0.5  -0.006906516  -0.000614534   0.035257319  -0.000969083  -0.001641010   0.000095803   0.000393008  -0.016456859
                         0.014471786   0.001287686   0.041944854  -0.001152896  -0.001577742   0.000092109   0.000938388  -0.039294151

   44    4.1  0.5 -0.5   0.012910607   0.001148773   0.003012106  -0.000082791  -0.043013943   0.002511178   0.000676911  -0.028345028
                         0.006161459   0.000548241  -0.002531867   0.000069591   0.044738824  -0.002611877  -0.000283498   0.011871236

   45    5.1  0.5 -0.5   0.001620390  -0.018210906  -0.000836392  -0.030429765   0.002910859   0.049860085  -0.037457792  -0.000894534
                        -0.000000001   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   46    6.1  0.5 -0.5  -0.056034581  -0.004985905  -0.026873402   0.000738642   0.008026151  -0.000468571   0.000501348  -0.020993502
                         0.117413810   0.010447370  -0.031970692   0.000878746   0.007716707  -0.000450506   0.001197072  -0.050126324

   47    7.1  0.5 -0.5  -0.000000001   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.008197715   0.092130823   0.000683489   0.024866805   0.003416528   0.058521684  -0.027732804  -0.000662290

   48    8.1  0.5 -0.5  -0.000000077  -0.000000007  -0.008171989   0.000224615  -0.072637723   0.004240630   0.000100959  -0.004227570
                         0.000000161   0.000000014  -0.009722034   0.000267220  -0.069837215   0.004077135   0.000241061  -0.010094197

   49    9.1  0.5 -0.5  -0.000000004   0.000000043   0.002479056   0.090193440   0.002743765   0.046997936  -0.010559166  -0.000252165
                         0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   50   10.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000023   0.000000256   0.002620714   0.095347268  -0.002064298  -0.035359342   0.010692096   0.000255339

   51   11.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000013   0.000000146   0.000140530   0.005112792   0.002440988   0.041811658   0.093095766   0.002223231

   52   12.1  0.5 -0.5  -0.000000643  -0.000000057   0.003378093  -0.000092850  -0.031162696   0.001819295  -0.002018894   0.084539336
                        -0.000000307  -0.000000027  -0.002839502   0.000078047   0.032412336  -0.001892250   0.000845537  -0.035406081


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.005331789  -0.161552441   0.035921681   0.000648391   0.000000000  -0.010226563   0.071681574  -0.003038938
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.149440936   0.004932068   0.002518662  -0.139537020  -0.023415584  -0.000000000   0.002819165   0.066497634
                        -0.056263269   0.001856882  -0.002179758   0.120761373  -0.014736468  -0.000000001   0.000198465   0.004681337

    3    3.1  1.5  1.5  -0.069975985   0.002309449  -0.001954742   0.108295216  -0.020197065  -0.000000001   0.000227727   0.005371572
                         0.185863296  -0.006134131  -0.002258661   0.125132659   0.032092225   0.000000001  -0.003234834  -0.076302321

    4    4.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000000
                         0.004291140   0.130020920   0.343290614   0.006196440  -0.000000001   0.044901664  -0.077655530   0.003292204

    5    5.1  1.5  1.5  -0.003955102  -0.119839011  -0.346333359  -0.006251362  -0.000000003   0.100599081   0.026267278  -0.001113600
                         0.000000000   0.000000000   0.000000001   0.000000001   0.000000002   0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5   0.435755847  -0.014381450   0.002956977  -0.163820266  -0.008366865  -0.000000000  -0.000484136  -0.011419653
                         0.164058451  -0.005414496  -0.002559096   0.141777145  -0.005265640  -0.000000000  -0.000034082  -0.000803927

    7    7.1  1.5  1.5  -0.158695245   0.005237492   0.002734729  -0.151507475   0.008002037   0.000000000   0.000010285   0.000242593
                         0.421510629  -0.013911308   0.003159918  -0.175063441  -0.012714875  -0.000000000  -0.000146093  -0.003445992

    8    1.1  1.5  0.5   0.183680449  -0.006062090  -0.006159007   0.341216769  -0.019923326  -0.000000000   0.002168567   0.051151525
                         0.069154161  -0.002282327   0.005330270  -0.295303752  -0.012538636  -0.000000001   0.000152664   0.003600993

    9    2.1  1.5  0.5  -0.002429668  -0.073618608   0.452341349   0.008164820  -0.000000001   0.047011638   0.053970520  -0.002288078
                        -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000001   0.000000000  -0.000000000  -0.000000000

   10    3.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.011503126  -0.348543057  -0.284825971  -0.005141146   0.000000000  -0.005334110  -0.066751011   0.002829907

   11    4.1  1.5  0.5   0.120915149  -0.003990618  -0.001536654   0.085132584   0.004283997  -0.000000000   0.000147118   0.003470177
                        -0.321162870   0.010599485  -0.001775569   0.098368763  -0.006807078  -0.000000000  -0.002089788  -0.049293309

   12    5.1  1.5  0.5   0.309952833  -0.010229515   0.002178069  -0.120667748   0.013470140   0.000000000   0.001735992   0.040948072
                         0.116694663  -0.003851327  -0.001884995   0.104431090   0.008477358   0.000000000   0.000122211   0.002882685

   13    6.1  1.5  0.5  -0.000398402  -0.012071518   0.074164914   0.001338686   0.000000003  -0.101161106   0.038140582  -0.001616969
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000000

   14    7.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000
                         0.002905380   0.088032586   0.071952737   0.001298756  -0.000000003   0.101502669  -0.021610162   0.000916162

   15    1.1  1.5 -0.5  -0.006477496  -0.196267179  -0.451257343  -0.008145254   0.000000001  -0.023540525  -0.051278121   0.002173934
                         0.000000000   0.000000000   0.000000002   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000

   16    2.1  1.5 -0.5  -0.068897404   0.002273852  -0.006173803   0.342036437  -0.039787906  -0.000000001   0.002282430   0.053837278
                        -0.025939299   0.000856086   0.005343075  -0.296013128  -0.025040299  -0.000000001   0.000160680   0.003790066

   17    3.1  1.5 -0.5  -0.122808118   0.004053093  -0.003364376   0.186390713   0.002841163   0.000000000  -0.000198729  -0.004687573
                         0.326190786  -0.010765424  -0.003887461   0.215370230  -0.004514479  -0.000000000   0.002822920   0.066586216

   18    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.011325816  -0.343170602   0.130092161   0.002348180  -0.000000000   0.008042943  -0.049415306   0.002094960

   19    5.1  1.5 -0.5  -0.010930494  -0.331192396   0.159582449   0.002880484  -0.000000000   0.015915724  -0.041049415   0.001740289
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   20    6.1  1.5 -0.5  -0.011297365   0.000372852  -0.001012243   0.056079558   0.085616856   0.000000002   0.001612977   0.038046421
                        -0.004253364   0.000140376   0.000876039  -0.048533675   0.053882496   0.000000003   0.000113551   0.002678413

   21    7.1  1.5 -0.5   0.031018022  -0.001023702   0.000849909  -0.047086022  -0.054064426  -0.000000003  -0.000064337  -0.001517568
                        -0.082387005   0.002719056   0.000982050  -0.054406827   0.085905935   0.000000002   0.000913900   0.021556811

   22    1.1  1.5 -1.5   0.151191988  -0.004989858   0.000490279  -0.027162062  -0.008655166  -0.000000000  -0.003031435  -0.071504606
                         0.056922526  -0.001878640  -0.000424308   0.023507224  -0.005447081   0.000000000  -0.000213409  -0.005033820

   23    2.1  1.5 -1.5  -0.005270038  -0.159681398  -0.184536959  -0.003330916  -0.000000001   0.027666822   0.066662210  -0.002826142
                         0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   24    3.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000
                        -0.006554474  -0.198599605  -0.165487269  -0.002987067  -0.000000001   0.037918760   0.076491163  -0.003242840

   25    4.1  1.5 -1.5  -0.045812488   0.001511971  -0.004054963   0.224650098   0.023916442   0.000000001   0.000231194   0.005453340
                         0.121682602  -0.004015947  -0.004685418   0.259578079  -0.038002148  -0.000000001  -0.003284076  -0.077463814

   26    5.1  1.5 -1.5   0.112153665  -0.003701459  -0.004726947   0.261878841   0.085141191   0.000000002  -0.001110851  -0.026202430
                         0.042224922  -0.001393569   0.004090904  -0.226641277   0.053583138   0.000000003  -0.000078202  -0.001844613

   27    6.1  1.5 -1.5   0.015366940   0.465616079  -0.216651421  -0.003910586  -0.000000000   0.009885919  -0.011447915   0.000485334
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   28    7.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.014864583  -0.450394706   0.231520460   0.004178974   0.000000000  -0.015023337   0.003454521  -0.000146454

   29    1.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000010   0.000000002   0.000000000  -0.000000002
                         0.000000061   0.000001854  -0.000000760  -0.000000014   0.000000018  -0.651791517   0.050701435  -0.002149486

   30    2.1  0.5  0.5   0.000005577  -0.000000184  -0.000000147   0.000008155  -0.253356594  -0.000000004   0.025712251   0.606493022
                         0.000002100  -0.000000069   0.000000127  -0.000007058  -0.159448574  -0.000000009   0.001810104   0.042696226

   31    3.1  0.5  0.5  -0.000000045  -0.000001361  -0.000002888  -0.000000052  -0.000000018   0.653632372  -0.149933525   0.006356427
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000010   0.000000001  -0.000000000  -0.000000001

   32    4.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000   0.000000000
                        -0.000000102  -0.000003098  -0.000016549  -0.000000299  -0.000000001  -0.021095890   0.691436772  -0.029313438

   33    5.1  0.5  0.5  -0.000002668   0.000000088  -0.000000147   0.000008159   0.022538414   0.000000000   0.007761370   0.183072915
                        -0.000001004   0.000000033   0.000000127  -0.000007061   0.014184427  -0.000000001   0.000546389   0.012888066

   34    6.1  0.5  0.5  -0.000000101  -0.000003050   0.000005054   0.000000091   0.000000004  -0.107761376   0.166836458  -0.007073026
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000000

   35    7.1  0.5  0.5  -0.000001261   0.000000042   0.000000188  -0.000010406   0.045000085   0.000000002   0.000475925   0.011225971
                         0.000003351  -0.000000111   0.000000217  -0.000012023  -0.071503106  -0.000000001  -0.006760433  -0.159463108

   36    8.1  0.5  0.5   0.003831473   0.116093072   0.094882281   0.001712637  -0.000000000   0.000000962  -0.000001918   0.000000081
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   37    9.1  0.5  0.5   0.131195688  -0.004329911   0.000725297  -0.040182394   0.000009090   0.000000000   0.000000272   0.000006411
                         0.049394085  -0.001630176  -0.000627704   0.034775582   0.000005721   0.000000000   0.000000019   0.000000451

   38   10.1  0.5  0.5  -0.052203202   0.001722886   0.000269466  -0.014928754   0.000003941   0.000000000   0.000000000   0.000000011
                         0.138656987  -0.004576160   0.000311362  -0.017249836  -0.000006261  -0.000000000  -0.000000007  -0.000000155

   39   11.1  0.5  0.5   0.008029951  -0.000265016   0.001749643  -0.096932453  -0.000003679  -0.000000000  -0.000000034  -0.000000798
                        -0.021328361   0.000703910   0.002021673  -0.112003245   0.000005845   0.000000000   0.000000481   0.000011339

   40   12.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000794534   0.024074278  -0.147924504  -0.002670056  -0.000000000   0.000009879  -0.000016160   0.000000685

   41    1.1  0.5 -0.5  -0.000000653   0.000000022   0.000000009  -0.000000497  -0.347170518  -0.000000019  -0.000150949  -0.003560495
                         0.000001735  -0.000000057   0.000000010  -0.000000575   0.551638299   0.000000010   0.002144179   0.050576263

   42    2.1  0.5 -0.5   0.000000197   0.000005959   0.000010786   0.000000195  -0.000000009   0.299354992   0.607994041  -0.025775886
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000006   0.000000000  -0.000000001  -0.000000001

   43    3.1  0.5 -0.5   0.000001274  -0.000000042  -0.000000039   0.000002183   0.553196291   0.000000010   0.006340734   0.149563368
                         0.000000480  -0.000000016   0.000000034  -0.000001890   0.348151032   0.000000018   0.000446380   0.010529043

   44    4.1  0.5 -0.5   0.000001092  -0.000000036   0.000000195  -0.000010829  -0.011236524   0.000000001  -0.002058529  -0.048555970
                        -0.000002899   0.000000096   0.000000226  -0.000012513   0.017854330  -0.000000000   0.029241069   0.689729750

   45    5.1  0.5 -0.5  -0.000000094  -0.000002850   0.000010790   0.000000195  -0.000000000  -0.026630397   0.183526004  -0.007780578
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000   0.000000001  -0.000000001

   46    6.1  0.5 -0.5   0.000002855  -0.000000094   0.000000069  -0.000003822  -0.091202940  -0.000000002  -0.007055564  -0.166424571
                         0.000001075  -0.000000035  -0.000000060   0.000003308  -0.057398066  -0.000000003  -0.000496701  -0.011716048

   47    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002   0.000000000   0.000000001  -0.000000001
                        -0.000000118  -0.000003580   0.000015901   0.000000287   0.000000002  -0.084484920   0.159857766  -0.006777165

   48    8.1  0.5 -0.5  -0.108647955   0.003585758   0.001295005  -0.071744928   0.000000815   0.000000000   0.000000081   0.000001913
                        -0.040905051   0.001350008  -0.001120753   0.062091164   0.000000513   0.000000000   0.000000006   0.000000135

   49    9.1  0.5 -0.5   0.004626619   0.140185892  -0.053141000  -0.000959202   0.000000000  -0.000010741   0.000006427  -0.000000272
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   50   10.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.004889742  -0.148158477   0.022812815   0.000411774   0.000000000  -0.000007398   0.000000155  -0.000000007

   51   11.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000752145   0.022789890   0.148123689   0.002673652  -0.000000000   0.000006906  -0.000011367   0.000000482

   52   12.1  0.5 -0.5  -0.008482501   0.000279952   0.001747290  -0.096802106   0.000005262   0.000000000   0.000000048   0.000001135
                         0.022530381  -0.000743580   0.002018955  -0.111852632  -0.000008361  -0.000000000  -0.000000683  -0.000016120


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.076889347  -0.000003031   0.000976945   0.084232433  -0.000005942  -0.001264292   0.008439124   0.000052478
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000001253  -0.031781819  -0.003790456   0.000043962  -0.002890706   0.000013587   0.000037733  -0.006067931
                        -0.000003448  -0.087458355   0.046770488  -0.000542453   0.000786054  -0.000003695   0.000011293  -0.001816128

    3    3.1  1.5  1.5   0.000001630   0.041352405  -0.079415980   0.000921082  -0.001492318   0.000007014   0.000009281  -0.001492481
                        -0.000000592  -0.015027205  -0.006436169   0.000074648  -0.005487986   0.000025794  -0.000031008   0.004986581

    4    4.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.038209301  -0.000001506   0.000442635   0.038164084   0.000006083   0.001294182  -0.004712710  -0.000029305

    5    5.1  1.5  1.5  -0.013531222   0.000000534  -0.000039718  -0.003424509  -0.000005678  -0.001208046   0.004176477   0.000025971
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    6    6.1  1.5  1.5  -0.000000540  -0.013703144   0.001560068  -0.000018094  -0.001406788   0.000006612  -0.000032541   0.005233007
                        -0.000001487  -0.037708806  -0.019249696   0.000223262   0.000382540  -0.000001798  -0.000009739   0.001566236

    7    7.1  1.5  1.5   0.000000526   0.013342862   0.047455775  -0.000550402   0.000118777  -0.000000558   0.000009453  -0.001520193
                        -0.000000191  -0.004848713   0.003845994  -0.000044607   0.000436803  -0.000002053  -0.000031584   0.005079171

    8    1.1  1.5  0.5  -0.000000268  -0.006807005   0.000819174  -0.000009501  -0.001580293   0.000007428  -0.000024054   0.003868238
                        -0.000000738  -0.018731761  -0.010107794   0.000117232   0.000429720  -0.000002020  -0.000007199   0.001157762

    9    2.1  1.5  0.5  -0.011923874   0.000000470  -0.000284119  -0.024496835  -0.000010936  -0.002326709   0.005554636   0.000034541
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   10    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.014902041  -0.000000588   0.000471120   0.040620098   0.000005794   0.001232655   0.007755178   0.000048225

   11    4.1  1.5  0.5   0.000003324   0.084315862   0.020294226  -0.000235376  -0.002226650   0.000010466   0.000002823  -0.000453965
                        -0.000001208  -0.030639857   0.001644720  -0.000019076  -0.008188486   0.000038487  -0.000009432   0.001516759

   12    5.1  1.5  0.5   0.000000212   0.005370615  -0.007557760   0.000087656  -0.007246319   0.000034059   0.000028623  -0.004602903
                         0.000000583   0.014779052   0.093255312  -0.001081594   0.001970452  -0.000009261   0.000008567  -0.001377646

   13    6.1  1.5  0.5  -0.085537288   0.000003372   0.000313730   0.027049851   0.000045062   0.009587360   0.002738999   0.000017032
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   14    7.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.045556466   0.000001796   0.000927575   0.079975754   0.000046274   0.009845311  -0.000097913  -0.000000609

   15    1.1  1.5 -0.5   0.019930233  -0.000000786   0.000117617   0.010140934   0.000007697   0.001637677  -0.004037781  -0.000025108
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.000000161  -0.004072500   0.001978827  -0.000022951  -0.002245182   0.000010553  -0.000033090   0.005321401
                        -0.000000442  -0.011206852  -0.024416781   0.000283191   0.000610520  -0.000002870  -0.000009904   0.001592693

   17    3.1  1.5 -0.5   0.000000552   0.014005931   0.040487354  -0.000469580  -0.000323444   0.000001520  -0.000013828   0.002223659
                        -0.000000201  -0.005089668   0.003281247  -0.000038056  -0.001189463   0.000005591   0.000046200  -0.007429544

   18    4.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.089710453   0.000003536  -0.000236148  -0.020360764  -0.000039885  -0.008485828   0.001583238   0.000009845

   19    5.1  1.5 -0.5  -0.015724627   0.000000620  -0.001085140  -0.093561065   0.000035296   0.007509449   0.004804646   0.000029877
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   20    6.1  1.5 -0.5  -0.000001151  -0.029214547  -0.002185057   0.000025343   0.009251421  -0.000043483  -0.000016317   0.002623990
                        -0.000003169  -0.080393643   0.026961454  -0.000312704  -0.002515688   0.000011824  -0.000004884   0.000785359

   21    7.1  1.5 -0.5  -0.000001688  -0.042817003   0.079714397  -0.000924544  -0.002583373   0.000012142   0.000000175  -0.000028075
                         0.000000613   0.015559431   0.006460354  -0.000074928  -0.009500334   0.000044653  -0.000000583   0.000093802

   22    1.1  1.5 -1.5  -0.000001035  -0.026260915   0.006804204  -0.000078917   0.001219991  -0.000005734   0.000050274  -0.008084772
                        -0.000002849  -0.072265732  -0.083957165   0.000973752  -0.000331746   0.000001559   0.000015047  -0.002419768

   23    2.1  1.5 -1.5  -0.093054005   0.000003668   0.000544232   0.046923833  -0.000014080  -0.002995674  -0.006333885  -0.000039386
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   24    3.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.043998162  -0.000001734  -0.000924102  -0.079676358   0.000026731   0.005687266  -0.005205141  -0.000032368

   25    4.1  1.5 -1.5  -0.000001416  -0.035911647  -0.038039366   0.000441188   0.000339588  -0.000001596  -0.000008403   0.001351285
                         0.000000514   0.013050068  -0.003082853   0.000035755   0.001248834  -0.000005870   0.000028075  -0.004514827

   26    5.1  1.5 -1.5   0.000000182   0.004621476  -0.000276628   0.000003209   0.001165716  -0.000005479   0.000024880  -0.004001110
                         0.000000501   0.012717544   0.003413318  -0.000039588  -0.000316987   0.000001490   0.000007447  -0.001197530

   27    6.1  1.5 -1.5  -0.040121443   0.000001582  -0.000223994  -0.019312810  -0.000006852  -0.001457872   0.005462368   0.000033967
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   28    7.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.014196548  -0.000000560   0.000552206   0.047611367  -0.000002128  -0.000452664  -0.005301789  -0.000032969

   29    1.1  0.5  0.5  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000001   0.000000002   0.000000000   0.000000000
                        -0.346868476   0.000013673  -0.000496280  -0.042789397   0.002599267   0.553017911  -0.004912778  -0.000030549

   30    2.1  0.5  0.5  -0.000002850  -0.072292250   0.017094331  -0.000198263   0.094501831  -0.000444173   0.001890659  -0.304043946
                        -0.000007843  -0.198936420  -0.210927198   0.002446376  -0.025697361   0.000120781   0.000565873  -0.091000195

   31    3.1  0.5  0.5  -0.313031662   0.000012341   0.000487049   0.041993429   0.002096689   0.446089727   0.070876704   0.000440738
                         0.000000001  -0.000000001   0.000000002  -0.000000000  -0.000000001  -0.000000001  -0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.111283688  -0.000004387   0.002786183   0.240225497   0.000041186   0.008762704   0.513850017   0.003195312

   33    5.1  0.5  0.5   0.000009281   0.235482329   0.016075657  -0.000186447   0.267509988  -0.001257337   0.002132086  -0.342868790
                         0.000025545   0.648008754  -0.198357744   0.002300593  -0.072742513   0.000341900   0.000638132  -0.102620451

   34    6.1  0.5  0.5  -0.385757411   0.000015207  -0.006969001  -0.600869229  -0.001463457  -0.311363954  -0.074215739  -0.000461501
                         0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000001   0.000000000   0.000000000

   35    7.1  0.5  0.5  -0.000009219  -0.233876833   0.672132995  -0.007795533   0.042167257  -0.000198192   0.000818644  -0.131649239
                         0.000003349   0.084989378   0.054472180  -0.000631777   0.155069738  -0.000728851  -0.002735201   0.439857893

   36    8.1  0.5  0.5  -0.000007913   0.000000000  -0.000000148  -0.000012770   0.000353987   0.075313915  -0.406766010  -0.002529423
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   37    9.1  0.5  0.5  -0.000000000  -0.000008920   0.000000054  -0.000000001   0.338361806  -0.001590352  -0.001239124   0.199268241
                        -0.000000001  -0.000024546  -0.000000664   0.000000008  -0.092008856   0.000432455  -0.000370869   0.059640881

   38   10.1  0.5  0.5  -0.000000001  -0.000027846  -0.000006571   0.000000076  -0.103732213   0.000487556   0.000207041  -0.033295005
                         0.000000000   0.000010119  -0.000000533   0.000000006  -0.381474354   0.001792987  -0.000691751   0.111243109

   39   11.1  0.5  0.5   0.000000000   0.000002069   0.000015129  -0.000000175  -0.006058437   0.000028475  -0.000355358   0.057146510
                        -0.000000000  -0.000000752   0.000001226  -0.000000014  -0.022279852   0.000104719   0.001187300  -0.190934210

   40   12.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000002700  -0.000000000   0.000000083   0.000007134   0.000030502   0.006489678  -0.153096695  -0.000952013

   41    1.1  0.5 -0.5   0.000012851   0.326010108   0.042649563  -0.000494658   0.145109850  -0.000682037  -0.000008759   0.001408651
                        -0.000004669  -0.118470035   0.003456480  -0.000040089   0.533640273  -0.002508190   0.000029267  -0.004706494

   42    2.1  0.5 -0.5  -0.211664519   0.000008345  -0.002454397  -0.211618759   0.000460302   0.097933398  -0.317370062  -0.001973526
                         0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   43    3.1  0.5 -0.5   0.000004214   0.106913353   0.003392183  -0.000039342  -0.430458831   0.002023221   0.000422232  -0.067900647
                         0.000011599   0.294208016  -0.041856196   0.000485457   0.117052291  -0.000550162   0.000126374  -0.020322629

   44    4.1  0.5 -0.5  -0.000004123  -0.104591825  -0.239440451   0.002777078   0.002299301  -0.000010807   0.000916198  -0.147337312
                         0.000001498   0.038008016  -0.019405153   0.000225065   0.008455660  -0.000039743  -0.003061143   0.492273863

   45    5.1  0.5 -0.5   0.689468834  -0.000027179  -0.002308136  -0.199008094   0.001302994   0.277223857  -0.357896583  -0.002225535
                        -0.000000001   0.000000002  -0.000000002   0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000000

   46    6.1  0.5 -0.5   0.000005194   0.131752227  -0.048537558   0.000562947   0.300453823  -0.001412178  -0.000442123   0.071099479
                         0.000014293   0.362560521   0.598905615  -0.006946227  -0.081700747   0.000384005  -0.000132327   0.021280037

   47    7.1  0.5 -0.5  -0.000000001   0.000000002  -0.000000002   0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000000
                        -0.248840446   0.000009809   0.007821092   0.674336697  -0.000755317  -0.160700657  -0.459136677  -0.002855084

   48    8.1  0.5 -0.5   0.000000000   0.000002703  -0.000001032   0.000000012  -0.072674930   0.000341583  -0.002423215   0.389686228
                         0.000000000   0.000007437   0.000012728  -0.000000148   0.019762092  -0.000092885  -0.000725267   0.116632886

   49    9.1  0.5 -0.5  -0.000026117   0.000000001  -0.000000008  -0.000000666   0.001648100   0.350648459   0.208002083   0.001293435
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000000  -0.000000000

   50   10.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000001   0.000000000   0.000000000
                        -0.000029627   0.000000001  -0.000000076  -0.000006592   0.001858094   0.395326516  -0.116118847  -0.000722070

   51   11.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000002202  -0.000000000   0.000000176   0.000015179   0.000108521   0.023088882   0.199302775   0.001239339

   52   12.1  0.5 -0.5  -0.000000000  -0.000002538  -0.000007111   0.000000082   0.001702868  -0.000008004  -0.000272973   0.043897742
                         0.000000000   0.000000922  -0.000000576   0.000000007   0.006262281  -0.000029434   0.000912038  -0.146668286


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.004921763   0.000000000   0.001186615  -0.039352075   0.000000634  -0.008353909   0.000184436   0.007414576
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.006645863   0.030064340   0.000906555  -0.031496618  -0.000002389  -0.024997186   0.000621799
                        -0.000000000   0.000148886  -0.024772900  -0.000746998   0.031544717   0.000002393   0.001615281  -0.000040180

    3    3.1  1.5  1.5  -0.000000000   0.000127033  -0.030794594  -0.000928575   0.028311733   0.000002148  -0.003232128   0.000080398
                        -0.000000000  -0.005670399  -0.037372256  -0.001126916   0.028268564   0.000002145  -0.050018615   0.001244200

    4    4.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.007567469   0.000000000  -0.000967117   0.032072786   0.000006370  -0.083973710  -0.000317074  -0.012746836

    5    5.1  1.5  1.5   0.007894319  -0.000000000   0.000892355  -0.029593443  -0.000006425   0.084689937   0.000305775   0.012292606
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

    6    6.1  1.5  1.5   0.000000000   0.005399045  -0.087709339  -0.002644772  -0.037748113  -0.000002864  -0.009501146   0.000236339
                        -0.000000000   0.000120954   0.072272156   0.002179282   0.037805759   0.000002868   0.000613950  -0.000015272

    7    7.1  1.5  1.5   0.000000000  -0.000130352  -0.069915365  -0.002108215  -0.040367104  -0.000003062   0.000461000  -0.000011467
                         0.000000000   0.005818554  -0.084849142  -0.002558526  -0.040305552  -0.000003058   0.007134177  -0.000177461

    8    1.1  1.5  0.5  -0.000000000  -0.006863847  -0.037043876  -0.001117014   0.077582089   0.000005886  -0.015637204   0.000388971
                         0.000000000  -0.000153770   0.030524011   0.000920416  -0.077700567  -0.000005895   0.001010453  -0.000025135

    9    2.1  1.5  0.5  -0.005865227  -0.000000000   0.000532404  -0.017656265   0.000008353  -0.110103621   0.000420195   0.016892427
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   10    3.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.002872692   0.000000000   0.002568797  -0.085189756  -0.000005295   0.069794003  -0.000333949  -0.013425215

   11    4.1  1.5  0.5   0.000000000  -0.000055955   0.053234966   0.001605238   0.022545134   0.000001710  -0.004664565   0.000116030
                        -0.000000000   0.002497663   0.064605845   0.001948113   0.022510757   0.000001708  -0.072186214   0.001795613

   12    5.1  1.5  0.5  -0.000000000  -0.001131125  -0.062300567  -0.001878600  -0.027413697  -0.000002080  -0.066513418   0.001654504
                        -0.000000000  -0.000025340   0.051335426   0.001547959   0.027455561   0.000002083   0.004297998  -0.000106912

   13    6.1  1.5  0.5  -0.000383693   0.000000000   0.000086230  -0.002859679   0.000001358  -0.017905820  -0.002089967  -0.084019626
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   14    7.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.001302776   0.000000000  -0.000649900   0.021552829   0.000001326  -0.017482039  -0.002113012  -0.084946079

   15    1.1  1.5 -0.5  -0.006865569   0.000000000   0.001447372  -0.047999625  -0.000008330   0.109801451  -0.000389783  -0.015669817
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.000000000   0.005863756   0.013626283   0.000410884   0.077795593   0.000005902  -0.016857270   0.000419320
                        -0.000000000   0.000131365  -0.011228005  -0.000338567  -0.077914396  -0.000005911   0.001089292  -0.000027096

   17    3.1  1.5 -0.5   0.000000000   0.000064340  -0.054174028  -0.001633554   0.049389453   0.000003747  -0.000865712   0.000021534
                        -0.000000000  -0.002871971  -0.065745489  -0.001982478   0.049314144   0.000003741  -0.013397273   0.000333254

   18    4.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.002498290  -0.000000000   0.002524269  -0.083713063   0.000002417  -0.031859335   0.001799358   0.072336766

   19    5.1  1.5 -0.5  -0.001131409   0.000000000   0.002434197  -0.080725997   0.000002943  -0.038798435  -0.001657955  -0.066652139
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   20    6.1  1.5 -0.5   0.000000000   0.000383597   0.002206967   0.000066548   0.012651662   0.000000960   0.083844760  -0.002085617
                        -0.000000000   0.000008594  -0.001818532  -0.000054836  -0.012670983  -0.000000961  -0.005417923   0.000134769

   21    7.1  1.5 -0.5   0.000000000  -0.000029179   0.013705915   0.000413286  -0.012371096  -0.000000939  -0.005477664   0.000136256
                        -0.000000000   0.001302449   0.016633471   0.000501563  -0.012352233  -0.000000937  -0.084769284   0.002108614

   22    1.1  1.5 -1.5  -0.000000000  -0.004920528  -0.030370100  -0.000915775  -0.005902597  -0.000000448   0.007399145  -0.000184052
                        -0.000000000  -0.000110234   0.025024845   0.000754595   0.005911611   0.000000448  -0.000478122   0.000011893

   23    2.1  1.5 -1.5  -0.006647531  -0.000000000   0.001174669  -0.038955887  -0.000003382   0.044576968   0.000623095   0.025049320
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   24    3.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.005671822   0.000000000   0.001460202  -0.048425123  -0.000003035   0.040008323  -0.001246795  -0.050122934

   25    4.1  1.5 -1.5   0.000000000  -0.000169491  -0.020395786  -0.000615011   0.059423667   0.000004508   0.000821967  -0.000020446
                         0.000000000   0.007565571  -0.024752283  -0.000746376   0.059333058   0.000004501   0.012720306  -0.000316414

   26    5.1  1.5 -1.5   0.000000000   0.007892338  -0.022838842  -0.000688678   0.059839121   0.000004540   0.012267021  -0.000305139
                        -0.000000000   0.000176811   0.018819117   0.000567468  -0.059930503  -0.000004546  -0.000792677   0.000019718

   27    6.1  1.5 -1.5  -0.005400400   0.000000000  -0.003426964   0.113649428  -0.000004053   0.053424671   0.000236831   0.009520962
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   28    7.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.005820014  -0.000000000   0.003315211  -0.109943327   0.000004328  -0.057044199   0.000177831   0.007149056

   29    1.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000002
                        -0.011265749   0.000000000  -0.000006627   0.000219767  -0.000000011   0.000145764  -0.008523800  -0.342668886

   30    2.1  0.5  0.5   0.000000000   0.442501743  -0.000542636  -0.000016363   0.000938556   0.000000071   0.066319890  -0.001649690
                        -0.000000000   0.009913314   0.000447130   0.000013483  -0.000939989  -0.000000071  -0.004285492   0.000106601

   31    3.1  0.5  0.5   0.319560667   0.000000000   0.000008931  -0.000296193  -0.000000032   0.000421341  -0.006703858  -0.269504636
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001

   32    4.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.204975655   0.000000000   0.000010655  -0.000353347  -0.000000170   0.002235540  -0.000214477  -0.008622299

   33    5.1  0.5  0.5   0.000000000  -0.318132645   0.000232656   0.000007015   0.001063158   0.000000081   0.157728767  -0.003923462
                         0.000000000  -0.007127088  -0.000191707  -0.000005781  -0.001064782  -0.000000081  -0.010192197   0.000253528

   34    6.1  0.5  0.5   0.451481186  -0.000000000   0.000022366  -0.000741733   0.000000034  -0.000451846   0.005101547   0.205089424
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001

   35    7.1  0.5  0.5   0.000000000  -0.005905204  -0.000236774  -0.000007140  -0.001468791  -0.000000111   0.007310086  -0.000181837
                         0.000000000   0.263591300  -0.000287349  -0.000008665  -0.001466551  -0.000000111   0.113126818  -0.002814000

   36    8.1  0.5  0.5  -0.014977543   0.000000000   0.014371938  -0.476620825  -0.000029706   0.391571257   0.002535744   0.101940500
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   37    9.1  0.5  0.5   0.000000000   0.071543939   0.443201921   0.013364231   0.156237105   0.000011853  -0.558269753   0.013886816
                        -0.000000000   0.001602790  -0.365196667  -0.011012074  -0.156475699  -0.000011871   0.036074557  -0.000897346

   38   10.1  0.5  0.5  -0.000000000  -0.000869205   0.385725088   0.011631085   0.067635629   0.000005131   0.039349651  -0.000978813
                        -0.000000000   0.038798810   0.468115170   0.014115460   0.067532498   0.000005123   0.608953293  -0.015147556

   39   11.1  0.5  0.5   0.000000000  -0.008093697  -0.059474371  -0.001793379   0.428272433   0.000032490   0.001422374  -0.000035381
                         0.000000000   0.361279286  -0.072177974  -0.002176442   0.427619405   0.000032440   0.022011866  -0.000547539

   40   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.383928599  -0.000000000   0.002903860  -0.096301566   0.000045906  -0.605116493  -0.000504874  -0.020296657

   41    1.1  0.5 -0.5   0.000000000  -0.000252322  -0.000139755  -0.000004214  -0.000103150  -0.000000008   0.022096666  -0.000549649
                         0.000000000   0.011262923  -0.000169606  -0.000005114  -0.000102992  -0.000000008   0.341955703  -0.008506060

   42    2.1  0.5 -0.5  -0.442612773   0.000000000  -0.000021202   0.000703121   0.000000101  -0.001328332  -0.001653131  -0.066458207
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   43    3.1  0.5 -0.5  -0.000000000   0.319480505  -0.000228588  -0.000006893   0.000297705   0.000000023  -0.268943726   0.006689906
                        -0.000000000   0.007157284   0.000188355   0.000005680  -0.000298160  -0.000000023   0.017378741  -0.000432292

   44    4.1  0.5 -0.5  -0.000000000   0.004590893   0.000224701   0.000006776  -0.001581971  -0.000000120   0.000556001  -0.000013830
                        -0.000000000  -0.204924237   0.000272696   0.000008223  -0.001579559  -0.000000120   0.008604354  -0.000214031

   45    5.1  0.5 -0.5   0.318212469   0.000000000   0.000009090  -0.000301464   0.000000114  -0.001504681  -0.003931645  -0.158057727
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001

   46    6.1  0.5 -0.5   0.000000000   0.451367932  -0.000572435  -0.000017261  -0.000319260  -0.000000024   0.204662580  -0.005090929
                        -0.000000000   0.010111942   0.000471684   0.000014223   0.000319747   0.000000024  -0.013224990   0.000328968

   47    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001
                         0.263657438  -0.000000000   0.000011227  -0.000372332   0.000000157  -0.002075601   0.002819869   0.113362755

   48    8.1  0.5 -0.5  -0.000000000  -0.014973785  -0.367833767  -0.011091593   0.276671355   0.000020989   0.101728335  -0.002530466
                         0.000000000  -0.000335456   0.303093601   0.009139430  -0.277093867  -0.000021021  -0.006573533   0.000163515

   49    9.1  0.5 -0.5  -0.071561891   0.000000000   0.017316710  -0.574279155   0.000016775  -0.221121409   0.013915779   0.559434080
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000003

   50   10.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000003
                         0.038808545   0.000000000  -0.018290116   0.606560513  -0.000007251   0.095578327   0.015179148   0.610223327

   51   11.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.361369935  -0.000000000   0.002820126  -0.093524653  -0.000045912   0.605207099   0.000548681   0.022057774

   52   12.1  0.5 -0.5  -0.000000000   0.008598949   0.061240271   0.001846628   0.428208317   0.000032485   0.001308810  -0.000032556
                        -0.000000000  -0.383832291   0.074321066   0.002241064   0.427555386   0.000032435   0.020254414  -0.000503823


   Nr   State  S   Sz       49            50            51            52

    1    1.1  1.5  1.5  -0.000807616   0.076168888  -0.000140337   0.037848628
                         0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.049028582   0.000519848  -0.047402853  -0.000175763
                        -0.011237874  -0.000119155   0.039337335   0.000145857

    3    3.1  1.5  1.5  -0.009662042  -0.000102446   0.031809874   0.000117946
                        -0.042153542  -0.000446952   0.038332001   0.000142129

    4    4.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000389692  -0.036753090  -0.000248810   0.067103387

    5    5.1  1.5  1.5  -0.000338247   0.031901195   0.000258407  -0.069691775
                         0.000000000   0.000000000  -0.000000000  -0.000000000

    6    6.1  1.5  1.5  -0.049375916  -0.000523531  -0.033616135  -0.000124644
                         0.011317487   0.000119999   0.027896405   0.000103436

    7    7.1  1.5  1.5  -0.010953792  -0.000116143  -0.029864489  -0.000110733
                        -0.047789189  -0.000506707  -0.035987745  -0.000133437

    8    1.1  1.5  0.5  -0.030690465  -0.000325410   0.046665713   0.000173030
                         0.007034582   0.000074587  -0.038725619  -0.000143589

    9    2.1  1.5  0.5  -0.000551473   0.052011227  -0.000177703   0.047926199
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   10    3.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000725235   0.068399274  -0.000073530   0.019830998

   11    4.1  1.5  0.5  -0.003843518  -0.000040753  -0.014868187  -0.000055129
                        -0.016768496  -0.000177796  -0.017916681  -0.000066432

   12    5.1  1.5  0.5   0.039331342   0.000417029   0.003520900   0.000013055
                        -0.009015164  -0.000095587  -0.002921824  -0.000010834

   13    6.1  1.5  0.5  -0.000228776   0.021576663   0.000004924  -0.001327897
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   14    7.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000042347  -0.003993871   0.000053230  -0.014355985

   15    1.1  1.5 -0.5   0.000333848  -0.031486346  -0.000224849   0.060641260
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   16    2.1  1.5 -0.5  -0.050696538  -0.000537533  -0.036881000  -0.000136749
                         0.011620188   0.000123208   0.030605758   0.000113482

   17    3.1  1.5 -0.5   0.015281555   0.000162030   0.012664112   0.000046957
                         0.066670344   0.000706903   0.015260694   0.000056584

   18    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000182406   0.017203346  -0.000086328   0.023282407

   19    5.1  1.5 -0.5  -0.000427843   0.040351303  -0.000016965   0.004575346
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   20    6.1  1.5 -0.5  -0.021031269  -0.000222994   0.001021866   0.000003789
                         0.004820592   0.000051113  -0.000847998  -0.000003144

   21    7.1  1.5 -0.5  -0.000892298  -0.000009461  -0.009167758  -0.000033993
                        -0.003892918  -0.000041276  -0.011047466  -0.000040962

   22    1.1  1.5 -1.5   0.074243565   0.000787201   0.029125933   0.000107995
                        -0.017017418  -0.000180435  -0.024170203  -0.000089620

   23    2.1  1.5 -1.5   0.000533329  -0.050300016  -0.000228401   0.061599159
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   24    3.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000458543  -0.043246690  -0.000184695   0.049811749

   25    4.1  1.5 -1.5   0.008211262   0.000087064  -0.042852345  -0.000158890
                         0.035824082   0.000379841  -0.051638561  -0.000191468

   26    5.1  1.5 -1.5   0.031094828   0.000329697  -0.053630423  -0.000198854
                        -0.007127267  -0.000075570   0.044505295   0.000165019

   27    6.1  1.5 -1.5  -0.000537107   0.050656358  -0.000161972   0.043683566
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   28    7.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000519847  -0.049028483   0.000173399  -0.046765431

   29    1.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000130695  -0.012326254   0.000021457  -0.005787000

   30    2.1  0.5  0.5   0.175519377   0.001861025  -0.218502030  -0.000810174
                        -0.040230915  -0.000426567   0.181324269   0.000672324

   31    3.1  0.5  0.5  -0.000244283   0.023039101   0.000780961  -0.210623594
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.003279449   0.309295651   0.000547932  -0.147776024

   33    5.1  0.5  0.5   0.233006966   0.002470563   0.144865882   0.000537141
                        -0.053407684  -0.000566279  -0.120217191  -0.000445748

   34    6.1  0.5  0.5   0.000622040  -0.058666613   0.000994958  -0.268338112
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

   35    7.1  0.5  0.5  -0.065174295  -0.000691040  -0.089519323  -0.000331925
                        -0.284342319  -0.003014870  -0.107873888  -0.000399981

   36    8.1  0.5  0.5  -0.006713779   0.633198636   0.000222015  -0.059876814
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   37    9.1  0.5  0.5   0.306523194   0.003250053   0.052378878   0.000194213
                        -0.070258389  -0.000744947  -0.043466698  -0.000161168

   38   10.1  0.5  0.5   0.045115089   0.000478353   0.045116772   0.000167286
                         0.196828045   0.002086960   0.054367274   0.000201586

   39   11.1  0.5  0.5  -0.061921110  -0.000656547   0.374489837   0.001388553
                        -0.270149325  -0.002864382   0.451273235   0.001673255

   40   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.002993059   0.282285267  -0.002164052   0.583640014

   41    1.1  0.5 -0.5   0.002753894   0.000029199   0.003695589   0.000013703
                         0.012014683   0.000127391   0.004453313   0.000016512

   42    2.1  0.5 -0.5   0.001909286  -0.180071036  -0.001052806   0.283939479
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   43    3.1  0.5 -0.5   0.022456742   0.000238108  -0.162082719  -0.000600979
                        -0.005147325  -0.000054577   0.134504611   0.000498723

   44    4.1  0.5 -0.5  -0.069101880  -0.000732684   0.094370038   0.000349910
                        -0.301477578  -0.003196554   0.113719168   0.000421654

   45    5.1  0.5 -0.5   0.002534631  -0.239049424   0.000698006  -0.188250622
                         0.000000000   0.000000000  -0.000000000  -0.000000000

   46    6.1  0.5 -0.5  -0.057183695  -0.000606316  -0.206496195  -0.000765658
                         0.013107114   0.000138974   0.171361208   0.000635382

   47    7.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.003093053  -0.291716031   0.000519768  -0.140180187

   48    8.1  0.5 -0.5   0.617193260   0.006544075  -0.046077444  -0.000170849
                        -0.141467285  -0.001499972   0.038237443   0.000141779

   49    9.1  0.5 -0.5   0.003334335  -0.314472113   0.000252377  -0.068065414
                        -0.000000000  -0.000000000   0.000000000   0.000000000

   50   10.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.002141080   0.201932292  -0.000261957   0.070649300

   51   11.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.002938663  -0.277154978  -0.002174365   0.586421495

   52   12.1  0.5 -0.5  -0.063067303  -0.000668700  -0.372713578  -0.001381967
                        -0.275149936  -0.002917403  -0.449132781  -0.001665319


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   0.064%   0.000%   0.139%   6.995%   0.002%   6.522%   0.000%   0.002%  10.135%
    2    2.1  1.5  1.5   0.455%   0.000%   0.162%   0.000%   0.001%   1.644%   0.001%  20.021%   5.124%   0.001%
    3    3.1  1.5  1.5   0.568%   0.000%   1.260%   0.001%   0.006%  17.896%   0.000%   7.396%   1.087%   0.000%
    4    4.1  1.5  1.5   0.000%   0.108%   0.030%  33.432%   0.355%   0.000%   0.253%   0.000%   0.000%   1.536%
    5    5.1  1.5  1.5   0.000%   0.001%   0.026%  29.186%   4.824%   0.002%   0.120%   0.000%   0.000%   1.506%
    6    6.1  1.5  1.5  48.387%   0.000%   0.123%   0.000%   0.000%   0.362%   0.000%   0.015%   1.085%   0.000%
    7    7.1  1.5  1.5  47.879%   0.000%   0.141%   0.000%   0.000%   0.327%   0.000%   0.407%   0.413%   0.000%
    8    1.1  1.5  0.5   0.597%   0.000%   1.009%   0.001%   0.006%  17.908%   0.000%   4.481%  23.562%   0.005%
    9    2.1  1.5  0.5   0.000%   0.056%   0.000%   0.242%   0.044%   0.000%   2.356%   0.000%   0.009%  41.311%
   10    3.1  1.5  0.5   0.000%   0.537%   0.000%   0.160%  29.712%   0.009%  12.605%   0.001%   0.000%   0.191%
   11    4.1  1.5  0.5   0.371%   0.000%   0.062%   0.000%   0.000%   1.286%   0.002%  31.717%   2.275%   0.001%
   12    5.1  1.5  0.5   0.813%   0.000%   1.330%   0.001%   0.006%  17.812%   0.000%   5.685%  10.114%   0.002%
   13    6.1  1.5  0.5   0.000%   0.164%   0.016%  17.779%   0.019%   0.000%   1.904%   0.000%   0.000%   1.573%
   14    7.1  1.5  0.5   0.000%   0.000%   0.013%  14.887%   0.783%   0.000%   6.512%   0.000%   0.000%   0.065%
   15    1.1  1.5 -0.5   0.000%   0.597%   0.001%   1.009%  17.908%   0.006%   4.481%   0.000%   0.005%  23.562%
   16    2.1  1.5 -0.5   0.056%   0.000%   0.242%   0.000%   0.000%   0.044%   0.000%   2.356%  41.311%   0.009%
   17    3.1  1.5 -0.5   0.537%   0.000%   0.160%   0.000%   0.009%  29.712%   0.001%  12.605%   0.191%   0.000%
   18    4.1  1.5 -0.5   0.000%   0.371%   0.000%   0.062%   1.286%   0.000%  31.717%   0.002%   0.001%   2.275%
   19    5.1  1.5 -0.5   0.000%   0.813%   0.001%   1.330%  17.812%   0.006%   5.685%   0.000%   0.002%  10.114%
   20    6.1  1.5 -0.5   0.164%   0.000%  17.779%   0.016%   0.000%   0.019%   0.000%   1.904%   1.573%   0.000%
   21    7.1  1.5 -0.5   0.000%   0.000%  14.887%   0.013%   0.000%   0.783%   0.000%   6.512%   0.065%   0.000%
   22    1.1  1.5 -1.5   0.064%   0.000%   0.139%   0.000%   0.002%   6.995%   0.000%   6.522%  10.135%   0.002%
   23    2.1  1.5 -1.5   0.000%   0.455%   0.000%   0.162%   1.644%   0.001%  20.021%   0.001%   0.001%   5.124%
   24    3.1  1.5 -1.5   0.000%   0.568%   0.001%   1.260%  17.896%   0.006%   7.396%   0.000%   0.000%   1.087%
   25    4.1  1.5 -1.5   0.108%   0.000%  33.432%   0.030%   0.000%   0.355%   0.000%   0.253%   1.536%   0.000%
   26    5.1  1.5 -1.5   0.001%   0.000%  29.186%   0.026%   0.002%   4.824%   0.000%   0.120%   1.506%   0.000%
   27    6.1  1.5 -1.5   0.000%  48.387%   0.000%   0.123%   0.362%   0.000%   0.015%   0.000%   0.000%   1.085%
   28    7.1  1.5 -1.5   0.000%  47.879%   0.000%   0.141%   0.327%   0.000%   0.407%   0.000%   0.000%   0.413%
   29    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.431%   0.000%  35.502%   0.053%   0.972%   0.001%   0.069%   8.686%   0.000%   0.084%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.015%   0.041%  39.631%   0.561%   0.004%   2.475%   0.002%
    3    3.1  1.5  1.5   0.000%   1.166%   0.018%  12.238%   0.001%   1.402%  23.998%   0.190%   8.069%   0.006%
    4    4.1  1.5  1.5  11.594%   0.005%   0.889%   0.001%   3.531%   0.004%   0.090%  11.360%   0.000%   0.437%
    5    5.1  1.5  1.5  19.631%   0.008%   0.664%   0.001%   4.205%   0.004%   0.024%   3.013%   0.000%   0.414%
    6    6.1  1.5  1.5   0.000%   0.090%   0.005%   3.643%   0.001%   0.576%   1.213%   0.010%   0.208%   0.000%
    7    7.1  1.5  1.5   0.000%   0.336%   0.002%   1.079%   0.000%   0.333%   4.987%   0.039%   0.266%   0.000%
    8    1.1  1.5  0.5   0.000%   0.140%   0.002%   1.317%   0.004%   3.810%   3.931%   0.031%   0.722%   0.001%
    9    2.1  1.5  0.5   2.249%   0.001%   2.086%   0.003%   2.660%   0.003%   0.060%   7.633%   0.001%   0.806%
   10    3.1  1.5  0.5   0.497%   0.000%   2.200%   0.003%   1.546%   0.002%   0.092%  11.594%   0.001%   0.844%
   11    4.1  1.5  0.5   0.000%   0.101%   0.036%  24.308%   0.002%   2.301%   0.720%   0.006%  17.693%   0.013%
   12    5.1  1.5  0.5   0.000%   0.943%   0.013%   8.459%   0.007%   6.444%  11.441%   0.091%  15.801%   0.012%
   13    6.1  1.5  0.5  34.236%   0.014%   2.442%   0.004%  12.653%   0.013%   0.000%   0.049%   0.019%  24.588%
   14    7.1  1.5  0.5  24.705%   0.010%   1.177%   0.002%  15.995%   0.016%   0.049%   6.218%   0.019%  24.649%
   15    1.1  1.5 -0.5   0.140%   0.000%   1.317%   0.002%   3.810%   0.004%   0.031%   3.931%   0.001%   0.722%
   16    2.1  1.5 -0.5   0.001%   2.249%   0.003%   2.086%   0.003%   2.660%   7.633%   0.060%   0.806%   0.001%
   17    3.1  1.5 -0.5   0.000%   0.497%   0.003%   2.200%   0.002%   1.546%  11.594%   0.092%   0.844%   0.001%
   18    4.1  1.5 -0.5   0.101%   0.000%  24.308%   0.036%   2.301%   0.002%   0.006%   0.720%   0.013%  17.693%
   19    5.1  1.5 -0.5   0.943%   0.000%   8.459%   0.013%   6.444%   0.007%   0.091%  11.441%   0.012%  15.801%
   20    6.1  1.5 -0.5   0.014%  34.236%   0.004%   2.442%   0.013%  12.653%   0.049%   0.000%  24.588%   0.019%
   21    7.1  1.5 -0.5   0.010%  24.705%   0.002%   1.177%   0.016%  15.995%   6.218%   0.049%  24.649%   0.019%
   22    1.1  1.5 -1.5   0.000%   0.431%   0.053%  35.502%   0.001%   0.972%   8.686%   0.069%   0.084%   0.000%
   23    2.1  1.5 -1.5   0.000%   0.000%   0.015%   0.000%  39.631%   0.041%   0.004%   0.561%   0.002%   2.475%
   24    3.1  1.5 -1.5   1.166%   0.000%  12.238%   0.018%   1.402%   0.001%   0.190%  23.998%   0.006%   8.069%
   25    4.1  1.5 -1.5   0.005%  11.594%   0.001%   0.889%   0.004%   3.531%  11.360%   0.090%   0.437%   0.000%
   26    5.1  1.5 -1.5   0.008%  19.631%   0.001%   0.664%   0.004%   4.205%   3.013%   0.024%   0.414%   0.000%
   27    6.1  1.5 -1.5   0.090%   0.000%   3.643%   0.005%   0.576%   0.001%   0.010%   1.213%   0.000%   0.208%
   28    7.1  1.5 -1.5   0.336%   0.000%   1.079%   0.002%   0.333%   0.000%   0.039%   4.987%   0.000%   0.266%
   29    1.1  0.5  0.5   1.888%   0.001%   0.250%   0.000%   0.053%   0.000%   0.000%   0.002%   0.000%   0.480%
   30    2.1  0.5  0.5   0.000%   0.047%   0.000%   0.293%   0.001%   0.657%   1.188%   0.009%   0.015%   0.000%
   31    3.1  0.5  0.5   1.548%   0.001%   0.268%   0.000%   0.352%   0.000%   0.000%   0.026%   0.000%   0.300%
   32    4.1  0.5  0.5   0.101%   0.000%   1.516%   0.002%   0.554%   0.001%   0.000%   0.020%   0.000%   0.002%
   33    5.1  0.5  0.5   0.000%   0.001%   0.002%   1.189%   0.001%   0.968%   0.033%   0.000%   0.093%   0.000%
   34    6.1  0.5  0.5   0.189%   0.000%   0.292%   0.000%   0.007%   0.000%   0.013%   1.693%   0.000%   0.174%
   35    7.1  0.5  0.5   0.000%   0.066%   0.000%   0.028%   0.001%   1.244%   0.849%   0.007%   0.062%   0.000%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.813%   0.001%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.909%   0.001%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   41    1.1  0.5 -0.5   0.001%   1.888%   0.000%   0.250%   0.000%   0.053%   0.002%   0.000%   0.480%   0.000%
   42    2.1  0.5 -0.5   0.047%   0.000%   0.293%   0.000%   0.657%   0.001%   0.009%   1.188%   0.000%   0.015%
   43    3.1  0.5 -0.5   0.001%   1.548%   0.000%   0.268%   0.000%   0.352%   0.026%   0.000%   0.300%   0.000%
   44    4.1  0.5 -0.5   0.000%   0.101%   0.002%   1.516%   0.001%   0.554%   0.020%   0.000%   0.002%   0.000%
   45    5.1  0.5 -0.5   0.001%   0.000%   1.189%   0.002%   0.968%   0.001%   0.000%   0.033%   0.000%   0.093%
   46    6.1  0.5 -0.5   0.000%   0.189%   0.000%   0.292%   0.000%   0.007%   1.693%   0.013%   0.174%   0.000%
   47    7.1  0.5 -0.5   0.066%   0.000%   0.028%   0.000%   1.244%   0.001%   0.007%   0.849%   0.000%   0.062%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.000%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.813%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.909%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.069%  20.159%   4.644%   0.003%   0.003%   2.610%   0.129%   0.000%   0.000%   0.010%
    2    2.1  1.5  1.5   7.996%   0.027%   0.008%  13.210%   2.550%   0.003%   0.001%   3.405%   0.077%   0.000%
    3    3.1  1.5  1.5   6.628%   0.023%   0.005%   8.704%   3.944%   0.004%   0.001%   2.739%   0.144%   0.000%
    4    4.1  1.5  1.5   0.016%   4.637%  15.716%   0.009%   0.002%   1.691%  11.785%   0.004%   0.000%   0.202%
    5    5.1  1.5  1.5   0.012%   3.487%  16.909%   0.010%   0.002%   1.436%  11.995%   0.004%   0.000%   1.012%
    6    6.1  1.5  1.5   9.177%   0.031%   0.004%   6.409%  21.680%   0.024%   0.002%   4.694%   0.010%   0.000%
    7    7.1  1.5  1.5   8.439%   0.029%   0.004%   7.374%  20.286%   0.022%   0.002%   5.360%   0.023%   0.000%
    8    1.1  1.5  0.5   3.190%   0.011%   0.007%  12.735%   3.852%   0.004%   0.007%  20.363%   0.055%   0.000%
    9    2.1  1.5  0.5   0.032%   9.412%   7.653%   0.004%   0.001%   0.542%  20.461%   0.007%   0.000%   0.221%
   10    3.1  1.5  0.5   0.055%  16.078%   1.214%   0.001%   0.013%  12.148%   8.113%   0.003%   0.000%   0.003%
   11    4.1  1.5  0.5   1.332%   0.005%   0.001%   1.769%  11.777%   0.013%   0.001%   1.692%   0.006%   0.000%
   12    5.1  1.5  0.5   4.908%   0.017%   0.000%   0.058%  10.969%   0.012%   0.001%   2.547%   0.025%   0.000%
   13    6.1  1.5  0.5   0.004%   1.182%   0.006%   0.000%   0.000%   0.015%   0.550%   0.000%   0.000%   1.023%
   14    7.1  1.5  0.5   0.001%   0.175%   0.674%   0.000%   0.001%   0.775%   0.518%   0.000%   0.000%   1.030%
   15    1.1  1.5 -0.5   0.011%   3.190%  12.735%   0.007%   0.004%   3.852%  20.363%   0.007%   0.000%   0.055%
   16    2.1  1.5 -0.5   9.412%   0.032%   0.004%   7.653%   0.542%   0.001%   0.007%  20.461%   0.221%   0.000%
   17    3.1  1.5 -0.5  16.078%   0.055%   0.001%   1.214%  12.148%   0.013%   0.003%   8.113%   0.003%   0.000%
   18    4.1  1.5 -0.5   0.005%   1.332%   1.769%   0.001%   0.013%  11.777%   1.692%   0.001%   0.000%   0.006%
   19    5.1  1.5 -0.5   0.017%   4.908%   0.058%   0.000%   0.012%  10.969%   2.547%   0.001%   0.000%   0.025%
   20    6.1  1.5 -0.5   1.182%   0.004%   0.000%   0.006%   0.015%   0.000%   0.000%   0.550%   1.023%   0.000%
   21    7.1  1.5 -0.5   0.175%   0.001%   0.000%   0.674%   0.775%   0.001%   0.000%   0.518%   1.030%   0.000%
   22    1.1  1.5 -1.5  20.159%   0.069%   0.003%   4.644%   2.610%   0.003%   0.000%   0.129%   0.010%   0.000%
   23    2.1  1.5 -1.5   0.027%   7.996%  13.210%   0.008%   0.003%   2.550%   3.405%   0.001%   0.000%   0.077%
   24    3.1  1.5 -1.5   0.023%   6.628%   8.704%   0.005%   0.004%   3.944%   2.739%   0.001%   0.000%   0.144%
   25    4.1  1.5 -1.5   4.637%   0.016%   0.009%  15.716%   1.691%   0.002%   0.004%  11.785%   0.202%   0.000%
   26    5.1  1.5 -1.5   3.487%   0.012%   0.010%  16.909%   1.436%   0.002%   0.004%  11.995%   1.012%   0.000%
   27    6.1  1.5 -1.5   0.031%   9.177%   6.409%   0.004%   0.024%  21.680%   4.694%   0.002%   0.000%   0.010%
   28    7.1  1.5 -1.5   0.029%   8.439%   7.374%   0.004%   0.022%  20.286%   5.360%   0.002%   0.000%   0.023%
   29    1.1  0.5  0.5   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.483%
   30    2.1  0.5  0.5   0.130%   0.000%   0.000%   0.337%   0.000%   0.000%   0.000%   0.000%   8.961%   0.000%
   31    3.1  0.5  0.5   0.000%   0.001%   0.181%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.724%
   32    4.1  0.5  0.5   0.001%   0.385%   0.094%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.045%
   33    5.1  0.5  0.5   0.249%   0.001%   0.000%   0.140%   0.000%   0.000%   0.000%   0.000%   0.071%   0.000%
   34    6.1  0.5  0.5   0.000%   0.012%   0.295%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.161%
   35    7.1  0.5  0.5   0.342%   0.001%   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%   0.714%   0.000%
   36    8.1  0.5  0.5   0.003%   1.015%   0.012%   0.000%   0.001%   1.348%   0.900%   0.000%   0.000%   0.000%
   37    9.1  0.5  0.5   0.221%   0.001%   0.000%   0.011%   1.965%   0.002%   0.000%   0.282%   0.000%   0.000%
   38   10.1  0.5  0.5   0.125%   0.000%   0.000%   0.011%   2.195%   0.002%   0.000%   0.052%   0.000%   0.000%
   39   11.1  0.5  0.5   0.175%   0.001%   0.000%   0.867%   0.052%   0.000%   0.001%   2.194%   0.000%   0.000%
   40   12.1  0.5  0.5   0.001%   0.202%   0.840%   0.000%   0.000%   0.058%   2.188%   0.001%   0.000%   0.000%
   41    1.1  0.5 -0.5   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  42.483%   0.000%
   42    2.1  0.5 -0.5   0.000%   0.130%   0.337%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.961%
   43    3.1  0.5 -0.5   0.001%   0.000%   0.000%   0.181%   0.000%   0.000%   0.000%   0.000%  42.724%   0.000%
   44    4.1  0.5 -0.5   0.385%   0.001%   0.000%   0.094%   0.000%   0.000%   0.000%   0.000%   0.045%   0.000%
   45    5.1  0.5 -0.5   0.001%   0.249%   0.140%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.071%
   46    6.1  0.5 -0.5   0.012%   0.000%   0.000%   0.295%   0.000%   0.000%   0.000%   0.000%   1.161%   0.000%
   47    7.1  0.5 -0.5   0.001%   0.342%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.714%
   48    8.1  0.5 -0.5   1.015%   0.003%   0.000%   0.012%   1.348%   0.001%   0.000%   0.900%   0.000%   0.000%
   49    9.1  0.5 -0.5   0.001%   0.221%   0.011%   0.000%   0.002%   1.965%   0.282%   0.000%   0.000%   0.000%
   50   10.1  0.5 -0.5   0.000%   0.125%   0.011%   0.000%   0.002%   2.195%   0.052%   0.000%   0.000%   0.000%
   51   11.1  0.5 -0.5   0.001%   0.175%   0.867%   0.000%   0.000%   0.052%   2.194%   0.001%   0.000%   0.000%
   52   12.1  0.5 -0.5   0.202%   0.001%   0.000%   0.840%   0.058%   0.000%   0.001%   2.188%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.514%   0.001%   0.591%   0.000%   0.000%   0.710%   0.000%   0.000%   0.007%   0.000%
    2    2.1  1.5  1.5   0.001%   0.444%   0.000%   0.866%   0.220%   0.000%   0.001%   0.000%   0.000%   0.004%
    3    3.1  1.5  1.5   0.001%   0.585%   0.000%   0.194%   0.635%   0.000%   0.003%   0.000%   0.000%   0.003%
    4    4.1  1.5  1.5   0.603%   0.001%   0.146%   0.000%   0.000%   0.146%   0.000%   0.000%   0.002%   0.000%
    5    5.1  1.5  1.5   0.069%   0.000%   0.018%   0.000%   0.000%   0.001%   0.000%   0.000%   0.002%   0.000%
    6    6.1  1.5  1.5   0.000%   0.013%   0.000%   0.161%   0.037%   0.000%   0.000%   0.000%   0.000%   0.003%
    7    7.1  1.5  1.5   0.000%   0.001%   0.000%   0.020%   0.227%   0.000%   0.000%   0.000%   0.000%   0.003%
    8    1.1  1.5  0.5   0.000%   0.263%   0.000%   0.040%   0.010%   0.000%   0.000%   0.000%   0.000%   0.002%
    9    2.1  1.5  0.5   0.291%   0.001%   0.014%   0.000%   0.000%   0.060%   0.000%   0.001%   0.003%   0.000%
   10    3.1  1.5  0.5   0.446%   0.001%   0.022%   0.000%   0.000%   0.165%   0.000%   0.000%   0.006%   0.000%
   11    4.1  1.5  0.5   0.000%   0.244%   0.000%   0.805%   0.041%   0.000%   0.007%   0.000%   0.000%   0.000%
   12    5.1  1.5  0.5   0.000%   0.169%   0.000%   0.025%   0.875%   0.000%   0.006%   0.000%   0.000%   0.002%
   13    6.1  1.5  0.5   0.145%   0.000%   0.732%   0.000%   0.000%   0.073%   0.000%   0.009%   0.001%   0.000%
   14    7.1  1.5  0.5   0.047%   0.000%   0.208%   0.000%   0.000%   0.640%   0.000%   0.010%   0.000%   0.000%
   15    1.1  1.5 -0.5   0.263%   0.000%   0.040%   0.000%   0.000%   0.010%   0.000%   0.000%   0.002%   0.000%
   16    2.1  1.5 -0.5   0.001%   0.291%   0.000%   0.014%   0.060%   0.000%   0.001%   0.000%   0.000%   0.003%
   17    3.1  1.5 -0.5   0.001%   0.446%   0.000%   0.022%   0.165%   0.000%   0.000%   0.000%   0.000%   0.006%
   18    4.1  1.5 -0.5   0.244%   0.000%   0.805%   0.000%   0.000%   0.041%   0.000%   0.007%   0.000%   0.000%
   19    5.1  1.5 -0.5   0.169%   0.000%   0.025%   0.000%   0.000%   0.875%   0.000%   0.006%   0.002%   0.000%
   20    6.1  1.5 -0.5   0.000%   0.145%   0.000%   0.732%   0.073%   0.000%   0.009%   0.000%   0.000%   0.001%
   21    7.1  1.5 -0.5   0.000%   0.047%   0.000%   0.208%   0.640%   0.000%   0.010%   0.000%   0.000%   0.000%
   22    1.1  1.5 -1.5   0.001%   0.514%   0.000%   0.591%   0.710%   0.000%   0.000%   0.000%   0.000%   0.007%
   23    2.1  1.5 -1.5   0.444%   0.001%   0.866%   0.000%   0.000%   0.220%   0.000%   0.001%   0.004%   0.000%
   24    3.1  1.5 -1.5   0.585%   0.001%   0.194%   0.000%   0.000%   0.635%   0.000%   0.003%   0.003%   0.000%
   25    4.1  1.5 -1.5   0.001%   0.603%   0.000%   0.146%   0.146%   0.000%   0.000%   0.000%   0.000%   0.002%
   26    5.1  1.5 -1.5   0.000%   0.069%   0.000%   0.018%   0.001%   0.000%   0.000%   0.000%   0.000%   0.002%
   27    6.1  1.5 -1.5   0.013%   0.000%   0.161%   0.000%   0.000%   0.037%   0.000%   0.000%   0.003%   0.000%
   28    7.1  1.5 -1.5   0.001%   0.000%   0.020%   0.000%   0.000%   0.227%   0.000%   0.000%   0.003%   0.000%
   29    1.1  0.5  0.5   0.257%   0.000%  12.032%   0.000%   0.000%   0.183%   0.001%  30.583%   0.002%   0.000%
   30    2.1  0.5  0.5   0.066%  36.966%   0.000%   4.480%   4.478%   0.001%   0.959%   0.000%   0.000%  10.072%
   31    3.1  0.5  0.5   2.248%   0.004%   9.799%   0.000%   0.000%   0.176%   0.000%  19.900%   0.502%   0.000%
   32    4.1  0.5  0.5  47.808%   0.086%   1.238%   0.000%   0.001%   5.771%   0.000%   0.008%  26.404%   0.001%
   33    5.1  0.5  0.5   0.006%   3.368%   0.000%  47.537%   3.960%   0.001%   7.685%   0.000%   0.000%  12.809%
   34    6.1  0.5  0.5   2.783%   0.005%  14.881%   0.000%   0.005%  36.104%   0.000%   9.695%   0.551%   0.000%
   35    7.1  0.5  0.5   0.005%   2.555%   0.000%   6.192%  45.473%   0.006%   2.582%   0.000%   0.001%  21.081%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.567%  16.546%   0.001%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.295%   0.000%   0.000%   4.326%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.628%   0.000%   0.000%   1.348%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   0.000%   0.000%   3.972%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   2.344%   0.000%
   41    1.1  0.5 -0.5   0.000%   0.257%   0.000%  12.032%   0.183%   0.000%  30.583%   0.001%   0.000%   0.002%
   42    2.1  0.5 -0.5  36.966%   0.066%   4.480%   0.000%   0.001%   4.478%   0.000%   0.959%  10.072%   0.000%
   43    3.1  0.5 -0.5   0.004%   2.248%   0.000%   9.799%   0.176%   0.000%  19.900%   0.000%   0.000%   0.502%
   44    4.1  0.5 -0.5   0.086%  47.808%   0.000%   1.238%   5.771%   0.001%   0.008%   0.000%   0.001%  26.404%
   45    5.1  0.5 -0.5   3.368%   0.006%  47.537%   0.000%   0.001%   3.960%   0.000%   7.685%  12.809%   0.000%
   46    6.1  0.5 -0.5   0.005%   2.783%   0.000%  14.881%  36.104%   0.005%   9.695%   0.000%   0.000%   0.551%
   47    7.1  0.5 -0.5   2.555%   0.005%   6.192%   0.000%   0.006%  45.473%   0.000%   2.582%  21.081%   0.001%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.567%   0.000%   0.001%  16.546%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.295%   4.326%   0.000%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  15.628%   1.348%   0.000%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.053%   3.972%   0.000%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   0.000%   2.344%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.002%   0.000%   0.000%   0.155%   0.000%   0.007%   0.000%   0.005%   0.000%   0.580%
    2    2.1  1.5  1.5   0.000%   0.004%   0.152%   0.000%   0.199%   0.000%   0.063%   0.000%   0.253%   0.000%
    3    3.1  1.5  1.5   0.000%   0.003%   0.234%   0.000%   0.160%   0.000%   0.251%   0.000%   0.187%   0.000%
    4    4.1  1.5  1.5   0.006%   0.000%   0.000%   0.103%   0.000%   0.705%   0.000%   0.016%   0.000%   0.135%
    5    5.1  1.5  1.5   0.006%   0.000%   0.000%   0.088%   0.000%   0.717%   0.000%   0.015%   0.000%   0.102%
    6    6.1  1.5  1.5   0.000%   0.003%   1.292%   0.001%   0.285%   0.000%   0.009%   0.000%   0.257%   0.000%
    7    7.1  1.5  1.5   0.000%   0.003%   1.209%   0.001%   0.325%   0.000%   0.005%   0.000%   0.240%   0.000%
    8    1.1  1.5  0.5   0.000%   0.005%   0.230%   0.000%   1.206%   0.000%   0.025%   0.000%   0.099%   0.000%
    9    2.1  1.5  0.5   0.003%   0.000%   0.000%   0.031%   0.000%   1.212%   0.000%   0.029%   0.000%   0.271%
   10    3.1  1.5  0.5   0.001%   0.000%   0.001%   0.726%   0.000%   0.487%   0.000%   0.018%   0.000%   0.468%
   11    4.1  1.5  0.5   0.000%   0.001%   0.701%   0.001%   0.102%   0.000%   0.523%   0.000%   0.030%   0.000%
   12    5.1  1.5  0.5   0.000%   0.000%   0.652%   0.001%   0.151%   0.000%   0.444%   0.000%   0.163%   0.000%
   13    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.032%   0.000%   0.706%   0.000%   0.047%
   14    7.1  1.5  0.5   0.000%   0.000%   0.000%   0.046%   0.000%   0.031%   0.000%   0.722%   0.000%   0.002%
   15    1.1  1.5 -0.5   0.005%   0.000%   0.000%   0.230%   0.000%   1.206%   0.000%   0.025%   0.000%   0.099%
   16    2.1  1.5 -0.5   0.000%   0.003%   0.031%   0.000%   1.212%   0.000%   0.029%   0.000%   0.271%   0.000%
   17    3.1  1.5 -0.5   0.000%   0.001%   0.726%   0.001%   0.487%   0.000%   0.018%   0.000%   0.468%   0.000%
   18    4.1  1.5 -0.5   0.001%   0.000%   0.001%   0.701%   0.000%   0.102%   0.000%   0.523%   0.000%   0.030%
   19    5.1  1.5 -0.5   0.000%   0.000%   0.001%   0.652%   0.000%   0.151%   0.000%   0.444%   0.000%   0.163%
   20    6.1  1.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.032%   0.000%   0.706%   0.000%   0.047%   0.000%
   21    7.1  1.5 -0.5   0.000%   0.000%   0.046%   0.000%   0.031%   0.000%   0.722%   0.000%   0.002%   0.000%
   22    1.1  1.5 -1.5   0.000%   0.002%   0.155%   0.000%   0.007%   0.000%   0.005%   0.000%   0.580%   0.000%
   23    2.1  1.5 -1.5   0.004%   0.000%   0.000%   0.152%   0.000%   0.199%   0.000%   0.063%   0.000%   0.253%
   24    3.1  1.5 -1.5   0.003%   0.000%   0.000%   0.234%   0.000%   0.160%   0.000%   0.251%   0.000%   0.187%
   25    4.1  1.5 -1.5   0.000%   0.006%   0.103%   0.000%   0.705%   0.000%   0.016%   0.000%   0.135%   0.000%
   26    5.1  1.5 -1.5   0.000%   0.006%   0.088%   0.000%   0.717%   0.000%   0.015%   0.000%   0.102%   0.000%
   27    6.1  1.5 -1.5   0.003%   0.000%   0.001%   1.292%   0.000%   0.285%   0.000%   0.009%   0.000%   0.257%
   28    7.1  1.5 -1.5   0.003%   0.000%   0.001%   1.209%   0.000%   0.325%   0.000%   0.005%   0.000%   0.240%
   29    1.1  0.5  0.5   0.013%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%  11.742%   0.000%   0.015%
   30    2.1  0.5  0.5   0.000%  19.591%   0.000%   0.000%   0.000%   0.000%   0.442%   0.000%   3.243%   0.000%
   31    3.1  0.5  0.5  10.212%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   7.263%   0.000%   0.053%
   32    4.1  0.5  0.5   4.202%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.001%   9.566%
   33    5.1  0.5  0.5   0.000%  10.126%   0.000%   0.000%   0.000%   0.000%   2.498%   0.002%   5.714%   0.001%
   34    6.1  0.5  0.5  20.384%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   4.206%   0.000%   0.344%
   35    7.1  0.5  0.5   0.000%   6.952%   0.000%   0.000%   0.000%   0.000%   1.285%   0.001%   8.510%   0.001%
   36    8.1  0.5  0.5   0.022%   0.000%   0.021%  22.717%   0.000%  15.333%   0.001%   1.039%   0.005%  40.094%
   37    9.1  0.5  0.5   0.000%   0.512%  32.980%   0.030%   4.889%   0.000%  31.297%   0.019%   9.889%   0.001%
   38   10.1  0.5  0.5   0.000%   0.151%  36.792%   0.033%   0.914%   0.000%  37.237%   0.023%   4.078%   0.000%
   39   11.1  0.5  0.5   0.000%  13.059%   0.875%   0.001%  36.628%   0.000%   0.049%   0.000%   7.681%   0.001%
   40   12.1  0.5  0.5  14.740%   0.000%   0.001%   0.927%   0.000%  36.617%   0.000%   0.041%   0.001%   7.968%
   41    1.1  0.5 -0.5   0.000%   0.013%   0.000%   0.000%   0.000%   0.000%  11.742%   0.007%   0.015%   0.000%
   42    2.1  0.5 -0.5  19.591%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.442%   0.000%   3.243%
   43    3.1  0.5 -0.5   0.000%  10.212%   0.000%   0.000%   0.000%   0.000%   7.263%   0.004%   0.053%   0.000%
   44    4.1  0.5 -0.5   0.000%   4.202%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   9.566%   0.001%
   45    5.1  0.5 -0.5  10.126%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   2.498%   0.001%   5.714%
   46    6.1  0.5 -0.5   0.000%  20.384%   0.000%   0.000%   0.000%   0.000%   4.206%   0.003%   0.344%   0.000%
   47    7.1  0.5 -0.5   6.952%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.285%   0.001%   8.510%
   48    8.1  0.5 -0.5   0.000%   0.022%  22.717%   0.021%  15.333%   0.000%   1.039%   0.001%  40.094%   0.005%
   49    9.1  0.5 -0.5   0.512%   0.000%   0.030%  32.980%   0.000%   4.889%   0.019%  31.297%   0.001%   9.889%
   50   10.1  0.5 -0.5   0.151%   0.000%   0.033%  36.792%   0.000%   0.914%   0.023%  37.237%   0.000%   4.078%
   51   11.1  0.5 -0.5  13.059%   0.000%   0.001%   0.875%   0.000%  36.628%   0.000%   0.049%   0.001%   7.681%
   52   12.1  0.5 -0.5   0.000%  14.740%   0.927%   0.001%  36.617%   0.000%   0.041%   0.000%   7.968%   0.001%

   Nr   State  S   Sz      51       52

    1    1.1  1.5  1.5   0.000%   0.143%
    2    2.1  1.5  1.5   0.379%   0.000%
    3    3.1  1.5  1.5   0.248%   0.000%
    4    4.1  1.5  1.5   0.000%   0.450%
    5    5.1  1.5  1.5   0.000%   0.486%
    6    6.1  1.5  1.5   0.191%   0.000%
    7    7.1  1.5  1.5   0.219%   0.000%
    8    1.1  1.5  0.5   0.368%   0.000%
    9    2.1  1.5  0.5   0.000%   0.230%
   10    3.1  1.5  0.5   0.000%   0.039%
   11    4.1  1.5  0.5   0.054%   0.000%
   12    5.1  1.5  0.5   0.002%   0.000%
   13    6.1  1.5  0.5   0.000%   0.000%
   14    7.1  1.5  0.5   0.000%   0.021%
   15    1.1  1.5 -0.5   0.000%   0.368%
   16    2.1  1.5 -0.5   0.230%   0.000%
   17    3.1  1.5 -0.5   0.039%   0.000%
   18    4.1  1.5 -0.5   0.000%   0.054%
   19    5.1  1.5 -0.5   0.000%   0.002%
   20    6.1  1.5 -0.5   0.000%   0.000%
   21    7.1  1.5 -0.5   0.021%   0.000%
   22    1.1  1.5 -1.5   0.143%   0.000%
   23    2.1  1.5 -1.5   0.000%   0.379%
   24    3.1  1.5 -1.5   0.000%   0.248%
   25    4.1  1.5 -1.5   0.450%   0.000%
   26    5.1  1.5 -1.5   0.486%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.191%
   28    7.1  1.5 -1.5   0.000%   0.219%
   29    1.1  0.5  0.5   0.000%   0.003%
   30    2.1  0.5  0.5   8.062%   0.000%
   31    3.1  0.5  0.5   0.000%   4.436%
   32    4.1  0.5  0.5   0.000%   2.184%
   33    5.1  0.5  0.5   3.544%   0.000%
   34    6.1  0.5  0.5   0.000%   7.201%
   35    7.1  0.5  0.5   1.965%   0.000%
   36    8.1  0.5  0.5   0.000%   0.359%
   37    9.1  0.5  0.5   0.463%   0.000%
   38   10.1  0.5  0.5   0.499%   0.000%
   39   11.1  0.5  0.5  34.389%   0.000%
   40   12.1  0.5  0.5   0.000%  34.064%
   41    1.1  0.5 -0.5   0.003%   0.000%
   42    2.1  0.5 -0.5   0.000%   8.062%
   43    3.1  0.5 -0.5   4.436%   0.000%
   44    4.1  0.5 -0.5   2.184%   0.000%
   45    5.1  0.5 -0.5   0.000%   3.544%
   46    6.1  0.5 -0.5   7.201%   0.000%
   47    7.1  0.5 -0.5   0.000%   1.965%
   48    8.1  0.5 -0.5   0.359%   0.000%
   49    9.1  0.5 -0.5   0.000%   0.463%
   50   10.1  0.5 -0.5   0.000%   0.499%
   51   11.1  0.5 -0.5   0.000%  34.389%
   52   12.1  0.5 -0.5  34.064%   0.000%


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

              2       6      285.25       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      3375.51   2905.49    434.08     32.21      2.24      1.10
 REAL TIME  *      3600.69 SEC
 DISK USED  *       317.36 MB (local),        9.42 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.977637003026

              CI              CI           MULTI
   -109.92333627   -109.96463572   -109.33364969
 **********************************************************************************************************************************
 Molpro calculation terminated
