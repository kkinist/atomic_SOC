
 Working directory              : /wrk/irikura/molpro.Kjh4dz6oHq/
 Global scratch directory       : /wrk/irikura/molpro.Kjh4dz6oHq/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Kjh4dz6oHq/

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
                                                                                 ! 4F,4P + 2F,2D
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,10;
         weight,7[99],3[1]
     wf,nelec=17,sym=1,spin=1; state,12;
         weight,all,1
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,10;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,12;save,5101.2}
 hlsdiag(11) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.03 sec, 684 directives.
 Default parameters read. Elapsed time= 0.17 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 15-Feb-24          TIME: 12:48:47  
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

     16.777 MB (compressed) written to integral file ( 18.2%)

     Node minimum: 0.262 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     192330.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     192330      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.11 SEC, REAL TIME:     0.14 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      190791.  Node maximum:      197199. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.75      1.41
 REAL TIME  *         2.56 SEC
 DISK USED  *        29.10 MB (local),     1002.23 MB (total)
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 PROGRAM * MULTI (Direct Multiconfiguration SCF)       Authors: P.J. Knowles, H.-J. Werner (1984)
                                                                D.A. Kreplin, P.J. Knowles, H.-J. Werner (2019)

 Number of active  orbitals:       10 (    7    3)
 Number of external orbitals:      87 (   48   39)

 State symmetry 1

 Number of active electrons:  17    Spin symmetry=Quartet   Space symmetry=1
 Number of states:            10
 Number of CSFs:              56   (56 determinants, 120 intermediate states)

 State symmetry 2

 Number of active electrons:  17    Spin symmetry=Doublet   Space symmetry=1
 Number of states:            12
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.379D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.379D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.228D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 3 5 1 4 6 2 5 3 2   6 4 3 5 1 7 9111415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.104D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.13983   0.13983   0.13983   0.13983   0.13983   0.13983   0.13983   0.00141
                                          0.00141   0.00141
 Weight factors for state symmetry  2:    0.00141   0.00141   0.00141   0.00141   0.00141   0.00141   0.00141   0.00141
                                          0.00141   0.00141   0.00141   0.00141
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3785
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.36699886    -109.38062118   -0.01362232    0.19680376 0.00013310 0.00000000  0.13E+00      0.42
   2    2    4    0   -109.38032853    -109.38034217   -0.00001365    0.00587130 0.00001472 0.00000000  0.42E-02      0.70
   3   20   40    0   -109.38034218    -109.38034218   -0.00000000    0.00000675 0.00000010 0.00000000  0.50E-05      2.32

 CONVERGENCE REACHED!  Final gradient:    0.00000023 ( 0.23E-06)
                       Final energy:   -109.38034218
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.381199862560
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262781
 One electron energy                          -193.55937762
 Two electron energy                            84.17817776
 Virial ratio                                    3.66896502
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.381199862372
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262786
 One electron energy                          -193.55937766
 Two electron energy                            84.17817780
 Virial ratio                                    3.66896501
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.381199861713
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262790
 One electron energy                          -193.55937774
 Two electron energy                            84.17817788
 Virial ratio                                    3.66896501
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.381199861501
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262794
 One electron energy                          -193.55937780
 Two electron energy                            84.17817794
 Virial ratio                                    3.66896501
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.381199860595
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262802
 One electron energy                          -193.55937790
 Two electron energy                            84.17817804
 Virial ratio                                    3.66896500
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.381199860431
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262800
 One electron energy                          -193.55937790
 Two electron energy                            84.17817804
 Virial ratio                                    3.66896500
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.381199859910
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98262804
 One electron energy                          -193.55937795
 Two electron energy                            84.17817809
 Virial ratio                                    3.66896500
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327655682522
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98335485
 One electron energy                          -193.54980004
 Two electron energy                            84.22214436
 Virial ratio                                    3.66761118
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327655681390
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98335487
 One electron energy                          -193.54980008
 Two electron energy                            84.22214440
 Virial ratio                                    3.66761118
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327655681012
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98335499
 One electron energy                          -193.54980022
 Two electron energy                            84.22214454
 Virial ratio                                    3.66761117
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.351363055998
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541512
 One electron energy                          -193.52973430
 Two electron energy                            84.17837124
 Virial ratio                                    3.66935811
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.351363055497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541516
 One electron energy                          -193.52973434
 Two electron energy                            84.17837129
 Virial ratio                                    3.66935811
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.351363054067
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541520
 One electron energy                          -193.52973442
 Two electron energy                            84.17837136
 Virial ratio                                    3.66935810
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.351363053336
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541525
 One electron energy                          -193.52973448
 Two electron energy                            84.17837143
 Virial ratio                                    3.66935810
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.351363051538
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541533
 One electron energy                          -193.52973459
 Two electron energy                            84.17837154
 Virial ratio                                    3.66935810
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.351363051354
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541530
 One electron energy                          -193.52973458
 Two electron energy                            84.17837153
 Virial ratio                                    3.66935810
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.351363050408
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96541534
 One electron energy                          -193.52973463
 Two electron energy                            84.17837158
 Virial ratio                                    3.66935809
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333650736221
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06273554
 One electron energy                          -193.68995013
 Two electron energy                            84.35629940
 Virial ratio                                    3.66260027
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333650735763
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06273563
 One electron energy                          -193.68995027
 Two electron energy                            84.35629953
 Virial ratio                                    3.66260026
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333650735704
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06273561
 One electron energy                          -193.68995025
 Two electron energy                            84.35629952
 Virial ratio                                    3.66260027
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333650735648
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06273564
 One electron energy                          -193.68995028
 Two electron energy                            84.35629954
 Virial ratio                                    3.66260026
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333650735174
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.06273559
 One electron energy                          -193.68995020
 Two electron energy                            84.35629946
 Virial ratio                                    3.66260027
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     3.998968592427
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     5.765411052715
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     7.383132930693
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     4.234399353781
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     2.616781702613
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     0.001031850893
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.000000030076
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.999999999599
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.999999974621
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     4.000000000018
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.999048401984
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     4.817549104270
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     6.693709885883
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     5.182430763575
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     3.305911904171
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     0.000950422146
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     0.007019501021
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000257758
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.992952821832
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     3.999999842871
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.000000000382
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     4.124883169422
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     3.805031505422
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.470042831305
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     0.195010097049
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     5.530062523012
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     5.875090962665
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     1.000000000000
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.000000000511
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     1.000000000000
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.999999999992
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     4.119935772816
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     3.957282528621
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     5.272329758824
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     0.042719898587
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     4.728086532158
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     5.880139856973
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.141478345107
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     3.999998978866
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     0.858250746513
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000156432
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     1.000000547673
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     3.876148238151
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     2.429557441862
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     0.146824238002
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     7.570590549171
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     3.853155774375
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     6.123877186442
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999969924
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999891
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.000000025379
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.999999999990
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     3.881015825200
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     3.225168367109
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     0.033960355293
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     6.774849337838
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     3.966001563671
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     6.118909720882
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     2.851502153872
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000763376
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.148796431655
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000000697
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.999999451945
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 3 6 4 5 1 1 3 2   4 5 6 1 3 2 4 5 6 3   4 5 2 6 113101415 9  12 8 711 5 4 3 2 6 1
                                       13101415 912 8 711 5   4 3 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 1 2 3 1 2 3 1   2 3 7 9 8 6 4 510 1   2 3 7 9 4 810 6 5 1   2 3 9 710 4 8 6 5 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.71990     1  1  s    1.00198
    2.1     1.60004    -0.30305     1  1  d0   1.00365
    3.1     1.60004    -0.30305     1  1  d2-  1.00365
    4.1     1.60004    -0.30305     1  1  d1-  1.00365
    5.1     1.60004    -0.30305     1  1  d1+  1.00365
    6.1     1.60004    -0.30305     1  1  d2+  1.00365
    7.1     0.99984    -0.09900     1  2  s    0.95061
    1.2     1.99999    -2.34987     1  1  pz   1.00016
    2.2     1.99999    -2.34987     1  1  px   1.00016
    3.2     1.99999    -2.34987     1  1  py   1.00016
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a222aa 222      1.00000000      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 2aa222a 222      0.00000000     -0.00000013     -0.00000014      0.19158826     -0.00001290      0.98147539     -0.00000001
 22a2a2a 222      0.00000000      0.01436257     -0.00001997     -0.00000002     -0.00000942      0.00000001      0.89431186
 22a22aa 222     -0.00000000     -0.00000031      0.00000594     -0.43892913     -0.00000113      0.08568086     -0.00000001
 222aa2a 222      0.00000000      0.00000062     -0.00001188      0.87785828      0.00000226     -0.17136175      0.00000001
 22aa22a 222     -0.00000000     -0.00001791     -0.19746822     -0.00000259      0.87235675      0.00001194      0.00000507
 222a2aa 222     -0.00000000      0.86232310     -0.00004555     -0.00000056      0.00000877      0.00000022     -0.23748448
 2222aaa 222     -0.00000000      0.00004374      0.79528873      0.00001038      0.40928697      0.00000347      0.00002137
 2a22a2a 222      0.00000000     -0.00003559     -0.57316850     -0.00000749      0.26735346      0.00000489     -0.00000941
 2a2a22a 222     -0.00000000      0.50615471     -0.00003783     -0.00000034     -0.00000038      0.00000013      0.37921950
 
 Energy:       -109.38119986   -109.38119986   -109.38119986   -109.38119986   -109.38119986   -109.38119986   -109.38119986

 State:                8               9              10
 2a222aa 222     -0.00000000      0.00000000      0.00000000
 2aa222a 222      0.00000000      0.00000000      0.00000001
 22a2a2a 222     -0.44688855      0.00000019      0.00007750
 22a22aa 222      0.00015500      0.00000934      0.89377706
 222aa2a 222      0.00007750      0.00000467      0.44688852
 22aa22a 222     -0.00000018     -0.44688854      0.00000467
 222a2aa 222     -0.44688853      0.00000019      0.00007750
 2222aaa 222      0.00000018      0.44688854     -0.00000467
 2a22a2a 222      0.00000032      0.77403364     -0.00000809
 2a2a22a 222      0.77403363     -0.00000032     -0.00013424
 
 Energy:       -109.32765568   -109.32765568   -109.32765568
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a222ab 222      0.81408988     -0.00000095      0.00000156     -0.00000002     -0.00000076     -0.00000032      0.00000027
 2aa222b 222      0.00000032     -0.00000400      0.00003863      0.07501160     -0.00022665      0.81062663     -0.00007065
 22a2a2b 222     -0.00000022      0.01123093     -0.00000075     -0.00001142      0.00000875      0.00006457      0.72805749
 222aa2b 222     -0.00000001      0.00000257      0.00000580      0.72504654      0.00001847     -0.06709242      0.00001729
 22aa22b 222      0.00000082     -0.00000736     -0.07524715      0.00000121      0.72424560      0.00020597     -0.00000869
 222a2ab 222      0.00000088      0.70213091     -0.00006549      0.00000087     -0.00000198     -0.00001342     -0.19288870
 2222aab 222     -0.00000107      0.00006345      0.68243602     -0.00000830      0.25391916      0.00003924     -0.00000333
 2ab222a 222     -0.00000016      0.00000200     -0.00001932     -0.03750580      0.00011333     -0.40531328      0.00003532
 2ba222a 222     -0.00000016      0.00000200     -0.00001932     -0.03750580      0.00011333     -0.40531335      0.00003532
 222022a 222      0.00000001      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222202a 222     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 222b2aa 222     -0.00000044     -0.35106545      0.00003274     -0.00000043      0.00000099      0.00000671      0.09644434
 22b2a2a 222      0.00000011     -0.00561547      0.00000037      0.00000571     -0.00000438     -0.00003228     -0.36402873
 22a2b2a 222      0.00000011     -0.00561546      0.00000037      0.00000571     -0.00000438     -0.00003228     -0.36402876
 222a2ba 222     -0.00000044     -0.35106546      0.00003274     -0.00000043      0.00000099      0.00000671      0.09644435
 222ab2a 222      0.00000001     -0.00000129     -0.00000290     -0.36252326     -0.00000924      0.03354620     -0.00000864
 222ba2a 222      0.00000001     -0.00000129     -0.00000290     -0.36252328     -0.00000924      0.03354622     -0.00000864
 2222baa 222      0.00000053     -0.00003172     -0.34121800      0.00000415     -0.12695957     -0.00001962      0.00000167
 22ba22a 222     -0.00000041      0.00000368      0.03762358     -0.00000060     -0.36212277     -0.00010299      0.00000434
 22ab22a 222     -0.00000041      0.00000368      0.03762357     -0.00000060     -0.36212282     -0.00010299      0.00000434
 2222aba 222      0.00000053     -0.00003172     -0.34121802      0.00000415     -0.12695959     -0.00001962      0.00000167
 2a22a2b 222      0.00000109     -0.00004088     -0.43744860      0.00000549      0.27154311      0.00009626     -0.00000309
 202222a 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2b222aa 222     -0.40704494      0.00000047     -0.00000078      0.00000001      0.00000038      0.00000016     -0.00000013
 222220a 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 220222a 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 2a222ba 222     -0.40704494      0.00000047     -0.00000078      0.00000001      0.00000038      0.00000016     -0.00000013
 2a2a22b 222      0.00000038      0.41185966     -0.00003824     -0.00000609      0.00000391      0.00002953      0.30897990
 22a22ab 222      0.00000001     -0.00000129     -0.00000290     -0.36252325     -0.00000924      0.03354620     -0.00000864
 2b2a22a 222     -0.00000019     -0.20592983      0.00001912      0.00000305     -0.00000196     -0.00001476     -0.15448995
 2a2b22a 222     -0.00000019     -0.20592983      0.00001912      0.00000305     -0.00000196     -0.00001476     -0.15448995
 2b22a2a 222     -0.00000054      0.00002044      0.21872431     -0.00000274     -0.13577155     -0.00004813      0.00000155
 2a22b2a 222     -0.00000054      0.00002044      0.21872429     -0.00000274     -0.13577156     -0.00004813      0.00000155
 222a220 222     -0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000001
 2222a20 222     -0.00000000      0.00000000      0.00000002     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2220 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000002      0.00000000
 2a22220 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 22222a0 222     -0.00000002     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22a22ba 222     -0.00000000      0.00000064      0.00000145      0.18126163      0.00000462     -0.01677310      0.00000432
 22b22aa 222     -0.00000000      0.00000064      0.00000145      0.18126162      0.00000462     -0.01677310      0.00000432
 20a2222 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001      0.00000000
 22202a2 222     -0.02210499      0.00000003     -0.00000004      0.00000000      0.00000002      0.00000001     -0.00000001
 2a02222 222     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 20222a2 222     -0.00000001      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2a22202 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 22220a2 222     -0.02210499      0.00000003     -0.00000004      0.00000000      0.00000002      0.00000001     -0.00000001
 
 Energy:       -109.35136306   -109.35136306   -109.35136305   -109.35136305   -109.35136305   -109.35136305   -109.35136305

 State:                8               9              10              11              12
 2a222ab 222     -0.00000001     -0.00000000      0.00000001     -0.00000000      0.00000000
 2aa222b 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000003
 22a2a2b 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 222aa2b 222      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000001
 22aa22b 222     -0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 222a2ab 222     -0.00000000      0.00000000     -0.00000000      0.00000002      0.00000000
 2222aab 222     -0.00000000      0.00000004     -0.00000000     -0.00000000      0.00000000
 2ab222a 222      0.00000062     -0.00026056     -0.00000382      0.00000151      0.51618211
 2ba222a 222     -0.00000062      0.00026056      0.00000382     -0.00000151     -0.51618209
 222022a 222      0.51572905     -0.00000289     -0.02162351      0.00000018     -0.00000078
 222202a 222     -0.23913803     -0.00001716      0.45744621     -0.00001004      0.00000366
 222b2aa 222     -0.00000026     -0.00012971     -0.00000995     -0.44702686      0.00000124
 22b2a2a 222      0.00000026      0.00012971      0.00000995      0.44702684     -0.00000124
 22a2b2a 222     -0.00000026     -0.00012971     -0.00000995     -0.44702684      0.00000124
 222a2ba 222      0.00000026      0.00012971      0.00000995      0.44702684     -0.00000124
 222ab2a 222     -0.00000053      0.00022565      0.00000331     -0.00000131     -0.44702682
 222ba2a 222      0.00000053     -0.00022565     -0.00000331      0.00000131      0.44702681
 2222baa 222     -0.00000328     -0.44702681     -0.00001848      0.00012971     -0.00022565
 22ba22a 222     -0.00000328     -0.44702680     -0.00001848      0.00012971     -0.00022565
 22ab22a 222      0.00000328      0.44702679      0.00001848     -0.00012971      0.00022565
 2222aba 222      0.00000328      0.44702677      0.00001848     -0.00012971      0.00022565
 2a22a2b 222     -0.00000000      0.00000002      0.00000000     -0.00000000      0.00000000
 202222a 222      0.27659104     -0.00002005      0.43582271     -0.00000986      0.00000288
 2b222aa 222      0.43582271      0.00000824     -0.27659103      0.00000590     -0.00000256
 222220a 222     -0.27659102      0.00002005     -0.43582270      0.00000986     -0.00000288
 220222a 222     -0.27659103      0.00002005     -0.43582270      0.00000986     -0.00000288
 2a222ba 222     -0.43582270     -0.00000824      0.27659103     -0.00000590      0.00000256
 2a2a22b 222     -0.00000000     -0.00000000      0.00000000     -0.00000002     -0.00000000
 22a22ab 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001
 2b2a22a 222      0.00000015      0.00007489      0.00000574      0.25809109     -0.00000072
 2a2b22a 222     -0.00000015     -0.00007489     -0.00000574     -0.25809107      0.00000072
 2b22a2a 222     -0.00000189     -0.25809106     -0.00001067      0.00007489     -0.00013028
 2a22b2a 222      0.00000189      0.25809104      0.00001067     -0.00007489      0.00013028
 222a220 222      0.00000013      0.00006355      0.00000487      0.21902033     -0.00000061
 2222a20 222     -0.00000161     -0.21902029     -0.00000905      0.00006355     -0.00011056
 22a2220 222      0.00000026     -0.00011056     -0.00000162      0.00000064      0.21902026
 2a22220 222      0.11735985     -0.00000851      0.18492317     -0.00000418      0.00000122
 22222a0 222     -0.18492314     -0.00000350      0.11735984     -0.00000250      0.00000109
 22a22ba 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001
 22b22aa 222      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 20a2222 222     -0.00000009      0.00003717      0.00000054     -0.00000022     -0.07364553
 22202a2 222      0.06416359     -0.00000079      0.00783849     -0.00000021     -0.00000002
 2a02222 222     -0.03946223      0.00000286     -0.06218038      0.00000141     -0.00000041
 20222a2 222      0.06218037      0.00000118     -0.03946222      0.00000084     -0.00000037
 2a22202 222     -0.03946221      0.00000286     -0.06218036      0.00000141     -0.00000041
 22220a2 222      0.02022514      0.00000239     -0.06139506      0.00000135     -0.00000048
 
 Energy:       -109.33365074   -109.33365074   -109.33365074   -109.33365074   -109.33365074
 


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
 CPU TIMES  *         4.20      2.46      1.41
 REAL TIME  *         5.25 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.42 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3811999   12.0
    -109.3276557    2.0
    -109.3276557    2.0
    -109.3276557    2.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3513631   12.0
    -109.3336507    6.0
    -109.3336507    6.0
    -109.3336507    6.0
    -109.3336507    6.0
    -109.3336507    6.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 10  Roots:   1   2   3   4   5   6   7   8   9  10
 Number of reference states: 10  Roots:   1   2   3   4   5   6   7   8   9  10

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
     2      -109.38119986
     3      -109.38119986
     4      -109.38119986
     5      -109.38119986
     6      -109.38119986
     7      -109.38119986
     8      -109.32765568
     9      -109.32765568
    10      -109.32765568

 Number of blocks in overlap matrix:    70   Smallest eigenvalue:  0.24D-03
 Number of N-2 electron functions:     908
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1719888
 Total number of contracted configurations:      1772000
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  508779 words, CPU-Time:      0.05 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  460543 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67513020  0.24D-01  0.10D+00     0.32
    1     2     2     1.00000000     0.00000000  -109.38119986     0.00000000    -0.67387040  0.24D-01  0.10D+00     0.32
    1     3     3     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67283396  0.24D-01  0.10D+00     0.32
    1     4     4     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67154619  0.24D-01  0.99D-01     0.32
    1     5     5     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67271765  0.24D-01  0.10D+00     0.32
    1     6     6     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67525543  0.24D-01  0.10D+00     0.32
    1     7     7     1.00000000     0.00000000  -109.38119986    -0.00000000    -0.67211298  0.24D-01  0.10D+00     0.32
    1     8     8     1.00000000     0.00000000  -109.32765568    -0.00000000    -0.68265177  0.29D-01  0.10D+00     0.32
    1     9     9     1.00000000     0.00000000  -109.32765568     0.00000000    -0.68330123  0.29D-01  0.10D+00     0.32
    1    10    10     1.00000000     0.00000000  -109.32765568    -0.00000000    -0.68417717  0.29D-01  0.10D+00     0.32
    2     1     1     1.08694601    -0.56281224  -109.94401210    -0.56281224    -0.01804537  0.11D-02  0.25D-02    14.79
    2     2     2     1.08692044    -0.56275520  -109.94395506    -0.56275520    -0.01807156  0.11D-02  0.25D-02    14.79
    2     3     3     1.08679186    -0.56245046  -109.94365032    -0.56245046    -0.01813091  0.11D-02  0.25D-02    14.79
    2     4     4     1.08673302    -0.56219378  -109.94339364    -0.56219378    -0.01821821  0.11D-02  0.25D-02    14.79
    2     5     5     1.08665610    -0.56201672  -109.94321658    -0.56201672    -0.01825712  0.11D-02  0.25D-02    14.79
    2     6     6     1.08662776    -0.56192122  -109.94312108    -0.56192122    -0.01828169  0.11D-02  0.25D-02    14.79
    2     7     7     1.08657106    -0.56174632  -109.94294618    -0.56174632    -0.01833165  0.11D-02  0.25D-02    14.79
    2     8     8     1.09189502    -0.57237939  -109.90003507    -0.57237939    -0.01776109  0.12D-02  0.26D-02    14.79
    2     9     9     1.09182924    -0.57214579  -109.89980147    -0.57214579    -0.01784434  0.12D-02  0.26D-02    14.79
    2    10    10     1.09178118    -0.57195063  -109.89960631    -0.57195063    -0.01791709  0.12D-02  0.26D-02    14.79
    3     1     1     1.08466435    -0.58185431  -109.96305417    -0.01904208    -0.00119166  0.32D-04  0.20D-03    28.27
    3     2     2     1.08464623    -0.58183678  -109.96303664    -0.01908158    -0.00120081  0.33D-04  0.20D-03    28.27
    3     3     3     1.08450790    -0.58172466  -109.96292452    -0.01927420    -0.00124788  0.34D-04  0.20D-03    28.27
    3     4     4     1.08443483    -0.58165456  -109.96285443    -0.01946078    -0.00128310  0.36D-04  0.21D-03    28.27
    3     5     5     1.08436226    -0.58157277  -109.96277263    -0.01955605    -0.00131251  0.36D-04  0.21D-03    28.27
    3     6     6     1.08432928    -0.58154910  -109.96274896    -0.01962788    -0.00132517  0.37D-04  0.21D-03    28.27
    3     7     7     1.08427159    -0.58149240  -109.96269226    -0.01974609    -0.00135165  0.38D-04  0.21D-03    28.27
    3     8     8     1.08863878    -0.59143125  -109.91908694    -0.01905187    -0.00123840  0.46D-04  0.20D-03    28.27
    3     9     9     1.08857324    -0.59137136  -109.91902704    -0.01922556    -0.00127083  0.48D-04  0.21D-03    28.27
    3    10    10     1.08852204    -0.59131843  -109.91897411    -0.01936780    -0.00129859  0.49D-04  0.21D-03    28.27
    4     1     1     1.08775057    -0.58357062  -109.96477049    -0.00171631    -0.00021088  0.74D-05  0.34D-04    41.78
    4     2     2     1.08773429    -0.58356709  -109.96476695    -0.00173031    -0.00021295  0.75D-05  0.35D-04    41.78
    4     3     3     1.08771041    -0.58354588  -109.96474574    -0.00182122    -0.00021983  0.78D-05  0.35D-04    41.78
    4     4     4     1.08770916    -0.58354054  -109.96474040    -0.00188598    -0.00022147  0.81D-05  0.35D-04    41.78
    4     5     5     1.08767354    -0.58351321  -109.96471307    -0.00194044    -0.00023300  0.83D-05  0.36D-04    41.78
    4     6     6     1.08767109    -0.58351277  -109.96471263    -0.00196367    -0.00023286  0.86D-05  0.36D-04    41.78
    4     7     7     1.08765663    -0.58350474  -109.96470460    -0.00201234    -0.00023618  0.87D-05  0.36D-04    41.78
    4     8     8     1.09173563    -0.59326996  -109.92092565    -0.00183871    -0.00022098  0.11D-04  0.35D-04    41.78
    4     9     9     1.09171889    -0.59326324  -109.92091892    -0.00189188    -0.00022443  0.12D-04  0.35D-04    41.78
    4    10    10     1.09171368    -0.59325936  -109.92091504    -0.00194093    -0.00022528  0.12D-04  0.35D-04    41.78
    5     1     1     1.08893631    -0.58384223  -109.96504210    -0.00027161    -0.00004633  0.79D-06  0.86D-05    55.26
    5     2     2     1.08893448    -0.58384173  -109.96504160    -0.00027465    -0.00004653  0.81D-06  0.86D-05    55.26
    5     3     3     1.08892024    -0.58383427  -109.96503413    -0.00028838    -0.00004868  0.86D-06  0.88D-05    55.26
    5     4     4     1.08891595    -0.58383374  -109.96503360    -0.00029320    -0.00004851  0.90D-06  0.86D-05    55.26
    5     5     5     1.08889070    -0.58382139  -109.96502125    -0.00030818    -0.00005417  0.93D-06  0.96D-05    55.26
    5     6     6     1.08888728    -0.58382136  -109.96502122    -0.00030860    -0.00005421  0.96D-06  0.96D-05    55.26
    5     7     7     1.08887833    -0.58381924  -109.96501910    -0.00031449    -0.00005500  0.10D-05  0.97D-05    55.26
    5     8     8     1.09295041    -0.59356417  -109.92121985    -0.00029421    -0.00005354  0.19D-05  0.98D-05    55.26
    5     9     9     1.09293932    -0.59356257  -109.92121826    -0.00029934    -0.00005368  0.24D-05  0.96D-05    55.26
    5    10    10     1.09293880    -0.59356212  -109.92121780    -0.00030276    -0.00005467  0.22D-05  0.10D-04    55.26
    6     1     1     1.08893684    -0.58390539  -109.96510525    -0.00006316    -0.00001398  0.64D-06  0.23D-05    68.72
    6     2     2     1.08894121    -0.58390530  -109.96510516    -0.00006356    -0.00001393  0.63D-06  0.23D-05    68.72
    6     3     3     1.08890319    -0.58390403  -109.96510389    -0.00006976    -0.00001367  0.63D-06  0.21D-05    68.72
    6     4     4     1.08891158    -0.58390338  -109.96510324    -0.00006964    -0.00001427  0.67D-06  0.22D-05    68.72
    6     5     5     1.08887816    -0.58389814  -109.96509800    -0.00007676    -0.00001689  0.72D-06  0.26D-05    68.72
    6     6     6     1.08887976    -0.58389811  -109.96509797    -0.00007675    -0.00001691  0.73D-06  0.26D-05    68.72
    6     7     7     1.08886790    -0.58389786  -109.96509772    -0.00007862    -0.00001690  0.72D-06  0.26D-05    68.72
    6     8     8     1.09290015    -0.59363845  -109.92129413    -0.00007428    -0.00001736  0.82D-06  0.28D-05    68.72
    6     9     9     1.09291911    -0.59363789  -109.92129357    -0.00007532    -0.00001761  0.85D-06  0.28D-05    68.72
    6    10    10     1.09290950    -0.59363727  -109.92129295    -0.00007515    -0.00001819  0.88D-06  0.29D-05    68.72
    7     1     1     1.08904819    -0.58392174  -109.96512160    -0.00001635    -0.00000440  0.12D-06  0.79D-06    82.28
    7     2     2     1.08905090    -0.58392166  -109.96512152    -0.00001637    -0.00000437  0.13D-06  0.79D-06    82.28
    7     3     3     1.08906113    -0.58392152  -109.96512138    -0.00001749    -0.00000432  0.20D-06  0.69D-06    82.28
    7     4     4     1.08905179    -0.58392111  -109.96512097    -0.00001774    -0.00000457  0.18D-06  0.77D-06    82.28
    7     5     5     1.08902334    -0.58391878  -109.96511864    -0.00002063    -0.00000564  0.21D-06  0.95D-06    82.28
    7     6     6     1.08902299    -0.58391877  -109.96511863    -0.00002066    -0.00000566  0.20D-06  0.96D-06    82.28
    7     7     7     1.08902509    -0.58391874  -109.96511860    -0.00002088    -0.00000571  0.22D-06  0.96D-06    82.28
    7     8     8     1.09307442    -0.59365890  -109.92131458    -0.00002045    -0.00000572  0.32D-06  0.10D-05    82.28
    7     9     9     1.09307242    -0.59365876  -109.92131444    -0.00002087    -0.00000568  0.32D-06  0.98D-06    82.28
    7    10    10     1.09306301    -0.59365846  -109.92131415    -0.00002120    -0.00000585  0.34D-06  0.10D-05    82.28
    8     1     1     1.08917008    -0.58392697  -109.96512683    -0.00000523    -0.00000138  0.34D-07  0.26D-06    95.77
    8     2     2     1.08917160    -0.58392690  -109.96512676    -0.00000524    -0.00000140  0.33D-07  0.26D-06    95.77
    8     3     3     1.08917585    -0.58392683  -109.96512670    -0.00000532    -0.00000142  0.25D-07  0.26D-06    95.77
    8     4     4     1.08917252    -0.58392670  -109.96512656    -0.00000559    -0.00000149  0.30D-07  0.27D-06    95.77
    8     5     5     1.08916336    -0.58392576  -109.96512562    -0.00000698    -0.00000190  0.38D-07  0.33D-06    95.77
    8     6     6     1.08916208    -0.58392574  -109.96512560    -0.00000697    -0.00000191  0.38D-07  0.33D-06    95.77
    8     7     7     1.08916059    -0.58392567  -109.96512553    -0.00000693    -0.00000198  0.37D-07  0.35D-06    95.77
    8     8     8     1.09323017    -0.59366598  -109.92132167    -0.00000708    -0.00000194  0.10D-06  0.34D-06    95.77
    8     9     9     1.09322872    -0.59366596  -109.92132164    -0.00000720    -0.00000197  0.90D-07  0.35D-06    95.77
    8    10    10     1.09322759    -0.59366588  -109.92132156    -0.00000741    -0.00000200  0.11D-06  0.35D-06    95.77
    9     1     1     1.08919238    -0.58392868  -109.96512854    -0.00000171    -0.00000048  0.19D-07  0.86D-07   109.27
    9     2     2     1.08919353    -0.58392863  -109.96512849    -0.00000173    -0.00000050  0.19D-07  0.89D-07   109.27
    9     3     3     1.08918849    -0.58392861  -109.96512847    -0.00000178    -0.00000049  0.23D-07  0.81D-07   109.27
    9     4     4     1.08918817    -0.58392856  -109.96512842    -0.00000186    -0.00000052  0.23D-07  0.88D-07   109.27
    9     5     5     1.08917870    -0.58392819  -109.96512805    -0.00000243    -0.00000070  0.28D-07  0.12D-06   109.27
    9     6     6     1.08917883    -0.58392818  -109.96512804    -0.00000244    -0.00000071  0.29D-07  0.12D-06   109.27
    9     7     7     1.08917665    -0.58392814  -109.96512800    -0.00000247    -0.00000072  0.31D-07  0.12D-06   109.27
    9     8     8     1.09322818    -0.59366848  -109.92132416    -0.00000250    -0.00000076  0.44D-07  0.13D-06   109.27
    9     9     9     1.09323149    -0.59366843  -109.92132412    -0.00000247    -0.00000079  0.33D-07  0.14D-06   109.27
    9    10    10     1.09322942    -0.59366842  -109.92132410    -0.00000254    -0.00000081  0.36D-07  0.14D-06   109.27
   10     1     1     1.08920461    -0.58392923  -109.96512909    -0.00000055    -0.00000018  0.23D-08  0.36D-07   122.69
   10     2     2     1.08920502    -0.58392921  -109.96512908    -0.00000059    -0.00000017  0.59D-08  0.29D-07   122.69
   10     3     3     1.08920498    -0.58392920  -109.96512907    -0.00000059    -0.00000019  0.26D-08  0.37D-07   122.69
   10     4     4     1.08920322    -0.58392919  -109.96512905    -0.00000063    -0.00000019  0.49D-08  0.35D-07   122.69
   10     5     5     1.08919495    -0.58392902  -109.96512888    -0.00000083    -0.00000028  0.49D-08  0.52D-07   122.69
   10     6     6     1.08919491    -0.58392902  -109.96512888    -0.00000084    -0.00000028  0.48D-08  0.52D-07   122.69
   10     7     7     1.08919456    -0.58392901  -109.96512887    -0.00000087    -0.00000028  0.73D-08  0.50D-07   122.69
   10     8     8     1.09324932    -0.59366934  -109.92132502    -0.00000086    -0.00000030  0.66D-08  0.59D-07   122.69
   10     9     9     1.09324852    -0.59366932  -109.92132500    -0.00000088    -0.00000031  0.79D-08  0.60D-07   122.69
   10    10    10     1.09324642    -0.59366930  -109.92132499    -0.00000088    -0.00000032  0.72D-08  0.63D-07   122.69
   11     1     1     1.08922084    -0.58392943  -109.96512929    -0.00000020    -0.00000007  0.17D-08  0.14D-07   136.18
   11     2     2     1.08922324    -0.58392942  -109.96512929    -0.00000021    -0.00000007  0.13D-08  0.12D-07   136.18
   11     3     3     1.08922145    -0.58392941  -109.96512927    -0.00000021    -0.00000007  0.17D-08  0.14D-07   136.18
   11     4     4     1.08922160    -0.58392941  -109.96512927    -0.00000022    -0.00000007  0.17D-08  0.14D-07   136.18
   11     5     5     1.08921711    -0.58392934  -109.96512920    -0.00000032    -0.00000011  0.26D-08  0.20D-07   136.18
   11     6     6     1.08921681    -0.58392933  -109.96512919    -0.00000032    -0.00000011  0.26D-08  0.20D-07   136.18
   11     7     7     1.08921623    -0.58392933  -109.96512919    -0.00000032    -0.00000012  0.22D-08  0.22D-07   136.18
   11     8     8     1.09327597    -0.59366967  -109.92132536    -0.00000034    -0.00000012  0.75D-08  0.22D-07   136.18
   11     9     9     1.09327561    -0.59366967  -109.92132535    -0.00000035    -0.00000013  0.67D-08  0.23D-07   136.18
   11    10    10     1.09327509    -0.59366966  -109.92132534    -0.00000036    -0.00000013  0.85D-08  0.22D-07   136.18
   12     1     1     1.08922925    -0.58392950  -109.96512936    -0.00000008    -0.00000003  0.57D-09  0.51D-08   149.67
   12     2     2     1.08922929    -0.58392950  -109.96512936    -0.00000008    -0.00000003  0.76D-09  0.47D-08   149.67
   12     3     3     1.08922870    -0.58392950  -109.96512936    -0.00000008    -0.00000003  0.76D-09  0.54D-08   149.67
   12     4     4     1.08922956    -0.58392950  -109.96512936    -0.00000008    -0.00000003  0.58D-09  0.57D-08   149.67
   12     5     5     1.08922558    -0.58392946  -109.96512932    -0.00000013    -0.00000004  0.11D-08  0.82D-08   149.67
   12     6     6     1.08922558    -0.58392946  -109.96512932    -0.00000013    -0.00000004  0.11D-08  0.85D-08   149.67
   12     7     7     1.08922496    -0.58392946  -109.96512932    -0.00000013    -0.00000005  0.12D-08  0.87D-08   149.67
   12     8     8     1.09328144    -0.59366981  -109.92132550    -0.00000014    -0.00000005  0.18D-08  0.96D-08   149.67
   12     9     9     1.09328205    -0.59366981  -109.92132549    -0.00000014    -0.00000005  0.13D-08  0.10D-07   149.67
   12    10    10     1.09328140    -0.59366981  -109.92132549    -0.00000015    -0.00000006  0.14D-08  0.10D-07   149.67
   13     1     1     1.08922925    -0.58392950  -109.96512936     0.00000000    -0.00000003  0.57D-09  0.51D-08   154.54
   13     2     2     1.08922930    -0.58392950  -109.96512936    -0.00000000    -0.00000003  0.76D-09  0.47D-08   154.54
   13     3     3     1.08922898    -0.58392950  -109.96512936    -0.00000000    -0.00000003  0.80D-09  0.52D-08   154.54
   13     4     4     1.08922960    -0.58392950  -109.96512936    -0.00000000    -0.00000003  0.58D-09  0.56D-08   154.54
   13     5     5     1.08922558    -0.58392946  -109.96512932    -0.00000000    -0.00000004  0.11D-08  0.83D-08   154.54
   13     6     6     1.08922561    -0.58392946  -109.96512932    -0.00000000    -0.00000004  0.11D-08  0.84D-08   154.54
   13     7     7     1.08922499    -0.58392946  -109.96512932    -0.00000000    -0.00000005  0.13D-08  0.86D-08   154.54
   13     8     8     1.09329666    -0.59366990  -109.92132558    -0.00000009    -0.00000001  0.67D-09  0.20D-08   154.54
   13     9     9     1.09329644    -0.59366990  -109.92132558    -0.00000009    -0.00000001  0.78D-09  0.22D-08   154.54
   13    10    10     1.09329585    -0.59366990  -109.92132558    -0.00000009    -0.00000001  0.77D-09  0.25D-08   154.54


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.3%
 P   0.4%  15.5%  41.8%

 Initialization:   0.1%
 Other:           41.6%

 Total CPU:      154.5 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222//222           0.9581650  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000
 2//222/222          -0.0000000   0.0000000  -0.0000000   0.9458467  -0.0000000  -0.0000000  -0.1531464  -0.0000000   0.0000000
                      0.0000000
 22/22//222          -0.0000000   0.0000000   0.0000000  -0.0684893  -0.0000000  -0.0000000  -0.4229957   0.8550646  -0.0000000
                     -0.0000000
 22//22/222          -0.0000000   0.0645876  -0.0000000  -0.0000000  -0.0000000   0.8545729   0.0000000  -0.0000000  -0.4275326
                     -0.0000000
 222//2/222           0.0000000   0.0000000  -0.0000000   0.1369782   0.0000000  -0.0000000   0.8459932   0.4275329  -0.0000000
                      0.0000000
 2222///222           0.0000000   0.8435823  -0.0000000   0.0000000  -0.0000000   0.1511065  -0.0000000   0.0000000   0.4275325
                     -0.0000000
 22/2/2/222           0.0000000   0.0000000   0.1847380   0.0000000   0.8368621  -0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.4275327
 222/2//222           0.0000000   0.0000000   0.7641023   0.0000000  -0.3880880  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.4275325
 2/2/22/222          -0.0000000   0.0000000   0.5478137   0.0000000   0.2591000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.7405081
 2/22/2/222           0.0000000  -0.4497525  -0.0000000   0.0000000   0.0000000   0.4061467   0.0000000  -0.0000000   0.7405079
                      0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958165    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.000000    0.915920   -0.000000    0.281374    0.000000    0.000000   -0.000000    0.000000    0.000000
 3           0.000000    0.938836    0.000000   -0.000000   -0.000000    0.000000    0.191489    0.000000    0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.331583   -0.000000    0.898962    0.000000    0.000000    0.000000   -0.000000
 5          -0.000000   -0.191490   -0.000000    0.000000   -0.000000   -0.000000    0.938837    0.000000    0.000000    0.000000
 6           0.000000    0.000000   -0.281374   -0.000000    0.915921   -0.000000   -0.000000    0.000000    0.000000   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.898964    0.000000   -0.331583   -0.000000   -0.000000    0.000000    0.000001
 8          -0.000000   -0.000000    0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956337
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956337   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.956337    0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958165   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 2          -0.000000    0.958165    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.958165    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000    0.000000    0.000000    0.958165   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000   -0.000000    0.958167   -0.000000    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958167    0.000000   -0.000000    0.000000    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.958167    0.000001   -0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000001    0.956337   -0.000000   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.956337   -0.000000
 10         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.956337


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95816495 (fixed)   0.95816511 (relaxed)   0.95816495 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034    0.00000000   -0.46819089
 Singles      0.01401155   -0.07396232   -0.07541815
 Pairs        0.07521772    0.00000000   -0.04032047
 Total        1.08922961   -0.07396232   -0.58392950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44245486
 One electron energy                 -193.16833797
 Two electron energy                   83.20320861
 Virial quotient                       -2.65344149
 Correlation energy                    -0.58392950
 !MRCI STATE 1.1 Energy              -109.965129364768

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723317 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723295 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723317 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277705 (Pople, fixed reference)
 Cluster corrected energies          -110.01277684 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277705 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.91591958 (fixed)   0.95816509 (relaxed)   0.95816493 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034   -0.00000000   -0.46819160
 Singles      0.01401138   -0.07396152   -0.07541774
 Pairs        0.07521795   -0.00000000   -0.04032016
 Total        1.08922966   -0.07396152   -0.58392950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44245481
 One electron energy                 -193.16833549
 Two electron energy                   83.20320613
 Virial quotient                       -2.65344150
 Correlation energy                    -0.58392950
 !MRCI STATE 2.1 Energy              -109.965129362613

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723320 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723298 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723320 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277708 (Pople, fixed reference)
 Cluster corrected energies          -110.01277687 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277708 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.93883557 (fixed)   0.95816523 (relaxed)   0.95816507 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034    0.00000000   -0.46819192
 Singles      0.01401125   -0.07396131   -0.07541781
 Pairs        0.07521776    0.00000000   -0.04031976
 Total        1.08922935   -0.07396131   -0.58392950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44245771
 One electron energy                 -193.16834392
 Two electron energy                   83.20321456
 Virial quotient                       -2.65344131
 Correlation energy                    -0.58392950
 !MRCI STATE 3.1 Energy              -109.965129359493

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723301 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723279 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723301 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277690 (Pople, fixed reference)
 Cluster corrected energies          -110.01277669 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277690 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.89896205 (fixed)   0.95816495 (relaxed)   0.95816479 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034   -0.00000000   -0.46819092
 Singles      0.01401158   -0.07396235   -0.07541816
 Pairs        0.07521805    0.00000024   -0.04032041
 Total        1.08922997   -0.07396211   -0.58392950
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44245223
 One electron energy                 -193.16833472
 Two electron energy                   83.20320536
 Virial quotient                       -2.65344166
 Correlation energy                    -0.58392950
 !MRCI STATE 4.1 Energy              -109.965129357021

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723337 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723315 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723337 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277725 (Pople, fixed reference)
 Cluster corrected energies          -110.01277704 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277725 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.93883700 (fixed)   0.95816672 (relaxed)   0.95816656 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034    0.00000000   -0.46819380
 Singles      0.01401107   -0.07396083   -0.07541792
 Pairs        0.07521454    0.00000000   -0.04031775
 Total        1.08922595   -0.07396083   -0.58392946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44246535
 One electron energy                 -193.16836368
 Two electron energy                   83.20323436
 Virial quotient                       -2.65344082
 Correlation energy                    -0.58392946
 !MRCI STATE 5.1 Energy              -109.965129324013

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723098 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723077 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723098 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277492 (Pople, fixed reference)
 Cluster corrected energies          -110.01277472 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277492 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.91592115 (fixed)   0.95816671 (relaxed)   0.95816655 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034    0.00000000   -0.46819392
 Singles      0.01401100   -0.07396068   -0.07541793
 Pairs        0.07521464    0.00000000   -0.04031762
 Total        1.08922598   -0.07396068   -0.58392946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44246690
 One electron energy                 -193.16836641
 Two electron energy                   83.20323709
 Virial quotient                       -2.65344072
 Correlation energy                    -0.58392946
 !MRCI STATE 6.1 Energy              -109.965129323498

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723100 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723079 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723100 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277494 (Pople, fixed reference)
 Cluster corrected energies          -110.01277473 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277494 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.89896403 (fixed)   0.95816698 (relaxed)   0.95816682 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000034    0.00000000   -0.46819326
 Singles      0.01401092   -0.07396049   -0.07541797
 Pairs        0.07521410   -0.00000120   -0.04031824
 Total        1.08922536   -0.07396169   -0.58392946
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119986
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44244666
 One electron energy                 -193.16834535
 Two electron energy                   83.20321603
 Virial quotient                       -2.65344202
 Correlation energy                    -0.58392946
 !MRCI STATE 7.1 Energy              -109.965129321252

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01723064 (Davidson, fixed reference)
 Cluster corrected energies          -110.01723042 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01723064 (Davidson, rotated reference)

 Cluster corrected energies          -110.01277459 (Pople, fixed reference)
 Cluster corrected energies          -110.01277438 (Pople, relaxed reference)
 Cluster corrected energies          -110.01277459 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95633687 (fixed)   0.95638111 (relaxed)   0.95633687 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009252   -0.00000000   -0.00005023
 Singles      0.01727163   -0.07943176   -0.08202633
 Pairs        0.07603367   -0.51423814   -0.51159334
 Total        1.09339781   -0.59366990   -0.59366990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32765568
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42224591
 One electron energy                 -193.11293783
 Two electron energy                   83.19161224
 Virial quotient                       -2.65367855
 Correlation energy                    -0.59366990
 !MRCI STATE 8.1 Energy              -109.921325584923

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97677306 (Davidson, fixed reference)
 Cluster corrected energies          -109.97671300 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97677306 (Davidson, rotated reference)

 Cluster corrected energies          -109.97218695 (Pople, fixed reference)
 Cluster corrected energies          -109.97212807 (Pople, relaxed reference)
 Cluster corrected energies          -109.97218695 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95633697 (fixed)   0.95638121 (relaxed)   0.95633697 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009252   -0.00000000   -0.47036252
 Singles      0.01727156   -0.07943158   -0.08202629
 Pairs        0.07603351    0.00000000   -0.04128109
 Total        1.09339759   -0.07943158   -0.59366990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32765568
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42223830
 One electron energy                 -193.11293365
 Two electron energy                   83.19160806
 Virial quotient                       -2.65367904
 Correlation energy                    -0.59366990
 !MRCI STATE 9.1 Energy              -109.921325584615

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97677292 (Davidson, fixed reference)
 Cluster corrected energies          -109.97671287 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97677292 (Davidson, rotated reference)

 Cluster corrected energies          -109.97218682 (Pople, fixed reference)
 Cluster corrected energies          -109.97212795 (Pople, relaxed reference)
 Cluster corrected energies          -109.97218682 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95633722 (fixed)   0.95638146 (relaxed)   0.95633722 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009252    0.00000000   -0.47036270
 Singles      0.01727158   -0.07943167   -0.08202632
 Pairs        0.07603291   -0.00000000   -0.04128089
 Total        1.09339701   -0.07943167   -0.59366990
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32765568
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42224304
 One electron energy                 -193.11293265
 Two electron energy                   83.19160707
 Virial quotient                       -2.65367874
 Correlation energy                    -0.59366990
 !MRCI STATE 10.1 Energy             -109.921325584233

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97677258 (Davidson, fixed reference)
 Cluster corrected energies          -109.97671252 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97677258 (Davidson, rotated reference)

 Cluster corrected energies          -109.97218648 (Pople, fixed reference)
 Cluster corrected energies          -109.97212761 (Pople, relaxed reference)
 Cluster corrected energies          -109.97218648 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      138.26       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       169.44    165.22      2.46      1.41
 REAL TIME  *       204.66 SEC
 DISK USED  *       170.36 MB (local),        5.12 GB (total)
 SF USED    *         1.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01723317  AU                              
 SETTING HLSDIAG(2)     =      -110.01723320  AU                              
 SETTING HLSDIAG(3)     =      -110.01723301  AU                              
 SETTING HLSDIAG(4)     =      -110.01723337  AU                              
 SETTING HLSDIAG(5)     =      -110.01723098  AU                              
 SETTING HLSDIAG(6)     =      -110.01723100  AU                              
 SETTING HLSDIAG(7)     =      -110.01723064  AU                              
 SETTING HLSDIAG(8)     =      -109.97677306  AU                              
 SETTING HLSDIAG(9)     =      -109.97677292  AU                              
 SETTING HLSDIAG(10)    =      -109.97677258  AU                              


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
     1      -109.35136306
     2      -109.35136306
     3      -109.35136305
     4      -109.35136305
     5      -109.35136305
     6      -109.35136305
     7      -109.35136305
     8      -109.33365074
     9      -109.33365074
    10      -109.33365074
    11      -109.33365074
    12      -109.33365074

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.67D-05
 Number of N-2 electron functions:    1200
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2279808
 Total number of contracted configurations:      2359039
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  824859 words, CPU-Time:      0.20 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  507037 words, CPU-time:      0.07 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35136306     0.00000000    -0.69082129  0.30D-01  0.10D+00     0.54
    1     2     2     1.00000000     0.00000000  -109.35136306     0.00000000    -0.68947310  0.30D-01  0.10D+00     0.54
    1     3     3     1.00000000     0.00000000  -109.35136305    -0.00000000    -0.68945683  0.30D-01  0.10D+00     0.54
    1     4     4     1.00000000     0.00000000  -109.35136305    -0.00000000    -0.69110471  0.30D-01  0.10D+00     0.54
    1     5     5     1.00000000     0.00000000  -109.35136305     0.00000000    -0.69118598  0.30D-01  0.10D+00     0.54
    1     6     6     1.00000000     0.00000000  -109.35136305     0.00000000    -0.69011098  0.30D-01  0.10D+00     0.54
    1     7     7     1.00000000     0.00000000  -109.35136305     0.00000000    -0.69093368  0.30D-01  0.10D+00     0.54
    1     8     8     1.00000000     0.00000000  -109.33365074     0.00000000    -0.69591276  0.32D-01  0.11D+00     0.54
    1     9     9     1.00000000     0.00000000  -109.33365074     0.00000000    -0.69578524  0.32D-01  0.11D+00     0.54
    1    10    10     1.00000000     0.00000000  -109.33365074     0.00000000    -0.69553632  0.32D-01  0.11D+00     0.54
    1    11    11     1.00000000     0.00000000  -109.33365074     0.00000000    -0.69566089  0.32D-01  0.11D+00     0.54
    1    12    12     1.00000000     0.00000000  -109.33365074     0.00000000    -0.69637529  0.32D-01  0.11D+00     0.54
    2     1     1     1.09112996    -0.56919682  -109.92055987    -0.56919682    -0.01695500  0.17D-02  0.23D-02    36.29
    2     2     2     1.09110701    -0.56918172  -109.92054477    -0.56918172    -0.01695541  0.17D-02  0.23D-02    36.29
    2     3     3     1.09112766    -0.56917948  -109.92054253    -0.56917948    -0.01697340  0.17D-02  0.23D-02    36.29
    2     4     4     1.09095474    -0.56891900  -109.92028206    -0.56891900    -0.01709959  0.17D-02  0.23D-02    36.29
    2     5     5     1.09124132    -0.56891165  -109.92027470    -0.56891165    -0.01723723  0.18D-02  0.23D-02    36.29
    2     6     6     1.09096018    -0.56890440  -109.92026745    -0.56890440    -0.01711803  0.17D-02  0.23D-02    36.29
    2     7     7     1.09121627    -0.56879887  -109.92016192    -0.56879887    -0.01728432  0.18D-02  0.23D-02    36.29
    2     8     8     1.09371991    -0.57174807  -109.90539881    -0.57174807    -0.01690816  0.24D-02  0.20D-02    36.29
    2     9     9     1.09369874    -0.57165126  -109.90530200    -0.57165126    -0.01698991  0.24D-02  0.20D-02    36.29
    2    10    10     1.09370863    -0.57139401  -109.90504475    -0.57139401    -0.01718005  0.25D-02  0.21D-02    36.29
    2    11    11     1.09362827    -0.57138622  -109.90503696    -0.57138622    -0.01715359  0.24D-02  0.21D-02    36.29
    2    12    12     1.09361822    -0.57138574  -109.90503648    -0.57138574    -0.01715222  0.24D-02  0.21D-02    36.29
    3     1     1     1.08735072    -0.58644906  -109.93781212    -0.01725224    -0.00087241  0.27D-04  0.18D-03    70.60
    3     2     2     1.08733856    -0.58644544  -109.93780849    -0.01726372    -0.00087330  0.27D-04  0.18D-03    70.60
    3     3     3     1.08735222    -0.58643880  -109.93780185    -0.01725932    -0.00088356  0.27D-04  0.19D-03    70.60
    3     4     4     1.08732642    -0.58643055  -109.93779360    -0.01751154    -0.00089673  0.26D-04  0.19D-03    70.60
    3     5     5     1.08727400    -0.58640737  -109.93777042    -0.01749572    -0.00090264  0.26D-04  0.19D-03    70.60
    3     6     6     1.08723807    -0.58639590  -109.93775895    -0.01749150    -0.00090557  0.27D-04  0.19D-03    70.60
    3     7     7     1.08723965    -0.58639420  -109.93775725    -0.01759532    -0.00090907  0.27D-04  0.19D-03    70.60
    3     8     8     1.08867200    -0.58829680  -109.92194754    -0.01654873    -0.00085544  0.87D-04  0.15D-03    70.60
    3     9     9     1.08865565    -0.58828410  -109.92193484    -0.01663284    -0.00085618  0.86D-04  0.15D-03    70.60
    3    10    10     1.08858606    -0.58824056  -109.92189130    -0.01684655    -0.00087169  0.86D-04  0.15D-03    70.60
    3    11    11     1.08856104    -0.58823366  -109.92188440    -0.01684744    -0.00087783  0.87D-04  0.15D-03    70.60
    3    12    12     1.08855906    -0.58823257  -109.92188331    -0.01684683    -0.00087969  0.87D-04  0.15D-03    70.60
    4     1     1     1.09008637    -0.58765309  -109.93901615    -0.00120403    -0.00019269  0.77D-05  0.41D-04   105.03
    4     2     2     1.09007078    -0.58765047  -109.93901352    -0.00120503    -0.00019230  0.80D-05  0.41D-04   105.03
    4     3     3     1.09007705    -0.58764986  -109.93901292    -0.00121106    -0.00019664  0.75D-05  0.42D-04   105.03
    4     4     4     1.09004601    -0.58764871  -109.93901177    -0.00121817    -0.00019695  0.74D-05  0.42D-04   105.03
    4     5     5     1.09006219    -0.58764661  -109.93900966    -0.00123924    -0.00019940  0.75D-05  0.43D-04   105.03
    4     6     6     1.09004763    -0.58764232  -109.93900537    -0.00124642    -0.00020393  0.74D-05  0.44D-04   105.03
    4     7     7     1.09003521    -0.58763971  -109.93900276    -0.00124551    -0.00020862  0.71D-05  0.46D-04   105.03
    4     8     8     1.09051393    -0.58933309  -109.92298382    -0.00103628    -0.00021541  0.87D-05  0.44D-04   105.03
    4     9     9     1.09051480    -0.58933051  -109.92298124    -0.00104640    -0.00021588  0.91D-05  0.43D-04   105.03
    4    10    10     1.09049371    -0.58931848  -109.92296922    -0.00107792    -0.00022325  0.97D-05  0.45D-04   105.03
    4    11    11     1.09048990    -0.58931802  -109.92296876    -0.00108436    -0.00022557  0.96D-05  0.45D-04   105.03
    4    12    12     1.09048712    -0.58931783  -109.92296856    -0.00108525    -0.00022589  0.95D-05  0.45D-04   105.03
    5     1     1     1.09109708    -0.58786109  -109.93922415    -0.00020800    -0.00004632  0.97D-06  0.11D-04   139.49
    5     2     2     1.09109354    -0.58786058  -109.93922364    -0.00021012    -0.00004726  0.10D-05  0.12D-04   139.49
    5     3     3     1.09108955    -0.58786044  -109.93922349    -0.00021058    -0.00004718  0.11D-05  0.11D-04   139.49
    5     4     4     1.09108553    -0.58785901  -109.93922206    -0.00021029    -0.00004844  0.11D-05  0.12D-04   139.49
    5     5     5     1.09108418    -0.58785721  -109.93922027    -0.00021060    -0.00005055  0.11D-05  0.13D-04   139.49
    5     6     6     1.09107544    -0.58785559  -109.93921864    -0.00021326    -0.00005164  0.12D-05  0.13D-04   139.49
    5     7     7     1.09106974    -0.58785450  -109.93921755    -0.00021479    -0.00005228  0.13D-05  0.13D-04   139.49
    5     8     8     1.09189108    -0.58959888  -109.92324962    -0.00026580    -0.00006105  0.18D-05  0.14D-04   139.49
    5     9     9     1.09188472    -0.58959792  -109.92324865    -0.00026741    -0.00006252  0.18D-05  0.14D-04   139.49
    5    10    10     1.09188664    -0.58959521  -109.92324595    -0.00027673    -0.00006291  0.19D-05  0.14D-04   139.49
    5    11    11     1.09186970    -0.58959307  -109.92324380    -0.00027505    -0.00006521  0.19D-05  0.15D-04   139.49
    5    12    12     1.09187072    -0.58959302  -109.92324375    -0.00027519    -0.00006548  0.19D-05  0.15D-04   139.49
    6     1     1     1.09112972    -0.58790920  -109.93927226    -0.00004811    -0.00001254  0.64D-06  0.28D-05   173.99
    6     2     2     1.09113518    -0.58790914  -109.93927220    -0.00004856    -0.00001262  0.65D-06  0.29D-05   173.99
    6     3     3     1.09112646    -0.58790875  -109.93927180    -0.00004831    -0.00001280  0.65D-06  0.29D-05   173.99
    6     4     4     1.09113486    -0.58790862  -109.93927167    -0.00004961    -0.00001329  0.61D-06  0.32D-05   173.99
    6     5     5     1.09113011    -0.58790716  -109.93927022    -0.00004995    -0.00001426  0.60D-06  0.35D-05   173.99
    6     6     6     1.09112619    -0.58790660  -109.93926965    -0.00005101    -0.00001468  0.60D-06  0.37D-05   173.99
    6     7     7     1.09112076    -0.58790658  -109.93926963    -0.00005208    -0.00001453  0.60D-06  0.36D-05   173.99
    6     8     8     1.09191997    -0.58965916  -109.92330989    -0.00006027    -0.00001881  0.24D-05  0.37D-05   173.99
    6     9     9     1.09192005    -0.58965817  -109.92330891    -0.00006025    -0.00001969  0.24D-05  0.40D-05   173.99
    6    10    10     1.09190764    -0.58965807  -109.92330880    -0.00006285    -0.00001930  0.25D-05  0.37D-05   173.99
    6    11    11     1.09190311    -0.58965687  -109.92330761    -0.00006380    -0.00002002  0.25D-05  0.39D-05   173.99
    6    12    12     1.09190396    -0.58965664  -109.92330738    -0.00006362    -0.00002029  0.25D-05  0.41D-05   173.99
    7     1     1     1.09119196    -0.58792283  -109.93928588    -0.00001362    -0.00000421  0.33D-07  0.11D-05   208.39
    7     2     2     1.09119413    -0.58792281  -109.93928587    -0.00001367    -0.00000412  0.37D-07  0.11D-05   208.39
    7     3     3     1.09118896    -0.58792266  -109.93928572    -0.00001392    -0.00000431  0.32D-07  0.11D-05   208.39
    7     4     4     1.09118874    -0.58792235  -109.93928541    -0.00001374    -0.00000450  0.29D-07  0.12D-05   208.39
    7     5     5     1.09117910    -0.58792158  -109.93928463    -0.00001441    -0.00000511  0.28D-07  0.14D-05   208.39
    7     6     6     1.09117529    -0.58792132  -109.93928437    -0.00001472    -0.00000535  0.29D-07  0.15D-05   208.39
    7     7     7     1.09117550    -0.58792129  -109.93928434    -0.00001471    -0.00000531  0.29D-07  0.15D-05   208.39
    7     8     8     1.09193473    -0.58967862  -109.92332935    -0.00001946    -0.00000575  0.12D-06  0.13D-05   208.39
    7     9     9     1.09192545    -0.58967830  -109.92332903    -0.00002013    -0.00000592  0.14D-06  0.13D-05   208.39
    7    10    10     1.09193058    -0.58967801  -109.92332874    -0.00001994    -0.00000624  0.12D-06  0.15D-05   208.39
    7    11    11     1.09192072    -0.58967778  -109.92332852    -0.00002091    -0.00000632  0.13D-06  0.15D-05   208.39
    7    12    12     1.09191930    -0.58967758  -109.92332832    -0.00002094    -0.00000651  0.13D-06  0.15D-05   208.39
    8     1     1     1.09126840    -0.58792684  -109.93928989    -0.00000401    -0.00000140  0.43D-07  0.35D-06   242.88
    8     2     2     1.09127035    -0.58792683  -109.93928989    -0.00000402    -0.00000141  0.41D-07  0.37D-06   242.88
    8     3     3     1.09126632    -0.58792678  -109.93928983    -0.00000412    -0.00000143  0.43D-07  0.36D-06   242.88
    8     4     4     1.09126599    -0.58792666  -109.93928972    -0.00000431    -0.00000153  0.46D-07  0.39D-06   242.88
    8     5     5     1.09125655    -0.58792632  -109.93928938    -0.00000475    -0.00000173  0.50D-07  0.44D-06   242.88
    8     6     6     1.09125467    -0.58792624  -109.93928929    -0.00000492    -0.00000179  0.55D-07  0.45D-06   242.88
    8     7     7     1.09125366    -0.58792620  -109.93928925    -0.00000491    -0.00000181  0.51D-07  0.46D-06   242.88
    8     8     8     1.09201850    -0.58968450  -109.92333523    -0.00000588    -0.00000228  0.49D-07  0.57D-06   242.88
    8     9     9     1.09201437    -0.58968441  -109.92333514    -0.00000611    -0.00000236  0.51D-07  0.58D-06   242.88
    8    10    10     1.09201218    -0.58968415  -109.92333489    -0.00000614    -0.00000250  0.55D-07  0.63D-06   242.88
    8    11    11     1.09200874    -0.58968414  -109.92333487    -0.00000635    -0.00000254  0.52D-07  0.63D-06   242.88
    8    12    12     1.09200601    -0.58968399  -109.92333473    -0.00000641    -0.00000264  0.55D-07  0.66D-06   242.88
    9     1     1     1.09130684    -0.58792820  -109.93929126    -0.00000137    -0.00000047  0.42D-08  0.12D-06   277.31
    9     2     2     1.09130768    -0.58792819  -109.93929124    -0.00000136    -0.00000048  0.42D-08  0.13D-06   277.31
    9     3     3     1.09130578    -0.58792818  -109.93929124    -0.00000140    -0.00000049  0.42D-08  0.13D-06   277.31
    9     4     4     1.09130435    -0.58792810  -109.93929116    -0.00000144    -0.00000055  0.29D-08  0.16D-06   277.31
    9     5     5     1.09129867    -0.58792797  -109.93929102    -0.00000164    -0.00000065  0.30D-08  0.19D-06   277.31
    9     6     6     1.09129716    -0.58792794  -109.93929099    -0.00000170    -0.00000067  0.29D-08  0.19D-06   277.31
    9     7     7     1.09129673    -0.58792791  -109.93929096    -0.00000171    -0.00000069  0.29D-08  0.20D-06   277.31
    9     8     8     1.09206433    -0.58968662  -109.92333735    -0.00000212    -0.00000081  0.54D-07  0.18D-06   277.31
    9     9     9     1.09206131    -0.58968659  -109.92333732    -0.00000218    -0.00000082  0.57D-07  0.18D-06   277.31
    9    10    10     1.09205840    -0.58968648  -109.92333722    -0.00000233    -0.00000089  0.59D-07  0.20D-06   277.31
    9    11    11     1.09206077    -0.58968647  -109.92333720    -0.00000233    -0.00000092  0.52D-07  0.22D-06   277.31
    9    12    12     1.09205696    -0.58968642  -109.92333716    -0.00000243    -0.00000093  0.60D-07  0.21D-06   277.31
   10     1     1     1.09132308    -0.58792865  -109.93929171    -0.00000045    -0.00000019  0.11D-08  0.54D-07   311.73
   10     2     2     1.09132332    -0.58792865  -109.93929170    -0.00000046    -0.00000019  0.10D-08  0.55D-07   311.73
   10     3     3     1.09132231    -0.58792865  -109.93929170    -0.00000046    -0.00000020  0.11D-08  0.57D-07   311.73
   10     4     4     1.09132115    -0.58792861  -109.93929167    -0.00000051    -0.00000022  0.16D-08  0.63D-07   311.73
   10     5     5     1.09131711    -0.58792854  -109.93929159    -0.00000057    -0.00000027  0.18D-08  0.85D-07   311.73
   10     6     6     1.09131639    -0.58792853  -109.93929158    -0.00000059    -0.00000028  0.20D-08  0.86D-07   311.73
   10     7     7     1.09131563    -0.58792851  -109.93929156    -0.00000060    -0.00000029  0.19D-08  0.92D-07   311.73
   10     8     8     1.09208508    -0.58968739  -109.92333813    -0.00000078    -0.00000033  0.58D-08  0.86D-07   311.73
   10     9     9     1.09208304    -0.58968739  -109.92333813    -0.00000080    -0.00000033  0.47D-08  0.86D-07   311.73
   10    10    10     1.09208103    -0.58968734  -109.92333807    -0.00000086    -0.00000037  0.51D-08  0.10D-06   311.73
   10    11    11     1.09208210    -0.58968731  -109.92333805    -0.00000084    -0.00000039  0.81D-08  0.11D-06   311.73
   10    12    12     1.09207984    -0.58968731  -109.92333804    -0.00000088    -0.00000039  0.57D-08  0.11D-06   311.73
   11     1     1     1.09133391    -0.58792883  -109.93929188    -0.00000017    -0.00000007  0.76D-09  0.21D-07   346.20
   11     2     2     1.09133373    -0.58792882  -109.93929188    -0.00000017    -0.00000008  0.68D-09  0.22D-07   346.20
   11     3     3     1.09133336    -0.58792882  -109.93929188    -0.00000018    -0.00000008  0.77D-09  0.22D-07   346.20
   11     4     4     1.09133218    -0.58792881  -109.93929186    -0.00000020    -0.00000009  0.50D-09  0.27D-07   346.20
   11     5     5     1.09132933    -0.58792877  -109.93929182    -0.00000023    -0.00000011  0.53D-09  0.34D-07   346.20
   11     6     6     1.09132914    -0.58792877  -109.93929182    -0.00000024    -0.00000012  0.53D-09  0.35D-07   346.20
   11     7     7     1.09132820    -0.58792876  -109.93929181    -0.00000025    -0.00000012  0.51D-09  0.37D-07   346.20
   11     8     8     1.09209861    -0.58968769  -109.92333842    -0.00000029    -0.00000014  0.17D-08  0.36D-07   346.20
   11     9     9     1.09209728    -0.58968769  -109.92333842    -0.00000030    -0.00000014  0.17D-08  0.37D-07   346.20
   11    10    10     1.09209563    -0.58968766  -109.92333840    -0.00000032    -0.00000016  0.19D-08  0.42D-07   346.20
   11    11    11     1.09209628    -0.58968765  -109.92333838    -0.00000033    -0.00000017  0.20D-08  0.46D-07   346.20
   11    12    12     1.09209457    -0.58968764  -109.92333838    -0.00000034    -0.00000017  0.21D-08  0.47D-07   346.20
   12     1     1     1.09134074    -0.58792889  -109.93929195    -0.00000006    -0.00000003  0.12D-09  0.82D-08   380.71
   12     2     2     1.09134041    -0.58792889  -109.93929195    -0.00000007    -0.00000003  0.12D-09  0.84D-08   380.71
   12     3     3     1.09134066    -0.58792889  -109.93929194    -0.00000007    -0.00000003  0.13D-09  0.86D-08   380.71
   12     4     4     1.09133939    -0.58792888  -109.93929194    -0.00000008    -0.00000004  0.21D-09  0.11D-07   380.71
   12     5     5     1.09133750    -0.58792887  -109.93929192    -0.00000010    -0.00000005  0.25D-09  0.14D-07   380.71
   12     6     6     1.09133734    -0.58792887  -109.93929192    -0.00000010    -0.00000005  0.28D-09  0.14D-07   380.71
   12     7     7     1.09133672    -0.58792886  -109.93929191    -0.00000010    -0.00000005  0.27D-09  0.15D-07   380.71
   12     8     8     1.09210839    -0.58968781  -109.92333854    -0.00000012    -0.00000006  0.15D-08  0.16D-07   380.71
   12     9     9     1.09210753    -0.58968781  -109.92333854    -0.00000012    -0.00000006  0.17D-08  0.15D-07   380.71
   12    10    10     1.09210618    -0.58968780  -109.92333853    -0.00000014    -0.00000007  0.16D-08  0.17D-07   380.71
   12    11    11     1.09210526    -0.58968779  -109.92333852    -0.00000014    -0.00000007  0.15D-08  0.19D-07   380.71
   12    12    12     1.09210634    -0.58968779  -109.92333852    -0.00000014    -0.00000007  0.12D-08  0.20D-07   380.71
   13     1     1     1.09134405    -0.58792891  -109.93929197    -0.00000002    -0.00000002  0.46D-10  0.47D-08   407.83
   13     2     2     1.09134256    -0.58792890  -109.93929196    -0.00000001    -0.00000002  0.50D-10  0.69D-08   407.83
   13     3     3     1.09134271    -0.58792891  -109.93929196    -0.00000001    -0.00000002  0.50D-10  0.68D-08   407.83
   13     4     4     1.09134213    -0.58792890  -109.93929196    -0.00000002    -0.00000002  0.51D-10  0.76D-08   407.83
   13     5     5     1.09134079    -0.58792890  -109.93929195    -0.00000003    -0.00000003  0.12D-09  0.81D-08   407.83
   13     6     6     1.09134041    -0.58792889  -109.93929195    -0.00000003    -0.00000003  0.12D-09  0.84D-08   407.83
   13     7     7     1.09134067    -0.58792889  -109.93929194    -0.00000003    -0.00000003  0.13D-09  0.85D-08   407.83
   13     8     8     1.09212277    -0.58968788  -109.92333862    -0.00000008    -0.00000002  0.13D-08  0.38D-08   407.83
   13     9     9     1.09212247    -0.58968788  -109.92333862    -0.00000007    -0.00000002  0.14D-08  0.43D-08   407.83
   13    10    10     1.09212281    -0.58968788  -109.92333862    -0.00000008    -0.00000002  0.13D-08  0.46D-08   407.83
   13    11    11     1.09211450    -0.58968786  -109.92333859    -0.00000007    -0.00000002  0.70D-09  0.64D-08   407.83
   13    12    12     1.09211398    -0.58968786  -109.92333859    -0.00000007    -0.00000002  0.52D-09  0.64D-08   407.83


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.2%   9.9%  61.7%

 Initialization:   0.1%
 Other:           27.8%

 Total CPU:      407.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/222/\222           0.9543360  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0000002  -0.0000000  -0.0000000
 2//222\222          -0.0000000   0.0187267   0.0000000   0.0000000  -0.0000000  -0.0000000   0.9541538   0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0000002
 22//22\222           0.0000000  -0.0000000   0.8535465   0.0000000   0.0000000  -0.0082133  -0.0000000  -0.0000000  -0.0000005
                     -0.0000000   0.0000000   0.0000000
 222//2\222           0.0000000   0.8534222  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0167495  -0.0000000  -0.0000000
                     -0.0000000  -0.0000000   0.0000003
 22/2/2\222          -0.0000000  -0.0000000  -0.0000000   0.8523309  -0.0462796  -0.0000000  -0.0000000  -0.0000003  -0.0000000
                      0.0000000  -0.0000000   0.0000000
 222/2/\222          -0.0000000  -0.0000000  -0.0000000  -0.1682703   0.8368352  -0.0000000  -0.0000000  -0.0000006  -0.0000000
                      0.0000000   0.0000000   0.0000000
 2222//\222          -0.0000000   0.0000000   0.2213373  -0.0000000  -0.0000000   0.8243890   0.0000000   0.0000000   0.0000005
                      0.0000000   0.0000000   0.0000000
 2/\222/222           0.0000000  -0.0000004   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000019  -0.0000000   0.0000000
                     -0.0000000   0.0000000   0.6846057
 222/\2/222          -0.0000000   0.0000008   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000023   0.0000000  -0.0000000
                      0.0000000   0.0000000  -0.5928879
 2222/\/222          -0.0000000  -0.0000000  -0.0000018  -0.0000000  -0.0000000   0.0000024   0.0000000  -0.0000000   0.5928538
                     -0.0000000  -0.0000000  -0.0000000
 22/\22/222          -0.0000000  -0.0000000   0.0000013   0.0000000   0.0000000   0.0000014  -0.0000000   0.0000000   0.5928533
                     -0.0000000  -0.0000000  -0.0000000
 222/2\/222          -0.0000000   0.0000000  -0.0000000   0.0000025   0.0000011  -0.0000000  -0.0000000  -0.5928526  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 22/2\2/222           0.0000000   0.0000000   0.0000000  -0.0000009  -0.0000006   0.0000000   0.0000000   0.5928520  -0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2/222\/222           0.0000004   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.4051480   0.5518378   0.0000000
 222022/222           0.0000008  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0530085  -0.4811856   0.0000000
 2/22/2\222          -0.0000000   0.0000000   0.3650019  -0.0000000  -0.0000000  -0.4807034  -0.0000000   0.0000000   0.0000006
                      0.0000000  -0.0000000  -0.0000000
 2/2/22\222           0.0000000   0.0000000   0.0000000   0.3949379   0.4564265   0.0000000   0.0000000   0.0000007  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 222202/222           0.0000006   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                      0.4431959   0.1946826   0.0000000
 22/22/\222           0.0000000  -0.4267063  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0083752   0.0000000   0.0000000
                      0.0000000   0.0000000   0.0000009
 220222/222          -0.0000013   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.3901874   0.2865029  -0.0000000
 202222/222           0.0000009  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                      0.3901865  -0.2865010   0.0000000
 222220/222          -0.0000012   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.3901865   0.2865013  -0.0000000
 2/22\2/222          -0.0000000   0.0000000   0.0000008  -0.0000000   0.0000000   0.0000041  -0.0000000   0.0000000   0.3422842
                     -0.0000000  -0.0000000  -0.0000000
 2/2\22/222           0.0000000   0.0000000   0.0000000   0.0000008  -0.0000033   0.0000000   0.0000000   0.3422834  -0.0000000
                      0.0000000  -0.0000000  -0.0000000
 222/220222           0.0000000   0.0000000   0.0000000  -0.0000057  -0.0000091   0.0000000   0.0000000  -0.2787064  -0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2222/20222          -0.0000000  -0.0000000  -0.0000003  -0.0000000   0.0000000   0.0000142  -0.0000000   0.0000000  -0.2787007
                     -0.0000000  -0.0000000  -0.0000000
 22/2220222           0.0000000   0.0000026   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000097   0.0000000   0.0000000
                      0.0000000   0.0000000   0.2785492
 2/22220222          -0.0000069   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.2246395  -0.1648350  -0.0000000
 22222/0222          -0.0000003  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.1649408   0.2245081  -0.0000000
 20/2222222          -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0711999
 22202/2222          -0.0214669  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0029540  -0.0623598  -0.0000000
 22220/2222          -0.0214668  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0603841  -0.0158550  -0.0000000
 2/02222222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0573935   0.0421382  -0.0000000
 2/22202222           0.0000001  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0573935   0.0421382  -0.0000000
 20222/2222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.0421397  -0.0573914  -0.0000000
 222//\2222           0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000002  -0.0000000   0.0000000
                      0.0000000   0.0000000  -0.0555634
 2/\/222222           0.0000000  -0.0000000  -0.0306739  -0.0000000  -0.0000000  -0.0128515  -0.0000000   0.0000000  -0.0555624
                      0.0000000  -0.0000000  -0.0000000
 2/\2/22222           0.0000000  -0.0000000   0.0000000  -0.0297910   0.0147829   0.0000000   0.0000000  -0.0555624  -0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 22//\22222           0.0000001   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.0223450  -0.0508733   0.0000000
 22/\/22222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0508721  -0.0223457  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957235    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000001
            -0.000000    0.000000
 2          -0.000000   -0.000000    0.000000    0.954710   -0.000000   -0.069486    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 3           0.000000   -0.000000   -0.089864    0.000000    0.953008    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.000000   -0.000000
 4          -0.000000    0.066601    0.000000   -0.000000    0.000000    0.000000    0.954916    0.000000    0.000000    0.000000
            -0.000001   -0.000000
 5          -0.000000    0.954916   -0.000000   -0.000000   -0.000000   -0.000000   -0.066601   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 6          -0.000000    0.000000    0.953009    0.000000    0.089864   -0.000000    0.000000   -0.000000    0.000001   -0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.069486   -0.000000    0.954711    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000001
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
             0.954209   -0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954209    0.000000
            -0.000000    0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.064230   -0.000000    0.952046
             0.000000   -0.000000
 11         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.952063   -0.000000   -0.064231
            -0.000000    0.000000
 12         -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.954225

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957235   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 2          -0.000000    0.957235   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 3          -0.000000   -0.000000    0.957235    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 4           0.000000    0.000000    0.000000    0.957236    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.957236    0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 6          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.957236    0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957236    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954209   -0.000000    0.000000
            -0.000000   -0.000000
 9          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.954209   -0.000000
            -0.000000   -0.000000
 10          0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954210
            -0.000000    0.000000
 11         -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.954227   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.954225

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00486021    -1.74953433       2221220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00485940    -1.74938770       2222120222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00315610    -1.13642072       2122220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00314103    -1.13368372       2222210222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00483783    -1.74547229       2212220222                      
    85       0.00014330     1.00123821       2112221222                      


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95723470 (fixed)   0.95723630 (relaxed)   0.95723470 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922476
 Singles      0.01504711   -0.07584352   -0.07760109
 Pairs        0.07629725   -0.00000000   -0.04110306
 Total        1.09134769   -0.07584352   -0.58792891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136306
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45702015
 One electron energy                 -193.12150384
 Two electron energy                   83.18221187
 Virial quotient                       -2.65188602
 Correlation energy                    -0.58792891
 !MRCI STATE 1.1 Energy              -109.939291968915

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299792 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299578 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299792 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968802 (Pople, fixed reference)
 Cluster corrected energies          -109.98968587 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968802 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95471004 (fixed)   0.95723695 (relaxed)   0.95723535 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922526
 Singles      0.01504733   -0.07584377   -0.07760141
 Pairs        0.07629554    0.00000011   -0.04110224
 Total        1.09134621   -0.07584366   -0.58792890
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136305
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45702831
 One electron energy                 -193.12151215
 Two electron energy                   83.18222020
 Virial quotient                       -2.65188549
 Correlation energy                    -0.58792891
 !MRCI STATE 2.1 Energy              -109.939291959471

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299704 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299489 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299704 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968713 (Pople, fixed reference)
 Cluster corrected energies          -109.98968498 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968713 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95300775 (fixed)   0.95723688 (relaxed)   0.95723528 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922510
 Singles      0.01504733   -0.07584377   -0.07760139
 Pairs        0.07629569   -0.00000000   -0.04110242
 Total        1.09134636   -0.07584377   -0.58792891
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136305
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45702661
 One electron energy                 -193.12151027
 Two electron energy                   83.18221831
 Virial quotient                       -2.65188560
 Correlation energy                    -0.58792891
 !MRCI STATE 3.1 Energy              -109.939291959388

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299712 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299498 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299712 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968722 (Pople, fixed reference)
 Cluster corrected energies          -109.98968507 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968722 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95491577 (fixed)   0.95723714 (relaxed)   0.95723554 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922518
 Singles      0.01504745   -0.07584395   -0.07760153
 Pairs        0.07629499    0.00000000   -0.04110220
 Total        1.09134578   -0.07584395   -0.58792890
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136305
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45703116
 One electron energy                 -193.12151434
 Two electron energy                   83.18222238
 Virial quotient                       -2.65188531
 Correlation energy                    -0.58792891
 !MRCI STATE 4.1 Energy              -109.939291955795

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299678 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299464 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299678 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968688 (Pople, fixed reference)
 Cluster corrected energies          -109.98968472 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968688 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95491636 (fixed)   0.95723773 (relaxed)   0.95723613 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922422
 Singles      0.01504831   -0.07584562   -0.07760221
 Pairs        0.07629278    0.00000000   -0.04110246
 Total        1.09134443   -0.07584562   -0.58792890
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136306
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45705987
 One electron energy                 -193.12153097
 Two electron energy                   83.18223902
 Virial quotient                       -2.65188347
 Correlation energy                    -0.58792889
 !MRCI STATE 5.1 Energy              -109.939291948138

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299598 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299384 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299598 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968607 (Pople, fixed reference)
 Cluster corrected energies          -109.98968392 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968607 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95300876 (fixed)   0.95723789 (relaxed)   0.95723629 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922432
 Singles      0.01504838   -0.07584569   -0.07760229
 Pairs        0.07629233    0.00000000   -0.04110229
 Total        1.09134405   -0.07584569   -0.58792889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136305
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45706338
 One electron energy                 -193.12153382
 Two electron energy                   83.18224187
 Virial quotient                       -2.65188325
 Correlation energy                    -0.58792889
 !MRCI STATE 6.1 Energy              -109.939291945301

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299575 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299361 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299575 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968584 (Pople, fixed reference)
 Cluster corrected energies          -109.98968369 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968584 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95471087 (fixed)   0.95723778 (relaxed)   0.95723618 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000334   -0.00000000   -0.46922470
 Singles      0.01504834   -0.07584572   -0.07760224
 Pairs        0.07629263    0.00000057   -0.04110195
 Total        1.09134431   -0.07584515   -0.58792889
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136305
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45705512
 One electron energy                 -193.12152601
 Two electron energy                   83.18223406
 Virial quotient                       -2.65188378
 Correlation energy                    -0.58792889
 !MRCI STATE 7.1 Energy              -109.939291944683

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99299590 (Davidson, fixed reference)
 Cluster corrected energies          -109.99299376 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99299590 (Davidson, rotated reference)

 Cluster corrected energies          -109.98968600 (Pople, fixed reference)
 Cluster corrected energies          -109.98968384 (Pople, relaxed reference)
 Cluster corrected energies          -109.98968600 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95420870 (fixed)   0.95689496 (relaxed)   0.95420870 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563828   -0.00000000   -0.47367324
 Singles      0.01585000   -0.07278664   -0.07478282
 Pairs        0.07679219    0.00000000   -0.04123182
 Total        1.09828047   -0.07278664   -0.58968788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33365074
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48719132
 One electron energy                 -193.30231178
 Two electron energy                   83.37897316
 Virial quotient                       -2.64957292
 Correlation energy                    -0.58968789
 !MRCI STATE 8.1 Energy              -109.923338620781

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98129342 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766230 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98129342 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801716 (Pople, fixed reference)
 Cluster corrected energies          -109.97434519 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801716 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95420927 (fixed)   0.95689509 (relaxed)   0.95420927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563734    0.00000000   -0.47367326
 Singles      0.01584990   -0.07278670   -0.07478287
 Pairs        0.07679190   -0.00000000   -0.04123176
 Total        1.09827914   -0.07278670   -0.58968788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33365074
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48719036
 One electron energy                 -193.30230267
 Two electron energy                   83.37896405
 Virial quotient                       -2.64957298
 Correlation energy                    -0.58968788
 !MRCI STATE 9.1 Energy              -109.923338618925

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98129264 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766213 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98129264 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801636 (Pople, fixed reference)
 Cluster corrected energies          -109.97434501 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801636 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95204576 (fixed)   0.95689495 (relaxed)   0.95420992 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00563566   -0.00000000   -0.47367300
 Singles      0.01584989   -0.07278669   -0.07478285
 Pairs        0.07679209    0.00000000   -0.04123202
 Total        1.09827764   -0.07278669   -0.58968788
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33365074
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48717472
 One electron energy                 -193.30227212
 Two electron energy                   83.37893350
 Virial quotient                       -2.64957398
 Correlation energy                    -0.58968788
 !MRCI STATE 10.1 Energy             -109.923338618657

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98129175 (Davidson, fixed reference)
 Cluster corrected energies          -109.97766232 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98129175 (Davidson, rotated reference)

 Cluster corrected energies          -109.97801546 (Pople, fixed reference)
 Cluster corrected energies          -109.97434521 (Pople, relaxed reference)
 Cluster corrected energies          -109.97801546 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95206257 (fixed)   0.95689859 (relaxed)   0.95422681 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00560773   -0.00000000   -0.47367641
 Singles      0.01584662   -0.07278486   -0.07478283
 Pairs        0.07678443   -0.00000000   -0.04122861
 Total        1.09823878   -0.07278486   -0.58968786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33365074
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48709185
 One electron energy                 -193.30201834
 Two electron energy                   83.37867975
 Virial quotient                       -2.64957927
 Correlation energy                    -0.58968786
 !MRCI STATE 11.1 Energy             -109.923338594397

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98126881 (Davidson, fixed reference)
 Cluster corrected energies          -109.97765739 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98126881 (Davidson, rotated reference)

 Cluster corrected energies          -109.97799215 (Pople, fixed reference)
 Cluster corrected energies          -109.97434025 (Pople, relaxed reference)
 Cluster corrected energies          -109.97799215 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95422491 (fixed)   0.95689881 (relaxed)   0.95422491 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561220    0.00000000   -0.00301340
 Singles      0.01584727   -0.07278508   -0.07478295
 Pairs        0.07678368   -0.51690278   -0.51189151
 Total        1.09824314   -0.58968786   -0.58968786
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33365074
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48710966
 One electron energy                 -193.30206951
 Two electron energy                   83.37873091
 Virial quotient                       -2.64957813
 Correlation energy                    -0.58968786
 !MRCI STATE 12.1 Energy             -109.923338594392

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98127138 (Davidson, fixed reference)
 Cluster corrected energies          -109.97765709 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98127138 (Davidson, rotated reference)

 Cluster corrected energies          -109.97799477 (Pople, fixed reference)
 Cluster corrected energies          -109.97433994 (Pople, relaxed reference)
 Cluster corrected energies          -109.97799477 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      357.41       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       601.59    432.14    165.22      2.46      1.41
 REAL TIME  *       699.45 SEC
 DISK USED  *       389.52 MB (local),       11.54 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -109.99299792  AU                              
 SETTING HLSDIAG(12)    =      -109.99299704  AU                              
 SETTING HLSDIAG(13)    =      -109.99299712  AU                              
 SETTING HLSDIAG(14)    =      -109.99299678  AU                              
 SETTING HLSDIAG(15)    =      -109.99299598  AU                              
 SETTING HLSDIAG(16)    =      -109.99299575  AU                              
 SETTING HLSDIAG(17)    =      -109.99299590  AU                              
 SETTING HLSDIAG(18)    =      -109.98129342  AU                              
 SETTING HLSDIAG(19)    =      -109.98129264  AU                              
 SETTING HLSDIAG(20)    =      -109.98129175  AU                              
 SETTING HLSDIAG(21)    =      -109.98126881  AU                              
 SETTING HLSDIAG(22)    =      -109.98127138  AU                              


         HLSDIAG
    -110.0172332
    -110.0172332
    -110.0172330
    -110.0172334
    -110.0172310
    -110.0172310
    -110.0172306
    -109.9767731
    -109.9767729
    -109.9767726
    -109.9929979
    -109.9929970
    -109.9929971
    -109.9929968
    -109.9929960
    -109.9929958
    -109.9929959
    -109.9812934
    -109.9812926
    -109.9812918
    -109.9812688
    -109.9812714
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  10

 Original energies:   -109.965129   -109.965129   -109.965129   -109.965129   -109.965129   -109.965129   -109.965129   -109.921326
                      -109.921326   -109.921326
 Replaced energies:   -110.017233   -110.017233   -110.017233   -110.017233   -110.017231   -110.017231   -110.017231   -109.976773
                      -109.976773   -109.976773

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.939292   -109.923339
                      -109.923339   -109.923339   -109.923339   -109.923339
 Replaced energies:   -109.992998   -109.992997   -109.992997   -109.992997   -109.992996   -109.992996   -109.992996   -109.981293
                      -109.981293   -109.981292   -109.981269   -109.981271



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01723337

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    1014.78       0.00      -0.00    -164.31      -0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      97.02      -0.00   -1097.35      -0.00      -0.00      -0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -97.02       0.00       0.00       0.00    -800.72      -0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1014.78       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00       0.00
                           -0.00    1097.35      -0.00      -0.00       0.00     887.26      -0.00      -0.00      -0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00
                            0.00       0.00     800.72       0.00    -887.26       0.00      -0.00      -0.00      -0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.60       0.00       0.00       0.00
                          164.31       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.01       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.04       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     524.42

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.12
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -524.42      -0.00

   11   1.1  1.5  0.5      -0.00    -591.83      -0.00       0.00      -0.00      44.73       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -579.56      -0.00     127.94      -0.00      -0.00       0.00      -0.00      -0.00

   12   2.1  1.5  0.5     591.83       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00     189.53      -0.00      -0.00     515.83       0.00       0.00       0.00

   13   3.1  1.5  0.5       0.00      -0.00      -0.00    -160.28      -0.00       0.00     691.62       0.00       0.00      -0.00
                          579.56      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   14   4.1  1.5  0.5      -0.00      -0.00     160.28       0.00     472.70       0.00       0.00       0.00       0.00       0.00
                            0.00    -189.53      -0.00       0.00      -0.00     654.58       0.00      -0.00      -0.00      -0.00

   15   5.1  1.5  0.5       0.00       0.00       0.00    -472.70       0.00       0.00     391.38       0.00       0.00       0.00
                         -127.94       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   16   6.1  1.5  0.5     -44.73       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -654.58       0.00       0.00    -387.54      -0.00      -0.00       0.00

   17   7.1  1.5  0.5      -0.00       0.00    -691.62      -0.00    -391.38      -0.00       0.00      -0.00      -0.00       0.00
                            0.00    -515.83      -0.00      -0.00      -0.00     387.54       0.00      -0.00      -0.00       0.00

   18   8.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.77
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00     302.77      -0.00

   19   9.1  1.5  0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -302.77       0.00      -0.00

   20  10.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     302.77      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   23   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.1  0.5  0.5      -0.00     406.28       0.00       0.00      -0.00     -30.71      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     397.87       0.00     -87.83      -0.00      -0.00      -0.00       0.00       0.00

   42   2.1  0.5  0.5      -0.00       0.00     447.39      -0.00     206.19       0.00      -0.00      -0.00       0.00       0.00
                           -0.00     371.69      -0.00      -0.00      -0.00    -342.25       0.00       0.00      -0.00      -0.00

   43   3.1  0.5  0.5      -3.92      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00     436.68       0.00      -0.00     235.00      -0.00      -0.00       0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00     342.12       0.00      -0.00    -386.17       0.00      -0.00       0.00
                          -22.09      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   45   5.1  0.5  0.5       0.00      -0.00       0.00      18.98       0.00       0.00    -385.34       0.00       0.00       0.00
                         -406.85      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   46   6.1  0.5  0.5    -407.43      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00    -167.82       0.00       0.00    -375.43       0.00      -0.00       0.00

   47   7.1  0.5  0.5      -0.00      -0.00    -193.32      -0.00    -367.39       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      64.56      -0.00       0.00      -0.00    -394.42      -0.00      -0.00      -0.00       0.00

   48   8.1  0.5  0.5       0.00      -0.00      -0.00    -581.23       0.00       0.00    -316.42    -714.43       0.00      -0.00
                          523.18       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   49   9.1  0.5  0.5    -523.18      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -451.68       0.00      -0.00     483.67     714.43      -0.00       0.00

   50  10.1  0.5  0.5       0.00    -161.37      -0.00      -0.00       0.00     656.69      -0.00      -0.00     755.30      -0.00
                            0.00       0.00     491.24       0.00    -187.16       0.00      -0.00      -0.00      -0.00     -90.34

   51  11.1  0.5  0.5       0.00     498.95      -0.00       0.00       0.00     245.40       0.00       0.00     331.78      -0.00
                            0.00      -0.00    -206.36       0.00    -668.99      -0.00      -0.00      -0.00      -0.00    -820.04

   52  12.1  0.5  0.5       0.00       0.00     423.55       0.00    -508.53       0.00      -0.00       0.00       0.00     714.47
                            0.00    -552.27       0.00       0.00      -0.00    -364.69      -0.00      -0.00     714.47      -0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   61   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   62  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   63  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   64  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5      -0.00     591.83       0.00      -0.00       0.00     -44.73      -0.00       0.00      -0.00      -0.00
                            0.00       0.00    -579.56      -0.00     127.94      -0.00      -0.00       0.00      -0.00      -0.00

    2   2.1  1.5  1.5    -591.83       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     189.53      -0.00      -0.00     515.83       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00       0.00      -0.00     160.28       0.00      -0.00    -691.62      -0.00      -0.00       0.00
                          579.56      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00    -160.28       0.00    -472.70      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00    -189.53      -0.00      -0.00      -0.00     654.58       0.00      -0.00      -0.00      -0.00

    5   5.1  1.5  1.5      -0.00      -0.00      -0.00     472.70       0.00      -0.00    -391.38      -0.00      -0.00      -0.00
                         -127.94       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

    6   6.1  1.5  1.5      44.73      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -654.58       0.00      -0.00    -387.54      -0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00     691.62       0.00     391.38       0.00       0.00       0.00       0.00      -0.00
                            0.00    -515.83      -0.00      -0.00      -0.00     387.54      -0.00      -0.00      -0.00       0.00

    8   8.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     302.77
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     302.77      -0.00

    9   9.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -302.77      -0.00      -0.00

   10  10.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -302.77       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   11   1.1  1.5  0.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     338.26       0.00      -0.00     -54.77      -0.00       0.00       0.00

   12   2.1  1.5  0.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      32.34      -0.00    -365.78      -0.00      -0.00      -0.00      -0.00      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -32.34       0.00       0.00       0.00    -266.91      -0.00      -0.00       0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -338.26       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00       0.00
                           -0.00     365.78      -0.00      -0.00       0.00     295.75      -0.00      -0.00      -0.00      -0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00
                            0.00       0.00     266.91       0.00    -295.75       0.00      -0.00      -0.00      -0.00      -0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.60       0.00       0.00       0.00
                           54.77       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.01       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.04       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     174.81

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.12
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -174.81      -0.00

   21   1.1  1.5 -0.5      -0.00    -683.38      -0.00       0.00      -0.00      51.65       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -669.22      -0.00     147.73      -0.00      -0.00       0.00      -0.00      -0.00

   22   2.1  1.5 -0.5     683.38       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00     218.85      -0.00      -0.00     595.63       0.00       0.00       0.00

   23   3.1  1.5 -0.5       0.00      -0.00      -0.00    -185.08      -0.00       0.00     798.62       0.00       0.00      -0.00
                          669.22      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   24   4.1  1.5 -0.5      -0.00      -0.00     185.08       0.00     545.82       0.00       0.00       0.00       0.00       0.00
                            0.00    -218.85      -0.00       0.00      -0.00     755.84       0.00      -0.00      -0.00      -0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00    -545.82       0.00       0.00     451.93       0.00       0.00       0.00
                         -147.73       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   26   6.1  1.5 -0.5     -51.65       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -755.84       0.00       0.00    -447.50      -0.00      -0.00       0.00

   27   7.1  1.5 -0.5      -0.00       0.00    -798.62      -0.00    -451.93      -0.00       0.00      -0.00      -0.00       0.00
                            0.00    -595.63      -0.00      -0.00      -0.00     447.50       0.00      -0.00      -0.00       0.00

   28   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -349.61
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00     349.61      -0.00

   29   9.1  1.5 -0.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -349.61       0.00      -0.00

   30  10.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     349.61      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   31   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     464.43      -0.00      -0.00     -75.20       0.00      -0.00       0.00

   42   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.23       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   43   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     368.91       0.00    -447.26      -0.00      -0.00       0.00      -0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     471.90       0.00       0.00      -0.00     292.91       0.00       0.00      -0.00      -0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -177.46       0.00      -0.00      -0.00    -461.94      -0.00      -0.00      -0.00      -0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      13.11      -0.00    -465.90      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -470.39       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     567.14       0.00      -0.00      -0.00    -512.15       0.00       0.00     824.95      -0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     690.79       0.00     326.72       0.00      -0.00       0.00      -0.00    -824.95

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -457.36      -0.00      -0.00    -587.78     767.83      -0.00       0.00

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -404.05      -0.00       0.00     551.38    -563.79       0.00       0.00

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          604.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   53   1.1  0.5 -0.5      -0.00     234.57       0.00       0.00      -0.00     -17.73      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00     229.71       0.00     -50.71      -0.00      -0.00      -0.00       0.00       0.00

   54   2.1  0.5 -0.5      -0.00       0.00     258.30      -0.00     119.04       0.00      -0.00      -0.00       0.00       0.00
                           -0.00     214.60      -0.00      -0.00      -0.00    -197.60       0.00       0.00      -0.00      -0.00

   55   3.1  0.5 -0.5      -2.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00     252.12       0.00      -0.00     135.68      -0.00      -0.00       0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00     197.53       0.00      -0.00    -222.95       0.00      -0.00       0.00
                          -12.75      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   57   5.1  0.5 -0.5       0.00      -0.00       0.00      10.96       0.00       0.00    -222.48       0.00       0.00       0.00
                         -234.89      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   58   6.1  0.5 -0.5    -235.23      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00     -96.89       0.00       0.00    -216.75       0.00      -0.00       0.00

   59   7.1  0.5 -0.5      -0.00      -0.00    -111.62      -0.00    -212.11       0.00      -0.00      -0.00       0.00      -0.00
                            0.00      37.27      -0.00       0.00      -0.00    -227.72      -0.00      -0.00      -0.00       0.00

   60   8.1  0.5 -0.5       0.00      -0.00      -0.00    -335.57       0.00       0.00    -182.69    -412.47       0.00      -0.00
                          302.06       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   61   9.1  0.5 -0.5    -302.06      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -260.78       0.00      -0.00     279.25     412.48      -0.00       0.00

   62  10.1  0.5 -0.5       0.00     -93.17      -0.00      -0.00       0.00     379.14      -0.00      -0.00     436.07      -0.00
                            0.00       0.00     283.62       0.00    -108.06       0.00      -0.00      -0.00      -0.00     -52.16

   63  11.1  0.5 -0.5       0.00     288.07      -0.00       0.00       0.00     141.68       0.00       0.00     191.55      -0.00
                            0.00      -0.00    -119.14       0.00    -386.24      -0.00      -0.00      -0.00      -0.00    -473.45

   64  12.1  0.5 -0.5       0.00       0.00     244.54       0.00    -293.60       0.00      -0.00       0.00       0.00     412.50
                            0.00    -318.85       0.00       0.00      -0.00    -210.56      -0.00      -0.00     412.50      -0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

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

   11   1.1  1.5  0.5      -0.00     683.38       0.00      -0.00       0.00     -51.65      -0.00       0.00      -0.00      -0.00
                            0.00       0.00    -669.22      -0.00     147.73      -0.00      -0.00       0.00      -0.00      -0.00

   12   2.1  1.5  0.5    -683.38       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     218.85      -0.00      -0.00     595.63       0.00       0.00       0.00

   13   3.1  1.5  0.5      -0.00       0.00      -0.00     185.08       0.00      -0.00    -798.62      -0.00      -0.00       0.00
                          669.22      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00    -185.08       0.00    -545.82      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00    -218.85      -0.00      -0.00      -0.00     755.84       0.00      -0.00      -0.00      -0.00

   15   5.1  1.5  0.5      -0.00      -0.00      -0.00     545.82       0.00      -0.00    -451.93      -0.00      -0.00      -0.00
                         -147.73       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   16   6.1  1.5  0.5      51.65      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -755.84       0.00      -0.00    -447.50      -0.00      -0.00       0.00

   17   7.1  1.5  0.5       0.00      -0.00     798.62       0.00     451.93       0.00       0.00       0.00       0.00      -0.00
                            0.00    -595.63      -0.00      -0.00      -0.00     447.50      -0.00      -0.00      -0.00       0.00

   18   8.1  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     349.61
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     349.61      -0.00

   19   9.1  1.5  0.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -349.61      -0.00      -0.00

   20  10.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -349.61       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   21   1.1  1.5 -0.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -338.26      -0.00       0.00      54.77       0.00      -0.00      -0.00

   22   2.1  1.5 -0.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -32.34       0.00     365.78       0.00       0.00       0.00       0.00       0.00

   23   3.1  1.5 -0.5       0.00       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      32.34      -0.00      -0.00      -0.00     266.91       0.00       0.00      -0.00      -0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          338.26      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00       0.00
                            0.00    -365.78       0.00       0.00      -0.00    -295.75       0.00       0.00       0.00       0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -266.91      -0.00     295.75      -0.00       0.00       0.00       0.00       0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.60       0.00       0.00       0.00
                          -54.77      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.01       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.04       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -174.81

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.12
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     174.81       0.00

   31   1.1  1.5 -1.5      -0.00    -591.83      -0.00       0.00      -0.00      44.73       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -579.56      -0.00     127.94      -0.00      -0.00       0.00      -0.00      -0.00

   32   2.1  1.5 -1.5     591.83       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00     189.53      -0.00      -0.00     515.83       0.00       0.00       0.00

   33   3.1  1.5 -1.5       0.00      -0.00      -0.00    -160.28      -0.00       0.00     691.62       0.00       0.00      -0.00
                          579.56      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   34   4.1  1.5 -1.5      -0.00      -0.00     160.28       0.00     472.70       0.00       0.00       0.00       0.00       0.00
                            0.00    -189.53      -0.00       0.00      -0.00     654.58       0.00      -0.00      -0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00    -472.70       0.00       0.00     391.38       0.00       0.00       0.00
                         -127.94       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   36   6.1  1.5 -1.5     -44.73       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -654.58       0.00       0.00    -387.54      -0.00      -0.00       0.00

   37   7.1  1.5 -1.5      -0.00       0.00    -691.62      -0.00    -391.38      -0.00       0.00      -0.00      -0.00       0.00
                            0.00    -515.83      -0.00      -0.00      -0.00     387.54       0.00      -0.00      -0.00       0.00

   38   8.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.77
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00     302.77      -0.00

   39   9.1  1.5 -1.5      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -302.77       0.00      -0.00

   40  10.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     302.77      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   41   1.1  0.5  0.5      -0.00     234.57       0.00       0.00      -0.00     -17.73      -0.00      -0.00       0.00       0.00
                            0.00       0.00    -229.71      -0.00      50.71       0.00       0.00       0.00      -0.00      -0.00

   42   2.1  0.5  0.5      -0.00       0.00     258.30      -0.00     119.04       0.00      -0.00      -0.00       0.00       0.00
                            0.00    -214.60       0.00       0.00       0.00     197.60      -0.00      -0.00       0.00       0.00

   43   3.1  0.5  0.5      -2.26      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -252.12      -0.00       0.00    -135.68       0.00       0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00     197.53       0.00      -0.00    -222.95       0.00      -0.00       0.00
                           12.75       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.1  0.5  0.5       0.00      -0.00       0.00      10.96       0.00       0.00    -222.48       0.00       0.00       0.00
                          234.89       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   46   6.1  0.5  0.5    -235.23      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      96.89      -0.00      -0.00     216.75      -0.00       0.00      -0.00

   47   7.1  0.5  0.5      -0.00      -0.00    -111.62      -0.00    -212.11       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00     -37.27       0.00      -0.00       0.00     227.72       0.00       0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00      -0.00      -0.00    -335.57       0.00       0.00    -182.69    -412.47       0.00      -0.00
                         -302.06      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   49   9.1  0.5  0.5    -302.06      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     260.78      -0.00       0.00    -279.25    -412.48       0.00      -0.00

   50  10.1  0.5  0.5       0.00     -93.17      -0.00      -0.00       0.00     379.14      -0.00      -0.00     436.07      -0.00
                           -0.00      -0.00    -283.62      -0.00     108.06      -0.00       0.00       0.00       0.00      52.16

   51  11.1  0.5  0.5       0.00     288.07      -0.00       0.00       0.00     141.68       0.00       0.00     191.55      -0.00
                           -0.00       0.00     119.14      -0.00     386.24       0.00       0.00       0.00       0.00     473.45

   52  12.1  0.5  0.5       0.00       0.00     244.54       0.00    -293.60       0.00      -0.00       0.00       0.00     412.50
                           -0.00     318.85      -0.00      -0.00       0.00     210.56       0.00       0.00    -412.50       0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     464.43      -0.00      -0.00     -75.20       0.00      -0.00       0.00

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -9.23       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     368.91       0.00    -447.26      -0.00      -0.00       0.00      -0.00      -0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     471.90       0.00       0.00      -0.00     292.91       0.00       0.00      -0.00      -0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -177.46       0.00      -0.00      -0.00    -461.94      -0.00      -0.00      -0.00      -0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      13.11      -0.00    -465.90      -0.00      -0.00      -0.00      -0.00      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -470.39       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     567.14       0.00      -0.00      -0.00    -512.15       0.00       0.00     824.95      -0.00

   61   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     690.79       0.00     326.72       0.00      -0.00       0.00      -0.00    -824.95

   62  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -457.36      -0.00      -0.00    -587.78     767.83      -0.00       0.00

   63  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -404.05      -0.00       0.00     551.38    -563.79       0.00       0.00

   64  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          604.15      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

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

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   21   1.1  1.5 -0.5      -0.00     591.83       0.00      -0.00       0.00     -44.73      -0.00       0.00      -0.00      -0.00
                            0.00       0.00    -579.56      -0.00     127.94      -0.00      -0.00       0.00      -0.00      -0.00

   22   2.1  1.5 -0.5    -591.83       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     189.53      -0.00      -0.00     515.83       0.00       0.00       0.00

   23   3.1  1.5 -0.5      -0.00       0.00      -0.00     160.28       0.00      -0.00    -691.62      -0.00      -0.00       0.00
                          579.56      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   24   4.1  1.5 -0.5       0.00       0.00    -160.28       0.00    -472.70      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00    -189.53      -0.00      -0.00      -0.00     654.58       0.00      -0.00      -0.00      -0.00

   25   5.1  1.5 -0.5      -0.00      -0.00      -0.00     472.70       0.00      -0.00    -391.38      -0.00      -0.00      -0.00
                         -127.94       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00

   26   6.1  1.5 -0.5      44.73      -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -654.58       0.00      -0.00    -387.54      -0.00      -0.00       0.00

   27   7.1  1.5 -0.5       0.00      -0.00     691.62       0.00     391.38       0.00       0.00       0.00       0.00      -0.00
                            0.00    -515.83      -0.00      -0.00      -0.00     387.54      -0.00      -0.00      -0.00       0.00

   28   8.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00     302.77
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00     302.77      -0.00

   29   9.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -302.77      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00    -302.77       0.00      -0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   31   1.1  1.5 -1.5       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00   -1014.78      -0.00       0.00     164.31       0.00      -0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -97.02       0.00    1097.35       0.00       0.00       0.00       0.00       0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.08       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      97.02      -0.00      -0.00      -0.00     800.72       0.00       0.00      -0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1014.78      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00       0.00
                            0.00   -1097.35       0.00       0.00      -0.00    -887.26       0.00       0.00       0.00       0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.52       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -800.72      -0.00     887.26      -0.00       0.00       0.00       0.00       0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.60       0.00       0.00       0.00
                         -164.31      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.01       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.04       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -524.42

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8880.12
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00     524.42       0.00

   41   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   43   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   53   1.1  0.5 -0.5      -0.00     406.28       0.00       0.00      -0.00     -30.71      -0.00      -0.00       0.00       0.00
                            0.00       0.00    -397.87      -0.00      87.83       0.00       0.00       0.00      -0.00      -0.00

   54   2.1  0.5 -0.5      -0.00       0.00     447.39      -0.00     206.19       0.00      -0.00      -0.00       0.00       0.00
                            0.00    -371.69       0.00       0.00       0.00     342.25      -0.00      -0.00       0.00       0.00

   55   3.1  0.5 -0.5      -3.92      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00    -436.68      -0.00       0.00    -235.00       0.00       0.00      -0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00     342.12       0.00      -0.00    -386.17       0.00      -0.00       0.00
                           22.09       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   57   5.1  0.5 -0.5       0.00      -0.00       0.00      18.98       0.00       0.00    -385.34       0.00       0.00       0.00
                          406.85       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   58   6.1  0.5 -0.5    -407.43      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00     167.82      -0.00      -0.00     375.43      -0.00       0.00      -0.00

   59   7.1  0.5 -0.5      -0.00      -0.00    -193.32      -0.00    -367.39       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00     -64.56       0.00      -0.00       0.00     394.42       0.00       0.00       0.00      -0.00

   60   8.1  0.5 -0.5       0.00      -0.00      -0.00    -581.23       0.00       0.00    -316.42    -714.43       0.00      -0.00
                         -523.18      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   61   9.1  0.5 -0.5    -523.18      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     451.68      -0.00       0.00    -483.67    -714.43       0.00      -0.00

   62  10.1  0.5 -0.5       0.00    -161.37      -0.00      -0.00       0.00     656.69      -0.00      -0.00     755.30      -0.00
                           -0.00      -0.00    -491.24      -0.00     187.16      -0.00       0.00       0.00       0.00      90.34

   63  11.1  0.5 -0.5       0.00     498.95      -0.00       0.00       0.00     245.40       0.00       0.00     331.78      -0.00
                           -0.00       0.00     206.36      -0.00     668.99       0.00       0.00       0.00       0.00     820.04

   64  12.1  0.5 -0.5       0.00       0.00     423.55       0.00    -508.53       0.00      -0.00       0.00       0.00     714.47
                           -0.00     552.27      -0.00      -0.00       0.00     364.69       0.00       0.00    -714.47       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5      -0.00      -0.00      -3.92       0.00       0.00    -407.43      -0.00       0.00    -523.18       0.00
                            0.00       0.00      -0.00      22.09     406.85      -0.00      -0.00    -523.18      -0.00      -0.00

    2   2.1  1.5  1.5     406.28       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -161.37
                            0.00    -371.69      -0.00       0.00       0.00      -0.00     -64.56      -0.00       0.00      -0.00

    3   3.1  1.5  1.5       0.00     447.39      -0.00       0.00       0.00      -0.00    -193.32      -0.00       0.00      -0.00
                         -397.87       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    -491.24

    4   4.1  1.5  1.5       0.00      -0.00      -0.00     342.12      18.98      -0.00      -0.00    -581.23       0.00      -0.00
                           -0.00       0.00    -436.68       0.00       0.00     167.82      -0.00       0.00     451.68      -0.00

    5   5.1  1.5  1.5      -0.00     206.19      -0.00       0.00       0.00      -0.00    -367.39       0.00      -0.00       0.00
                           87.83       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00     187.16

    6   6.1  1.5  1.5     -30.71       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     656.69
                            0.00     342.25       0.00      -0.00      -0.00      -0.00     394.42      -0.00       0.00      -0.00

    7   7.1  1.5  1.5      -0.00      -0.00      -0.00    -386.17    -385.34      -0.00      -0.00    -316.42       0.00      -0.00
                            0.00      -0.00    -235.00      -0.00      -0.00     375.43       0.00      -0.00    -483.67       0.00

    8   8.1  1.5  1.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -714.43       0.00      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00    -714.43       0.00

    9   9.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     755.30
                           -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      90.34

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       9.23       0.00       0.00       0.00       0.00     470.39       0.00      -0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -471.90     177.46      -0.00      -0.00    -567.14       0.00      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -368.91      -0.00      -0.00     -13.11       0.00      -0.00    -690.79       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -464.43       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     457.36

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     447.26       0.00       0.00     465.90      -0.00       0.00    -326.72       0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -292.91     461.94       0.00       0.00     512.15      -0.00       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           75.20      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     587.78

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -767.83

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -824.95       0.00       0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     824.95      -0.00

   21   1.1  1.5 -0.5      -0.00      -0.00      -2.26       0.00       0.00    -235.23      -0.00       0.00    -302.06       0.00
                           -0.00      -0.00       0.00     -12.75    -234.89       0.00       0.00     302.06       0.00       0.00

   22   2.1  1.5 -0.5     234.57       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -93.17
                           -0.00     214.60       0.00      -0.00      -0.00       0.00      37.27       0.00      -0.00       0.00

   23   3.1  1.5 -0.5       0.00     258.30      -0.00       0.00       0.00      -0.00    -111.62      -0.00       0.00      -0.00
                          229.71      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     283.62

   24   4.1  1.5 -0.5       0.00      -0.00      -0.00     197.53      10.96      -0.00      -0.00    -335.57       0.00      -0.00
                            0.00      -0.00     252.12      -0.00      -0.00     -96.89       0.00      -0.00    -260.78       0.00

   25   5.1  1.5 -0.5      -0.00     119.04      -0.00       0.00       0.00      -0.00    -212.11       0.00      -0.00       0.00
                          -50.71      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    -108.06

   26   6.1  1.5 -0.5     -17.73       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     379.14
                           -0.00    -197.60      -0.00       0.00       0.00       0.00    -227.72       0.00      -0.00       0.00

   27   7.1  1.5 -0.5      -0.00      -0.00      -0.00    -222.95    -222.48      -0.00      -0.00    -182.69       0.00      -0.00
                           -0.00       0.00     135.68       0.00       0.00    -216.75      -0.00       0.00     279.25      -0.00

   28   8.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -412.47       0.00      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00     412.48      -0.00

   29   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00     436.07
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00     -52.16

   31   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   41   1.1  0.5  0.5    5319.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      13.14       0.00      -0.00      -0.00      -0.00     669.65      -0.00       0.00      -0.00

   42   2.1  0.5  0.5       0.00    5319.26       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -13.14      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00    -463.89

   43   3.1  0.5  0.5       0.00       0.00    5319.24       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -472.56     676.71      -0.00      -0.00    -324.70      -0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00    5319.32       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     472.56       0.00      -0.00     633.97       0.00      -0.00     351.33      -0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00    5319.49       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -676.71       0.00       0.00    -195.86      -0.00      -0.00     406.02       0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    5319.54       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -633.97     195.86      -0.00       0.00     427.62      -0.00       0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    5319.51       0.00       0.00       0.00
                         -669.65      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00    -242.16

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7887.91       0.00       0.00
                            0.00      -0.00     324.70       0.00       0.00    -427.62      -0.00      -0.00     -55.06      -0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7888.08       0.00
                           -0.00       0.00       0.00    -351.33    -406.02       0.00       0.00      55.06       0.00      -0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7888.27
                            0.00     463.89       0.00       0.00      -0.00      -0.00     242.16       0.00       0.00       0.00

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -330.28       0.00      -0.00       0.00       0.00     348.72       0.00       0.00      -0.00

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -424.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -65.14

   53   1.1  0.5 -0.5       0.00       0.00      -6.44      -0.00       0.00    -669.75      -0.00      -0.00     424.47      -0.00
                            0.00       0.00      -0.00     -36.31    -668.79      -0.00      -0.00    -424.48      -0.00      -0.00

   54   2.1  0.5 -0.5      -0.00       0.00       0.00    -523.77    -617.62       0.00      -0.00     337.07       0.00       0.00
                           -0.00      -0.00     508.67      -0.00      -0.00    -656.60       0.00       0.00    -320.41       0.00

   55   3.1  0.5 -0.5       6.44      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00    -519.75
                            0.00    -508.67      -0.00       0.00      -0.00       0.00    -637.02      -0.00       0.00       0.00

   56   4.1  0.5 -0.5       0.00     523.77       0.00      -0.00       0.00       0.00    -667.05      -0.00       0.00      -0.00
                           36.31       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      39.39

   57   5.1  0.5 -0.5      -0.00     617.62       0.00      -0.00       0.00       0.00    -144.18       0.00      -0.00       0.00
                          668.79       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -424.69

   58   6.1  0.5 -0.5     669.75      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     175.72
                            0.00     656.60      -0.00       0.00       0.00      -0.00     160.82      -0.00       0.00      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00     667.05     144.18       0.00       0.00     417.94       0.00       0.00
                            0.00      -0.00     637.02      -0.00       0.00    -160.82      -0.00       0.00     430.84       0.00

   60   8.1  0.5 -0.5       0.00    -337.07      -0.00       0.00      -0.00       0.00    -417.94       0.00      -0.00       0.00
                          424.48      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00    -109.45

   61   9.1  0.5 -0.5    -424.47      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     -44.28
                            0.00     320.41      -0.00       0.00       0.00      -0.00    -430.84      -0.00      -0.00      -0.00

   62  10.1  0.5 -0.5       0.00      -0.00     519.75       0.00      -0.00    -175.72      -0.00      -0.00      44.28       0.00
                            0.00      -0.00      -0.00     -39.39     424.69       0.00      -0.00     109.45       0.00      -0.00

   63  11.1  0.5 -0.5      -0.00      -0.00     232.77       0.00       0.00     386.44      -0.00      -0.00    -100.77      -0.00
                           -0.00      -0.00      -0.00    -567.79     -15.73      -0.00      -0.00     -12.05      -0.00      -0.00

   64  12.1  0.5 -0.5       0.00       0.00       0.00    -305.32     441.70       0.00       0.00     -55.03      -0.00      -0.00
                            0.00      -0.00    -332.89       0.00       0.00    -421.31       0.00       0.00     -55.03      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5     498.95       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     552.27       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00     423.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          206.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00    -508.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          668.99       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5     245.40       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     364.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5     331.78       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -714.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00     714.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          820.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -2.26       0.00       0.00    -235.23      -0.00       0.00
                           -0.00    -604.15       0.00       0.00      -0.00      12.75     234.89      -0.00      -0.00    -302.06

   12   2.1  1.5  0.5       0.00       0.00     234.57       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00    -214.60      -0.00       0.00       0.00      -0.00     -37.27      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00     258.30      -0.00       0.00       0.00      -0.00    -111.62      -0.00
                            0.00       0.00    -229.71       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00     197.53      10.96      -0.00      -0.00    -335.57
                          404.05       0.00      -0.00       0.00    -252.12       0.00       0.00      96.89      -0.00       0.00

   15   5.1  1.5  0.5       0.00       0.00      -0.00     119.04      -0.00       0.00       0.00      -0.00    -212.11       0.00
                            0.00       0.00      50.71       0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   16   6.1  1.5  0.5       0.00       0.00     -17.73       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     197.60       0.00      -0.00      -0.00      -0.00     227.72      -0.00

   17   7.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00    -222.95    -222.48      -0.00      -0.00    -182.69
                         -551.38       0.00       0.00      -0.00    -135.68      -0.00      -0.00     216.75       0.00      -0.00

   18   8.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -412.47
                          563.79      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       9.23       0.00       0.00       0.00       0.00     470.39       0.00

   22   2.1  1.5 -0.5     288.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -318.85      -0.00      -0.00      -0.00    -471.90     177.46      -0.00      -0.00    -567.14

   23   3.1  1.5 -0.5      -0.00     244.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -119.14       0.00       0.00       0.00    -368.91      -0.00      -0.00     -13.11       0.00      -0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -464.43       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   25   5.1  1.5 -0.5       0.00    -293.60       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -386.24      -0.00       0.00       0.00     447.26       0.00       0.00     465.90      -0.00       0.00

   26   6.1  1.5 -0.5     141.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -210.56       0.00      -0.00       0.00    -292.91     461.94       0.00       0.00     512.15

   27   7.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      75.20      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00

   29   9.1  1.5 -0.5     191.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     412.50       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00    -824.95

   30  10.1  1.5 -0.5      -0.00     412.50       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -473.45      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   31   1.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -3.92       0.00       0.00    -407.43      -0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00     -22.09    -406.85       0.00       0.00     523.18

   32   2.1  1.5 -1.5       0.00       0.00     406.28       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00     371.69       0.00      -0.00      -0.00       0.00      64.56       0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00     447.39      -0.00       0.00       0.00      -0.00    -193.32      -0.00
                            0.00       0.00     397.87      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00     342.12      18.98      -0.00      -0.00    -581.23
                            0.00       0.00       0.00      -0.00     436.68      -0.00      -0.00    -167.82       0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00      -0.00     206.19      -0.00       0.00       0.00      -0.00    -367.39       0.00
                            0.00       0.00     -87.83      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   36   6.1  1.5 -1.5       0.00       0.00     -30.71       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -342.25      -0.00       0.00       0.00       0.00    -394.42       0.00

   37   7.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00    -386.17    -385.34      -0.00      -0.00    -316.42
                            0.00       0.00      -0.00       0.00     235.00       0.00       0.00    -375.43      -0.00       0.00

   38   8.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -714.43
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   41   1.1  0.5  0.5       0.00       0.00       0.00      -0.00       6.44       0.00      -0.00     669.75       0.00       0.00
                           -0.00     424.50      -0.00       0.00      -0.00     -36.31    -668.79      -0.00      -0.00    -424.48

   42   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     523.77     617.62      -0.00       0.00    -337.07
                          330.28      -0.00      -0.00       0.00     508.67      -0.00      -0.00    -656.60       0.00       0.00

   43   3.1  0.5  0.5       0.00       0.00      -6.44       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00    -508.67       0.00       0.00      -0.00       0.00    -637.02      -0.00

   44   4.1  0.5  0.5       0.00       0.00      -0.00    -523.77      -0.00      -0.00      -0.00      -0.00     667.05       0.00
                            0.00      -0.00      36.31       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00    -617.62      -0.00       0.00       0.00      -0.00     144.18      -0.00
                           -0.00      -0.00     668.79       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   46   6.1  0.5  0.5       0.00       0.00    -669.75       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     656.60      -0.00       0.00       0.00       0.00     160.82      -0.00

   47   7.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00    -667.05    -144.18      -0.00       0.00    -417.94
                         -348.72      -0.00       0.00      -0.00     637.02      -0.00       0.00    -160.82       0.00       0.00

   48   8.1  0.5  0.5       0.00       0.00      -0.00     337.07       0.00      -0.00       0.00      -0.00     417.94       0.00
                           -0.00      -0.00     424.48      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   49   9.1  0.5  0.5       0.00       0.00     424.47       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                           -0.00      -0.00       0.00     320.41      -0.00       0.00       0.00      -0.00    -430.84      -0.00

   50  10.1  0.5  0.5       0.00       0.00      -0.00       0.00    -519.75      -0.00       0.00     175.72       0.00       0.00
                            0.00      65.14       0.00      -0.00      -0.00     -39.39     424.69       0.00      -0.00     109.45

   51  11.1  0.5  0.5    7893.31       0.00       0.00       0.00    -232.77      -0.00      -0.00    -386.44       0.00       0.00
                           -0.00      88.68      -0.00      -0.00      -0.00    -567.79     -15.73      -0.00      -0.00     -12.05

   52  12.1  0.5  0.5       0.00    7892.74      -0.00      -0.00      -0.00     305.32    -441.70      -0.00      -0.00      55.03
                          -88.68       0.00       0.00      -0.00    -332.89       0.00       0.00    -421.31       0.00       0.00

   53   1.1  0.5 -0.5       0.00      -0.00    5319.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     -13.14      -0.00       0.00       0.00       0.00    -669.65       0.00

   54   2.1  0.5 -0.5       0.00      -0.00       0.00    5319.26       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      13.14       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   55   3.1  0.5 -0.5    -232.77      -0.00       0.00       0.00    5319.24       0.00       0.00       0.00       0.00       0.00
                            0.00     332.89       0.00      -0.00      -0.00     472.56    -676.71       0.00       0.00     324.70

   56   4.1  0.5 -0.5      -0.00     305.32       0.00       0.00       0.00    5319.32       0.00       0.00       0.00       0.00
                          567.79      -0.00      -0.00       0.00    -472.56      -0.00       0.00    -633.97      -0.00       0.00

   57   5.1  0.5 -0.5      -0.00    -441.70       0.00       0.00       0.00       0.00    5319.49       0.00       0.00       0.00
                           15.73      -0.00      -0.00       0.00     676.71      -0.00      -0.00     195.86       0.00       0.00

   58   6.1  0.5 -0.5    -386.44      -0.00       0.00       0.00       0.00       0.00       0.00    5319.54       0.00       0.00
                            0.00     421.31      -0.00      -0.00      -0.00     633.97    -195.86       0.00      -0.00    -427.62

   59   7.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    5319.51       0.00
                            0.00      -0.00     669.65       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   60   8.1  0.5 -0.5       0.00      55.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7887.91
                           12.05      -0.00      -0.00       0.00    -324.70      -0.00      -0.00     427.62       0.00       0.00

   61   9.1  0.5 -0.5     100.77       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      55.03       0.00      -0.00      -0.00     351.33     406.02      -0.00      -0.00     -55.06

   62  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -463.89      -0.00      -0.00       0.00       0.00    -242.16      -0.00

   63  11.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     330.28      -0.00       0.00      -0.00      -0.00    -348.72      -0.00

   64  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     424.50      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00


   Nr   State  S   Sz       61         62         63         64

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   11   1.1  1.5  0.5    -302.06       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   12   2.1  1.5  0.5      -0.00     -93.17     288.07       0.00
                            0.00      -0.00       0.00     318.85

   13   3.1  1.5  0.5       0.00      -0.00      -0.00     244.54
                           -0.00    -283.62     119.14      -0.00

   14   4.1  1.5  0.5       0.00      -0.00       0.00       0.00
                          260.78      -0.00      -0.00      -0.00

   15   5.1  1.5  0.5      -0.00       0.00       0.00    -293.60
                           -0.00     108.06     386.24       0.00

   16   6.1  1.5  0.5       0.00     379.14     141.68       0.00
                            0.00      -0.00       0.00     210.56

   17   7.1  1.5  0.5       0.00      -0.00       0.00      -0.00
                         -279.25       0.00       0.00       0.00

   18   8.1  1.5  0.5       0.00      -0.00       0.00       0.00
                         -412.48       0.00       0.00       0.00

   19   9.1  1.5  0.5       0.00     436.07     191.55       0.00
                            0.00       0.00       0.00    -412.50

   20  10.1  1.5  0.5       0.00      -0.00      -0.00     412.50
                           -0.00      52.16     473.45       0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -604.15

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

   23   3.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -690.79       0.00       0.00       0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00     457.36     404.05       0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -326.72       0.00       0.00       0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     587.78    -551.38       0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00    -767.83     563.79      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00
                          824.95      -0.00      -0.00      -0.00

   31   1.1  1.5 -1.5    -523.18       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   32   2.1  1.5 -1.5      -0.00    -161.37     498.95       0.00
                           -0.00       0.00      -0.00    -552.27

   33   3.1  1.5 -1.5       0.00      -0.00      -0.00     423.55
                            0.00     491.24    -206.36       0.00

   34   4.1  1.5 -1.5       0.00      -0.00       0.00       0.00
                         -451.68       0.00       0.00       0.00

   35   5.1  1.5 -1.5      -0.00       0.00       0.00    -508.53
                            0.00    -187.16    -668.99      -0.00

   36   6.1  1.5 -1.5       0.00     656.69     245.40       0.00
                           -0.00       0.00      -0.00    -364.69

   37   7.1  1.5 -1.5       0.00      -0.00       0.00      -0.00
                          483.67      -0.00      -0.00      -0.00

   38   8.1  1.5 -1.5       0.00      -0.00       0.00       0.00
                          714.43      -0.00      -0.00      -0.00

   39   9.1  1.5 -1.5       0.00     755.30     331.78       0.00
                           -0.00      -0.00      -0.00     714.47

   40  10.1  1.5 -1.5       0.00      -0.00      -0.00     714.47
                            0.00     -90.34    -820.04      -0.00

   41   1.1  0.5  0.5    -424.47       0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00

   42   2.1  0.5  0.5      -0.00      -0.00      -0.00       0.00
                         -320.41       0.00       0.00       0.00

   43   3.1  0.5  0.5       0.00     519.75     232.77       0.00
                            0.00       0.00       0.00     332.89

   44   4.1  0.5  0.5      -0.00       0.00       0.00    -305.32
                           -0.00      39.39     567.79      -0.00

   45   5.1  0.5  0.5       0.00      -0.00       0.00     441.70
                           -0.00    -424.69      15.73      -0.00

   46   6.1  0.5  0.5      -0.00    -175.72     386.44       0.00
                            0.00      -0.00       0.00     421.31

   47   7.1  0.5  0.5      -0.00      -0.00      -0.00       0.00
                          430.84       0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00      -0.00      -0.00     -55.03
                            0.00    -109.45      12.05      -0.00

   49   9.1  0.5  0.5       0.00      44.28    -100.77      -0.00
                            0.00      -0.00       0.00      55.03

   50  10.1  0.5  0.5     -44.28       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00

   51  11.1  0.5  0.5     100.77       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00

   52  12.1  0.5  0.5       0.00       0.00      -0.00       0.00
                          -55.03      -0.00      -0.00      -0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -424.50

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     463.89    -330.28       0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00
                         -351.33       0.00      -0.00       0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00
                         -406.02      -0.00       0.00       0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     242.16     348.72       0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           55.06       0.00       0.00       0.00

   61   9.1  0.5 -0.5    7888.08       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   62  10.1  0.5 -0.5       0.00    7888.27       0.00       0.00
                           -0.00      -0.00      -0.00     -65.14

   63  11.1  0.5 -0.5       0.00       0.00    7893.31       0.00
                           -0.00       0.00       0.00     -88.68

   64  12.1  0.5 -0.5       0.00       0.00       0.00    7892.74
                           -0.00      65.14      88.68      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02425874    -0.00702537    -1541.89      0.00000000        0.00      0.0000
     2  -110.02425874    -0.00702537    -1541.89      0.00000000        0.00      0.0000
     3  -110.02425867    -0.00702530    -1541.88      0.00000006        0.01      0.0000
     4  -110.02425867    -0.00702530    -1541.88      0.00000006        0.01      0.0000
     5  -110.02425798    -0.00702461    -1541.72      0.00000075        0.17      0.0000
     6  -110.02425798    -0.00702461    -1541.72      0.00000075        0.17      0.0000
     7  -110.02425778    -0.00702441    -1541.68      0.00000096        0.21      0.0000
     8  -110.02425778    -0.00702441    -1541.68      0.00000096        0.21      0.0000
     9  -110.02425719    -0.00702382    -1541.55      0.00000155        0.34      0.0000
    10  -110.02425719    -0.00702382    -1541.55      0.00000155        0.34      0.0000
    11  -110.01799249    -0.00075912     -166.61      0.00626625     1375.28      0.1705
    12  -110.01799249    -0.00075912     -166.61      0.00626625     1375.28      0.1705
    13  -110.01799181    -0.00075844     -166.46      0.00626693     1375.43      0.1705
    14  -110.01799181    -0.00075844     -166.46      0.00626693     1375.43      0.1705
    15  -110.01799146    -0.00075809     -166.38      0.00626728     1375.51      0.1705
    16  -110.01799146    -0.00075809     -166.38      0.00626728     1375.51      0.1705
    17  -110.01799136    -0.00075799     -166.36      0.00626738     1375.53      0.1705
    18  -110.01799136    -0.00075799     -166.36      0.00626738     1375.53      0.1705
    19  -110.01275205     0.00448132      983.53      0.01150668     2525.43      0.3131
    20  -110.01275205     0.00448132      983.53      0.01150668     2525.43      0.3131
    21  -110.01275168     0.00448169      983.62      0.01150706     2525.51      0.3131
    22  -110.01275168     0.00448169      983.62      0.01150706     2525.51      0.3131
    23  -110.01275120     0.00448217      983.72      0.01150754     2525.61      0.3131
    24  -110.01275120     0.00448217      983.72      0.01150754     2525.61      0.3131
    25  -110.00952301     0.00771036     1692.23      0.01473573     3234.12      0.4010
    26  -110.00952301     0.00771036     1692.23      0.01473573     3234.12      0.4010
    27  -110.00952229     0.00771108     1692.39      0.01473644     3234.28      0.4010
    28  -110.00952229     0.00771108     1692.39      0.01473644     3234.28      0.4010
    29  -109.99681508     0.02041829     4481.30      0.02744366     6023.19      0.7468
    30  -109.99681508     0.02041829     4481.30      0.02744366     6023.19      0.7468
    31  -109.99681502     0.02041834     4481.31      0.02744371     6023.20      0.7468
    32  -109.99681502     0.02041834     4481.31      0.02744371     6023.20      0.7468
    33  -109.99681440     0.02041897     4481.45      0.02744434     6023.34      0.7468
    34  -109.99681440     0.02041897     4481.45      0.02744434     6023.34      0.7468
    35  -109.99681423     0.02041913     4481.48      0.02744450     6023.37      0.7468
    36  -109.99681423     0.02041913     4481.48      0.02744450     6023.37      0.7468
    37  -109.99126614     0.02596723     5699.15      0.03299260     7241.04      0.8978
    38  -109.99126614     0.02596723     5699.15      0.03299260     7241.04      0.8978
    39  -109.99126390     0.02596947     5699.64      0.03299484     7241.53      0.8978
    40  -109.99126390     0.02596947     5699.64      0.03299484     7241.53      0.8978
    41  -109.99125856     0.02597480     5700.81      0.03300017     7242.70      0.8980
    42  -109.99125856     0.02597480     5700.81      0.03300017     7242.70      0.8980
    43  -109.98298993     0.03424344     7515.57      0.04126881     9057.46      1.1230
    44  -109.98298993     0.03424344     7515.57      0.04126881     9057.46      1.1230
    45  -109.98298893     0.03424444     7515.79      0.04126981     9057.68      1.1230
    46  -109.98298893     0.03424444     7515.79      0.04126981     9057.68      1.1230
    47  -109.98298658     0.03424679     7516.30      0.04127216     9058.19      1.1231
    48  -109.98298658     0.03424679     7516.30      0.04127216     9058.19      1.1231
    49  -109.98021495     0.03701842     8124.60      0.04404379     9666.49      1.1985
    50  -109.98021495     0.03701842     8124.60      0.04404379     9666.49      1.1985
    51  -109.98020445     0.03702891     8126.91      0.04405428     9668.80      1.1988
    52  -109.98020445     0.03702891     8126.91      0.04405428     9668.80      1.1988
    53  -109.97384458     0.04338879     9522.74      0.05041416    11064.63      1.3718
    54  -109.97384458     0.04338879     9522.74      0.05041416    11064.63      1.3718
    55  -109.97384184     0.04339153     9523.34      0.05041690    11065.23      1.3719
    56  -109.97384184     0.04339153     9523.34      0.05041690    11065.23      1.3719
    57  -109.97279048     0.04444289     9754.09      0.05146826    11295.98      1.4005
    58  -109.97279048     0.04444289     9754.09      0.05146826    11295.98      1.4005
    59  -109.97260971     0.04462366     9793.76      0.05164903    11335.65      1.4054
    60  -109.97260971     0.04462366     9793.76      0.05164903    11335.65      1.4054
    61  -109.97260653     0.04462684     9794.46      0.05165221    11336.35      1.4055
    62  -109.97260653     0.04462684     9794.46      0.05165221    11336.35      1.4055
    63  -109.97259932     0.04463405     9796.04      0.05165942    11337.93      1.4057
    64  -109.97259932     0.04463405     9796.04      0.05165942    11337.93      1.4057


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.030405890  -0.023796688  -0.001648675   0.592803958   0.004853268  -0.032318137  -0.000159607  -0.053841834
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.062714063   0.080132030  -0.058662967  -0.000163150   0.138538088   0.020804494  -0.045486519   0.000134838
                        -0.233477808   0.298325065   0.085844970   0.000238810   0.094118591   0.014133959  -0.388896976   0.001152651

    3    3.1  1.5  1.5  -0.209785929   0.268052830  -0.060541118  -0.000168287  -0.005151534  -0.000773632   0.422685087  -0.001252798
                         0.056350222  -0.072000719  -0.041371341  -0.000115060   0.007582817   0.001138724  -0.049438475   0.000146553

    4    4.1  1.5  1.5   0.000000002  -0.000000002   0.000000002   0.000000000  -0.000000002  -0.000000000   0.000000009   0.000000000
                        -0.023212086  -0.018166586  -0.001409980   0.506976474  -0.016020309   0.106679969  -0.000612031  -0.206490715

    5    5.1  1.5  1.5  -0.130542755   0.166800319   0.019578048   0.000054470   0.111876857   0.016800734  -0.358060677   0.001061261
                         0.035064858  -0.044803639   0.013378843   0.000037209  -0.164677407  -0.024729878   0.041879816  -0.000124147

    6    6.1  1.5  1.5   0.035432875  -0.045273868   0.002478080   0.000006892  -0.075821791  -0.011386284  -0.043338873   0.000128472
                         0.131912848  -0.168550937  -0.003626321  -0.000010151  -0.051511037  -0.007735481  -0.370535202   0.001098248

    7    7.1  1.5  1.5   0.000000083  -0.000000106   0.000000019   0.000000000   0.000000035   0.000000005  -0.000000004   0.000000000
                         0.131814387   0.103161802   0.000106740  -0.038390053  -0.064587202   0.430089336   0.000397484   0.134098731

    8    8.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000141  -0.000000110  -0.000000000   0.000000077   0.000000010  -0.000000069  -0.000000000  -0.000000127

    9    9.1  1.5  1.5  -0.000000044   0.000000056   0.000000013   0.000000000   0.000000472   0.000000071   0.000000059  -0.000000000
                        -0.000000163   0.000000208  -0.000000019  -0.000000000   0.000000321   0.000000048   0.000000507  -0.000000002

   10   10.1  1.5  1.5   0.000000101  -0.000000129  -0.000000229  -0.000000001  -0.000000338  -0.000000051   0.000000188  -0.000000001
                        -0.000000027   0.000000035  -0.000000156  -0.000000000   0.000000497   0.000000075  -0.000000022   0.000000000

   11    1.1  1.5  0.5  -0.091843785   0.117352130  -0.023721913  -0.000065974  -0.126167708  -0.018946813   0.004343341  -0.000012875
                        -0.341924688   0.436892475   0.034713670   0.000096665  -0.085714533  -0.012871874   0.037134346  -0.000110053

   12    2.1  1.5  0.5   0.203932854   0.159603899   0.000863639  -0.310548769  -0.056672502   0.377384911  -0.000172804  -0.058314996
                        -0.000000119   0.000000153  -0.000000030  -0.000000000  -0.000000019  -0.000000003  -0.000000007  -0.000000000

   13    3.1  1.5  0.5  -0.000000132   0.000000169  -0.000000029  -0.000000000  -0.000000040  -0.000000006   0.000000012  -0.000000000
                        -0.190962929  -0.149453097   0.000880281  -0.316501843   0.047127637  -0.313825307  -0.000732560  -0.247158312

   14    4.1  1.5  0.5   0.214598392  -0.274201949  -0.012555641  -0.000034993  -0.258005227  -0.038745038  -0.106582906   0.000315928
                        -0.057642891   0.073652410  -0.008580015  -0.000023862   0.379771402   0.057030899   0.012466246  -0.000036954

   15    5.1  1.5  0.5   0.000000038  -0.000000048   0.000000011   0.000000000  -0.000000025  -0.000000004   0.000000012  -0.000000000
                         0.046559953   0.036439118  -0.000795735   0.286111785   0.031790602  -0.211695208  -0.000809132  -0.272987582

   16    6.1  1.5  0.5   0.053449595   0.041831285   0.000656293  -0.235981327   0.063344232  -0.421812260   0.000380301   0.128316469
                        -0.000000025   0.000000032  -0.000000004   0.000000000   0.000000017   0.000000003   0.000000009   0.000000000

   17    7.1  1.5  0.5  -0.011488351   0.014679113  -0.159130369  -0.000442557  -0.045884262  -0.006890542   0.402877020  -0.001194072
                         0.003085857  -0.003942911  -0.108743232  -0.000302431   0.067539455   0.010142511  -0.047121666   0.000139685

   18    8.1  1.5  0.5  -0.000000057   0.000000073  -0.000000176  -0.000000000  -0.000000112  -0.000000017   0.000000919  -0.000000003
                         0.000000015  -0.000000020  -0.000000120  -0.000000000   0.000000164   0.000000025  -0.000000108   0.000000000

   19    9.1  1.5  0.5  -0.000000139  -0.000000109   0.000000000  -0.000000173  -0.000000040   0.000000264   0.000000001   0.000000238
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   20   10.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000098  -0.000000076  -0.000000000   0.000000027  -0.000000073   0.000000488  -0.000000001  -0.000000189

   21    1.1  1.5 -0.5   0.452378776   0.354044875  -0.000117033   0.042044834  -0.022905608   0.152529577  -0.000110803  -0.037387488
                        -0.000000287   0.000000368  -0.000000068  -0.000000000  -0.000000015  -0.000000002  -0.000000003  -0.000000000

   22    2.1  1.5 -0.5   0.041403288  -0.052902480  -0.175213221  -0.000487294   0.312161028   0.046877737  -0.006774510   0.000020082
                         0.154140106  -0.196951609   0.256399815   0.000713033   0.212072779   0.031847296  -0.057920159   0.000171633

   23    3.1  1.5 -0.5  -0.144336795   0.184425690   0.261314879   0.000726807  -0.176355239  -0.026483509  -0.245484860   0.000727599
                         0.038770065  -0.049537916   0.178571976   0.000496635   0.259586504   0.038982534   0.028712622  -0.000085114

   24    4.1  1.5 -0.5  -0.000000178   0.000000228  -0.000000042  -0.000000000   0.000000027   0.000000004  -0.000000002   0.000000000
                        -0.283921444  -0.222205249   0.000042355  -0.015207261  -0.068947091   0.459122004   0.000318082   0.107309474

   25    5.1  1.5 -0.5   0.035191678  -0.044966066  -0.236223795  -0.000656992  -0.118962869  -0.017864820  -0.271139246   0.000803652
                        -0.009452785   0.012078166  -0.161425749  -0.000448949   0.175107672   0.026296209   0.031713233  -0.000094009

   26    6.1  1.5 -0.5   0.010851561  -0.013865433  -0.133141885  -0.000370287  -0.348909946  -0.052396383   0.014906649  -0.000044189
                         0.040399258  -0.051619850   0.194834353   0.000541856  -0.237038884  -0.035596499   0.127447668  -0.000377725

   27    7.1  1.5 -0.5   0.000000003  -0.000000004   0.000000005   0.000000000  -0.000000022  -0.000000003   0.000000023   0.000000000
                         0.015199438   0.011895576   0.000536024  -0.192737035  -0.012261733   0.081651353  -0.001202215  -0.405623403

   28    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000075   0.000000059   0.000000001  -0.000000213  -0.000000030   0.000000199  -0.000000003  -0.000000926

   29    9.1  1.5 -0.5  -0.000000028   0.000000036  -0.000000097  -0.000000000   0.000000219   0.000000033   0.000000028  -0.000000000
                        -0.000000105   0.000000135   0.000000142   0.000000000   0.000000149   0.000000022   0.000000236  -0.000000001

   30   10.1  1.5 -0.5  -0.000000074   0.000000094  -0.000000022  -0.000000000   0.000000274   0.000000041  -0.000000188   0.000000001
                         0.000000020  -0.000000025  -0.000000015  -0.000000000  -0.000000404  -0.000000061   0.000000022  -0.000000000

   31    1.1  1.5 -1.5   0.006173142  -0.007887648  -0.334463059  -0.000930191   0.026732555   0.004014472   0.006254858  -0.000018542
                         0.022982051  -0.029364999   0.489439471   0.001361203   0.018161291   0.002727311   0.053477284  -0.000158526

   32    2.1  1.5 -1.5  -0.308899638  -0.241753884   0.000289220  -0.103974528  -0.025151456   0.167484659  -0.001160511  -0.391548057
                         0.000000198  -0.000000254   0.000000035   0.000000000   0.000000011   0.000000002  -0.000000021  -0.000000000

   33    3.1  1.5 -1.5  -0.000000172   0.000000221  -0.000000049  -0.000000000   0.000000015   0.000000002  -0.000000022  -0.000000000
                        -0.277554360  -0.217222198  -0.000203861   0.073326767   0.001376662  -0.009167193   0.001261341   0.425566499

   34    4.1  1.5 -1.5   0.017544686  -0.022417462   0.418577328   0.001164129  -0.059949183  -0.009002670   0.205092614  -0.000607886
                        -0.004712625   0.006021492   0.286038748   0.000795516   0.088242344   0.013251498  -0.023988227   0.000071110

   35    5.1  1.5 -1.5  -0.000000109   0.000000140  -0.000000012   0.000000000  -0.000000001  -0.000000000   0.000000018   0.000000000
                        -0.172712804  -0.135170097   0.000065966  -0.023712726  -0.029897015   0.199085608  -0.001068498  -0.360501550

   36    6.1  1.5 -1.5   0.174525476   0.136588755  -0.000012270   0.004392162   0.013765359  -0.091664229  -0.001105737  -0.373061112
                        -0.000000109   0.000000140  -0.000000037  -0.000000000   0.000000014   0.000000002  -0.000000017  -0.000000000

   37    7.1  1.5 -1.5  -0.099630216   0.127301980  -0.031696157  -0.000088117  -0.241690218  -0.036294976  -0.133190780   0.000394792
                         0.026761495  -0.034194132  -0.021659867  -0.000060239   0.355756484   0.053424539   0.015578380  -0.000046180

   38    8.1  1.5 -1.5   0.000000106  -0.000000136   0.000000063   0.000000000   0.000000039   0.000000006   0.000000126  -0.000000000
                        -0.000000029   0.000000036   0.000000043   0.000000000  -0.000000057  -0.000000009  -0.000000015   0.000000000

   39    9.1  1.5 -1.5  -0.000000215  -0.000000168  -0.000000000   0.000000023  -0.000000086   0.000000571   0.000000002   0.000000510
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   40   10.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000133   0.000000104  -0.000000001   0.000000277   0.000000090  -0.000000601   0.000000001   0.000000189

   41    1.1  0.5  0.5   0.000000084  -0.000000108   0.000000169   0.000000000   0.000001076   0.000000162   0.000000125  -0.000000000
                         0.000000314  -0.000000401  -0.000000247  -0.000000001   0.000000731   0.000000110   0.000001067  -0.000000003

   42    2.1  0.5  0.5  -0.000000217   0.000000277  -0.000004327  -0.000000012   0.000000949   0.000000143  -0.000007255   0.000000022
                         0.000000058  -0.000000074  -0.000002957  -0.000000008  -0.000001397  -0.000000210   0.000000849  -0.000000003

   43    3.1  0.5  0.5  -0.000002001  -0.000001566  -0.000000019   0.000006732   0.000000965  -0.000006423  -0.000000024  -0.000008020
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   44    4.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000003787  -0.000002964   0.000000007  -0.000002528   0.000002003  -0.000013339   0.000000008   0.000002557

   45    5.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000003631  -0.000002842  -0.000000027   0.000009780   0.000000392  -0.000002613  -0.000000016  -0.000005538

   46    6.1  0.5  0.5   0.000003639   0.000002848  -0.000000023   0.000008210  -0.000001131   0.000007534  -0.000000005  -0.000001621
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   47    7.1  0.5  0.5   0.000004295  -0.000005488   0.000001007   0.000000003   0.000004111   0.000000617   0.000001865  -0.000000006
                        -0.000001154   0.000001474   0.000000688   0.000000002  -0.000006052  -0.000000909  -0.000000218   0.000000001

   48    8.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000001297  -0.000001015  -0.000000009   0.000003122  -0.000000077   0.000000510  -0.000000004  -0.000001224

   49    9.1  0.5  0.5  -0.000001245  -0.000000974   0.000000005  -0.000001907   0.000000371  -0.000002471  -0.000000003  -0.000000958
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   50   10.1  0.5  0.5   0.000000609  -0.000000779  -0.000001410  -0.000000004  -0.000003198  -0.000000480  -0.000000829   0.000000002
                         0.000002269  -0.000002899   0.000002064   0.000000006  -0.000002172  -0.000000326  -0.000007083   0.000000021

   51   11.1  0.5  0.5   0.000000557  -0.000000712   0.000001944   0.000000005  -0.000005078  -0.000000763   0.000000590  -0.000000002
                         0.000002075  -0.000002652  -0.000002845  -0.000000008  -0.000003450  -0.000000518   0.000005046  -0.000000015

   52   12.1  0.5  0.5   0.000001283  -0.000001639   0.000000390   0.000000001   0.000000464   0.000000070   0.000001810  -0.000000005
                        -0.000000345   0.000000440   0.000000267   0.000000001  -0.000000683  -0.000000103  -0.000000212   0.000000001

   53    1.1  0.5 -0.5   0.000000415   0.000000325  -0.000000001   0.000000299  -0.000000195   0.000001301   0.000000003   0.000001074
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   54    2.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000287  -0.000000225  -0.000000015   0.000005241  -0.000000254   0.000001689  -0.000000022  -0.000007305

   55    3.1  0.5 -0.5   0.000000406  -0.000000519  -0.000003798  -0.000000011   0.000005313   0.000000798   0.000000932  -0.000000003
                         0.000001512  -0.000001933   0.000005559   0.000000015   0.000003609   0.000000542   0.000007966  -0.000000024

   56    4.1  0.5 -0.5   0.000002862  -0.000003657  -0.000002087  -0.000000006   0.000007496   0.000001126  -0.000002539   0.000000008
                        -0.000000769   0.000000982  -0.000001426  -0.000000004  -0.000011034  -0.000001657   0.000000297  -0.000000001

   57    5.1  0.5 -0.5   0.000002745  -0.000003507   0.000008075   0.000000022   0.000001469   0.000000221   0.000005500  -0.000000016
                        -0.000000737   0.000000942   0.000005518   0.000000015  -0.000002162  -0.000000325  -0.000000643   0.000000002

   58    6.1  0.5 -0.5  -0.000000739   0.000000944  -0.000004632  -0.000000013  -0.000006232  -0.000000936   0.000000188  -0.000000001
                        -0.000002750   0.000003514   0.000006779   0.000000019  -0.000004234  -0.000000636   0.000001610  -0.000000005

   59    7.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000005682   0.000004447   0.000000003  -0.000001220  -0.000001099   0.000007316   0.000000006   0.000001878

   60    8.1  0.5 -0.5   0.000000981  -0.000001253   0.000002577   0.000000007  -0.000000287  -0.000000043   0.000001216  -0.000000004
                        -0.000000263   0.000000337   0.000001761   0.000000005   0.000000422   0.000000063  -0.000000142   0.000000000

   61    9.1  0.5 -0.5   0.000000253  -0.000000323   0.000001076   0.000000003   0.000002044   0.000000307   0.000000111  -0.000000000
                         0.000000941  -0.000001202  -0.000001575  -0.000000004   0.000001388   0.000000209   0.000000951  -0.000000003

   62   10.1  0.5 -0.5   0.000003002   0.000002349   0.000000007  -0.000002499   0.000000581  -0.000003866  -0.000000021  -0.000007132
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   63   11.1  0.5 -0.5   0.000002746   0.000002149  -0.000000010   0.000003446   0.000000922  -0.000006140   0.000000015   0.000005080
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   64   12.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000001697   0.000001328   0.000000001  -0.000000473  -0.000000124   0.000000826   0.000000005   0.000001822


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.000333351  -0.017959626   0.000509543  -0.024673258   0.053984499   0.008497614  -0.008652628  -0.518447348
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.105734808  -0.001962558  -0.014929637  -0.000308321  -0.020055067   0.127407851   0.016180357  -0.000270042
                         0.130416550   0.002420580  -0.048647915  -0.001004656  -0.070382394   0.447132658  -0.154491949   0.002578398

    3    3.1  1.5  1.5  -0.019411605  -0.000360293   0.445667511   0.009203749  -0.034435584   0.218766026   0.262003813  -0.004372713
                        -0.015737898  -0.000292113  -0.136771625  -0.002824556   0.009812227  -0.062336107   0.027440364  -0.000457966

    4    4.1  1.5  1.5  -0.000000092  -0.000000002   0.000000003  -0.000000001  -0.000000001   0.000000005   0.000000000   0.000000000
                        -0.003803305   0.204913031  -0.009801908   0.474631830  -0.183367469  -0.028863564  -0.002242563  -0.134369670

    5    5.1  1.5  1.5   0.383015037   0.007108889   0.156705833   0.003236227  -0.005151169   0.032724891   0.141543375  -0.002362294
                         0.310528235   0.005763757  -0.048091707  -0.000993172   0.001467797  -0.009324767   0.014824218  -0.000247409

    6    6.1  1.5  1.5  -0.283025561  -0.005253276   0.033727731   0.000696532   0.014250124  -0.090529621  -0.012373477   0.000206507
                         0.349092396   0.006479271   0.109901113   0.002269633   0.050010196  -0.317710012   0.118143408  -0.001971751

    7    7.1  1.5  1.5   0.000000024   0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000008   0.000000001   0.000000001
                         0.001232934  -0.066427200  -0.001796870   0.087008679   0.242292768   0.038138891  -0.000491134  -0.029426679

    8    8.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000004   0.000000205   0.000000016  -0.000000762  -0.000001900  -0.000000299   0.000000003   0.000000162

    9    9.1  1.5  1.5   0.000000065   0.000000001  -0.000000103  -0.000000002   0.000000059  -0.000000376   0.000000027  -0.000000000
                        -0.000000080  -0.000000001  -0.000000336  -0.000000007   0.000000207  -0.000001318  -0.000000260   0.000000004

   10   10.1  1.5  1.5   0.000000129   0.000000002   0.000000419   0.000000009  -0.000000178   0.000001133   0.000000875  -0.000000015
                         0.000000105   0.000000002  -0.000000129  -0.000000003   0.000000051  -0.000000323   0.000000092  -0.000000002

   11    1.1  1.5  0.5   0.009868026   0.000183162   0.001577232   0.000032572   0.003217551  -0.020440782   0.006503104  -0.000108534
                        -0.012171526  -0.000225912   0.005139379   0.000106137   0.011291859  -0.071736092  -0.062092405   0.001036303

   12    2.1  1.5  0.5  -0.003049563   0.164302763  -0.010563353   0.511502802   0.045972135   0.007236396  -0.001945078  -0.116545139
                         0.000000067   0.000000001  -0.000000004   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000

   13    3.1  1.5  0.5  -0.000000111  -0.000000002   0.000000002  -0.000000001  -0.000000002   0.000000009  -0.000000000  -0.000000000
                        -0.005320367   0.286647539  -0.006097398   0.295250671  -0.336068900  -0.052900039  -0.000368427  -0.022075461

   14    4.1  1.5  0.5   0.042317551   0.000785422   0.232551494   0.004802563  -0.050285684   0.319460203   0.022462055  -0.000374869
                         0.034308821   0.000636811  -0.071368105  -0.001473867   0.014328624  -0.091028327   0.002352512  -0.000039262

   15    5.1  1.5  0.5  -0.000000091  -0.000000002  -0.000000001   0.000000000   0.000000003  -0.000000011   0.000000000  -0.000000000
                        -0.003983370   0.214614141   0.000214396  -0.010381668   0.359810633   0.056637179   0.009125761   0.546796490

   16    6.1  1.5  0.5   0.004411179  -0.237663667  -0.003608482   0.174731325   0.274468479   0.043203624  -0.007478754  -0.448111298
                        -0.000000104  -0.000000002  -0.000000001   0.000000001  -0.000000002   0.000000006  -0.000000000   0.000000000

   17    7.1  1.5  0.5   0.399194069   0.007409162   0.169987399   0.003510512   0.026919136  -0.171014706   0.172241964  -0.002874636
                         0.323645335   0.006007226  -0.052167708  -0.001077348  -0.007670456   0.048729646   0.018039364  -0.000301068

   18    8.1  1.5  0.5   0.000000163   0.000000003  -0.000000065  -0.000000001   0.000000017  -0.000000109  -0.000000013   0.000000000
                         0.000000132   0.000000002   0.000000020   0.000000000  -0.000000005   0.000000031  -0.000000001   0.000000000

   19    9.1  1.5  0.5   0.000000003  -0.000000151  -0.000000009   0.000000425   0.000001834   0.000000289  -0.000000011  -0.000000647
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   20   10.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000004  -0.000000207  -0.000000014   0.000000665   0.000001660   0.000000261   0.000000008   0.000000502

   21    1.1  1.5 -0.5   0.000290834  -0.015669205   0.000111022  -0.005375954   0.074591504   0.011741325   0.001041971   0.062432020
                        -0.000000004  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000001   0.000000000   0.000000001

   22    2.1  1.5 -0.5   0.103473277   0.001920582   0.150068027   0.003099149  -0.001983037   0.012598035   0.012139688  -0.000202605
                        -0.127627109  -0.002368798   0.488993562   0.010098500  -0.006959381   0.044212291  -0.115911161   0.001934497

   23    3.1  1.5 -0.5  -0.222662090  -0.004132685   0.282257843   0.005829075   0.050874988  -0.323203961  -0.021955376   0.000366423
                        -0.180522589  -0.003350705  -0.086622567  -0.001788897  -0.014496542   0.092095089  -0.002299446   0.000038377

   24    4.1  1.5 -0.5  -0.000000025  -0.000000000  -0.000000001   0.000000001  -0.000000002   0.000000010  -0.000000001  -0.000000001
                        -0.001011146   0.054478164   0.005023634  -0.243256251  -0.332176124  -0.052287279  -0.000376920  -0.022584911

   25    5.1  1.5 -0.5  -0.166707984  -0.003094145  -0.009924812  -0.000204961  -0.054469067   0.346036845   0.543822050  -0.009076119
                        -0.135157973  -0.002508686   0.003045842   0.000062901   0.015520656  -0.098601186   0.056955945  -0.000950567

   26    6.1  1.5 -0.5  -0.149673919  -0.002778118   0.051263815   0.001058681  -0.011839369   0.075214336   0.046676603  -0.000779009
                         0.184612396   0.003426450   0.167042082   0.003449687  -0.041549758   0.263961644  -0.445673681   0.007438071

   27    7.1  1.5 -0.5  -0.000000210  -0.000000004  -0.000000001   0.000000000   0.000000001  -0.000000004   0.000000000   0.000000000
                        -0.009538471   0.513908754   0.003672107  -0.177812220   0.177821844   0.027990638  -0.002890358  -0.173184043

   28    8.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000004   0.000000210  -0.000000001   0.000000068   0.000000114   0.000000018   0.000000000   0.000000013

   29    9.1  1.5 -0.5  -0.000000095  -0.000000002   0.000000125   0.000000003  -0.000000079   0.000000503   0.000000067  -0.000000001
                         0.000000118   0.000000002   0.000000407   0.000000008  -0.000000278   0.000001764  -0.000000644   0.000000011

   30   10.1  1.5 -0.5   0.000000161   0.000000003   0.000000636   0.000000013  -0.000000251   0.000001596   0.000000499  -0.000000008
                         0.000000131   0.000000002  -0.000000195  -0.000000004   0.000000072  -0.000000455   0.000000052  -0.000000001

   31    1.1  1.5 -1.5   0.011310470   0.000209935   0.007238801   0.000149493   0.002328655  -0.014793715  -0.054003014   0.000901283
                        -0.013950679  -0.000258940   0.023587485   0.000487120   0.008172320  -0.051917937   0.515627120  -0.008605560

   32    2.1  1.5 -1.5   0.003116223  -0.167893794   0.001050902  -0.050887265   0.464930504   0.073183926  -0.002592501  -0.155336944
                        -0.000000062  -0.000000001   0.000000001  -0.000000000  -0.000000003   0.000000013  -0.000000000  -0.000000000

   33    3.1  1.5 -1.5  -0.000000005  -0.000000000   0.000000003  -0.000000001   0.000000002  -0.000000007   0.000000000  -0.000000000
                        -0.000463833   0.024989835  -0.009627415   0.466182376   0.227473876   0.035806274   0.004396629   0.263436846

   34    4.1  1.5 -1.5   0.159172355   0.002954274  -0.453745137  -0.009370563  -0.027758647   0.176348041   0.133638731  -0.002230364
                         0.129048485   0.002395287   0.139250580   0.002875751   0.007909670  -0.050249349   0.013996343  -0.000233592

   35    5.1  1.5 -1.5   0.000000192   0.000000003   0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000
                         0.009151896  -0.493080423  -0.003385196   0.163919280   0.034027485   0.005356209   0.002375215   0.142317548

   36    6.1  1.5 -1.5   0.008341334  -0.449409578  -0.002374109   0.114960056  -0.330356268  -0.052000825   0.001982536   0.118789594
                        -0.000000177  -0.000000003  -0.000000001   0.000000000   0.000000002  -0.000000008   0.000000000  -0.000000000

   37    7.1  1.5 -1.5  -0.051599324  -0.000957704  -0.083179767  -0.001717797   0.036678907  -0.233017641   0.029266605  -0.000488463
                        -0.041833990  -0.000776486   0.025527173   0.000527178  -0.010451450   0.066397022   0.003065169  -0.000051157

   38    8.1  1.5 -1.5   0.000000160   0.000000003   0.000000729   0.000000015  -0.000000288   0.000001827  -0.000000161   0.000000003
                         0.000000129   0.000000002  -0.000000224  -0.000000005   0.000000082  -0.000000521  -0.000000017   0.000000000

   39    9.1  1.5 -1.5  -0.000000002   0.000000103   0.000000007  -0.000000351  -0.000001370  -0.000000216  -0.000000004  -0.000000261
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   40   10.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000003  -0.000000166  -0.000000009   0.000000438   0.000001178   0.000000185   0.000000015   0.000000880

   41    1.1  0.5  0.5   0.000002534   0.000000047  -0.019314540  -0.000398877   0.005347695  -0.033973373   0.000846680  -0.000014131
                        -0.000003126  -0.000000058  -0.062936029  -0.001299730   0.018767503  -0.119228167  -0.008084196   0.000134920

   42    2.1  0.5  0.5   0.000008520   0.000000158  -0.096201966  -0.001986725  -0.008990328   0.057114693  -0.081666354   0.001362971
                         0.000006907   0.000000128   0.029523577   0.000609710   0.002561743  -0.016274500  -0.008553137   0.000142748

   43    3.1  0.5  0.5  -0.000000198   0.000010658  -0.001966066   0.095201626  -0.055354416  -0.008713245  -0.001083853  -0.064942097
                         0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000000

   44    4.1  0.5  0.5   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000
                         0.000000182  -0.000009814   0.001905203  -0.092254483   0.035641217   0.005610223   0.000649742   0.038931303

   45    5.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000000   0.000000000
                         0.000000020  -0.000001051  -0.000692864   0.033550115   0.062363553   0.009816542  -0.001863446  -0.111653663

   46    6.1  0.5  0.5   0.000000027  -0.000001478   0.000815886  -0.039507134  -0.041586913  -0.006546124  -0.001704685  -0.102141267
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000000   0.000000000

   47    7.1  0.5  0.5   0.000000795   0.000000015   0.032142930   0.000663803  -0.011874268   0.075436095   0.020310837  -0.000338980
                         0.000000645   0.000000012  -0.009864396  -0.000203716   0.003383506  -0.021495077   0.002127208  -0.000035502

   48    8.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000019   0.000001026   0.000000070  -0.000003385  -0.000012603  -0.000001984   0.000000150   0.000008969

   49    9.1  0.5  0.5  -0.000000036   0.000001956   0.000000122  -0.000005903  -0.000009601  -0.000001511  -0.000000110  -0.000006606
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   50   10.1  0.5  0.5   0.000000789   0.000000015   0.000000127   0.000000003  -0.000000115   0.000000733   0.000000400  -0.000000007
                        -0.000000974  -0.000000018   0.000000413   0.000000009  -0.000000405   0.000002574  -0.000003823   0.000000064

   51   11.1  0.5  0.5  -0.000000633  -0.000000012   0.000000494   0.000000010   0.000000028  -0.000000177  -0.000000690   0.000000012
                         0.000000780   0.000000014   0.000001610   0.000000033   0.000000098  -0.000000620   0.000006586  -0.000000110

   52   12.1  0.5  0.5  -0.000001192  -0.000000022  -0.000003003  -0.000000062   0.000002116  -0.000013443  -0.000003746   0.000000063
                        -0.000000967  -0.000000018   0.000000922   0.000000019  -0.000000603   0.000003831  -0.000000392   0.000000007

   53    1.1  0.5 -0.5  -0.000000075   0.000004024   0.001359559  -0.065833086  -0.123973972  -0.019514533  -0.000135657  -0.008128413
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000004   0.000000000   0.000000000

   54    2.1  0.5 -0.5   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000001   0.000000000   0.000000000
                         0.000000204  -0.000010968   0.002078177  -0.100630313   0.059388109   0.009348183  -0.001370426  -0.082113029

   55    3.1  0.5 -0.5  -0.000006712  -0.000000125  -0.027930874  -0.000576818  -0.002387747   0.015169121  -0.006764561   0.000112897
                         0.000008279   0.000000154  -0.091012175  -0.001879547  -0.008379696   0.053235412   0.064588828  -0.001077957

   56    4.1  0.5 -0.5  -0.000007623  -0.000000141   0.088194724   0.001821362   0.005395460  -0.034276848  -0.038719526   0.000646207
                        -0.000006181  -0.000000115  -0.027066222  -0.000558961  -0.001537406   0.009766988  -0.004055200   0.000067679

   57    5.1  0.5 -0.5  -0.000000816  -0.000000015  -0.032073706  -0.000662374   0.009440758  -0.059976235   0.111046294  -0.001853310
                        -0.000000662  -0.000000012   0.009843152   0.000203277  -0.002690091   0.017089880   0.011630177  -0.000194102

   58    6.1  0.5 -0.5   0.000000931   0.000000017   0.011590861   0.000239370  -0.001793877   0.011396325  -0.010639338   0.000177565
                        -0.000001148  -0.000000021   0.037768580   0.000779982  -0.006295534   0.039994938   0.101585643  -0.001695412

   59    7.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000002  -0.000000000  -0.000000000
                         0.000000019  -0.000001024  -0.000694359   0.033622526   0.078438783   0.012346917   0.000340834   0.020421927

   60    8.1  0.5 -0.5   0.000000797   0.000000015   0.000003236   0.000000067  -0.000001908   0.000012120  -0.000008920   0.000000149
                         0.000000646   0.000000012  -0.000000993  -0.000000021   0.000000544  -0.000003454  -0.000000934   0.000000016

   61    9.1  0.5 -0.5  -0.000001232  -0.000000023   0.000001732   0.000000036  -0.000000414   0.000002631  -0.000000688   0.000000011
                         0.000001519   0.000000028   0.000005643   0.000000117  -0.000001453   0.000009233   0.000006570  -0.000000110

   62   10.1  0.5 -0.5  -0.000000023   0.000001253  -0.000000009   0.000000432   0.000002676   0.000000421  -0.000000064  -0.000003844
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   63   11.1  0.5 -0.5   0.000000019  -0.000001004  -0.000000035   0.000001684  -0.000000645  -0.000000102   0.000000111   0.000006622
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   64   12.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000028   0.000001535   0.000000065  -0.000003141  -0.000013978  -0.000002200  -0.000000063  -0.000003767


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.002104116  -0.054508122  -0.412336392   0.042205698  -0.006685788   0.189203266  -0.020039909  -0.000775042
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.002110793   0.000081481   0.025793142   0.251990881  -0.003648883  -0.000128939   0.010803492  -0.279341117
                         0.003124306  -0.000120604  -0.017773213  -0.173638758   0.131499102   0.004646716   0.004160166  -0.107572402

    3    3.1  1.5  1.5   0.065395035  -0.002524345   0.017811251   0.174010297  -0.238558291  -0.008429834   0.003721565  -0.096230702
                         0.044181128  -0.001705473   0.025848332   0.252530074  -0.006619598  -0.000233914  -0.009664446   0.249889297

    4    4.1  1.5  1.5   0.000000007  -0.000000001   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000001  -0.000000038
                         0.001816276   0.047051820   0.421381615  -0.043131546   0.005228833  -0.147972483   0.087998180   0.003403307

    5    5.1  1.5  1.5   0.210672760  -0.008132302   0.003868123   0.037790474  -0.324860031  -0.011479441  -0.003427280   0.088621651
                         0.142331300  -0.005494251   0.005613580   0.054842908  -0.009014329  -0.000318535   0.008900269  -0.230130317

    6    6.1  1.5  1.5   0.149809824  -0.005782936  -0.031352848  -0.306307461  -0.003869837  -0.000136747   0.006651517  -0.171985327
                        -0.221742153   0.008559604   0.021604245   0.211066552   0.139461883   0.004928116   0.002561350  -0.066230403

    7    7.1  1.5  1.5   0.000000069  -0.000000011   0.000000001   0.000000014   0.000000000  -0.000000000   0.000000009  -0.000000236
                         0.023958811   0.620667540   0.022696532  -0.002323169  -0.009535683   0.269853096   0.418260149   0.016176082

    8    8.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000008
                        -0.000000056  -0.000001463   0.002977759  -0.000304796  -0.000284431   0.008049195   0.014158100   0.000547560

    9    9.1  1.5  1.5   0.000000036  -0.000000001  -0.001030512  -0.010067776  -0.000327390  -0.000011569  -0.000335659   0.008678997
                        -0.000000053   0.000000002   0.000710093   0.006937378   0.011798546   0.000416921  -0.000129255   0.003342224

   10   10.1  1.5  1.5   0.000000337  -0.000000013  -0.000095181  -0.000929886  -0.016650151  -0.000588360   0.000136390  -0.003526730
                         0.000000228  -0.000000009  -0.000138130  -0.001349485  -0.000462014  -0.000016326  -0.000354189   0.009158116

   11    1.1  1.5  0.5   0.288417205  -0.011133437  -0.015954532  -0.155870753  -0.011385251  -0.000402315  -0.002014133   0.052078545
                        -0.426902926   0.016479136   0.010993764   0.107405488   0.410303745   0.014498744  -0.000775599   0.020055100

   12    2.1  1.5  0.5  -0.006121931  -0.158592302  -0.238791870   0.024442134   0.013624457  -0.385562105  -0.087646424  -0.003389698
                         0.000000017  -0.000000003   0.000000001   0.000000013   0.000000001  -0.000000000   0.000000002  -0.000000050

   13    3.1  1.5  0.5   0.000000006  -0.000000001   0.000000001   0.000000013   0.000000000  -0.000000000   0.000000005  -0.000000117
                         0.001449973   0.037562475   0.080409093  -0.008230478  -0.013421183   0.379809781   0.202437044   0.007829189

   14    4.1  1.5  0.5  -0.259275355   0.010008448  -0.010435045  -0.101947102  -0.199431994  -0.007047259   0.005090137  -0.131619063
                        -0.175167395   0.006761785  -0.015143716  -0.147949343  -0.005533908  -0.000195549  -0.013218498   0.341784840

   15    5.1  1.5  0.5  -0.000000017   0.000000002  -0.000000000  -0.000000001  -0.000000001   0.000000000   0.000000008  -0.000000214
                        -0.002991984  -0.077509520  -0.173108392   0.017718933   0.008973239  -0.253935824   0.387005342   0.014967314

   16    6.1  1.5  0.5  -0.006839196  -0.177173336  -0.041486417   0.004246442   0.006356484  -0.179883638   0.433888711   0.016780515
                         0.000000016  -0.000000002  -0.000000000  -0.000000003   0.000000001  -0.000000000  -0.000000009   0.000000238

   17    7.1  1.5  0.5   0.041339754  -0.001595778  -0.020001468  -0.195408054   0.203582942   0.007193919  -0.001076205   0.027827875
                         0.027929291  -0.001078122  -0.029026859  -0.283583276   0.005649090   0.000199619   0.002794752  -0.072262678

   18    8.1  1.5  0.5   0.000000597  -0.000000023   0.001065306   0.010407703  -0.008407889  -0.000297106   0.000012375  -0.000319983
                         0.000000403  -0.000000016   0.001546011   0.015104037  -0.000233305  -0.000008244  -0.000032136   0.000830923

   19    9.1  1.5  0.5  -0.000000007  -0.000000191  -0.011752750   0.001202982   0.000097499  -0.002759138  -0.012703829  -0.000491317
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000007

   20   10.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000007
                         0.000000026   0.000000666   0.006594106  -0.000674956   0.000394867  -0.011174470  -0.011812291  -0.000456837

   21    1.1  1.5 -0.5  -0.019887567  -0.515199566   0.189292447  -0.019375498  -0.014504325   0.410461675  -0.055806647  -0.002158306
                         0.000000059  -0.000000009  -0.000000001  -0.000000011  -0.000000001   0.000000000   0.000000001  -0.000000028

   22    2.1  1.5 -0.5  -0.088782584   0.003427172  -0.020126595  -0.196630500  -0.010694595  -0.000377910   0.003163271  -0.081791300
                         0.131412218  -0.005072724   0.013868601   0.135491710   0.385413754   0.013619215   0.001218101  -0.031497284

   23    3.1  1.5 -0.5  -0.031124892   0.001201468  -0.004670026  -0.045624524  -0.379663645  -0.013416019  -0.002813448   0.072749313
                        -0.021028093   0.000811723  -0.006777288  -0.066211971  -0.010535039  -0.000372272   0.007306211  -0.188913457

   24    4.1  1.5 -0.5  -0.000000034   0.000000006   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000008  -0.000000203
                        -0.012078525  -0.312901464  -0.179672535   0.018390821   0.007049972  -0.199508758   0.366251901   0.014164681

   25    5.1  1.5 -0.5   0.064225677  -0.002479198   0.010053813   0.098222575   0.253838119   0.008969787  -0.005378568   0.139077177
                         0.043391105  -0.001674976   0.014590457   0.142544173   0.007043588   0.000248896   0.013967516  -0.361151871

   26    6.1  1.5 -0.5  -0.099184553   0.003828708  -0.003496686  -0.034161527  -0.004989553  -0.000176313  -0.015659596   0.404903247
                         0.146808772  -0.005667063   0.002409450   0.023539602   0.179814425   0.006354038  -0.006030150   0.155925541

   27    7.1  1.5 -0.5   0.000000007  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000033
                         0.001925838   0.049890085  -0.344388998   0.035250777  -0.007196689   0.203661303  -0.077435684  -0.002994805

   28    8.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000028   0.000000720   0.018342634  -0.001877505   0.000297220  -0.008411126   0.000890405   0.000034436

   29    9.1  1.5 -0.5  -0.000000107   0.000000004  -0.000990582  -0.009677671  -0.000076532  -0.000002704   0.000458497  -0.011855163
                         0.000000158  -0.000000006   0.000682578   0.006668570   0.002758076   0.000097461   0.000176557  -0.004565344

   30   10.1  1.5 -0.5  -0.000000552   0.000000021  -0.000382973  -0.003741529   0.011170170   0.000394715   0.000164166  -0.004244954
                        -0.000000373   0.000000014  -0.000555785  -0.005429843   0.000309954   0.000010953  -0.000426321   0.011023183

   31    1.1  1.5 -1.5   0.030514546  -0.001177919   0.034753811   0.339533799  -0.005248058  -0.000185448  -0.000723266   0.018701165
                        -0.045166336   0.001743505  -0.023947726  -0.233961748   0.189130467   0.006683215  -0.000278525   0.007201693

   32    2.1  1.5 -1.5  -0.000145549  -0.003770509   0.306022584  -0.031323685   0.004648505  -0.131549718  -0.299338072  -0.011576806
                         0.000000000   0.000000000   0.000000001   0.000000005  -0.000000000   0.000000000   0.000000007  -0.000000174

   33    3.1  1.5 -1.5  -0.000000013   0.000000002  -0.000000000  -0.000000002   0.000000000  -0.000000000  -0.000000005   0.000000139
                        -0.003046466  -0.078920737  -0.306677390   0.031390715  -0.008433078   0.238650114  -0.267777909  -0.010356233

   34    4.1  1.5 -1.5   0.038987920  -0.001504992   0.024473058   0.239094052  -0.147915549  -0.005226821   0.001223002  -0.031623694
                         0.026340384  -0.001016787   0.035516189   0.346981987  -0.004104412  -0.000145036  -0.003175966   0.082119558

   35    5.1  1.5 -1.5  -0.000000031   0.000000005   0.000000001   0.000000011   0.000000000  -0.000000000   0.000000006  -0.000000143
                        -0.009814333  -0.254246359  -0.066602286   0.006817232  -0.011483860   0.324985074   0.246604461   0.009537350

   36    6.1  1.5 -1.5   0.010330013   0.267605242  -0.371985685   0.038075510   0.004930012  -0.139515563  -0.184297095  -0.007127636
                        -0.000000030   0.000000004   0.000000001   0.000000010   0.000000000  -0.000000000   0.000000004  -0.000000097

   37    7.1  1.5 -1.5   0.514295443  -0.019852630   0.001318189   0.012878126   0.269749267   0.009532014   0.005812939  -0.150309142
                         0.347459915  -0.013412595   0.001912980   0.018689207   0.007485096   0.000264498  -0.015095541   0.390318733

   38    8.1  1.5 -1.5  -0.000001212   0.000000047   0.000172943   0.001689595   0.008046098   0.000284322   0.000196768  -0.005087962
                        -0.000000819   0.000000032   0.000250981   0.002452002   0.000223266   0.000007889  -0.000510984   0.013212284

   39    9.1  1.5 -1.5   0.000000002   0.000000065  -0.012226501   0.001251474   0.000417081  -0.011803088   0.009300293   0.000359686
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000005

   40   10.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000005
                        -0.000000016  -0.000000406   0.001638840  -0.000167748  -0.000588586   0.016656559  -0.009813711  -0.000379542

   41    1.1  0.5  0.5  -0.010447627   0.000403298   0.000063532   0.000620689   0.000240762   0.000008508  -0.002395701   0.061944577
                         0.015464135  -0.000596942  -0.000043780  -0.000427696  -0.008676636  -0.000306602  -0.000922529   0.023854443

   42    2.1  0.5  0.5   0.002122065  -0.000081917  -0.003542922  -0.034613229   0.026790849   0.000946696  -0.000051378   0.001328481
                         0.001433675  -0.000055343  -0.005141617  -0.050231977   0.000743402   0.000026269   0.000133419  -0.003449763

   43    3.1  0.5  0.5   0.002460890   0.063750887   0.054104707  -0.005538020  -0.001366978   0.038684425  -0.006115552  -0.000236517
                        -0.000000008   0.000000001  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000004

   44    4.1  0.5  0.5   0.000000010  -0.000000002   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000002
                         0.003692405   0.095653983  -0.008857433   0.000906623  -0.002336650   0.066125509  -0.006099638  -0.000235902

   45    5.1  0.5  0.5   0.000000007  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000026
                         0.002081781   0.053929851  -0.048569317   0.004971431   0.000082179  -0.002325544   0.045849611   0.001773219

   46    6.1  0.5  0.5  -0.003163170  -0.081943780  -0.029759071   0.003046063  -0.001210957   0.034269201  -0.049194233  -0.001902572
                         0.000000008  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000026

   47    7.1  0.5  0.5   0.093096874  -0.003593688  -0.001164038  -0.011372257  -0.051261936  -0.001811422  -0.000529578   0.013693657
                         0.062896594  -0.002427925  -0.001689290  -0.016503833  -0.001422434  -0.000050264   0.001375253  -0.035559321

   48    8.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000002  -0.000000041
                        -0.000000205  -0.000005316   0.070030763  -0.007168171  -0.000581193   0.016447317   0.075706814   0.002927938

   49    9.1  0.5  0.5  -0.000000472  -0.000012223  -0.039303876   0.004023043  -0.002353911   0.066614052   0.070388468   0.002722252
                         0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000000  -0.000000002   0.000000041

   50   10.1  0.5  0.5   0.000003567  -0.000000138   0.008595414   0.083974487   0.000575776   0.000020346   0.000140276  -0.003627057
                        -0.000005280   0.000000204  -0.005922823  -0.057864100  -0.020749936  -0.000733235   0.000054015  -0.001396756

   51   11.1  0.5  0.5   0.000001569  -0.000000061  -0.001767024  -0.017263269   0.002816669   0.000099531   0.000470784  -0.012172846
                        -0.000002322   0.000000090   0.001217597   0.011895560  -0.101507623  -0.003586933   0.000181290  -0.004687682

   52   12.1  0.5  0.5  -0.000007089   0.000000274   0.001630874   0.015933123   0.052668647   0.001861133  -0.001192383   0.030832230
                        -0.000004790   0.000000185   0.002366783   0.023122728   0.001461468   0.000051643   0.003096480  -0.080064305

   53    1.1  0.5 -0.5  -0.000720408  -0.018662594   0.000753776  -0.000077156  -0.000306720   0.008679975   0.066378950   0.002567186
                         0.000000002  -0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000001   0.000000037

   54    2.1  0.5 -0.5   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000098859  -0.002560973   0.061002682  -0.006244078   0.000947060  -0.026801161   0.003696719   0.000142970

   55    3.1  0.5 -0.5  -0.035688797   0.001377653  -0.004560220  -0.044551917  -0.001073016  -0.000037917  -0.000220718   0.005707009
                         0.052825045  -0.002039130   0.003142302   0.030699283   0.038669541   0.001366452  -0.000084993   0.002197731

   56    4.1  0.5 -0.5   0.079260481  -0.003059583  -0.000514421  -0.005025752   0.066100066   0.002335751  -0.000084774   0.002192012
                         0.053548676  -0.002067078  -0.000746550  -0.007293554   0.001834168   0.000064813   0.000220144  -0.005692158

   57    5.1  0.5 -0.5   0.044687171  -0.001724994  -0.002820815  -0.027558475  -0.002324650  -0.000082147   0.000637213  -0.016476864
                         0.030190819  -0.001165421  -0.004093669  -0.039993862  -0.000064505  -0.000002279  -0.001654771   0.042786677

   58    6.1  0.5 -0.5   0.045873478  -0.001770801   0.002508246   0.024504775  -0.000950548  -0.000033589  -0.001775483   0.045907866
                        -0.067899979   0.002621051  -0.001728352  -0.016885447   0.034256015   0.001210491  -0.000683698   0.017678813

   59    7.1  0.5 -0.5  -0.000000013   0.000000002   0.000000000   0.000000002   0.000000000  -0.000000000   0.000000001  -0.000000022
                        -0.004336982  -0.112352168   0.020042573  -0.002051508  -0.001812119   0.051281667   0.038104876   0.001473694

   60    8.1  0.5 -0.5  -0.000004405   0.000000170   0.004067259   0.039735808   0.016440989   0.000580969   0.001052168  -0.027206575
                        -0.000002976   0.000000115   0.005902549   0.057666051   0.000456210   0.000016121  -0.002732355   0.070649302

   61    9.1  0.5 -0.5   0.000006842  -0.000000264   0.003312731   0.032364338  -0.001847719  -0.000065292   0.002540409  -0.065686243
                        -0.000010128   0.000000391  -0.002282693  -0.022301218   0.066588421   0.002353006   0.000978251  -0.025295334

   62   10.1  0.5 -0.5   0.000000246   0.000006373   0.101980236  -0.010438437  -0.000733517   0.020757923  -0.003886705  -0.000150317
                        -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000004

   63   11.1  0.5 -0.5   0.000000108   0.000002802  -0.020964847   0.002145907  -0.003588314   0.101546695  -0.013044253  -0.000504483
                        -0.000000000   0.000000000  -0.000000000  -0.000000002  -0.000000000   0.000000000   0.000000000  -0.000000005

   64   12.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000002  -0.000000047
                         0.000000330   0.000008556  -0.028080687   0.002874267   0.001861849  -0.052688920   0.085795800   0.003318127


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.000743921  -0.346027330   0.011426609  -0.122759345   0.000026462   0.006938967   0.000004731   0.003051182
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.044399559   0.000095454   0.021594420   0.002010039   0.084251770  -0.000321302  -0.027173030   0.000042133
                        -0.010354837   0.000022269  -0.383740582  -0.035719123  -0.005813093   0.000022169   0.016072447  -0.000024921

    3    3.1  1.5  1.5   0.061900000  -0.000133073  -0.137919018  -0.012837706  -0.004427427   0.000016882  -0.036600517   0.000056758
                        -0.265415351   0.000570614  -0.007761184  -0.000722422  -0.064168711   0.000244714  -0.061879007   0.000095943

    4    4.1  1.5  1.5  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000002   0.000000001   0.000000009  -0.000000002
                         0.000753326   0.350402001  -0.008987708   0.096557550  -0.000040036  -0.010498524  -0.000153811  -0.099197342

    5    5.1  1.5  1.5  -0.014555903   0.000031283   0.473205155   0.044046616  -0.000651987   0.000002486  -0.012658114   0.000019629
                         0.062412925  -0.000134181   0.026628903   0.002478656  -0.009449547   0.000036037  -0.021400559   0.000033182

    6    6.1  1.5  1.5   0.269046338  -0.000578421   0.017403014   0.001619898  -0.050629026   0.000193078   0.034124519  -0.000052911
                         0.062746817  -0.000134890  -0.309257798  -0.028786165   0.003493235  -0.000013322  -0.020184150   0.000031298

    7    7.1  1.5  1.5  -0.000000003   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000001   0.000000003  -0.000000001
                        -0.000001881  -0.000874565   0.015986737  -0.171750008   0.000237829   0.062363585  -0.000016137  -0.010407444

    8    8.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000010096   0.004696202   0.001221572  -0.013123687  -0.000000039  -0.000010241   0.000000003   0.000001759

    9    9.1  1.5  1.5   0.007417280  -0.000015946  -0.000151354  -0.000014088  -0.000004687   0.000000018  -0.000003054   0.000000005
                         0.001729853  -0.000003719   0.002689608   0.000250352   0.000000323  -0.000000001   0.000001806  -0.000000003

   10   10.1  1.5  1.5   0.001726938  -0.000003713   0.002696674   0.000251010  -0.000000306   0.000000001  -0.000001818   0.000000003
                        -0.007404781   0.000015919   0.000151751   0.000014125  -0.000004441   0.000000017  -0.000003074   0.000000005

   11    1.1  1.5  0.5  -0.120110300   0.000258224  -0.019358825  -0.001801947  -0.003333650   0.000012713   0.009046516  -0.000014026
                        -0.028012048   0.000060215   0.344013265   0.032021251   0.000230011  -0.000000878  -0.005350881   0.000008297

   12    2.1  1.5  0.5  -0.000729393  -0.339270142  -0.005758004   0.061859781   0.000115134   0.030190078  -0.000142993  -0.092220613
                        -0.000000004   0.000000000  -0.000000000  -0.000000000  -0.000000003  -0.000000002  -0.000000009   0.000000002

   13    3.1  1.5  0.5  -0.000000005   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000005  -0.000000001
                        -0.000585282  -0.272237792   0.029654556  -0.318587283  -0.000182798  -0.047933520  -0.000112344  -0.072454380

   14    4.1  1.5  0.5  -0.044508728   0.000095681   0.313366688   0.029168625  -0.005551906   0.000021171  -0.015948660   0.000024734
                         0.190844904  -0.000410296   0.017634236   0.001641420  -0.080466280   0.000306866  -0.026963753   0.000041806

   15    5.1  1.5  0.5  -0.000000002   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000001  -0.000000000
                        -0.000276905  -0.128799335   0.014032252  -0.150752451   0.000253256   0.066408721   0.000040268   0.025970005

   16    6.1  1.5  0.5   0.000658776   0.306423275   0.005205238  -0.055921271   0.000212491   0.055719272  -0.000032503  -0.020962408
                         0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000001  -0.000000003   0.000000001

   17    7.1  1.5  0.5  -0.099669944   0.000214281  -0.217473795  -0.020242764   0.001749562  -0.000006673  -0.020324492   0.000031517
                         0.427365636  -0.000918789  -0.012238008  -0.001139131   0.025357183  -0.000096701  -0.034361791   0.000053278

   18    8.1  1.5  0.5   0.000998310  -0.000002146   0.001550391   0.000144313   0.000000030  -0.000000000  -0.000000447   0.000000001
                        -0.004280563   0.000009203   0.000087246   0.000008121   0.000000438  -0.000000002  -0.000000756   0.000000001

   19    9.1  1.5  0.5  -0.000013057  -0.006073463   0.000994913  -0.010688627   0.000000033   0.000008662  -0.000000003  -0.000002177
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   20   10.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000024718   0.011497162   0.000414211  -0.004449986   0.000000034   0.000009011  -0.000000002  -0.000001128

   21    1.1  1.5 -0.5   0.000265152   0.123333528   0.032071911  -0.344557529   0.000012743   0.003341576   0.000016297   0.010510537
                         0.000000008  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000000

   22    2.1  1.5 -0.5  -0.330403576   0.000710332  -0.003475567  -0.000323511   0.030118473  -0.000114861   0.079375136  -0.000123071
                        -0.077056513   0.000165659   0.061762067   0.005748909  -0.002078073   0.000007922  -0.046949219   0.000072805

   23    3.1  1.5 -0.5  -0.061831834   0.000132936  -0.318084042  -0.029607713   0.003299411  -0.000012584  -0.036886294   0.000057198
                         0.265123065  -0.000569985  -0.017899698  -0.001666129   0.047819831  -0.000182364  -0.062362156   0.000096693

   24    4.1  1.5 -0.5  -0.000000008   0.000000000  -0.000000000  -0.000000000  -0.000000002  -0.000000002  -0.000000005   0.000000002
                         0.000421305   0.195966335   0.029214772  -0.313862466  -0.000307596  -0.080657584   0.000048575   0.031327363

   25    5.1  1.5 -0.5  -0.029253466   0.000062894  -0.150514323  -0.014010086  -0.004571114   0.000017432   0.013221247  -0.000020501
                         0.125433263  -0.000269668  -0.008469966  -0.000788396  -0.066251212   0.000252655   0.022352623  -0.000034658

   26    6.1  1.5 -0.5   0.298415136  -0.000641560   0.003141914   0.000292454   0.055587117  -0.000211987   0.018042539  -0.000027974
                         0.069596190  -0.000149621  -0.055832938  -0.005197016  -0.003835326   0.000014625  -0.010671894   0.000016550

   27    7.1  1.5 -0.5   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000003   0.000000000
                         0.000943446   0.438834234  -0.020274790   0.217817860   0.000096931   0.025417468   0.000061902   0.039922646

   28    8.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000009450  -0.004395435   0.000144541  -0.001552844   0.000000002   0.000000439   0.000000001   0.000000879

   29    9.1  1.5 -0.5  -0.005914738   0.000012716   0.000600536   0.000055899   0.000008642  -0.000000033   0.000001873  -0.000000003
                        -0.001379431   0.000002966  -0.010671744  -0.000993341  -0.000000596   0.000000002  -0.000001108   0.000000002

   30   10.1  1.5 -0.5   0.002611286  -0.000005614  -0.004442957  -0.000413557  -0.000000620   0.000000002  -0.000000574   0.000000001
                        -0.011196693   0.000024072  -0.000250021  -0.000023272  -0.000008990   0.000000034  -0.000000971   0.000000002

   31    1.1  1.5 -1.5   0.336984170  -0.000724479  -0.006897184  -0.000641999  -0.006922509   0.000026400   0.002626180  -0.000004072
                         0.078591235  -0.000168963   0.122565434   0.011408559   0.000477630  -0.000001821  -0.001553347   0.000002409

   32    2.1  1.5 -1.5  -0.000098017  -0.045591046   0.035775634  -0.384347698   0.000322065   0.084452074   0.000048952   0.031570510
                         0.000000007  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000

   33    3.1  1.5 -1.5  -0.000000005   0.000000000  -0.000000000  -0.000000000   0.000000003   0.000000002   0.000000008  -0.000000002
                         0.000585926   0.272537922   0.012858016  -0.138137220   0.000245296   0.064321269  -0.000111474  -0.071893041

   34    4.1  1.5 -1.5  -0.079584830   0.000171098  -0.096405027  -0.008973511  -0.000722647   0.000002758   0.050501051  -0.000078312
                         0.341244512  -0.000733638  -0.005425047  -0.000504971  -0.010473624   0.000039941   0.085380071  -0.000132382

   35    5.1  1.5 -1.5   0.000000010  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000001   0.000000002  -0.000000001
                        -0.000137780  -0.064087811  -0.044116302   0.473953813   0.000036123   0.009472012  -0.000038553  -0.024863865

   36    6.1  1.5 -1.5   0.000593941   0.276266348   0.028831708  -0.309747075  -0.000193537  -0.050749394  -0.000061475  -0.039646976
                         0.000000008  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000002   0.000000000

   37    7.1  1.5 -1.5   0.000198635  -0.000000431   0.171478711   0.015961484   0.004292675  -0.000016369   0.005298396  -0.000008218
                        -0.000851709   0.000001831   0.009649705   0.000898208   0.062215671  -0.000237265   0.008957784  -0.000013888

   38    8.1  1.5 -1.5  -0.001066622   0.000002293   0.013102957   0.001219642  -0.000000705   0.000000003  -0.000000896   0.000000001
                         0.004573470  -0.000009832   0.000737349   0.000068634  -0.000010216   0.000000039  -0.000001514   0.000000002

   39    9.1  1.5 -1.5   0.000016374   0.007616326  -0.000250749   0.002693864  -0.000000018  -0.000004698   0.000000006   0.000003548
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   40   10.1  1.5 -1.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000016347   0.007603493  -0.000251407   0.002700941   0.000000017   0.000004451  -0.000000006  -0.000003571

   41    1.1  0.5  0.5  -0.000010276   0.000000022  -0.000000922  -0.000000086   0.721001532  -0.002749609   0.140572088  -0.000217948
                        -0.000002397   0.000000005   0.000016391   0.000001526  -0.049746712   0.000189701  -0.083146301   0.000128953

   42    2.1  0.5  0.5  -0.000001658   0.000000004  -0.000009931  -0.000000924   0.011175518  -0.000042631  -0.286951484   0.000444972
                         0.000007111  -0.000000015  -0.000000559  -0.000000052   0.161971703  -0.000617687  -0.485137196   0.000752208

   43    3.1  0.5  0.5   0.000000003   0.000001276   0.000000362  -0.000003886   0.000466455   0.122315400   0.000905804   0.584182529
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000015   0.000000005   0.000000049  -0.000000010

   44    4.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000010   0.000000005   0.000000041  -0.000000009
                         0.000000028   0.000012859  -0.000001109   0.000011917  -0.000430402  -0.112861423  -0.000764768  -0.493222499

   45    5.1  0.5  0.5   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000009  -0.000000008  -0.000000022   0.000000008
                         0.000000042   0.000019426  -0.000000950   0.000010201  -0.001461601  -0.383260688   0.000194059   0.125154838

   46    6.1  0.5  0.5   0.000000055   0.000025662  -0.000001738   0.000018673   0.001187303   0.311334082  -0.000213064  -0.137411727
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000008  -0.000000007  -0.000000021   0.000000007

   47    7.1  0.5  0.5  -0.000001189   0.000000003   0.000035597   0.000003313   0.026113270  -0.000099582   0.013218610  -0.000020508
                         0.000005098  -0.000000011   0.000002003   0.000000186   0.378471394  -0.001443336   0.022348177  -0.000034647

   48    8.1  0.5  0.5  -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000312139   0.145188676   0.002466430  -0.026497518  -0.000000108  -0.000028411   0.000000010   0.000006496

   49    9.1  0.5  0.5  -0.000205619  -0.095641674   0.010420642  -0.111951903  -0.000000112  -0.000029309   0.000000005   0.000003047
                         0.000000002  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   50   10.1  0.5  0.5  -0.137736927   0.000296119  -0.002369721  -0.000220577  -0.000001210   0.000000005   0.000002187  -0.000000003
                        -0.032122919   0.000069059   0.042110787   0.003919735   0.000000083  -0.000000000  -0.000001294   0.000000002

   51   11.1  0.5  0.5   0.041224963  -0.000088629  -0.007906724  -0.000735969  -0.000001150   0.000000004   0.000005330  -0.000000008
                         0.009614460  -0.000020673   0.140505328   0.013078436   0.000000079  -0.000000000  -0.000003153   0.000000005

   52   12.1  0.5  0.5  -0.011246944   0.000024176   0.138145256   0.012858760   0.000001901  -0.000000007   0.000006434  -0.000000010
                         0.048224743  -0.000103678   0.007773915   0.000723607   0.000027555  -0.000000105   0.000010878  -0.000000017

   53    1.1  0.5 -0.5  -0.000000023  -0.000010552  -0.000001528   0.000016417   0.002756145   0.722715674  -0.000253239  -0.163321215
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000013  -0.000000015  -0.000000035   0.000000013

   54    2.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000013   0.000000005   0.000000045  -0.000000010
                        -0.000000016  -0.000007302   0.000000926  -0.000009947  -0.000619156  -0.162356783  -0.000873966  -0.563648164

   55    3.1  0.5 -0.5  -0.000001243   0.000000003  -0.000000218  -0.000000020  -0.122025291   0.000465347   0.502811314  -0.000779609
                        -0.000000290   0.000000001   0.000003880   0.000000361   0.008419348  -0.000032122  -0.297405463   0.000461184

   56    4.1  0.5 -0.5  -0.000002921   0.000000006  -0.000011898  -0.000001107  -0.007768602   0.000029636   0.251098002  -0.000389376
                         0.000012523  -0.000000027  -0.000000670  -0.000000062  -0.112593737   0.000429381   0.424521174  -0.000658222

   57    5.1  0.5 -0.5  -0.000004412   0.000000009  -0.000010185  -0.000000948  -0.026380996   0.000100598  -0.063715924   0.000098814
                         0.000018918  -0.000000041  -0.000000573  -0.000000053  -0.382351668   0.001458135  -0.107721931   0.000167017

   58    6.1  0.5 -0.5  -0.000024992   0.000000054   0.000001049   0.000000098  -0.310595658   0.001184488  -0.118271549   0.000183376
                        -0.000005829   0.000000013  -0.000018643  -0.000001735   0.021430068  -0.000081718   0.069955868  -0.000108488

   59    7.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000003  -0.000000008  -0.000000013   0.000000006
                        -0.000000011  -0.000005235  -0.000003319   0.000035653  -0.001446767  -0.379371189   0.000040262   0.025964835

   60    8.1  0.5 -0.5  -0.032975885   0.000070893   0.026455662   0.002462534  -0.000001956   0.000000007  -0.000003307   0.000000005
                         0.141394281  -0.000303982   0.001488752   0.000138575  -0.000028344   0.000000108  -0.000005591   0.000000009

   61    9.1  0.5 -0.5   0.093142152  -0.000200245  -0.006289972  -0.000585480   0.000029239  -0.000000112   0.000002623  -0.000000004
                         0.021722554  -0.000046703   0.111775063   0.010404181  -0.000002017   0.000000008  -0.000001551   0.000000002

   62   10.1  0.5 -0.5  -0.000304066  -0.141433175  -0.003925937   0.042177411  -0.000000005  -0.000001213  -0.000000004  -0.000002541
                        -0.000000002   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   63   11.1  0.5 -0.5   0.000091008   0.042331258  -0.013099128   0.140727621  -0.000000004  -0.000001152  -0.000000010  -0.000006193
                        -0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   64   12.1  0.5 -0.5   0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000106460  -0.049518881  -0.012879103   0.138363816  -0.000000105  -0.000027621   0.000000020   0.000012639


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000043170  -0.072825481   0.002746949  -0.069841044   0.000019971   0.005285690   0.000497222  -0.004934791
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.020214005   0.000011982   0.025913559   0.001019217  -0.001313034   0.000004961  -0.006631595  -0.000668189
                         0.004439378  -0.000002631  -0.002125913  -0.000083615   0.000475753  -0.000001798  -0.003221389  -0.000324582

    3    3.1  1.5  1.5  -0.012545052   0.000007437   0.000993695   0.000039083  -0.001900270   0.000007180   0.000564276   0.000056856
                        -0.057121910   0.000033860   0.012112533   0.000476404  -0.005244562   0.000019816  -0.001161626  -0.000117044

    4    4.1  1.5  1.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000011763  -0.019843218   0.000346713  -0.008815158  -0.000023258  -0.006155626  -0.000391621   0.003886733

    5    5.1  1.5  1.5  -0.011632560   0.000006896  -0.001928812  -0.000075863   0.000835228  -0.000003156   0.002576789   0.000259633
                        -0.052967024   0.000031397  -0.023511023  -0.000924722   0.002305148  -0.000008710  -0.005304613  -0.000534484

    6    6.1  1.5  1.5  -0.013350028   0.000007913  -0.059018614  -0.002321286   0.007015085  -0.000026505   0.000197167   0.000019866
                         0.002931919  -0.000001738   0.004841806   0.000190436  -0.002541786   0.000009604   0.000095776   0.000009650

    7    7.1  1.5  1.5   0.000000001   0.000000001   0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000043701  -0.073723677  -0.003397764   0.086388019  -0.000018567  -0.004914056   0.000694573  -0.006893448

    8    8.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000002  -0.000003536  -0.000000069   0.000001753   0.000534406   0.141439439  -0.015108468   0.149947461

    9    9.1  1.5  1.5   0.000006317  -0.000000004   0.000003533   0.000000139  -0.104025499   0.000393044  -0.093117370  -0.009382358
                        -0.000001387   0.000000001  -0.000000290  -0.000000011   0.037691710  -0.000142412  -0.045233044  -0.004557610

   10   10.1  1.5  1.5   0.000000769  -0.000000000   0.000000544   0.000000021  -0.003863114   0.000014596   0.004740446   0.000477640
                         0.000003504  -0.000000002   0.000006625   0.000000261  -0.010661823   0.000040284  -0.009758747  -0.000983276

   11    1.1  1.5  0.5  -0.068437748   0.000040568  -0.071917732  -0.002828627   0.003809552  -0.000014394  -0.000547610  -0.000055176
                         0.015030224  -0.000008910   0.005900033   0.000232057  -0.001380321   0.000005215  -0.000266009  -0.000026803

   12    2.1  1.5  0.5   0.000005430   0.009161309   0.001649236  -0.041931751   0.000022042   0.005833669  -0.000169787   0.001685086
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   13    3.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000003284  -0.005540264  -0.000260667   0.006627456  -0.000016854  -0.004460720   0.000458208  -0.004547593

   14    4.1  1.5  0.5   0.005739061  -0.000003402   0.003533318   0.000138971   0.000153337  -0.000000579  -0.002080755  -0.000209654
                         0.026131907  -0.000015490   0.043068947   0.001693963   0.000423195  -0.000001599   0.004283472   0.000431596

   15    5.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000056325   0.095018131  -0.001834373   0.046638836   0.000001661   0.000439577   0.000455385  -0.004519571

   16    6.1  1.5  0.5  -0.000025491  -0.043002809   0.003348210  -0.085128089  -0.000008211  -0.002173108   0.000443337  -0.004399998
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   17    7.1  1.5  0.5  -0.007248728   0.000004297   0.001181413   0.000046467   0.001605168  -0.000006065  -0.001597272  -0.000160939
                        -0.033005937   0.000019565   0.014400699   0.000566400   0.004430110  -0.000016738   0.003288167   0.000331310

   18    8.1  1.5  0.5  -0.000001290   0.000000001   0.000000514   0.000000020   0.058594817  -0.000221391  -0.070147800  -0.007067981
                        -0.000005872   0.000000003   0.000006270   0.000000247   0.161716065  -0.000611018   0.144407229   0.014550243

   19    9.1  1.5  0.5   0.000000003   0.000005811  -0.000000117   0.000002966  -0.000787727  -0.208484886   0.004987121  -0.049495823
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   20   10.1  1.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000001  -0.000001178   0.000000171  -0.000004352  -0.000137820  -0.036476451   0.021165504  -0.210061904

   21    1.1  1.5 -0.5   0.000041535   0.070068773   0.002838130  -0.072159342  -0.000015309  -0.004051910   0.000061342  -0.000608801
                         0.000000001   0.000000001   0.000000001  -0.000000001   0.000000000   0.000000000   0.000000000   0.000000000

   22    2.1  1.5 -0.5   0.008948057  -0.000005304   0.041791352   0.001643713   0.005484739  -0.000020723  -0.001515719  -0.000152721
                        -0.001965163   0.000001165  -0.003428505  -0.000134848  -0.001987293   0.000007509  -0.000736282  -0.000074187

   23    3.1  1.5 -0.5   0.001188424  -0.000000705   0.000541887   0.000021313   0.001519585  -0.000005742   0.001987025   0.000200209
                         0.005411301  -0.000003208   0.006605266   0.000259795   0.004193910  -0.000015846  -0.004090517  -0.000412154

   24    4.1  1.5 -0.5  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000015859   0.026754689   0.001699654  -0.043213639   0.000001701   0.000450118   0.000479822  -0.004762108

   25    5.1  1.5 -0.5  -0.020382029   0.000012082   0.003813374   0.000149985  -0.000149746   0.000000566   0.001974781   0.000198976
                        -0.092806347   0.000055014   0.046482677   0.001828231  -0.000413284   0.000001562  -0.004065312  -0.000409614

   26    6.1  1.5 -0.5  -0.042001812   0.000024898   0.084843056   0.003336999  -0.002043127   0.000007720   0.003957757   0.000398777
                         0.009224392  -0.000005468  -0.006960408  -0.000273763   0.000740289  -0.000002797   0.001922535   0.000193712

   27    7.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000020031  -0.033792542   0.000568303  -0.014449079   0.000017803   0.004711946   0.000368331  -0.003655587

   28    8.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000004  -0.000006012   0.000000247  -0.000006291   0.000649890   0.172004181   0.016176091  -0.160543333

   29    9.1  1.5 -0.5   0.000005675  -0.000000003  -0.000002956  -0.000000116  -0.196014744   0.000740610   0.044521031   0.004485868
                        -0.000001246   0.000000001   0.000000242   0.000000010   0.071022307  -0.000268346   0.021626704   0.002179073

   30   10.1  1.5 -0.5   0.000000253  -0.000000000  -0.000000356  -0.000000014   0.012426041  -0.000046950   0.091784443   0.009248055
                         0.000001150  -0.000000001  -0.000004337  -0.000000171   0.034294679  -0.000129577  -0.188948722  -0.019038173

   31    1.1  1.5 -1.5   0.071130287  -0.000042165  -0.069607197  -0.002737751  -0.004969536   0.000018777  -0.004438798  -0.000447246
                        -0.015621556   0.000009260   0.005710478   0.000224601   0.001800619  -0.000006803  -0.002156207  -0.000217256

   32    2.1  1.5 -1.5  -0.000012268  -0.020695750   0.001022642  -0.026000616  -0.000005277  -0.001396567  -0.000742853   0.007372612
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   33    3.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000034667   0.058483253  -0.000478004   0.012153225   0.000021076   0.005578213   0.000130122  -0.001291426

   34    4.1  1.5 -1.5  -0.004256504   0.000002523   0.000720762   0.000028348  -0.002096971   0.000007923   0.001698269   0.000171115
                        -0.019381318   0.000011489   0.008785642   0.000345552  -0.005787439   0.000021867  -0.003496080  -0.000352259

   35    5.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000032146   0.054229347   0.000927828  -0.023590008  -0.000009264  -0.002451798   0.000594208  -0.005897352

   36    6.1  1.5 -1.5  -0.000008102  -0.013668189  -0.002329085   0.059216889   0.000028192   0.007461373   0.000022086  -0.000219198
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   37    7.1  1.5 -1.5  -0.015814226   0.000009375  -0.007063425  -0.000277815  -0.001674019   0.000006325  -0.003012023  -0.000303487
                        -0.072007574   0.000042684  -0.086098768  -0.003386387  -0.004620131   0.000017456   0.006200593   0.000624762

   38    8.1  1.5 -1.5  -0.000000759   0.000000000  -0.000000143  -0.000000006   0.048182654  -0.000182050   0.065518040   0.006601494
                        -0.000003454   0.000000002  -0.000001747  -0.000000069   0.132979498  -0.000502442  -0.134876342  -0.013589926

   39    9.1  1.5 -1.5   0.000000004   0.000006467   0.000000139  -0.000003545  -0.000418048  -0.110643433  -0.010430746   0.103522331
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   40   10.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000002  -0.000003587  -0.000000261   0.000006648   0.000042847   0.011340111   0.001093147  -0.010849192

   41    1.1  0.5  0.5   0.026674674  -0.000015812  -0.036020723  -0.001416747  -0.230293916   0.000870128   0.325341829   0.032780926
                        -0.005858262   0.000003474   0.002955091   0.000116227   0.083442729  -0.000315275   0.158039272   0.015923787

   42    2.1  0.5  0.5  -0.077282043   0.000045811   0.022688291   0.000892364   0.111998537  -0.000423168  -0.129062852  -0.013004168
                        -0.351891575   0.000208593   0.276556231   0.010877355   0.309105203  -0.001167904   0.265690570   0.026770560

   43    3.1  0.5  0.5   0.000258937   0.436819434   0.002466930  -0.062721649  -0.001404974  -0.371849601  -0.012278128   0.121857100
                         0.000000003   0.000000003   0.000000003  -0.000000003   0.000000000   0.000000000   0.000000000   0.000000000

   44    4.1  0.5  0.5  -0.000000003  -0.000000005  -0.000000002   0.000000005  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000102149   0.172330749   0.020241292  -0.514634064  -0.000170275  -0.045066238   0.020332650  -0.201796051

   45    5.1  0.5  0.5  -0.000000001  -0.000000003  -0.000000001   0.000000003  -0.000000000   0.000000000   0.000000001   0.000000000
                         0.000356166   0.600843574  -0.006491768   0.165052842   0.000525622   0.139114596   0.041571934  -0.412590199

   46    6.1  0.5  0.5   0.000111130   0.187467489  -0.024852734   0.631879708   0.001069049   0.282941630  -0.003379184   0.033537489
                        -0.000000002  -0.000000004  -0.000000001   0.000000003  -0.000000000   0.000000000   0.000000000   0.000000000

   47    7.1  0.5  0.5   0.099905581  -0.000059226   0.035550105   0.001398241   0.116096121  -0.000438650   0.118784099   0.011968498
                         0.454904256  -0.000269653   0.433333695   0.017043631   0.320414140  -0.001210633  -0.244530588  -0.024638514

   48    8.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000012  -0.000020194   0.000000322  -0.000008187   0.001691181   0.447599051  -0.010719058   0.106383753

   49    9.1  0.5  0.5   0.000000001   0.000001879  -0.000000588   0.000014945   0.000295920   0.078320278  -0.045454757   0.451126172
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   50   10.1  0.5  0.5  -0.000019573   0.000000012   0.000004840   0.000000190   0.378572134  -0.001430374   0.198876634   0.020038494
                         0.000004299  -0.000000003  -0.000000397  -0.000000016  -0.137168591   0.000518269   0.096607063   0.009733974

   51   11.1  0.5  0.5  -0.000003668   0.000000002  -0.000018362  -0.000000722   0.007622759  -0.000028801  -0.182559722  -0.018394428
                         0.000000806  -0.000000000   0.000001506   0.000000059  -0.002761965   0.000010436  -0.088680898  -0.008935346

   52   12.1  0.5  0.5  -0.000002368   0.000000001  -0.000001157  -0.000000046  -0.006148872   0.000023232  -0.107197652  -0.010801066
                        -0.000010782   0.000000006  -0.000014108  -0.000000555  -0.016970297   0.000064119   0.220678567   0.022235222

   53    1.1  0.5 -0.5   0.000016189   0.027310391  -0.001421507   0.036141736  -0.000925484  -0.244944844   0.036443876  -0.361695614
                         0.000000001  -0.000000001   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000

   54    2.1  0.5 -0.5  -0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000213564   0.360277941  -0.010913897   0.277485328  -0.001242205  -0.328769978  -0.029761910   0.295378907

   55    3.1  0.5 -0.5  -0.426651373   0.000252909  -0.062511639  -0.002458670   0.349608096  -0.001320938   0.109609324   0.011044062
                         0.093700711  -0.000055546   0.005128372   0.000201709  -0.126674009   0.000478617   0.053244238   0.005364805

   56    4.1  0.5 -0.5   0.036966110  -0.000021915   0.042078510   0.001655010  -0.015352231   0.000058006  -0.088172761  -0.008884147
                         0.168319321  -0.000099771   0.512910927   0.020173519  -0.042370683   0.000160091   0.181513665   0.018289029

   57    5.1  0.5 -0.5   0.128884993  -0.000076401  -0.013495367  -0.000530791   0.047390675  -0.000179058  -0.180277151  -0.018164440
                         0.586857443  -0.000347875  -0.164500200  -0.006470032   0.130793710  -0.000494183   0.371121033   0.037393566

   58    6.1  0.5 -0.5  -0.183103717   0.000108543   0.629764000   0.024769520  -0.266017993   0.001005106   0.030166658   0.003039544
                         0.040213034  -0.000023836  -0.051664973  -0.002032059   0.096386686  -0.000364181   0.014653870   0.001476501

   59    7.1  0.5 -0.5   0.000000005   0.000000005   0.000000005  -0.000000006  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000276080  -0.465745646  -0.017100889   0.434789491  -0.001287652  -0.340798372   0.027391628  -0.271854502

   60    8.1  0.5 -0.5  -0.000004332   0.000000003   0.000000669   0.000000026   0.152478761  -0.000576116   0.046483314   0.004683585
                        -0.000019724   0.000000012   0.000008160   0.000000321   0.420826731  -0.001590026  -0.095691193  -0.009641693

   61    9.1  0.5 -0.5  -0.000001835   0.000000001   0.000014895   0.000000586  -0.073635694   0.000278221   0.405783782   0.040886130
                         0.000000403  -0.000000000  -0.000001222  -0.000000048   0.026680528  -0.000100808   0.197115058   0.019861001

   62   10.1  0.5 -0.5  -0.000000012  -0.000020040   0.000000191  -0.000004856   0.001521372   0.402656284   0.022277601  -0.221099163
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   63   11.1  0.5 -0.5  -0.000000002  -0.000003755  -0.000000725   0.000018423   0.000030634   0.008107707  -0.020449826   0.202958995
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   64   12.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000
                         0.000000007   0.000011039   0.000000557  -0.000014156   0.000068199   0.018049920  -0.024719792   0.245337250


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.000249591   0.002818423  -0.043260217  -0.001636740   0.039598437   0.000926442  -0.022511921  -0.004950683
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000680421  -0.000060256  -0.000170119   0.004496377  -0.001389259   0.059380421  -0.000817648   0.003718040
                        -0.000189929   0.000016820  -0.000416851   0.011017675  -0.000273667   0.011697211   0.000805748  -0.003663926

    3    3.1  1.5  1.5  -0.001501033   0.000132927   0.001588395  -0.041982430   0.000043619  -0.001864390   0.006932969  -0.031525839
                        -0.005377449   0.000476211  -0.000648233   0.017133273  -0.000221431   0.009464503   0.007035365  -0.031991459

    4    4.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000246276  -0.002780989   0.050163869   0.001897938  -0.030964826  -0.000724450   0.022145938   0.004870198

    5    5.1  1.5  1.5  -0.000712047   0.000063057  -0.000678180   0.017924796   0.000220642  -0.009430788   0.003344960  -0.015210319
                        -0.002550909   0.000225901   0.000276769  -0.007315213  -0.001120080   0.047875013   0.003394363  -0.015434967

    6    6.1  1.5  1.5  -0.000623343   0.000055201   0.000864209  -0.022841673   0.000017906  -0.000765350   0.000819613  -0.003726972
                         0.000173997  -0.000015409   0.002117611  -0.055969979   0.000003527  -0.000150764  -0.000807684   0.003672728

    7    7.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000041105   0.000464168   0.039171306   0.001482037   0.056503778   0.001321958  -0.004068360  -0.000894688

    8    8.1  1.5  1.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001
                        -0.000013844  -0.000156327  -0.282737179  -0.010697294  -0.307929707  -0.007204297   0.002897127   0.000637118

    9    9.1  1.5  1.5   0.181118784  -0.016039355  -0.003213613   0.084938090  -0.004832231   0.206541645  -0.058373360   0.265437409
                        -0.050556543   0.004477141  -0.007874459   0.208127620  -0.000951888   0.040686159   0.057523767  -0.261574101

   10   10.1  1.5  1.5   0.064737403  -0.005732957   0.000766988  -0.020272059   0.000112689  -0.004816674  -0.073762565   0.335415738
                         0.231921707  -0.020538315  -0.000313012   0.008273145  -0.000572069   0.024451653  -0.074851996   0.340369647

   11    1.1  1.5  0.5  -0.006268789   0.000555146   0.000465860  -0.012313026  -0.000104510   0.004467036   0.008213626  -0.037349290
                         0.001749837  -0.000154960   0.001141519  -0.030171161  -0.000020587   0.000879951  -0.008094081   0.036805689

   12    2.1  1.5  0.5  -0.000437237  -0.004937346  -0.046909411  -0.001774806  -0.013862944  -0.000324336   0.040091274   0.008816626
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   13    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000346745   0.003915498   0.035620171   0.001347681   0.036908351   0.000863505  -0.031496178  -0.006926446

   14    4.1  1.5  0.5  -0.001625779   0.000143974  -0.000139592   0.003689529  -0.000175123   0.007485193   0.007443312  -0.033846492
                        -0.005824351   0.000515788   0.000056968  -0.001505718   0.000889005  -0.037998280   0.007553246  -0.034346387

   15    5.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000617320  -0.006970867  -0.003716225  -0.000140602   0.037077560   0.000867463   0.055911031   0.012295610

   16    6.1  1.5  0.5  -0.000556979  -0.006289492   0.017312854   0.000655028   0.036419140   0.000852059   0.050040274   0.011004549
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   17    7.1  1.5  0.5   0.000924341  -0.000081857  -0.001350039   0.035682492  -0.000133539   0.005707799  -0.004329041   0.019685169
                         0.003311451  -0.000293253   0.000550959  -0.014562232   0.000677906  -0.028975412  -0.004392979   0.019975908

   18    8.1  1.5  0.5   0.024579769  -0.002176713  -0.012311549   0.325403096  -0.001454184   0.062155460  -0.028177554   0.128129970
                         0.088057009  -0.007798074   0.005024415  -0.132798893   0.007382106  -0.315529690  -0.028593721   0.130022381

   19    9.1  1.5  0.5  -0.004038390  -0.045602097   0.420554131   0.015911566   0.105401800   0.002465972   0.088902055   0.019550793
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001

   20   10.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001
                         0.004062758   0.045877267   0.069071188   0.002613292   0.427117053   0.009992794  -0.093939619  -0.020658622

   21    1.1  1.5 -0.5   0.000576368   0.006508429   0.032586954   0.001232920   0.004552881   0.000106519  -0.052436897  -0.011531600
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   22    2.1  1.5 -0.5  -0.004755553   0.000421138   0.000670613  -0.017724786  -0.000318221   0.013601557   0.006279828  -0.028555858
                         0.001327440  -0.000117554   0.001643233  -0.043431841  -0.000062686   0.002679339  -0.006188429   0.028140242

   23    3.1  1.5 -0.5  -0.001052709   0.000093225  -0.001247772   0.032979515   0.000166893  -0.007133405   0.004861703  -0.022107306
                        -0.003771330   0.000333978   0.000509223  -0.013459131  -0.000847223   0.036212442   0.004933507  -0.022433819

   24    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000535505  -0.006047001  -0.003984948  -0.000150770   0.038728509   0.000906089   0.048220943   0.010604453

   25    5.1  1.5 -0.5   0.001874166  -0.000165971   0.000130179  -0.003440727   0.000167657  -0.007166108  -0.008630343   0.039244199
                         0.006714200  -0.000594590  -0.000053127   0.001404181  -0.000851107   0.036378460  -0.008757808   0.039823815

   26    6.1  1.5 -0.5  -0.006057913   0.000536471  -0.000247503   0.006541686   0.000835993  -0.035732454   0.007838223  -0.035642244
                         0.001690974  -0.000149748  -0.000606468   0.016029387   0.000164680  -0.007038853  -0.007724142   0.035123489

   27    7.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000304463   0.003438039  -0.038539575  -0.001458136   0.029532245   0.000690934  -0.028045370  -0.006167565

   28    8.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.008096174   0.091423202  -0.351457993  -0.013297330   0.321593356   0.007523971  -0.182546183  -0.040144432

   29    9.1  1.5 -0.5  -0.043923032   0.003889697  -0.006012207   0.158906965   0.002419476  -0.103414441   0.013925465  -0.063322370
                         0.012260444  -0.001085749  -0.014731982   0.389376879   0.000476607  -0.020371370  -0.013722788   0.062400744

   30   10.1  1.5 -0.5  -0.012334425   0.001092301  -0.002419559   0.063950682   0.001931342  -0.082550390   0.014500377  -0.065936633
                        -0.044188071   0.003913168   0.000987436  -0.026098645  -0.009804380   0.419063731   0.014714541  -0.066910481

   31    1.1  1.5 -1.5  -0.002714649   0.000240401  -0.000618445   0.016345933  -0.000908974   0.038851805   0.003526229  -0.016034592
                         0.000757753  -0.000067104  -0.001515402   0.040053175  -0.000179057   0.007653327  -0.003474906   0.015801217

   32    2.1  1.5 -1.5   0.000062560   0.000706432   0.011899855   0.000450228  -0.060521559  -0.001415957  -0.005219978  -0.001147946
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   33    3.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000494416   0.005583015  -0.045343946  -0.001715577   0.009646386   0.000225686  -0.044914719  -0.009877368

   34    4.1  1.5 -1.5  -0.000747688   0.000066213   0.001757237  -0.046445034   0.000140017  -0.005984679   0.003418414  -0.015544331
                        -0.002678593   0.000237208  -0.000717139   0.018954488  -0.000710791   0.030380982   0.003468902  -0.015773913

   35    5.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000234537   0.002648424   0.019360028   0.000732482   0.048795048   0.001141605  -0.021670072  -0.004765549

   36    6.1  1.5 -1.5  -0.000057312  -0.000647172  -0.060451473  -0.002287167   0.000780058   0.000018250   0.005232519   0.001150703
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   37    7.1  1.5 -1.5   0.000124795  -0.000011051   0.001372168  -0.036267390  -0.000255499   0.010920681  -0.000627986   0.002855600
                         0.000447077  -0.000039592  -0.000559990   0.014800933   0.001297032  -0.055438395  -0.000637261   0.002897775

   38    8.1  1.5 -1.5  -0.000042030   0.000003722  -0.009904263   0.261776813   0.001392399  -0.059514639   0.000447195  -0.002033507
                        -0.000150571   0.000013334   0.004041987  -0.106832638  -0.007068460   0.302123670   0.000453801  -0.002063540

   39    9.1  1.5 -1.5   0.016652499   0.188042490   0.224792316   0.008504964  -0.210510842  -0.004925094  -0.372663425  -0.081953846
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001

   40   10.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001
                        -0.021323442  -0.240787478  -0.021895235  -0.000828401   0.024921551   0.000583062   0.477865267   0.105089187

   41    1.1  0.5  0.5  -0.172728792   0.015296362   0.002993157  -0.079111291  -0.007301466   0.312082958  -0.023454655   0.106653837
                         0.048214605  -0.004269745   0.007334267  -0.193849951  -0.001438298   0.061476497   0.023113286  -0.105101543

   42    2.1  0.5  0.5   0.045101557  -0.003994063   0.010083048  -0.266502221   0.001145506  -0.048961788   0.022106457  -0.100523263
                         0.161576302  -0.014308730  -0.004114951   0.108761104  -0.005815114   0.248552543   0.022432957  -0.102007937

   43    3.1  0.5  0.5   0.023561080   0.266055218  -0.322637601  -0.012206917   0.104225674   0.002438455   0.225984742   0.049697173
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000001

   44    4.1  0.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000001
                         0.037593066   0.424506481  -0.036281327  -0.001372695  -0.173784456  -0.004065847   0.361448571   0.079487544

   45    5.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000001
                        -0.016125476  -0.182091272   0.123795703   0.004683781  -0.358920284  -0.008397268  -0.152635171  -0.033566588

   46    6.1  0.5  0.5   0.033429351   0.377489195   0.245624521   0.009293146   0.033759512   0.000789835   0.319523890   0.070267727
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000   0.000000001

   47    7.1  0.5  0.5  -0.049299989   0.004365864   0.010241076  -0.270679012  -0.001079325   0.046133062  -0.024360108   0.110771145
                        -0.176617180   0.015640707  -0.004179443   0.110465677   0.005479151  -0.234192630  -0.024719893   0.112407175

   48    8.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.008673450   0.097941890  -0.285571868  -0.010804544  -0.071840707  -0.001680779  -0.060604502  -0.013327769

   49    9.1  0.5  0.5  -0.008724746  -0.098521121  -0.046911407  -0.001774882  -0.290482921  -0.006796114   0.063999210   0.014074312
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   50   10.1  0.5  0.5  -0.095422619   0.008450351   0.003696697  -0.097706350   0.003214662  -0.137402709   0.009750736  -0.044338893
                         0.026635767  -0.002358786   0.009058182  -0.239414259   0.000633248  -0.027066640  -0.009608820   0.043693562

   51   11.1  0.5  0.5  -0.406144755   0.035967004   0.000044657  -0.001180329  -0.002945497   0.125897897   0.041553466  -0.188953391
                         0.113369106  -0.010039640   0.000109426  -0.002892213  -0.000580227   0.024800334  -0.040948677   0.186203269

   52   12.1  0.5  0.5  -0.107061951   0.009481096   0.000368589  -0.009742067  -0.000718649   0.030716901   0.038424459  -0.174725052
                        -0.383549376   0.033966023  -0.000150423   0.003975794   0.003648198  -0.155933109   0.038991966  -0.177305647

   53    1.1  0.5 -0.5  -0.015881102  -0.179331770  -0.209371440  -0.007921519  -0.318080387  -0.007441782  -0.149737688  -0.032929391
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000001

   54    2.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.014855716  -0.167752949  -0.287840948  -0.010890394   0.253329081   0.005926866  -0.143215033  -0.031494968

   55    3.1  0.5 -0.5  -0.256259091   0.022693564  -0.004612401   0.121909068  -0.002392478   0.102260492  -0.035397863   0.160962414
                         0.071530812  -0.006334561  -0.011301972   0.298719267  -0.000471288   0.020144057   0.034882666  -0.158619687

   56    4.1  0.5 -0.5   0.114131546  -0.010107159  -0.001270932   0.033591656   0.000785821  -0.033587923   0.055792658  -0.253702345
                         0.408876194  -0.036208893   0.000518675  -0.013708950  -0.003989185   0.170507737   0.056616684  -0.257449392

   57    5.1  0.5 -0.5  -0.048956516   0.004335447   0.004336555  -0.114618264   0.001622968  -0.069369765  -0.023560537   0.107135299
                        -0.175386689   0.015531738  -0.001769773   0.046776379  -0.008238937   0.352152816  -0.023908511   0.108717630

   58    6.1  0.5 -0.5  -0.363590080   0.032198485   0.003511428  -0.092809568  -0.000774942   0.033122974  -0.050049674   0.227587651
                         0.101490619  -0.008987715   0.008604210  -0.227415455  -0.000152653   0.006524818   0.049321228  -0.224275227

   59    7.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.016238611   0.183368801  -0.292352173  -0.011061075  -0.238693208  -0.005584446   0.157815144   0.034705734

   60    8.1  0.5 -0.5   0.026332364  -0.002331918  -0.010003563   0.264401356   0.000324850  -0.013884902  -0.009354820   0.042538567
                         0.094335679  -0.008354095   0.004082512  -0.107903729  -0.001649088   0.070486145  -0.009492985   0.043166839

   61    9.1  0.5 -0.5   0.094893583  -0.008403501  -0.000670642   0.017725541   0.006667973  -0.285005845  -0.010024727   0.045584792
                        -0.026488094   0.002345709  -0.001643303   0.043433689   0.001313508  -0.056142639   0.009878821  -0.044921328

   62   10.1  0.5 -0.5  -0.008773386  -0.099070381  -0.258584064  -0.009783467   0.140043234   0.003276440   0.062250018   0.013689641
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   63   11.1  0.5 -0.5  -0.037341931  -0.421670626  -0.003123791  -0.000118188  -0.128317330  -0.003002102   0.265282946   0.058339392
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000001

   64   12.1  0.5 -0.5   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000001
                         0.035264457   0.398211483  -0.010522111  -0.000398102  -0.158929741  -0.003718307  -0.248929983  -0.054743149


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.077023159  -0.000265491   0.026689364  -0.001654975  -0.032469995   0.000781804   0.010825608   0.003047076
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000036443   0.010572738   0.000673607   0.010863082   0.000101767   0.004226608  -0.009700350   0.034463265
                        -0.000007121  -0.002065821   0.005251040   0.084682189  -0.000047938  -0.001990945  -0.000864381   0.003070959

    3    3.1  1.5  1.5   0.000039823   0.011553260   0.001917508   0.030923161   0.000258894   0.010752418  -0.000319724   0.001135909
                         0.000203811   0.059128844  -0.000245979  -0.003966842   0.000549610   0.022826474   0.003588037  -0.012747527

    4    4.1  1.5  1.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.077946593   0.000268674  -0.020858682   0.001293422   0.032851391  -0.000790987  -0.008434217  -0.002373973

    5    5.1  1.5  1.5  -0.000008859  -0.002570102  -0.006486591  -0.104607604  -0.000056396  -0.002342252   0.001069609  -0.003800089
                        -0.000045339  -0.013153619   0.000832104   0.013419126  -0.000119724  -0.004972403  -0.012003479   0.042645792

    6    6.1  1.5  1.5  -0.000205556  -0.059635051   0.000546916   0.008819970  -0.000554373  -0.023024300  -0.007927521   0.028164786
                         0.000040164   0.011652169   0.004263432   0.068755289   0.000261137   0.010845604  -0.000706408   0.002509713

    7    7.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000492211  -0.000001697   0.038159969  -0.002366253  -0.000255948   0.000006163   0.015640990   0.004402458

    8    8.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000003  -0.000000002   0.000000009
                         0.115867926  -0.000399385  -0.332706489   0.020630726   0.224060179  -0.005394860   0.628135657   0.176800878

    9    9.1  1.5  1.5   0.000649720   0.188493986   0.000530242   0.008551084  -0.008209254  -0.340947990   0.034783706  -0.123579060
                        -0.000126950  -0.036830080   0.004133457   0.066659214   0.003866972   0.160603663   0.003099513  -0.011011906

   10   10.1  1.5  1.5  -0.000127703  -0.037048585   0.004124823   0.066519975   0.003851752   0.159971527   0.003103775  -0.011027046
                        -0.000653575  -0.189612281  -0.000529135  -0.008533222   0.008176943   0.339606018  -0.034831532   0.123748975

   11    1.1  1.5  0.5   0.000090634   0.026294228  -0.000606061  -0.009773796   0.000241652   0.010036324   0.008780847  -0.031196468
                        -0.000017709  -0.005137663  -0.004724496  -0.076190756  -0.000113830  -0.004727614   0.000782446  -0.002779860

   12    2.1  1.5  0.5   0.075204479  -0.000259222  -0.014335986   0.000888957  -0.031571674   0.000760174  -0.005989610  -0.001685891
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   13    3.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.060964986  -0.000210140   0.070349898  -0.004362312  -0.025779046   0.000620701   0.028619792   0.008055592

   14    4.1  1.5  0.5  -0.000028382  -0.008234139  -0.004311225  -0.069526032  -0.000184902  -0.007679370   0.000715353  -0.002541494
                        -0.000145259  -0.042141796   0.000553047   0.008918841  -0.000392531  -0.016302652  -0.008027911   0.028521448

   15    5.1  1.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.028855296  -0.000099461   0.033273531  -0.002063251  -0.012113361   0.000291662   0.013545598   0.003812669

   16    6.1  1.5  0.5  -0.067893584   0.000234023   0.012944590  -0.000802678   0.028609298  -0.000688847   0.005419643   0.001525463
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   17    7.1  1.5  0.5  -0.000064614  -0.018745584   0.002931691   0.047278641  -0.000422238  -0.017536446  -0.000479325   0.001702940
                        -0.000330691  -0.095938697  -0.000376079  -0.006064932  -0.000896375  -0.037228391   0.005379139  -0.019110928

   18    8.1  1.5  0.5  -0.000073675  -0.021374372   0.002421916   0.039057629   0.002225279   0.092420642   0.001772562  -0.006297532
                        -0.000377066  -0.109392663  -0.000310685  -0.005010336   0.004724080   0.196201204  -0.019892243   0.070672880

   19    9.1  1.5  0.5  -0.155188600   0.000534920  -0.270049042   0.016745414  -0.305442448   0.007354362   0.505497299   0.142281950
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000002   0.000000001  -0.000000005

   20   10.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000002  -0.000000001   0.000000005
                         0.289177114  -0.000996765  -0.116229378   0.007207243   0.563869332  -0.013576694   0.217159749   0.061123794

   21    1.1  1.5 -0.5  -0.026791454   0.000092348   0.076815093  -0.004763211   0.011094059  -0.000267120   0.031320077   0.008815639
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   22    2.1  1.5 -0.5   0.000254412   0.073808750  -0.000113109  -0.001824082   0.000687697   0.028561554   0.001679237  -0.005965971
                        -0.000049710  -0.014421586  -0.000881732  -0.014219466  -0.000323940  -0.013453929   0.000149634  -0.000531617

   23    3.1  1.5 -0.5  -0.000040298  -0.011690949   0.004326856   0.069778109  -0.000264505  -0.010985463  -0.000714986   0.002540193
                        -0.000206240  -0.059833529  -0.000555052  -0.008951178  -0.000561522  -0.023321210   0.008023799  -0.028506840

   24    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.042938701   0.000148005   0.070095755  -0.004346553   0.018020799  -0.000433900   0.028634458   0.008059720

   25    5.1  1.5 -0.5  -0.000019073  -0.005533435   0.002046482   0.033003091  -0.000124289  -0.005161979  -0.000338399   0.001202260
                        -0.000097615  -0.028319767  -0.000262524  -0.004233656  -0.000263854  -0.010958444   0.003797622  -0.013492139

   26    6.1  1.5 -0.5  -0.000229679  -0.066633538   0.000102131   0.001647043  -0.000623171  -0.025881618  -0.001519442   0.005398254
                         0.000044877   0.013019612   0.000796154   0.012839379   0.000293545   0.012191545  -0.000135395   0.000481029

   27    7.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.097752905   0.000336945  -0.047666060   0.002955715   0.041151914  -0.000990845  -0.019186651  -0.005400452

   28    8.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.111461287   0.000384196  -0.039377682   0.002441762  -0.216878970   0.005221954   0.070952906   0.019971062

   29    9.1  1.5 -0.5  -0.000524992  -0.152308435  -0.002130652  -0.034360490   0.006653179   0.276320826  -0.141720413   0.503502280
                         0.000102579   0.029759739  -0.016609311  -0.267854142  -0.003133984  -0.130161016  -0.012628454   0.044866172

   30   10.1  1.5 -0.5  -0.000191144  -0.055454044  -0.007148664  -0.115284691   0.005785561   0.240286855  -0.005425139   0.019274339
                        -0.000978266  -0.283810240   0.000917035   0.014788789   0.012282260   0.510108665   0.060882559  -0.216302696

   31    1.1  1.5 -1.5  -0.000260564  -0.075593677  -0.000210576  -0.003395900  -0.000707265  -0.029374227   0.003035050  -0.010782883
                         0.000050912   0.014770345  -0.001641524  -0.026472439   0.000333157   0.013836739   0.000270448  -0.000960843

   32    2.1  1.5 -1.5   0.010772670  -0.000037132   0.085376107  -0.005294069  -0.004672052   0.000112492   0.034599818   0.009738785
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   33    3.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.060246976   0.000207665   0.031176557  -0.001933221   0.025232170  -0.000607533   0.012798037   0.003602254

   34    4.1  1.5 -1.5  -0.000051522  -0.014947427   0.001282909   0.020689148  -0.000337071  -0.013999267  -0.000210706   0.000748592
                        -0.000263688  -0.076499972  -0.000164572  -0.002654016  -0.000715572  -0.029719260   0.002364604  -0.008400930

   35    5.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001
                         0.013402355  -0.000046197  -0.105464798   0.006539744  -0.005496447   0.000132342  -0.042814766  -0.012051041

   36    6.1  1.5 -1.5  -0.060762755   0.000209443   0.069318696  -0.004298368   0.025450845  -0.000612799   0.028276383   0.007958933
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   37    7.1  1.5 -1.5   0.000000325   0.000094389  -0.002347021  -0.037849813   0.000002626   0.000109070   0.000390747  -0.001388240
                         0.000001665   0.000483076   0.000301077   0.004855397   0.000005575   0.000231546  -0.004385083   0.015579261

   38    8.1  1.5 -1.5   0.000076588   0.022219411   0.020463044   0.330002324  -0.002298959  -0.095480837   0.015692237  -0.055751123
                         0.000391973   0.113717519  -0.002625012  -0.042332896  -0.004880502  -0.202697739  -0.176103106   0.625656628

   39    9.1  1.5 -1.5   0.192058422  -0.000662006   0.067205445  -0.004167328   0.376880709  -0.009074433  -0.124068716  -0.034921529
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   40   10.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.193197864  -0.000665934   0.067065065  -0.004158623   0.375397305  -0.009038716  -0.124239304  -0.034969545

   41    1.1  0.5  0.5  -0.000000159  -0.000046058   0.000000831   0.000013398   0.000003054   0.000126833   0.000090332  -0.000320929
                         0.000000031   0.000008999   0.000006476   0.000104443  -0.000001439  -0.000059745   0.000008049  -0.000028597

   42    2.1  0.5  0.5   0.000000021   0.000006018  -0.000005368  -0.000086570  -0.000001088  -0.000045168  -0.000006782   0.000024095
                         0.000000106   0.000030799   0.000000689   0.000011105  -0.000002309  -0.000095887   0.000076109  -0.000270398

   43    3.1  0.5  0.5   0.000042865  -0.000000148  -0.000012290   0.000000762   0.000128955  -0.000003105   0.000039001   0.000010978
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   44    4.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000072723  -0.000000251   0.000083269  -0.000005163   0.000227966  -0.000005489  -0.000256991  -0.000072335

   45    5.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000037688   0.000000130   0.000108999  -0.000006759  -0.000114721   0.000002762  -0.000337736  -0.000095062

   46    6.1  0.5  0.5   0.000078619  -0.000000271   0.000003492  -0.000000217   0.000238910  -0.000005752  -0.000007264  -0.000002045
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   47    7.1  0.5  0.5  -0.000000012  -0.000003570   0.000006266   0.000101046   0.000000655   0.000027188   0.000007637  -0.000027131
                        -0.000000063  -0.000018272  -0.000000804  -0.000012962   0.000001390   0.000057719  -0.000085701   0.000304477

   48    8.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000002
                         0.536369630  -0.001848813  -0.102332412   0.006345509  -0.277696289   0.006686297  -0.052505570  -0.014778704

   49    9.1  0.5  0.5  -0.357070341   0.001230786  -0.412089423   0.025553165   0.185643604  -0.004469877  -0.206856844  -0.058223842
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000002

   50   10.1  0.5  0.5  -0.001765647  -0.512241761   0.001264807   0.020397226  -0.005879810  -0.244201165  -0.022876650   0.081275840
                         0.000344992   0.100087569   0.009859693   0.159004757   0.002769686   0.115031039  -0.002038499   0.007242342

   51   11.1  0.5  0.5   0.000544084   0.157847243   0.004109218   0.066268321   0.001819308   0.075559760  -0.072770797   0.258539061
                        -0.000106310  -0.030841974   0.032033045   0.516588799  -0.000856987  -0.035592450  -0.006484477   0.023037945

   52   12.1  0.5  0.5   0.000118601   0.034408270   0.031656977   0.510524043   0.000935669   0.038860399  -0.006430004   0.022844413
                         0.000606997   0.176099319  -0.004060976  -0.065490331   0.001986349   0.082497339   0.072159480  -0.256367182

   53    1.1  0.5 -0.5  -0.000046929   0.000000162   0.000105299  -0.000006529  -0.000140200   0.000003376  -0.000322200  -0.000090689
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   54    2.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000031381   0.000000108  -0.000087280   0.000005412  -0.000105992   0.000002552   0.000271470   0.000076410

   55    3.1  0.5 -0.5  -0.000000145  -0.000042070   0.000000097   0.000001564   0.000002809   0.000116660   0.000010934  -0.000038847
                         0.000000028   0.000008220   0.000000756   0.000012190  -0.000001323  -0.000054953   0.000000974  -0.000003462

   56    4.1  0.5 -0.5   0.000000048   0.000013946  -0.000005121  -0.000082592  -0.000002339  -0.000097145  -0.000006420   0.000022810
                         0.000000246   0.000071373   0.000000657   0.000010595  -0.000004966  -0.000206231   0.000072050  -0.000255977

   57    5.1  0.5 -0.5  -0.000000025  -0.000007227  -0.000006704  -0.000108113   0.000001177   0.000048887  -0.000008437   0.000029976
                        -0.000000127  -0.000036989   0.000000860   0.000013869   0.000002499   0.000103783   0.000094687  -0.000336403

   58    6.1  0.5 -0.5  -0.000000266  -0.000077160  -0.000000028  -0.000000444   0.000005204   0.000216132  -0.000002037   0.000007236
                         0.000000052   0.000015076  -0.000000215  -0.000003464  -0.000002451  -0.000101809  -0.000000181   0.000000645

   59    7.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000018618  -0.000000064   0.000101874  -0.000006317   0.000063802  -0.000001536  -0.000305684  -0.000086041

   60    8.1  0.5 -0.5   0.000354537   0.102856912   0.006293934   0.101500677   0.002849293   0.118337289  -0.001311708   0.004660210
                         0.001814501   0.526415079  -0.000807390  -0.013020568   0.006048809   0.251220053   0.014720377  -0.052298349

   61    9.1  0.5 -0.5   0.001207944   0.350443428   0.003251333   0.052433419   0.004043708   0.167943893  -0.057994053   0.206040453
                        -0.000236022  -0.068473587   0.025345475   0.408740051  -0.001904791  -0.079110026  -0.005167747   0.018359890

   62   10.1  0.5 -0.5  -0.521928293   0.001799035   0.160307703  -0.009940487   0.269937676  -0.006499487   0.081597878   0.022967294
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000002

   63   11.1  0.5 -0.5   0.160832147  -0.000554373   0.520821925  -0.032295536  -0.083523050   0.002011046   0.259563466   0.073059136
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000003

   64   12.1  0.5 -0.5   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000004
                        -0.179429371   0.000618475   0.514707472  -0.031916387   0.091191785  -0.002195691   0.257382982   0.072445397


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.000000000  -0.000025318  -0.000928609   0.032697280   0.003530841  -0.030002470   0.011360624   0.012705823
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000013225   0.000000000  -0.008329079  -0.000236547  -0.045756302  -0.005384831   0.000617785  -0.000552378
                        -0.000000333   0.000000000   0.003252729   0.000092378   0.000995882   0.000117201   0.003316066  -0.002964985

    3    3.1  1.5  1.5   0.000000674  -0.000000000  -0.012481724  -0.000354483  -0.000166157  -0.000019554   0.025606208  -0.022895210
                         0.000026767  -0.000000000  -0.031961238  -0.000907705  -0.007634173  -0.000898428  -0.004770451   0.004265390

    4    4.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000023239   0.001077502  -0.037939981  -0.002768426   0.023524034  -0.011230468  -0.012560256

    5    5.1  1.5  1.5   0.000000508  -0.000000000   0.005378633   0.000152754  -0.000809546  -0.000095271   0.012008272  -0.010736924
                         0.000020181   0.000000000   0.013772760   0.000391149  -0.037194970  -0.004377291  -0.002237148   0.002000295

    6    6.1  1.5  1.5  -0.000002760   0.000000000   0.042710961   0.001212999   0.000415253   0.000048869  -0.000534488   0.000477900
                         0.000000070   0.000000000  -0.016679780  -0.000473709  -0.000009038  -0.000001064  -0.002868956   0.002565212

    7    7.1  1.5  1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000014891   0.000845009  -0.029753639   0.004992766  -0.042424821   0.001717002   0.001920310

    8    8.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000108588   0.008214622  -0.289245402   0.036505377  -0.310195609  -0.000791920  -0.000885691

    9    9.1  1.5  1.5   0.499985870  -0.000000008   0.214457946   0.006090645   0.209696609   0.024678150  -0.053293518   0.047651190
                        -0.012592266   0.000000052  -0.083751600  -0.002378561  -0.004564030  -0.000537118  -0.286062051   0.255775889

   10   10.1  1.5  1.5  -0.012582080   0.000000052   0.008433613   0.000239516   0.000412321   0.000048525   0.366597853  -0.327785148
                        -0.499581447   0.000000008   0.021595472   0.000613315   0.018944301   0.002229461  -0.068297383   0.061066555

   11    1.1  1.5  0.5   0.000024261  -0.000000000   0.023063475   0.000655007  -0.003654782  -0.000430113  -0.005548330   0.004960913
                        -0.000000611   0.000000000  -0.009006908  -0.000255798   0.000079546   0.000009361  -0.029781607   0.026628548

   12    2.1  1.5  0.5   0.000000000   0.000018564  -0.001011348   0.035610614  -0.001259688   0.010703898  -0.020700765  -0.023151921
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   13    3.1  1.5  0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.000023654   0.000769288  -0.027087424   0.003276985  -0.027845385   0.015956233   0.017845594

   14    4.1  1.5  0.5   0.000000274   0.000000000   0.001116377   0.000031705   0.000620694   0.000073046   0.027664769  -0.024735825
                         0.000010897  -0.000000000   0.002858644   0.000081186   0.028518069   0.003356150  -0.005153962   0.004608298

   15    5.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000014946  -0.000081138   0.002856954   0.003214773  -0.027316753  -0.029198860  -0.032656267

   16    6.1  1.5  0.5   0.000000000   0.000015087   0.000371286  -0.013073367   0.003165418  -0.026897375  -0.026063147  -0.029149257
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   17    7.1  1.5  0.5  -0.000000562   0.000000000   0.010603039   0.000301128   0.000493067   0.000058027  -0.015939891   0.014252292
                        -0.000022334  -0.000000000   0.027150597   0.000771082   0.022654186   0.002666058   0.002969610  -0.002655210

   18    8.1  1.5  0.5   0.014542270  -0.000000060  -0.130329509  -0.003701382  -0.007158302  -0.000842425   0.137361956  -0.122819075
                         0.577412340  -0.000000009  -0.333727339  -0.009477917  -0.328891714  -0.038705628  -0.025590608   0.022881262

   19    9.1  1.5  0.5   0.000000005   0.288585645  -0.012207472   0.429837828  -0.012518787   0.106375362   0.062903770   0.070352141
                         0.000000030   0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

   20   10.1  1.5  0.5   0.000000030   0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.000000005  -0.288473904  -0.002033159   0.071589669  -0.051200372   0.435062783  -0.061433776  -0.068708087

   21    1.1  1.5 -0.5  -0.000000000  -0.000024269   0.000703183  -0.024759812   0.000430215  -0.003655648   0.027086717   0.030294027
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   22    2.1  1.5 -0.5   0.000018558  -0.000000000   0.033170871   0.000942059  -0.010701364  -0.001259390  -0.004240258   0.003791331
                        -0.000000467   0.000000000  -0.012954118  -0.000367899   0.000232914   0.000027411  -0.022760309   0.020350614

   23    3.1  1.5 -0.5   0.000000596  -0.000000000   0.009853626   0.000279845  -0.000605909  -0.000071307   0.017543738  -0.015686335
                         0.000023647  -0.000000000   0.025231619   0.000716583  -0.027838792  -0.003276209  -0.003268408   0.002922373

   24    4.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000010901  -0.000087157   0.003068899   0.003356944  -0.028524823  -0.025161428  -0.028140767

   25    5.1  1.5 -0.5  -0.000000376   0.000000000  -0.001039278  -0.000029516  -0.000594406  -0.000069953  -0.032103890   0.028704964
                        -0.000014941   0.000000000  -0.002661219  -0.000075579  -0.027310286  -0.003214012   0.005980972  -0.005347751

   26    6.1  1.5 -0.5   0.000015082  -0.000000000  -0.012177688  -0.000345849   0.026891006   0.003164669  -0.005338666   0.004773447
                        -0.000000380  -0.000000000   0.004755715   0.000135063  -0.000585281  -0.000068879  -0.028656201   0.025622291

   27    7.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000022341  -0.000827796   0.029147544   0.002666690  -0.022659551   0.014497515   0.016214151

   28    8.1  1.5 -0.5  -0.000000060  -0.000000001  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000011   0.577595437   0.010175025  -0.358273245  -0.038714794   0.328969605  -0.124932291  -0.139725396

   29    9.1  1.5 -0.5   0.288494164  -0.000000005   0.400388912   0.011371118  -0.106350176  -0.012515823   0.012884945  -0.011520782
                        -0.007265796   0.000000030  -0.156362648  -0.004440727   0.002314703   0.000272407   0.069162142  -0.061839759

   30   10.1  1.5 -0.5   0.007262982  -0.000000030  -0.026042264  -0.000739604   0.009466865   0.001114109  -0.067545897   0.060394631
                         0.288382458  -0.000000005  -0.066684939  -0.001893864   0.434959772   0.051188250   0.012583838  -0.011251553

   31    1.1  1.5 -1.5   0.000025310   0.000000000  -0.030457134  -0.000864988  -0.029995367  -0.003530005  -0.002327063   0.002080690
                        -0.000000637  -0.000000000   0.011894331   0.000337801   0.000652847   0.000076830  -0.012490906   0.011168460

   32    2.1  1.5 -1.5  -0.000000000   0.000013229   0.000253946  -0.008941689  -0.005386107   0.045767138   0.003016001   0.003373122
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   33    3.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000026776  -0.000974467   0.034312012   0.000898641  -0.007635981   0.023289143   0.026046787

   34    4.1  1.5 -1.5   0.000000585   0.000000000  -0.013801475  -0.000391964  -0.000511878  -0.000060240   0.012347800  -0.011040505
                         0.000023232  -0.000000000  -0.035340649  -0.001003681  -0.023518464  -0.002767771  -0.002300402   0.002056852

   35    5.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000  -0.000020187   0.000419918  -0.014785757   0.004378327  -0.037203778   0.010921663   0.012214885

   36    6.1  1.5 -1.5   0.000000000  -0.000002761  -0.001302216   0.045852385   0.000048881  -0.000415352  -0.002609349  -0.002918319
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   37    7.1  1.5 -1.5  -0.000000375   0.000000000  -0.010823519  -0.000307390   0.000923154   0.000108642  -0.001887829   0.001687959
                        -0.000014887  -0.000000000  -0.027715167  -0.000787116   0.042414776   0.004991584   0.000351704  -0.000314468

   38    8.1  1.5 -1.5  -0.000002734   0.000000000  -0.105219164  -0.002988243   0.006749785   0.000794350   0.000870709  -0.000778525
                        -0.000108553  -0.000000000  -0.269428711  -0.007651824   0.310122164   0.036496733  -0.000162213   0.000145040

   39    9.1  1.5 -1.5   0.000000009   0.500144415  -0.006538617   0.230231494   0.024683994  -0.209746271  -0.260176750  -0.290984013
                         0.000000052   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   40   10.1  1.5 -1.5  -0.000000052  -0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000009   0.499739863   0.000658425  -0.023183836  -0.002229989   0.018948787   0.333424995   0.372905508

   41    1.1  0.5  0.5   0.000000512   0.000000000   0.083372409   0.002367792  -0.133993060  -0.015768976   0.009188627  -0.008215802
                        -0.000000013   0.000000000  -0.032559170  -0.000924686   0.002916348   0.000343211   0.049321523  -0.044099720

   42    2.1  0.5  0.5   0.000002218  -0.000000000  -0.044614343  -0.001267055  -0.002358696  -0.000277583   0.045146404  -0.040366633
                         0.000088054   0.000000000  -0.114241403  -0.003244477  -0.108371444  -0.012753696  -0.008410800   0.007520326

   43    3.1  0.5  0.5   0.000000000   0.000030348  -0.003916612   0.137907985   0.005091314  -0.043262209  -0.066083482  -0.073908360
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   44    4.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000000   0.000120428  -0.000451761   0.015906981  -0.008892668   0.075563297  -0.104798954  -0.117208091

   45    5.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000019592   0.001498365  -0.052758990  -0.017834974   0.151548383   0.045660457   0.051067065

   46    6.1  0.5  0.5   0.000000000   0.000089123   0.002972167  -0.104653090   0.001471798  -0.012506246  -0.093423921  -0.104486152
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   47    7.1  0.5  0.5  -0.000001663   0.000000000  -0.045521594  -0.001292821   0.002216736   0.000260877  -0.049539359   0.044294493
                        -0.000066019  -0.000000000  -0.116564548  -0.003310454   0.101849033   0.011986106   0.009229210  -0.008252089

   48    8.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000070931  -0.014182544   0.499382159  -0.014388052   0.122258990   0.073118479   0.081776364

   49    9.1  0.5  0.5  -0.000000000   0.000251202  -0.002359095   0.083066206  -0.059341825   0.504242803  -0.071479827  -0.079943680
                         0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

   50   10.1  0.5  0.5  -0.000061071  -0.000000000   0.421477882   0.011970049   0.241920781   0.028470452  -0.015339483   0.013715450
                         0.000001538   0.000000000  -0.164598458  -0.004674626  -0.005265387  -0.000619657  -0.082337290   0.073620019

   51   11.1  0.5  0.5   0.000349118  -0.000000000   0.006344308   0.000180180  -0.230789109  -0.027160421  -0.064650846   0.057806087
                        -0.000008793   0.000000000  -0.002477623  -0.000070365   0.005023107   0.000591145  -0.347024446   0.310284031

   52   12.1  0.5  0.5   0.000004463  -0.000000000  -0.006627738  -0.000188229   0.005943753   0.000699492   0.329434330  -0.294556228
                         0.000177189  -0.000000000  -0.016971272  -0.000481987   0.273088631   0.032138441  -0.061373798   0.054875989

   53    1.1  0.5 -0.5  -0.000000000   0.000000512  -0.002541944   0.089504515  -0.015772711   0.134024793   0.044858497   0.050170145
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000

   54    2.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000088082  -0.003483110   0.122643948   0.012756716  -0.108397110   0.041061178   0.045923190

   55    3.1  0.5 -0.5  -0.000030338   0.000000000  -0.128459676  -0.003648278  -0.043251966  -0.005090108   0.013536264  -0.012103144
                         0.000000764  -0.000000000   0.050166961   0.001424751   0.000941376   0.000110786   0.072658208  -0.064965687

   56    4.1  0.5 -0.5   0.000003032  -0.000000000   0.005786502   0.000164338  -0.001644240  -0.000193502   0.115225529  -0.103026291
                         0.000120390  -0.000000000   0.014817167   0.000420810  -0.075545406  -0.008890563  -0.021466580   0.019193855

   57    5.1  0.5 -0.5   0.000000493  -0.000000000  -0.019192204  -0.000545062  -0.003297658  -0.000388085  -0.050203271   0.044888115
                         0.000019585   0.000000000  -0.049144383  -0.001395710  -0.151512500  -0.017830752   0.009352897  -0.008362681

   58    6.1  0.5 -0.5  -0.000089095   0.000000000   0.097483130   0.002768539  -0.012503285  -0.001471449   0.019136566  -0.017110526
                         0.000002244  -0.000000000  -0.038069786  -0.001081189   0.000272133   0.000032026   0.102718780  -0.091843666

   59    7.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000066040  -0.003553941   0.125137962  -0.011988944   0.101873154  -0.045056621  -0.050391730

   60    8.1  0.5 -0.5  -0.000001786  -0.000000000   0.181660876   0.005159201  -0.002660327  -0.000313082  -0.080393126   0.071881688
                        -0.000070908   0.000000000   0.465168643   0.013210874  -0.122230043  -0.014384645   0.014977284  -0.013391599

   61    9.1  0.5 -0.5  -0.000251122  -0.000000000  -0.077375200  -0.002197470   0.504123412   0.059327774   0.014641629  -0.013091480
                         0.000006325  -0.000000000   0.030217098   0.000858170  -0.010972207  -0.001291266   0.078591441  -0.070270754

   62   10.1  0.5 -0.5   0.000000000  -0.000061090  -0.012850455   0.452477908   0.028477194  -0.241978075  -0.074886719  -0.083753979
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   63   11.1  0.5 -0.5   0.000000000   0.000349229  -0.000193432   0.006810937  -0.027166853   0.230843766  -0.315622755  -0.352995323
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   64   12.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.000000000  -0.000177245  -0.000517437   0.018219522  -0.032146053   0.273153306   0.299624341   0.335102553


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.092%   0.057%   0.000%  35.142%   0.002%   0.104%   0.000%   0.290%   0.000%   0.032%
    2    2.1  1.5  1.5   5.844%   9.542%   1.081%   0.000%   2.805%   0.063%  15.331%   0.000%   2.819%   0.001%
    3    3.1  1.5  1.5   4.719%   7.704%   0.538%   0.000%   0.008%   0.000%  18.111%   0.000%   0.062%   0.000%
    4    4.1  1.5  1.5   0.054%   0.033%   0.000%  25.703%   0.026%   1.138%   0.000%   4.264%   0.001%   4.199%
    5    5.1  1.5  1.5   1.827%   2.983%   0.056%   0.000%   3.964%   0.089%  12.996%   0.000%  24.313%   0.008%
    6    6.1  1.5  1.5   1.866%   3.046%   0.002%   0.000%   0.840%   0.019%  13.917%   0.000%  20.197%   0.007%
    7    7.1  1.5  1.5   1.738%   1.064%   0.000%   0.147%   0.417%  18.498%   0.000%   1.798%   0.000%   0.441%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5  12.535%  20.465%   0.177%   0.000%   2.327%   0.052%   0.140%   0.000%   0.025%   0.000%
   12    2.1  1.5  0.5   4.159%   2.547%   0.000%   9.644%   0.321%  14.242%   0.000%   0.340%   0.001%   2.700%
   13    3.1  1.5  0.5   3.647%   2.234%   0.000%  10.017%   0.222%   9.849%   0.000%   6.109%   0.003%   8.217%
   14    4.1  1.5  0.5   4.938%   8.061%   0.023%   0.000%  21.079%   0.475%   1.152%   0.000%   0.297%   0.000%
   15    5.1  1.5  0.5   0.217%   0.133%   0.000%   8.186%   0.101%   4.481%   0.000%   7.452%   0.002%   4.606%
   16    6.1  1.5  0.5   0.286%   0.175%   0.000%   5.569%   0.401%  17.793%   0.000%   1.647%   0.002%   5.648%
   17    7.1  1.5  0.5   0.014%   0.023%   3.715%   0.000%   0.667%   0.015%  16.453%   0.000%  26.410%   0.009%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5  20.465%  12.535%   0.000%   0.177%   0.052%   2.327%   0.000%   0.140%   0.000%   0.025%
   22    2.1  1.5 -0.5   2.547%   4.159%   9.644%   0.000%  14.242%   0.321%   0.340%   0.000%   2.700%   0.001%
   23    3.1  1.5 -0.5   2.234%   3.647%  10.017%   0.000%   9.849%   0.222%   6.109%   0.000%   8.217%   0.003%
   24    4.1  1.5 -0.5   8.061%   4.938%   0.000%   0.023%   0.475%  21.079%   0.000%   1.152%   0.000%   0.297%
   25    5.1  1.5 -0.5   0.133%   0.217%   8.186%   0.000%   4.481%   0.101%   7.452%   0.000%   4.606%   0.002%
   26    6.1  1.5 -0.5   0.175%   0.286%   5.569%   0.000%  17.793%   0.401%   1.647%   0.000%   5.648%   0.002%
   27    7.1  1.5 -0.5   0.023%   0.014%   0.000%   3.715%   0.015%   0.667%   0.000%  16.453%   0.009%  26.410%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   0.057%   0.092%  35.142%   0.000%   0.104%   0.002%   0.290%   0.000%   0.032%   0.000%
   32    2.1  1.5 -1.5   9.542%   5.844%   0.000%   1.081%   0.063%   2.805%   0.000%  15.331%   0.001%   2.819%
   33    3.1  1.5 -1.5   7.704%   4.719%   0.000%   0.538%   0.000%   0.008%   0.000%  18.111%   0.000%   0.062%
   34    4.1  1.5 -1.5   0.033%   0.054%  25.703%   0.000%   1.138%   0.026%   4.264%   0.000%   4.199%   0.001%
   35    5.1  1.5 -1.5   2.983%   1.827%   0.000%   0.056%   0.089%   3.964%   0.000%  12.996%   0.008%  24.313%
   36    6.1  1.5 -1.5   3.046%   1.866%   0.000%   0.002%   0.019%   0.840%   0.000%  13.917%   0.007%  20.197%
   37    7.1  1.5 -1.5   1.064%   1.738%   0.147%   0.000%  18.498%   0.417%   1.798%   0.000%   0.441%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   43    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   44    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   45    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   46    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   47    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   54    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   55    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   56    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   57    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   58    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.000%   0.061%   0.291%   0.007%   0.007%  26.879%   0.000%   0.297%  17.002%   0.178%
    2    2.1  1.5  1.5   0.259%   0.000%   0.536%  21.616%   2.413%   0.001%   0.001%   0.000%   0.098%   9.365%
    3    3.1  1.5  1.5  21.733%   0.009%   0.128%   5.174%   6.940%   0.002%   0.623%   0.001%   0.099%   9.405%
    4    4.1  1.5  1.5   0.010%  22.528%   3.362%   0.083%   0.001%   1.806%   0.000%   0.221%  17.756%   0.186%
    5    5.1  1.5  1.5   2.687%   0.001%   0.003%   0.116%   2.025%   0.001%   6.464%   0.010%   0.005%   0.444%
    6    6.1  1.5  1.5   1.322%   0.001%   0.270%  10.914%   1.411%   0.000%   7.161%   0.011%   0.145%  13.837%
    7    7.1  1.5  1.5   0.000%   0.757%   5.871%   0.145%   0.000%   0.087%   0.057%  38.523%   0.052%   0.001%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5   0.003%   0.000%   0.014%   0.556%   0.390%   0.000%  26.543%   0.040%   0.038%   3.583%
   12    2.1  1.5  0.5   0.011%  26.164%   0.211%   0.005%   0.000%   1.358%   0.004%   2.515%   5.702%   0.060%
   13    3.1  1.5  0.5   0.004%   8.717%  11.294%   0.280%   0.000%   0.049%   0.000%   0.141%   0.647%   0.007%
   14    4.1  1.5  0.5   5.917%   0.003%   0.273%  11.034%   0.051%   0.000%   9.791%   0.015%   0.034%   3.228%
   15    5.1  1.5  0.5   0.000%   0.011%  12.946%   0.321%   0.008%  29.899%   0.001%   0.601%   2.997%   0.031%
   16    6.1  1.5  0.5   0.001%   3.053%   7.533%   0.187%   0.006%  20.080%   0.005%   3.139%   0.172%   0.002%
   17    7.1  1.5  0.5   3.162%   0.001%   0.078%   3.162%   2.999%   0.001%   0.249%   0.000%   0.124%  11.860%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%   0.000%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%
   21    1.1  1.5 -0.5   0.000%   0.003%   0.556%   0.014%   0.000%   0.390%   0.040%  26.543%   3.583%   0.038%
   22    2.1  1.5 -0.5  26.164%   0.011%   0.005%   0.211%   1.358%   0.000%   2.515%   0.004%   0.060%   5.702%
   23    3.1  1.5 -0.5   8.717%   0.004%   0.280%  11.294%   0.049%   0.000%   0.141%   0.000%   0.007%   0.647%
   24    4.1  1.5 -0.5   0.003%   5.917%  11.034%   0.273%   0.000%   0.051%   0.015%   9.791%   3.228%   0.034%
   25    5.1  1.5 -0.5   0.011%   0.000%   0.321%  12.946%  29.899%   0.008%   0.601%   0.001%   0.031%   2.997%
   26    6.1  1.5 -0.5   3.053%   0.001%   0.187%   7.533%  20.080%   0.006%   3.139%   0.005%   0.002%   0.172%
   27    7.1  1.5 -0.5   0.001%   3.162%   3.162%   0.078%   0.001%   2.999%   0.000%   0.249%  11.860%   0.124%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.034%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.014%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%
   31    1.1  1.5 -1.5   0.061%   0.000%   0.007%   0.291%  26.879%   0.007%   0.297%   0.000%   0.178%  17.002%
   32    2.1  1.5 -1.5   0.000%   0.259%  21.616%   0.536%   0.001%   2.413%   0.000%   0.001%   9.365%   0.098%
   33    3.1  1.5 -1.5   0.009%  21.733%   5.174%   0.128%   0.002%   6.940%   0.001%   0.623%   9.405%   0.099%
   34    4.1  1.5 -1.5  22.528%   0.010%   0.083%   3.362%   1.806%   0.001%   0.221%   0.000%   0.186%  17.756%
   35    5.1  1.5 -1.5   0.001%   2.687%   0.116%   0.003%   0.001%   2.025%   0.010%   6.464%   0.444%   0.005%
   36    6.1  1.5 -1.5   0.001%   1.322%  10.914%   0.270%   0.000%   1.411%   0.011%   7.161%  13.837%   0.145%
   37    7.1  1.5 -1.5   0.757%   0.000%   0.145%   5.871%   0.087%   0.000%  38.523%   0.057%   0.001%   0.052%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5  0.5   0.433%   0.000%   0.038%   1.537%   0.007%   0.000%   0.035%   0.000%   0.000%   0.000%
   42    2.1  0.5  0.5   1.013%   0.000%   0.009%   0.353%   0.674%   0.000%   0.001%   0.000%   0.004%   0.372%
   43    3.1  0.5  0.5   0.000%   0.906%   0.306%   0.008%   0.000%   0.422%   0.001%   0.406%   0.293%   0.003%
   44    4.1  0.5  0.5   0.000%   0.851%   0.127%   0.003%   0.000%   0.152%   0.001%   0.915%   0.008%   0.000%
   45    5.1  0.5  0.5   0.000%   0.113%   0.389%   0.010%   0.000%   1.247%   0.000%   0.291%   0.236%   0.002%
   46    6.1  0.5  0.5   0.000%   0.156%   0.173%   0.004%   0.000%   1.043%   0.001%   0.671%   0.089%   0.001%
   47    7.1  0.5  0.5   0.113%   0.000%   0.015%   0.615%   0.042%   0.000%   1.262%   0.002%   0.000%   0.040%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.490%   0.005%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.154%   0.002%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.011%   1.040%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.079%
   53    1.1  0.5 -0.5   0.000%   0.433%   1.537%   0.038%   0.000%   0.007%   0.000%   0.035%   0.000%   0.000%
   54    2.1  0.5 -0.5   0.000%   1.013%   0.353%   0.009%   0.000%   0.674%   0.000%   0.001%   0.372%   0.004%
   55    3.1  0.5 -0.5   0.906%   0.000%   0.008%   0.306%   0.422%   0.000%   0.406%   0.001%   0.003%   0.293%
   56    4.1  0.5 -0.5   0.851%   0.000%   0.003%   0.127%   0.152%   0.000%   0.915%   0.001%   0.000%   0.008%
   57    5.1  0.5 -0.5   0.113%   0.000%   0.010%   0.389%   1.247%   0.000%   0.291%   0.000%   0.002%   0.236%
   58    6.1  0.5 -0.5   0.156%   0.000%   0.004%   0.173%   1.043%   0.000%   0.671%   0.001%   0.001%   0.089%
   59    7.1  0.5 -0.5   0.000%   0.113%   0.615%   0.015%   0.000%   0.042%   0.002%   1.262%   0.040%   0.000%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.490%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.154%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.040%   0.011%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.044%   0.000%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.079%   0.001%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.004%   3.580%   0.040%   0.000%   0.000%  11.973%   0.013%   1.507%   0.000%   0.005%
    2    2.1  1.5  1.5   1.731%   0.002%   0.013%   8.960%   0.208%   0.000%  14.772%   0.128%   0.713%   0.000%
    3    3.1  1.5  1.5   5.695%   0.007%   0.011%   7.171%   7.428%   0.000%   1.908%   0.017%   0.414%   0.000%
    4    4.1  1.5  1.5   0.003%   2.190%   0.774%   0.001%   0.000%  12.278%   0.008%   0.932%   0.000%   0.011%
    5    5.1  1.5  1.5  10.562%   0.013%   0.009%   6.081%   0.411%   0.000%  22.463%   0.195%   0.009%   0.000%
    6    6.1  1.5  1.5   1.946%   0.002%   0.005%   3.397%   7.632%   0.000%   9.594%   0.083%   0.258%   0.000%
    7    7.1  1.5  1.5   0.009%   7.282%  17.494%   0.026%   0.000%   0.000%   0.026%   2.950%   0.000%   0.389%
    8    8.1  1.5  1.5   0.000%   0.006%   0.020%   0.000%   0.000%   0.002%   0.000%   0.017%   0.000%   0.000%
    9    9.1  1.5  1.5   0.014%   0.000%   0.000%   0.009%   0.006%   0.000%   0.001%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.028%   0.000%   0.000%   0.010%   0.006%   0.000%   0.001%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5  16.848%   0.021%   0.000%   0.311%   1.521%   0.000%  11.872%   0.103%   0.001%   0.000%
   12    2.1  1.5  0.5   0.019%  14.866%   0.768%   0.001%   0.000%  11.510%   0.003%   0.383%   0.000%   0.091%
   13    3.1  1.5  0.5   0.018%  14.426%   4.098%   0.006%   0.000%   7.411%   0.088%  10.150%   0.000%   0.230%
   14    4.1  1.5  0.5   3.980%   0.005%   0.020%  13.414%   3.840%   0.000%   9.851%   0.085%   0.651%   0.000%
   15    5.1  1.5  0.5   0.008%   6.448%  14.977%   0.022%   0.000%   1.659%   0.020%   2.273%   0.000%   0.441%
   16    6.1  1.5  0.5   0.004%   3.236%  18.826%   0.028%   0.000%   9.390%   0.003%   0.313%   0.000%   0.310%
   17    7.1  1.5  0.5   4.148%   0.005%   0.001%   0.600%  19.258%   0.000%   4.744%   0.041%   0.065%   0.000%
   18    8.1  1.5  0.5   0.007%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   0.001%   0.016%   0.000%   0.000%   0.004%   0.000%   0.011%   0.000%   0.000%
   20   10.1  1.5  0.5   0.000%   0.012%   0.014%   0.000%   0.000%   0.013%   0.000%   0.002%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.021%  16.848%   0.311%   0.000%   0.000%   1.521%   0.103%  11.872%   0.000%   0.001%
   22    2.1  1.5 -0.5  14.866%   0.019%   0.001%   0.768%  11.510%   0.000%   0.383%   0.003%   0.091%   0.000%
   23    3.1  1.5 -0.5  14.426%   0.018%   0.006%   4.098%   7.411%   0.000%  10.150%   0.088%   0.230%   0.000%
   24    4.1  1.5 -0.5   0.005%   3.980%  13.414%   0.020%   0.000%   3.840%   0.085%   9.851%   0.000%   0.651%
   25    5.1  1.5 -0.5   6.448%   0.008%   0.022%  14.977%   1.659%   0.000%   2.273%   0.020%   0.441%   0.000%
   26    6.1  1.5 -0.5   3.236%   0.004%   0.028%  18.826%   9.390%   0.000%   0.313%   0.003%   0.310%   0.000%
   27    7.1  1.5 -0.5   0.005%   4.148%   0.600%   0.001%   0.000%  19.258%   0.041%   4.744%   0.000%   0.065%
   28    8.1  1.5 -0.5   0.000%   0.007%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   0.001%   0.000%   0.000%   0.016%   0.004%   0.000%   0.011%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.012%   0.000%   0.000%   0.014%   0.013%   0.000%   0.002%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   3.580%   0.004%   0.000%   0.040%  11.973%   0.000%   1.507%   0.013%   0.005%   0.000%
   32    2.1  1.5 -1.5   0.002%   1.731%   8.960%   0.013%   0.000%   0.208%   0.128%  14.772%   0.000%   0.713%
   33    3.1  1.5 -1.5   0.007%   5.695%   7.171%   0.011%   0.000%   7.428%   0.017%   1.908%   0.000%   0.414%
   34    4.1  1.5 -1.5   2.190%   0.003%   0.001%   0.774%  12.278%   0.000%   0.932%   0.008%   0.011%   0.000%
   35    5.1  1.5 -1.5   0.013%  10.562%   6.081%   0.009%   0.000%   0.411%   0.195%  22.463%   0.000%   0.009%
   36    6.1  1.5 -1.5   0.002%   1.946%   3.397%   0.005%   0.000%   7.632%   0.083%   9.594%   0.000%   0.258%
   37    7.1  1.5 -1.5   7.282%   0.009%   0.026%  17.494%   0.000%   0.000%   2.950%   0.026%   0.389%   0.000%
   38    8.1  1.5 -1.5   0.006%   0.000%   0.000%   0.020%   0.002%   0.000%   0.017%   0.000%   0.000%   0.000%
   39    9.1  1.5 -1.5   0.000%   0.014%   0.009%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.028%   0.010%   0.000%   0.000%   0.006%   0.000%   0.001%   0.000%   0.000%
   41    1.1  0.5  0.5   0.008%   0.000%   0.001%   0.441%   0.000%   0.000%   0.000%   0.000%  52.232%   0.001%
   42    2.1  0.5  0.5   0.072%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.000%   2.636%   0.000%
   43    3.1  0.5  0.5   0.000%   0.150%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.496%
   44    4.1  0.5  0.5   0.001%   0.437%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.274%
   45    5.1  0.5  0.5   0.000%   0.001%   0.210%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.689%
   46    6.1  0.5  0.5   0.000%   0.117%   0.242%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.693%
   47    7.1  0.5  0.5   0.263%   0.000%   0.000%   0.145%   0.000%   0.000%   0.000%   0.000%  14.392%   0.000%
   48    8.1  0.5  0.5   0.000%   0.027%   0.573%   0.001%   0.000%   2.108%   0.001%   0.070%   0.000%   0.000%
   49    9.1  0.5  0.5   0.001%   0.444%   0.495%   0.001%   0.000%   0.915%   0.011%   1.253%   0.000%   0.000%
   50   10.1  0.5  0.5   0.043%   0.000%   0.000%   0.002%   2.000%   0.000%   0.178%   0.002%   0.000%   0.000%
   51   11.1  0.5  0.5   1.031%   0.001%   0.000%   0.017%   0.179%   0.000%   1.980%   0.017%   0.000%   0.000%
   52   12.1  0.5  0.5   0.278%   0.000%   0.001%   0.736%   0.245%   0.000%   1.914%   0.017%   0.000%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.008%   0.441%   0.001%   0.000%   0.000%   0.000%   0.000%   0.001%  52.232%
   54    2.1  0.5 -0.5   0.000%   0.072%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.636%
   55    3.1  0.5 -0.5   0.150%   0.000%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   1.496%   0.000%
   56    4.1  0.5 -0.5   0.437%   0.001%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   1.274%   0.000%
   57    5.1  0.5 -0.5   0.001%   0.000%   0.000%   0.210%   0.000%   0.000%   0.000%   0.000%  14.689%   0.000%
   58    6.1  0.5 -0.5   0.117%   0.000%   0.000%   0.242%   0.000%   0.000%   0.000%   0.000%   9.693%   0.000%
   59    7.1  0.5 -0.5   0.000%   0.263%   0.145%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  14.392%
   60    8.1  0.5 -0.5   0.027%   0.000%   0.001%   0.573%   2.108%   0.000%   0.070%   0.001%   0.000%   0.000%
   61    9.1  0.5 -0.5   0.444%   0.001%   0.001%   0.495%   0.915%   0.000%   1.253%   0.011%   0.000%   0.000%
   62   10.1  0.5 -0.5   0.000%   0.043%   0.002%   0.000%   0.000%   2.000%   0.002%   0.178%   0.000%   0.000%
   63   11.1  0.5 -0.5   0.001%   1.031%   0.017%   0.000%   0.000%   0.179%   0.017%   1.980%   0.000%   0.000%
   64   12.1  0.5 -0.5   0.000%   0.278%   0.736%   0.001%   0.000%   0.245%   0.017%   1.914%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.001%   0.000%   0.530%   0.001%   0.488%   0.000%   0.003%   0.000%   0.002%
    2    2.1  1.5  1.5   0.100%   0.000%   0.043%   0.000%   0.068%   0.000%   0.000%   0.000%   0.005%   0.000%
    3    3.1  1.5  1.5   0.517%   0.000%   0.342%   0.000%   0.015%   0.000%   0.003%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.984%   0.000%   0.039%   0.000%   0.008%   0.000%   0.004%   0.000%   0.002%
    5    5.1  1.5  1.5   0.062%   0.000%   0.294%   0.000%   0.056%   0.000%   0.001%   0.000%   0.003%   0.000%
    6    6.1  1.5  1.5   0.157%   0.000%   0.019%   0.000%   0.351%   0.001%   0.006%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.011%   0.000%   0.544%   0.001%   0.746%   0.000%   0.002%   0.000%   0.005%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.001%   0.023%   2.248%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.224%   0.000%   1.072%   0.011%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.012%   0.000%
   11    1.1  1.5  0.5   0.011%   0.000%   0.491%   0.000%   0.521%   0.001%   0.002%   0.000%   0.000%   0.000%
   12    2.1  1.5  0.5   0.000%   0.850%   0.000%   0.008%   0.000%   0.176%   0.000%   0.003%   0.000%   0.000%
   13    3.1  1.5  0.5   0.000%   0.525%   0.000%   0.003%   0.000%   0.004%   0.000%   0.002%   0.000%   0.002%
   14    4.1  1.5  0.5   0.098%   0.000%   0.072%   0.000%   0.187%   0.000%   0.000%   0.000%   0.002%   0.000%
   15    5.1  1.5  0.5   0.000%   0.067%   0.000%   0.903%   0.000%   0.218%   0.000%   0.000%   0.000%   0.002%
   16    6.1  1.5  0.5   0.000%   0.044%   0.000%   0.185%   0.001%   0.725%   0.000%   0.000%   0.000%   0.002%
   17    7.1  1.5  0.5   0.159%   0.000%   0.114%   0.000%   0.021%   0.000%   0.002%   0.000%   0.001%   0.000%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.959%   0.000%   2.577%   0.026%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.347%   0.002%   0.245%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.133%   0.045%   4.413%
   21    1.1  1.5 -0.5   0.000%   0.011%   0.000%   0.491%   0.001%   0.521%   0.000%   0.002%   0.000%   0.000%
   22    2.1  1.5 -0.5   0.850%   0.000%   0.008%   0.000%   0.176%   0.000%   0.003%   0.000%   0.000%   0.000%
   23    3.1  1.5 -0.5   0.525%   0.000%   0.003%   0.000%   0.004%   0.000%   0.002%   0.000%   0.002%   0.000%
   24    4.1  1.5 -0.5   0.000%   0.098%   0.000%   0.072%   0.000%   0.187%   0.000%   0.000%   0.000%   0.002%
   25    5.1  1.5 -0.5   0.067%   0.000%   0.903%   0.000%   0.218%   0.000%   0.000%   0.000%   0.002%   0.000%
   26    6.1  1.5 -0.5   0.044%   0.000%   0.185%   0.000%   0.725%   0.001%   0.000%   0.000%   0.002%   0.000%
   27    7.1  1.5 -0.5   0.000%   0.159%   0.000%   0.114%   0.000%   0.021%   0.000%   0.002%   0.000%   0.001%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.959%   0.026%   2.577%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.347%   0.000%   0.245%   0.002%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.133%   0.000%   4.413%   0.045%
   31    1.1  1.5 -1.5   0.001%   0.000%   0.530%   0.000%   0.488%   0.001%   0.003%   0.000%   0.002%   0.000%
   32    2.1  1.5 -1.5   0.000%   0.100%   0.000%   0.043%   0.000%   0.068%   0.000%   0.000%   0.000%   0.005%
   33    3.1  1.5 -1.5   0.000%   0.517%   0.000%   0.342%   0.000%   0.015%   0.000%   0.003%   0.000%   0.000%
   34    4.1  1.5 -1.5   0.984%   0.000%   0.039%   0.000%   0.008%   0.000%   0.004%   0.000%   0.002%   0.000%
   35    5.1  1.5 -1.5   0.000%   0.062%   0.000%   0.294%   0.000%   0.056%   0.000%   0.001%   0.000%   0.003%
   36    6.1  1.5 -1.5   0.000%   0.157%   0.000%   0.019%   0.001%   0.351%   0.000%   0.006%   0.000%   0.000%
   37    7.1  1.5 -1.5   0.011%   0.000%   0.544%   0.000%   0.746%   0.001%   0.002%   0.000%   0.005%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.001%   0.000%   2.248%   0.023%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.224%   0.011%   1.072%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.013%   0.000%   0.012%
   41    1.1  0.5  0.5   2.667%   0.000%   0.075%   0.000%   0.131%   0.000%   6.000%   0.000%  13.082%   0.133%
   42    2.1  0.5  0.5  31.770%   0.000%  12.980%   0.000%   7.700%   0.012%  10.809%   0.000%   8.725%   0.089%
   43    3.1  0.5  0.5   0.000%  34.127%   0.000%  19.081%   0.001%   0.393%   0.000%  13.827%   0.015%   1.485%
   44    4.1  0.5  0.5   0.000%  24.327%   0.000%   2.970%   0.041%  26.485%   0.000%   0.203%   0.041%   4.072%
   45    5.1  0.5  0.5   0.000%   1.566%   0.000%  36.101%   0.004%   2.724%   0.000%   1.935%   0.173%  17.023%
   46    6.1  0.5  0.5   0.000%   1.888%   0.000%   3.514%   0.062%  39.927%   0.000%   8.006%   0.001%   0.112%
   47    7.1  0.5  0.5   0.067%   0.000%  21.692%   0.000%  18.904%   0.029%  11.614%   0.000%   7.390%   0.075%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.034%   0.011%   1.132%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.613%   0.207%  20.351%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.213%   0.000%   4.888%   0.050%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.000%   4.119%   0.042%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.000%   6.019%   0.061%
   53    1.1  0.5 -0.5   0.000%   2.667%   0.000%   0.075%   0.000%   0.131%   0.000%   6.000%   0.133%  13.082%
   54    2.1  0.5 -0.5   0.000%  31.770%   0.000%  12.980%   0.012%   7.700%   0.000%  10.809%   0.089%   8.725%
   55    3.1  0.5 -0.5  34.127%   0.000%  19.081%   0.000%   0.393%   0.001%  13.827%   0.000%   1.485%   0.015%
   56    4.1  0.5 -0.5  24.327%   0.000%   2.970%   0.000%  26.485%   0.041%   0.203%   0.000%   4.072%   0.041%
   57    5.1  0.5 -0.5   1.566%   0.000%  36.101%   0.000%   2.724%   0.004%   1.935%   0.000%  17.023%   0.173%
   58    6.1  0.5 -0.5   1.888%   0.000%   3.514%   0.000%  39.927%   0.062%   8.006%   0.000%   0.112%   0.001%
   59    7.1  0.5 -0.5   0.000%   0.067%   0.000%  21.692%   0.029%  18.904%   0.000%  11.614%   0.075%   7.390%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  20.034%   0.000%   1.132%   0.011%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.613%   0.000%  20.351%   0.207%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  16.213%   0.050%   4.888%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.007%   0.042%   4.119%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.033%   0.061%   6.019%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.001%   0.187%   0.000%   0.157%   0.000%   0.051%   0.002%   0.593%   0.000%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.014%   0.000%   0.366%   0.000%   0.003%   0.000%   0.012%
    3    3.1  1.5  1.5   0.003%   0.000%   0.000%   0.206%   0.000%   0.009%   0.010%   0.202%   0.000%   0.363%
    4    4.1  1.5  1.5   0.000%   0.001%   0.252%   0.000%   0.096%   0.000%   0.049%   0.002%   0.608%   0.000%
    5    5.1  1.5  1.5   0.001%   0.000%   0.000%   0.037%   0.000%   0.238%   0.002%   0.047%   0.000%   0.018%
    6    6.1  1.5  1.5   0.000%   0.000%   0.001%   0.365%   0.000%   0.000%   0.000%   0.003%   0.000%   0.369%
    7    7.1  1.5  1.5   0.000%   0.000%   0.153%   0.000%   0.319%   0.000%   0.002%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   7.994%   0.011%   9.482%   0.005%   0.001%   0.000%   1.343%   0.000%
    9    9.1  1.5  1.5   3.536%   0.028%   0.007%   5.053%   0.002%   4.431%   0.672%  13.888%   0.000%   3.689%
   10   10.1  1.5  1.5   5.798%   0.045%   0.000%   0.048%   0.000%   0.062%   1.104%  22.836%   0.000%   3.733%
   11    1.1  1.5  0.5   0.004%   0.000%   0.000%   0.106%   0.000%   0.002%   0.013%   0.275%   0.000%   0.072%
   12    2.1  1.5  0.5   0.000%   0.002%   0.220%   0.000%   0.019%   0.000%   0.161%   0.008%   0.566%   0.000%
   13    3.1  1.5  0.5   0.000%   0.002%   0.127%   0.000%   0.136%   0.000%   0.099%   0.005%   0.372%   0.000%
   14    4.1  1.5  0.5   0.004%   0.000%   0.000%   0.002%   0.000%   0.150%   0.011%   0.233%   0.000%   0.184%
   15    5.1  1.5  0.5   0.000%   0.005%   0.001%   0.000%   0.137%   0.000%   0.313%   0.015%   0.083%   0.000%
   16    6.1  1.5  0.5   0.000%   0.004%   0.030%   0.000%   0.133%   0.000%   0.250%   0.012%   0.461%   0.000%
   17    7.1  1.5  0.5   0.001%   0.000%   0.000%   0.149%   0.000%   0.087%   0.004%   0.079%   0.000%   0.956%
   18    8.1  1.5  0.5   0.836%   0.007%   0.018%  12.352%   0.006%  10.342%   0.161%   3.332%   0.000%   1.242%
   19    9.1  1.5  0.5   0.002%   0.208%  17.687%   0.025%   1.111%   0.001%   0.790%   0.038%   2.408%   0.000%
   20   10.1  1.5  0.5   0.002%   0.210%   0.477%   0.001%  18.243%   0.010%   0.882%   0.043%   8.362%   0.000%
   21    1.1  1.5 -0.5   0.000%   0.004%   0.106%   0.000%   0.002%   0.000%   0.275%   0.013%   0.072%   0.000%
   22    2.1  1.5 -0.5   0.002%   0.000%   0.000%   0.220%   0.000%   0.019%   0.008%   0.161%   0.000%   0.566%
   23    3.1  1.5 -0.5   0.002%   0.000%   0.000%   0.127%   0.000%   0.136%   0.005%   0.099%   0.000%   0.372%
   24    4.1  1.5 -0.5   0.000%   0.004%   0.002%   0.000%   0.150%   0.000%   0.233%   0.011%   0.184%   0.000%
   25    5.1  1.5 -0.5   0.005%   0.000%   0.000%   0.001%   0.000%   0.137%   0.015%   0.313%   0.000%   0.083%
   26    6.1  1.5 -0.5   0.004%   0.000%   0.000%   0.030%   0.000%   0.133%   0.012%   0.250%   0.000%   0.461%
   27    7.1  1.5 -0.5   0.000%   0.001%   0.149%   0.000%   0.087%   0.000%   0.079%   0.004%   0.956%   0.000%
   28    8.1  1.5 -0.5   0.007%   0.836%  12.352%   0.018%  10.342%   0.006%   3.332%   0.161%   1.242%   0.000%
   29    9.1  1.5 -0.5   0.208%   0.002%   0.025%  17.687%   0.001%   1.111%   0.038%   0.790%   0.000%   2.408%
   30   10.1  1.5 -0.5   0.210%   0.002%   0.001%   0.477%   0.010%  18.243%   0.043%   0.882%   0.000%   8.362%
   31    1.1  1.5 -1.5   0.001%   0.000%   0.000%   0.187%   0.000%   0.157%   0.002%   0.051%   0.000%   0.593%
   32    2.1  1.5 -1.5   0.000%   0.000%   0.014%   0.000%   0.366%   0.000%   0.003%   0.000%   0.012%   0.000%
   33    3.1  1.5 -1.5   0.000%   0.003%   0.206%   0.000%   0.009%   0.000%   0.202%   0.010%   0.363%   0.000%
   34    4.1  1.5 -1.5   0.001%   0.000%   0.000%   0.252%   0.000%   0.096%   0.002%   0.049%   0.000%   0.608%
   35    5.1  1.5 -1.5   0.000%   0.001%   0.037%   0.000%   0.238%   0.000%   0.047%   0.002%   0.018%   0.000%
   36    6.1  1.5 -1.5   0.000%   0.000%   0.365%   0.001%   0.000%   0.000%   0.003%   0.000%   0.369%   0.000%
   37    7.1  1.5 -1.5   0.000%   0.000%   0.000%   0.153%   0.000%   0.319%   0.000%   0.002%   0.000%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.011%   7.994%   0.005%   9.482%   0.000%   0.001%   0.000%   1.343%
   39    9.1  1.5 -1.5   0.028%   3.536%   5.053%   0.007%   4.431%   0.002%  13.888%   0.672%   3.689%   0.000%
   40   10.1  1.5 -1.5   0.045%   5.798%   0.048%   0.000%   0.062%   0.000%  22.836%   1.104%   3.733%   0.000%
   41    1.1  0.5  0.5   3.216%   0.025%   0.006%   4.384%   0.006%  10.118%   0.108%   2.242%   0.000%   0.000%
   42    2.1  0.5  0.5   2.814%   0.022%   0.012%   8.285%   0.004%   6.418%   0.099%   2.051%   0.000%   0.000%
   43    3.1  0.5  0.5   0.056%   7.079%  10.410%   0.015%   1.086%   0.001%   5.107%   0.247%   0.000%   0.000%
   44    4.1  0.5  0.5   0.141%  18.021%   0.132%   0.000%   3.020%   0.002%  13.065%   0.632%   0.000%   0.000%
   45    5.1  0.5  0.5   0.026%   3.316%   1.533%   0.002%  12.882%   0.007%   2.330%   0.113%   0.000%   0.000%
   46    6.1  0.5  0.5   0.112%  14.250%   6.033%   0.009%   0.114%   0.000%  10.210%   0.494%   0.000%   0.000%
   47    7.1  0.5  0.5   3.362%   0.026%   0.012%   8.547%   0.003%   5.697%   0.120%   2.491%   0.000%   0.000%
   48    8.1  0.5  0.5   0.008%   0.959%   8.155%   0.012%   0.516%   0.000%   0.367%   0.018%  28.769%   0.000%
   49    9.1  0.5  0.5   0.008%   0.971%   0.220%   0.000%   8.438%   0.005%   0.410%   0.020%  12.750%   0.000%
   50   10.1  0.5  0.5   0.981%   0.008%   0.010%   6.687%   0.001%   1.961%   0.019%   0.388%   0.000%  27.241%
   51   11.1  0.5  0.5  17.781%   0.139%   0.000%   0.001%   0.001%   1.647%   0.340%   7.038%   0.000%   2.587%
   52   12.1  0.5  0.5  15.857%   0.124%   0.000%   0.011%   0.001%   2.526%   0.300%   6.197%   0.000%   3.219%
   53    1.1  0.5 -0.5   0.025%   3.216%   4.384%   0.006%  10.118%   0.006%   2.242%   0.108%   0.000%   0.000%
   54    2.1  0.5 -0.5   0.022%   2.814%   8.285%   0.012%   6.418%   0.004%   2.051%   0.099%   0.000%   0.000%
   55    3.1  0.5 -0.5   7.079%   0.056%   0.015%  10.410%   0.001%   1.086%   0.247%   5.107%   0.000%   0.000%
   56    4.1  0.5 -0.5  18.021%   0.141%   0.000%   0.132%   0.002%   3.020%   0.632%  13.065%   0.000%   0.000%
   57    5.1  0.5 -0.5   3.316%   0.026%   0.002%   1.533%   0.007%  12.882%   0.113%   2.330%   0.000%   0.000%
   58    6.1  0.5 -0.5  14.250%   0.112%   0.009%   6.033%   0.000%   0.114%   0.494%  10.210%   0.000%   0.000%
   59    7.1  0.5 -0.5   0.026%   3.362%   8.547%   0.012%   5.697%   0.003%   2.491%   0.120%   0.000%   0.000%
   60    8.1  0.5 -0.5   0.959%   0.008%   0.012%   8.155%   0.000%   0.516%   0.018%   0.367%   0.000%  28.769%
   61    9.1  0.5 -0.5   0.971%   0.008%   0.000%   0.220%   0.005%   8.438%   0.020%   0.410%   0.000%  12.750%
   62   10.1  0.5 -0.5   0.008%   0.981%   6.687%   0.010%   1.961%   0.001%   0.388%   0.019%  27.241%   0.000%
   63   11.1  0.5 -0.5   0.139%  17.781%   0.001%   0.000%   1.647%   0.001%   7.038%   0.340%   2.587%   0.000%
   64   12.1  0.5 -0.5   0.124%  15.857%   0.011%   0.000%   2.526%   0.001%   6.197%   0.300%   3.219%   0.000%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.071%   0.000%   0.105%   0.000%   0.012%   0.001%   0.000%   0.000%   0.000%   0.107%
    2    2.1  1.5  1.5   0.003%   0.729%   0.000%   0.002%   0.009%   0.120%   0.000%   0.000%   0.008%   0.000%
    3    3.1  1.5  1.5   0.000%   0.097%   0.000%   0.064%   0.001%   0.016%   0.000%   0.000%   0.118%   0.000%
    4    4.1  1.5  1.5   0.044%   0.000%   0.108%   0.000%   0.007%   0.001%   0.000%   0.000%   0.000%   0.144%
    5    5.1  1.5  1.5   0.004%   1.112%   0.000%   0.003%   0.015%   0.183%   0.000%   0.000%   0.022%   0.000%
    6    6.1  1.5  1.5   0.002%   0.481%   0.000%   0.065%   0.006%   0.080%   0.000%   0.000%   0.210%   0.000%
    7    7.1  1.5  1.5   0.146%   0.001%   0.000%   0.000%   0.024%   0.002%   0.000%   0.000%   0.000%   0.089%
    8    8.1  1.5  1.5  11.069%   0.043%   5.020%   0.003%  39.455%   3.126%   0.000%   0.000%   0.007%   8.366%
    9    9.1  1.5  1.5   0.002%   0.452%   0.008%  14.204%   0.122%   1.539%  25.014%   0.000%   5.301%   0.004%
   10   10.1  1.5  1.5   0.002%   0.450%   0.008%  14.092%   0.122%   1.544%  24.974%   0.000%   0.054%   0.000%
   11    1.1  1.5  0.5   0.002%   0.590%   0.000%   0.012%   0.008%   0.098%   0.000%   0.000%   0.061%   0.000%
   12    2.1  1.5  0.5   0.021%   0.000%   0.100%   0.000%   0.004%   0.000%   0.000%   0.000%   0.000%   0.127%
   13    3.1  1.5  0.5   0.495%   0.002%   0.066%   0.000%   0.082%   0.006%   0.000%   0.000%   0.000%   0.073%
   14    4.1  1.5  0.5   0.002%   0.491%   0.000%   0.032%   0.006%   0.082%   0.000%   0.000%   0.001%   0.000%
   15    5.1  1.5  0.5   0.111%   0.000%   0.015%   0.000%   0.018%   0.001%   0.000%   0.000%   0.000%   0.001%
   16    6.1  1.5  0.5   0.017%   0.000%   0.082%   0.000%   0.003%   0.000%   0.000%   0.000%   0.000%   0.017%
   17    7.1  1.5  0.5   0.001%   0.227%   0.000%   0.169%   0.003%   0.037%   0.000%   0.000%   0.085%   0.000%
   18    8.1  1.5  0.5   0.001%   0.155%   0.003%   4.704%   0.040%   0.503%  33.362%   0.000%  12.836%   0.010%
   19    9.1  1.5  0.5   7.293%   0.028%   9.330%   0.005%  25.553%   2.024%   0.000%   8.328%   0.015%  18.476%
   20   10.1  1.5  0.5   1.351%   0.005%  31.795%   0.018%   4.716%   0.374%   0.000%   8.322%   0.000%   0.513%
   21    1.1  1.5 -0.5   0.590%   0.002%   0.012%   0.000%   0.098%   0.008%   0.000%   0.000%   0.000%   0.061%
   22    2.1  1.5 -0.5   0.000%   0.021%   0.000%   0.100%   0.000%   0.004%   0.000%   0.000%   0.127%   0.000%
   23    3.1  1.5 -0.5   0.002%   0.495%   0.000%   0.066%   0.006%   0.082%   0.000%   0.000%   0.073%   0.000%
   24    4.1  1.5 -0.5   0.491%   0.002%   0.032%   0.000%   0.082%   0.006%   0.000%   0.000%   0.000%   0.001%
   25    5.1  1.5 -0.5   0.000%   0.111%   0.000%   0.015%   0.001%   0.018%   0.000%   0.000%   0.001%   0.000%
   26    6.1  1.5 -0.5   0.000%   0.017%   0.000%   0.082%   0.000%   0.003%   0.000%   0.000%   0.017%   0.000%
   27    7.1  1.5 -0.5   0.227%   0.001%   0.169%   0.000%   0.037%   0.003%   0.000%   0.000%   0.000%   0.085%
   28    8.1  1.5 -0.5   0.155%   0.001%   4.704%   0.003%   0.503%   0.040%   0.000%  33.362%   0.010%  12.836%
   29    9.1  1.5 -0.5   0.028%   7.293%   0.005%   9.330%   2.024%  25.553%   8.328%   0.000%  18.476%   0.015%
   30   10.1  1.5 -0.5   0.005%   1.351%   0.018%  31.795%   0.374%   4.716%   8.322%   0.000%   0.513%   0.000%
   31    1.1  1.5 -1.5   0.000%   0.071%   0.000%   0.105%   0.001%   0.012%   0.000%   0.000%   0.107%   0.000%
   32    2.1  1.5 -1.5   0.729%   0.003%   0.002%   0.000%   0.120%   0.009%   0.000%   0.000%   0.000%   0.008%
   33    3.1  1.5 -1.5   0.097%   0.000%   0.064%   0.000%   0.016%   0.001%   0.000%   0.000%   0.000%   0.118%
   34    4.1  1.5 -1.5   0.000%   0.044%   0.000%   0.108%   0.001%   0.007%   0.000%   0.000%   0.144%   0.000%
   35    5.1  1.5 -1.5   1.112%   0.004%   0.003%   0.000%   0.183%   0.015%   0.000%   0.000%   0.000%   0.022%
   36    6.1  1.5 -1.5   0.481%   0.002%   0.065%   0.000%   0.080%   0.006%   0.000%   0.000%   0.000%   0.210%
   37    7.1  1.5 -1.5   0.001%   0.146%   0.000%   0.000%   0.002%   0.024%   0.000%   0.000%   0.089%   0.000%
   38    8.1  1.5 -1.5   0.043%  11.069%   0.003%   5.020%   3.126%  39.455%   0.000%   0.000%   8.366%   0.007%
   39    9.1  1.5 -1.5   0.452%   0.002%  14.204%   0.008%   1.539%   0.122%   0.000%  25.014%   0.004%   5.301%
   40   10.1  1.5 -1.5   0.450%   0.002%  14.092%   0.008%   1.544%   0.122%   0.000%  24.974%   0.000%   0.054%
   41    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.801%   0.001%
   42    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.504%   0.001%
   43    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   1.902%
   44    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%
   45    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.278%
   46    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.095%
   47    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.566%   0.001%
   48    8.1  0.5  0.5   1.047%   0.004%   7.712%   0.004%   0.276%   0.022%   0.000%   0.000%   0.020%  24.938%
   49    9.1  0.5  0.5  16.982%   0.065%   3.446%   0.002%   4.279%   0.339%   0.000%   0.000%   0.001%   0.690%
   50   10.1  0.5  0.5   0.010%   2.570%   0.004%   7.287%   0.053%   0.666%   0.000%   0.000%  20.474%   0.017%
   51   11.1  0.5  0.5   0.104%  27.126%   0.000%   0.698%   0.534%   6.737%   0.000%   0.000%   0.005%   0.000%
   52   12.1  0.5  0.5   0.102%  26.492%   0.000%   0.832%   0.525%   6.625%   0.000%   0.000%   0.033%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.801%
   54    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.504%
   55    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.902%   0.002%
   56    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.000%
   57    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.278%   0.000%
   58    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.095%   0.001%
   59    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   1.566%
   60    8.1  0.5 -0.5   0.004%   1.047%   0.004%   7.712%   0.022%   0.276%   0.000%   0.000%  24.938%   0.020%
   61    9.1  0.5 -0.5   0.065%  16.982%   0.002%   3.446%   0.339%   4.279%   0.000%   0.000%   0.690%   0.001%
   62   10.1  0.5 -0.5   2.570%   0.010%   7.287%   0.004%   0.666%   0.053%   0.000%   0.000%   0.017%  20.474%
   63   11.1  0.5 -0.5  27.126%   0.104%   0.698%   0.000%   6.737%   0.534%   0.000%   0.000%   0.000%   0.005%
   64   12.1  0.5 -0.5  26.492%   0.102%   0.832%   0.000%   6.625%   0.525%   0.000%   0.000%   0.000%   0.033%

   Nr   State  S   Sz      61       62       63       64

    1    1.1  1.5  1.5   0.001%   0.090%   0.013%   0.016%
    2    2.1  1.5  1.5   0.209%   0.003%   0.001%   0.001%
    3    3.1  1.5  1.5   0.006%   0.000%   0.068%   0.054%
    4    4.1  1.5  1.5   0.001%   0.055%   0.013%   0.016%
    5    5.1  1.5  1.5   0.138%   0.002%   0.015%   0.012%
    6    6.1  1.5  1.5   0.000%   0.000%   0.001%   0.001%
    7    7.1  1.5  1.5   0.002%   0.180%   0.000%   0.000%
    8    8.1  1.5  1.5   0.133%   9.622%   0.000%   0.000%
    9    9.1  1.5  1.5   4.399%   0.061%   8.467%   6.769%
   10   10.1  1.5  1.5   0.036%   0.000%  13.906%  11.117%
   11    1.1  1.5  0.5   0.001%   0.000%   0.092%   0.073%
   12    2.1  1.5  0.5   0.000%   0.011%   0.043%   0.054%
   13    3.1  1.5  0.5   0.001%   0.078%   0.025%   0.032%
   14    4.1  1.5  0.5   0.081%   0.001%   0.079%   0.063%
   15    5.1  1.5  0.5   0.001%   0.075%   0.085%   0.107%
   16    6.1  1.5  0.5   0.001%   0.072%   0.068%   0.085%
   17    7.1  1.5  0.5   0.051%   0.001%   0.026%   0.021%
   18    8.1  1.5  0.5  10.822%   0.150%   1.952%   1.561%
   19    9.1  1.5  0.5   0.016%   1.132%   0.396%   0.495%
   20   10.1  1.5  0.5   0.262%  18.928%   0.377%   0.472%
   21    1.1  1.5 -0.5   0.000%   0.001%   0.073%   0.092%
   22    2.1  1.5 -0.5   0.011%   0.000%   0.054%   0.043%
   23    3.1  1.5 -0.5   0.078%   0.001%   0.032%   0.025%
   24    4.1  1.5 -0.5   0.001%   0.081%   0.063%   0.079%
   25    5.1  1.5 -0.5   0.075%   0.001%   0.107%   0.085%
   26    6.1  1.5 -0.5   0.072%   0.001%   0.085%   0.068%
   27    7.1  1.5 -0.5   0.001%   0.051%   0.021%   0.026%
   28    8.1  1.5 -0.5   0.150%  10.822%   1.561%   1.952%
   29    9.1  1.5 -0.5   1.132%   0.016%   0.495%   0.396%
   30   10.1  1.5 -0.5  18.928%   0.262%   0.472%   0.377%
   31    1.1  1.5 -1.5   0.090%   0.001%   0.016%   0.013%
   32    2.1  1.5 -1.5   0.003%   0.209%   0.001%   0.001%
   33    3.1  1.5 -1.5   0.000%   0.006%   0.054%   0.068%
   34    4.1  1.5 -1.5   0.055%   0.001%   0.016%   0.013%
   35    5.1  1.5 -1.5   0.002%   0.138%   0.012%   0.015%
   36    6.1  1.5 -1.5   0.000%   0.000%   0.001%   0.001%
   37    7.1  1.5 -1.5   0.180%   0.002%   0.000%   0.000%
   38    8.1  1.5 -1.5   9.622%   0.133%   0.000%   0.000%
   39    9.1  1.5 -1.5   0.061%   4.399%   6.769%   8.467%
   40   10.1  1.5 -1.5   0.000%   0.036%  11.117%  13.906%
   41    1.1  0.5  0.5   1.796%   0.025%   0.252%   0.201%
   42    2.1  0.5  0.5   1.175%   0.016%   0.211%   0.169%
   43    3.1  0.5  0.5   0.003%   0.187%   0.437%   0.546%
   44    4.1  0.5  0.5   0.008%   0.571%   1.098%   1.374%
   45    5.1  0.5  0.5   0.032%   2.297%   0.208%   0.261%
   46    6.1  0.5  0.5   0.000%   0.016%   0.873%   1.092%
   47    7.1  0.5  0.5   1.038%   0.014%   0.254%   0.203%
   48    8.1  0.5  0.5   0.021%   1.495%   0.535%   0.669%
   49    9.1  0.5  0.5   0.352%  25.426%   0.511%   0.639%
   50   10.1  0.5  0.5   5.855%   0.081%   0.701%   0.561%
   51   11.1  0.5  0.5   5.329%   0.074%  12.461%   9.962%
   52   12.1  0.5  0.5   7.461%   0.103%  11.229%   8.977%
   53    1.1  0.5 -0.5   0.025%   1.796%   0.201%   0.252%
   54    2.1  0.5 -0.5   0.016%   1.175%   0.169%   0.211%
   55    3.1  0.5 -0.5   0.187%   0.003%   0.546%   0.437%
   56    4.1  0.5 -0.5   0.571%   0.008%   1.374%   1.098%
   57    5.1  0.5 -0.5   2.297%   0.032%   0.261%   0.208%
   58    6.1  0.5 -0.5   0.016%   0.000%   1.092%   0.873%
   59    7.1  0.5 -0.5   0.014%   1.038%   0.203%   0.254%
   60    8.1  0.5 -0.5   1.495%   0.021%   0.669%   0.535%
   61    9.1  0.5 -0.5  25.426%   0.352%   0.639%   0.511%
   62   10.1  0.5 -0.5   0.081%   5.855%   0.561%   0.701%
   63   11.1  0.5 -0.5   0.074%   5.329%   9.962%  12.461%
   64   12.1  0.5 -0.5   0.103%   7.461%   8.977%  11.229%


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

              2       6      357.41       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      4447.79   3846.18    432.14    165.22      2.46      1.41
 REAL TIME  *      4742.29 SEC
 DISK USED  *       389.52 MB (local),       11.54 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.972599315200

              CI              CI           MULTI
   -109.92333859   -109.92132558   -109.33365074
 **********************************************************************************************************************************
 Molpro calculation terminated
