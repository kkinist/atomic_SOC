
 Working directory              : /wrk/irikura/molpro.wABrJl1dma/
 Global scratch directory       : /wrk/irikura/molpro.wABrJl1dma/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.wABrJl1dma/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   20
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.02 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! 4F,4P + 2F,2D
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,10;
     wf,nelec=17,sym=1,spin=1; state,12;
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
  64 bit mpp version                                                                     DATE: 13-Feb-24          TIME: 18:03:18  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  20000 MW

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

     15.204 MB (compressed) written to integral file ( 17.0%)

     Node minimum: 0.262 MB, node maximum: 1.049 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     288660.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     288660      RECORD LENGTH: 524288

 Memory used in sort:       0.85 MW

 SORT1 READ    10862098. AND WROTE       57462. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     80 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      286708.  Node maximum:      292109. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.03      0.73
 REAL TIME  *         1.64 SEC
 DISK USED  *        29.10 MB (local),      670.10 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.428D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.424D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.305D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.320D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 4   6 5 3 1 4 6 2 5 3 2   6 4 3 5 1 711 91415  1310 812 2 6 4 5 3 1
                                        71415131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.533D-04 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.177D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.230D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 5 4 7 9 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545
                                          0.04545   0.04545
 Weight factors for state symmetry  2:    0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545   0.04545
                                          0.04545   0.04545   0.04545   0.04545
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3785
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    8    0   -109.34274051    -109.35405512   -0.01131461    0.16422182 0.00001129 0.00000000  0.11E+00      0.37
   2    3    6    0   -109.35382701    -109.35383690   -0.00000988    0.00515507 0.00000829 0.00000000  0.35E-02      0.69
   3   20   40    0   -109.35383690    -109.35383690   -0.00000000    0.00000507 0.00000030 0.00000000  0.38E-05      2.27

 CONVERGENCE REACHED!  Final gradient:    0.00000008 ( 0.76E-07)
                       Final energy:   -109.35383690
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380939435544
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623012
 One electron energy                          -193.47898690
 Two electron energy                            84.09804747
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380939435490
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623015
 One electron energy                          -193.47898694
 Two electron energy                            84.09804750
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380939435450
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623014
 One electron energy                          -193.47898692
 Two electron energy                            84.09804749
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380939435153
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623018
 One electron energy                          -193.47898697
 Two electron energy                            84.09804754
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380939434439
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623023
 One electron energy                          -193.47898705
 Two electron energy                            84.09804762
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380939434397
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623024
 One electron energy                          -193.47898706
 Two electron energy                            84.09804763
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380939433800
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623031
 One electron energy                          -193.47898716
 Two electron energy                            84.09804773
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327343964467
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696406
 One electron energy                          -193.46940779
 Two electron energy                            84.14206383
 Virial ratio                                    3.66801962
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327343964420
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696405
 One electron energy                          -193.46940778
 Two electron energy                            84.14206382
 Virial ratio                                    3.66801962
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327343963579
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696409
 One electron energy                          -193.46940784
 Two electron energy                            84.14206387
 Virial ratio                                    3.66801962
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.352673483312
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073033
 One electron energy                          -193.45206898
 Two electron energy                            84.09939549
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.352673483078
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073035
 One electron energy                          -193.45206900
 Two electron energy                            84.09939551
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.352673482942
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073036
 One electron energy                          -193.45206901
 Two electron energy                            84.09939553
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.352673482368
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073038
 One electron energy                          -193.45206904
 Two electron energy                            84.09939556
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.352673480911
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073044
 One electron energy                          -193.45206913
 Two electron energy                            84.09939565
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.352673480780
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073045
 One electron energy                          -193.45206914
 Two electron energy                            84.09939566
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.352673479343
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073052
 One electron energy                          -193.45206924
 Two electron energy                            84.09939576
 Virial ratio                                    3.66969539
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333417906786
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992090
 One electron energy                          -193.59969845
 Two electron energy                            84.26628055
 Virial ratio                                    3.66342579
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333417906497
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992093
 One electron energy                          -193.59969850
 Two electron energy                            84.26628060
 Virial ratio                                    3.66342579
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333417906430
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992093
 One electron energy                          -193.59969850
 Two electron energy                            84.26628059
 Virial ratio                                    3.66342579
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333417906245
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992096
 One electron energy                          -193.59969853
 Two electron energy                            84.26628062
 Virial ratio                                    3.66342578
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333417906163
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992097
 One electron energy                          -193.59969854
 Two electron energy                            84.26628064
 Virial ratio                                    3.66342578
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     3.999334486816
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     5.958460457801
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     4.044186643733
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     5.955799269637
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     0.000662836866
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     4.041527077857
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999276230
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.000000173705
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.999999999540
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.984068037939
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.419296916205
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     5.986081052579
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     4.000000000011
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     6.580725684048
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     0.015927754243
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     4.013835244089
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     1.107446746572
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     3.999997721994
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     1.000003003305
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000000250623
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     2.892707769039
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.100246341792
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     6.041424703211
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     3.999870210110
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     0.000130816428
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     5.899964613123
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.958587574804
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.000000723844
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.999999826456
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.999999999816
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.520081885904
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     3.976461470094
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     6.013904782044
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     3.999999999987
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     0.023542360580
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     6.479839131031
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.986177503315
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     0.896272911605
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000001544760
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     3.999996421520
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     1.000000275987
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     3.103583077108
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.900419171392
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     0.000114838988
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     3.955943146157
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     6.044069913935
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     6.099372550012
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     3.999885347339
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.999999999926
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999839
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.000000000644
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     4.495850076157
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     4.604241613701
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     0.000014165378
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     4.000000000002
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     5.395731955373
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     5.504233114726
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     3.999987252595
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.996280341824
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000733245
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000575175
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     3.999999473391
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     0.003709153853
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 5 3 2 4 1 1 4 5   2 6 3 1 4 5 2 6 3 4   2 5 3 6 1 9 7 81214  15131011 4 2 3 5 6 1
                                        9 7 8121415131011 4   2 3 5 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 1   3 2 410 6 8 9 7 5 1   3 2 4 610 8 7 9 5 1   3 2 4 6 810 9 7 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99986    -3.72344     1  1  s    1.00205
    2.1     1.60115    -0.30713     1  1  d1-  1.00384
    3.1     1.60115    -0.30713     1  1  d2+  1.00384
    4.1     1.60115    -0.30713     1  1  d2-  1.00384
    5.1     1.60115    -0.30713     1  1  d0   1.00384
    6.1     1.60115    -0.30713     1  1  d1+  1.00384
    7.1     0.99539    -0.10114     1  2  s    0.90613
    1.2     1.99967    -2.35370     1  1  px   1.00013
    2.2     1.99967    -2.35370     1  1  pz   1.00013
    3.2     1.99967    -2.35370     1  1  py   1.00013
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a2a2a 222      0.00000002      0.00000000     -0.00000000      0.99999998     -0.00000000     -0.00000000     -0.00000000
 222aa2a 222      0.00000832      0.00535540     -0.00000093     -0.00000000      0.00000178     -0.00001270      0.99998564
 2a222aa 222     -0.00001263      0.89441434      0.00015818     -0.00000000     -0.00000419      0.00000733     -0.00479001
 2a2a22a 222     -0.00003791      0.00000508     -0.00509483     -0.00000000      0.89441258      0.00036723     -0.00000162
 222a2aa 222      0.01153798     -0.00000711      0.00000493     -0.00000000     -0.00036669      0.89435267      0.00001130
 22aa22a 222     -0.00000631      0.44720716      0.00007909     -0.00000000     -0.00000209      0.00000366     -0.00239501
 22a22aa 222      0.00027297     -0.00015185      0.86473757      0.00000000      0.22853622      0.00008541      0.00000121
 2aa222a 222      0.86306879      0.00001410     -0.00028397     -0.00000002      0.00013135     -0.23475976     -0.00001024
 2222aaa 222      0.00017949     -0.00009060      0.50219797      0.00000000     -0.38444391     -0.00016271      0.00000163
 2a22a2a 222     -0.50495446     -0.00000404      0.00016110      0.00000001      0.00013587     -0.38081616     -0.00000062
 
 Energy:       -109.38093944   -109.38093944   -109.38093944   -109.38093944   -109.38093943   -109.38093943   -109.38093943

 State:                8               9              10
 22a2a2a 222      0.00000000     -0.00000000      0.00000000
 222aa2a 222      0.00000000     -0.00000000     -0.00000000
 2a222aa 222      0.00000384     -0.00000568     -0.44688814
 2a2a22a 222      0.44688800     -0.00038019      0.00000385
 222a2aa 222      0.00038019      0.44688799     -0.00000567
 22aa22a 222     -0.00000768      0.00001135      0.89377631
 22a22aa 222     -0.44688799      0.00038019     -0.00000385
 2aa222a 222      0.00038019      0.44688799     -0.00000567
 2222aaa 222      0.77403270     -0.00065851      0.00000666
 2a22a2a 222      0.00065851      0.77403270     -0.00000982
 
 Energy:       -109.32734396   -109.32734396   -109.32734396
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 22a2a2b 222     -0.00000001     -0.00000354     -0.00000745      0.81437444      0.00000110      0.00000006      0.00000148
 222aa2b 222      0.00005954      0.00000118      0.00146262     -0.00000147     -0.00000164     -0.00000660      0.81437312
 2a222ab 222     -0.00019124      0.00071258      0.72839710      0.00000667     -0.00003257     -0.00002702     -0.00130819
 222a2ab 222     -0.04597025     -0.00009926      0.00001502     -0.00000006      0.00010189      0.72694655      0.00000922
 2a2a22b 222     -0.00002907      0.05587860     -0.00002220     -0.00000073      0.72625212     -0.00009600      0.00000142
 22a22ab 222     -0.00014164      0.71715990     -0.00069592      0.00000294      0.12745883      0.00007111      0.00000048
 2aa222b 222      0.71535551      0.00015533      0.00018247      0.00000002     -0.00000145     -0.13722613     -0.00005374
 222ba2a 222     -0.00002977     -0.00000059     -0.00073131      0.00000073      0.00000082      0.00000330     -0.40718655
 222ab2a 222     -0.00002977     -0.00000059     -0.00073131      0.00000073      0.00000082      0.00000330     -0.40718657
 222202a 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22a2b2a 222      0.00000000      0.00000177      0.00000372     -0.40718721     -0.00000055     -0.00000003     -0.00000074
 222022a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 220222a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22b2a2a 222      0.00000000      0.00000177      0.00000372     -0.40718723     -0.00000055     -0.00000003     -0.00000074
 222220a 222     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000      0.00000000      0.00000000
 2b222aa 222      0.00009562     -0.00035629     -0.36419855     -0.00000333      0.00001629      0.00001351      0.00065409
 2a222ba 222      0.00009562     -0.00035629     -0.36419855     -0.00000333      0.00001629      0.00001351      0.00065410
 2a2b22a 222      0.00001454     -0.02793930      0.00001110      0.00000037     -0.36312604      0.00004800     -0.00000071
 22a22ba 222      0.00007082     -0.35857995      0.00034796     -0.00000147     -0.06372941     -0.00003556     -0.00000024
 22b22aa 222      0.00007082     -0.35857995      0.00034796     -0.00000147     -0.06372942     -0.00003556     -0.00000024
 222b2aa 222      0.02298513      0.00004963     -0.00000751      0.00000003     -0.00005095     -0.36347326     -0.00000461
 2b2a22a 222      0.00001454     -0.02793930      0.00001110      0.00000037     -0.36312608      0.00004800     -0.00000071
 2ba222a 222     -0.35767776     -0.00007766     -0.00009124     -0.00000001      0.00000073      0.06861306      0.00002687
 2ab222a 222     -0.35767776     -0.00007766     -0.00009124     -0.00000001      0.00000073      0.06861307      0.00002687
 222a2ba 222      0.02298513      0.00004963     -0.00000751      0.00000003     -0.00005095     -0.36347329     -0.00000461
 202222a 222      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2a22a2b 222     -0.38646976     -0.00003237     -0.00011402      0.00000002     -0.00005799     -0.34047526      0.00002570
 2222aab 222     -0.00006499      0.38179093     -0.00038897      0.00000212     -0.34571348      0.00009649     -0.00000054
 22aa22b 222     -0.00009562      0.00035629      0.36419853      0.00000333     -0.00001629     -0.00001351     -0.00065410
 2222baa 222      0.00003250     -0.19089547      0.00019449     -0.00000106      0.17285674     -0.00004824      0.00000027
 2a22b2a 222      0.19323488      0.00001619      0.00005701     -0.00000001      0.00002900      0.17023762     -0.00001285
 2222aba 222      0.00003250     -0.19089547      0.00019449     -0.00000106      0.17285675     -0.00004824      0.00000027
 2b22a2a 222      0.19323488      0.00001619      0.00005701     -0.00000001      0.00002900      0.17023764     -0.00001285
 222a220 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2a22220 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 22a2220 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000
 2222a20 222     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 22ba22a 222      0.00004781     -0.00017814     -0.18209927     -0.00000167      0.00000814      0.00000676      0.00032705
 22ab22a 222      0.00004781     -0.00017814     -0.18209926     -0.00000167      0.00000814      0.00000676      0.00032705
 222a022 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2220a22 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2022 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2202a22 222      0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 
 Energy:       -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348

 State:                8               9              10              11              12
 22a2a2b 222     -0.00000001      0.00000000      0.00000000      0.00000000     -0.00000000
 222aa2b 222     -0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000
 2a222ab 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222a2ab 222     -0.00000000      0.00000002     -0.00000000     -0.00000000      0.00000000
 2a2a22b 222     -0.00000000     -0.00000000     -0.00000002     -0.00000000      0.00000000
 22a22ab 222      0.00000000     -0.00000000     -0.00000001      0.00000000     -0.00000000
 2aa222b 222      0.00000000     -0.00000001      0.00000000      0.00000000      0.00000000
 222ba2a 222     -0.00000045     -0.00025621      0.00022688     -0.51830131      0.00001240
 222ab2a 222      0.00000045      0.00025621     -0.00022688      0.51830130     -0.00001240
 222202a 222      0.01580534      0.00000106      0.00000761      0.00001239      0.51806038
 22a2b2a 222      0.51806038     -0.00000183     -0.00000358     -0.00000083     -0.01580534
 222022a 222     -0.01580534     -0.00000106     -0.00000761     -0.00001239     -0.51806037
 220222a 222     -0.01580534     -0.00000106     -0.00000761     -0.00001239     -0.51806037
 22b2a2a 222     -0.51806036      0.00000183      0.00000358      0.00000083      0.01580534
 222220a 222      0.45655612     -0.00000105      0.00000070      0.00000548      0.24534236
 2b222aa 222      0.00000039      0.00022189     -0.00019648      0.44886210     -0.00001074
 2a222ba 222     -0.00000039     -0.00022189      0.00019648     -0.44886210      0.00001074
 2a2b22a 222      0.00000290      0.00032210      0.44886204      0.00019632     -0.00000669
 22a22ba 222      0.00000290      0.00032210      0.44886204      0.00019632     -0.00000669
 22b22aa 222     -0.00000290     -0.00032210     -0.44886203     -0.00019632      0.00000669
 222b2aa 222     -0.00000155     -0.44886203      0.00032200      0.00022203      0.00000096
 2b2a22a 222     -0.00000290     -0.00032210     -0.44886203     -0.00019632      0.00000669
 2ba222a 222      0.00000155      0.44886202     -0.00032200     -0.00022203     -0.00000096
 2ab222a 222     -0.00000155     -0.44886202      0.00032200      0.00022203      0.00000096
 222a2ba 222      0.00000155      0.44886201     -0.00032200     -0.00022203     -0.00000096
 202222a 222     -0.44075077      0.00000212      0.00000690      0.00000691      0.27271801
 2a22a2b 222     -0.00000000     -0.00000001      0.00000000      0.00000000     -0.00000000
 2222aab 222      0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000
 22aa22b 222      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 2222baa 222     -0.00000167     -0.00018596     -0.25915063     -0.00011335      0.00000386
 2a22b2a 222      0.00000090      0.25915062     -0.00018591     -0.00012819     -0.00000055
 2222aba 222      0.00000167      0.00018596      0.25915062      0.00011335     -0.00000386
 2b22a2a 222     -0.00000090     -0.25915061      0.00018591      0.00012819      0.00000055
 222a220 222      0.00000018      0.00010220     -0.00009050      0.20674981     -0.00000495
 22222a0 222     -0.00000134     -0.00014836     -0.20674980     -0.00009043      0.00000308
 2a22220 222     -0.00000071     -0.20674980      0.00014832      0.00010227      0.00000044
 22a2220 222      0.20665372     -0.00000073     -0.00000143     -0.00000033     -0.00630473
 2222a20 222      0.00630474      0.00000042      0.00000304      0.00000494      0.20665372
 22ba22a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22ab22a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 222a022 222     -0.00000006     -0.00003367      0.00002982     -0.06811676      0.00000163
 2220a22 222     -0.00207719     -0.00000014     -0.00000100     -0.00000163     -0.06808510
 22a2022 222     -0.06808509      0.00000024      0.00000047      0.00000011      0.00207719
 2202a22 222     -0.00207719     -0.00000014     -0.00000100     -0.00000163     -0.06808508
 
 Energy:       -109.33341791   -109.33341791   -109.33341791   -109.33341791   -109.33341791
 


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
 CPU TIMES  *         3.41      2.38      0.73
 REAL TIME  *         4.25 SEC
 DISK USED  *        32.59 MB (local),      739.92 MB (total)
 SF USED    *        11.91 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3809394   12.0
    -109.3273440    2.0
    -109.3273440    2.0
    -109.3273440    2.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3526735   12.0
    -109.3334179    6.0
    -109.3334179    6.0
    -109.3334179    6.0
    -109.3334179    6.0
    -109.3334179    6.0
                                                  


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
     1      -109.38093944
     2      -109.38093944
     3      -109.38093944
     4      -109.38093944
     5      -109.38093943
     6      -109.38093943
     7      -109.38093943
     8      -109.32734396
     9      -109.32734396
    10      -109.32734396

 Number of blocks in overlap matrix:    78   Smallest eigenvalue:  0.24D-03
 Number of N-2 electron functions:     908
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1719888
 Total number of contracted configurations:      1772000
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  519133 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  460543 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38093944     0.00000000    -0.67202317  0.25D-01  0.10D+00     0.51
    1     2     2     1.00000000     0.00000000  -109.38093944    -0.00000000    -0.66991117  0.25D-01  0.99D-01     0.51
    1     3     3     1.00000000     0.00000000  -109.38093944    -0.00000000    -0.67185469  0.25D-01  0.10D+00     0.51
    1     4     4     1.00000000     0.00000000  -109.38093944    -0.00000000    -0.67416938  0.25D-01  0.10D+00     0.51
    1     5     5     1.00000000     0.00000000  -109.38093943    -0.00000000    -0.67063165  0.25D-01  0.99D-01     0.51
    1     6     6     1.00000000     0.00000000  -109.38093943     0.00000000    -0.67062322  0.25D-01  0.99D-01     0.51
    1     7     7     1.00000000     0.00000000  -109.38093943    -0.00000000    -0.67382184  0.25D-01  0.10D+00     0.51
    1     8     8     1.00000000     0.00000000  -109.32734396    -0.00000000    -0.68140307  0.29D-01  0.10D+00     0.51
    1     9     9     1.00000000     0.00000000  -109.32734396    -0.00000000    -0.68135075  0.29D-01  0.10D+00     0.51
    1    10    10     1.00000000     0.00000000  -109.32734396     0.00000000    -0.68196940  0.29D-01  0.10D+00     0.51
    2     1     1     1.08711174    -0.56274679  -109.94368622    -0.56274679    -0.01772453  0.11D-02  0.25D-02    15.71
    2     2     2     1.08707978    -0.56258172  -109.94352116    -0.56258172    -0.01781068  0.11D-02  0.25D-02    15.71
    2     3     3     1.08690558    -0.56213927  -109.94307870    -0.56213927    -0.01794224  0.11D-02  0.25D-02    15.71
    2     4     4     1.08687259    -0.56205865  -109.94299809    -0.56205865    -0.01795088  0.11D-02  0.25D-02    15.71
    2     5     5     1.08675580    -0.56170626  -109.94264569    -0.56170626    -0.01805676  0.11D-02  0.25D-02    15.71
    2     6     6     1.08674949    -0.56169413  -109.94263356    -0.56169413    -0.01805739  0.11D-02  0.25D-02    15.71
    2     7     7     1.08668833    -0.56149140  -109.94243084    -0.56149140    -0.01812098  0.11D-02  0.25D-02    15.71
    2     8     8     1.09202918    -0.57209147  -109.89943544    -0.57209147    -0.01752344  0.11D-02  0.26D-02    15.71
    2     9     9     1.09201558    -0.57192117  -109.89926514    -0.57192117    -0.01757810  0.11D-02  0.26D-02    15.71
    2    10    10     1.09199717    -0.57188487  -109.89922883    -0.57188487    -0.01757309  0.11D-02  0.26D-02    15.71
    3     1     1     1.08514071    -0.58142869  -109.96236813    -0.01868191    -0.00115570  0.32D-04  0.19D-03    30.58
    3     2     2     1.08509634    -0.58137680  -109.96231623    -0.01879508    -0.00118066  0.32D-04  0.20D-03    30.58
    3     3     3     1.08493350    -0.58125362  -109.96219305    -0.01911435    -0.00124115  0.34D-04  0.20D-03    30.58
    3     4     4     1.08488491    -0.58120334  -109.96214277    -0.01914469    -0.00125614  0.34D-04  0.20D-03    30.58
    3     5     5     1.08477291    -0.58109721  -109.96203664    -0.01939095    -0.00130520  0.36D-04  0.21D-03    30.58
    3     6     6     1.08476342    -0.58108826  -109.96202770    -0.01939413    -0.00130761  0.36D-04  0.21D-03    30.58
    3     7     7     1.08470444    -0.58103007  -109.96196951    -0.01953867    -0.00133724  0.37D-04  0.21D-03    30.58
    3     8     8     1.08909157    -0.59099556  -109.91833952    -0.01890408    -0.00122392  0.44D-04  0.20D-03    30.58
    3     9     9     1.08904801    -0.59094812  -109.91829209    -0.01902695    -0.00124689  0.45D-04  0.20D-03    30.58
    3    10    10     1.08901613    -0.59091423  -109.91825820    -0.01902937    -0.00125611  0.45D-04  0.20D-03    30.58
    4     1     1     1.08821208    -0.58307990  -109.96401934    -0.00165121    -0.00020462  0.81D-05  0.33D-04    45.47
    4     2     2     1.08819020    -0.58306553  -109.96400496    -0.00168873    -0.00021235  0.80D-05  0.35D-04    45.47
    4     3     3     1.08818137    -0.58305574  -109.96399517    -0.00180212    -0.00021427  0.85D-05  0.34D-04    45.47
    4     4     4     1.08815120    -0.58303581  -109.96397525    -0.00183248    -0.00022223  0.87D-05  0.35D-04    45.47
    4     5     5     1.08813573    -0.58302060  -109.96396003    -0.00192339    -0.00022765  0.93D-05  0.35D-04    45.47
    4     6     6     1.08813010    -0.58301713  -109.96395656    -0.00192887    -0.00022888  0.93D-05  0.35D-04    45.47
    4     7     7     1.08812167    -0.58301099  -109.96395043    -0.00198092    -0.00023212  0.94D-05  0.35D-04    45.47
    4     8     8     1.09227948    -0.59281329  -109.92015726    -0.00181774    -0.00020544  0.11D-04  0.32D-04    45.47
    4     9     9     1.09226732    -0.59280650  -109.92015046    -0.00185838    -0.00020809  0.11D-04  0.32D-04    45.47
    4    10    10     1.09223935    -0.59278996  -109.92013393    -0.00187573    -0.00021627  0.11D-04  0.34D-04    45.47
    5     1     1     1.08939920    -0.58334156  -109.96428099    -0.00026165    -0.00004451  0.79D-06  0.83D-05    60.43
    5     2     2     1.08938159    -0.58333578  -109.96427521    -0.00027025    -0.00004735  0.82D-06  0.89D-05    60.43
    5     3     3     1.08938079    -0.58333543  -109.96427487    -0.00027970    -0.00004594  0.87D-06  0.82D-05    60.43
    5     4     4     1.08936427    -0.58332675  -109.96426619    -0.00029094    -0.00004974  0.90D-06  0.89D-05    60.43
    5     5     5     1.08934829    -0.58332131  -109.96426074    -0.00030071    -0.00005196  0.96D-06  0.92D-05    60.43
    5     6     6     1.08934603    -0.58332006  -109.96425949    -0.00030293    -0.00005234  0.97D-06  0.92D-05    60.43
    5     7     7     1.08933399    -0.58331811  -109.96425755    -0.00030712    -0.00005357  0.99D-06  0.95D-05    60.43
    5     8     8     1.09346433    -0.59308929  -109.92043325    -0.00027600    -0.00004698  0.17D-05  0.85D-05    60.43
    5     9     9     1.09345853    -0.59308763  -109.92043160    -0.00028113    -0.00004737  0.20D-05  0.85D-05    60.43
    5    10    10     1.09343293    -0.59307875  -109.92042272    -0.00028879    -0.00005280  0.18D-05  0.98D-05    60.43
    6     1     1     1.08941557    -0.58340125  -109.96434069    -0.00005970    -0.00001369  0.60D-06  0.23D-05    75.31
    6     2     2     1.08938430    -0.58340093  -109.96434036    -0.00006515    -0.00001287  0.61D-06  0.20D-05    75.31
    6     3     3     1.08940454    -0.58339873  -109.96433816    -0.00006330    -0.00001489  0.66D-06  0.25D-05    75.31
    6     4     4     1.08936655    -0.58339700  -109.96433643    -0.00007025    -0.00001506  0.67D-06  0.24D-05    75.31
    6     5     5     1.08935088    -0.58339494  -109.96433438    -0.00007363    -0.00001611  0.69D-06  0.25D-05    75.31
    6     6     6     1.08934645    -0.58339466  -109.96433410    -0.00007460    -0.00001613  0.69D-06  0.25D-05    75.31
    6     7     7     1.08933899    -0.58339377  -109.96433320    -0.00007565    -0.00001680  0.69D-06  0.27D-05    75.31
    6     8     8     1.09342668    -0.59315547  -109.92049943    -0.00006618    -0.00001441  0.63D-06  0.24D-05    75.31
    6     9     9     1.09343815    -0.59315531  -109.92049927    -0.00006768    -0.00001465  0.63D-06  0.25D-05    75.31
    6    10    10     1.09341589    -0.59314997  -109.92049393    -0.00007122    -0.00001810  0.78D-06  0.31D-05    75.31
    7     1     1     1.08952628    -0.58341700  -109.96435644    -0.00001575    -0.00000401  0.17D-06  0.67D-06    90.26
    7     2     2     1.08951054    -0.58341668  -109.96435611    -0.00001575    -0.00000430  0.10D-06  0.80D-06    90.26
    7     3     3     1.08950237    -0.58341577  -109.96435520    -0.00001704    -0.00000465  0.12D-06  0.85D-06    90.26
    7     4     4     1.08949944    -0.58341507  -109.96435451    -0.00001808    -0.00000505  0.16D-06  0.90D-06    90.26
    7     5     5     1.08948873    -0.58341419  -109.96435362    -0.00001925    -0.00000542  0.18D-06  0.95D-06    90.26
    7     6     6     1.08948847    -0.58341411  -109.96435354    -0.00001945    -0.00000546  0.18D-06  0.95D-06    90.26
    7     7     7     1.08948109    -0.58341370  -109.96435314    -0.00001994    -0.00000565  0.19D-06  0.99D-06    90.26
    7     8     8     1.09359734    -0.59317233  -109.92051629    -0.00001686    -0.00000475  0.23D-06  0.87D-06    90.26
    7     9     9     1.09359578    -0.59317229  -109.92051626    -0.00001698    -0.00000467  0.23D-06  0.84D-06    90.26
    7    10    10     1.09355401    -0.59317000  -109.92051396    -0.00002003    -0.00000570  0.26D-06  0.10D-05    90.26
    8     1     1     1.08963533    -0.58342180  -109.96436123    -0.00000480    -0.00000128  0.26D-07  0.24D-06   105.21
    8     2     2     1.08962907    -0.58342172  -109.96436115    -0.00000504    -0.00000132  0.38D-07  0.24D-06   105.21
    8     3     3     1.08962436    -0.58342134  -109.96436078    -0.00000557    -0.00000151  0.39D-07  0.28D-06   105.21
    8     4     4     1.08962456    -0.58342100  -109.96436043    -0.00000592    -0.00000165  0.39D-07  0.30D-06   105.21
    8     5     5     1.08962156    -0.58342065  -109.96436008    -0.00000646    -0.00000180  0.41D-07  0.32D-06   105.21
    8     6     6     1.08962104    -0.58342061  -109.96436004    -0.00000650    -0.00000182  0.42D-07  0.32D-06   105.21
    8     7     7     1.08961842    -0.58342045  -109.96435988    -0.00000674    -0.00000190  0.42D-07  0.34D-06   105.21
    8     8     8     1.09373288    -0.59317792  -109.92052189    -0.00000560    -0.00000152  0.51D-07  0.28D-06   105.21
    8     9     9     1.09373290    -0.59317791  -109.92052187    -0.00000562    -0.00000153  0.53D-07  0.29D-06   105.21
    8    10    10     1.09372052    -0.59317710  -109.92052106    -0.00000710    -0.00000191  0.72D-07  0.35D-06   105.21
    9     1     1     1.08965369    -0.58342338  -109.96436281    -0.00000158    -0.00000042  0.21D-07  0.72D-07   120.12
    9     2     2     1.08965570    -0.58342335  -109.96436278    -0.00000163    -0.00000047  0.17D-07  0.87D-07   120.12
    9     3     3     1.08965296    -0.58342316  -109.96436260    -0.00000182    -0.00000057  0.17D-07  0.11D-06   120.12
    9     4     4     1.08964630    -0.58342306  -109.96436250    -0.00000206    -0.00000058  0.26D-07  0.99D-07   120.12
    9     5     5     1.08964244    -0.58342292  -109.96436235    -0.00000227    -0.00000066  0.28D-07  0.11D-06   120.12
    9     6     6     1.08964178    -0.58342290  -109.96436233    -0.00000229    -0.00000066  0.29D-07  0.11D-06   120.12
    9     7     7     1.08963987    -0.58342284  -109.96436227    -0.00000239    -0.00000071  0.28D-07  0.12D-06   120.12
    9     8     8     1.09373396    -0.59317986  -109.92052383    -0.00000194    -0.00000055  0.32D-07  0.95D-07   120.12
    9     9     9     1.09373636    -0.59317984  -109.92052381    -0.00000193    -0.00000058  0.27D-07  0.10D-06   120.12
    9    10    10     1.09372824    -0.59317950  -109.92052346    -0.00000240    -0.00000080  0.27D-07  0.15D-06   120.12
   10     1     1     1.08966821    -0.58342389  -109.96436333    -0.00000052    -0.00000015  0.46D-08  0.26D-07   135.02
   10     2     2     1.08966670    -0.58342386  -109.96436330    -0.00000051    -0.00000018  0.18D-08  0.38D-07   135.02
   10     3     3     1.08966368    -0.58342378  -109.96436322    -0.00000062    -0.00000021  0.33D-08  0.43D-07   135.02
   10     4     4     1.08966104    -0.58342376  -109.96436319    -0.00000069    -0.00000023  0.38D-08  0.43D-07   135.02
   10     5     5     1.08965787    -0.58342369  -109.96436312    -0.00000077    -0.00000026  0.43D-08  0.50D-07   135.02
   10     6     6     1.08965752    -0.58342368  -109.96436312    -0.00000078    -0.00000026  0.48D-08  0.49D-07   135.02
   10     7     7     1.08965568    -0.58342365  -109.96436309    -0.00000082    -0.00000028  0.52D-08  0.53D-07   135.02
   10     8     8     1.09375429    -0.59318050  -109.92052447    -0.00000064    -0.00000022  0.48D-08  0.43D-07   135.02
   10     9     9     1.09375386    -0.59318049  -109.92052445    -0.00000065    -0.00000022  0.52D-08  0.43D-07   135.02
   10    10    10     1.09374262    -0.59318032  -109.92052429    -0.00000083    -0.00000030  0.53D-08  0.63D-07   135.02
   11     1     1     1.08968422    -0.58342407  -109.96436350    -0.00000017    -0.00000006  0.11D-08  0.11D-07   149.96
   11     2     2     1.08968138    -0.58342405  -109.96436349    -0.00000019    -0.00000007  0.18D-08  0.13D-07   149.96
   11     3     3     1.08967981    -0.58342402  -109.96436345    -0.00000023    -0.00000008  0.19D-08  0.16D-07   149.96
   11     4     4     1.08967914    -0.58342400  -109.96436344    -0.00000025    -0.00000009  0.22D-08  0.17D-07   149.96
   11     5     5     1.08967754    -0.58342397  -109.96436341    -0.00000029    -0.00000010  0.26D-08  0.19D-07   149.96
   11     6     6     1.08967734    -0.58342397  -109.96436341    -0.00000029    -0.00000010  0.26D-08  0.20D-07   149.96
   11     7     7     1.08967624    -0.58342396  -109.96436339    -0.00000031    -0.00000011  0.26D-08  0.21D-07   149.96
   11     8     8     1.09377538    -0.59318074  -109.92052470    -0.00000023    -0.00000009  0.34D-08  0.17D-07   149.96
   11     9     9     1.09377560    -0.59318073  -109.92052470    -0.00000024    -0.00000009  0.33D-08  0.17D-07   149.96
   11    10    10     1.09377010    -0.59318066  -109.92052462    -0.00000034    -0.00000012  0.55D-08  0.23D-07   149.96
   12     1     1     1.08969109    -0.58342413  -109.96436357    -0.00000006    -0.00000002  0.62D-09  0.38D-08   164.88
   12     2     2     1.08969038    -0.58342412  -109.96436356    -0.00000007    -0.00000003  0.42D-09  0.52D-08   164.88
   12     3     3     1.08968935    -0.58342411  -109.96436354    -0.00000009    -0.00000003  0.42D-09  0.70D-08   164.88
   12     4     4     1.08968809    -0.58342410  -109.96436354    -0.00000010    -0.00000003  0.84D-09  0.69D-08   164.88
   12     5     5     1.08968699    -0.58342409  -109.96436352    -0.00000012    -0.00000004  0.96D-09  0.80D-08   164.88
   12     6     6     1.08968684    -0.58342409  -109.96436352    -0.00000012    -0.00000004  0.99D-09  0.81D-08   164.88
   12     7     7     1.08968603    -0.58342408  -109.96436352    -0.00000012    -0.00000005  0.93D-09  0.91D-08   164.88
   12     8     8     1.09378099    -0.59318083  -109.92052479    -0.00000009    -0.00000003  0.12D-08  0.67D-08   164.88
   12     9     9     1.09378144    -0.59318083  -109.92052479    -0.00000010    -0.00000004  0.89D-09  0.73D-08   164.88
   12    10    10     1.09377820    -0.59318080  -109.92052476    -0.00000014    -0.00000005  0.74D-09  0.11D-07   164.88
   13     1     1     1.08969917    -0.58342416  -109.96436359    -0.00000003    -0.00000001  0.55D-09  0.26D-08   169.04
   13     2     2     1.08969113    -0.58342413  -109.96436357    -0.00000001    -0.00000002  0.62D-09  0.38D-08   169.04
   13     3     3     1.08969038    -0.58342412  -109.96436356    -0.00000002    -0.00000003  0.42D-09  0.52D-08   169.04
   13     4     4     1.08968935    -0.58342411  -109.96436354    -0.00000000    -0.00000003  0.42D-09  0.70D-08   169.04
   13     5     5     1.08968809    -0.58342410  -109.96436354    -0.00000001    -0.00000003  0.84D-09  0.69D-08   169.04
   13     6     6     1.08968699    -0.58342409  -109.96436352    -0.00000000    -0.00000004  0.96D-09  0.80D-08   169.04
   13     7     7     1.08968685    -0.58342409  -109.96436352    -0.00000001    -0.00000004  0.10D-08  0.81D-08   169.04
   13     8     8     1.09379304    -0.59318088  -109.92052485    -0.00000005    -0.00000001  0.81D-09  0.22D-08   169.04
   13     9     9     1.09378099    -0.59318083  -109.92052479    -0.00000000    -0.00000003  0.12D-08  0.67D-08   169.04
   13    10    10     1.09378144    -0.59318083  -109.92052479    -0.00000003    -0.00000004  0.86D-09  0.73D-08   169.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.3%
 P   0.2%  11.0%  53.8%

 Initialization:   0.3%
 Other:           34.3%

 Total CPU:      169.0 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2/222           0.0000000   0.0000000   0.9579623  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000000
 222//2/222           0.0790895  -0.0000000   0.0000000   0.9546923  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0000011
 2//222/222           0.0000000   0.8565995  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0197574   0.4274350  -0.0000000
                      0.0000000
 22//22/222           0.4269491  -0.0000000  -0.0000000  -0.0353702  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000001
                      0.8548745
 2/222//222           0.8538991  -0.0000000  -0.0000000  -0.0707401  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
                     -0.4274376
 222/2//222          -0.0000000  -0.1950196   0.0000000  -0.0000000   0.0000000   0.0000000   0.8343399   0.4274353   0.0000000
                      0.0000000
 2/2/22/222           0.0000000   0.0000000   0.0000000   0.0000000  -0.2128038   0.8299821  -0.0000000  -0.0000000   0.4274383
                     -0.0000000
 22/22//222           0.0000000   0.0000000   0.0000000   0.0000000   0.7504253   0.4135421  -0.0000000  -0.0000000  -0.4274370
                      0.0000000
 2222///222           0.0000000   0.0000000  -0.0000000   0.0000000   0.5561206  -0.2404315   0.0000000   0.0000000   0.7403430
                     -0.0000001
 2/22/2/222          -0.0000000  -0.3819630   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.4702992   0.7403391  -0.0000000
                      0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.955098    0.000000    0.000000    0.000000   -0.000000    0.073975    0.000000   -0.000000   -0.000000
 2           0.929934   -0.000000    0.000000    0.000000    0.000000   -0.230028   -0.000000   -0.000000    0.000000    0.000000
 3          -0.000000   -0.000000    0.000000    0.957962    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.073975    0.000000   -0.000000    0.000000   -0.000000    0.955102    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.929285   -0.000000   -0.232645    0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000    0.232646   -0.000000    0.929285    0.000000   -0.000000    0.000000    0.000000    0.000000
 7           0.230029    0.000000   -0.000000    0.000000   -0.000000    0.929936    0.000000   -0.000000    0.000000   -0.000000
 8           0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.956120   -0.000000
 9          -0.000000    0.000000    0.000000    0.000000    0.000001    0.000000    0.000000    0.956125   -0.000000    0.000000
 10          0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.000000    0.956125

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957958   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957962    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 3          -0.000000    0.000000    0.957962    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000    0.000000    0.957963   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000001
 5           0.000000    0.000000    0.000000   -0.000000    0.957963    0.000000    0.000000    0.000000   -0.000000    0.000000
 6           0.000000   -0.000000    0.000000    0.000000    0.000000    0.957964   -0.000000    0.000000    0.000001   -0.000000
 7           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.957964    0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.956120    0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000001   -0.000000    0.000000    0.956125    0.000000
 10         -0.000000    0.000000    0.000000   -0.000001    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956125


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95509787 (fixed)   0.95795849 (relaxed)   0.95795835 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46744620
 Singles      0.01457375   -0.07404846   -0.07575906
 Pairs        0.07512544    0.00000002   -0.04021890
 Total        1.08969947   -0.07404844   -0.58342416
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44152155
 One electron energy                 -193.12058112
 Two electron energy                   83.15621753
 Virial quotient                       -2.65348277
 Correlation energy                    -0.58342416
 !MRCI STATE 1.1 Energy              -109.964363590963

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669643 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669625 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669643 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223729 (Pople, fixed reference)
 Cluster corrected energies          -110.01223712 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223729 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.92993439 (fixed)   0.95796202 (relaxed)   0.95796189 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46744956
 Singles      0.01457335   -0.07404851   -0.07575975
 Pairs        0.07511781   -0.00000000   -0.04021481
 Total        1.08969144   -0.07404851   -0.58342413
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44156932
 One electron energy                 -193.12065422
 Two electron energy                   83.15629066
 Virial quotient                       -2.65347972
 Correlation energy                    -0.58342413
 !MRCI STATE 2.1 Energy              -109.964363566205

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669171 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669154 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669171 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223269 (Pople, fixed reference)
 Cluster corrected energies          -110.01223252 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223269 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95796222 (fixed)   0.95796235 (relaxed)   0.95796222 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46744874
 Singles      0.01457365   -0.07404975   -0.07576021
 Pairs        0.07511676    0.00000000   -0.04021518
 Total        1.08969069   -0.07404975   -0.58342412
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157043
 One electron energy                 -193.12065332
 Two electron energy                   83.15628976
 Virial quotient                       -2.65347964
 Correlation energy                    -0.58342412
 !MRCI STATE 3.1 Energy              -109.964363558924

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669127 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669109 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669127 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223226 (Pople, fixed reference)
 Cluster corrected energies          -110.01223208 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223226 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95510217 (fixed)   0.95796281 (relaxed)   0.95796267 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46744848
 Singles      0.01457372   -0.07405012   -0.07576042
 Pairs        0.07511565   -0.00000038   -0.04021521
 Total        1.08968966   -0.07405050   -0.58342411
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44156596
 One electron energy                 -193.12064859
 Two electron energy                   83.15628505
 Virial quotient                       -2.65347993
 Correlation energy                    -0.58342411
 !MRCI STATE 4.1 Energy              -109.964363542746

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669065 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669047 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669065 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223165 (Pople, fixed reference)
 Cluster corrected energies          -110.01223148 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223165 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.92928450 (fixed)   0.95796336 (relaxed)   0.95796322 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46745146
 Singles      0.01457303   -0.07404784   -0.07575993
 Pairs        0.07511509   -0.00000000   -0.04021271
 Total        1.08968840   -0.07404784   -0.58342410
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157137
 One electron energy                 -193.12066767
 Two electron energy                   83.15630413
 Virial quotient                       -2.65347958
 Correlation energy                    -0.58342410
 !MRCI STATE 5.1 Energy              -109.964363538214

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01668991 (Davidson, fixed reference)
 Cluster corrected energies          -110.01668973 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01668991 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223093 (Pople, fixed reference)
 Cluster corrected energies          -110.01223076 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223093 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.92928493 (fixed)   0.95796384 (relaxed)   0.95796371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028   -0.00000000   -0.46745208
 Singles      0.01457299   -0.07404766   -0.07575991
 Pairs        0.07511403    0.00000000   -0.04021210
 Total        1.08968730   -0.07404766   -0.58342409
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157741
 One electron energy                 -193.12067960
 Two electron energy                   83.15631608
 Virial quotient                       -2.65347920
 Correlation energy                    -0.58342409
 !MRCI STATE 6.1 Energy              -109.964363524273

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01668926 (Davidson, fixed reference)
 Cluster corrected energies          -110.01668908 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01668926 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223029 (Pople, fixed reference)
 Cluster corrected energies          -110.01223012 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223029 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.92993618 (fixed)   0.95796391 (relaxed)   0.95796377 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46745225
 Singles      0.01457295   -0.07404754   -0.07575989
 Pairs        0.07511392    0.00000000   -0.04021194
 Total        1.08968715   -0.07404754   -0.58342409
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157920
 One electron energy                 -193.12068136
 Two electron energy                   83.15631784
 Virial quotient                       -2.65347908
 Correlation energy                    -0.58342409
 !MRCI STATE 7.1 Energy              -109.964363523695

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01668917 (Davidson, fixed reference)
 Cluster corrected energies          -110.01668899 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01668917 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223021 (Pople, fixed reference)
 Cluster corrected energies          -110.01223003 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223021 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95611998 (fixed)   0.95616408 (relaxed)   0.95611998 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009224   -0.00000000   -0.46962126
 Singles      0.01786001   -0.07951975   -0.08238113
 Pairs        0.07594168    0.00000000   -0.04117849
 Total        1.09389393   -0.07951975   -0.59318088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734396
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42125666
 One electron energy                 -193.06527358
 Two electron energy                   83.14474873
 Virial quotient                       -2.65372260
 Correlation energy                    -0.59318088
 !MRCI STATE 8.1 Energy              -109.920524847670

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97622093 (Davidson, fixed reference)
 Cluster corrected energies          -109.97616108 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97622093 (Davidson, rotated reference)

 Cluster corrected energies          -109.97163295 (Pople, fixed reference)
 Cluster corrected energies          -109.97157424 (Pople, relaxed reference)
 Cluster corrected energies          -109.97163295 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95612525 (fixed)   0.95616934 (relaxed)   0.95612525 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009223   -0.00000000   -0.46962658
 Singles      0.01785931   -0.07951950   -0.08238182
 Pairs        0.07593033   -0.00000004   -0.04117242
 Total        1.09388187   -0.07951954   -0.59318083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734396
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42130173
 One electron energy                 -193.06534727
 Two electron energy                   83.14482248
 Virial quotient                       -2.65371971
 Correlation energy                    -0.59318083
 !MRCI STATE 9.1 Energy              -109.920524794912

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97621372 (Davidson, fixed reference)
 Cluster corrected energies          -109.97615388 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97621372 (Davidson, rotated reference)

 Cluster corrected energies          -109.97162588 (Pople, fixed reference)
 Cluster corrected energies          -109.97156717 (Pople, relaxed reference)
 Cluster corrected energies          -109.97162588 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Coefficient of reference function:   C(0) = 0.95612505 (fixed)   0.95616914 (relaxed)   0.95612505 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009224   -0.00000000   -0.00005002
 Singles      0.01785951   -0.07952005   -0.08238195
 Pairs        0.07593059   -0.51366078   -0.51074885
 Total        1.09388234   -0.59318083   -0.59318083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734396
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42132817
 One electron energy                 -193.06537151
 Two electron energy                   83.14484672
 Virial quotient                       -2.65371802
 Correlation energy                    -0.59318083
 !MRCI STATE 10.1 Energy             -109.920524792034

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97621399 (Davidson, fixed reference)
 Cluster corrected energies          -109.97615415 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97621399 (Davidson, rotated reference)

 Cluster corrected energies          -109.97162615 (Pople, fixed reference)
 Cluster corrected energies          -109.97156743 (Pople, relaxed reference)
 Cluster corrected energies          -109.97162615 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      138.33       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       181.16    177.74      2.38      0.73
 REAL TIME  *       211.96 SEC
 DISK USED  *       170.44 MB (local),        3.41 GB (total)
 SF USED    *         1.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01669643  AU                              
 SETTING HLSDIAG(2)     =      -110.01669171  AU                              
 SETTING HLSDIAG(3)     =      -110.01669127  AU                              
 SETTING HLSDIAG(4)     =      -110.01669065  AU                              
 SETTING HLSDIAG(5)     =      -110.01668991  AU                              
 SETTING HLSDIAG(6)     =      -110.01668926  AU                              
 SETTING HLSDIAG(7)     =      -110.01668917  AU                              
 SETTING HLSDIAG(8)     =      -109.97622093  AU                              
 SETTING HLSDIAG(9)     =      -109.97621372  AU                              
 SETTING HLSDIAG(10)    =      -109.97621399  AU                              


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
     1      -109.35267348
     2      -109.35267348
     3      -109.35267348
     4      -109.35267348
     5      -109.35267348
     6      -109.35267348
     7      -109.35267348
     8      -109.33341791
     9      -109.33341791
    10      -109.33341791
    11      -109.33341791
    12      -109.33341791

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.61D-05
 Number of N-2 electron functions:    1200
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2279808
 Total number of contracted configurations:      2359039
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  824859 words, CPU-Time:      0.28 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  507037 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68708831  0.28D-01  0.10D+00     0.58
    1     2     2     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68708210  0.28D-01  0.10D+00     0.58
    1     3     3     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68777799  0.28D-01  0.10D+00     0.58
    1     4     4     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68811677  0.29D-01  0.10D+00     0.58
    1     5     5     1.00000000     0.00000000  -109.35267348    -0.00000000    -0.68813927  0.28D-01  0.10D+00     0.58
    1     6     6     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68811997  0.28D-01  0.10D+00     0.58
    1     7     7     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68703660  0.29D-01  0.10D+00     0.58
    1     8     8     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69347007  0.31D-01  0.11D+00     0.58
    1     9     9     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69284171  0.31D-01  0.11D+00     0.58
    1    10    10     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69283275  0.31D-01  0.11D+00     0.58
    1    11    11     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69335783  0.31D-01  0.11D+00     0.58
    1    12    12     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69239587  0.31D-01  0.11D+00     0.58
    2     1     1     1.09007587    -0.56834930  -109.92102279    -0.56834930    -0.01658102  0.15D-02  0.22D-02    42.57
    2     2     2     1.09007162    -0.56834552  -109.92101900    -0.56834552    -0.01658430  0.15D-02  0.22D-02    42.57
    2     3     3     1.09004530    -0.56828015  -109.92095364    -0.56828015    -0.01663183  0.15D-02  0.23D-02    42.57
    2     4     4     1.08996152    -0.56812222  -109.92079570    -0.56812222    -0.01671256  0.15D-02  0.23D-02    42.57
    2     5     5     1.08997206    -0.56811944  -109.92079292    -0.56811944    -0.01671498  0.15D-02  0.23D-02    42.57
    2     6     6     1.09016014    -0.56808517  -109.92075866    -0.56808517    -0.01684513  0.16D-02  0.23D-02    42.57
    2     7     7     1.09008557    -0.56793073  -109.92060421    -0.56793073    -0.01691933  0.16D-02  0.23D-02    42.57
    2     8     8     1.09330261    -0.57131389  -109.90473180    -0.57131389    -0.01647968  0.22D-02  0.20D-02    42.57
    2     9     9     1.09332143    -0.57118926  -109.90460717    -0.57118926    -0.01661341  0.22D-02  0.20D-02    42.57
    2    10    10     1.09327808    -0.57101658  -109.90443449    -0.57101658    -0.01672318  0.23D-02  0.20D-02    42.57
    2    11    11     1.09320366    -0.57100312  -109.90442103    -0.57100312    -0.01669748  0.22D-02  0.20D-02    42.57
    2    12    12     1.09320918    -0.57100215  -109.90442005    -0.57100215    -0.01669854  0.22D-02  0.20D-02    42.57
    3     1     1     1.08698691    -0.58526576  -109.93793925    -0.01691646    -0.00085155  0.26D-04  0.18D-03    83.71
    3     2     2     1.08698644    -0.58526561  -109.93793910    -0.01692009    -0.00085199  0.26D-04  0.18D-03    83.71
    3     3     3     1.08696464    -0.58524229  -109.93791577    -0.01696214    -0.00087636  0.24D-04  0.18D-03    83.71
    3     4     4     1.08696771    -0.58523584  -109.93790933    -0.01711363    -0.00087799  0.26D-04  0.18D-03    83.71
    3     5     5     1.08690655    -0.58522462  -109.93789810    -0.01710518    -0.00087804  0.26D-04  0.18D-03    83.71
    3     6     6     1.08690568    -0.58522386  -109.93789734    -0.01713869    -0.00087845  0.26D-04  0.18D-03    83.71
    3     7     7     1.08690618    -0.58521615  -109.93788962    -0.01728541    -0.00089069  0.25D-04  0.19D-03    83.71
    3     8     8     1.08878596    -0.58752849  -109.92094640    -0.01621460    -0.00084215  0.85D-04  0.14D-03    83.71
    3     9     9     1.08878767    -0.58752103  -109.92093893    -0.01633177    -0.00084349  0.82D-04  0.15D-03    83.71
    3    10    10     1.08872941    -0.58748057  -109.92089848    -0.01646399    -0.00086038  0.83D-04  0.15D-03    83.71
    3    11    11     1.08870339    -0.58747341  -109.92089131    -0.01647029    -0.00086510  0.83D-04  0.15D-03    83.71
    3    12    12     1.08870391    -0.58747308  -109.92089099    -0.01647093    -0.00086541  0.83D-04  0.15D-03    83.71
    4     1     1     1.08989715    -0.58644794  -109.93912142    -0.00118217    -0.00018659  0.83D-05  0.39D-04   124.80
    4     2     2     1.08989629    -0.58644764  -109.93912113    -0.00118203    -0.00018696  0.83D-05  0.39D-04   124.80
    4     3     3     1.08986344    -0.58644287  -109.93911636    -0.00120058    -0.00019025  0.84D-05  0.40D-04   124.80
    4     4     4     1.08987584    -0.58644210  -109.93911558    -0.00120626    -0.00019303  0.81D-05  0.41D-04   124.80
    4     5     5     1.08985571    -0.58644198  -109.93911546    -0.00121737    -0.00019128  0.81D-05  0.40D-04   124.80
    4     6     6     1.08987579    -0.58644198  -109.93911546    -0.00121811    -0.00019319  0.81D-05  0.41D-04   124.80
    4     7     7     1.08980695    -0.58642605  -109.93909953    -0.00120990    -0.00021080  0.75D-05  0.46D-04   124.80
    4     8     8     1.09080816    -0.58856460  -109.92198251    -0.00103611    -0.00021096  0.95D-05  0.42D-04   124.80
    4     9     9     1.09079526    -0.58855861  -109.92197652    -0.00103759    -0.00021561  0.94D-05  0.43D-04   124.80
    4    10    10     1.09077123    -0.58854683  -109.92196473    -0.00106625    -0.00022349  0.98D-05  0.45D-04   124.80
    4    11    11     1.09077030    -0.58854639  -109.92196429    -0.00107298    -0.00022569  0.98D-05  0.45D-04   124.80
    4    12    12     1.09077032    -0.58854630  -109.92196421    -0.00107322    -0.00022578  0.98D-05  0.45D-04   124.80
    5     1     1     1.09092016    -0.58665049  -109.93932397    -0.00020255    -0.00004571  0.95D-06  0.11D-04   165.95
    5     2     2     1.09091963    -0.58665037  -109.93932385    -0.00020272    -0.00004580  0.96D-06  0.11D-04   165.95
    5     3     3     1.09090954    -0.58665015  -109.93932364    -0.00020728    -0.00004576  0.96D-06  0.11D-04   165.95
    5     4     4     1.09091306    -0.58664969  -109.93932318    -0.00020759    -0.00004644  0.10D-05  0.11D-04   165.95
    5     5     5     1.09090471    -0.58664716  -109.93932064    -0.00020518    -0.00004880  0.11D-05  0.12D-04   165.95
    5     6     6     1.09090472    -0.58664702  -109.93932050    -0.00020504    -0.00004894  0.11D-05  0.12D-04   165.95
    5     7     7     1.09087719    -0.58664151  -109.93931499    -0.00021546    -0.00005269  0.14D-05  0.13D-04   165.95
    5     8     8     1.09222517    -0.58882959  -109.92224749    -0.00026498    -0.00005781  0.17D-05  0.13D-04   165.95
    5     9     9     1.09221081    -0.58882629  -109.92224420    -0.00026768    -0.00006088  0.18D-05  0.14D-04   165.95
    5    10    10     1.09219882    -0.58882261  -109.92224051    -0.00027578    -0.00006294  0.19D-05  0.14D-04   165.95
    5    11    11     1.09218351    -0.58882036  -109.92223827    -0.00027397    -0.00006554  0.19D-05  0.15D-04   165.95
    5    12    12     1.09218326    -0.58882034  -109.92223825    -0.00027404    -0.00006552  0.19D-05  0.15D-04   165.95
    6     1     1     1.09095225    -0.58669795  -109.93937143    -0.00004746    -0.00001217  0.65D-06  0.27D-05   207.21
    6     2     2     1.09095175    -0.58669790  -109.93937139    -0.00004754    -0.00001219  0.65D-06  0.27D-05   207.21
    6     3     3     1.09095045    -0.58669772  -109.93937120    -0.00004756    -0.00001249  0.65D-06  0.29D-05   207.21
    6     4     4     1.09095290    -0.58669679  -109.93937028    -0.00004710    -0.00001354  0.60D-06  0.33D-05   207.21
    6     5     5     1.09094798    -0.58669633  -109.93936982    -0.00004918    -0.00001341  0.63D-06  0.32D-05   207.21
    6     6     6     1.09094784    -0.58669624  -109.93936972    -0.00004922    -0.00001349  0.63D-06  0.32D-05   207.21
    6     7     7     1.09093130    -0.58669437  -109.93936785    -0.00005286    -0.00001483  0.61D-06  0.37D-05   207.21
    6     8     8     1.09223796    -0.58888850  -109.92230641    -0.00005891    -0.00001845  0.24D-05  0.36D-05   207.21
    6     9     9     1.09223301    -0.58888712  -109.92230503    -0.00006083    -0.00001927  0.24D-05  0.38D-05   207.21
    6    10    10     1.09221861    -0.58888629  -109.92230419    -0.00006368    -0.00001933  0.25D-05  0.36D-05   207.21
    6    11    11     1.09221461    -0.58888479  -109.92230270    -0.00006443    -0.00002037  0.26D-05  0.40D-05   207.21
    6    12    12     1.09221492    -0.58888476  -109.92230267    -0.00006442    -0.00002042  0.26D-05  0.40D-05   207.21
    7     1     1     1.09100688    -0.58671129  -109.93938477    -0.00001334    -0.00000406  0.43D-07  0.10D-05   248.52
    7     2     2     1.09100674    -0.58671127  -109.93938475    -0.00001336    -0.00000408  0.44D-07  0.10D-05   248.52
    7     3     3     1.09100493    -0.58671110  -109.93938458    -0.00001338    -0.00000419  0.39D-07  0.11D-05   248.52
    7     4     4     1.09099807    -0.58671046  -109.93938394    -0.00001367    -0.00000460  0.36D-07  0.12D-05   248.52
    7     5     5     1.09099635    -0.58671036  -109.93938384    -0.00001403    -0.00000475  0.31D-07  0.13D-05   248.52
    7     6     6     1.09099575    -0.58671030  -109.93938378    -0.00001406    -0.00000480  0.31D-07  0.13D-05   248.52
    7     7     7     1.09098340    -0.58670933  -109.93938281    -0.00001496    -0.00000551  0.32D-07  0.15D-05   248.52
    7     8     8     1.09225021    -0.58890743  -109.92232534    -0.00001893    -0.00000552  0.13D-06  0.12D-05   248.52
    7     9     9     1.09224306    -0.58890680  -109.92232470    -0.00001967    -0.00000601  0.12D-06  0.14D-05   248.52
    7    10    10     1.09223615    -0.58890677  -109.92232467    -0.00002048    -0.00000592  0.15D-06  0.13D-05   248.52
    7    11    11     1.09222990    -0.58890603  -109.92232393    -0.00002123    -0.00000650  0.14D-06  0.15D-05   248.52
    7    12    12     1.09222969    -0.58890599  -109.92232390    -0.00002123    -0.00000653  0.13D-06  0.15D-05   248.52
    8     1     1     1.09107854    -0.58671518  -109.93938866    -0.00000389    -0.00000137  0.41D-07  0.36D-06   289.67
    8     2     2     1.09107838    -0.58671517  -109.93938866    -0.00000390    -0.00000138  0.41D-07  0.36D-06   289.67
    8     3     3     1.09107719    -0.58671509  -109.93938858    -0.00000399    -0.00000144  0.43D-07  0.38D-06   289.67
    8     4     4     1.09107277    -0.58671488  -109.93938836    -0.00000442    -0.00000157  0.47D-07  0.39D-06   289.67
    8     5     5     1.09106929    -0.58671480  -109.93938828    -0.00000444    -0.00000161  0.48D-07  0.41D-06   289.67
    8     6     6     1.09106871    -0.58671478  -109.93938826    -0.00000448    -0.00000162  0.49D-07  0.41D-06   289.67
    8     7     7     1.09106169    -0.58671443  -109.93938791    -0.00000510    -0.00000185  0.59D-07  0.46D-06   289.67
    8     8     8     1.09233459    -0.58891323  -109.92233114    -0.00000580    -0.00000216  0.48D-07  0.53D-06   289.67
    8     9     9     1.09232527    -0.58891300  -109.92233090    -0.00000620    -0.00000234  0.50D-07  0.56D-06   289.67
    8    10    10     1.09232608    -0.58891290  -109.92233080    -0.00000613    -0.00000238  0.53D-07  0.59D-06   289.67
    8    11    11     1.09231737    -0.58891258  -109.92233049    -0.00000655    -0.00000262  0.54D-07  0.65D-06   289.67
    8    12    12     1.09231699    -0.58891256  -109.92233046    -0.00000656    -0.00000263  0.54D-07  0.65D-06   289.67
    9     1     1     1.09111657    -0.58671652  -109.93939000    -0.00000134    -0.00000046  0.52D-08  0.12D-06   330.96
    9     2     2     1.09111639    -0.58671652  -109.93939000    -0.00000134    -0.00000046  0.53D-08  0.12D-06   330.96
    9     3     3     1.09111568    -0.58671648  -109.93938996    -0.00000138    -0.00000049  0.47D-08  0.13D-06   330.96
    9     4     4     1.09111176    -0.58671636  -109.93938985    -0.00000148    -0.00000059  0.33D-08  0.16D-06   330.96
    9     5     5     1.09111042    -0.58671635  -109.93938984    -0.00000155    -0.00000058  0.39D-08  0.16D-06   330.96
    9     6     6     1.09110998    -0.58671634  -109.93938982    -0.00000156    -0.00000059  0.38D-08  0.17D-06   330.96
    9     7     7     1.09110445    -0.58671619  -109.93938967    -0.00000176    -0.00000070  0.30D-08  0.20D-06   330.96
    9     8     8     1.09237786    -0.58891526  -109.92233317    -0.00000203    -0.00000078  0.54D-07  0.17D-06   330.96
    9     9     9     1.09237222    -0.58891519  -109.92233309    -0.00000219    -0.00000082  0.59D-07  0.18D-06   330.96
    9    10    10     1.09237329    -0.58891513  -109.92233304    -0.00000223    -0.00000087  0.57D-07  0.20D-06   330.96
    9    11    11     1.09236783    -0.58891501  -109.92233292    -0.00000243    -0.00000093  0.62D-07  0.21D-06   330.96
    9    12    12     1.09236762    -0.58891500  -109.92233291    -0.00000245    -0.00000094  0.62D-07  0.21D-06   330.96
   10     1     1     1.09113300    -0.58671697  -109.93939045    -0.00000045    -0.00000019  0.10D-08  0.53D-07   372.33
   10     2     2     1.09113292    -0.58671696  -109.93939045    -0.00000045    -0.00000019  0.11D-08  0.53D-07   372.33
   10     3     3     1.09113238    -0.58671695  -109.93939043    -0.00000047    -0.00000020  0.11D-08  0.57D-07   372.33
   10     4     4     1.09112933    -0.58671689  -109.93939038    -0.00000053    -0.00000023  0.18D-08  0.68D-07   372.33
   10     5     5     1.09112852    -0.58671688  -109.93939036    -0.00000053    -0.00000024  0.15D-08  0.75D-07   372.33
   10     6     6     1.09112819    -0.58671688  -109.93939036    -0.00000053    -0.00000025  0.15D-08  0.76D-07   372.33
   10     7     7     1.09112456    -0.58671681  -109.93939029    -0.00000062    -0.00000030  0.23D-08  0.90D-07   372.33
   10     8     8     1.09239817    -0.58891601  -109.92233392    -0.00000076    -0.00000031  0.59D-08  0.81D-07   372.33
   10     9     9     1.09239498    -0.58891599  -109.92233390    -0.00000081    -0.00000033  0.48D-08  0.84D-07   372.33
   10    10    10     1.09239498    -0.58891595  -109.92233386    -0.00000082    -0.00000036  0.65D-08  0.96D-07   372.33
   10    11    11     1.09239162    -0.58891590  -109.92233381    -0.00000089    -0.00000039  0.55D-08  0.11D-06   372.33
   10    12    12     1.09239143    -0.58891590  -109.92233381    -0.00000090    -0.00000039  0.56D-08  0.11D-06   372.33
   11     1     1     1.09114337    -0.58671713  -109.93939062    -0.00000017    -0.00000007  0.88D-09  0.21D-07   413.58
   11     2     2     1.09114333    -0.58671713  -109.93939062    -0.00000017    -0.00000007  0.89D-09  0.21D-07   413.58
   11     3     3     1.09114261    -0.58671713  -109.93939061    -0.00000018    -0.00000008  0.75D-09  0.24D-07   413.58
   11     4     4     1.09114041    -0.58671710  -109.93939058    -0.00000021    -0.00000010  0.57D-09  0.29D-07   413.58
   11     5     5     1.09114013    -0.58671710  -109.93939058    -0.00000021    -0.00000010  0.76D-09  0.30D-07   413.58
   11     6     6     1.09113990    -0.58671709  -109.93939058    -0.00000022    -0.00000010  0.75D-09  0.30D-07   413.58
   11     7     7     1.09113768    -0.58671706  -109.93939054    -0.00000025    -0.00000013  0.60D-09  0.37D-07   413.58
   11     8     8     1.09241170    -0.58891630  -109.92233420    -0.00000028    -0.00000013  0.16D-08  0.34D-07   413.58
   11     9     9     1.09240959    -0.58891629  -109.92233420    -0.00000030    -0.00000014  0.17D-08  0.35D-07   413.58
   11    10    10     1.09240923    -0.58891627  -109.92233417    -0.00000032    -0.00000015  0.19D-08  0.40D-07   413.58
   11    11    11     1.09240683    -0.58891625  -109.92233415    -0.00000034    -0.00000017  0.20D-08  0.45D-07   413.58
   11    12    12     1.09240667    -0.58891624  -109.92233415    -0.00000034    -0.00000017  0.20D-08  0.46D-07   413.58
   12     1     1     1.09115000    -0.58671720  -109.93939068    -0.00000006    -0.00000003  0.11D-09  0.82D-08   454.88
   12     2     2     1.09114996    -0.58671720  -109.93939068    -0.00000006    -0.00000003  0.11D-09  0.82D-08   454.88
   12     3     3     1.09114936    -0.58671719  -109.93939068    -0.00000007    -0.00000003  0.14D-09  0.92D-08   454.88
   12     4     4     1.09114780    -0.58671718  -109.93939067    -0.00000008    -0.00000004  0.24D-09  0.12D-07   454.88
   12     5     5     1.09114765    -0.58671718  -109.93939066    -0.00000009    -0.00000004  0.20D-09  0.12D-07   454.88
   12     6     6     1.09114748    -0.58671718  -109.93939066    -0.00000009    -0.00000004  0.20D-09  0.12D-07   454.88
   12     7     7     1.09114601    -0.58671717  -109.93939065    -0.00000010    -0.00000005  0.32D-09  0.15D-07   454.88
   12     8     8     1.09242142    -0.58891641  -109.92233432    -0.00000012    -0.00000006  0.17D-08  0.14D-07   454.88
   12     9     9     1.09241996    -0.58891641  -109.92233432    -0.00000012    -0.00000006  0.19D-08  0.14D-07   454.88
   12    10    10     1.09241946    -0.58891640  -109.92233431    -0.00000013    -0.00000007  0.16D-08  0.18D-07   454.88
   12    11    11     1.09241769    -0.58891639  -109.92233430    -0.00000015    -0.00000007  0.17D-08  0.18D-07   454.88
   12    12    12     1.09241755    -0.58891639  -109.92233430    -0.00000015    -0.00000007  0.17D-08  0.19D-07   454.88
   13     1     1     1.09115281    -0.58671722  -109.93939070    -0.00000002    -0.00000002  0.57D-10  0.52D-08   487.66
   13     2     2     1.09115265    -0.58671722  -109.93939070    -0.00000002    -0.00000002  0.58D-10  0.56D-08   487.66
   13     3     3     1.09115253    -0.58671722  -109.93939070    -0.00000002    -0.00000002  0.59D-10  0.57D-08   487.66
   13     4     4     1.09115138    -0.58671721  -109.93939069    -0.00000003    -0.00000002  0.54D-10  0.74D-08   487.66
   13     5     5     1.09115005    -0.58671720  -109.93939068    -0.00000002    -0.00000003  0.11D-09  0.81D-08   487.66
   13     6     6     1.09115001    -0.58671720  -109.93939068    -0.00000002    -0.00000003  0.11D-09  0.81D-08   487.66
   13     7     7     1.09114936    -0.58671720  -109.93939068    -0.00000003    -0.00000003  0.14D-09  0.92D-08   487.66
   13     8     8     1.09243503    -0.58891649  -109.92233439    -0.00000007    -0.00000002  0.14D-08  0.40D-08   487.66
   13     9     9     1.09243507    -0.58891649  -109.92233439    -0.00000007    -0.00000002  0.13D-08  0.39D-08   487.66
   13    10    10     1.09243516    -0.58891649  -109.92233439    -0.00000009    -0.00000002  0.13D-08  0.45D-08   487.66
   13    11    11     1.09242644    -0.58891646  -109.92233437    -0.00000007    -0.00000002  0.47D-09  0.61D-08   487.66
   13    12    12     1.09242727    -0.58891646  -109.92233437    -0.00000007    -0.00000002  0.63D-09  0.61D-08   487.66


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.2%
 P   0.2%   6.8%  71.3%

 Initialization:   0.1%
 Other:           21.2%

 Total CPU:      487.7 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 22/2/2\222           0.9547232  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000002  -0.0000000  -0.0000000
 222//2\222          -0.0000000   0.0000000  -0.0000000   0.0020824  -0.0000000  -0.0000000   0.9547225   0.0000000  -0.0000000
                      0.0000000   0.0000001  -0.0000000
 2/222/\222           0.0000000  -0.0000000  -0.0000000   0.8539308  -0.0000000   0.0000000  -0.0018626  -0.0000000   0.0000000
                      0.0000000   0.0000004  -0.0000000
 2/2/22\222           0.0000000   0.0000000   0.8480937   0.0000000   0.0996824   0.0000000   0.0000000   0.0000000  -0.0000005
                      0.0000000  -0.0000000  -0.0000000
 2//222\222           0.0000000  -0.1067313  -0.0000000  -0.0000000   0.0000000   0.8472354  -0.0000000   0.0000007   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 222/2/\222           0.0000000   0.8470153  -0.0000000  -0.0000000   0.0000000  -0.1084647  -0.0000000   0.0000003   0.0000000
                     -0.0000000   0.0000000  -0.0000000
 22/22/\222          -0.0000000  -0.0000000   0.1155043   0.0000000   0.8460840  -0.0000000  -0.0000000  -0.0000000   0.0000001
                     -0.0000000  -0.0000000   0.0000000
 222/\2/222           0.0000000  -0.0000000   0.0000000   0.0000001   0.0000000   0.0000000   0.0000013   0.0000000  -0.0000000
                     -0.0000000   0.6879663  -0.0000000
 22/2\2/222          -0.0000001  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.6854131   0.0000000  -0.0587979
 2/222\/222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000028   0.0000000   0.0000000
                      0.0000000  -0.5957958   0.0000000
 2/\222/222           0.0000000   0.0000023   0.0000000  -0.0000000  -0.0000000   0.0000003  -0.0000000   0.5957639   0.0000000
                      0.0000000   0.0000000   0.0000000
 222/2\/222          -0.0000000  -0.0000017  -0.0000000  -0.0000000   0.0000000   0.0000006   0.0000000  -0.5957638   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 22/22\/222          -0.0000000   0.0000000   0.0000023  -0.0000000  -0.0000003   0.0000000   0.0000000  -0.0000000   0.5957637
                      0.0000000   0.0000000  -0.0000000
 2/2\22/222           0.0000000   0.0000000   0.0000019  -0.0000000   0.0000005   0.0000000   0.0000000  -0.0000000   0.5957636
                      0.0000000  -0.0000000  -0.0000000
 222022/222          -0.0000003   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0415740   0.0000000   0.4846910
 220222/222          -0.0000003   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0415739  -0.0000000   0.4846899
 222202/222           0.0000002  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.0415740  -0.0000000  -0.4846885
 202222/222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.4405166  -0.0000000  -0.2063393
 2222//\222           0.0000000   0.0000000  -0.4229567  -0.0000000   0.4309338   0.0000000   0.0000000   0.0000000  -0.0000006
                      0.0000000  -0.0000000  -0.0000000
 2/22/2\222           0.0000000  -0.4273991  -0.0000000  -0.0000000   0.0000000  -0.4265283  -0.0000000   0.0000008   0.0000000
                     -0.0000000  -0.0000000   0.0000000
 22//22\222          -0.0000000   0.0000000   0.0000000   0.4269606   0.0000000  -0.0000000  -0.0009313  -0.0000000   0.0000000
                     -0.0000000  -0.0000007  -0.0000000
 222220/222           0.0000003  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.3989425  -0.0000000  -0.2783526
 2/22\2/222          -0.0000000   0.0000011  -0.0000000  -0.0000000   0.0000000  -0.0000028  -0.0000000  -0.3439647   0.0000000
                     -0.0000000   0.0000000   0.0000000
 2222/\/222          -0.0000000   0.0000000  -0.0000012  -0.0000000  -0.0000028   0.0000000  -0.0000000  -0.0000000   0.3439646
                      0.0000000   0.0000000   0.0000000
 22222/0222           0.0000000   0.0000000   0.0000071  -0.0000000  -0.0000049   0.0000000   0.0000000  -0.0000000  -0.2671628
                      0.0000000  -0.0000000  -0.0000000
 2/22220222          -0.0000000  -0.0000067  -0.0000000   0.0000000   0.0000000  -0.0000045   0.0000000   0.2671618   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 222/220222           0.0000000   0.0000000  -0.0000000  -0.0000003   0.0000000  -0.0000000  -0.0000099   0.0000000   0.0000000
                      0.0000000   0.2670089  -0.0000000
 22/2220222          -0.0000010  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000
                      0.2661739  -0.0000000  -0.0228171
 2222/20222          -0.0000014   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0228327  -0.0000000  -0.2660011
 222/022222           0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000001   0.0000000   0.0000000
                     -0.0000000  -0.0664254  -0.0000000
 22/2022222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0661849   0.0000000   0.0056770
 2202/22222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      0.0056773   0.0000000   0.0661824
 2220/22222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0056773   0.0000000   0.0661823
 22/2\/2222          -0.0000000   0.0000000  -0.0162357  -0.0000000  -0.0269594  -0.0000000  -0.0000000  -0.0000000  -0.0521867
                      0.0000000   0.0000000  -0.0000000
 22//2\2222           0.0000000   0.0334147  -0.0000000   0.0000000   0.0000000   0.0333458   0.0000000   0.0521866  -0.0000000
                     -0.0000000   0.0000000   0.0000000
 222/\/2222           0.0000000  -0.0270942  -0.0000000   0.0000000   0.0000000   0.0160113  -0.0000000   0.0521865   0.0000000
                      0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.957318    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 2           0.061440   -0.000000    0.000000   -0.000000   -0.000000    0.955344    0.000000   -0.000000    0.000001    0.000000
            -0.000000    0.000000
 3          -0.000000   -0.038525   -0.000000   -0.000000    0.956543    0.000000   -0.000000    0.000000    0.000000    0.000001
             0.000000    0.000000
 4           0.000000    0.000000    0.957319   -0.000000   -0.000000   -0.000000    0.000407   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 5           0.000000    0.956544   -0.000000    0.000000    0.038525   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 6           0.955346    0.000000   -0.000000    0.000000   -0.000000   -0.061440   -0.000000   -0.000000   -0.000000    0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000407    0.000000   -0.000000    0.000000    0.957319   -0.000000   -0.000000    0.000000
             0.000001    0.000000
 8           0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954069   -0.000000
             0.000000   -0.000000
 9           0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.954069
            -0.000000   -0.000000
 10         -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.947658    0.000000    0.000000
            -0.000000    0.110425
 11         -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.954085    0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.110427    0.000000   -0.000000
            -0.000000    0.947675

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957318   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 2          -0.000000    0.957318   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 3          -0.000000   -0.000000    0.957318   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000
             0.000000    0.000000
 4          -0.000000    0.000000   -0.000000    0.957319    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.957319    0.000000    0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000    0.000000    0.957319   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7           0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957320   -0.000000    0.000000    0.000000
             0.000000    0.000000
 8           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954069   -0.000000    0.000000
             0.000000   -0.000000
 9           0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954069   -0.000000
            -0.000000   -0.000000
 10          0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.954070
            -0.000000   -0.000000
 11         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
             0.954085    0.000000
 12         -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.000000    0.954087

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00488714    -1.65632595       2122220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00488729    -1.65635187       2222210222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00484997    -1.64397730       2212220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00486533    -1.65259948       2221220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00482545    -1.63978618       2222120222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95731804 (fixed)   0.95732018 (relaxed)   0.95731804 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868411
 Singles      0.01499913   -0.07531167   -0.07708459
 Pairs        0.07615409    0.00000011   -0.04094851
 Total        1.09115767   -0.07531157   -0.58671722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45729320
 One electron energy                 -193.07484688
 Two electron energy                   83.13545618
 Virial quotient                       -2.65187093
 Correlation energy                    -0.58671722
 !MRCI STATE 1.1 Energy              -109.939390700563

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287448 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287162 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287448 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957083 (Pople, fixed reference)
 Cluster corrected energies          -109.98956796 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957083 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95534447 (fixed)   0.95732025 (relaxed)   0.95731811 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868421
 Singles      0.01499909   -0.07531154   -0.07708460
 Pairs        0.07615396    0.00000000   -0.04094841
 Total        1.09115751   -0.07531154   -0.58671722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45728965
 One electron energy                 -193.07484477
 Two electron energy                   83.13545407
 Virial quotient                       -2.65187116
 Correlation energy                    -0.58671722
 !MRCI STATE 2.1 Energy              -109.939390698808

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287438 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287153 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287438 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957073 (Pople, fixed reference)
 Cluster corrected energies          -109.98956786 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957073 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95654269 (fixed)   0.95732030 (relaxed)   0.95731817 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868422
 Singles      0.01499911   -0.07531157   -0.07708463
 Pairs        0.07615382   -0.00000000   -0.04094836
 Total        1.09115739   -0.07531157   -0.58671722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45729030
 One electron energy                 -193.07484520
 Two electron energy                   83.13545450
 Virial quotient                       -2.65187112
 Correlation energy                    -0.58671722
 !MRCI STATE 3.1 Energy              -109.939390698476

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287431 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287146 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287431 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957066 (Pople, fixed reference)
 Cluster corrected energies          -109.98956779 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957066 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95731859 (fixed)   0.95732081 (relaxed)   0.95731867 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868443
 Singles      0.01499932   -0.07531188   -0.07708489
 Pairs        0.07615246   -0.00000000   -0.04094789
 Total        1.09115624   -0.07531188   -0.58671721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45729942
 One electron energy                 -193.07485348
 Two electron energy                   83.13546279
 Virial quotient                       -2.65187053
 Correlation energy                    -0.58671721
 !MRCI STATE 4.1 Energy              -109.939390692405

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287363 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287077 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287363 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956998 (Pople, fixed reference)
 Cluster corrected energies          -109.98956711 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956998 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95654378 (fixed)   0.95732139 (relaxed)   0.95731925 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868345
 Singles      0.01500014   -0.07531356   -0.07708555
 Pairs        0.07615032    0.00000000   -0.04094820
 Total        1.09115492   -0.07531356   -0.58671720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45732176
 One electron energy                 -193.07486363
 Two electron energy                   83.13547295
 Virial quotient                       -2.65186910
 Correlation energy                    -0.58671720
 !MRCI STATE 5.1 Energy              -109.939390683083

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287284 (Davidson, fixed reference)
 Cluster corrected energies          -109.99286999 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287284 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956918 (Pople, fixed reference)
 Cluster corrected energies          -109.98956632 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956918 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95534562 (fixed)   0.95732140 (relaxed)   0.95731927 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868346
 Singles      0.01500015   -0.07531357   -0.07708556
 Pairs        0.07615027   -0.00000000   -0.04094818
 Total        1.09115488   -0.07531357   -0.58671720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45732079
 One electron energy                 -193.07486230
 Two electron energy                   83.13547162
 Virial quotient                       -2.65186917
 Correlation energy                    -0.58671720
 !MRCI STATE 6.1 Energy              -109.939390683015

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287282 (Davidson, fixed reference)
 Cluster corrected energies          -109.99286996 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287282 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956916 (Pople, fixed reference)
 Cluster corrected energies          -109.98956629 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956916 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95731947 (fixed)   0.95732169 (relaxed)   0.95731956 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000445   -0.00000000   -0.46868338
 Singles      0.01500033   -0.07531396   -0.07708575
 Pairs        0.07614944    0.00000000   -0.04094807
 Total        1.09115422   -0.07531396   -0.58671720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45733181
 One electron energy                 -193.07487009
 Two electron energy                   83.13547941
 Virial quotient                       -2.65186846
 Correlation energy                    -0.58671720
 !MRCI STATE 7.1 Energy              -109.939390676558

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287243 (Davidson, fixed reference)
 Cluster corrected energies          -109.99286958 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287243 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956877 (Pople, fixed reference)
 Cluster corrected energies          -109.98956590 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956877 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95406899 (fixed)   0.95675820 (relaxed)   0.95406899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564529    0.00000000   -0.47295407
 Singles      0.01625092   -0.07265274   -0.07484278
 Pairs        0.07670593    0.00000000   -0.04111963
 Total        1.09860214   -0.07265273   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48261388
 One electron energy                 -193.24559483
 Two electron energy                   83.32326044
 Virial quotient                       -2.64984108
 Correlation energy                    -0.58891649
 !MRCI STATE 8.1 Energy              -109.922334393627

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040282 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677091 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040282 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713393 (Pople, fixed reference)
 Cluster corrected energies          -109.97345937 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713393 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95406889 (fixed)   0.95675818 (relaxed)   0.95406889 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564546    0.00000000   -0.47295408
 Singles      0.01625094   -0.07265272   -0.07484278
 Pairs        0.07670597   -0.00000000   -0.04111964
 Total        1.09860237   -0.07265272   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48261389
 One electron energy                 -193.24559640
 Two electron energy                   83.32326201
 Virial quotient                       -2.64984108
 Correlation energy                    -0.58891649
 !MRCI STATE 9.1 Energy              -109.922334393583

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040296 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677093 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040296 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713407 (Pople, fixed reference)
 Cluster corrected energies          -109.97345939 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713407 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.94765785 (fixed)   0.95675814 (relaxed)   0.95406974 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564358   -0.00000000   -0.41856401
 Singles      0.01625078   -0.07265264   -0.07484274
 Pairs        0.07670605   -0.05975285   -0.09550973
 Total        1.09860041   -0.13240549   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48260310
 One electron energy                 -193.24557209
 Two electron energy                   83.32323770
 Virial quotient                       -2.64984177
 Correlation energy                    -0.58891649
 !MRCI STATE 10.1 Energy             -109.922334392760

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040180 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677098 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040180 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713290 (Pople, fixed reference)
 Cluster corrected energies          -109.97345944 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713290 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Coefficient of reference function:   C(0) = 0.95408474 (fixed)   0.95676196 (relaxed)   0.95408474 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561999    0.00000000   -0.47295768
 Singles      0.01624824   -0.07265101   -0.07484279
 Pairs        0.07669763   -0.00000000   -0.04111599
 Total        1.09856586   -0.07265101   -0.58891646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48253940
 One electron energy                 -193.24536602
 Two electron energy                   83.32303165
 Virial quotient                       -2.64984584
 Correlation energy                    -0.58891646
 !MRCI STATE 11.1 Energy             -109.922334369654

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98038143 (Davidson, fixed reference)
 Cluster corrected energies          -109.97676582 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98038143 (Davidson, rotated reference)

 Cluster corrected energies          -109.97711219 (Pople, fixed reference)
 Cluster corrected energies          -109.97345424 (Pople, relaxed reference)
 Cluster corrected energies          -109.97711219 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.94767476 (fixed)   0.95676159 (relaxed)   0.95408678 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561493   -0.00000000   -0.00616837
 Singles      0.01624752   -0.07265074   -0.07484265
 Pairs        0.07669872   -0.51279612   -0.50790544
 Total        1.09856118   -0.58544686   -0.58891646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48251770
 One electron energy                 -193.24530653
 Two electron energy                   83.32297216
 Virial quotient                       -2.64984722
 Correlation energy                    -0.58891646
 !MRCI STATE 12.1 Energy             -109.922334369615

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98037867 (Davidson, fixed reference)
 Cluster corrected energies          -109.97676631 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98037867 (Davidson, rotated reference)

 Cluster corrected energies          -109.97710938 (Pople, fixed reference)
 Cluster corrected energies          -109.97345474 (Pople, relaxed reference)
 Cluster corrected energies          -109.97710938 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      357.49       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       689.21    508.04    177.74      2.38      0.73
 REAL TIME  *       777.39 SEC
 DISK USED  *       389.59 MB (local),        7.70 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -109.99287448  AU                              
 SETTING HLSDIAG(12)    =      -109.99287438  AU                              
 SETTING HLSDIAG(13)    =      -109.99287431  AU                              
 SETTING HLSDIAG(14)    =      -109.99287363  AU                              
 SETTING HLSDIAG(15)    =      -109.99287284  AU                              
 SETTING HLSDIAG(16)    =      -109.99287282  AU                              
 SETTING HLSDIAG(17)    =      -109.99287243  AU                              
 SETTING HLSDIAG(18)    =      -109.98040282  AU                              
 SETTING HLSDIAG(19)    =      -109.98040296  AU                              
 SETTING HLSDIAG(20)    =      -109.98040180  AU                              
 SETTING HLSDIAG(21)    =      -109.98038143  AU                              
 SETTING HLSDIAG(22)    =      -109.98037867  AU                              


         HLSDIAG
    -110.0166964
    -110.0166917
    -110.0166913
    -110.0166907
    -110.0166899
    -110.0166893
    -110.0166892
    -109.9762209
    -109.9762137
    -109.9762140
    -109.9928745
    -109.9928744
    -109.9928743
    -109.9928736
    -109.9928728
    -109.9928728
    -109.9928724
    -109.9804028
    -109.9804030
    -109.9804018
    -109.9803814
    -109.9803787
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=  10

 Original energies:   -109.964364   -109.964364   -109.964364   -109.964364   -109.964364   -109.964364   -109.964364   -109.920525
                      -109.920525   -109.920525
 Replaced energies:   -110.016696   -110.016692   -110.016691   -110.016691   -110.016690   -110.016689   -110.016689   -109.976221
                      -109.976214   -109.976214

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.922334
                      -109.922334   -109.922334   -109.922334   -109.922334
 Replaced energies:   -109.992874   -109.992874   -109.992874   -109.992874   -109.992873   -109.992873   -109.992872   -109.980403
                      -109.980403   -109.980402   -109.980381   -109.980379



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01669643

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -84.92       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       1.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00     177.65    1227.91      -0.00      -0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       1.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           84.92       0.00       0.00    1025.02      -0.00      -0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       1.27       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00   -1025.02      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       1.43       0.00       0.00       0.00       0.00       0.00
                            0.00    -177.65       0.00      -0.00       0.00       0.00     752.40       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       1.57       0.00       0.00       0.00       0.00
                           -0.00   -1227.91       0.00       0.00      -0.00      -0.00     734.37       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       1.59       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -752.40    -734.37      -0.00       0.00      -0.00      -0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8883.35       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     524.70      -0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.93       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -524.70      -0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.87
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   11   1.1  1.5  0.5       0.00    -458.07       0.00       0.00       0.00      -0.00    -611.63       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00     641.62    -244.69       0.00       0.00       0.00      -0.00

   12   2.1  1.5  0.5     458.07      -0.00       0.00     -24.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00    -578.24      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.5  0.5      -0.00      -0.00      -0.00       0.00    -575.22    -147.48       0.00      -0.00      -0.00       0.00
                            0.00     578.24       0.00      -0.00      -0.00       0.00     135.16       0.00      -0.00       0.00

   14   4.1  1.5  0.5      -0.00      24.21      -0.00       0.00       0.00      -0.00    -545.03       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00    -340.74     542.14      -0.00      -0.00       0.00       0.00

   15   5.1  1.5  0.5      -0.00       0.00     575.22      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                         -641.62       0.00       0.00     340.74      -0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00     147.48       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          244.69      -0.00      -0.00    -542.14      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   17   7.1  1.5  0.5     611.63       0.00      -0.00     545.03       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -135.16       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   18   8.1  1.5  0.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     302.94
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     302.94

   20  10.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -302.94      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -302.94       0.00

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

   41   1.1  0.5  0.5       0.00       0.00       0.00      -0.00     395.26     101.34      -0.00       0.00       0.00      -0.00
                           -0.00    -397.34       0.00      -0.00       0.00       0.00     -92.87      -0.00       0.00      -0.00

   42   2.1  0.5  0.5    -385.96       0.00      -0.00    -374.26      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      51.83      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   43   3.1  0.5  0.5      -0.00       0.00      47.63      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                         -315.49      -0.00       0.00     431.82      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   44   4.1  0.5  0.5       0.00     315.09      -0.00       0.00      -0.00       0.00     388.82      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00    -458.29     197.54      -0.00       0.00      -0.00      -0.00

   45   5.1  0.5  0.5      -0.00      -0.00    -405.26       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                          350.89       0.00      -0.00     -84.45       0.00      -0.00       0.00       0.00       0.00       0.00

   46   6.1  0.5  0.5    -356.02       0.00      -0.00     -21.68      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     404.74      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   47   7.1  0.5  0.5      -0.00       8.72      -0.00       0.00      -0.00       0.00     407.09      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     197.94    -357.81       0.00      -0.00       0.00      -0.00

   48   8.1  0.5  0.5     362.61      -0.00       0.00    -557.82      -0.00      -0.00      -0.00       0.00      -0.00    -718.32
                           -0.00       0.00     525.98      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   49   9.1  0.5  0.5      -0.00       0.00     525.98      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                          449.45       0.00       0.00     490.54      -0.00      -0.00       0.00       0.00      -0.00    -718.32

   50  10.1  0.5  0.5      -0.00      -0.00      -0.00       0.00    -147.79    -635.35       0.00      -0.00     680.25      -0.00
                           -0.00     362.69      -0.00      -0.00      -0.00      -0.00    -571.50     751.14       0.00      -0.00

   51  11.1  0.5  0.5      -0.00     604.93      -0.00      -0.00      -0.00      -0.00    -277.03    -718.36      -0.00       0.00
                            0.00       0.00       0.00       0.00     408.33     525.31      -0.00      -0.00     718.36      -0.00

   52  12.1  0.5  0.5       0.00      -0.00      -0.00      -0.00    -518.16     284.01      -0.00       0.00    -474.63       0.00
                            0.00    -395.71       0.00       0.00       0.00      -0.00    -399.90     351.84       0.00      -0.00

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

    1   1.1  1.5  1.5       0.00     458.07      -0.00      -0.00      -0.00       0.00     611.63      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     641.62    -244.69       0.00       0.00       0.00      -0.00

    2   2.1  1.5  1.5    -458.07      -0.00      -0.00      24.21       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -578.24      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00      -0.00      -0.00     575.22     147.48      -0.00       0.00       0.00      -0.00
                            0.00     578.24      -0.00      -0.00      -0.00       0.00     135.16       0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00     -24.21       0.00       0.00      -0.00       0.00     545.03      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00    -340.74     542.14      -0.00      -0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00    -575.22       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                         -641.62       0.00       0.00     340.74       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00      -0.00    -147.48      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                          244.69      -0.00      -0.00    -542.14      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

    7   7.1  1.5  1.5    -611.63      -0.00       0.00    -545.03      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -135.16       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

    8   8.1  1.5  1.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.94
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

    9   9.1  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     302.94

   10  10.1  1.5  1.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     302.94       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -302.94      -0.00

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -28.31       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00

   12   2.1  1.5  0.5       0.00       1.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      59.22     409.30      -0.00      -0.00       0.00       0.00

   13   3.1  1.5  0.5       0.00       0.00       1.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           28.31       0.00       0.00     341.67      -0.00      -0.00       0.00       0.00       0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       1.27       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -341.67      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       1.43       0.00       0.00       0.00       0.00       0.00
                            0.00     -59.22       0.00      -0.00       0.00       0.00     250.80       0.00       0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       1.57       0.00       0.00       0.00       0.00
                           -0.00    -409.30       0.00       0.00      -0.00      -0.00     244.79       0.00       0.00       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       1.59       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00    -250.80    -244.79      -0.00       0.00      -0.00      -0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8883.35       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     174.90      -0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.93       0.00
                            0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -174.90      -0.00       0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.87
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   21   1.1  1.5 -0.5       0.00    -528.94       0.00       0.00       0.00      -0.00    -706.25       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00     740.88    -282.54       0.00       0.00       0.00      -0.00

   22   2.1  1.5 -0.5     528.94      -0.00       0.00     -27.95      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00    -667.69      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   23   3.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00    -664.20    -170.30       0.00      -0.00      -0.00       0.00
                            0.00     667.69       0.00      -0.00      -0.00       0.00     156.07       0.00      -0.00       0.00

   24   4.1  1.5 -0.5      -0.00      27.95      -0.00       0.00       0.00      -0.00    -629.35       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00    -393.45     626.00      -0.00      -0.00       0.00       0.00

   25   5.1  1.5 -0.5      -0.00       0.00     664.20      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                         -740.88       0.00       0.00     393.45      -0.00       0.00       0.00       0.00       0.00       0.00

   26   6.1  1.5 -0.5       0.00       0.00     170.30       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          282.54      -0.00      -0.00    -626.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5     706.25       0.00      -0.00     629.35       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -156.07       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   28   8.1  1.5 -0.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     349.80
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     349.80

   30  10.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -349.80      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -349.80       0.00

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
                           38.90      -0.00       0.00     469.57      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   42   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -351.18    -392.08       0.00      -0.00      -0.00       0.00

   43   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -495.57       0.00      -0.00       0.00       0.00     189.90       0.00      -0.00       0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.03      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -278.29       0.00      -0.00       0.00       0.00     442.62      -0.00      -0.00      -0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      45.77     525.23      -0.00      -0.00      -0.00      -0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -471.17       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     705.16    -304.87       0.00       0.00    -829.45       0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     484.33      -0.00      -0.00      -0.00       0.00     596.34     829.45       0.00      -0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          119.36       0.00       0.00     597.31      -0.00      -0.00       0.00      -0.00       0.00      81.86

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -607.38       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          804.85      -0.00      -0.00    -118.76       0.00      -0.00       0.00       0.00       0.00     954.32

   53   1.1  0.5 -0.5       0.00       0.00       0.00      -0.00     228.21      58.51      -0.00       0.00       0.00      -0.00
                           -0.00    -229.40       0.00      -0.00       0.00       0.00     -53.62      -0.00       0.00      -0.00

   54   2.1  0.5 -0.5    -222.83       0.00      -0.00    -216.08      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      29.92      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00

   55   3.1  0.5 -0.5      -0.00       0.00      27.50      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                         -182.15      -0.00       0.00     249.31      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   56   4.1  0.5 -0.5       0.00     181.91      -0.00       0.00      -0.00       0.00     224.48      -0.00      -0.00       0.00
                            0.00      -0.00       0.00      -0.00    -264.59     114.05      -0.00       0.00      -0.00      -0.00

   57   5.1  0.5 -0.5      -0.00      -0.00    -233.98       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                          202.59       0.00      -0.00     -48.76       0.00      -0.00       0.00       0.00       0.00       0.00

   58   6.1  0.5 -0.5    -205.55       0.00      -0.00     -12.52      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     233.68      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   59   7.1  0.5 -0.5      -0.00       5.04      -0.00       0.00      -0.00       0.00     235.03      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00     114.28    -206.58       0.00      -0.00       0.00      -0.00

   60   8.1  0.5 -0.5     209.35      -0.00       0.00    -322.06      -0.00      -0.00      -0.00       0.00      -0.00    -414.73
                           -0.00       0.00     303.67      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   61   9.1  0.5 -0.5      -0.00       0.00     303.67      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                          259.49       0.00       0.00     283.22      -0.00      -0.00       0.00       0.00      -0.00    -414.72

   62  10.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00     -85.33    -366.82       0.00      -0.00     392.74      -0.00
                           -0.00     209.40      -0.00      -0.00      -0.00      -0.00    -329.96     433.67       0.00      -0.00

   63  11.1  0.5 -0.5      -0.00     349.26      -0.00      -0.00      -0.00      -0.00    -159.94    -414.75      -0.00       0.00
                            0.00       0.00       0.00       0.00     235.75     303.29      -0.00      -0.00     414.75      -0.00

   64  12.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00    -299.16     163.97      -0.00       0.00    -274.03       0.00
                            0.00    -228.47       0.00       0.00       0.00      -0.00    -230.88     203.13       0.00      -0.00


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

   11   1.1  1.5  0.5       0.00     528.94      -0.00      -0.00      -0.00       0.00     706.25      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     740.88    -282.54       0.00       0.00       0.00      -0.00

   12   2.1  1.5  0.5    -528.94      -0.00      -0.00      27.95       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -667.69      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   13   3.1  1.5  0.5       0.00       0.00      -0.00      -0.00     664.20     170.30      -0.00       0.00       0.00      -0.00
                            0.00     667.69      -0.00      -0.00      -0.00       0.00     156.07       0.00      -0.00       0.00

   14   4.1  1.5  0.5       0.00     -27.95       0.00       0.00      -0.00       0.00     629.35      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00    -393.45     626.00      -0.00      -0.00       0.00       0.00

   15   5.1  1.5  0.5       0.00      -0.00    -664.20       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                         -740.88       0.00       0.00     393.45       0.00       0.00       0.00       0.00       0.00       0.00

   16   6.1  1.5  0.5      -0.00      -0.00    -170.30      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                          282.54      -0.00      -0.00    -626.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   17   7.1  1.5  0.5    -706.25      -0.00       0.00    -629.35      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -156.07       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   18   8.1  1.5  0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -349.80
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   19   9.1  1.5  0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     349.80

   20  10.1  1.5  0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     349.80       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -349.80      -0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      28.31      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   22   2.1  1.5 -0.5       0.00       1.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00     -59.22    -409.30       0.00       0.00      -0.00      -0.00

   23   3.1  1.5 -0.5       0.00       0.00       1.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -28.31      -0.00      -0.00    -341.67       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       1.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     341.67       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       1.43       0.00       0.00       0.00       0.00       0.00
                           -0.00      59.22      -0.00       0.00      -0.00      -0.00    -250.80      -0.00      -0.00      -0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       1.57       0.00       0.00       0.00       0.00
                            0.00     409.30      -0.00      -0.00       0.00       0.00    -244.79      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       1.59       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     250.80     244.79       0.00      -0.00       0.00       0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8883.35       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -174.90       0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.93       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     174.90       0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.87
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   31   1.1  1.5 -1.5       0.00    -458.07       0.00       0.00       0.00      -0.00    -611.63       0.00      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00     641.62    -244.69       0.00       0.00       0.00      -0.00

   32   2.1  1.5 -1.5     458.07      -0.00       0.00     -24.21      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00    -578.24      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   33   3.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00    -575.22    -147.48       0.00      -0.00      -0.00       0.00
                            0.00     578.24       0.00      -0.00      -0.00       0.00     135.16       0.00      -0.00       0.00

   34   4.1  1.5 -1.5      -0.00      24.21      -0.00       0.00       0.00      -0.00    -545.03       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00    -340.74     542.14      -0.00      -0.00       0.00       0.00

   35   5.1  1.5 -1.5      -0.00       0.00     575.22      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                         -641.62       0.00       0.00     340.74      -0.00       0.00       0.00       0.00       0.00       0.00

   36   6.1  1.5 -1.5       0.00       0.00     147.48       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                          244.69      -0.00      -0.00    -542.14      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   37   7.1  1.5 -1.5     611.63       0.00      -0.00     545.03       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00    -135.16       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   38   8.1  1.5 -1.5      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     302.94
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00     302.94

   40  10.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00    -302.94      -0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -302.94       0.00

   41   1.1  0.5  0.5       0.00       0.00       0.00      -0.00     228.21      58.51      -0.00       0.00       0.00      -0.00
                            0.00     229.40      -0.00       0.00      -0.00      -0.00      53.62       0.00      -0.00       0.00

   42   2.1  0.5  0.5    -222.83       0.00      -0.00    -216.08      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -29.92       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   43   3.1  0.5  0.5      -0.00       0.00      27.50      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                          182.15       0.00      -0.00    -249.31       0.00      -0.00      -0.00       0.00       0.00       0.00

   44   4.1  0.5  0.5       0.00     181.91      -0.00       0.00      -0.00       0.00     224.48      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00     264.59    -114.05       0.00      -0.00       0.00       0.00

   45   5.1  0.5  0.5      -0.00      -0.00    -233.98       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                         -202.59      -0.00       0.00      48.76      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   46   6.1  0.5  0.5    -205.55       0.00      -0.00     -12.52      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00    -233.68       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   47   7.1  0.5  0.5      -0.00       5.04      -0.00       0.00      -0.00       0.00     235.03      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00    -114.28     206.58      -0.00       0.00      -0.00       0.00

   48   8.1  0.5  0.5     209.35      -0.00       0.00    -322.06      -0.00      -0.00      -0.00       0.00      -0.00    -414.73
                            0.00      -0.00    -303.67       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   49   9.1  0.5  0.5      -0.00       0.00     303.67      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                         -259.49      -0.00      -0.00    -283.22       0.00       0.00      -0.00      -0.00       0.00     414.72

   50  10.1  0.5  0.5      -0.00      -0.00      -0.00       0.00     -85.33    -366.82       0.00      -0.00     392.74      -0.00
                            0.00    -209.40       0.00       0.00       0.00       0.00     329.96    -433.67      -0.00       0.00

   51  11.1  0.5  0.5      -0.00     349.26      -0.00      -0.00      -0.00      -0.00    -159.94    -414.75      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -235.75    -303.29       0.00       0.00    -414.75       0.00

   52  12.1  0.5  0.5       0.00      -0.00      -0.00      -0.00    -299.16     163.97      -0.00       0.00    -274.03       0.00
                           -0.00     228.47      -0.00      -0.00      -0.00       0.00     230.88    -203.13      -0.00       0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           38.90      -0.00       0.00     469.57      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -351.18    -392.08       0.00      -0.00      -0.00       0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -495.57       0.00      -0.00       0.00       0.00     189.90       0.00      -0.00       0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -1.03      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -278.29       0.00      -0.00       0.00       0.00     442.62      -0.00      -0.00      -0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      45.77     525.23      -0.00      -0.00      -0.00      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -471.17       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     705.16    -304.87       0.00       0.00    -829.45       0.00

   61   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     484.33      -0.00      -0.00      -0.00       0.00     596.34     829.45       0.00      -0.00

   62  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          119.36       0.00       0.00     597.31      -0.00      -0.00       0.00      -0.00       0.00      81.86

   63  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -607.38       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   64  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          804.85      -0.00      -0.00    -118.76       0.00      -0.00       0.00       0.00       0.00     954.32


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

   21   1.1  1.5 -0.5       0.00     458.07      -0.00      -0.00      -0.00       0.00     611.63      -0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     641.62    -244.69       0.00       0.00       0.00      -0.00

   22   2.1  1.5 -0.5    -458.07      -0.00      -0.00      24.21       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -578.24      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   23   3.1  1.5 -0.5       0.00       0.00      -0.00      -0.00     575.22     147.48      -0.00       0.00       0.00      -0.00
                            0.00     578.24      -0.00      -0.00      -0.00       0.00     135.16       0.00      -0.00       0.00

   24   4.1  1.5 -0.5       0.00     -24.21       0.00       0.00      -0.00       0.00     545.03      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00    -340.74     542.14      -0.00      -0.00       0.00       0.00

   25   5.1  1.5 -0.5       0.00      -0.00    -575.22       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                         -641.62       0.00       0.00     340.74       0.00       0.00       0.00       0.00       0.00       0.00

   26   6.1  1.5 -0.5      -0.00      -0.00    -147.48      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00
                          244.69      -0.00      -0.00    -542.14      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5    -611.63      -0.00       0.00    -545.03      -0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00    -135.16       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   28   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -302.94
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   29   9.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00     302.94

   30  10.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00     302.94       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00    -302.94      -0.00

   31   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      84.92      -0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   32   2.1  1.5 -1.5       0.00       1.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -177.65   -1227.91       0.00       0.00      -0.00      -0.00

   33   3.1  1.5 -1.5       0.00       0.00       1.13       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -84.92      -0.00      -0.00   -1025.02       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       1.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    1025.02       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       1.43       0.00       0.00       0.00       0.00       0.00
                           -0.00     177.65      -0.00       0.00      -0.00      -0.00    -752.40      -0.00      -0.00      -0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       1.57       0.00       0.00       0.00       0.00
                            0.00    1227.91      -0.00      -0.00       0.00       0.00    -734.37      -0.00      -0.00      -0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       1.59       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     752.40     734.37       0.00      -0.00       0.00       0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8883.35       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -524.70       0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.93       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     524.70       0.00      -0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    8884.87
                            0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

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

   53   1.1  0.5 -0.5       0.00       0.00       0.00      -0.00     395.26     101.34      -0.00       0.00       0.00      -0.00
                            0.00     397.34      -0.00       0.00      -0.00      -0.00      92.87       0.00      -0.00       0.00

   54   2.1  0.5 -0.5    -385.96       0.00      -0.00    -374.26      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     -51.83       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   55   3.1  0.5 -0.5      -0.00       0.00      47.63      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                          315.49       0.00      -0.00    -431.82       0.00      -0.00      -0.00       0.00       0.00       0.00

   56   4.1  0.5 -0.5       0.00     315.09      -0.00       0.00      -0.00       0.00     388.82      -0.00      -0.00       0.00
                           -0.00       0.00      -0.00       0.00     458.29    -197.54       0.00      -0.00       0.00       0.00

   57   5.1  0.5 -0.5      -0.00      -0.00    -405.26       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00
                         -350.89      -0.00       0.00      84.45      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   58   6.1  0.5 -0.5    -356.02       0.00      -0.00     -21.68      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00    -404.74       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   59   7.1  0.5 -0.5      -0.00       8.72      -0.00       0.00      -0.00       0.00     407.09      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00    -197.94     357.81      -0.00       0.00      -0.00       0.00

   60   8.1  0.5 -0.5     362.61      -0.00       0.00    -557.82      -0.00      -0.00      -0.00       0.00      -0.00    -718.32
                            0.00      -0.00    -525.98       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   61   9.1  0.5 -0.5      -0.00       0.00     525.98      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00
                         -449.45      -0.00      -0.00    -490.54       0.00       0.00      -0.00      -0.00       0.00     718.32

   62  10.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00    -147.79    -635.35       0.00      -0.00     680.25      -0.00
                            0.00    -362.69       0.00       0.00       0.00       0.00     571.50    -751.14      -0.00       0.00

   63  11.1  0.5 -0.5      -0.00     604.93      -0.00      -0.00      -0.00      -0.00    -277.03    -718.36      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -408.33    -525.31       0.00       0.00    -718.36       0.00

   64  12.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00    -518.16     284.01      -0.00       0.00    -474.63       0.00
                           -0.00     395.71      -0.00      -0.00      -0.00       0.00     399.90    -351.84      -0.00       0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5       0.00    -385.96      -0.00       0.00      -0.00    -356.02      -0.00     362.61      -0.00      -0.00
                            0.00      -0.00     315.49      -0.00    -350.89      -0.00       0.00       0.00    -449.45       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00     315.09      -0.00       0.00       8.72      -0.00       0.00      -0.00
                          397.34      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00    -362.69

    3   3.1  1.5  1.5       0.00      -0.00      47.63      -0.00    -405.26      -0.00      -0.00       0.00     525.98      -0.00
                           -0.00     -51.83      -0.00      -0.00       0.00    -404.74       0.00    -525.98      -0.00       0.00

    4   4.1  1.5  1.5      -0.00    -374.26      -0.00       0.00       0.00     -21.68       0.00    -557.82      -0.00       0.00
                            0.00       0.00    -431.82       0.00      84.45       0.00      -0.00       0.00    -490.54       0.00

    5   5.1  1.5  1.5     395.26      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00    -147.79
                           -0.00      -0.00       0.00     458.29      -0.00       0.00    -197.94       0.00       0.00       0.00

    6   6.1  1.5  1.5     101.34       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -635.35
                           -0.00       0.00      -0.00    -197.54       0.00       0.00     357.81       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00      -0.00       0.00     388.82      -0.00      -0.00     407.09      -0.00       0.00       0.00
                           92.87      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     571.50

    8   8.1  1.5  1.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -751.14

    9   9.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     680.25
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   10  10.1  1.5  1.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -718.32       0.00      -0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00     718.32       0.00

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -38.90       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -119.36

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     495.57       0.00     278.29      -0.00       0.00      -0.00    -484.33      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.03      -0.00      -0.00     471.17       0.00       0.00      -0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -469.57      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -597.31

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     351.18      -0.00       0.00      -0.00     -45.77      -0.00    -705.16       0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     392.08      -0.00      -0.00      -0.00    -525.23      -0.00     304.87      -0.00       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -189.90       0.00    -442.62       0.00       0.00      -0.00    -596.34      -0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -829.45       0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     829.45      -0.00      -0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00     -81.86

   21   1.1  1.5 -0.5       0.00    -222.83      -0.00       0.00      -0.00    -205.55      -0.00     209.35      -0.00      -0.00
                           -0.00       0.00    -182.15       0.00     202.59       0.00      -0.00      -0.00     259.49      -0.00

   22   2.1  1.5 -0.5       0.00       0.00       0.00     181.91      -0.00       0.00       5.04      -0.00       0.00      -0.00
                         -229.40       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     209.40

   23   3.1  1.5 -0.5       0.00      -0.00      27.50      -0.00    -233.98      -0.00      -0.00       0.00     303.67      -0.00
                            0.00      29.92       0.00       0.00      -0.00     233.68      -0.00     303.67       0.00      -0.00

   24   4.1  1.5 -0.5      -0.00    -216.08      -0.00       0.00       0.00     -12.52       0.00    -322.06      -0.00       0.00
                           -0.00      -0.00     249.31      -0.00     -48.76      -0.00       0.00      -0.00     283.22      -0.00

   25   5.1  1.5 -0.5     228.21      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00     -85.33
                            0.00       0.00      -0.00    -264.59       0.00      -0.00     114.28      -0.00      -0.00      -0.00

   26   6.1  1.5 -0.5      58.51       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -366.82
                            0.00      -0.00       0.00     114.05      -0.00      -0.00    -206.58      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5      -0.00      -0.00       0.00     224.48      -0.00      -0.00     235.03      -0.00       0.00       0.00
                          -53.62       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00    -329.96

   28   8.1  1.5 -0.5       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00     433.67

   29   9.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00     392.74
                            0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   30  10.1  1.5 -0.5      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -414.73       0.00      -0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00    -414.72      -0.00

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

   41   1.1  0.5  0.5    5228.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       1.46      -0.00      -0.00     670.96      -0.00       0.00       0.00

   42   2.1  0.5  0.5       0.00    5228.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -341.04      -0.00    -667.46       0.00       0.00      -0.00     382.08       0.00

   43   3.1  0.5  0.5       0.00       0.00    5228.35       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     341.04      -0.00      -0.00       0.00    -674.41       0.00    -378.11      -0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00    5228.50       0.00       0.00       0.00       0.00       0.00       0.00
                           -1.46       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      49.86

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00    5228.67       0.00       0.00       0.00       0.00       0.00
                            0.00     667.46      -0.00       0.00      -0.00    -329.88      -0.00     385.24       0.00      -0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    5228.68       0.00       0.00       0.00       0.00
                            0.00      -0.00     674.41      -0.00     329.88       0.00       0.00      -0.00     381.30       0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    5228.76       0.00       0.00       0.00
                         -670.96      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00     425.08

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.53       0.00       0.00
                            0.00       0.00     378.11       0.00    -385.24       0.00      -0.00      -0.00      50.57      -0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.50       0.00
                           -0.00    -382.08       0.00       0.00      -0.00    -381.30      -0.00     -50.57      -0.00       0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.75
                           -0.00      -0.00       0.00     -49.86       0.00      -0.00    -425.08       0.00      -0.00       0.00

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          426.77      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00    -100.72

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -570.39      -0.00       0.00      37.72       0.00      -0.00       0.00

   53   1.1  0.5 -0.5       0.00      -0.00      78.32       0.00    -666.37      -0.00      -0.00      -0.00    -426.74      -0.00
                            0.00      85.22      -0.00      -0.00      -0.00     665.52       0.00    -426.74      -0.00      -0.00

   54   2.1  0.5 -0.5       0.00      -0.00       0.00     583.11       0.00       0.00     664.43       0.00       0.00      -0.00
                          -85.22       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00     491.29

   55   3.1  0.5 -0.5     -78.32      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     437.84
                            0.00       0.00      -0.00     574.16       0.00      -0.00    -666.05      -0.00       0.00       0.00

   56   4.1  0.5 -0.5      -0.00    -583.11       0.00      -0.00       0.00    -580.65      -0.00    -329.63       0.00       0.00
                            0.00      -0.00    -574.16       0.00     586.27      -0.00      -0.00       0.00    -331.49      -0.00

   57   5.1  0.5 -0.5     666.37      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     297.32
                            0.00       0.00      -0.00    -586.27      -0.00       0.00      92.03       0.00       0.00      -0.00

   58   6.1  0.5 -0.5       0.00      -0.00      -0.00     580.65       0.00      -0.00      82.59       0.00       0.00       0.00
                         -665.52       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00    -245.40

   59   7.1  0.5 -0.5       0.00    -664.43       0.00       0.00      -0.00     -82.59       0.00     427.46      -0.00      -0.00
                           -0.00      -0.00     666.05       0.00     -92.03      -0.00      -0.00      -0.00    -426.02       0.00

   60   8.1  0.5 -0.5       0.00      -0.00      -0.00     329.63       0.00      -0.00    -427.46       0.00      -0.00      -0.00
                          426.74       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      42.89

   61   9.1  0.5 -0.5     426.74      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      57.87
                            0.00      -0.00      -0.00     331.49      -0.00       0.00     426.02       0.00       0.00       0.00

   62  10.1  0.5 -0.5       0.00       0.00    -437.84      -0.00    -297.32      -0.00       0.00       0.00     -57.87      -0.00
                            0.00    -491.29      -0.00       0.00       0.00     245.40      -0.00     -42.89      -0.00       0.00

   63  11.1  0.5 -0.5      -0.00    -273.69       0.00       0.00      -0.00     465.30       0.00      50.54       0.00       0.00
                            0.00      -0.00     278.50      -0.00     462.43       0.00       0.00       0.00     -50.55       0.00

   64  12.1  0.5 -0.5       0.00       0.00     366.23      -0.00    -309.37      -0.00       0.00      -0.00     -82.90       0.00
                           -0.00    -289.98       0.00      -0.00       0.00    -352.50      -0.00      91.54       0.00      -0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5     604.93      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     395.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00    -518.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -408.33      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00     284.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -525.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5    -277.03      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     399.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5    -718.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -351.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5      -0.00    -474.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -718.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.1  1.5  0.5       0.00       0.00       0.00    -222.83      -0.00       0.00      -0.00    -205.55      -0.00     209.35
                           -0.00    -804.85       0.00      -0.00     182.15      -0.00    -202.59      -0.00       0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     181.91      -0.00       0.00       5.04      -0.00
                            0.00       0.00     229.40      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00      -0.00      27.50      -0.00    -233.98      -0.00      -0.00       0.00
                          607.38       0.00      -0.00     -29.92      -0.00      -0.00       0.00    -233.68       0.00    -303.67

   14   4.1  1.5  0.5       0.00       0.00      -0.00    -216.08      -0.00       0.00       0.00     -12.52       0.00    -322.06
                           -0.00     118.76       0.00       0.00    -249.31       0.00      48.76       0.00      -0.00       0.00

   15   5.1  1.5  0.5       0.00       0.00     228.21      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00     264.59      -0.00       0.00    -114.28       0.00

   16   6.1  1.5  0.5       0.00       0.00      58.51       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -114.05       0.00       0.00     206.58       0.00

   17   7.1  1.5  0.5       0.00       0.00      -0.00      -0.00       0.00     224.48      -0.00      -0.00     235.03      -0.00
                            0.00      -0.00      53.62      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   20  10.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -414.73
                            0.00    -954.32       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   21   1.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -38.90       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

   22   2.1  1.5 -0.5     349.26      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -228.47       0.00       0.00     495.57       0.00     278.29      -0.00       0.00      -0.00

   23   3.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       1.03      -0.00      -0.00     471.17       0.00

   24   4.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -469.57      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   25   5.1  1.5 -0.5      -0.00    -299.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          235.75       0.00       0.00     351.18      -0.00       0.00      -0.00     -45.77      -0.00    -705.16

   26   6.1  1.5 -0.5      -0.00     163.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          303.29      -0.00       0.00     392.08      -0.00      -0.00      -0.00    -525.23      -0.00     304.87

   27   7.1  1.5 -0.5    -159.94      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -230.88      -0.00      -0.00    -189.90       0.00    -442.62       0.00       0.00      -0.00

   28   8.1  1.5 -0.5    -414.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     203.13       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   29   9.1  1.5 -0.5      -0.00    -274.03       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          414.75       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     829.45

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00

   31   1.1  1.5 -1.5       0.00       0.00       0.00    -385.96      -0.00       0.00      -0.00    -356.02      -0.00     362.61
                            0.00       0.00      -0.00       0.00    -315.49       0.00     350.89       0.00      -0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     315.09      -0.00       0.00       8.72      -0.00
                            0.00       0.00    -397.34       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00      -0.00      47.63      -0.00    -405.26      -0.00      -0.00       0.00
                            0.00       0.00       0.00      51.83       0.00       0.00      -0.00     404.74      -0.00     525.98

   34   4.1  1.5 -1.5       0.00       0.00      -0.00    -374.26      -0.00       0.00       0.00     -21.68       0.00    -557.82
                            0.00       0.00      -0.00      -0.00     431.82      -0.00     -84.45      -0.00       0.00      -0.00

   35   5.1  1.5 -1.5       0.00       0.00     395.26      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00      -0.00    -458.29       0.00      -0.00     197.94      -0.00

   36   6.1  1.5 -1.5       0.00       0.00     101.34       0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00     197.54      -0.00      -0.00    -357.81      -0.00

   37   7.1  1.5 -1.5       0.00       0.00      -0.00      -0.00       0.00     388.82      -0.00      -0.00     407.09      -0.00
                            0.00       0.00     -92.87       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   40  10.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00    -718.32
                            0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   41   1.1  0.5  0.5       0.00       0.00       0.00       0.00     -78.32      -0.00     666.37       0.00       0.00       0.00
                         -426.77      -0.00      -0.00      85.22      -0.00      -0.00      -0.00     665.52       0.00    -426.74

   42   2.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00    -583.11      -0.00      -0.00    -664.43      -0.00
                            0.00       0.00     -85.22      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   43   3.1  0.5  0.5       0.00       0.00      78.32       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00     574.16       0.00      -0.00    -666.05      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00     583.11      -0.00      -0.00      -0.00     580.65       0.00     329.63
                            0.00     570.39       0.00      -0.00    -574.16      -0.00     586.27      -0.00      -0.00       0.00

   45   5.1  0.5  0.5       0.00       0.00    -666.37       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00    -586.27       0.00       0.00      92.03       0.00

   46   6.1  0.5  0.5       0.00       0.00      -0.00       0.00       0.00    -580.65      -0.00      -0.00     -82.59      -0.00
                           -0.00      -0.00    -665.52       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   47   7.1  0.5  0.5       0.00       0.00      -0.00     664.43      -0.00      -0.00       0.00      82.59       0.00    -427.46
                            0.00     -37.72      -0.00      -0.00     666.05       0.00     -92.03      -0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00       0.00      -0.00       0.00       0.00    -329.63      -0.00       0.00     427.46       0.00
                            0.00      -0.00     426.74       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   49   9.1  0.5  0.5       0.00       0.00    -426.74       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     331.49      -0.00       0.00     426.02       0.00

   50  10.1  0.5  0.5       0.00       0.00      -0.00      -0.00     437.84       0.00     297.32       0.00      -0.00      -0.00
                          100.72      -0.00       0.00    -491.29      -0.00       0.00       0.00     245.40      -0.00     -42.89

   51  11.1  0.5  0.5    7970.22       0.00       0.00     273.69      -0.00      -0.00       0.00    -465.30      -0.00     -50.54
                            0.00       8.63       0.00      -0.00     278.50      -0.00     462.43       0.00       0.00       0.00

   52  12.1  0.5  0.5       0.00    7970.83      -0.00      -0.00    -366.23       0.00     309.37       0.00      -0.00       0.00
                           -8.63       0.00      -0.00    -289.98       0.00      -0.00       0.00    -352.50      -0.00      91.54

   53   1.1  0.5 -0.5       0.00      -0.00    5228.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00       0.00      -1.46       0.00       0.00    -670.96       0.00

   54   2.1  0.5 -0.5     273.69      -0.00       0.00    5228.34       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     289.98       0.00      -0.00     341.04       0.00     667.46      -0.00      -0.00       0.00

   55   3.1  0.5 -0.5      -0.00    -366.23       0.00       0.00    5228.35       0.00       0.00       0.00       0.00       0.00
                         -278.50      -0.00      -0.00    -341.04       0.00       0.00      -0.00     674.41      -0.00     378.11

   56   4.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00    5228.50       0.00       0.00       0.00       0.00
                            0.00       0.00       1.46      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00

   57   5.1  0.5 -0.5       0.00     309.37       0.00       0.00       0.00       0.00    5228.67       0.00       0.00       0.00
                         -462.43      -0.00      -0.00    -667.46       0.00      -0.00       0.00     329.88       0.00    -385.24

   58   6.1  0.5 -0.5    -465.30       0.00       0.00       0.00       0.00       0.00       0.00    5228.68       0.00       0.00
                           -0.00     352.50      -0.00       0.00    -674.41       0.00    -329.88      -0.00      -0.00       0.00

   59   7.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    5228.76       0.00
                           -0.00       0.00     670.96       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   60   8.1  0.5 -0.5     -50.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7965.53
                           -0.00     -91.54      -0.00      -0.00    -378.11      -0.00     385.24      -0.00       0.00       0.00

   61   9.1  0.5 -0.5      -0.00      82.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           50.55      -0.00       0.00     382.08      -0.00      -0.00       0.00     381.30       0.00      50.57

   62  10.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      49.86      -0.00       0.00     425.08      -0.00

   63  11.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -426.77       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00

   64  12.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00     570.39       0.00      -0.00     -37.72      -0.00


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

   11   1.1  1.5  0.5      -0.00      -0.00      -0.00       0.00
                         -259.49       0.00      -0.00      -0.00

   12   2.1  1.5  0.5       0.00      -0.00     349.26      -0.00
                           -0.00    -209.40      -0.00     228.47

   13   3.1  1.5  0.5     303.67      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.00

   14   4.1  1.5  0.5      -0.00       0.00      -0.00      -0.00
                         -283.22       0.00      -0.00      -0.00

   15   5.1  1.5  0.5      -0.00     -85.33      -0.00    -299.16
                            0.00       0.00    -235.75      -0.00

   16   6.1  1.5  0.5      -0.00    -366.82      -0.00     163.97
                            0.00       0.00    -303.29       0.00

   17   7.1  1.5  0.5       0.00       0.00    -159.94      -0.00
                           -0.00     329.96       0.00     230.88

   18   8.1  1.5  0.5      -0.00      -0.00    -414.75       0.00
                           -0.00    -433.67       0.00    -203.13

   19   9.1  1.5  0.5       0.00     392.74      -0.00    -274.03
                            0.00      -0.00    -414.75      -0.00

   20  10.1  1.5  0.5       0.00      -0.00       0.00       0.00
                          414.72       0.00       0.00       0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00    -119.36      -0.00    -804.85

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -484.33      -0.00       0.00       0.00

   23   3.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00     607.38       0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00    -597.31      -0.00     118.76

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -596.34      -0.00       0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -829.45       0.00      -0.00      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     -81.86       0.00    -954.32

   31   1.1  1.5 -1.5      -0.00      -0.00      -0.00       0.00
                          449.45      -0.00       0.00       0.00

   32   2.1  1.5 -1.5       0.00      -0.00     604.93      -0.00
                            0.00     362.69       0.00    -395.71

   33   3.1  1.5 -1.5     525.98      -0.00      -0.00      -0.00
                            0.00      -0.00       0.00       0.00

   34   4.1  1.5 -1.5      -0.00       0.00      -0.00      -0.00
                          490.54      -0.00       0.00       0.00

   35   5.1  1.5 -1.5      -0.00    -147.79      -0.00    -518.16
                           -0.00      -0.00     408.33       0.00

   36   6.1  1.5 -1.5      -0.00    -635.35      -0.00     284.01
                           -0.00      -0.00     525.31      -0.00

   37   7.1  1.5 -1.5       0.00       0.00    -277.03      -0.00
                            0.00    -571.50      -0.00    -399.90

   38   8.1  1.5 -1.5      -0.00      -0.00    -718.36       0.00
                            0.00     751.14      -0.00     351.84

   39   9.1  1.5 -1.5       0.00     680.25      -0.00    -474.63
                           -0.00       0.00     718.36       0.00

   40  10.1  1.5 -1.5       0.00      -0.00       0.00       0.00
                         -718.32      -0.00      -0.00      -0.00

   41   1.1  0.5  0.5     426.74       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   42   2.1  0.5  0.5      -0.00       0.00    -273.69       0.00
                            0.00     491.29       0.00     289.98

   43   3.1  0.5  0.5      -0.00    -437.84       0.00     366.23
                            0.00       0.00    -278.50      -0.00

   44   4.1  0.5  0.5      -0.00      -0.00       0.00      -0.00
                         -331.49      -0.00       0.00       0.00

   45   5.1  0.5  0.5       0.00    -297.32      -0.00    -309.37
                            0.00      -0.00    -462.43      -0.00

   46   6.1  0.5  0.5      -0.00      -0.00     465.30      -0.00
                           -0.00    -245.40      -0.00     352.50

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00
                         -426.02       0.00      -0.00       0.00

   48   8.1  0.5  0.5       0.00       0.00      50.54      -0.00
                           -0.00      42.89      -0.00     -91.54

   49   9.1  0.5  0.5       0.00     -57.87       0.00     -82.90
                           -0.00       0.00      50.55      -0.00

   50  10.1  0.5  0.5      57.87      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00

   51  11.1  0.5  0.5      -0.00      -0.00      -0.00      -0.00
                          -50.55       0.00       0.00      -0.00

   52  12.1  0.5  0.5      82.90      -0.00       0.00      -0.00
                            0.00      -0.00       0.00      -0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00     426.77       0.00

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                         -382.08      -0.00      -0.00      -0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     -49.86      -0.00    -570.39

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00
                         -381.30      -0.00       0.00       0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00    -425.08      -0.00      37.72

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00
                          -50.57       0.00      -0.00       0.00

   61   9.1  0.5 -0.5    7965.50       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00

   62  10.1  0.5 -0.5       0.00    7965.75       0.00       0.00
                            0.00      -0.00    -100.72       0.00

   63  11.1  0.5 -0.5       0.00       0.00    7970.22       0.00
                            0.00     100.72      -0.00      -8.63

   64  12.1  0.5 -0.5       0.00       0.00       0.00    7970.83
                            0.00      -0.00       8.63      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02372270    -0.00702627    -1542.09      0.00000000        0.00      0.0000
     2  -110.02372270    -0.00702627    -1542.09      0.00000000        0.00      0.0000
     3  -110.02372132    -0.00702489    -1541.79      0.00000138        0.30      0.0000
     4  -110.02372132    -0.00702489    -1541.79      0.00000138        0.30      0.0000
     5  -110.02372021    -0.00702378    -1541.54      0.00000249        0.55      0.0001
     6  -110.02372021    -0.00702378    -1541.54      0.00000249        0.55      0.0001
     7  -110.02371999    -0.00702356    -1541.49      0.00000271        0.59      0.0001
     8  -110.02371999    -0.00702356    -1541.49      0.00000271        0.59      0.0001
     9  -110.02371938    -0.00702295    -1541.36      0.00000332        0.73      0.0001
    10  -110.02371938    -0.00702295    -1541.36      0.00000332        0.73      0.0001
    11  -110.01747078    -0.00077435     -169.95      0.00625192     1372.14      0.1701
    12  -110.01747078    -0.00077435     -169.95      0.00625192     1372.14      0.1701
    13  -110.01746841    -0.00077198     -169.43      0.00625429     1372.66      0.1702
    14  -110.01746841    -0.00077198     -169.43      0.00625429     1372.66      0.1702
    15  -110.01746782    -0.00077139     -169.30      0.00625488     1372.79      0.1702
    16  -110.01746782    -0.00077139     -169.30      0.00625488     1372.79      0.1702
    17  -110.01746732    -0.00077089     -169.19      0.00625538     1372.90      0.1702
    18  -110.01746732    -0.00077089     -169.19      0.00625538     1372.90      0.1702
    19  -110.01221289     0.00448354      984.02      0.01150981     2526.11      0.3132
    20  -110.01221289     0.00448354      984.02      0.01150981     2526.11      0.3132
    21  -110.01221248     0.00448395      984.11      0.01151022     2526.20      0.3132
    22  -110.01221248     0.00448395      984.11      0.01151022     2526.20      0.3132
    23  -110.01221129     0.00448514      984.38      0.01151141     2526.46      0.3132
    24  -110.01221129     0.00448514      984.38      0.01151141     2526.46      0.3132
    25  -110.00897897     0.00771746     1693.79      0.01474373     3235.88      0.4012
    26  -110.00897897     0.00771746     1693.79      0.01474373     3235.88      0.4012
    27  -110.00897761     0.00771882     1694.09      0.01474509     3236.17      0.4012
    28  -110.00897761     0.00771882     1694.09      0.01474509     3236.17      0.4012
    29  -109.99668233     0.02001410     4392.59      0.02704037     5934.68      0.7358
    30  -109.99668233     0.02001410     4392.59      0.02704037     5934.68      0.7358
    31  -109.99668208     0.02001435     4392.64      0.02704063     5934.73      0.7358
    32  -109.99668208     0.02001435     4392.64      0.02704063     5934.73      0.7358
    33  -109.99668154     0.02001489     4392.76      0.02704116     5934.85      0.7358
    34  -109.99668154     0.02001489     4392.76      0.02704116     5934.85      0.7358
    35  -109.99668138     0.02001505     4392.80      0.02704132     5934.88      0.7358
    36  -109.99668138     0.02001505     4392.80      0.02704132     5934.88      0.7358
    37  -109.99084209     0.02585434     5674.37      0.03288061     7216.46      0.8947
    38  -109.99084209     0.02585434     5674.37      0.03288061     7216.46      0.8947
    39  -109.99083798     0.02585845     5675.27      0.03288473     7217.36      0.8948
    40  -109.99083798     0.02585845     5675.27      0.03288473     7217.36      0.8948
    41  -109.99083712     0.02585931     5675.46      0.03288558     7217.55      0.8949
    42  -109.99083712     0.02585931     5675.46      0.03288558     7217.55      0.8949
    43  -109.98253749     0.03415894     7497.02      0.04118521     9039.11      1.1207
    44  -109.98253749     0.03415894     7497.02      0.04118521     9039.11      1.1207
    45  -109.98253540     0.03416103     7497.48      0.04118730     9039.57      1.1208
    46  -109.98253540     0.03416103     7497.48      0.04118730     9039.57      1.1208
    47  -109.98253405     0.03416238     7497.78      0.04118865     9039.86      1.1208
    48  -109.98253405     0.03416238     7497.78      0.04118865     9039.86      1.1208
    49  -109.97945075     0.03724568     8174.48      0.04427195     9716.57      1.2047
    50  -109.97945075     0.03724568     8174.48      0.04427195     9716.57      1.2047
    51  -109.97945035     0.03724608     8174.57      0.04427236     9716.66      1.2047
    52  -109.97945035     0.03724608     8174.57      0.04427236     9716.66      1.2047
    53  -109.97321599     0.04348044     9542.85      0.05050671    11084.94      1.3744
    54  -109.97321599     0.04348044     9542.85      0.05050671    11084.94      1.3744
    55  -109.97321341     0.04348302     9543.42      0.05050929    11085.51      1.3744
    56  -109.97321341     0.04348302     9543.42      0.05050929    11085.51      1.3744
    57  -109.97223171     0.04446472     9758.88      0.05149099    11300.97      1.4011
    58  -109.97223171     0.04446472     9758.88      0.05149099    11300.97      1.4011
    59  -109.97186201     0.04483442     9840.02      0.05186070    11382.11      1.4112
    60  -109.97186201     0.04483442     9840.02      0.05186070    11382.11      1.4112
    61  -109.97185588     0.04484055     9841.36      0.05186682    11383.45      1.4114
    62  -109.97185588     0.04484055     9841.36      0.05186682    11383.45      1.4114
    63  -109.97185390     0.04484253     9841.80      0.05186880    11383.89      1.4114
    64  -109.97185390     0.04484253     9841.80      0.05186880    11383.89      1.4114


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.004285881  -0.071087737   0.001134027   0.458233183  -0.145185523   0.000635755  -0.052896265   0.002072353
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.038335752   0.002310807  -0.144202001   0.000356362  -0.000977185  -0.222948598   0.004051961   0.103446812
                         0.190726881   0.011497311  -0.148571108   0.000368283  -0.000678565  -0.154867508  -0.014102084  -0.360148944

    3    3.1  1.5  1.5   0.000000109   0.000000260   0.000000268  -0.000000162   0.000000611   0.000003314  -0.000003156   0.000003543
                         0.013285518  -0.220388362   0.000040379   0.016169677   0.454686344  -0.001988439  -0.316482027   0.012389593

    4    4.1  1.5  1.5   0.004569383  -0.075800577  -0.000225461  -0.091086972  -0.454262935   0.001986315   0.367774022  -0.014397958
                        -0.000000115   0.000000190   0.000000067  -0.000000174   0.000000776   0.000003583  -0.000003573   0.000003866

    5    5.1  1.5  1.5  -0.227416693  -0.013709430  -0.058789332   0.000146055  -0.000325947  -0.074407485  -0.007485126  -0.191162325
                         0.045710297   0.002755345   0.057060162  -0.000141110   0.000469663   0.107117204  -0.002150782  -0.054909574

    6    6.1  1.5  1.5   0.028334593   0.001708064   0.025562413  -0.000064107   0.000655687   0.149536889   0.015118857   0.386115572
                        -0.005695336  -0.000343282  -0.024810669   0.000060987  -0.000943524  -0.215274977   0.004344242   0.110905050

    7    7.1  1.5  1.5   0.033091598   0.001994744  -0.015309208   0.000037803  -0.000317908  -0.072536897   0.000467082   0.011926955
                         0.164635152   0.009924524  -0.015773378   0.000038897  -0.000220149  -0.050387235  -0.001626068  -0.041519590

    8    8.1  1.5  1.5   0.000000273   0.000000016   0.000000058  -0.000000000  -0.000000000  -0.000000041   0.000000001   0.000000016
                         0.000001360   0.000000082   0.000000060  -0.000000000  -0.000000000  -0.000000028  -0.000000002  -0.000000055

    9    9.1  1.5  1.5   0.000000668   0.000000040  -0.000000216   0.000000000  -0.000000000  -0.000000022   0.000000022   0.000000558
                        -0.000000134  -0.000000008   0.000000210  -0.000000001   0.000000000   0.000000032   0.000000006   0.000000160

   10   10.1  1.5  1.5  -0.000000015   0.000000256  -0.000000004  -0.000001684   0.000000595  -0.000000003   0.000000100  -0.000000004
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   11    1.1  1.5  0.5   0.133588529   0.008052531  -0.046741940   0.000115469  -0.000177350  -0.040517090  -0.000752876  -0.019216669
                         0.664624185   0.040065187  -0.048158110   0.000118411  -0.000122467  -0.028145065   0.002619136   0.066901589

   12    2.1  1.5  0.5  -0.020314285   0.336978794  -0.000838348  -0.338572212  -0.252482538   0.001104446   0.096127124  -0.003763058
                         0.000000200   0.000000168   0.000000488  -0.000000008   0.000000202   0.000001981  -0.000000790   0.000001578

   13    3.1  1.5  0.5  -0.027094405  -0.001633867  -0.316407364   0.000783666  -0.000454733  -0.103861945  -0.010514721  -0.268543254
                         0.005445852   0.000328363   0.307102492  -0.000759659   0.000655641   0.149520192  -0.003021203  -0.077135815

   14    4.1  1.5  0.5   0.000593114   0.000035877   0.130600273  -0.000323541  -0.001161430  -0.265015903   0.004302382   0.109835743
                         0.002950417   0.000178023   0.134556769  -0.000332320  -0.000806620  -0.184089355  -0.014973482  -0.382388293

   15    5.1  1.5  0.5  -0.000000283  -0.000000152  -0.000000181   0.000000062   0.000000032  -0.000000289   0.000000606  -0.000000544
                        -0.020410237   0.338586981   0.001259691   0.509181818  -0.179462604   0.000785509   0.011210418  -0.000437527

   16    6.1  1.5  0.5   0.000000144  -0.000000146   0.000000254   0.000000220  -0.000000658  -0.000002359   0.000003589  -0.000003172
                         0.005176781  -0.085878412  -0.000467733  -0.189046801  -0.163574886   0.000713947   0.405498503  -0.015876516

   17    7.1  1.5  0.5  -0.020917992   0.346993883  -0.000727631  -0.293936429   0.369040879  -0.001614923  -0.045215213   0.001768264
                         0.000000219   0.000000011  -0.000000033   0.000000007  -0.000000363  -0.000001663   0.000000953  -0.000001390

   18    8.1  1.5  0.5  -0.000000008   0.000000137   0.000000003   0.000001047  -0.000000227   0.000000001   0.000000085  -0.000000003
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   19    9.1  1.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000005  -0.000000085   0.000000003   0.000001021  -0.000000129   0.000000001   0.000000403  -0.000000016

   20   10.1  1.5  0.5   0.000000350   0.000000021  -0.000000124   0.000000000  -0.000000000  -0.000000040  -0.000000005  -0.000000128
                         0.000001740   0.000000105  -0.000000128   0.000000000  -0.000000000  -0.000000028   0.000000018   0.000000447

   21    1.1  1.5 -0.5  -0.040866398   0.677916811   0.000165391   0.067111940   0.049333349  -0.000215524  -0.069606774   0.002725196
                         0.000000495   0.000000167   0.000000387   0.000000003  -0.000000338  -0.000000597   0.000000652  -0.000000565

   22    2.1  1.5 -0.5  -0.066404250  -0.004002879  -0.235807840   0.000583540  -0.000908207  -0.207362787  -0.001040368  -0.026538160
                        -0.330371280  -0.019916002  -0.242952269   0.000601921  -0.000628462  -0.144042030   0.003616386   0.092391288

   23    3.1  1.5 -0.5   0.000000041  -0.000000077   0.000000691   0.000000255  -0.000000209   0.000000574   0.000002645  -0.000001041
                         0.001666537  -0.027636282   0.001091427   0.440937139   0.182053815  -0.000797902   0.279401885  -0.010940157

   24    4.1  1.5 -0.5  -0.000181602   0.003009442  -0.000463805  -0.187515214   0.322679902  -0.001414056   0.397850093  -0.015579334
                        -0.000000093   0.000000084  -0.000000713  -0.000000276   0.000000324  -0.000000125  -0.000003105   0.000001522

   25    5.1  1.5 -0.5  -0.331947937  -0.020010089   0.365378171  -0.000903802  -0.000447897  -0.102383799   0.000420375   0.010774600
                         0.066721139   0.004021706  -0.354633495   0.000877475   0.000645300   0.147391940   0.000121309   0.003095395

   26    6.1  1.5 -0.5   0.084194536   0.005075303  -0.135655842   0.000335458  -0.000405371  -0.093320386   0.015258660   0.389739342
                        -0.016922813  -0.001019981   0.131666949  -0.000325947   0.000587708   0.134343027   0.004386011   0.111947672

   27    7.1  1.5 -0.5  -0.068377642  -0.004121825  -0.204720023   0.000506802   0.001327278   0.303091596   0.000489493   0.012483285
                        -0.340190024  -0.020507876  -0.210922584   0.000522109   0.000919951   0.210538962  -0.001699164  -0.043457831

   28    8.1  1.5 -0.5  -0.000000027  -0.000000002   0.000000729  -0.000000002  -0.000000001  -0.000000187  -0.000000001  -0.000000024
                        -0.000000134  -0.000000008   0.000000751  -0.000000002  -0.000000001  -0.000000130   0.000000003   0.000000082

   29    9.1  1.5 -0.5   0.000000083   0.000000005   0.000000732  -0.000000002  -0.000000000  -0.000000074   0.000000015   0.000000387
                        -0.000000017  -0.000000001  -0.000000711   0.000000002   0.000000000   0.000000106   0.000000004   0.000000111

   30   10.1  1.5 -0.5  -0.000000107   0.000001775   0.000000000   0.000000179   0.000000048  -0.000000000  -0.000000465   0.000000018
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   31    1.1  1.5 -1.5  -0.014008348  -0.000844563  -0.319148975   0.000789824   0.000522143   0.119240292  -0.000572106  -0.014602844
                        -0.069693848  -0.004201843  -0.328818462   0.000813754   0.000362700   0.082828672   0.001991819   0.050840651

   32    2.1  1.5 -1.5   0.011727233  -0.194541443  -0.000512470  -0.207044902  -0.271459062   0.001189681  -0.374711228   0.014672667
                        -0.000000130   0.000000034   0.000000783   0.000000080  -0.000000617   0.000000184   0.000001976  -0.000001395

   33    3.1  1.5 -1.5  -0.216066935  -0.013025037  -0.011602906   0.000029162  -0.001131687  -0.259400099   0.011907140   0.304182275
                         0.043429361   0.002617899   0.011261928  -0.000027931   0.001634987   0.373431735   0.003423747   0.087372861

   34    4.1  1.5 -1.5  -0.014936861  -0.000900317   0.063440126  -0.000156980   0.001633396   0.373083896   0.003978498   0.101533222
                        -0.074314317  -0.004479809   0.065361968  -0.000161832   0.001130255   0.259158678  -0.013837368  -0.353480885

   35    5.1  1.5 -1.5  -0.000000223   0.000000080  -0.000000467  -0.000000262   0.000000038  -0.000000245  -0.000002362   0.000000813
                        -0.013983576   0.231965048  -0.000203086  -0.081927087  -0.130424573   0.000571685  -0.198892171   0.007788002

   36    6.1  1.5 -1.5   0.000000035   0.000000127   0.000000886   0.000000025  -0.000000814  -0.000000231   0.000001883  -0.000001622
                         0.001742218  -0.028901315   0.000088478   0.035623114   0.262115617  -0.001148983   0.401727725  -0.015730615

   37    7.1  1.5 -1.5   0.010123003  -0.167927923  -0.000054241  -0.021981158  -0.088320297   0.000386692  -0.043198711   0.001691822
                        -0.000000068  -0.000000202  -0.000000036   0.000000234   0.000000370   0.000000560   0.000001325  -0.000000029

   38    8.1  1.5 -1.5   0.000000084  -0.000001387   0.000000000   0.000000084  -0.000000049   0.000000000  -0.000000057   0.000000002
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   39    9.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000041  -0.000000681  -0.000000001  -0.000000302  -0.000000039   0.000000000   0.000000581  -0.000000023

   40   10.1  1.5 -1.5   0.000000050   0.000000003   0.000001173  -0.000000003  -0.000000002  -0.000000489   0.000000001   0.000000028
                         0.000000251   0.000000015   0.000001208  -0.000000003  -0.000000001  -0.000000339  -0.000000004  -0.000000096

   41    1.1  0.5  0.5  -0.000004194  -0.000000253  -0.000009158   0.000000023   0.000000006   0.000001343   0.000000233   0.000005959
                         0.000000843   0.000000051   0.000008888  -0.000000022  -0.000000009  -0.000001933   0.000000067   0.000001712

   42    2.1  0.5  0.5  -0.000000605   0.000010036   0.000000062   0.000025183  -0.000009121   0.000000040  -0.000000701   0.000000027
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   43    3.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000582  -0.000009655   0.000000024   0.000009676  -0.000008547   0.000000037  -0.000004820   0.000000189

   44    4.1  0.5  0.5  -0.000002857  -0.000000172   0.000004570  -0.000000011   0.000000032   0.000007261  -0.000000007  -0.000000168
                        -0.000014212  -0.000000857   0.000004708  -0.000000012   0.000000022   0.000005044   0.000000023   0.000000586

   45    5.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000001277   0.000021186  -0.000000055  -0.000022175   0.000015860  -0.000000069   0.000000392  -0.000000015

   46    6.1  0.5  0.5  -0.000000738   0.000012250   0.000000051   0.000020813   0.000000745  -0.000000003  -0.000012049   0.000000472
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   47    7.1  0.5  0.5  -0.000000260  -0.000000016   0.000002210  -0.000000005  -0.000000027  -0.000006214   0.000000039   0.000000996
                        -0.000001292  -0.000000078   0.000002277  -0.000000006  -0.000000019  -0.000004316  -0.000000136  -0.000003466

   48    8.1  0.5  0.5   0.000000313  -0.000005189  -0.000000029  -0.000011694   0.000003070  -0.000000013   0.000000901  -0.000000035
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   49    9.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000512   0.000008486  -0.000000026  -0.000010511   0.000005345  -0.000000023   0.000000156  -0.000000006

   50   10.1  0.5  0.5   0.000006643   0.000000400   0.000000053  -0.000000000  -0.000000007  -0.000001613  -0.000000187  -0.000004775
                        -0.000001335  -0.000000081  -0.000000051   0.000000000   0.000000010   0.000002322  -0.000000054  -0.000001372

   51   11.1  0.5  0.5   0.000000072   0.000000004   0.000001603  -0.000000004   0.000000009   0.000002062  -0.000000010  -0.000000264
                         0.000000360   0.000000022   0.000001652  -0.000000004   0.000000006   0.000001432   0.000000036   0.000000919

   52   12.1  0.5  0.5   0.000024999   0.000001507  -0.000001730   0.000000004  -0.000000004  -0.000000843   0.000000232   0.000005916
                        -0.000005025  -0.000000303   0.000001679  -0.000000004   0.000000005   0.000001213   0.000000067   0.000001699

   53    1.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000258   0.000004278  -0.000000032  -0.000012762   0.000002354  -0.000000010   0.000006200  -0.000000243

   54    2.1  0.5 -0.5   0.000001978   0.000000119  -0.000017540   0.000000043   0.000000033   0.000007491  -0.000000008  -0.000000193
                         0.000009839   0.000000593  -0.000018071   0.000000045   0.000000023   0.000005204   0.000000026   0.000000673

   55    3.1  0.5 -0.5  -0.000009466  -0.000000571  -0.000006943   0.000000017   0.000000021   0.000004876   0.000000181   0.000004632
                         0.000001903   0.000000115   0.000006739  -0.000000017  -0.000000031  -0.000007020   0.000000052   0.000001331

   56    4.1  0.5 -0.5  -0.000000874   0.000014497   0.000000016   0.000006562   0.000008841  -0.000000039   0.000000610  -0.000000024
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   57    5.1  0.5 -0.5   0.000020771   0.000001252   0.000015912  -0.000000039  -0.000000040  -0.000009048  -0.000000015  -0.000000377
                        -0.000004175  -0.000000252  -0.000015444   0.000000038   0.000000057   0.000013025  -0.000000004  -0.000000108

   58    6.1  0.5 -0.5   0.000002414   0.000000146  -0.000014496   0.000000036  -0.000000003  -0.000000612  -0.000000130  -0.000003326
                         0.000012010   0.000000724  -0.000014935   0.000000037  -0.000000002  -0.000000425   0.000000453   0.000011581

   59    7.1  0.5 -0.5  -0.000000079   0.000001318   0.000000008   0.000003173  -0.000007566   0.000000033  -0.000003606   0.000000141
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   60    8.1  0.5 -0.5  -0.000001023  -0.000000062   0.000008144  -0.000000020  -0.000000011  -0.000002522   0.000000010   0.000000249
                        -0.000005088  -0.000000307   0.000008391  -0.000000021  -0.000000008  -0.000001752  -0.000000034  -0.000000866

   61    9.1  0.5 -0.5   0.000008320   0.000000502   0.000007543  -0.000000019  -0.000000013  -0.000003049  -0.000000006  -0.000000150
                        -0.000001672  -0.000000101  -0.000007321   0.000000018   0.000000019   0.000004390  -0.000000002  -0.000000043

   62   10.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000408  -0.000006775   0.000000000   0.000000073  -0.000002827   0.000000012  -0.000004968   0.000000195

   63   11.1  0.5 -0.5   0.000000022  -0.000000367   0.000000006   0.000002302   0.000002510  -0.000000011   0.000000956  -0.000000037
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   64   12.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000001537  -0.000025499  -0.000000006  -0.000002411  -0.000001477   0.000000006   0.000006155  -0.000000241


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.015906316   0.000051691   0.675688069   0.008984475   0.003827217   0.003287561  -0.014376561  -0.000608874
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.001035841  -0.318311428  -0.000720206   0.054164266   0.034218676  -0.039837098  -0.012778999   0.301739012
                         0.000394273  -0.122154007   0.002087232  -0.156966042  -0.091001409   0.105936753   0.001973151  -0.046532031

    3    3.1  1.5  1.5   0.000000265  -0.000000502   0.000000169   0.000000032   0.000001236   0.000002327   0.000003397   0.000003605
                         0.033176121   0.000107876  -0.006759488  -0.000089928  -0.077334129  -0.066431106  -0.438321248  -0.018563661

    4    4.1  1.5  1.5  -0.020792179  -0.000067622  -0.023405520  -0.000311255  -0.355242149  -0.305155999   0.075031420   0.003177706
                         0.000000435  -0.000000339   0.000000203  -0.000000026  -0.000004531  -0.000009720   0.000000675   0.000000856

    5    5.1  1.5  1.5  -0.000501493   0.155337825   0.001445240  -0.108690192   0.275820466  -0.321089169   0.000169434  -0.003987661
                         0.001317137  -0.404777580   0.000498731  -0.037505752   0.103714608  -0.120743521   0.001095469  -0.025860949

    6    6.1  1.5  1.5  -0.000561659   0.174028183   0.002298231  -0.172841442  -0.128437230   0.149516871  -0.000118017   0.002780449
                         0.001475723  -0.453485266   0.000793038  -0.059642240  -0.048295293   0.056224893  -0.000763747   0.018031320

    7    7.1  1.5  1.5  -0.001729179   0.531395737   0.000581485  -0.043730956   0.037124736  -0.043220331  -0.016163023   0.381642902
                        -0.000658275   0.203928221  -0.001685009   0.126731267  -0.098729942   0.114933639   0.002495624  -0.058854196

    8    8.1  1.5  1.5  -0.000000002   0.000000556   0.000000000  -0.000000030   0.000000126  -0.000000147  -0.000000027   0.000000631
                        -0.000000001   0.000000213  -0.000000001   0.000000087  -0.000000336   0.000000391   0.000000004  -0.000000097

    9    9.1  1.5  1.5   0.000000000  -0.000000011  -0.000000007   0.000000534  -0.000001148   0.000001336   0.000000003  -0.000000074
                        -0.000000000   0.000000028  -0.000000002   0.000000184  -0.000000432   0.000000503   0.000000020  -0.000000481

   10   10.1  1.5  1.5  -0.000000121  -0.000000000  -0.000004943  -0.000000066  -0.000000509  -0.000000437   0.000000969   0.000000041
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   11    1.1  1.5  0.5  -0.000155550   0.047796046   0.000215210  -0.016184194   0.058968176  -0.068650199  -0.006350530   0.149951552
                        -0.000059111   0.018341873  -0.000623594   0.046901308  -0.156820880   0.182558827   0.000980432  -0.023124620

   12    2.1  1.5  0.5   0.036974834   0.000120187  -0.041896973  -0.000557132   0.373989324   0.321259876  -0.336834213  -0.014265731
                        -0.000000176   0.000000227  -0.000000129   0.000000005   0.000004934   0.000010300  -0.000002302  -0.000003090

   13    3.1  1.5  0.5  -0.000260163   0.080598299   0.005577822  -0.419489522  -0.064397073   0.074966300  -0.001014937   0.023934372
                         0.000683410  -0.210020642   0.001924741  -0.144752902  -0.024214782   0.028190563  -0.006573172   0.155204739

   14    4.1  1.5  0.5  -0.000744585   0.228844138   0.001993852  -0.149949685   0.005950854  -0.006927914   0.005971313  -0.140993842
                        -0.000283639   0.087822082  -0.005778153   0.434549216  -0.015826165   0.018423635  -0.000922137   0.021742988

   15    5.1  1.5  0.5   0.000000023   0.000000626   0.000000165  -0.000000032  -0.000003226  -0.000007026  -0.000000742  -0.000000948
                        -0.045936763  -0.000149337  -0.018231883  -0.000242358   0.256714894   0.220520367   0.132573578   0.005614839

   16    6.1  1.5  0.5  -0.000000625   0.000000937   0.000000335   0.000000007   0.000000480   0.000000331   0.000002043   0.000001612
                        -0.105673239  -0.000343523  -0.005968411  -0.000079328  -0.001197101  -0.001028669  -0.196696587  -0.008330173

   17    7.1  1.5  0.5  -0.078294025  -0.000254475   0.016340664   0.000217365   0.000430316   0.000370041   0.530862018   0.022483106
                        -0.000000105  -0.000000526   0.000000081   0.000000035   0.000000052   0.000000112   0.000003791   0.000004457

   18    8.1  1.5  0.5   0.000000171   0.000000001   0.000004216   0.000000056  -0.000000297  -0.000000255  -0.000002201  -0.000000093
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   19    9.1  1.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000352   0.000000001   0.000003370   0.000000045   0.000000649   0.000000558  -0.000000172  -0.000000007

   20   10.1  1.5  0.5  -0.000000001   0.000000441   0.000000005  -0.000000355   0.000000633  -0.000000737  -0.000000082   0.000001932
                        -0.000000001   0.000000169  -0.000000014   0.000001028  -0.000001683   0.000001959   0.000000013  -0.000000298

   21    1.1  1.5 -0.5  -0.051194593  -0.000166402   0.049615127   0.000659685  -0.195039932  -0.167541141  -0.151724144  -0.006425767
                        -0.000000309  -0.000000544   0.000000008  -0.000000025  -0.000002618  -0.000005446  -0.000001150  -0.000001128

   22    2.1  1.5 -0.5  -0.000112290   0.034520122   0.000181738  -0.013666457   0.113071518  -0.131636927   0.014098610  -0.332899019
                        -0.000042849   0.013247626  -0.000526657   0.039605357  -0.300703741   0.350056758  -0.002177219   0.051337415

   23    3.1  1.5 -0.5  -0.000000754   0.000001963   0.000000057  -0.000000005   0.000001154   0.000002204  -0.000000832  -0.000001298
                        -0.224955009  -0.000731253  -0.443762168  -0.005900570  -0.080091535  -0.068799263   0.157039375   0.006651066

   24    4.1  1.5 -0.5  -0.245117028  -0.000796777   0.459693299   0.006112487  -0.019683148  -0.016907991   0.142660509   0.006042095
                         0.000000831  -0.000001963  -0.000000080   0.000000011  -0.000000440  -0.000000681   0.000000856   0.000001308

   25    5.1  1.5 -0.5   0.000052921  -0.016458348  -0.000229092   0.017234699  -0.206410135   0.240286972   0.000856665  -0.020205579
                        -0.000139647   0.042887165  -0.000079086   0.005946991  -0.077615003   0.090358772   0.005549102  -0.131024761

   26    6.1  1.5 -0.5   0.000122204  -0.037861527  -0.000074991   0.005642064   0.000962954  -0.001120659  -0.001271151   0.029979516
                        -0.000321053   0.098657682  -0.000025870   0.001946548   0.000361774  -0.000420922  -0.008232615   0.194398497

   27    7.1  1.5 -0.5   0.000237770  -0.073096354  -0.000070870   0.005330165   0.000130147  -0.000151420  -0.022219783   0.524659996
                         0.000090684  -0.028051334   0.000205487  -0.015446898  -0.000346398   0.000402795   0.003430937  -0.080909649

   28    8.1  1.5 -0.5  -0.000000001   0.000000160  -0.000000018   0.000001375  -0.000000090   0.000000105   0.000000092  -0.000002176
                        -0.000000000   0.000000061   0.000000053  -0.000003985   0.000000239  -0.000000278  -0.000000014   0.000000336

   29    9.1  1.5 -0.5  -0.000000000   0.000000126   0.000000042  -0.000003186  -0.000000522   0.000000608  -0.000000001   0.000000026
                         0.000000001  -0.000000328   0.000000015  -0.000001099  -0.000000196   0.000000229  -0.000000007   0.000000170

   30   10.1  1.5 -0.5  -0.000000472  -0.000000002   0.000001087   0.000000015  -0.000002093  -0.000001798  -0.000001955  -0.000000083
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   31    1.1  1.5 -1.5   0.000048260  -0.014850343   0.002930690  -0.220406001  -0.001157198   0.001347153  -0.000601761   0.014208616
                         0.000018520  -0.005698965  -0.008493047   0.638729646   0.003077166  -0.003582286   0.000092795  -0.002191056

   32    2.1  1.5 -1.5  -0.340945401  -0.001108336   0.166048505   0.002207994   0.113179459   0.097222293   0.305305848   0.012930434
                        -0.000001065  -0.000003026  -0.000000096   0.000000032   0.000001341   0.000003066   0.000001987   0.000002521

   33    3.1  1.5 -1.5   0.000038182  -0.011886694   0.000085020  -0.006389816  -0.062180514   0.072385390   0.002832753  -0.066805605
                        -0.000100894   0.030973562   0.000029304  -0.002204751  -0.023381093   0.027219899   0.018346254  -0.433200332

   34    4.1  1.5 -1.5  -0.000063254   0.019411692  -0.000101506   0.007634953   0.107403613  -0.125038433   0.003140454  -0.074154812
                        -0.000023911   0.007449894   0.000294239  -0.022125231  -0.285630264   0.332509210  -0.000485144   0.011435814

   35    5.1  1.5 -1.5   0.000000412  -0.000003707   0.000000096   0.000000022   0.000004809   0.000009661   0.000000254  -0.000000500
                         0.433560526   0.001409373   0.114979300   0.001528872  -0.343041182  -0.294675498   0.026166584   0.001108494

   36    6.1  1.5 -1.5  -0.000001173  -0.000004355  -0.000000036  -0.000000010  -0.000002208  -0.000004453  -0.000000091   0.000000239
                         0.485731094   0.001578988   0.182842448   0.002431209   0.159738954   0.137217190  -0.018244435  -0.000772811

   37    7.1  1.5 -1.5   0.569182000   0.001850233  -0.134064203  -0.001782521   0.122791442   0.105479133   0.386154271   0.016354554
                         0.000000120   0.000004961  -0.000000109   0.000000038   0.000001465   0.000003374   0.000002474   0.000003149

   38    8.1  1.5 -1.5   0.000000595   0.000000002  -0.000000092  -0.000000001   0.000000417   0.000000358   0.000000638   0.000000027
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   39    9.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000030  -0.000000000  -0.000000564  -0.000000008   0.000001428   0.000001227   0.000000487   0.000000021

   40   10.1  1.5 -1.5  -0.000000000   0.000000113  -0.000000021   0.000001612   0.000000154  -0.000000179   0.000000041  -0.000000958
                        -0.000000000   0.000000043   0.000000062  -0.000004673  -0.000000409   0.000000476  -0.000000006   0.000000148

   41    1.1  0.5  0.5  -0.000000009   0.000002802  -0.000971930   0.073093581  -0.019620442   0.022840651  -0.000433170   0.010213978
                         0.000000024  -0.000007301  -0.000335379   0.025222389  -0.007377688   0.008589022  -0.002805093   0.066233376

   42    2.1  0.5  0.5   0.000001181   0.000000004   0.087443674   0.001162707  -0.061593797  -0.052909588   0.005174471   0.000219122
                         0.000000000   0.000000000   0.000000055  -0.000000005  -0.000000762  -0.000001683   0.000000119   0.000000097

   43    3.1  0.5  0.5   0.000000000  -0.000000000   0.000000041  -0.000000004  -0.000001104  -0.000002339   0.000000362   0.000000474
                         0.000001270   0.000000004   0.072288699   0.000961208   0.085701198   0.073618031  -0.051218053  -0.002169197

   44    4.1  0.5  0.5  -0.000000020   0.000006099  -0.000024646   0.001853095  -0.028110791   0.032726321   0.003301088  -0.077946616
                        -0.000000008   0.000002340   0.000071385  -0.005370233   0.074758259  -0.087027823  -0.000509652   0.012020445

   45    5.1  0.5  0.5   0.000000000   0.000000000   0.000000030   0.000000008   0.000000071   0.000000121   0.000000847   0.000000959
                         0.000001526   0.000000005  -0.085805134  -0.001140948  -0.003660357  -0.003144366  -0.112923278  -0.004782520

   46    6.1  0.5  0.5   0.000001515   0.000000005   0.080360887   0.001068537  -0.010957265  -0.009412480  -0.078381686  -0.003319575
                        -0.000000000   0.000000000  -0.000000053  -0.000000005  -0.000000222  -0.000000368  -0.000000642  -0.000000630

   47    7.1  0.5  0.5  -0.000000017   0.000005286  -0.000296717   0.022315192   0.009598842  -0.011174860   0.002982083  -0.070412460
                        -0.000000007   0.000002028   0.000859868  -0.064668819  -0.025527336   0.029717029  -0.000460476   0.010858429

   48    8.1  0.5  0.5  -0.000000237  -0.000000001  -0.000027532  -0.000000366  -0.000001863  -0.000001600  -0.000001658  -0.000000070
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   49    9.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000001137  -0.000000004  -0.000032459  -0.000000432  -0.000004615  -0.000003964   0.000012748   0.000000540

   50   10.1  0.5  0.5  -0.000000000   0.000000059  -0.000000101   0.000007595   0.000000027  -0.000000031   0.000000054  -0.000001273
                         0.000000001  -0.000000154  -0.000000035   0.000002621   0.000000010  -0.000000012   0.000000350  -0.000008252

   51   11.1  0.5  0.5  -0.000000015   0.000004475  -0.000000043   0.000003230  -0.000001312   0.000001527   0.000000251  -0.000005929
                        -0.000000006   0.000001717   0.000000124  -0.000009359   0.000003489  -0.000004061  -0.000000039   0.000000914

   52   12.1  0.5  0.5  -0.000000007   0.000002057  -0.000000087   0.000006571  -0.000016035   0.000018667   0.000000067  -0.000001573
                         0.000000017  -0.000005359  -0.000000030   0.000002267  -0.000006030   0.000007020   0.000000432  -0.000010197

   53    1.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000035   0.000000004  -0.000000397  -0.000000718   0.000000378   0.000000600
                         0.000007820   0.000000025  -0.077322963  -0.001028167   0.024402185   0.020961680  -0.067016307  -0.002838342

   54    2.1  0.5 -0.5   0.000000004  -0.000001102   0.000379274  -0.028523628   0.018622218  -0.021679859   0.000216547  -0.005114005
                         0.000000001  -0.000000423  -0.001099109   0.082660745  -0.049524111   0.057652230  -0.000033491   0.000788731

   55    3.1  0.5 -0.5   0.000000001  -0.000000455  -0.000908634   0.068334677   0.068907500  -0.080216942   0.000331064  -0.007806233
                        -0.000000004   0.000001185  -0.000313538   0.023580243   0.025910826  -0.030165170   0.002143785  -0.050619677

   56    4.1  0.5 -0.5   0.000006532   0.000000021   0.005680965   0.000075519  -0.092977708  -0.079868729  -0.078868029  -0.003340198
                         0.000000000   0.000000000   0.000000007  -0.000000013  -0.000001241  -0.000002591  -0.000000589  -0.000000596

   57    5.1  0.5 -0.5   0.000000002  -0.000000547   0.001078544  -0.081111821  -0.002943178   0.003426129   0.000729827  -0.017210883
                        -0.000000005   0.000001425   0.000372164  -0.027989169  -0.001106681   0.001288353   0.004726505  -0.111603998

   58    6.1  0.5 -0.5   0.000000005  -0.000001414   0.000348556  -0.026213362   0.003312780  -0.003856670  -0.003280700   0.077465946
                         0.000000002  -0.000000543  -0.001010089   0.075965333  -0.008810237   0.010256108   0.000506542  -0.011946377

   59    7.1  0.5 -0.5   0.000005662   0.000000018   0.068410700   0.000909623   0.031748690   0.027272378  -0.071244789  -0.003017426
                        -0.000000000   0.000000000   0.000000031  -0.000000003   0.000000480   0.000000896  -0.000000389  -0.000000613

   60    8.1  0.5 -0.5  -0.000000001   0.000000221  -0.000000119   0.000008981   0.000000563  -0.000000656  -0.000000069   0.000001639
                        -0.000000000   0.000000085   0.000000346  -0.000026026  -0.000001498   0.000001744   0.000000011  -0.000000253

   61    9.1  0.5 -0.5  -0.000000001   0.000000407   0.000000408  -0.000030684  -0.000003711   0.000004320  -0.000000082   0.000001943
                         0.000000003  -0.000001061   0.000000141  -0.000010588  -0.000001395   0.000001624  -0.000000534   0.000012599

   62   10.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000165   0.000000001  -0.000008034  -0.000000107  -0.000000033  -0.000000028   0.000008350   0.000000354

   63   11.1  0.5 -0.5   0.000004793   0.000000016   0.000009901   0.000000132  -0.000004339  -0.000003727  -0.000005999  -0.000000254
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   64   12.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000  -0.000000000
                         0.000005740   0.000000019  -0.000006951  -0.000000092   0.000019943   0.000017131   0.000010318   0.000000437


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.001956871  -0.018352801  -0.101887393   0.471646138  -0.001529762   0.074886244  -0.001617795   0.102718656
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.201251353  -0.021458724   0.092912704   0.020071602  -0.071618867  -0.001463509   0.133232539   0.002098154
                         0.085161705   0.009081302   0.281925741   0.060903660  -0.260154422  -0.005318769  -0.078843009  -0.001241455

    3    3.1  1.5  1.5   0.000000448   0.000004167   0.000000143   0.000000221  -0.000000901  -0.000000360  -0.000000124  -0.000000627
                        -0.028481821   0.267119108   0.010445434  -0.048348221  -0.009140544   0.447150639  -0.001153905   0.073266470

    4    4.1  1.5  1.5   0.023896376  -0.224111186   0.018923624  -0.087594501  -0.009045917   0.442517062  -0.001023423   0.064981668
                         0.000000328   0.000004254  -0.000000145  -0.000000222   0.000000905   0.000000361   0.000000122   0.000000629

    5    5.1  1.5  1.5   0.143053303   0.015254389   0.067520445   0.014585201   0.351220040   0.007179468  -0.151165616  -0.002380160
                         0.338055953   0.036045305  -0.022251974  -0.004806930  -0.096688975  -0.001975824  -0.255444363  -0.004022943

    6    6.1  1.5  1.5  -0.061786526  -0.006588537   0.361401928   0.078072345  -0.120225266  -0.002458466   0.022749643   0.000358006
                        -0.146010321  -0.015568385  -0.119105346  -0.025729775   0.033097435   0.000676458   0.038442378   0.000605355

    7    7.1  1.5  1.5  -0.247661973  -0.026407319  -0.072994967  -0.015768600  -0.100878547  -0.002061253   0.059248342   0.000932873
                         0.104801055   0.011175520  -0.221489386  -0.047846590  -0.366439973  -0.007490325  -0.035061425  -0.000551824

    8    8.1  1.5  1.5   0.000001162   0.000000124   0.000813029   0.000175628   0.002389277   0.000048816  -0.014541228  -0.000228995
                        -0.000000492  -0.000000052   0.002466947   0.000532913   0.008679063   0.000177416   0.008605112   0.000135481

    9    9.1  1.5  1.5   0.000000345   0.000000037  -0.003641597  -0.000786695   0.002342092   0.000047881  -0.009557159  -0.000150473
                         0.000000816   0.000000087   0.001200157   0.000259261  -0.000644782  -0.000013183  -0.016150009  -0.000254334

   10   10.1  1.5  1.5  -0.000000046   0.000000429   0.003404997  -0.015762032   0.000025725  -0.001260130   0.000050460  -0.003203809
                        -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000003   0.000000001   0.000000002   0.000000002

   11    1.1  1.5  0.5   0.032879310   0.003505638  -0.016245259  -0.003509513   0.107117964   0.002188879   0.025032786   0.000394350
                        -0.013913695  -0.001483614  -0.049292584  -0.010649339   0.389103907   0.007954214  -0.014814207  -0.000233300

   12    2.1  1.5  0.5   0.000376059  -0.003526415  -0.067369559   0.311860041  -0.002898589   0.141830118   0.005101436  -0.323968907
                        -0.000000037   0.000000019   0.000000060   0.000000267   0.000000349  -0.000000286  -0.000000602  -0.000000963

   13    3.1  1.5  0.5  -0.079596653  -0.008487733   0.238174389   0.051451757   0.085310398   0.001743461   0.186686122   0.002939155
                        -0.188098605  -0.020056160  -0.078494098  -0.016956580  -0.023485020  -0.000479683   0.315468477   0.004967987

   14    4.1  1.5  0.5   0.186318777   0.019866412  -0.031806863  -0.006871192   0.007082025   0.000144596  -0.381140725  -0.006002312
                        -0.078842957  -0.008407468  -0.096512836  -0.020849058   0.025726681   0.000526218   0.225549012   0.003551233

   15    5.1  1.5  0.5   0.000000335   0.000004778   0.000000070   0.000000196  -0.000000062  -0.000000242  -0.000000343  -0.000000660
                        -0.026583482   0.249311495   0.087503102  -0.405058739  -0.000203488   0.009912619  -0.002118588   0.134548433

   16    6.1  1.5  0.5   0.000000939   0.000010950   0.000000071   0.000000313   0.000000426  -0.000000333  -0.000000717  -0.000001130
                        -0.067696429   0.634891614  -0.016906269   0.078260470   0.002112556  -0.103335363  -0.007548629   0.479360288

   17    7.1  1.5  0.5   0.002873077  -0.026947864  -0.052506632   0.243058635  -0.000622811   0.030495606  -0.006040651   0.383590924
                         0.000000111  -0.000000068  -0.000000071  -0.000000250  -0.000000151   0.000000285   0.000000512   0.000000874

   18    8.1  1.5  0.5   0.000000046  -0.000000430  -0.002717169   0.012578116  -0.000224641   0.010990775  -0.000069217   0.004394845
                         0.000000000   0.000000000  -0.000000003  -0.000000004   0.000000018   0.000000007   0.000000002   0.000000012

   19    9.1  1.5  0.5   0.000000000  -0.000000000  -0.000000004  -0.000000005   0.000000023   0.000000009   0.000000003   0.000000015
                         0.000000122  -0.000001143  -0.003178962   0.014715593   0.000180075  -0.008807624  -0.000018119   0.001150375

   20   10.1  1.5  0.5   0.000000732   0.000000078  -0.000670295  -0.000144807   0.005254468   0.000107372   0.002791215   0.000043963
                        -0.000000310  -0.000000033  -0.002033852  -0.000439410   0.019086745   0.000390178  -0.001651790  -0.000026010

   21    1.1  1.5 -0.5  -0.003806653   0.035702100   0.011212721  -0.051900552  -0.008249892   0.403579123  -0.000458193   0.029087817
                        -0.000000076  -0.000000290  -0.000000123  -0.000000173   0.000000831   0.000000295   0.000000055   0.000000473

   22    2.1  1.5 -0.5   0.003247595   0.000346339  -0.097613777  -0.021086902  -0.037644172  -0.000769005   0.278807718   0.004390612
                        -0.001374311  -0.000146525  -0.296189526  -0.063984373  -0.136743185  -0.002794718  -0.164991239  -0.002597534

   23    3.1  1.5 -0.5   0.000000257   0.000003441  -0.000000078  -0.000000305  -0.000000270   0.000000339   0.000000647   0.000001080
                        -0.021778227   0.204246695  -0.054173876   0.250775523  -0.001808246   0.088483954   0.005772307  -0.366567959

   24    4.1  1.5 -0.5  -0.021572201   0.202313861   0.021952141  -0.101618916  -0.000545723   0.026683650   0.006974167  -0.442877646
                        -0.000000288  -0.000003902   0.000000082   0.000000307   0.000000259  -0.000000343  -0.000000652  -0.000001084

   25    5.1  1.5 -0.5   0.097158251   0.010360528   0.384705173   0.083106244  -0.009557020  -0.000196207   0.068523197   0.001078656
                         0.229600731   0.024481441  -0.126785300  -0.027388778   0.002631234   0.000053950   0.115792281   0.001823435

   26    6.1  1.5 -0.5   0.247422361   0.026383782  -0.074328114  -0.016056736   0.099629131   0.002036898   0.244128877   0.003843737
                         0.584696106   0.062343424   0.024495563   0.005291802  -0.027426877  -0.000560303   0.412537727   0.006496728

   27    7.1  1.5 -0.5   0.024817117   0.002645865  -0.076078153  -0.016434868  -0.008094397  -0.000165451  -0.330118575  -0.005198855
                        -0.010502290  -0.001119809  -0.230845435  -0.049868242  -0.029401747  -0.000600433   0.195355376   0.003075934

   28    8.1  1.5 -0.5   0.000000396   0.000000042  -0.003937000  -0.000850488  -0.002917170  -0.000059607  -0.003782205  -0.000059570
                        -0.000000168  -0.000000018  -0.011946089  -0.002580635  -0.010596568  -0.000216588   0.002238211   0.000035249

   29    9.1  1.5 -0.5  -0.000000445  -0.000000047  -0.013976158  -0.003019226   0.008491720   0.000173622   0.000585848   0.000009230
                        -0.000001052  -0.000000112   0.004606049   0.000995025  -0.002337722  -0.000047774   0.000990023   0.000015591

   30   10.1  1.5 -0.5  -0.000000085   0.000000795   0.000462655  -0.002141460  -0.000404682   0.019796799  -0.000051081   0.003243346
                         0.000000000  -0.000000000  -0.000000007  -0.000000010   0.000000040   0.000000016   0.000000005   0.000000028

   31    1.1  1.5 -1.5  -0.016901677  -0.001802144   0.147627254   0.031891189   0.019876253   0.000406028   0.088399855   0.001392277
                         0.007152526   0.000762639   0.447946731   0.096767727   0.072200306   0.001474895  -0.052312407  -0.000823908

   32    2.1  1.5 -1.5  -0.023301220   0.218528311   0.064125853  -0.296841530  -0.005516445   0.269832513   0.002437922  -0.154813208
                        -0.000000281  -0.000004348  -0.000000067  -0.000000041   0.000000687   0.000000120  -0.000000146   0.000000040

   33    3.1  1.5 -1.5  -0.104098868  -0.011100460  -0.045918737  -0.009920614   0.431112630   0.008812940  -0.037313580  -0.000587553
                        -0.246000089  -0.026229639   0.015133409   0.003269330  -0.118682748  -0.002425208  -0.063052933  -0.000993116

   34    4.1  1.5 -1.5  -0.206392763  -0.022006803  -0.027417664  -0.005923037   0.117452908   0.002400088   0.055923017   0.000880822
                         0.087337572   0.009313291  -0.083192958  -0.017972789   0.426645244   0.008721708  -0.033094310  -0.000521103

   35    5.1  1.5 -1.5   0.000000533   0.000006162  -0.000000160  -0.000000337   0.000000612   0.000000469   0.000000429   0.000001063
                        -0.039140265   0.367077750   0.015356910  -0.071092622   0.007446384  -0.364285978   0.004674316  -0.296821270

   36    6.1  1.5 -1.5  -0.000000221  -0.000002541   0.000000079   0.000000162  -0.000000329  -0.000000228  -0.000000194  -0.000000504
                         0.016905130  -0.158545226   0.082202873  -0.380522584  -0.002549833   0.124697854  -0.000703294   0.044669483

   37    7.1  1.5 -1.5  -0.028674706   0.268923250  -0.050378020   0.233207662  -0.007768766   0.380072013   0.001083864  -0.068845258
                        -0.000000327  -0.000005176  -0.000000068  -0.000000027   0.000000755   0.000000111  -0.000000191  -0.000000015

   38    8.1  1.5 -1.5   0.000000135  -0.000001262   0.000561108  -0.002597468   0.000184010  -0.009001932  -0.000266071   0.016896605
                        -0.000000000   0.000000000  -0.000000001  -0.000000010  -0.000000025   0.000000010   0.000000027   0.000000039

   39    9.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000006  -0.000000016  -0.000000002   0.000000019   0.000000030   0.000000055
                        -0.000000094   0.000000886  -0.000828314   0.003834267   0.000049663  -0.002429226   0.000295513  -0.018765982

   40   10.1  1.5 -1.5   0.000000395   0.000000042  -0.004933584  -0.001065778  -0.000334462  -0.000006830  -0.002757204  -0.000043425
                        -0.000000167  -0.000000018  -0.014970017  -0.003233902  -0.001214934  -0.000024801   0.001631630   0.000025700

   41    1.1  0.5  0.5  -0.038472194  -0.004102487  -0.052008024  -0.011235042   0.000191371   0.000004038   0.019915017   0.000313584
                        -0.090915841  -0.009693977   0.017139970   0.003702673  -0.000052664  -0.000001081   0.033653164   0.000529991

   42    2.1  0.5  0.5   0.008937012  -0.083815585  -0.006667784   0.030866146  -0.001010435   0.049433516   0.000550232  -0.034943510
                         0.000000117   0.000001490  -0.000000003   0.000000016   0.000000109  -0.000000009  -0.000000065  -0.000000072

   43    3.1  0.5  0.5   0.000000047   0.000000556  -0.000000022  -0.000000055   0.000000046   0.000000071   0.000000087   0.000000181
                        -0.002912718   0.027316842  -0.008425680   0.039002799   0.000562615  -0.027519263   0.000757106  -0.048078916

   44    4.1  0.5  0.5  -0.008192025  -0.000873411  -0.002224638  -0.000480598   0.017798285   0.000363697   0.009432331   0.000148564
                         0.003466759   0.000369641  -0.006750134  -0.001458351   0.064651901   0.001321635  -0.005581882  -0.000087895

   45    5.1  0.5  0.5   0.000000062   0.000000448   0.000000005  -0.000000014  -0.000000117   0.000000005   0.000000063   0.000000064
                        -0.003686843   0.034577677   0.004915161  -0.022752331  -0.000928204   0.045405040   0.000714261  -0.045358118

   46    6.1  0.5  0.5  -0.009803404   0.091941571  -0.003019222   0.013976667  -0.000656438   0.032114717  -0.000921574   0.058521406
                        -0.000000146  -0.000001564  -0.000000021  -0.000000053   0.000000039   0.000000068   0.000000085   0.000000174

   47    7.1  0.5  0.5   0.090873475   0.009689457   0.020195778   0.004362788   0.002545229   0.000051982  -0.012794833  -0.000201478
                        -0.038454348  -0.004100568   0.061280164   0.013238069   0.009245617   0.000188865   0.007571692   0.000119177

   48    8.1  0.5  0.5  -0.000000520   0.000004874   0.018851902  -0.087266514  -0.001067467   0.052211202   0.000107646  -0.006834575
                         0.000000000  -0.000000000  -0.000000021  -0.000000032   0.000000131   0.000000052   0.000000018   0.000000091

   49    9.1  0.5  0.5   0.000000000   0.000000000  -0.000000017  -0.000000026   0.000000106   0.000000042   0.000000014   0.000000074
                         0.000000037  -0.000000351   0.016113380  -0.074590870   0.001331614  -0.065150542   0.000410506  -0.026064434

   50   10.1  0.5  0.5  -0.000000327  -0.000000035   0.052975901   0.011444131   0.027678236   0.000565699   0.041561593   0.000654336
                        -0.000000773  -0.000000082  -0.017459034  -0.003771561  -0.007619558  -0.000155651   0.070232190   0.001106011

   51   11.1  0.5  0.5   0.000010766   0.000001148  -0.007483055  -0.001616555   0.003620336   0.000073952  -0.085830931  -0.001351688
                        -0.000004556  -0.000000486  -0.022706113  -0.004905076   0.013151108   0.000268909   0.050792469   0.000799718

   52   12.1  0.5  0.5  -0.000001731  -0.000000185  -0.015033192  -0.003247780   0.095974592   0.001961953  -0.012075507  -0.000190137
                        -0.000004092  -0.000000436   0.004954463   0.001070316  -0.026421244  -0.000539906  -0.020405414  -0.000321380

   53    1.1  0.5 -0.5  -0.000000136  -0.000001813   0.000000004   0.000000018   0.000000029  -0.000000018  -0.000000042  -0.000000065
                         0.010526329  -0.098720818  -0.011829453   0.054759594   0.000004180  -0.000198485  -0.000615813   0.039104263

   54    2.1  0.5 -0.5  -0.077189013  -0.008230333   0.009661251   0.002087048   0.013120600   0.000268084  -0.030072409  -0.000473564
                         0.032663566   0.003483075   0.029315170   0.006332739   0.047660491   0.000974223   0.017796041   0.000280165

   55    3.1  0.5 -0.5  -0.010645515  -0.001135200   0.037042959   0.008002311  -0.026532213  -0.000542448   0.024485715   0.000385503
                        -0.025157164  -0.002682396  -0.012208095  -0.002637253   0.007304211   0.000149284   0.041376707   0.000651611

   56    4.1  0.5 -0.5  -0.000948410   0.008895375  -0.001535501   0.007107273   0.001370764  -0.067057045   0.000172618  -0.010960214
                        -0.000000025   0.000000020   0.000000022   0.000000033  -0.000000135  -0.000000054  -0.000000018  -0.000000094

   57    5.1  0.5 -0.5  -0.013475335  -0.001436908  -0.021609070  -0.004668184   0.043776502   0.000894943   0.023099971   0.000363703
                        -0.031843855  -0.003395307   0.007121564   0.001538462  -0.012051369  -0.000246250   0.039035243   0.000614726

   58    6.1  0.5 -0.5   0.084672520   0.009028209   0.004374706   0.000945049   0.008523930   0.000174194   0.050363536   0.000793152
                        -0.035830388  -0.003820755   0.013274380   0.002867505   0.030962843   0.000632904  -0.029803846  -0.000469265

   59    7.1  0.5 -0.5   0.010521418  -0.098674846   0.013938450  -0.064522306   0.000195888  -0.009589558  -0.000234086   0.014867356
                         0.000000130   0.000001737  -0.000000007  -0.000000022  -0.000000010   0.000000026   0.000000045   0.000000078

   60    8.1  0.5 -0.5   0.000004489   0.000000479  -0.027314822  -0.005900706   0.013857910   0.000283200  -0.005881893  -0.000092632
                        -0.000001899  -0.000000202  -0.082881512  -0.017904633   0.050338533   0.001029215   0.003480624   0.000054837

   61    9.1  0.5 -0.5   0.000000137   0.000000015  -0.070842815  -0.015303705  -0.062813782  -0.001283882   0.013274120   0.000209050
                         0.000000324   0.000000035   0.023347236   0.005043573   0.017292251   0.000353334   0.022431060   0.000353289

   62   10.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000015   0.000000065   0.000000079  -0.000000070  -0.000000145  -0.000000232
                         0.000000089  -0.000000839   0.012049598  -0.055778705   0.000586722  -0.028707881  -0.001285074   0.081608373

   63   11.1  0.5 -0.5   0.000001247  -0.000011691  -0.005164593   0.023907398   0.000278892  -0.013640325  -0.001570544   0.099733764
                        -0.000000000   0.000000000  -0.000000016  -0.000000066  -0.000000074   0.000000072   0.000000147   0.000000237

   64   12.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000034  -0.000000056   0.000000199   0.000000088   0.000000040   0.000000163
                         0.000000474  -0.000004443  -0.003419598   0.015828568   0.002034886  -0.099544987   0.000373413  -0.023710732


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.001814741  -0.037888431  -0.002007325   0.162028560  -0.020298766   0.000199455   0.107175966  -0.005142045
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.125576303  -0.006014391   0.189278367   0.002344993  -0.000267100  -0.027183361  -0.002792710  -0.058208609
                        -0.021044507  -0.001007559   0.363549370   0.004504006  -0.000172184  -0.017515656   0.001396915   0.029116376

    3    3.1  1.5  1.5  -0.000000547  -0.000000822  -0.000000041  -0.000000186   0.000000002  -0.000000012   0.000000006  -0.000000016
                         0.017568153  -0.366804296   0.000213414  -0.017210674   0.006988908  -0.000068685  -0.001031110   0.000049478

    4    4.1  1.5  1.5   0.017479407  -0.364951510   0.000380485  -0.030695844  -0.101010058   0.000992618  -0.018972702   0.000910245
                         0.000000551   0.000000825   0.000000038   0.000000187   0.000000008  -0.000000142   0.000000008  -0.000000035

    5    5.1  1.5  1.5   0.036781516   0.001761394   0.173938391   0.002154796   0.000323986   0.032965099   0.001218086   0.025388712
                        -0.219484681  -0.010512386  -0.090559455  -0.001121854  -0.000502702  -0.051160119   0.002435172   0.050756364

    6    6.1  1.5  1.5  -0.011523856  -0.000551619   0.426619209   0.005285343  -0.000118261  -0.012031871   0.000275070   0.005733300
                         0.068764086   0.003293320  -0.222115097  -0.002751784   0.000183481   0.018672838   0.000549911   0.011461853

    7    7.1  1.5  1.5  -0.192690889  -0.009229128  -0.147304839  -0.001824876  -0.000378203  -0.038490483  -0.001105352  -0.023038895
                        -0.032291302  -0.001546431  -0.282929960  -0.003505086  -0.000243784  -0.024801421   0.000552883   0.011524228

    8    8.1  1.5  1.5   0.007951826   0.000380856  -0.000168557  -0.000002091  -0.000000021  -0.000002138   0.000000338   0.000007055
                         0.001332581   0.000063811  -0.000323758  -0.000004015  -0.000000014  -0.000001378  -0.000000169  -0.000003529

    9    9.1  1.5  1.5   0.001331576   0.000063763  -0.000345006  -0.000004279   0.000000001   0.000000071   0.000000177   0.000003685
                        -0.007945828  -0.000380569   0.000179620   0.000002228  -0.000000001  -0.000000110   0.000000353   0.000007368

   10   10.1  1.5  1.5  -0.000031254   0.000652430   0.000173250  -0.013984422  -0.000000217   0.000000002   0.000006407  -0.000000307
                         0.000000004   0.000000006   0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000

   11    1.1  1.5  0.5   0.484793058   0.023219385   0.003385782   0.000041775  -0.000357971  -0.036431082   0.000150329   0.003133296
                         0.081242447   0.003890355   0.006502578   0.000080345  -0.000230726  -0.023474430  -0.000075203  -0.001567299

   12    2.1  1.5  0.5   0.012456731  -0.260082000  -0.001665347   0.134434132   0.095962655  -0.000943011  -0.028718815   0.001377876
                         0.000000339   0.000000507   0.000000026   0.000000115   0.000000000   0.000000117  -0.000000011   0.000000025

   13    3.1  1.5  0.5  -0.002835345  -0.000135927  -0.325577840  -0.004033524   0.000029708   0.003023609   0.000925847   0.019297342
                         0.016920329   0.000810534   0.169508941   0.002100022  -0.000046105  -0.004692471   0.001850911   0.038578693

   14    4.1  1.5  0.5  -0.023193674  -0.001110744   0.169828467   0.002103994  -0.000056332  -0.005732779   0.004392745   0.091558235
                        -0.003887029  -0.000185973   0.326191601   0.004041142  -0.000036272  -0.003693917  -0.002197271  -0.045798103

   15    5.1  1.5  0.5  -0.000000612  -0.000000914  -0.000000042  -0.000000207   0.000000010  -0.000000114   0.000000003  -0.000000029
                         0.017187366  -0.358855720   0.002854007  -0.230353340   0.077061122  -0.000757275   0.027284772  -0.001309043

   16    6.1  1.5  0.5   0.000000264   0.000000395   0.000000018   0.000000090   0.000000015  -0.000000086   0.000000004  -0.000000043
                        -0.007431007   0.155152303  -0.001234006   0.099599399   0.046651111  -0.000458449   0.047790722  -0.002292864

   17    7.1  1.5  0.5   0.015341932  -0.320321621  -0.002050991   0.165565593  -0.010668723   0.000104840   0.031143254  -0.001494184
                         0.000000417   0.000000624   0.000000029   0.000000141  -0.000000004  -0.000000004   0.000000008  -0.000000007

   18    8.1  1.5  0.5   0.000428387  -0.008944331   0.000105483  -0.008513939  -0.000002050   0.000000020  -0.000005683   0.000000273
                         0.000000016   0.000000024   0.000000001   0.000000006   0.000000000  -0.000000000   0.000000000   0.000000000

   19    9.1  1.5  0.5   0.000000012   0.000000018   0.000000001   0.000000004   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000464660   0.009701533   0.000094595  -0.007635902   0.000002856  -0.000000028  -0.000005314   0.000000255

   20   10.1  1.5  0.5   0.004572849   0.000219019  -0.000099126  -0.000001230  -0.000000034  -0.000003472  -0.000000019  -0.000000397
                         0.000766326   0.000036695  -0.000190397  -0.000002360  -0.000000022  -0.000002237   0.000000010   0.000000199

   21    1.1  1.5 -0.5  -0.023543039   0.491553297   0.000090557  -0.007331237  -0.043339042   0.000425885   0.003503422  -0.000168090
                        -0.000000726  -0.000001086  -0.000000049  -0.000000246   0.000000002  -0.000000056   0.000000001  -0.000000007

   22    2.1  1.5 -0.5   0.256505153   0.012285477   0.062081758   0.000769034  -0.000792638  -0.080666836   0.001232296   0.025684754
                         0.042985502   0.002058449   0.119240895   0.001477149  -0.000510877  -0.051977809  -0.000616431  -0.012847715

   23    3.1  1.5 -0.5   0.000000097   0.000000152   0.000000005   0.000000034   0.000000006   0.000000000  -0.000000003  -0.000000007
                         0.000821853  -0.017156245  -0.004547461   0.367061590   0.005582248  -0.000054847  -0.043135866   0.002069557

   24    4.1  1.5 -0.5   0.001126205  -0.023517133   0.004556053  -0.367753543  -0.006819808   0.000067000   0.102373710  -0.004911640
                         0.000000162   0.000000243   0.000000011   0.000000055  -0.000000007   0.000000022   0.000000002   0.000000011

   25    5.1  1.5 -0.5   0.059310711   0.002840035  -0.204319865  -0.002531440  -0.000410271  -0.041739874   0.000585590   0.012206166
                        -0.353920425  -0.016951098   0.106376944   0.001318017   0.000636509   0.064778078   0.001170759   0.024402219

   26    6.1  1.5 -0.5  -0.025643157  -0.001227898   0.088343133   0.001094535  -0.000248389  -0.025268411   0.001025702   0.021379747
                         0.153018514   0.007328856  -0.045994904  -0.000569880   0.000385329   0.039215221   0.002050649   0.042741778

   27    7.1  1.5 -0.5   0.315916312   0.015131012   0.076458285   0.000947122   0.000088127   0.008968201  -0.001336324  -0.027853059
                         0.052941709   0.002535223   0.146853997   0.001819210   0.000056790   0.005778670   0.000668448   0.013932313

   28    8.1  1.5 -0.5   0.008821320   0.000422498  -0.003931730  -0.000048713   0.000000017   0.000001723   0.000000244   0.000005083
                         0.001478296   0.000070786  -0.007551732  -0.000093561   0.000000011   0.000001110  -0.000000122  -0.000002543

   29    9.1  1.5 -0.5  -0.001603436  -0.000076785  -0.006772923  -0.000083904  -0.000000015  -0.000001547  -0.000000114  -0.000002377
                         0.009568110   0.000458272   0.003526262   0.000043683   0.000000024   0.000002401  -0.000000228  -0.000004752

   30   10.1  1.5 -0.5  -0.000222071   0.004636616  -0.000002661   0.000214655  -0.000004130   0.000000041  -0.000000444   0.000000021
                        -0.000000008  -0.000000010  -0.000000001  -0.000000002   0.000000000   0.000000000   0.000000000   0.000000000

   31    1.1  1.5 -1.5  -0.037367372  -0.001789783  -0.074824758  -0.000926982  -0.000167663  -0.017063276   0.004598803   0.095853148
                        -0.006262003  -0.000299931  -0.143716770  -0.001780466  -0.000108034  -0.010994750  -0.002300355  -0.047946447

   32    2.1  1.5 -1.5  -0.006098203   0.127327449  -0.005077900   0.409871254   0.032337800  -0.000317789   0.065084602  -0.003122595
                        -0.000000324  -0.000000494  -0.000000022  -0.000000112  -0.000000010   0.000000065   0.000000002   0.000000017

   33    3.1  1.5 -1.5  -0.060624319  -0.002903033   0.015265682   0.000189276   0.000037213   0.003785518   0.000022149   0.000461284
                         0.361759704   0.017326638  -0.007947721  -0.000098591  -0.000057731  -0.005874921   0.000044244   0.000922174

   34    4.1  1.5 -1.5  -0.359932398  -0.017239114   0.014175169   0.000175741  -0.000834325  -0.084909711  -0.000814096  -0.016968296
                        -0.060318103  -0.002888362   0.027226815   0.000337467  -0.000537767  -0.054711723   0.000407178   0.008487658

   35    5.1  1.5 -1.5  -0.000000262  -0.000000392  -0.000000018  -0.000000089   0.000000007   0.000000058  -0.000000006  -0.000000004
                         0.010658929  -0.222545288  -0.002429342   0.196100940  -0.060860953   0.000598061   0.056752050  -0.002722828

   36    6.1  1.5 -1.5   0.000000270   0.000000404   0.000000018   0.000000091  -0.000000003  -0.000000029   0.000000003   0.000000001
                        -0.003339197   0.069723015  -0.005958789   0.480977199   0.022213528  -0.000218291   0.012815803  -0.000614870

   37    7.1  1.5 -1.5  -0.009357791   0.195377857   0.003951683  -0.318979745   0.045788948  -0.000449964   0.025760406  -0.001235914
                        -0.000000179  -0.000000268  -0.000000012  -0.000000061  -0.000000012   0.000000074   0.000000003   0.000000020

   38    8.1  1.5 -1.5   0.000386165  -0.008062711   0.000004526  -0.000365008   0.000002544  -0.000000025  -0.000007888   0.000000378
                         0.000000012   0.000000018   0.000000001   0.000000004  -0.000000000   0.000000000  -0.000000000  -0.000000000

   39    9.1  1.5 -1.5  -0.000000012  -0.000000018  -0.000000000  -0.000000004   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000385874  -0.008056629   0.000004824  -0.000388963  -0.000000131   0.000000001   0.000008238  -0.000000395

   40   10.1  1.5 -1.5   0.000643459   0.000030824   0.006458002   0.000080007  -0.000000002  -0.000000183   0.000000275   0.000005730
                         0.000107825   0.000005170   0.012403962   0.000153670  -0.000000001  -0.000000118  -0.000000137  -0.000002866

   41    1.1  0.5  0.5  -0.000002285  -0.000000110  -0.000009838  -0.000000122   0.000334214   0.034029210   0.014357623   0.299259299
                         0.000013638   0.000000653   0.000005122   0.000000063  -0.000518955  -0.052811700   0.028703594   0.598270436

   42    2.1  0.5  0.5   0.000000631  -0.000013176   0.000000084  -0.000006798   0.597409365  -0.005870650  -0.176417104   0.008464185
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000067   0.000000783  -0.000000033   0.000000225

   43    3.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000026   0.000000790  -0.000000058   0.000000184
                        -0.000001070   0.000022338   0.000000155  -0.000012517  -0.542176640   0.005327968  -0.281273470   0.013494716

   44    4.1  0.5  0.5   0.000020990   0.000001005   0.000004698   0.000000058  -0.004376426  -0.445393295  -0.002650151  -0.055237492
                         0.000003517   0.000000168   0.000009023   0.000000112  -0.002820807  -0.286989947   0.001325519   0.027630186

   45    5.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000007   0.000000091  -0.000000043   0.000000081
                         0.000000093  -0.000001934  -0.000000285   0.000023030  -0.150678587   0.001480658   0.444165930  -0.021310059

   46    6.1  0.5  0.5   0.000000015  -0.000000316   0.000000284  -0.000022921  -0.065259657   0.000641413  -0.444054998   0.021304614
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000043  -0.000000238   0.000000027  -0.000000161

   47    7.1  0.5  0.5   0.000000209   0.000000010   0.000008896   0.000000110  -0.000017549  -0.001789370  -0.002843172  -0.059260028
                         0.000000035   0.000000002   0.000017087   0.000000212  -0.000011404  -0.001153075   0.001422068   0.029642343

   48    8.1  0.5  0.5   0.005920733  -0.123619235   0.000983265  -0.079361542  -0.000010829   0.000000106   0.000018756  -0.000000900
                         0.000000211   0.000000315   0.000000014   0.000000071   0.000000000  -0.000000000  -0.000000000  -0.000000000

   49    9.1  0.5  0.5   0.000000170   0.000000254   0.000000012   0.000000058   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.006248922   0.130470195   0.000835444  -0.067440910   0.000009385  -0.000000092   0.000019762  -0.000000948

   50   10.1  0.5  0.5   0.003203661   0.000153473   0.129264007   0.001601421  -0.000000017  -0.000001688  -0.000000307  -0.000006398
                        -0.019117465  -0.000915690  -0.067300058  -0.000833766   0.000000026   0.000002619  -0.000000614  -0.000012790

   51   11.1  0.5  0.5  -0.006770585  -0.000324331  -0.067764361  -0.000839523  -0.000000044  -0.000004449   0.000001289   0.000026865
                        -0.001134549  -0.000054393  -0.130155814  -0.001612475  -0.000000028  -0.000002866  -0.000000645  -0.000013438

   52   12.1  0.5  0.5   0.024033453   0.001150850  -0.017190155  -0.000213029  -0.000000052  -0.000005245   0.000000069   0.000001434
                        -0.143413278  -0.006868837   0.008949805   0.000110929   0.000000080   0.000008139   0.000000138   0.000002867

   53    1.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000081  -0.000000148  -0.000000035  -0.000000112
                        -0.000000662   0.000013828   0.000000137  -0.000011092  -0.062825654   0.000617263   0.668942182  -0.032094199

   54    2.1  0.5 -0.5  -0.000012995  -0.000000622   0.000003139   0.000000039   0.004934483   0.502186188  -0.007569869  -0.157779153
                        -0.000002178  -0.000000104   0.000006030   0.000000075   0.003180474   0.323584582   0.003786756   0.078922326

   55    3.1  0.5 -0.5   0.000003692   0.000000177   0.000011102   0.000000138  -0.002886538  -0.293667951   0.006036858   0.125830992
                        -0.000022030  -0.000001055  -0.000005780  -0.000000072   0.004478296   0.455757220   0.012069122   0.251557800

   56    4.1  0.5 -0.5   0.000001019  -0.000021282  -0.000000126   0.000010172   0.529847541  -0.005206732   0.061762510  -0.002963157
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000033   0.000000714  -0.000000011   0.000000095

   57    5.1  0.5 -0.5  -0.000000320  -0.000000015  -0.000020427  -0.000000253  -0.000802069  -0.081614482  -0.009533382  -0.198702968
                         0.000001908   0.000000091   0.000010635   0.000000132   0.001244601   0.126661411  -0.019058679  -0.397241116

   58    6.1  0.5 -0.5  -0.000000311  -0.000000015   0.000010585   0.000000131  -0.000539047  -0.054857672  -0.019053918  -0.397141934
                        -0.000000052  -0.000000003   0.000020331   0.000000252  -0.000347619  -0.035347683   0.009530730   0.198653278

   59    7.1  0.5 -0.5   0.000000010  -0.000000212  -0.000000239   0.000019265   0.002128714  -0.000020929   0.066260240  -0.003178979
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000077   0.000000081   0.000000038   0.000000096

   60    8.1  0.5 -0.5  -0.121919117  -0.005839343   0.036649082   0.000454084  -0.000000089  -0.000009103   0.000000805   0.000016774
                        -0.020431456  -0.000978340   0.070392466   0.000872134  -0.000000058  -0.000005866  -0.000000403  -0.000008391

   61    9.1  0.5 -0.5   0.021563687   0.001032622   0.059818994   0.000741031   0.000000050   0.000005083  -0.000000424  -0.000008841
                        -0.128675868  -0.006163012  -0.031144250  -0.000385797  -0.000000078  -0.000007889  -0.000000848  -0.000017674

   62   10.1  0.5 -0.5   0.000000022   0.000000032   0.000000001   0.000000007   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000928462  -0.019384038  -0.001805468   0.145734283   0.000003116  -0.000000031  -0.000014301   0.000000686

   63   11.1  0.5 -0.5  -0.000328861   0.006864985   0.001817931  -0.146739717   0.000005292  -0.000000052  -0.000030038   0.000001441
                         0.000000041   0.000000061   0.000000003   0.000000014  -0.000000000  -0.000000000   0.000000000  -0.000000000

   64   12.1  0.5 -0.5  -0.000000222  -0.000000332  -0.000000015  -0.000000075   0.000000000   0.000000000   0.000000000   0.000000000
                         0.006964580  -0.145413119   0.000240180  -0.019380414   0.000009683  -0.000000095   0.000003205  -0.000000154


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.076294374  -0.002113290   0.000742079   0.000000000   0.000023191  -0.004147420   0.000124902  -0.001706072
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000189964  -0.006858171   0.000000005  -0.033932199   0.001725715   0.000009650   0.003019960   0.000221091
                        -0.000812075   0.029318263   0.000002334  -0.009662072  -0.000315125  -0.000001761  -0.000476692  -0.000034900

    3    3.1  1.5  1.5  -0.000000023  -0.000000020  -0.000003240  -0.000006454  -0.000000001  -0.000000000   0.000000001  -0.000000000
                        -0.002384144  -0.000065954  -0.103094543  -0.000001851   0.000002391  -0.000427490  -0.000118283   0.001615667

    4    4.1  1.5  1.5   0.007936013   0.000219804   0.010374273   0.000000182   0.000000484  -0.000086447  -0.000129295   0.001766077
                         0.000000007   0.000000001  -0.000000331  -0.000000648   0.000000001   0.000000000  -0.000000001   0.000000000

    5    5.1  1.5  1.5  -0.001637894   0.059129405  -0.000003605   0.015403497  -0.000161855  -0.000000905  -0.000110582  -0.000008096
                        -0.000383117   0.013831598   0.000000009  -0.054095552  -0.000886367  -0.000004956  -0.000700563  -0.000051288

    6    6.1  1.5  1.5   0.001420853  -0.051294972   0.000001539  -0.006648282  -0.000566968  -0.000003170  -0.000182974  -0.000013396
                         0.000332359  -0.011998973  -0.000000004   0.023348136  -0.003104883  -0.000017362  -0.001159187  -0.000084864

    7    7.1  1.5  1.5   0.000476653  -0.017208291   0.000000007  -0.041841637  -0.002953533  -0.000016515   0.001589986   0.000116403
                        -0.002037652   0.073564428   0.000002904  -0.011914269   0.000539331   0.000003017  -0.000250975  -0.000018376

    8    8.1  1.5  1.5   0.000000044  -0.000001605  -0.000000000   0.000001937  -0.095078211  -0.000531648   0.207243453   0.015172302
                        -0.000000190   0.000006861  -0.000000000   0.000000552   0.017361781   0.000097138  -0.032712749  -0.002395041

    9    9.1  1.5  1.5   0.000000191  -0.000006887  -0.000000000   0.000000498  -0.014770139  -0.000082639   0.024165117   0.001769219
                         0.000000045  -0.000001611  -0.000000000  -0.000001750  -0.080885612  -0.000452285   0.153092093   0.011207881

   10   10.1  1.5  1.5   0.000008945   0.000000248  -0.000000471  -0.000000000   0.001009212  -0.180482647   0.005934237  -0.081057672
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000006  -0.000000001  -0.000000009  -0.000000002

   11    1.1  1.5  0.5   0.000006987  -0.000252179   0.000000007  -0.039844283   0.000364846   0.000002040  -0.001681047  -0.000123069
                        -0.000029826   0.001077990   0.000002700  -0.011345513  -0.000066623  -0.000000373   0.000265348   0.000019427

   12    2.1  1.5  0.5  -0.055477594  -0.001536664  -0.028462036  -0.000000520   0.000020391  -0.003646693  -0.000156213   0.002133765
                        -0.000000009  -0.000000004   0.000000908   0.000001827   0.000000001  -0.000000000  -0.000000002  -0.000000000

   13    3.1  1.5  0.5   0.002527161  -0.091235614   0.000000016  -0.000371952  -0.000548000  -0.000003065   0.000361146   0.000026441
                         0.000591151  -0.021341944  -0.000000000   0.001306347  -0.003001010  -0.000016781   0.002287950   0.000167501

   14    4.1  1.5  0.5   0.000057724  -0.002083875  -0.000000000   0.001838996  -0.000047554  -0.000000266  -0.003641036  -0.000266560
                        -0.000246747   0.008908429  -0.000000134   0.000523640   0.000008684   0.000000048   0.000574726   0.000042078

   15    5.1  1.5  0.5   0.000000007   0.000000002   0.000000438   0.000000896   0.000000000  -0.000000000  -0.000000001  -0.000000000
                         0.026652044   0.000738240   0.013827361   0.000000259  -0.000021188   0.003789099  -0.000016267   0.000222192

   16    6.1  1.5  0.5  -0.000000025  -0.000000025  -0.000003005  -0.000005947   0.000000001  -0.000000000  -0.000000002  -0.000000000
                         0.060571936   0.001677888  -0.095973759  -0.000001704  -0.000002239   0.000400344   0.000306271  -0.004183449

   17    7.1  1.5  0.5   0.045610362   0.001263303   0.088535023   0.000001601   0.000008527  -0.001524930   0.000242766  -0.003316022
                        -0.000000014  -0.000000012  -0.000002791  -0.000005583  -0.000000001   0.000000000   0.000000001   0.000000000

   18    8.1  1.5  0.5  -0.000006940  -0.000000192   0.000004089   0.000000000  -0.000944105   0.168838530  -0.001662039   0.022702344
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000018  -0.000000000   0.000000034  -0.000000003

   19    9.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000021  -0.000000001   0.000000048  -0.000000003
                        -0.000007282  -0.000000202  -0.000003142  -0.000000000  -0.000804263   0.143831638  -0.008606380   0.117557252

   20   10.1  1.5  0.5  -0.000000001   0.000000040   0.000000000   0.000006786  -0.024527515  -0.000137154   0.093680167   0.006858326
                         0.000000005  -0.000000170  -0.000000001   0.000001932   0.004478852   0.000025070  -0.014787138  -0.001082651

   21    1.1  1.5 -0.5  -0.001107094  -0.000030634  -0.041428101  -0.000000746   0.000002074  -0.000370879  -0.000124593   0.001701860
                         0.000000014   0.000000010   0.000001301   0.000002595   0.000000001   0.000000000  -0.000000001   0.000000000

   22    2.1  1.5 -0.5  -0.000350006   0.012636262  -0.000000000   0.027373913  -0.003587374  -0.000020060   0.002107669   0.000154303
                         0.001496273  -0.054019333  -0.000001899   0.007794635   0.000655073   0.000003664  -0.000332689  -0.000024358

   23    3.1  1.5 -0.5  -0.000000006  -0.000000005  -0.000000018  -0.000000015  -0.000000001   0.000000000   0.000000002   0.000000000
                         0.093698537   0.002595381  -0.001358268  -0.000000005   0.000017058  -0.003050634  -0.000169575   0.002316278

   24    4.1  1.5 -0.5  -0.009148915  -0.000253409   0.001912095   0.000000037  -0.000000270   0.000048340  -0.000269861   0.003686116
                         0.000000004   0.000000004  -0.000000053  -0.000000128   0.000000001  -0.000000000  -0.000000002  -0.000000000

   25    5.1  1.5 -0.5  -0.000718834   0.025951476   0.000000933  -0.003786769  -0.000680654  -0.000003806  -0.000034643  -0.000002536
                        -0.000168152   0.006070609  -0.000000004   0.013298733  -0.003727463  -0.000020843  -0.000219474  -0.000016068

   26    6.1  1.5 -0.5  -0.001633789   0.058979771  -0.000006186   0.026283395  -0.000071916  -0.000000403   0.000652269   0.000047755
                        -0.000382153   0.013796597   0.000000011  -0.092304634  -0.000393832  -0.000002202   0.004132286   0.000302525

   27    7.1  1.5 -0.5   0.000287757  -0.010388800   0.000000011  -0.085150280  -0.001500125  -0.000008388  -0.003275468  -0.000239797
                        -0.001230094   0.044411462   0.000005808  -0.024246240   0.000273931   0.000001531   0.000517023   0.000037853

   28    8.1  1.5 -0.5  -0.000000044   0.000001581   0.000000000  -0.000003933   0.166092093   0.000928744   0.022424700   0.001641718
                         0.000000187  -0.000006758   0.000000000  -0.000001120  -0.030329288  -0.000169611  -0.003539669  -0.000259106

   29    9.1  1.5 -0.5   0.000000196  -0.000007090  -0.000000000   0.000000860  -0.025837179  -0.000144453  -0.018329125  -0.001341924
                         0.000000046  -0.000001659  -0.000000000  -0.000003021  -0.141491979  -0.000791184  -0.116119553  -0.008501119

   30   10.1  1.5 -0.5   0.000000175   0.000000005   0.000007056   0.000000000  -0.000139426   0.024933093   0.006943253  -0.094840040
                         0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000025  -0.000000001   0.000000084  -0.000000006

   31    1.1  1.5 -1.5   0.000481349  -0.017377760  -0.000000000   0.000713715   0.004079956   0.000022814   0.001685207   0.000123374
                        -0.002057741   0.074288929  -0.000000000   0.000203204  -0.000745021  -0.000004166  -0.000266005  -0.000019474

   32    2.1  1.5 -1.5   0.030109717   0.000833998   0.035281011   0.000000644  -0.000009809   0.001754251  -0.000223829   0.003057351
                        -0.000000006  -0.000000002  -0.000001111  -0.000002243   0.000000001   0.000000000  -0.000000001   0.000000000

   33    3.1  1.5 -1.5  -0.000064216   0.002321470   0.000006714  -0.028233506  -0.000076792  -0.000000430   0.000251909   0.000018443
                        -0.000015042   0.000543065  -0.000000013   0.099153184  -0.000420536  -0.000002352   0.001595907   0.000116836

   34    4.1  1.5 -1.5  -0.000050065   0.001807598   0.000000002   0.009977658   0.000085041   0.000000476  -0.001744479  -0.000127713
                         0.000214027  -0.007727411  -0.000000673   0.002841107  -0.000015529  -0.000000087   0.000275361   0.000020160

   35    5.1  1.5 -1.5  -0.000000026  -0.000000021  -0.000001755  -0.000003464   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.060725609   0.001682105  -0.056245857  -0.000000996  -0.000005038   0.000901024  -0.000051923   0.000709237

   36    6.1  1.5 -1.5   0.000000012   0.000000009   0.000000749   0.000001479  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.052679688  -0.001459207   0.024276225   0.000000425  -0.000017649   0.003156224  -0.000085915   0.001173539

   37    7.1  1.5 -1.5   0.075550317   0.002092660   0.043504855   0.000000802   0.000016789  -0.003002371  -0.000117844   0.001609672
                        -0.000000007  -0.000000003  -0.000001382  -0.000002792   0.000000001  -0.000000000  -0.000000002  -0.000000000

   38    8.1  1.5 -1.5   0.000007046   0.000000195  -0.000002014  -0.000000000   0.000540449  -0.096650389  -0.015360175   0.209809373
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000055  -0.000000001  -0.000000137  -0.000000005

   39    9.1  1.5 -1.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000049  -0.000000001  -0.000000088  -0.000000009
                        -0.000007073  -0.000000196  -0.000001820  -0.000000000  -0.000459773   0.082223106   0.011346662  -0.154987553

   40   10.1  1.5 -1.5  -0.000000056   0.000002038  -0.000000000  -0.000000453   0.177546800   0.000992795   0.080066355   0.005861665
                         0.000000242  -0.000008710   0.000000000  -0.000000129  -0.032420978  -0.000181295  -0.012638235  -0.000925237

   41    1.1  0.5  0.5  -0.008412862   0.303717813  -0.000000809   0.004980665   0.058430795   0.000326688   0.053981623   0.003952112
                        -0.001967882   0.071045986   0.000000004  -0.017491726   0.319984197   0.001789271   0.341987066   0.025036896

   42    2.1  0.5  0.5   0.379494822   0.010511871  -0.133733151  -0.000002293   0.001955342  -0.349681488  -0.022881675   0.312547807
                        -0.000000002   0.000000028   0.000004115   0.000008056   0.000000112  -0.000000001  -0.000000263  -0.000000005

   43    3.1  0.5  0.5  -0.000000044  -0.000000009   0.000004206   0.000008396  -0.000000029   0.000000003   0.000000094   0.000000020
                         0.399769524   0.011073154   0.130063866   0.000002387   0.001630620  -0.291613621  -0.007097156   0.096942142

   44    4.1  0.5  0.5   0.000037432  -0.001350662   0.000000081  -0.495506801   0.050344147   0.000281516  -0.188441800  -0.013795825
                        -0.000159516   0.005773274   0.000033595  -0.141093731  -0.009193104  -0.000051481   0.029744984   0.002177781

   45    5.1  0.5  0.5   0.000000103   0.000000090   0.000017837   0.000035614  -0.000000112  -0.000000000   0.000000269   0.000000003
                        -0.076208889  -0.002111368   0.568974690   0.000010210  -0.000089269   0.015967345  -0.034774600   0.474997077

   46    6.1  0.5  0.5   0.100636841   0.002787033   0.581338041   0.000010433   0.000395691  -0.070762613   0.018730003  -0.255838911
                        -0.000000138  -0.000000127  -0.000018314  -0.000036394  -0.000000028   0.000000002   0.000000099   0.000000018

   47    7.1  0.5  0.5   0.004656624  -0.168115505  -0.000000005   0.017942023   0.478216924   0.002674058   0.018334782   0.001342296
                        -0.019907085   0.718684465  -0.000000573   0.005108749  -0.087324923  -0.000488337  -0.002894099  -0.000211780

   48    8.1  0.5  0.5   0.000024252   0.000000672   0.000009654   0.000000000   0.001736119  -0.310481325   0.018590155  -0.253928806
                        -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000040  -0.000000002   0.000000086  -0.000000009

   49    9.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000038   0.000000000   0.000000074  -0.000000006
                         0.000022269   0.000000617  -0.000012054  -0.000000000   0.002037125  -0.364308267   0.003594572  -0.049099459

   50   10.1  0.5  0.5  -0.000000795   0.000028715  -0.000000000   0.000000815   0.060822895   0.000340194  -0.043577112  -0.003190511
                        -0.000000186   0.000006717   0.000000000  -0.000002861   0.333084030   0.001862509  -0.276071953  -0.020211238

   51   11.1  0.5  0.5   0.000000048  -0.000001722  -0.000000000  -0.000000970   0.001511607   0.000008462   0.411105514   0.030097058
                        -0.000000204   0.000007361   0.000000000  -0.000000276  -0.000276026  -0.000001459  -0.064891754  -0.004750952

   52   12.1  0.5  0.5   0.000000059  -0.000002147  -0.000000001   0.000005325   0.003179511   0.000017841  -0.023981687  -0.001755819
                         0.000000014  -0.000000502  -0.000000000  -0.000018702   0.017411944   0.000097369  -0.151929877  -0.011122787

   53    1.1  0.5 -0.5  -0.000000066  -0.000000064  -0.000000533  -0.000000777   0.000000041   0.000000000  -0.000000112  -0.000000005
                         0.311916723   0.008639954  -0.018187015  -0.000000225   0.001818850  -0.325275336   0.025346900  -0.346221272

   54    2.1  0.5 -0.5  -0.002394288   0.086438485  -0.000000001  -0.128620486   0.343993343   0.001923515  -0.308725420  -0.022601796
                         0.010235566  -0.369519564   0.000008376  -0.036624122  -0.062814992  -0.000351357   0.048731373   0.003567892

   55    3.1  0.5 -0.5   0.010782092  -0.389261344  -0.000008729   0.035619449  -0.052383979  -0.000292944   0.015114865   0.001106657
                         0.002522152  -0.091056460  -0.000000004  -0.125091423  -0.286870045  -0.001604090   0.095756565   0.007010345

   56    4.1  0.5 -0.5   0.005929164   0.000163849   0.515203291   0.000009277  -0.000286185   0.051176619   0.013966658  -0.190774935
                        -0.000000166  -0.000000115  -0.000016174  -0.000032289  -0.000000073  -0.000000002   0.000000149  -0.000000013

   57    5.1  0.5 -0.5  -0.002055890   0.074205714  -0.000037048   0.155819560   0.002868292   0.000015926   0.074059905   0.005422202
                        -0.000480824   0.017358189   0.000000067  -0.547222499   0.015707610   0.000087837   0.469187973   0.034349273

   58    6.1  0.5 -0.5  -0.000634933   0.022922439  -0.000000069   0.559113169   0.069611543   0.000389260   0.252710063   0.018500924
                         0.002713745  -0.097991507  -0.000037860   0.159205476  -0.012711431  -0.000071052  -0.039889504  -0.002920415

   59    7.1  0.5 -0.5   0.738085485   0.020444466  -0.018655174  -0.000000162  -0.002718282   0.486124540  -0.001358900   0.018561789
                         0.000000070   0.000000065   0.000000417   0.000000550  -0.000000039   0.000000002   0.000000096   0.000000009

   60    8.1  0.5 -0.5  -0.000000153   0.000005524   0.000000000   0.000009285   0.305430834   0.001707885   0.250823314   0.018362788
                         0.000000654  -0.000023615  -0.000000001   0.000002644  -0.055773276  -0.000311828  -0.039591713  -0.002898598

   61    9.1  0.5 -0.5   0.000000601  -0.000021684   0.000000001  -0.000003301  -0.065442470  -0.000365976  -0.007655413  -0.000560381
                         0.000000141  -0.000005072   0.000000000   0.000011593  -0.358382194  -0.002003981  -0.048498985  -0.003550622

   62   10.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000089   0.000000002   0.000000225   0.000000013
                         0.000029490   0.000000817  -0.000002975  -0.000000000   0.001893323  -0.338591783  -0.020461513   0.279490050

   63   11.1  0.5 -0.5   0.000007560   0.000000209   0.000001009   0.000000000  -0.000008586   0.001536603  -0.030469730   0.416195487
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000084  -0.000000001  -0.000000220  -0.000000013

   64   12.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000001  -0.000000001  -0.000000060  -0.000000002   0.000000119  -0.000000013
                        -0.000002205  -0.000000061  -0.000019446  -0.000000000   0.000098990  -0.017699861  -0.011260519   0.153810951


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.000643053  -0.000025128  -0.056864604  -0.006737861  -0.038060798   0.000534360   0.008296010  -0.000056290
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000013293  -0.000340185  -0.001320521   0.011144661   0.000550985   0.039245610   0.000222985   0.032865241
                         0.000057294  -0.001466263   0.000577266  -0.004871203   0.000316400   0.022544529  -0.000125677  -0.018523882

    3    3.1  1.5  1.5   0.000000001   0.000000001   0.000000006  -0.000000064  -0.000000004   0.000000087  -0.000000035  -0.000000028
                        -0.003788537  -0.000148038  -0.020090976  -0.002380546   0.008785595  -0.000123286  -0.059398376   0.000403017

    4    4.1  1.5  1.5  -0.003756433  -0.000146783  -0.015448074  -0.001830410   0.011969196  -0.000167982  -0.060287954   0.000409053
                        -0.000000001  -0.000000001  -0.000000006   0.000000064   0.000000004  -0.000000088   0.000000036   0.000000027

    5    5.1  1.5  1.5  -0.000153523   0.003928925   0.000969988  -0.008186323   0.000196888   0.014022345   0.000186055   0.027413604
                         0.000035619  -0.000911541   0.002219210  -0.018729181  -0.000342712  -0.024410139   0.000329989   0.048637495

    6    6.1  1.5  1.5   0.000056744  -0.001452183   0.001847436  -0.015591490   0.000147904   0.010535835  -0.000118483  -0.017458674
                        -0.000013166   0.000336918   0.004226665  -0.035671196  -0.000257497  -0.018340836  -0.000210160  -0.030975347

    7    7.1  1.5  1.5   0.000019623  -0.000502176   0.005924758  -0.050002315   0.000087817   0.006255780   0.000176306   0.025985745
                         0.000084578  -0.002164481  -0.002589553   0.021855475   0.000050319   0.003593617  -0.000099362  -0.014646378

    8    8.1  1.5  1.5  -0.000213127   0.005454183   0.030860863  -0.260451484   0.004992770   0.355627642   0.000013618   0.002002249
                        -0.000918584   0.023508665  -0.013487894   0.113840583   0.002866731   0.204289380  -0.000007148  -0.001128601

    9    9.1  1.5  1.5   0.005795536  -0.148318315   0.008948548  -0.075527968  -0.002571696  -0.183237304  -0.000933263  -0.137457682
                        -0.001344647   0.034410986   0.020474772  -0.172797534   0.004478296   0.318980055  -0.001654616  -0.243878886

   10   10.1  1.5  1.5  -0.014527523  -0.000567657  -0.340669249  -0.040365751  -0.239469854   0.003362058   0.081487742  -0.000552890
                         0.000000002  -0.000000000   0.000000001  -0.000000018  -0.000000003   0.000000019  -0.000000018   0.000000007

   11    1.1  1.5  0.5  -0.000027238   0.000697057  -0.002006886   0.016937213  -0.000157465  -0.011216391  -0.000305404  -0.045013505
                        -0.000117400   0.003004458   0.000877118  -0.007403078  -0.000090354  -0.006443220   0.000172157   0.025371017

   12    2.1  1.5  0.5   0.000753108   0.000029427  -0.058370208  -0.006916226   0.025513895  -0.000358126   0.015958476  -0.000108304
                         0.000000000   0.000000000  -0.000000007   0.000000097  -0.000000012  -0.000000117  -0.000000014  -0.000000059

   13    3.1  1.5  0.5   0.000050804  -0.001300172   0.002338042  -0.019732901  -0.000227110  -0.016186083  -0.000072514  -0.010677209
                        -0.000011787   0.000301650   0.005349357  -0.045146159   0.000395581   0.028176777  -0.000128524  -0.018943620

   14    4.1  1.5  0.5   0.000016625  -0.000425460  -0.000706305   0.005960828  -0.000740400  -0.052737149   0.000095745   0.014112666
                         0.000071656  -0.001833817   0.000308614  -0.002605420  -0.000425191  -0.030294718  -0.000054039  -0.007954328

   15    5.1  1.5  0.5   0.000000000   0.000000000  -0.000000002   0.000000033  -0.000000007  -0.000000036  -0.000000017  -0.000000037
                        -0.001154715  -0.000045120   0.052469611   0.006217090   0.008079560  -0.000113459  -0.028263940   0.000191784

   16    6.1  1.5  0.5  -0.000000000   0.000000000  -0.000000008   0.000000117  -0.000000014  -0.000000140  -0.000000016  -0.000000069
                        -0.001466175  -0.000057291   0.015527545   0.001839812  -0.066326616   0.000931106  -0.010214033   0.000069332

   17    7.1  1.5  0.5  -0.001952064  -0.000076277  -0.016236899  -0.001923926  -0.060066666   0.000843259  -0.013007507   0.000088275
                        -0.000000000  -0.000000000   0.000000005  -0.000000070   0.000000010   0.000000082   0.000000017   0.000000051

   18    8.1  1.5  0.5   0.123680560   0.004832843   0.378245910   0.044818095   0.170890028  -0.002399464   0.174538599  -0.001184233
                         0.000000015   0.000000023   0.000000023  -0.000000235  -0.000000016   0.000000325  -0.000000130  -0.000000100

   19    9.1  1.5  0.5   0.000000019   0.000000024   0.000000030  -0.000000302  -0.000000020   0.000000408  -0.000000161  -0.000000088
                        -0.098507584  -0.003849216   0.212294180   0.025154760   0.243277256  -0.003415245  -0.315545895   0.002140960

   20   10.1  1.5  0.5   0.001960931  -0.050182308   0.017970838  -0.151665809   0.000883855   0.062959732   0.002892773   0.426365906
                         0.008451796  -0.216295848  -0.007854304   0.066291526   0.000506870   0.036166995  -0.001630689  -0.240313133

   21    1.1  1.5 -0.5  -0.003084259  -0.000120518  -0.018484446  -0.002190189   0.012935321  -0.000181546  -0.051671115   0.000350585
                        -0.000000000  -0.000000001  -0.000000006   0.000000065   0.000000003  -0.000000088   0.000000030   0.000000019

   22    2.1  1.5 -0.5  -0.000006651   0.000170206   0.006337346  -0.053484358   0.000310594   0.022123434  -0.000094321  -0.013902295
                        -0.000028666   0.000733622  -0.002769879   0.023377438   0.000178285   0.012708756   0.000053230   0.007835762

   23    3.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000006  -0.000000095   0.000000013   0.000000113   0.000000019   0.000000064
                         0.001334705   0.000052153  -0.049270306  -0.005837984   0.032494923  -0.000456139   0.021745426  -0.000147570

   24    4.1  1.5 -0.5   0.001882525   0.000073560  -0.006505358  -0.000770785   0.060819214  -0.000853803   0.016199959  -0.000109943
                         0.000000000   0.000000000  -0.000000006   0.000000096  -0.000000013  -0.000000112  -0.000000019  -0.000000064

   25    5.1  1.5 -0.5   0.000043953  -0.001124838   0.002489932  -0.021014228   0.000056547   0.004024509  -0.000094200  -0.013877868
                        -0.000010198   0.000260971   0.005696705  -0.048077670  -0.000098364  -0.007005898  -0.000167055  -0.024622248

   26    6.1  1.5 -0.5   0.000055808  -0.001428240   0.000736743  -0.006218833  -0.000463673  -0.033038015  -0.000034102  -0.005015180
                        -0.000012948   0.000331362   0.001685858  -0.014227817   0.000807444   0.057512690  -0.000060365  -0.008898002

   27    7.1  1.5 -0.5   0.000017239  -0.000441176   0.001762857  -0.014877800  -0.000731242  -0.052084605   0.000076876   0.011331548
                         0.000074303  -0.001901557  -0.000770602   0.006502919  -0.000419965  -0.029919863  -0.000043389  -0.006386804

   28    8.1  1.5 -0.5  -0.001092268   0.027952397  -0.041066714   0.346585030   0.002080445   0.148181024  -0.001031600  -0.152050034
                        -0.004707794   0.120480473   0.017949557  -0.151488566   0.001195480   0.085122180   0.000581557   0.085700115

   29    9.1  1.5 -0.5   0.003749616  -0.095958816   0.010074828  -0.085024386   0.001700817   0.121179008  -0.001051310  -0.154936106
                        -0.000869964   0.022263191   0.023049073  -0.194524222  -0.002961608  -0.210948978  -0.001865063  -0.274889096

   30   10.1  1.5 -0.5   0.222040893   0.008676295   0.165520645   0.019612269  -0.072608398   0.001018880   0.489426489  -0.003320736
                         0.000000034   0.000000050   0.000000049  -0.000000507  -0.000000036   0.000000743  -0.000000292  -0.000000200

   31    1.1  1.5 -1.5  -0.000005679   0.000145333  -0.006173872   0.052104783   0.000463351   0.033003028   0.000049037   0.007227101
                        -0.000024477   0.000626415   0.002698532  -0.022774433   0.000266171   0.018958494  -0.000027639  -0.004073425

   32    2.1  1.5 -1.5  -0.001505209  -0.000058816   0.012162734   0.001441184   0.045260067  -0.000635368  -0.037726096   0.000255963
                        -0.000000000  -0.000000000  -0.000000006   0.000000074  -0.000000001  -0.000000097   0.000000017  -0.000000003

   33    3.1  1.5 -1.5  -0.000144207   0.003690514   0.000953357  -0.008046498  -0.000061334  -0.004376196   0.000197910   0.029165176
                         0.000033458  -0.000856228   0.002181309  -0.018409269   0.000106946   0.007618109   0.000351076   0.051745141

   34    4.1  1.5 -1.5  -0.000033175   0.000848972  -0.001677222   0.014154999  -0.000145703  -0.010378653  -0.000356334  -0.052520100
                        -0.000142985   0.003659240   0.000733026  -0.006187003  -0.000083597  -0.005961982   0.000200873   0.029601968

   35    5.1  1.5 -1.5  -0.000000001  -0.000000001  -0.000000002   0.000000004   0.000000010  -0.000000016   0.000000039   0.000000055
                         0.004033281   0.000157601   0.020440110   0.002421935   0.028151040  -0.000395242   0.055831099  -0.000378826

   36    6.1  1.5 -1.5   0.000000000   0.000000000   0.000000001  -0.000000006  -0.000000005   0.000000013  -0.000000019  -0.000000026
                        -0.001490755  -0.000058251   0.038929793   0.004612777   0.021151597  -0.000296952  -0.035556679   0.000241258

   37    7.1  1.5 -1.5  -0.002221972  -0.000086824  -0.054570077  -0.006465952   0.007214490  -0.000101212  -0.029829102   0.000202378
                        -0.000000000  -0.000000000  -0.000000007   0.000000086  -0.000000002  -0.000000111   0.000000017  -0.000000008

   38    8.1  1.5 -1.5   0.024133077   0.000942984  -0.284244004  -0.033679610   0.410128236  -0.005757247  -0.002298421   0.000015373
                        -0.000000005   0.000000008  -0.000000070   0.000000965  -0.000000095  -0.000001172  -0.000000061  -0.000000460

   39    9.1  1.5 -1.5   0.000000014   0.000000038  -0.000000044   0.000000688  -0.000000115  -0.000000735  -0.000000229  -0.000000582
                        -0.152257803  -0.005949480   0.188582771   0.022344861  -0.367864357   0.005164180  -0.279949148   0.001899667

   40   10.1  1.5 -1.5  -0.000128293   0.003283286  -0.036986950   0.312153713   0.002915295   0.207647520   0.000481656   0.070988367
                        -0.000552970   0.014151641   0.016166613  -0.136438986   0.001674661   0.119282515  -0.000271468  -0.040011295

   41    1.1  0.5  0.5   0.004262206  -0.109077392   0.009880781  -0.083386777   0.002331376   0.166087828  -0.000073014  -0.010787245
                        -0.000988879   0.025306780   0.022605121  -0.190777577  -0.004059197  -0.289126339  -0.000129879  -0.019138740

   42    2.1  0.5  0.5  -0.135513438  -0.005295247   0.339546963   0.040232521  -0.168510727   0.002365234   0.101678891  -0.000689756
                        -0.000000030  -0.000000021   0.000000053  -0.000000692   0.000000047   0.000000862  -0.000000036   0.000000214

   43    3.1  0.5  0.5  -0.000000047  -0.000000098  -0.000000010   0.000000243  -0.000000079  -0.000000237  -0.000000218  -0.000000410
                         0.379780431   0.014839952   0.195769734   0.023196598  -0.108739335   0.001526501  -0.323900070   0.002197789

   44    4.1  0.5  0.5  -0.003945100   0.100959283   0.013671724  -0.115383213   0.000665722   0.047421496   0.002183502   0.321826430
                        -0.017003729   0.435154828  -0.005975329   0.050432787   0.000381789   0.027241110  -0.001230884  -0.181391422

   45    5.1  0.5  0.5   0.000000035   0.000000027  -0.000000056   0.000000714  -0.000000044  -0.000000894   0.000000051  -0.000000201
                        -0.109490220  -0.004278377   0.079972813   0.009475689  -0.348586617   0.004893415   0.166049721  -0.001126519

   46    6.1  0.5  0.5  -0.409933790  -0.016018208   0.062339308   0.007386633   0.286429220  -0.004021187   0.263769028  -0.001789794
                        -0.000000043  -0.000000093  -0.000000011   0.000000260  -0.000000077  -0.000000264  -0.000000205  -0.000000399

   47    7.1  0.5  0.5   0.000421365  -0.010782942   0.039932086  -0.337009148  -0.000862628  -0.061440227  -0.000689017  -0.101553507
                         0.001816051  -0.046476644  -0.017453610   0.147303045  -0.000495864  -0.035294117   0.000388569   0.057238732

   48    8.1  0.5  0.5   0.212682265   0.008310590  -0.147018785  -0.017420268  -0.169051902   0.002373235   0.219246324  -0.001487587
                         0.000000040   0.000000060   0.000000020  -0.000000202  -0.000000014   0.000000280  -0.000000112  -0.000000085

   49    9.1  0.5  0.5   0.000000032   0.000000051   0.000000016  -0.000000162  -0.000000011   0.000000226  -0.000000091  -0.000000070
                        -0.266974967  -0.010432101  -0.262131287  -0.031059754  -0.118800135   0.001668070  -0.121359195   0.000823414

   50   10.1  0.5  0.5  -0.004389915   0.112346586  -0.011954634   0.100896402   0.001155484   0.082353299   0.000274855   0.040460201
                         0.001018532  -0.026065263  -0.027351826   0.230837059  -0.002012676  -0.143360852   0.000487026   0.071784940

   51   11.1  0.5  0.5  -0.001574393   0.040290581   0.004281599  -0.036134433   0.003707437   0.264073222  -0.000347718  -0.051254000
                        -0.006785777   0.173660606  -0.001870898   0.015794004   0.002129047   0.151696171   0.000196341   0.028888301

   52   12.1  0.5  0.5   0.016217699  -0.415039031  -0.003695776   0.031193222   0.000206460   0.014738822  -0.001003556  -0.147886987
                        -0.003762731   0.096292261  -0.008456106   0.071365749  -0.000360180  -0.025657459  -0.001780191  -0.262382541

   53    1.1  0.5 -0.5  -0.000000001   0.000000015   0.000000021  -0.000000302   0.000000034   0.000000363   0.000000034   0.000000166
                        -0.111974598  -0.004375418   0.208205279   0.024670252   0.333435461  -0.004681068  -0.021969434   0.000148995

   54    2.1  0.5 -0.5  -0.001196771   0.030626697   0.036865157  -0.311125345   0.002051356   0.146117886   0.000600989   0.088577973
                        -0.005158234   0.132007187  -0.016112603   0.135989558   0.001177401   0.083937051  -0.000338491  -0.049925339

   55    3.1  0.5 -0.5   0.014455964  -0.369954066  -0.009290080   0.078406335   0.000760161   0.054164304   0.001079494   0.159038041
                        -0.003353994   0.085832192  -0.021255036   0.179382930  -0.001323768  -0.094289295   0.001914411   0.282166895

   56    4.1  0.5 -0.5   0.446712996   0.017455390  -0.125923596  -0.014920475   0.054688905  -0.000767430  -0.369425364   0.002506543
                         0.000000067   0.000000103  -0.000000038   0.000000396   0.000000027  -0.000000549   0.000000220   0.000000168

   57    5.1  0.5 -0.5  -0.004167673   0.106657287  -0.003794385   0.032029386   0.002436687   0.173634792  -0.000552958  -0.081532059
                         0.000966960  -0.024745333  -0.008682818   0.073278710  -0.004243591  -0.302264104  -0.000981470  -0.144654877

   58    6.1  0.5 -0.5  -0.003620280   0.092646987   0.006768234  -0.057121235  -0.003486956  -0.248366576   0.001558990   0.229783501
                        -0.015603736   0.399327244  -0.002958606   0.024967057  -0.002002768  -0.142673550  -0.000879154  -0.129513099

   59    7.1  0.5 -0.5  -0.047711113  -0.001864294  -0.367795260  -0.043579812  -0.070856024   0.000994992   0.116573527  -0.000791031
                        -0.000000009  -0.000000027  -0.000000016   0.000000248  -0.000000038  -0.000000286  -0.000000065  -0.000000189

   60    8.1  0.5 -0.5   0.001878291  -0.048067221  -0.015962033   0.134712664   0.002058003   0.146587176   0.001295875   0.190997331
                         0.008095550  -0.207179362   0.006977051  -0.058881417   0.001181891   0.084206563  -0.000730494  -0.107652079

   61    9.1  0.5 -0.5  -0.010162172   0.260067308   0.012439370  -0.104984328   0.000831079   0.059175638   0.000404366   0.059588521
                         0.002357753  -0.060337617   0.028459979  -0.240189722  -0.001446294  -0.103013183   0.000717286   0.105722573

   62   10.1  0.5 -0.5  -0.000000004  -0.000000037   0.000000035  -0.000000505   0.000000062   0.000000600   0.000000077   0.000000306
                         0.115330626   0.004506524  -0.251924258  -0.029850220   0.165331182  -0.002320778   0.082402096  -0.000559232

   63   11.1  0.5 -0.5   0.178273209   0.006966023  -0.039435362  -0.004672510   0.304542928  -0.004275270   0.058834568  -0.000399321
                         0.000000006   0.000000041  -0.000000034   0.000000497  -0.000000062  -0.000000590  -0.000000081  -0.000000310

   64   12.1  0.5 -0.5   0.000000063   0.000000100   0.000000028  -0.000000271  -0.000000027   0.000000385  -0.000000182  -0.000000160
                        -0.426062903  -0.016648480  -0.077885090  -0.009228461   0.029589493  -0.000415157  -0.301189573   0.002043576


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.004874221   0.027198615  -0.002890288   0.023674742  -0.000338547  -0.005349078  -0.000804987  -0.015268287
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.028274696  -0.005067080  -0.019885072  -0.002427614  -0.031696915   0.002006117  -0.015991749   0.000843131
                         0.009441506  -0.001692639  -0.086128350  -0.010514085   0.002906245  -0.000183943   0.021438175  -0.001130279

    3    3.1  1.5  1.5  -0.000000971   0.000000196  -0.000000238  -0.000000055  -0.000000008  -0.000000003   0.000000003   0.000000001
                         0.011078267   0.061819814   0.006100972  -0.049983742   0.001963434   0.031022535  -0.000942114  -0.017869164

    4    4.1  1.5  1.5   0.010712576   0.059779229   0.006361454  -0.052117429   0.001998238   0.031572442  -0.000878665  -0.016665716
                         0.000000973  -0.000000197   0.000000240   0.000000055   0.000000009   0.000000003  -0.000000003  -0.000000001

    5    5.1  1.5  1.5   0.020196797  -0.003618926  -0.005780923  -0.000706340  -0.000709601   0.000044914   0.022108428  -0.001165619
                        -0.060482725   0.010839001   0.001334713   0.000162961  -0.007739246   0.000489820   0.016491721  -0.000869489

    6    6.1  1.5  1.5   0.015480390  -0.002774741  -0.091097258  -0.011120841   0.002819145  -0.000178430   0.028547922  -0.001505125
                        -0.046359178   0.008307969   0.021032288   0.002567673   0.030746960  -0.001945994   0.021295245  -0.001122746

    7    7.1  1.5  1.5  -0.070753481   0.012679611   0.006976990   0.000851784   0.000865103  -0.000054754   0.021694932  -0.001143817
                        -0.023626429   0.004233706   0.030219355   0.003689676  -0.000079319   0.000005018  -0.029083735   0.001533376

    8    8.1  1.5  1.5  -0.153722525   0.027548300  -0.029772186  -0.003634600   0.338304108  -0.021411453  -0.118586090   0.006252174
                        -0.051332351   0.009196373  -0.128952902  -0.015739746  -0.031018635   0.001963276   0.158973844  -0.008381569

    9    9.1  1.5  1.5  -0.051762408   0.009273463  -0.127790304  -0.015597788  -0.031044729   0.001964954   0.156971614  -0.008275957
                         0.155010423  -0.027779102   0.029503768   0.003601831  -0.338588721   0.021429466   0.117092530  -0.006173430

   10   10.1  1.5  1.5   0.040388692   0.225370989  -0.034615431   0.283548111   0.021546060   0.340430297   0.031126969   0.590389417
                        -0.000000829   0.000000168  -0.000000204  -0.000000047   0.000000065   0.000000007  -0.000000021  -0.000000003

   11    1.1  1.5  0.5   0.082302761  -0.014749312   0.013887810   0.001695426   0.039512444  -0.002500764  -0.015764529   0.000831148
                         0.027483229  -0.004923812   0.060152590   0.007341995  -0.003622841   0.000229302   0.021133572  -0.001114224

   12    2.1  1.5  0.5   0.011199779   0.062497085   0.001179172  -0.009664840   0.000901388   0.014242066  -0.001294036  -0.024544123
                         0.000000600  -0.000000121   0.000000147   0.000000034   0.000000005   0.000000002  -0.000000002  -0.000000001

   13    3.1  1.5  0.5  -0.015718553   0.002817093   0.060759511   0.007417488  -0.001627861   0.000103030  -0.024670699   0.001300708
                         0.047072211  -0.008435742  -0.014027999  -0.001712577  -0.017754247   0.001123678  -0.018403040   0.000970260

   14    4.1  1.5  0.5   0.040368779  -0.007234434  -0.015226779  -0.001858924  -0.021075938   0.001333909  -0.017290270   0.000911592
                         0.013480086  -0.002416061  -0.065951815  -0.008051245   0.001932423  -0.000122307   0.023178944  -0.001222058

   15    5.1  1.5  0.5  -0.000001080   0.000000219  -0.000000266  -0.000000061  -0.000000010  -0.000000003   0.000000003   0.000000001
                         0.005979838   0.033370331   0.010557831  -0.086491613   0.002620229   0.041399978  -0.000002086  -0.000039545

   16    6.1  1.5  0.5   0.000000467  -0.000000094   0.000000115   0.000000026   0.000000004   0.000000001  -0.000000001  -0.000000000
                        -0.002591202  -0.014460131  -0.004564543   0.037393539  -0.001132283  -0.017890226  -0.000006725  -0.000127565

   17    7.1  1.5  0.5   0.013782330   0.076908252   0.001452114  -0.011901953   0.001110723   0.017549594  -0.001604493  -0.030432612
                         0.000000737  -0.000000149   0.000000181   0.000000042   0.000000006   0.000000002  -0.000000002  -0.000000001

   18    8.1  1.5  0.5  -0.010148410  -0.056636241  -0.038508983   0.315466980   0.037379026   0.590593617   0.005963297   0.113106934
                        -0.000003410   0.000000690  -0.000000839  -0.000000193   0.000000133   0.000000037  -0.000000043  -0.000000014

   19    9.1  1.5  0.5  -0.000002473   0.000000500  -0.000000608  -0.000000140   0.000000103   0.000000027  -0.000000034  -0.000000009
                         0.056912348   0.317581477  -0.001553560   0.012700322  -0.012481134  -0.197203905   0.029922538   0.567544150

   20   10.1  1.5  0.5  -0.089792223   0.016091481  -0.017289903  -0.002110758   0.194012904  -0.012279183  -0.067258617   0.003546053
                        -0.029984197   0.005371753  -0.074888123  -0.009140697  -0.017788773   0.001125932   0.090165386  -0.004753834

   21    1.1  1.5 -0.5  -0.015549474  -0.086770227  -0.007535208   0.061734961  -0.002511255  -0.039678183   0.001390073   0.026365664
                        -0.000001283   0.000000260  -0.000000316  -0.000000073  -0.000000011  -0.000000003   0.000000003   0.000000001

   22    2.1  1.5 -0.5   0.059279371  -0.010623346   0.002174167   0.000265410   0.014182575  -0.000897622  -0.014675396   0.000773727
                         0.019794996  -0.003546769   0.009417119   0.001148915  -0.001300381   0.000082306   0.019673504  -0.001037244

   23    3.1  1.5 -0.5   0.000000178  -0.000000036   0.000000044   0.000000010   0.000000002   0.000000000  -0.000000000  -0.000000000
                         0.008893692   0.049627271  -0.007612624   0.062357862  -0.001128391  -0.017828719  -0.001622728  -0.030778487

   24    4.1  1.5 -0.5  -0.007627213  -0.042559970   0.008263059  -0.067686754   0.001339505   0.021164343   0.001524607   0.028917415
                         0.000000286  -0.000000058   0.000000070   0.000000016   0.000000003   0.000000001  -0.000000001  -0.000000000

   25    5.1  1.5 -0.5   0.010569688  -0.001892987   0.084274679   0.010287154  -0.003780050   0.000239251   0.000031698  -0.000001674
                        -0.031652183   0.005672307  -0.019457072  -0.002375346  -0.041227047   0.002609283   0.000023644  -0.000001245

   26    6.1  1.5 -0.5  -0.004580088   0.000820276  -0.036435076  -0.004447519   0.001633478  -0.000103388   0.000102251  -0.000005390
                         0.013715618  -0.002457941   0.008412015   0.001026950   0.017815497  -0.001127553   0.000076274  -0.000004022

   27    7.1  1.5 -0.5   0.072948566  -0.013072977   0.002677420   0.000326844   0.017476288  -0.001106083  -0.018196234   0.000959355
                         0.024359512  -0.004364618   0.011596892   0.001414853  -0.001602377   0.000101422   0.024393461  -0.001286094

   28    8.1  1.5 -0.5  -0.053720094   0.009626997  -0.070967184  -0.008663789   0.588126660  -0.037222879   0.067628788  -0.003565603
                        -0.017939213   0.003211101  -0.307380992  -0.037521734  -0.053924508   0.003413045  -0.090661598   0.004779895

   29    9.1  1.5 -0.5   0.100588966  -0.018023665  -0.012374756  -0.001513876   0.018005836  -0.001139699  -0.454918754   0.023984628
                        -0.301230567   0.053982986   0.002857197   0.000348896   0.196380167  -0.012428990  -0.339345384   0.017891224

   30   10.1  1.5 -0.5   0.016964418   0.094666232   0.009381239  -0.076858127  -0.012330696  -0.194826711   0.005930719   0.112487859
                         0.000001513  -0.000000306   0.000000366   0.000000084  -0.000000072  -0.000000014   0.000000045   0.000000004

   31    1.1  1.5 -1.5  -0.025798288   0.004623271   0.005325864   0.000650198   0.005326735  -0.000337133   0.009129198  -0.000481317
                        -0.008614695   0.001543826   0.023067912   0.002816204  -0.000488401   0.000030911  -0.012238396   0.000645243

   32    2.1  1.5 -1.5   0.005342315   0.029809403  -0.010790704   0.088394054  -0.002014532  -0.031829870  -0.001410107  -0.026745680
                        -0.000000583   0.000000118  -0.000000144  -0.000000033  -0.000000005  -0.000000001   0.000000002   0.000000001

   33    3.1  1.5 -1.5  -0.019580553   0.003507930  -0.048702574  -0.005944539   0.002832532  -0.000179280  -0.014323147   0.000755160
                         0.058636946  -0.010508207   0.011244276   0.001372705   0.030892951  -0.001955232  -0.010684311   0.000563305

   34    4.1  1.5 -1.5  -0.056701420   0.010161345  -0.011724270  -0.001431305  -0.031440562   0.001989891   0.009964746  -0.000525368
                        -0.018934233   0.003392101  -0.050781571  -0.006198343   0.002882742  -0.000182459  -0.013358515   0.000704301

   35    5.1  1.5 -1.5  -0.000000463   0.000000094  -0.000000114  -0.000000026  -0.000000004  -0.000000001   0.000000001   0.000000000
                         0.011427185   0.063765748  -0.000724895   0.005933003   0.000491875   0.007771710  -0.001454194  -0.027581868

   36    6.1  1.5 -1.5   0.000000476  -0.000000096   0.000000117   0.000000027   0.000000005   0.000000001  -0.000000002  -0.000000000
                         0.008759083   0.048875514  -0.011413415   0.093493677  -0.001954157  -0.030875932  -0.001877754  -0.035615605

   37    7.1  1.5 -1.5  -0.013367752  -0.074593989   0.003786720  -0.031014316   0.000054984   0.000868732   0.001912998   0.036284069
                        -0.000000317   0.000000064  -0.000000078  -0.000000018  -0.000000002  -0.000000001   0.000000001   0.000000000

   38    8.1  1.5 -1.5  -0.029042763  -0.162066729  -0.016153944   0.132345132   0.021501274   0.339723160  -0.010456595  -0.198331398
                        -0.000002556   0.000000518  -0.000000629  -0.000000145   0.000000091   0.000000027  -0.000000027  -0.000000010

   39    9.1  1.5 -1.5   0.000002537  -0.000000514   0.000000634   0.000000146  -0.000000117  -0.000000026  -0.000000002   0.000000012
                        -0.029286099  -0.163424533  -0.016008254   0.131151951   0.021519365   0.340008966  -0.010324858  -0.195833471

   40   10.1  1.5 -1.5  -0.213767768   0.038309009   0.063786866   0.007787277  -0.339008294   0.021456054  -0.353005011   0.018611420
                        -0.071382240   0.012793213   0.276280233   0.033728125   0.031083180  -0.001967340   0.473230520  -0.024950014

   41    1.1  0.5  0.5   0.000031297  -0.000005608   0.000059789   0.000007297   0.000011989  -0.000000760  -0.000231159   0.000012187
                        -0.000093724   0.000016796  -0.000013804  -0.000001685   0.000130762  -0.000008276  -0.000172433   0.000009091

   42    2.1  0.5  0.5  -0.000006285  -0.000035071   0.000013076  -0.000107111  -0.000022131  -0.000349667  -0.000009707  -0.000184133
                         0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000

   43    3.1  0.5  0.5   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000020425  -0.000113973  -0.000005479   0.000044889   0.000017556   0.000277380  -0.000018297  -0.000347028

   44    4.1  0.5  0.5  -0.000064949   0.000011639  -0.000029715  -0.000003628   0.000542334  -0.000034325  -0.000082442   0.000004347
                        -0.000021689   0.000003884  -0.000128704  -0.000015710  -0.000049726   0.000003148   0.000110520  -0.000005828

   45    5.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.000013041  -0.000072768   0.000006262  -0.000051292  -0.000015444  -0.000244011  -0.000014654  -0.000277947

   46    6.1  0.5  0.5   0.000027482   0.000153358   0.000012471  -0.000102176  -0.000024486  -0.000386880   0.000023248   0.000440947
                         0.000000002  -0.000000000   0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000

   47    7.1  0.5  0.5   0.000008816  -0.000001580  -0.000014114  -0.000001723   0.000107876  -0.000006828   0.000043642  -0.000002301
                         0.000002944  -0.000000528  -0.000061133  -0.000007463  -0.000009891   0.000000626  -0.000058506   0.000003084

   48    8.1  0.5  0.5  -0.034583361  -0.192991530  -0.061040048   0.500050820  -0.018578132  -0.293537005   0.000000171   0.000003071
                        -0.000006244   0.000001264  -0.000001537  -0.000000354  -0.000000068  -0.000000020   0.000000022   0.000000007

   49    9.1  0.5  0.5  -0.000005039   0.000001020  -0.000001240  -0.000000286  -0.000000054  -0.000000016   0.000000018   0.000000006
                         0.094247477   0.525920417   0.009916110  -0.081275428   0.009342004   0.147605078  -0.013403037  -0.254216922

   50   10.1  0.5  0.5  -0.116292853   0.020841366   0.378368096   0.046191569  -0.011370778   0.000719674  -0.213395559   0.011250808
                         0.348260733  -0.062411277  -0.087356676  -0.010664760  -0.124015241   0.007849007  -0.159181833   0.008392514

   51   11.1  0.5  0.5   0.316074848  -0.056643311  -0.094157787  -0.011495043  -0.146139808   0.009249283  -0.150903779   0.007956073
                         0.105545060  -0.018915888  -0.407825887  -0.049787163   0.013399348  -0.000848072   0.202298187  -0.010665723

   52   12.1  0.5  0.5  -0.122020256   0.021859787  -0.360981970  -0.044061476   0.024080125  -0.001524113  -0.099247038   0.005232599
                         0.365407868  -0.065483982   0.083342263   0.010174474   0.262629403  -0.016621960  -0.074033046   0.003903217

   53    1.1  0.5 -0.5  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000000
                         0.000017707   0.000098812   0.000007489  -0.000061361  -0.000008311  -0.000131310   0.000015205   0.000288388

   54    2.1  0.5 -0.5   0.000033265  -0.000005961  -0.000024096  -0.000002942   0.000348206  -0.000022038   0.000110097  -0.000005805
                         0.000011108  -0.000001992  -0.000104366  -0.000012740  -0.000031927   0.000002021  -0.000147593   0.000007781

   55    3.1  0.5 -0.5   0.000036099  -0.000006468   0.000043739   0.000005338   0.000025326  -0.000001603  -0.000278163   0.000014666
                        -0.000108105   0.000019373  -0.000010098  -0.000001233   0.000276222  -0.000017482  -0.000207495   0.000010940

   56    4.1  0.5 -0.5  -0.000012271  -0.000068475  -0.000016124   0.000132090   0.000034469   0.000544609  -0.000007270  -0.000137881
                        -0.000000002   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000

   57    5.1  0.5 -0.5   0.000023048  -0.000004131  -0.000049977  -0.000006102  -0.000022280   0.000001410  -0.000222790   0.000011745
                        -0.000069021   0.000012369   0.000011539   0.000001409  -0.000242992   0.000015379  -0.000166190   0.000008762

   58    6.1  0.5 -0.5  -0.000145463   0.000026068  -0.000022985  -0.000002806   0.000385264  -0.000024384  -0.000263650   0.000013900
                        -0.000048574   0.000008703  -0.000099557  -0.000012151  -0.000035324   0.000002237   0.000353444  -0.000018635

   59    7.1  0.5 -0.5   0.000001666   0.000009295  -0.000007659   0.000062742   0.000006856   0.000108328   0.000003848   0.000072990
                        -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   60    8.1  0.5 -0.5   0.183054919  -0.032804807   0.112490961   0.013733051   0.292310877  -0.018500523  -0.000001830   0.000000084
                         0.061127959  -0.010947764   0.487233626   0.059475127  -0.026801576   0.001696354   0.000002466  -0.000000150

   61    9.1  0.5 -0.5  -0.166577248   0.029846494  -0.079192245  -0.009661662   0.013477178  -0.000853031  -0.203769250   0.010743303
                         0.498842967  -0.089396721   0.018283421   0.002231934   0.146988519  -0.009302977  -0.152001105   0.008013915

   62   10.1  0.5 -0.5  -0.000000641   0.000000130  -0.000000158  -0.000000036  -0.000000010  -0.000000002   0.000000004   0.000000001
                        -0.065799164  -0.367164222   0.047406731  -0.388321522   0.007881931   0.124535435   0.014036202   0.266226446

   63   11.1  0.5 -0.5   0.059718301   0.333231255  -0.051096943   0.418554229  -0.009288082  -0.146752806  -0.013306267  -0.252381670
                        -0.000001201   0.000000243  -0.000000296  -0.000000068  -0.000000019  -0.000000003   0.000000005   0.000000002

   64   12.1  0.5 -0.5   0.000006598  -0.000001335   0.000001624   0.000000374   0.000000069   0.000000020  -0.000000021  -0.000000008
                        -0.069036238  -0.385242589  -0.045220942   0.370477956  -0.016691689  -0.263731030   0.006528032   0.123817877


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5  -0.000000000  -0.000138121   0.047362359  -0.000292795  -0.022378523  -0.000197553   0.002795601   0.000136501
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000100587  -0.000000000  -0.000088645  -0.014339406  -0.000283832   0.032152512  -0.000490804   0.010052207
                         0.000030244   0.000000001  -0.000063307  -0.010239129  -0.000139180   0.015766477  -0.000983238   0.020140704

    3    3.1  1.5  1.5  -0.000000000  -0.000000000  -0.000000000   0.000000006   0.000000001  -0.000000020   0.000000016  -0.000000109
                        -0.000000000  -0.000147019   0.007942999  -0.000049100   0.014021504   0.000123764   0.044926682   0.002193357

    4    4.1  1.5  1.5  -0.000000000  -0.000136081   0.004046163  -0.000025010   0.015923818   0.000140558   0.044849104   0.002189568
                         0.000000000   0.000000000   0.000000000  -0.000000006  -0.000000001   0.000000019  -0.000000016   0.000000109

    5    5.1  1.5  1.5  -0.000007341   0.000000000  -0.000044630  -0.007219200  -0.000053833   0.006093769   0.002030187  -0.041585052
                         0.000024414   0.000000000   0.000062500   0.010110141   0.000109705  -0.012427000  -0.001013382   0.020755064

    6    6.1  1.5  1.5  -0.000013791   0.000000000  -0.000125613  -0.020319082  -0.000056765   0.006432306  -0.000911031   0.018661327
                         0.000045865   0.000000000   0.000175915   0.028455892   0.000115796  -0.013117375   0.000454755  -0.009313851

    7    7.1  1.5  1.5   0.000206179  -0.000000000   0.000186315   0.030138042  -0.000111839   0.012669487  -0.000580136   0.011881774
                         0.000061994   0.000000000   0.000133028   0.021520230  -0.000054843   0.006212678  -0.001162218   0.023806442

    8    8.1  1.5  1.5  -0.480987796   0.000000145  -0.001112746  -0.179994024   0.003486566  -0.394958431  -0.000379198   0.007765806
                        -0.144622794  -0.000001121  -0.000794385  -0.128525702   0.001710035  -0.193673920  -0.000759942   0.015559621

    9    9.1  1.5  1.5  -0.143432183  -0.000001107   0.000629274   0.101816343  -0.001386741   0.157036541   0.013092083  -0.268165901
                         0.477028051  -0.000000144  -0.000881505  -0.142588857   0.002827030  -0.320243987  -0.006534927   0.133841378

   10   10.1  1.5  1.5   0.000000012   0.001454512  -0.377719141   0.002335059   0.189248001   0.001670621   0.007337891   0.000358124
                        -0.000000040   0.000000000   0.000000000   0.000000008  -0.000000001   0.000000039  -0.000000010   0.000000061

   11    1.1  1.5  0.5  -0.000108649   0.000000000  -0.000036311  -0.005873591   0.000128997  -0.014613024   0.000855531  -0.017522147
                        -0.000032668  -0.000000001  -0.000025921  -0.004194069   0.000063239  -0.007165721   0.001713934  -0.035107549

   12    2.1  1.5  0.5   0.000000000  -0.000293121   0.042728362  -0.000264141   0.024441138   0.000215773  -0.009370674  -0.000457502
                        -0.000000000  -0.000000000  -0.000000001  -0.000000011  -0.000000000  -0.000000031   0.000000003  -0.000000016

   13    3.1  1.5  0.5  -0.000079948  -0.000000001  -0.000128743  -0.020827404   0.000109716  -0.012424249  -0.000657127   0.013459834
                         0.000265891  -0.000000000   0.000180317   0.029167772  -0.000223664   0.025336720   0.000328003  -0.006717792

   14    4.1  1.5  0.5  -0.000125842   0.000000000  -0.000001398  -0.000225868   0.000352036  -0.039878434  -0.000384556   0.007876030
                        -0.000037838  -0.000000001  -0.000000984  -0.000161283   0.000172665  -0.019555001  -0.000770434   0.015780489

   15    5.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000005   0.000000000  -0.000000021   0.000000006  -0.000000037
                        -0.000000000   0.000167966  -0.043112963   0.000266523   0.002257450   0.000019919   0.015224301   0.000743263

   16    6.1  1.5  0.5  -0.000000001  -0.000000000  -0.000000001  -0.000000014  -0.000000001  -0.000000037   0.000000003  -0.000000017
                        -0.000000000   0.000206125  -0.005853836   0.000036181  -0.050231277  -0.000443445   0.013019751   0.000635673

   17    7.1  1.5  0.5  -0.000000000   0.000045023   0.016951269  -0.000104798  -0.041618505  -0.000367411   0.017000169   0.000829995
                         0.000000001   0.000000000   0.000000000   0.000000009   0.000000000   0.000000028  -0.000000005   0.000000028

   18    8.1  1.5  0.5   0.000000104  -0.289929542   0.367836213  -0.002273952  -0.090769555  -0.000801363   0.235294794   0.011487406
                        -0.000000636  -0.000000045   0.000000000  -0.000000025  -0.000000005   0.000000091  -0.000000075   0.000000523

   19    9.1  1.5  0.5  -0.000000592  -0.000000045   0.000000001  -0.000000037  -0.000000007   0.000000102  -0.000000092   0.000000634
                        -0.000000090   0.289156042   0.284949515  -0.001761585  -0.240605797  -0.002123939  -0.248213064  -0.012117872

   20   10.1  1.5  0.5   0.551720063  -0.000000167  -0.000445610  -0.072080761   0.001215611  -0.137708033   0.010637814  -0.217873235
                         0.165890481   0.000001257  -0.000318133  -0.051469651   0.000595877  -0.067527255   0.021311388  -0.436532990

   21    1.1  1.5 -0.5   0.000000000  -0.000113454   0.007217291  -0.000044614   0.016275381   0.000143664   0.039237299   0.001915594
                        -0.000000001  -0.000000000   0.000000000  -0.000000006  -0.000000001   0.000000015  -0.000000014   0.000000096

   22    2.1  1.5 -0.5   0.000280706  -0.000000000   0.000214971   0.034773286  -0.000193720   0.021944736   0.000204320  -0.004184649
                         0.000084402   0.000000000   0.000153487   0.024830052  -0.000095028   0.010760938   0.000409342  -0.008384404

   23    3.1  1.5 -0.5   0.000000001   0.000000000   0.000000001   0.000000011   0.000000000   0.000000034  -0.000000005   0.000000028
                         0.000000000  -0.000277650   0.035840476  -0.000221561   0.028218989   0.000249125  -0.015043133  -0.000734440

   24    4.1  1.5 -0.5   0.000000000  -0.000131407   0.000277541  -0.000001710   0.044414947   0.000392100  -0.017636770  -0.000861076
                        -0.000000001  -0.000000000  -0.000000001  -0.000000012  -0.000000000  -0.000000035   0.000000005  -0.000000029

   25    5.1  1.5 -0.5  -0.000048365  -0.000000001  -0.000154876  -0.025053548  -0.000008751   0.000993909  -0.000665018   0.013621934
                         0.000160853  -0.000000000   0.000216905   0.035086283   0.000017893  -0.002026875   0.000331951  -0.006798695

   26    6.1  1.5 -0.5  -0.000059352  -0.000000001  -0.000021014  -0.003401747   0.000195273  -0.022115813  -0.000568760   0.011649413
                         0.000197395  -0.000000000   0.000029453   0.004763981  -0.000398136   0.045100688   0.000283886  -0.005814214

   27    7.1  1.5 -0.5  -0.000043116   0.000000000   0.000085281   0.013795318   0.000329872  -0.037367618  -0.000370675   0.007591744
                        -0.000012964  -0.000000001   0.000060906   0.009850620   0.000161789  -0.018323784  -0.000742625   0.015210890

   28    8.1  1.5 -0.5   0.277650216  -0.000000084   0.001850608   0.299353252   0.000719472  -0.081498415  -0.005130387   0.105075281
                         0.083483511   0.000000639   0.001321405   0.213754790   0.000352905  -0.039963990  -0.010278114   0.210529868

   29    9.1  1.5 -0.5  -0.083260786  -0.000000593   0.001023712   0.165588167   0.000935035  -0.105933859   0.010842174  -0.222088488
                         0.276909476  -0.000000084  -0.001433595  -0.231898221  -0.001907047   0.216030478  -0.005412032   0.110844164

   30   10.1  1.5 -0.5  -0.000000202   0.576120369   0.088570656  -0.000547518   0.153373507   0.001353802   0.487882976   0.023818866
                         0.000001252   0.000000089   0.000000002  -0.000000047  -0.000000012   0.000000194  -0.000000170   0.000001172

   31    1.1  1.5 -1.5  -0.000132272   0.000000000  -0.000238283  -0.038544536  -0.000177375   0.020092796   0.000060957  -0.001248429
                        -0.000039771  -0.000000000  -0.000170147  -0.027522932  -0.000086979   0.009852810   0.000122134  -0.002501362

   32    2.1  1.5 -1.5   0.000000000  -0.000105035  -0.017619828   0.000108930   0.035810136   0.000316120   0.022509883   0.001098929
                        -0.000000001  -0.000000000  -0.000000000  -0.000000008  -0.000000001   0.000000001  -0.000000009   0.000000063

   33    3.1  1.5 -1.5  -0.000042333   0.000000000  -0.000028528  -0.004615788   0.000054473  -0.006173385   0.001962456  -0.040198120
                         0.000140792  -0.000000000   0.000039962   0.006464189  -0.000111132   0.012589357  -0.000979583   0.020062847

   34    4.1  1.5 -1.5  -0.000130318   0.000000000  -0.000020357  -0.003292857   0.000126210  -0.014297369   0.000977891  -0.020028203
                        -0.000039184   0.000000000  -0.000014529  -0.002351282   0.000061867  -0.007010935   0.001959066  -0.040128708

   35    5.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000001  -0.000000001   0.000000034  -0.000000015   0.000000105
                        -0.000000000   0.000025493  -0.012423035   0.000076800   0.013840677   0.000122202  -0.046476760  -0.002269053

   36    6.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000016   0.000000008  -0.000000053
                         0.000000000   0.000047893  -0.034965738   0.000216159   0.014609589   0.000128961   0.020856484   0.001018224

   37    7.1  1.5 -1.5   0.000000000  -0.000215298   0.037032713  -0.000228932   0.014110750   0.000124562   0.026606827   0.001298964
                        -0.000000000  -0.000000000  -0.000000000  -0.000000009  -0.000000001  -0.000000001  -0.000000009   0.000000066

   38    8.1  1.5 -1.5  -0.000000183   0.502259906  -0.221171211   0.001367206  -0.439888338  -0.003883345   0.017389926   0.000849295
                         0.000001115   0.000000078   0.000000006   0.000000144   0.000000007   0.000000309   0.000000005  -0.000000079

   39    9.1  1.5 -1.5  -0.000001102  -0.000000077   0.000000006   0.000000138  -0.000000000   0.000000416  -0.000000095   0.000000603
                        -0.000000181   0.498125037   0.175208875  -0.001083068   0.356674482   0.003148832  -0.299710635  -0.014632426

   40   10.1  1.5 -1.5   0.001392910  -0.000000000   0.001900327   0.307396197   0.001500002  -0.169918335   0.000159981  -0.003276865
                         0.000418818  -0.000000042   0.001356929   0.219497899   0.000735506  -0.083322057   0.000320404  -0.006565576

   41    1.1  0.5  0.5  -0.000002362   0.000000001  -0.000395569  -0.063983448  -0.000502751   0.056944939   0.000905993  -0.018555831
                         0.000007854   0.000000000   0.000553941   0.089605728   0.001025145  -0.116127584  -0.000452194   0.009261204

   42    2.1  0.5  0.5  -0.000000000   0.001017606  -0.129561927   0.000800929  -0.099354792  -0.000877093  -0.051236378  -0.002501347
                         0.000000002   0.000000000   0.000000001   0.000000044   0.000000003   0.000000057   0.000000019  -0.000000146

   43    3.1  0.5  0.5  -0.000000001  -0.000000000  -0.000000002  -0.000000021   0.000000001  -0.000000137   0.000000045  -0.000000303
                        -0.000000000   0.000466366  -0.096711757   0.000597863  -0.043166494  -0.000381133   0.134235354   0.006553536

   44    4.1  0.5  0.5   0.000464579  -0.000000000   0.000145041   0.023461514  -0.000396621   0.044930423  -0.003508076   0.071848952
                         0.000139689   0.000000001   0.000103542   0.016752819  -0.000194412   0.022032325  -0.007027937   0.143957279

   45    5.1  0.5  0.5  -0.000000002  -0.000000000  -0.000000001  -0.000000045  -0.000000003  -0.000000051  -0.000000023   0.000000173
                        -0.000000000   0.000704569  -0.003940084   0.000024333  -0.162060855  -0.001430645  -0.054781750  -0.002674388

   46    6.1  0.5  0.5   0.000000000  -0.000151686  -0.027888992   0.000172421   0.104744765   0.000924731  -0.132274893  -0.006457871
                        -0.000000001  -0.000000000  -0.000000002  -0.000000022   0.000000001  -0.000000133   0.000000042  -0.000000280

   47    7.1  0.5  0.5   0.000652929  -0.000000000   0.000848566   0.137263196   0.000092042  -0.010425980   0.000577937  -0.011836763
                         0.000196322   0.000000001   0.000605901   0.098013520   0.000045068  -0.005112538   0.001157811  -0.023716259

   48    8.1  0.5  0.5   0.000000000  -0.000104306   0.337771482  -0.002088132  -0.285971209  -0.002524394  -0.296174884  -0.014459352
                         0.000000000  -0.000000000  -0.000000001   0.000000040   0.000000008  -0.000000137   0.000000111  -0.000000775

   49    9.1  0.5  0.5  -0.000000002  -0.000000000  -0.000000001   0.000000033   0.000000006  -0.000000110   0.000000090  -0.000000625
                        -0.000000001  -0.001990912   0.439776670  -0.002718685  -0.105774025  -0.000933834   0.280951100   0.013716407

   50   10.1  0.5  0.5   0.000762000   0.000000007   0.001453339   0.235116136  -0.001258674   0.142536415   0.005396470  -0.110533722
                        -0.002534267   0.000000001  -0.002035564  -0.329268773   0.002565974  -0.290673929  -0.002693603   0.055167292

   51   11.1  0.5  0.5   0.001953268  -0.000000001   0.000050708   0.008199282  -0.004043511   0.458047126   0.003485452  -0.071384871
                         0.000587306   0.000000008   0.000036043   0.005854749  -0.001983215   0.224610424   0.006982960  -0.143027408

   52   12.1  0.5  0.5   0.000326749   0.000000003   0.000196034   0.031720429  -0.000501011   0.056787808  -0.022533246   0.461560986
                        -0.001086704   0.000000000  -0.000274626  -0.044422931   0.001022275  -0.115807122   0.011247720  -0.230364686

   53    1.1  0.5 -0.5   0.000000001   0.000000000   0.000000001   0.000000020   0.000000001   0.000000050  -0.000000003   0.000000012
                         0.000000000   0.000008201  -0.110104806   0.000680680   0.129338092   0.001141788  -0.020738582  -0.001012573

   54    2.1  0.5 -0.5   0.000974508  -0.000000000   0.000651840   0.105440363  -0.000787482   0.089206758  -0.001117155   0.022880558
                         0.000293014   0.000000002   0.000465395   0.075290257  -0.000386217   0.043743903  -0.002238013   0.045843718

   55    3.1  0.5 -0.5   0.000134287   0.000000001   0.000347410   0.056200562  -0.000167929   0.019005331   0.005863636  -0.120106999
                        -0.000446614   0.000000000  -0.000486567  -0.078706167   0.000342144  -0.038757498  -0.002926876   0.059945300

   56    4.1  0.5 -0.5   0.000000000  -0.000485125   0.028828798  -0.000178207   0.050041645   0.000441706   0.160891175   0.007854839
                        -0.000000001   0.000000000   0.000000000  -0.000000020  -0.000000004   0.000000069  -0.000000056   0.000000390

   57    5.1  0.5 -0.5   0.000202877   0.000000002   0.000014103   0.002289639  -0.000629930   0.071352111  -0.002392830   0.049015938
                        -0.000674729   0.000000000  -0.000019829  -0.003206527   0.001284498  -0.145508066   0.001194453  -0.024463808

   58    6.1  0.5 -0.5  -0.000145262   0.000000000   0.000140307   0.022696680   0.000830221  -0.094046204  -0.002884135   0.059069822
                        -0.000043677  -0.000000001   0.000100214   0.016206684   0.000407259  -0.046116994  -0.005778050   0.118352876

   59    7.1  0.5 -0.5   0.000000000  -0.000681805   0.168664860  -0.001042679  -0.011612024  -0.000102483  -0.026506035  -0.001294039
                        -0.000000001  -0.000000000  -0.000000001  -0.000000018  -0.000000000  -0.000000060   0.000000011  -0.000000066

   60    8.1  0.5 -0.5  -0.000099888  -0.000000000  -0.001699345  -0.274885907  -0.002266614   0.256762296  -0.006457791   0.132262406
                        -0.000030034   0.000000000  -0.001213475  -0.196283753  -0.001111316   0.125907330  -0.012937149   0.265002298

   61    9.1  0.5 -0.5  -0.000573272   0.000000002  -0.001579839  -0.255560399  -0.000411247   0.046570152   0.012272466  -0.251380819
                         0.001906591  -0.000000000   0.002212545   0.357899988   0.000838404  -0.094970339  -0.006125880   0.125463956

   62   10.1  0.5 -0.5   0.000000007   0.000000000   0.000000006   0.000000136   0.000000005   0.000000367  -0.000000037   0.000000203
                         0.000000002  -0.002646347   0.404595505  -0.002501143   0.323740579   0.002858056  -0.123535962  -0.006031367

   63   11.1  0.5 -0.5   0.000000002  -0.002039652   0.010075034  -0.000062213   0.510153911   0.004503679  -0.159851929  -0.007804493
                        -0.000000008  -0.000000000  -0.000000006  -0.000000134  -0.000000004  -0.000000375   0.000000041  -0.000000232

   64   12.1  0.5 -0.5   0.000000003   0.000000000  -0.000000002   0.000000053   0.000000012  -0.000000249   0.000000180  -0.000001241
                         0.000000001  -0.001134765   0.054585551  -0.000337415   0.128981180   0.001138446   0.515855049   0.025184487


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.002%   0.505%   0.000%  20.998%   2.108%   0.000%   0.280%   0.000%   0.025%   0.000%
    2    2.1  1.5  1.5   3.785%   0.014%   4.287%   0.000%   0.000%   7.369%   0.022%  14.041%   0.000%  11.624%
    3    3.1  1.5  1.5   0.018%   4.857%   0.000%   0.026%  20.674%   0.000%  10.016%   0.015%   0.110%   0.000%
    4    4.1  1.5  1.5   0.002%   0.575%   0.000%   0.830%  20.635%   0.000%  13.526%   0.021%   0.043%   0.000%
    5    5.1  1.5  1.5   5.381%   0.020%   0.671%   0.000%   0.000%   1.701%   0.006%   3.956%   0.000%  18.797%
    6    6.1  1.5  1.5   0.084%   0.000%   0.127%   0.000%   0.000%   6.870%   0.025%  16.139%   0.000%  23.593%
    7    7.1  1.5  1.5   2.820%   0.010%   0.048%   0.000%   0.000%   0.780%   0.000%   0.187%   0.000%  32.397%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5  45.957%   0.167%   0.450%   0.000%   0.000%   0.243%   0.001%   0.485%   0.000%   0.262%
   12    2.1  1.5  0.5   0.041%  11.355%   0.000%  11.463%   6.375%   0.000%   0.924%   0.001%   0.137%   0.000%
   13    3.1  1.5  0.5   0.076%   0.000%  19.443%   0.000%   0.000%   3.314%   0.012%   7.807%   0.000%   5.060%
   14    4.1  1.5  0.5   0.001%   0.000%   3.516%   0.000%   0.000%  10.412%   0.024%  15.828%   0.000%   6.008%
   15    5.1  1.5  0.5   0.042%  11.464%   0.000%  25.927%   3.221%   0.000%   0.013%   0.000%   0.211%   0.000%
   16    6.1  1.5  0.5   0.003%   0.738%   0.000%   3.574%   2.676%   0.000%  16.443%   0.025%   1.117%   0.000%
   17    7.1  1.5  0.5   0.044%  12.040%   0.000%   8.640%  13.619%   0.000%   0.204%   0.000%   0.613%   0.000%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.167%  45.957%   0.000%   0.450%   0.243%   0.000%   0.485%   0.001%   0.262%   0.000%
   22    2.1  1.5 -0.5  11.355%   0.041%  11.463%   0.000%   0.000%   6.375%   0.001%   0.924%   0.000%   0.137%
   23    3.1  1.5 -0.5   0.000%   0.076%   0.000%  19.443%   3.314%   0.000%   7.807%   0.012%   5.060%   0.000%
   24    4.1  1.5 -0.5   0.000%   0.001%   0.000%   3.516%  10.412%   0.000%  15.828%   0.024%   6.008%   0.000%
   25    5.1  1.5 -0.5  11.464%   0.042%  25.927%   0.000%   0.000%   3.221%   0.000%   0.013%   0.000%   0.211%
   26    6.1  1.5 -0.5   0.738%   0.003%   3.574%   0.000%   0.000%   2.676%   0.025%  16.443%   0.000%   1.117%
   27    7.1  1.5 -0.5  12.040%   0.044%   8.640%   0.000%   0.000%  13.619%   0.000%   0.204%   0.000%   0.613%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   0.505%   0.002%  20.998%   0.000%   0.000%   2.108%   0.000%   0.280%   0.000%   0.025%
   32    2.1  1.5 -1.5   0.014%   3.785%   0.000%   4.287%   7.369%   0.000%  14.041%   0.022%  11.624%   0.000%
   33    3.1  1.5 -1.5   4.857%   0.018%   0.026%   0.000%   0.000%  20.674%   0.015%  10.016%   0.000%   0.110%
   34    4.1  1.5 -1.5   0.575%   0.002%   0.830%   0.000%   0.000%  20.635%   0.021%  13.526%   0.000%   0.043%
   35    5.1  1.5 -1.5   0.020%   5.381%   0.000%   0.671%   1.701%   0.000%   3.956%   0.006%  18.797%   0.000%
   36    6.1  1.5 -1.5   0.000%   0.084%   0.000%   0.127%   6.870%   0.000%  16.139%   0.025%  23.593%   0.000%
   37    7.1  1.5 -1.5   0.010%   2.820%   0.000%   0.048%   0.780%   0.000%   0.187%   0.000%  32.397%   0.000%
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

    1    1.1  1.5  1.5  45.655%   0.008%   0.001%   0.001%   0.021%   0.000%   0.000%   0.034%   1.038%  22.245%
    2    2.1  1.5  1.5   0.000%   2.757%   0.945%   1.281%   0.017%   9.321%   4.775%   0.054%   8.811%   0.411%
    3    3.1  1.5  1.5   0.005%   0.000%   0.598%   0.441%  19.213%   0.034%   0.081%   7.135%   0.011%   0.234%
    4    4.1  1.5  1.5   0.055%   0.000%  12.620%   9.312%   0.563%   0.001%   0.057%   5.023%   0.036%   0.767%
    5    5.1  1.5  1.5   0.000%   1.322%   8.683%  11.768%   0.000%   0.068%  13.475%   0.153%   0.505%   0.024%
    6    6.1  1.5  1.5   0.001%   3.343%   1.883%   2.552%   0.000%   0.033%   2.514%   0.029%  14.480%   0.676%
    7    7.1  1.5  1.5   0.000%   1.797%   1.113%   1.508%   0.027%  14.912%   7.232%   0.082%   5.439%   0.254%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.025%
   11    1.1  1.5  0.5   0.000%   0.246%   2.807%   3.804%   0.004%   2.302%   0.127%   0.001%   0.269%   0.013%
   12    2.1  1.5  0.5   0.176%   0.000%  13.987%  10.321%  11.346%   0.020%   0.000%   0.001%   0.454%   9.726%
   13    3.1  1.5  0.5   0.003%  19.692%   0.473%   0.641%   0.004%   2.466%   4.172%   0.047%   6.289%   0.293%
   14    4.1  1.5  0.5   0.004%  21.132%   0.029%   0.039%   0.004%   2.035%   4.093%   0.047%   1.033%   0.048%
   15    5.1  1.5  0.5   0.033%   0.000%   6.590%   4.863%   1.758%   0.003%   0.071%   6.216%   0.766%  16.407%
   16    6.1  1.5  0.5   0.004%   0.000%   0.000%   0.000%   3.869%   0.007%   0.458%  40.309%   0.029%   0.612%
   17    7.1  1.5  0.5   0.027%   0.000%   0.000%   0.000%  28.181%   0.051%   0.001%   0.073%   0.276%   5.908%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.016%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.022%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.246%   0.000%   3.804%   2.807%   2.302%   0.004%   0.001%   0.127%   0.013%   0.269%
   22    2.1  1.5 -0.5   0.000%   0.176%  10.321%  13.987%   0.020%  11.346%   0.001%   0.000%   9.726%   0.454%
   23    3.1  1.5 -0.5  19.692%   0.003%   0.641%   0.473%   2.466%   0.004%   0.047%   4.172%   0.293%   6.289%
   24    4.1  1.5 -0.5  21.132%   0.004%   0.039%   0.029%   2.035%   0.004%   0.047%   4.093%   0.048%   1.033%
   25    5.1  1.5 -0.5   0.000%   0.033%   4.863%   6.590%   0.003%   1.758%   6.216%   0.071%  16.407%   0.766%
   26    6.1  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.007%   3.869%  40.309%   0.458%   0.612%   0.029%
   27    7.1  1.5 -0.5   0.000%   0.027%   0.000%   0.000%   0.051%  28.181%   0.073%   0.001%   5.908%   0.276%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.016%   0.001%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%   0.001%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   0.008%  45.655%   0.001%   0.001%   0.000%   0.021%   0.034%   0.000%  22.245%   1.038%
   32    2.1  1.5 -1.5   2.757%   0.000%   1.281%   0.945%   9.321%   0.017%   0.054%   4.775%   0.411%   8.811%
   33    3.1  1.5 -1.5   0.000%   0.005%   0.441%   0.598%   0.034%  19.213%   7.135%   0.081%   0.234%   0.011%
   34    4.1  1.5 -1.5   0.000%   0.055%   9.312%  12.620%   0.001%   0.563%   5.023%   0.057%   0.767%   0.036%
   35    5.1  1.5 -1.5   1.322%   0.000%  11.768%   8.683%   0.068%   0.000%   0.153%  13.475%   0.024%   0.505%
   36    6.1  1.5 -1.5   3.343%   0.001%   2.552%   1.883%   0.033%   0.000%   0.029%   2.514%   0.676%  14.480%
   37    7.1  1.5 -1.5   1.797%   0.000%   1.508%   1.113%  14.912%   0.027%   0.082%   7.232%   0.254%   5.439%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.001%
   41    1.1  0.5  0.5   0.000%   0.598%   0.044%   0.060%   0.001%   0.449%   0.975%   0.011%   0.300%   0.014%
   42    2.1  0.5  0.5   0.765%   0.000%   0.379%   0.280%   0.003%   0.000%   0.008%   0.703%   0.004%   0.095%
   43    3.1  0.5  0.5   0.523%   0.000%   0.734%   0.542%   0.262%   0.000%   0.001%   0.075%   0.007%   0.152%
   44    4.1  0.5  0.5   0.000%   0.003%   0.638%   0.864%   0.001%   0.622%   0.008%   0.000%   0.005%   0.000%
   45    5.1  0.5  0.5   0.736%   0.000%   0.001%   0.001%   1.275%   0.002%   0.001%   0.120%   0.002%   0.052%
   46    6.1  0.5  0.5   0.646%   0.000%   0.012%   0.009%   0.614%   0.001%   0.010%   0.845%   0.001%   0.020%
   47    7.1  0.5  0.5   0.000%   0.468%   0.074%   0.101%   0.001%   0.508%   0.974%   0.011%   0.416%   0.019%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.036%   0.762%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.026%   0.556%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.311%   0.015%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.057%   0.003%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.025%   0.001%
   53    1.1  0.5 -0.5   0.598%   0.000%   0.060%   0.044%   0.449%   0.001%   0.011%   0.975%   0.014%   0.300%
   54    2.1  0.5 -0.5   0.000%   0.765%   0.280%   0.379%   0.000%   0.003%   0.703%   0.008%   0.095%   0.004%
   55    3.1  0.5 -0.5   0.000%   0.523%   0.542%   0.734%   0.000%   0.262%   0.075%   0.001%   0.152%   0.007%
   56    4.1  0.5 -0.5   0.003%   0.000%   0.864%   0.638%   0.622%   0.001%   0.000%   0.008%   0.000%   0.005%
   57    5.1  0.5 -0.5   0.000%   0.736%   0.001%   0.001%   0.002%   1.275%   0.120%   0.001%   0.052%   0.002%
   58    6.1  0.5 -0.5   0.000%   0.646%   0.009%   0.012%   0.001%   0.614%   0.845%   0.010%   0.020%   0.001%
   59    7.1  0.5 -0.5   0.468%   0.000%   0.101%   0.074%   0.508%   0.001%   0.011%   0.974%   0.019%   0.416%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.762%   0.036%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.556%   0.026%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.015%   0.311%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.057%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.025%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.000%   0.561%   0.000%   1.055%   0.000%   0.144%   0.000%   2.625%   0.041%   0.000%
    2    2.1  1.5  1.5   7.281%   0.003%   2.397%   0.001%   1.621%   0.004%  16.799%   0.003%   0.000%   0.105%
    3    3.1  1.5  1.5   0.008%  19.994%   0.000%   0.537%   0.031%  13.455%   0.000%   0.030%   0.005%   0.000%
    4    4.1  1.5  1.5   0.008%  19.582%   0.000%   0.422%   0.031%  13.319%   0.000%   0.094%   1.020%   0.000%
    5    5.1  1.5  1.5  13.270%   0.006%   8.810%   0.002%   4.953%   0.011%   3.846%   0.001%   0.000%   0.370%
    6    6.1  1.5  1.5   1.555%   0.001%   0.200%   0.000%   0.486%   0.001%  23.134%   0.004%   0.000%   0.049%
    7    7.1  1.5  1.5  14.445%   0.006%   0.474%   0.000%   3.817%   0.009%  10.175%   0.002%   0.000%   0.210%
    8    8.1  1.5  1.5   0.008%   0.000%   0.029%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.001%   0.000%   0.035%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%
   11    1.1  1.5  0.5  16.288%   0.007%   0.085%   0.000%  24.162%   0.055%   0.005%   0.000%   0.000%   0.188%
   12    2.1  1.5  0.5   0.001%   2.012%   0.003%  10.496%   0.016%   6.764%   0.000%   1.807%   0.921%   0.000%
   13    3.1  1.5  0.5   0.783%   0.000%  13.437%   0.003%   0.029%   0.000%  13.473%   0.002%   0.000%   0.003%
   14    4.1  1.5  0.5   0.071%   0.000%  19.614%   0.005%   0.055%   0.000%  13.524%   0.002%   0.000%   0.005%
   15    5.1  1.5  0.5   0.000%   0.010%   0.000%   1.810%   0.030%  12.878%   0.001%   5.306%   0.594%   0.000%
   16    6.1  1.5  0.5   0.000%   1.068%   0.006%  22.979%   0.006%   2.407%   0.000%   0.992%   0.218%   0.000%
   17    7.1  1.5  0.5   0.000%   0.093%   0.004%  14.714%   0.024%  10.261%   0.000%   2.741%   0.011%   0.000%
   18    8.1  1.5  0.5   0.000%   0.012%   0.000%   0.002%   0.000%   0.008%   0.000%   0.007%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   0.008%   0.000%   0.000%   0.000%   0.009%   0.000%   0.006%   0.000%   0.000%
   20   10.1  1.5  0.5   0.039%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.007%  16.288%   0.000%   0.085%   0.055%  24.162%   0.000%   0.005%   0.188%   0.000%
   22    2.1  1.5 -0.5   2.012%   0.001%  10.496%   0.003%   6.764%   0.016%   1.807%   0.000%   0.000%   0.921%
   23    3.1  1.5 -0.5   0.000%   0.783%   0.003%  13.437%   0.000%   0.029%   0.002%  13.473%   0.003%   0.000%
   24    4.1  1.5 -0.5   0.000%   0.071%   0.005%  19.614%   0.000%   0.055%   0.002%  13.524%   0.005%   0.000%
   25    5.1  1.5 -0.5   0.010%   0.000%   1.810%   0.000%  12.878%   0.030%   5.306%   0.001%   0.000%   0.594%
   26    6.1  1.5 -0.5   1.068%   0.000%  22.979%   0.006%   2.407%   0.006%   0.992%   0.000%   0.000%   0.218%
   27    7.1  1.5 -0.5   0.093%   0.000%  14.714%   0.004%  10.261%   0.024%   2.741%   0.000%   0.000%   0.011%
   28    8.1  1.5 -0.5   0.012%   0.000%   0.002%   0.000%   0.008%   0.000%   0.007%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   0.008%   0.000%   0.000%   0.000%   0.009%   0.000%   0.006%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.000%   0.039%   0.000%   0.001%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   0.561%   0.000%   1.055%   0.000%   0.144%   0.000%   2.625%   0.000%   0.000%   0.041%
   32    2.1  1.5 -1.5   0.003%   7.281%   0.001%   2.397%   0.004%   1.621%   0.003%  16.799%   0.105%   0.000%
   33    3.1  1.5 -1.5  19.994%   0.008%   0.537%   0.000%  13.455%   0.031%   0.030%   0.000%   0.000%   0.005%
   34    4.1  1.5 -1.5  19.582%   0.008%   0.422%   0.000%  13.319%   0.031%   0.094%   0.000%   0.000%   1.020%
   35    5.1  1.5 -1.5   0.006%  13.270%   0.002%   8.810%   0.011%   4.953%   0.001%   3.846%   0.370%   0.000%
   36    6.1  1.5 -1.5   0.001%   1.555%   0.000%   0.200%   0.001%   0.486%   0.004%  23.134%   0.049%   0.000%
   37    7.1  1.5 -1.5   0.006%  14.445%   0.000%   0.474%   0.009%   3.817%   0.002%  10.175%   0.210%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.008%   0.000%   0.029%   0.000%   0.007%   0.000%   0.000%   0.000%   0.000%
   39    9.1  1.5 -1.5   0.000%   0.001%   0.000%   0.035%   0.000%   0.006%   0.000%   0.000%   0.000%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.001%   0.000%   0.000%   0.000%   0.020%   0.000%   0.000%   0.000%
   41    1.1  0.5  0.5   0.000%   0.000%   0.153%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.395%
   42    2.1  0.5  0.5   0.000%   0.244%   0.000%   0.122%   0.000%   0.000%   0.000%   0.000%  35.690%   0.003%
   43    3.1  0.5  0.5   0.000%   0.076%   0.000%   0.231%   0.000%   0.000%   0.000%   0.000%  29.396%   0.003%
   44    4.1  0.5  0.5   0.450%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%  28.074%
   45    5.1  0.5  0.5   0.000%   0.206%   0.000%   0.206%   0.000%   0.000%   0.000%   0.000%   2.270%   0.000%
   46    6.1  0.5  0.5   0.000%   0.103%   0.000%   0.342%   0.000%   0.000%   0.000%   0.000%   0.426%   0.000%
   47    7.1  0.5  0.5   0.009%   0.000%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   48    8.1  0.5  0.5   0.000%   0.273%   0.000%   0.005%   0.004%   1.528%   0.000%   0.630%   0.000%   0.000%
   49    9.1  0.5  0.5   0.000%   0.424%   0.000%   0.068%   0.004%   1.702%   0.000%   0.455%   0.000%   0.000%
   50   10.1  0.5  0.5   0.082%   0.000%   0.666%   0.000%   0.038%   0.000%   2.124%   0.000%   0.000%   0.000%
   51   11.1  0.5  0.5   0.019%   0.000%   0.995%   0.000%   0.005%   0.000%   2.153%   0.000%   0.000%   0.000%
   52   12.1  0.5  0.5   0.991%   0.000%   0.056%   0.000%   2.114%   0.005%   0.038%   0.000%   0.000%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.153%   0.000%   0.000%   0.000%   0.000%   0.395%   0.000%
   54    2.1  0.5 -0.5   0.244%   0.000%   0.122%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%  35.690%
   55    3.1  0.5 -0.5   0.076%   0.000%   0.231%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%  29.396%
   56    4.1  0.5 -0.5   0.000%   0.450%   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%  28.074%   0.003%
   57    5.1  0.5 -0.5   0.206%   0.000%   0.206%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.270%
   58    6.1  0.5 -0.5   0.103%   0.000%   0.342%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.426%
   59    7.1  0.5 -0.5   0.000%   0.009%   0.000%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   60    8.1  0.5 -0.5   0.273%   0.000%   0.005%   0.000%   1.528%   0.004%   0.630%   0.000%   0.000%   0.000%
   61    9.1  0.5 -0.5   0.424%   0.000%   0.068%   0.000%   1.702%   0.004%   0.455%   0.000%   0.000%   0.000%
   62   10.1  0.5 -0.5   0.000%   0.082%   0.000%   0.666%   0.000%   0.038%   0.000%   2.124%   0.000%   0.000%
   63   11.1  0.5 -0.5   0.000%   0.019%   0.000%   0.995%   0.000%   0.005%   0.000%   2.153%   0.000%   0.000%
   64   12.1  0.5 -0.5   0.000%   0.991%   0.000%   0.056%   0.005%   2.114%   0.000%   0.038%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   1.149%   0.003%   0.582%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%   0.000%
    2    2.1  1.5  1.5   0.001%   0.424%   0.000%   0.091%   0.000%   0.124%   0.000%   0.000%   0.001%   0.000%
    3    3.1  1.5  1.5   0.000%   0.000%   0.001%   0.000%   1.063%   0.000%   0.000%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.036%   0.000%   0.006%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.001%   0.322%   0.000%   0.369%   0.000%   0.316%   0.000%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.016%   0.000%   0.278%   0.000%   0.059%   0.001%   0.000%   0.000%   0.000%
    7    7.1  1.5  1.5   0.000%   0.066%   0.000%   0.571%   0.000%   0.189%   0.001%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.934%   0.000%   4.402%   0.024%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.676%   0.000%   2.402%   0.013%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.257%   0.004%   0.657%
   11    1.1  1.5  0.5   0.000%   0.001%   0.000%   0.000%   0.000%   0.172%   0.000%   0.000%   0.000%   0.000%
   12    2.1  1.5  0.5   0.082%   0.000%   0.308%   0.000%   0.081%   0.000%   0.000%   0.001%   0.000%   0.000%
   13    3.1  1.5  0.5   0.000%   0.186%   0.001%   0.878%   0.000%   0.000%   0.001%   0.000%   0.001%   0.000%
   14    4.1  1.5  0.5   0.002%   1.048%   0.000%   0.008%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   15    5.1  1.5  0.5   0.074%   0.000%   0.071%   0.000%   0.019%   0.000%   0.000%   0.001%   0.000%   0.000%
   16    6.1  1.5  0.5   0.228%   0.001%   0.367%   0.000%   0.921%   0.000%   0.000%   0.000%   0.000%   0.002%
   17    7.1  1.5  0.5   0.097%   0.000%   0.208%   0.000%   0.784%   0.000%   0.000%   0.000%   0.000%   0.001%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.851%   0.000%   0.052%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.069%   0.007%   1.382%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%   0.000%   0.899%   0.005%
   21    1.1  1.5 -0.5   0.001%   0.000%   0.000%   0.000%   0.172%   0.000%   0.000%   0.000%   0.000%   0.000%
   22    2.1  1.5 -0.5   0.000%   0.082%   0.000%   0.308%   0.000%   0.081%   0.001%   0.000%   0.000%   0.000%
   23    3.1  1.5 -0.5   0.186%   0.000%   0.878%   0.001%   0.000%   0.000%   0.000%   0.001%   0.000%   0.001%
   24    4.1  1.5 -0.5   1.048%   0.002%   0.008%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   25    5.1  1.5 -0.5   0.000%   0.074%   0.000%   0.071%   0.000%   0.019%   0.001%   0.000%   0.000%   0.000%
   26    6.1  1.5 -0.5   0.001%   0.228%   0.000%   0.367%   0.000%   0.921%   0.000%   0.000%   0.002%   0.000%
   27    7.1  1.5 -0.5   0.000%   0.097%   0.000%   0.208%   0.000%   0.784%   0.000%   0.000%   0.001%   0.000%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.851%   0.000%   0.052%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.069%   0.000%   1.382%   0.007%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.062%   0.005%   0.899%
   31    1.1  1.5 -1.5   0.003%   1.149%   0.000%   0.582%   0.000%   0.000%   0.002%   0.000%   0.000%   0.000%
   32    2.1  1.5 -1.5   0.424%   0.001%   0.091%   0.000%   0.124%   0.000%   0.000%   0.000%   0.000%   0.001%
   33    3.1  1.5 -1.5   0.000%   0.000%   0.000%   0.001%   0.000%   1.063%   0.000%   0.000%   0.000%   0.000%
   34    4.1  1.5 -1.5   0.000%   0.036%   0.000%   0.006%   0.000%   0.011%   0.000%   0.000%   0.000%   0.000%
   35    5.1  1.5 -1.5   0.322%   0.001%   0.369%   0.000%   0.316%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    6.1  1.5 -1.5   0.016%   0.000%   0.278%   0.000%   0.059%   0.000%   0.000%   0.001%   0.000%   0.000%
   37    7.1  1.5 -1.5   0.066%   0.000%   0.571%   0.000%   0.189%   0.000%   0.000%   0.001%   0.000%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.934%   0.024%   4.402%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.676%   0.013%   2.402%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.257%   0.000%   0.657%   0.004%
   41    1.1  0.5  0.5   0.103%  44.748%   0.007%   9.729%   0.000%   0.033%  10.580%   0.000%  11.987%   0.064%
   42    2.1  0.5  0.5   3.112%   0.007%  14.402%   0.011%   1.788%   0.000%   0.000%  12.228%   0.052%   9.769%
   43    3.1  0.5  0.5   7.911%   0.018%  15.982%   0.012%   1.692%   0.000%   0.000%   8.504%   0.005%   0.940%
   44    4.1  0.5  0.5   0.001%   0.381%   0.000%   0.004%   0.000%  26.543%   0.262%   0.000%   3.640%   0.020%
   45    5.1  0.5  0.5  19.728%   0.045%   0.581%   0.000%  32.373%   0.000%   0.000%   0.025%   0.121%  22.562%
   46    6.1  0.5  0.5  19.718%   0.045%   1.013%   0.001%  33.795%   0.000%   0.000%   0.501%   0.035%   6.545%
   47    7.1  0.5  0.5   0.001%   0.439%   0.042%  54.477%   0.000%   0.035%  23.632%   0.001%   0.034%   0.000%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.640%   0.035%   6.448%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.272%   0.001%   0.241%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.464%   0.000%   7.811%   0.042%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  17.322%   0.093%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%   0.000%   2.366%   0.013%
   53    1.1  0.5 -0.5  44.748%   0.103%   9.729%   0.007%   0.033%   0.000%   0.000%  10.580%   0.064%  11.987%
   54    2.1  0.5 -0.5   0.007%   3.112%   0.011%  14.402%   0.000%   1.788%  12.228%   0.000%   9.769%   0.052%
   55    3.1  0.5 -0.5   0.018%   7.911%   0.012%  15.982%   0.000%   1.692%   8.504%   0.000%   0.940%   0.005%
   56    4.1  0.5 -0.5   0.381%   0.001%   0.004%   0.000%  26.543%   0.000%   0.000%   0.262%   0.020%   3.640%
   57    5.1  0.5 -0.5   0.045%  19.728%   0.000%   0.581%   0.000%  32.373%   0.025%   0.000%  22.562%   0.121%
   58    6.1  0.5 -0.5   0.045%  19.718%   0.001%   1.013%   0.000%  33.795%   0.501%   0.000%   6.545%   0.035%
   59    7.1  0.5 -0.5   0.439%   0.001%  54.477%   0.042%   0.035%   0.000%   0.001%  23.632%   0.000%   0.034%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   9.640%   0.000%   6.448%   0.035%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  13.272%   0.000%   0.241%   0.001%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  11.464%   0.042%   7.811%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.093%  17.322%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.031%   0.013%   2.366%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.000%   0.323%   0.005%   0.145%   0.000%   0.007%   0.000%   0.002%   0.074%
    2    2.1  1.5  1.5   0.000%   0.000%   0.000%   0.015%   0.000%   0.205%   0.000%   0.142%   0.089%   0.003%
    3    3.1  1.5  1.5   0.001%   0.000%   0.040%   0.001%   0.008%   0.000%   0.353%   0.000%   0.012%   0.382%
    4    4.1  1.5  1.5   0.001%   0.000%   0.024%   0.000%   0.014%   0.000%   0.363%   0.000%   0.011%   0.357%
    5    5.1  1.5  1.5   0.000%   0.002%   0.001%   0.042%   0.000%   0.079%   0.000%   0.312%   0.407%   0.013%
    6    6.1  1.5  1.5   0.000%   0.000%   0.002%   0.152%   0.000%   0.045%   0.000%   0.126%   0.239%   0.008%
    7    7.1  1.5  1.5   0.000%   0.000%   0.004%   0.298%   0.000%   0.005%   0.000%   0.089%   0.556%   0.018%
    8    8.1  1.5  1.5   0.000%   0.058%   0.113%   8.079%   0.003%  16.821%   0.000%   0.001%   2.627%   0.084%
    9    9.1  1.5  1.5   0.004%   2.318%   0.050%   3.556%   0.003%  13.532%   0.000%   7.837%   2.671%   0.086%
   10   10.1  1.5  1.5   0.021%   0.000%  11.606%   0.163%   5.735%   0.001%   0.664%   0.000%   0.163%   5.079%
   11    1.1  1.5  0.5   0.000%   0.001%   0.000%   0.034%   0.000%   0.017%   0.000%   0.267%   0.753%   0.024%
   12    2.1  1.5  0.5   0.000%   0.000%   0.341%   0.005%   0.065%   0.000%   0.025%   0.000%   0.013%   0.391%
   13    3.1  1.5  0.5   0.000%   0.000%   0.003%   0.243%   0.000%   0.106%   0.000%   0.047%   0.246%   0.008%
   14    4.1  1.5  0.5   0.000%   0.000%   0.000%   0.004%   0.000%   0.370%   0.000%   0.026%   0.181%   0.006%
   15    5.1  1.5  0.5   0.000%   0.000%   0.275%   0.004%   0.007%   0.000%   0.080%   0.000%   0.004%   0.111%
   16    6.1  1.5  0.5   0.000%   0.000%   0.024%   0.000%   0.440%   0.000%   0.010%   0.000%   0.001%   0.021%
   17    7.1  1.5  0.5   0.000%   0.000%   0.026%   0.000%   0.361%   0.000%   0.017%   0.000%   0.019%   0.591%
   18    8.1  1.5  0.5   1.530%   0.002%  14.307%   0.201%   2.920%   0.001%   3.046%   0.000%   0.010%   0.321%
   19    9.1  1.5  0.5   0.970%   0.001%   4.507%   0.063%   5.918%   0.001%   9.957%   0.000%   0.324%  10.086%
   20   10.1  1.5  0.5   0.008%   4.930%   0.038%   2.740%   0.000%   0.527%   0.001%  23.954%   0.896%   0.029%
   21    1.1  1.5 -0.5   0.001%   0.000%   0.034%   0.000%   0.017%   0.000%   0.267%   0.000%   0.024%   0.753%
   22    2.1  1.5 -0.5   0.000%   0.000%   0.005%   0.341%   0.000%   0.065%   0.000%   0.025%   0.391%   0.013%
   23    3.1  1.5 -0.5   0.000%   0.000%   0.243%   0.003%   0.106%   0.000%   0.047%   0.000%   0.008%   0.246%
   24    4.1  1.5 -0.5   0.000%   0.000%   0.004%   0.000%   0.370%   0.000%   0.026%   0.000%   0.006%   0.181%
   25    5.1  1.5 -0.5   0.000%   0.000%   0.004%   0.275%   0.000%   0.007%   0.000%   0.080%   0.111%   0.004%
   26    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.024%   0.000%   0.440%   0.000%   0.010%   0.021%   0.001%
   27    7.1  1.5 -0.5   0.000%   0.000%   0.000%   0.026%   0.000%   0.361%   0.000%   0.017%   0.591%   0.019%
   28    8.1  1.5 -0.5   0.002%   1.530%   0.201%  14.307%   0.001%   2.920%   0.000%   3.046%   0.321%   0.010%
   29    9.1  1.5 -0.5   0.001%   0.970%   0.063%   4.507%   0.001%   5.918%   0.000%   9.957%  10.086%   0.324%
   30   10.1  1.5 -0.5   4.930%   0.008%   2.740%   0.038%   0.527%   0.000%  23.954%   0.001%   0.029%   0.896%
   31    1.1  1.5 -1.5   0.000%   0.000%   0.005%   0.323%   0.000%   0.145%   0.000%   0.007%   0.074%   0.002%
   32    2.1  1.5 -1.5   0.000%   0.000%   0.015%   0.000%   0.205%   0.000%   0.142%   0.000%   0.003%   0.089%
   33    3.1  1.5 -1.5   0.000%   0.001%   0.001%   0.040%   0.000%   0.008%   0.000%   0.353%   0.382%   0.012%
   34    4.1  1.5 -1.5   0.000%   0.001%   0.000%   0.024%   0.000%   0.014%   0.000%   0.363%   0.357%   0.011%
   35    5.1  1.5 -1.5   0.002%   0.000%   0.042%   0.001%   0.079%   0.000%   0.312%   0.000%   0.013%   0.407%
   36    6.1  1.5 -1.5   0.000%   0.000%   0.152%   0.002%   0.045%   0.000%   0.126%   0.000%   0.008%   0.239%
   37    7.1  1.5 -1.5   0.000%   0.000%   0.298%   0.004%   0.005%   0.000%   0.089%   0.000%   0.018%   0.556%
   38    8.1  1.5 -1.5   0.058%   0.000%   8.079%   0.113%  16.821%   0.003%   0.001%   0.000%   0.084%   2.627%
   39    9.1  1.5 -1.5   2.318%   0.004%   3.556%   0.050%  13.532%   0.003%   7.837%   0.000%   0.086%   2.671%
   40   10.1  1.5 -1.5   0.000%   0.021%   0.163%  11.606%   0.001%   5.735%   0.000%   0.664%   5.079%   0.163%
   41    1.1  0.5  0.5   0.002%   1.254%   0.061%   4.335%   0.002%  11.118%   0.000%   0.048%   0.000%   0.000%
   42    2.1  0.5  0.5   1.836%   0.003%  11.529%   0.162%   2.840%   0.001%   1.034%   0.000%   0.000%   0.000%
   43    3.1  0.5  0.5  14.423%   0.022%   3.833%   0.054%   1.182%   0.000%  10.491%   0.000%   0.000%   0.000%
   44    4.1  0.5  0.5   0.030%  19.955%   0.022%   1.586%   0.000%   0.299%   0.001%  13.648%   0.000%   0.000%
   45    5.1  0.5  0.5   1.199%   0.002%   0.640%   0.009%  12.151%   0.002%   2.757%   0.000%   0.000%   0.000%
   46    6.1  0.5  0.5  16.805%   0.026%   0.389%   0.005%   8.204%   0.002%   6.957%   0.000%   0.000%   0.000%
   47    7.1  0.5  0.5   0.000%   0.228%   0.190%  13.527%   0.000%   0.502%   0.000%   1.359%   0.000%   0.000%
   48    8.1  0.5  0.5   4.523%   0.007%   2.161%   0.030%   2.858%   0.001%   4.807%   0.000%   0.120%   3.725%
   49    9.1  0.5  0.5   7.128%   0.011%   6.871%   0.096%   1.411%   0.000%   1.473%   0.000%   0.888%  27.659%
   50   10.1  0.5  0.5   0.002%   1.330%   0.089%   6.347%   0.001%   2.733%   0.000%   0.679%  13.481%   0.433%
   51   11.1  0.5  0.5   0.005%   3.178%   0.002%   0.156%   0.002%   9.275%   0.000%   0.346%  11.104%   0.357%
   52   12.1  0.5  0.5   0.028%  18.153%   0.009%   0.607%   0.000%   0.088%   0.000%   9.072%  14.841%   0.477%
   53    1.1  0.5 -0.5   1.254%   0.002%   4.335%   0.061%  11.118%   0.002%   0.048%   0.000%   0.000%   0.000%
   54    2.1  0.5 -0.5   0.003%   1.836%   0.162%  11.529%   0.001%   2.840%   0.000%   1.034%   0.000%   0.000%
   55    3.1  0.5 -0.5   0.022%  14.423%   0.054%   3.833%   0.000%   1.182%   0.000%  10.491%   0.000%   0.000%
   56    4.1  0.5 -0.5  19.955%   0.030%   1.586%   0.022%   0.299%   0.000%  13.648%   0.001%   0.000%   0.000%
   57    5.1  0.5 -0.5   0.002%   1.199%   0.009%   0.640%   0.002%  12.151%   0.000%   2.757%   0.000%   0.000%
   58    6.1  0.5 -0.5   0.026%  16.805%   0.005%   0.389%   0.002%   8.204%   0.000%   6.957%   0.000%   0.000%
   59    7.1  0.5 -0.5   0.228%   0.000%  13.527%   0.190%   0.502%   0.000%   1.359%   0.000%   0.000%   0.000%
   60    8.1  0.5 -0.5   0.007%   4.523%   0.030%   2.161%   0.001%   2.858%   0.000%   4.807%   3.725%   0.120%
   61    9.1  0.5 -0.5   0.011%   7.128%   0.096%   6.871%   0.000%   1.411%   0.000%   1.473%  27.659%   0.888%
   62   10.1  0.5 -0.5   1.330%   0.002%   6.347%   0.089%   2.733%   0.001%   0.679%   0.000%   0.433%  13.481%
   63   11.1  0.5 -0.5   3.178%   0.005%   0.156%   0.002%   9.275%   0.002%   0.346%   0.000%   0.357%  11.104%
   64   12.1  0.5 -0.5  18.153%   0.028%   0.607%   0.009%   0.088%   0.000%   9.072%   0.000%   0.477%  14.841%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.001%   0.056%   0.000%   0.003%   0.000%   0.023%   0.000%   0.000%   0.224%   0.000%
    2    2.1  1.5  1.5   0.781%   0.012%   0.101%   0.000%   0.072%   0.000%   0.000%   0.000%   0.000%   0.031%
    3    3.1  1.5  1.5   0.004%   0.250%   0.000%   0.096%   0.000%   0.032%   0.000%   0.000%   0.006%   0.000%
    4    4.1  1.5  1.5   0.004%   0.272%   0.000%   0.100%   0.000%   0.028%   0.000%   0.000%   0.002%   0.000%
    5    5.1  1.5  1.5   0.004%   0.000%   0.006%   0.000%   0.076%   0.000%   0.000%   0.000%   0.000%   0.015%
    6    6.1  1.5  1.5   0.874%   0.013%   0.095%   0.000%   0.127%   0.000%   0.000%   0.000%   0.000%   0.122%
    7    7.1  1.5  1.5   0.096%   0.001%   0.000%   0.000%   0.132%   0.000%   0.000%   0.000%   0.000%   0.137%
    8    8.1  1.5  1.5   1.752%   0.026%  11.541%   0.046%   3.934%   0.011%  25.227%   0.000%   0.000%   4.892%
    9    9.1  1.5  1.5   1.720%   0.026%  11.561%   0.046%   3.835%   0.011%  24.813%   0.000%   0.000%   3.070%
   10   10.1  1.5  1.5   0.120%   8.040%   0.046%  11.589%   0.097%  34.856%   0.000%   0.000%  14.267%   0.001%
   11    1.1  1.5  0.5   0.381%   0.006%   0.157%   0.001%   0.070%   0.000%   0.000%   0.000%   0.000%   0.005%
   12    2.1  1.5  0.5   0.000%   0.009%   0.000%   0.020%   0.000%   0.060%   0.000%   0.000%   0.183%   0.000%
   13    3.1  1.5  0.5   0.389%   0.006%   0.032%   0.000%   0.095%   0.000%   0.000%   0.000%   0.000%   0.128%
   14    4.1  1.5  0.5   0.458%   0.007%   0.045%   0.000%   0.084%   0.000%   0.000%   0.000%   0.000%   0.000%
   15    5.1  1.5  0.5   0.011%   0.748%   0.001%   0.171%   0.000%   0.000%   0.000%   0.000%   0.186%   0.000%
   16    6.1  1.5  0.5   0.002%   0.140%   0.000%   0.032%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   17    7.1  1.5  0.5   0.000%   0.014%   0.000%   0.031%   0.000%   0.093%   0.000%   0.000%   0.029%   0.000%
   18    8.1  1.5  0.5   0.148%   9.952%   0.140%  34.880%   0.004%   1.279%   0.000%   8.406%  13.530%   0.001%
   19    9.1  1.5  0.5   0.000%   0.016%   0.016%   3.889%   0.090%  32.211%   0.000%   8.361%   8.120%   0.000%
   20   10.1  1.5  0.5   0.591%   0.009%   3.796%   0.015%   1.265%   0.004%  33.191%   0.000%   0.000%   0.784%
   21    1.1  1.5 -0.5   0.006%   0.381%   0.001%   0.157%   0.000%   0.070%   0.000%   0.000%   0.005%   0.000%
   22    2.1  1.5 -0.5   0.009%   0.000%   0.020%   0.000%   0.060%   0.000%   0.000%   0.000%   0.000%   0.183%
   23    3.1  1.5 -0.5   0.006%   0.389%   0.000%   0.032%   0.000%   0.095%   0.000%   0.000%   0.128%   0.000%
   24    4.1  1.5 -0.5   0.007%   0.458%   0.000%   0.045%   0.000%   0.084%   0.000%   0.000%   0.000%   0.000%
   25    5.1  1.5 -0.5   0.748%   0.011%   0.171%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.186%
   26    6.1  1.5 -0.5   0.140%   0.002%   0.032%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   27    7.1  1.5 -0.5   0.014%   0.000%   0.031%   0.000%   0.093%   0.000%   0.000%   0.000%   0.000%   0.029%
   28    8.1  1.5 -0.5   9.952%   0.148%  34.880%   0.140%   1.279%   0.004%   8.406%   0.000%   0.001%  13.530%
   29    9.1  1.5 -0.5   0.016%   0.000%   3.889%   0.016%  32.211%   0.090%   8.361%   0.000%   0.000%   8.120%
   30   10.1  1.5 -0.5   0.009%   0.591%   0.015%   3.796%   0.004%   1.265%   0.000%  33.191%   0.784%   0.000%
   31    1.1  1.5 -1.5   0.056%   0.001%   0.003%   0.000%   0.023%   0.000%   0.000%   0.000%   0.000%   0.224%
   32    2.1  1.5 -1.5   0.012%   0.781%   0.000%   0.101%   0.000%   0.072%   0.000%   0.000%   0.031%   0.000%
   33    3.1  1.5 -1.5   0.250%   0.004%   0.096%   0.000%   0.032%   0.000%   0.000%   0.000%   0.000%   0.006%
   34    4.1  1.5 -1.5   0.272%   0.004%   0.100%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.002%
   35    5.1  1.5 -1.5   0.000%   0.004%   0.000%   0.006%   0.000%   0.076%   0.000%   0.000%   0.015%   0.000%
   36    6.1  1.5 -1.5   0.013%   0.874%   0.000%   0.095%   0.000%   0.127%   0.000%   0.000%   0.122%   0.000%
   37    7.1  1.5 -1.5   0.001%   0.096%   0.000%   0.000%   0.000%   0.132%   0.000%   0.000%   0.137%   0.000%
   38    8.1  1.5 -1.5   0.026%   1.752%   0.046%  11.541%   0.011%   3.934%   0.000%  25.227%   4.892%   0.000%
   39    9.1  1.5 -1.5   0.026%   1.720%   0.046%  11.561%   0.011%   3.835%   0.000%  24.813%   3.070%   0.000%
   40   10.1  1.5 -1.5   8.040%   0.120%  11.589%   0.046%  34.856%   0.097%   0.000%   0.000%   0.001%  14.267%
   41    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.212%
   42    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.679%   0.000%
   43    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.935%   0.000%
   44    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.083%
   45    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   46    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.078%   0.000%
   47    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.845%
   48    8.1  0.5  0.5   0.373%  25.005%   0.035%   8.616%   0.000%   0.000%   0.000%   0.000%  11.409%   0.000%
   49    9.1  0.5  0.5   0.010%   0.661%   0.009%   2.179%   0.018%   6.463%   0.000%   0.000%  19.340%   0.001%
   50   10.1  0.5  0.5  15.079%   0.225%   1.551%   0.006%   7.088%   0.020%   0.001%   0.000%   0.001%  16.370%
   51   11.1  0.5  0.5  17.519%   0.261%   2.154%   0.009%   6.370%   0.018%   0.000%   0.000%   0.000%   0.010%
   52   12.1  0.5  0.5  13.725%   0.204%   6.955%   0.028%   1.533%   0.004%   0.000%   0.000%   0.000%   0.298%
   53    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.212%   0.000%
   54    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   1.679%
   55    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.935%
   56    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.083%   0.000%
   57    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   58    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.078%
   59    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.845%   0.000%
   60    8.1  0.5 -0.5  25.005%   0.373%   8.616%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%  11.409%
   61    9.1  0.5 -0.5   0.661%   0.010%   2.179%   0.009%   6.463%   0.018%   0.000%   0.000%   0.001%  19.340%
   62   10.1  0.5 -0.5   0.225%  15.079%   0.006%   1.551%   0.020%   7.088%   0.000%   0.001%  16.370%   0.001%
   63   11.1  0.5 -0.5   0.261%  17.519%   0.009%   2.154%   0.018%   6.370%   0.000%   0.000%   0.010%   0.000%
   64   12.1  0.5 -0.5   0.204%  13.725%   0.028%   6.955%   0.004%   1.533%   0.000%   0.000%   0.298%   0.000%

   Nr   State  S   Sz      61       62       63       64

    1    1.1  1.5  1.5   0.050%   0.000%   0.001%   0.000%
    2    2.1  1.5  1.5   0.000%   0.128%   0.000%   0.051%
    3    3.1  1.5  1.5   0.020%   0.000%   0.202%   0.000%
    4    4.1  1.5  1.5   0.025%   0.000%   0.201%   0.000%
    5    5.1  1.5  1.5   0.000%   0.019%   0.001%   0.216%
    6    6.1  1.5  1.5   0.000%   0.021%   0.000%   0.043%
    7    7.1  1.5  1.5   0.000%   0.020%   0.000%   0.071%
    8    8.1  1.5  1.5   0.002%  19.350%   0.000%   0.030%
    9    9.1  1.5  1.5   0.001%  12.722%   0.021%   8.983%
   10   10.1  1.5  1.5   3.581%   0.000%   0.005%   0.000%
   11    1.1  1.5  0.5   0.000%   0.026%   0.000%   0.154%
   12    2.1  1.5  0.5   0.060%   0.000%   0.009%   0.000%
   13    3.1  1.5  0.5   0.000%   0.080%   0.000%   0.023%
   14    4.1  1.5  0.5   0.000%   0.197%   0.000%   0.031%
   15    5.1  1.5  0.5   0.001%   0.000%   0.023%   0.000%
   16    6.1  1.5  0.5   0.252%   0.000%   0.017%   0.000%
   17    7.1  1.5  0.5   0.173%   0.000%   0.029%   0.000%
   18    8.1  1.5  0.5   0.824%   0.000%   5.536%   0.013%
   19    9.1  1.5  0.5   5.789%   0.000%   6.161%   0.015%
   20   10.1  1.5  0.5   0.000%   2.352%   0.057%  23.803%
   21    1.1  1.5 -0.5   0.026%   0.000%   0.154%   0.000%
   22    2.1  1.5 -0.5   0.000%   0.060%   0.000%   0.009%
   23    3.1  1.5 -0.5   0.080%   0.000%   0.023%   0.000%
   24    4.1  1.5 -0.5   0.197%   0.000%   0.031%   0.000%
   25    5.1  1.5 -0.5   0.000%   0.001%   0.000%   0.023%
   26    6.1  1.5 -0.5   0.000%   0.252%   0.000%   0.017%
   27    7.1  1.5 -0.5   0.000%   0.173%   0.000%   0.029%
   28    8.1  1.5 -0.5   0.000%   0.824%   0.013%   5.536%
   29    9.1  1.5 -0.5   0.000%   5.789%   0.015%   6.161%
   30   10.1  1.5 -0.5   2.352%   0.000%  23.803%   0.057%
   31    1.1  1.5 -1.5   0.000%   0.050%   0.000%   0.001%
   32    2.1  1.5 -1.5   0.128%   0.000%   0.051%   0.000%
   33    3.1  1.5 -1.5   0.000%   0.020%   0.000%   0.202%
   34    4.1  1.5 -1.5   0.000%   0.025%   0.000%   0.201%
   35    5.1  1.5 -1.5   0.019%   0.000%   0.216%   0.001%
   36    6.1  1.5 -1.5   0.021%   0.000%   0.043%   0.000%
   37    7.1  1.5 -1.5   0.020%   0.000%   0.071%   0.000%
   38    8.1  1.5 -1.5  19.350%   0.002%   0.030%   0.000%
   39    9.1  1.5 -1.5  12.722%   0.001%   8.983%   0.021%
   40   10.1  1.5 -1.5   0.000%   3.581%   0.000%   0.005%
   41    1.1  0.5  0.5   0.000%   1.673%   0.000%   0.043%
   42    2.1  0.5  0.5   0.987%   0.000%   0.263%   0.001%
   43    3.1  0.5  0.5   0.186%   0.000%   1.802%   0.004%
   44    4.1  0.5  0.5   0.000%   0.250%   0.006%   2.589%
   45    5.1  0.5  0.5   2.626%   0.000%   0.300%   0.001%
   46    6.1  0.5  0.5   1.097%   0.000%   1.750%   0.004%
   47    7.1  0.5  0.5   0.000%   0.013%   0.000%   0.070%
   48    8.1  0.5  0.5   8.178%   0.001%   8.772%   0.021%
   49    9.1  0.5  0.5   1.119%   0.000%   7.893%   0.019%
   50   10.1  0.5  0.5   0.001%  10.481%   0.004%   1.526%
   51   11.1  0.5  0.5   0.002%  26.026%   0.006%   2.555%
   52   12.1  0.5  0.5   0.000%   1.664%   0.063%  26.611%
   53    1.1  0.5 -0.5   1.673%   0.000%   0.043%   0.000%
   54    2.1  0.5 -0.5   0.000%   0.987%   0.001%   0.263%
   55    3.1  0.5 -0.5   0.000%   0.186%   0.004%   1.802%
   56    4.1  0.5 -0.5   0.250%   0.000%   2.589%   0.006%
   57    5.1  0.5 -0.5   0.000%   2.626%   0.001%   0.300%
   58    6.1  0.5 -0.5   0.000%   1.097%   0.004%   1.750%
   59    7.1  0.5 -0.5   0.013%   0.000%   0.070%   0.000%
   60    8.1  0.5 -0.5   0.001%   8.178%   0.021%   8.772%
   61    9.1  0.5 -0.5   0.000%   1.119%   0.019%   7.893%
   62   10.1  0.5 -0.5  10.481%   0.001%   1.526%   0.004%
   63   11.1  0.5 -0.5  26.026%   0.002%   2.555%   0.006%
   64   12.1  0.5 -0.5   1.664%   0.000%  26.611%   0.063%


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

              2       6      357.49       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      3999.78   3310.57    508.04    177.74      2.38      0.73
 REAL TIME  *      4250.79 SEC
 DISK USED  *       389.59 MB (local),        7.70 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.971853898068

              CI              CI           MULTI
   -109.92233437   -109.92052479   -109.33341791
 **********************************************************************************************************************************
 Molpro calculation terminated
