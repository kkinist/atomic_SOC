
 Working directory              : /wrk/irikura/molpro.Is0oQIlCrQ/
 Global scratch directory       : /wrk/irikura/molpro.Is0oQIlCrQ/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.Is0oQIlCrQ/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space
                                                                                 ! hybrid SO-CI
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
 
                                                                                 ! replace with opt-MRCI+Q energies
 HLSDIAG(1)=-110.016507
 HLSDIAG(2)=-110.016507
 HLSDIAG(3)=-110.016507
 HLSDIAG(4)=-110.016507
 HLSDIAG(5)=-110.016507
 HLSDIAG(6)=-110.016507
 HLSDIAG(7)=-110.016507
 HLSDIAG(8)=-109.975123
 HLSDIAG(9)=-109.975123
 HLSDIAG(10)=-109.975123
 HLSDIAG(11)=-109.991822
 HLSDIAG(12)=-109.991822
 HLSDIAG(13)=-109.991822
 HLSDIAG(14)=-109.991822
 HLSDIAG(15)=-109.991822
 HLSDIAG(16)=-109.991822
 HLSDIAG(17)=-109.991822
 HLSDIAG(18)=-109.995136
 HLSDIAG(19)=-109.995136
 HLSDIAG(20)=-109.995136
 HLSDIAG(21)=-109.995136
 HLSDIAG(22)=-109.995136
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.19 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space                                                                                                                                 
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 17:11:40  
 **********************************************************************************************************************************

 SHA1:             3c61bfe44d37c8635c785372c339f5cbdd4e4b59
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  12000 MW

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

     13.894 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.07 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     60 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      478351.  Node maximum:      485007. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.86       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.80      0.51
 REAL TIME  *         1.37 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.299D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.294D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.190D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.925D-02 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 3 5 1 6 4 2 5 3 2   6 4 5 3 1 711 91514  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.397D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.398D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.361D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 1 2 3 3   1 2 9 7 5 4 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 5 4 1
                                        2 3

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
   1    4    8    0   -109.34274051    -109.35405512   -0.01131461    0.16422264 0.00001125 0.00000000  0.11E+00      0.28
   2    3    6    0   -109.35382701    -109.35383690   -0.00000988    0.00515507 0.00000829 0.00000000  0.35E-02      0.49
   3   20   40    0   -109.35383690    -109.35383690   -0.00000000    0.00000502 0.00000033 0.00000000  0.38E-05      1.76

 CONVERGENCE REACHED!  Final gradient:    0.00000011 ( 0.11E-06)
                       Final energy:   -109.35383690
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380939435863
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623010
 One electron energy                          -193.47898687
 Two electron energy                            84.09804744
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380939435816
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623018
 One electron energy                          -193.47898699
 Two electron energy                            84.09804755
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380939435714
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623021
 One electron energy                          -193.47898702
 Two electron energy                            84.09804758
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380939435338
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623016
 One electron energy                          -193.47898695
 Two electron energy                            84.09804752
 Virial ratio                                    3.66937537
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380939434112
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623024
 One electron energy                          -193.47898707
 Two electron energy                            84.09804763
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380939434016
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623025
 One electron energy                          -193.47898707
 Two electron energy                            84.09804764
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380939433425
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97623029
 One electron energy                          -193.47898713
 Two electron energy                            84.09804770
 Virial ratio                                    3.66937536
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Quartet
 =============================
 !MCSCF STATE 8.1 Quartet Energy              -109.327343966421
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696399
 One electron energy                          -193.46940770
 Two electron energy                            84.14206373
 Virial ratio                                    3.66801962
 
 !MCSCF STATE 8.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Quartet
 =============================
 !MCSCF STATE 9.1 Quartet Energy              -109.327343963029
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696409
 One electron energy                          -193.46940785
 Two electron energy                            84.14206388
 Virial ratio                                    3.66801962
 
 !MCSCF STATE 9.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Quartet
 ==============================
 !MCSCF STATE 10.1 Quartet Energy             -109.327343962970
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.97696414
 One electron energy                          -193.46940790
 Two electron energy                            84.14206394
 Virial ratio                                    3.66801961
 
 !MCSCF STATE 10.1 Quartet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.352673484013
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073031
 One electron energy                          -193.45206895
 Two electron energy                            84.09939546
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.352673483027
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073038
 One electron energy                          -193.45206904
 Two electron energy                            84.09939556
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.352673482813
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073037
 One electron energy                          -193.45206903
 Two electron energy                            84.09939555
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.352673482578
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073041
 One electron energy                          -193.45206909
 Two electron energy                            84.09939561
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.352673480558
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073046
 One electron energy                          -193.45206916
 Two electron energy                            84.09939568
 Virial ratio                                    3.66969539
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.352673480529
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073046
 One electron energy                          -193.45206915
 Two electron energy                            84.09939566
 Virial ratio                                    3.66969540
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.352673479398
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96073050
 One electron energy                          -193.45206921
 Two electron energy                            84.09939573
 Virial ratio                                    3.66969539
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333417907192
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992088
 One electron energy                          -193.59969842
 Two electron energy                            84.26628051
 Virial ratio                                    3.66342579
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333417906635
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992094
 One electron energy                          -193.59969851
 Two electron energy                            84.26628061
 Virial ratio                                    3.66342578
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333417906394
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992094
 One electron energy                          -193.59969849
 Two electron energy                            84.26628059
 Virial ratio                                    3.66342579
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333417905979
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992096
 One electron energy                          -193.59969855
 Two electron energy                            84.26628065
 Virial ratio                                    3.66342578
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333417905771
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.04992099
 One electron energy                          -193.59969859
 Two electron energy                            84.26628068
 Virial ratio                                    3.66342578
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     1.000199737921
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     1.482100415049
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.969593778195
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     8.999800218107
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     2.517754088100
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     6.030384659696
 !MCSCF expec      <8.1 Quartet|LXLX|8.1 Quartet>     0.999999999999
 !MCSCF expec      <9.1 Quartet|LXLX|9.1 Quartet>     0.999999993031
 !MCSCF expec    <10.1 Quartet|LXLX|10.1 Quartet>     0.000000098940
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.999999999988
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     1.278703788200
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     3.966486130269
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     1.441702975124
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     8.721256787029
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     2.558345905950
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     6.033343503681
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     2.929457810783
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000004275
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999999832465
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.070493831377
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.000000083067
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     2.480623448659
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     1.518070912539
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.030467983768
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     1.519377369051
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     8.482077394137
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     5.969553665565
 !MCSCF expec      <8.1 Quartet|LYLY|8.1 Quartet>     0.999999999986
 !MCSCF expec      <9.1 Quartet|LYLY|9.1 Quartet>     0.000000006983
 !MCSCF expec    <10.1 Quartet|LYLY|10.1 Quartet>     0.999999901074
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.999999999994
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     3.175347214731
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     4.033587364826
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     1.560125523223
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     0.824693763145
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     8.439819347829
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     5.966582206461
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     3.068920706871
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     3.999999932890
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000000001394
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     0.931125452909
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     1.000000069342
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     8.519176813420
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     8.999828672412
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     3.999938238037
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.480822412842
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     1.000168517763
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     0.000061674739
 !MCSCF expec      <8.1 Quartet|LZLZ|8.1 Quartet>     0.000000000015
 !MCSCF expec      <9.1 Quartet|LZLZ|9.1 Quartet>     0.999999999986
 !MCSCF expec    <10.1 Quartet|LZLZ|10.1 Quartet>     0.999999999985
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     4.000000000019
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     7.545948997069
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     3.999926504905
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     8.998171501652
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     2.454049449826
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     1.001834746221
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     0.000074289858
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     0.001621482346
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     1.000000062835
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000166141
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     3.998380715714
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.999999847591
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 6 2 4 3 1 1 5 2   6 4 3 1 5 2 6 4 3 5   4 2 6 3 1 9 8 71415  13101211 4 3 2 5 6 1
                                        9 8 7141513101211 4   3 2 5 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 1 3 2 1 3 2 1   3 210 5 6 9 7 4 8 1   3 2 410 6 7 9 8 5 1   3 2 4 8 6 9 710 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99986    -3.72344     1  1  s    1.00205
    2.1     1.60115    -0.30713     1  1  d2+  1.00384
    3.1     1.60115    -0.30713     1  1  d1-  1.00384
    4.1     1.60115    -0.30713     1  1  d0   1.00384
    5.1     1.60115    -0.30713     1  1  d1+  1.00384
    6.1     1.60115    -0.30713     1  1  d2-  1.00384
    7.1     0.99539    -0.10114     1  2  s    0.90613
    1.2     1.99967    -2.35370     1  1  py   1.00013
    2.2     1.99967    -2.35370     1  1  pz   1.00013
    3.2     1.99967    -2.35370     1  1  px   1.00013
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a2a22a 222      0.99999998     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 222a2aa 222     -0.00000000     -0.00000975      0.00008612      0.99999226     -0.00000004     -0.00000002      0.00392944
 22a2a2a 222     -0.00000000     -0.00000167     -0.00000002     -0.00351460      0.00000467     -0.00000115      0.89442025
 2a222aa 222      0.00000000     -0.00000084     -0.00000001     -0.00175730      0.00000233     -0.00000058      0.44721018
 2a22a2a 222     -0.00000000      0.81980699     -0.00010440      0.00000798     -0.35765412      0.00002662      0.00000343
 22aa22a 222     -0.00000000      0.00000024      0.00292652     -0.00000025      0.00004678      0.63244872      0.00000081
 222aa2a 222     -0.00000000      0.15505211     -0.00001791      0.00000148     -0.61315479      0.00004538      0.00000350
 2222aaa 222     -0.00000000      0.00009129      0.70963363     -0.00006111      0.00004265      0.54444475      0.00000048
 2aa222a 222     -0.00000000     -0.00009088     -0.70456475      0.00006068      0.00003837      0.55098865      0.00000093
 22a22aa 222     -0.00000000      0.55124884     -0.00007338      0.00000542      0.70436119     -0.00005197     -0.00000263
 
 Energy:       -109.38093944   -109.38093944   -109.38093944   -109.38093944   -109.38093943   -109.38093943   -109.38093943

 State:                8               9              10
 2a2a22a 222      0.00000000      0.00000000     -0.00000000
 222a2aa 222      0.00000000      0.00000000      0.00000000
 22a2a2a 222     -0.44688819      0.00000167     -0.00000036
 2a222aa 222      0.89377628     -0.00000335      0.00000072
 2a22a2a 222     -0.00000167     -0.44688813     -0.00003731
 22aa22a 222     -0.00000062     -0.00006462      0.77403300
 222aa2a 222      0.00000290      0.77403300      0.00006462
 2222aaa 222      0.00000036      0.00003731     -0.44688813
 2aa222a 222      0.00000036      0.00003731     -0.44688813
 22a22aa 222      0.00000167      0.44688813      0.00003731
 
 Energy:       -109.32734397   -109.32734396   -109.32734396
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a2a22b 222      0.81437444      0.00000155     -0.00000047     -0.00000084      0.00000004      0.00000015      0.00000003
 222a2ab 222      0.00000047     -0.00044590      0.81436660     -0.00034779     -0.00002137      0.00001492      0.00352737
 22a2a2b 222     -0.00000003     -0.00000357     -0.00315498      0.00000343      0.00003462      0.00005824      0.72839178
 2a22a2b 222     -0.00000135      0.71105970      0.00038527      0.00030379     -0.15798205     -0.00037068      0.00001269
 22a22ab 222     -0.00000066      0.33073075      0.00019826      0.00011989      0.64898319      0.00159036     -0.00002849
 2222aab 222      0.00000052     -0.00025426      0.00024076      0.58252501     -0.00104973      0.43729622     -0.00003662
 2aa222b 222     -0.00000067      0.00023005     -0.00025110     -0.56904262     -0.00112631      0.45470177     -0.00003470
 222b2aa 222     -0.00000023      0.00022295     -0.40718329      0.00017390      0.00001068     -0.00000746     -0.00176369
 222a2ba 222     -0.00000023      0.00022295     -0.40718331      0.00017390      0.00001068     -0.00000746     -0.00176368
 2a2b22a 222     -0.40718720     -0.00000078      0.00000023      0.00000042     -0.00000002     -0.00000007     -0.00000001
 222220a 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 202222a 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 2b2a22a 222     -0.40718724     -0.00000078      0.00000023      0.00000042     -0.00000002     -0.00000007     -0.00000001
 222022a 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 22aa22b 222     -0.00000009     -0.00001398     -0.00000597      0.00778405     -0.00125633      0.51499523     -0.00004118
 222aa2b 222     -0.00000040      0.21958299      0.00010797      0.00010617     -0.46590157     -0.00113221      0.00002377
 222202a 222      0.00000001     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22b2a 222      0.00000067     -0.35552983     -0.00019264     -0.00015189      0.07899101      0.00018534     -0.00000634
 22b22aa 222      0.00000033     -0.16536538     -0.00009913     -0.00005995     -0.32449157     -0.00079518      0.00001425
 2ab222a 222      0.00000034     -0.00011502      0.00012555      0.28452130      0.00056315     -0.22735087      0.00001735
 2222baa 222     -0.00000026      0.00012713     -0.00012038     -0.29126250      0.00052486     -0.21864810      0.00001831
 22a22ba 222      0.00000033     -0.16536537     -0.00009913     -0.00005995     -0.32449161     -0.00079518      0.00001425
 2b22a2a 222      0.00000067     -0.35552986     -0.00019264     -0.00015189      0.07899104      0.00018534     -0.00000634
 2222aba 222     -0.00000026      0.00012713     -0.00012038     -0.29126251      0.00052486     -0.21864812      0.00001831
 2ba222a 222      0.00000034     -0.00011502      0.00012555      0.28452133      0.00056315     -0.22735090      0.00001735
 22b2a2a 222      0.00000001      0.00000178      0.00157749     -0.00000172     -0.00001731     -0.00002912     -0.36419588
 22a2b2a 222      0.00000001      0.00000178      0.00157749     -0.00000172     -0.00001731     -0.00002912     -0.36419590
 220222a 222     -0.00000001      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2a222ab 222     -0.00000001     -0.00000178     -0.00157749      0.00000172      0.00001731      0.00002912      0.36419596
 222ab2a 222      0.00000020     -0.10979149     -0.00005398     -0.00005309      0.23295078      0.00056610     -0.00001189
 22ba22a 222      0.00000004      0.00000699      0.00000299     -0.00389203      0.00062817     -0.25749760      0.00002059
 22ab22a 222      0.00000004      0.00000699      0.00000299     -0.00389203      0.00062817     -0.25749763      0.00002059
 222ba2a 222      0.00000020     -0.10979150     -0.00005398     -0.00005309      0.23295079      0.00056610     -0.00001189
 22222a0 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2222a20 222      0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 22a2220 222      0.00000000     -0.00000000      0.00000000      0.00000001      0.00000000     -0.00000000      0.00000000
 2a22220 222      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 222a220 222     -0.00000001     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000
 2b222aa 222      0.00000001      0.00000089      0.00078875     -0.00000086     -0.00000865     -0.00001456     -0.18209798
 2a222ba 222      0.00000001      0.00000089      0.00078875     -0.00000086     -0.00000865     -0.00001456     -0.18209798
 22202a2 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000
 2a20222 222      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 222a202 222      0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 202a222 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000
 
 Energy:       -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348   -109.35267348

 State:                8               9              10              11              12
 2a2a22b 222     -0.00000000      0.00000000      0.00000000     -0.00000002     -0.00000000
 222a2ab 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 22a2a2b 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2a22a2b 222     -0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 22a22ab 222     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000
 2222aab 222     -0.00000000      0.00000000      0.00000001      0.00000000      0.00000000
 2aa222b 222     -0.00000000     -0.00000000      0.00000002      0.00000000     -0.00000000
 222b2aa 222      0.00000109     -0.00007487     -0.00012197      0.00000444     -0.51830141
 222a2ba 222     -0.00000109      0.00007487      0.00012197     -0.00000444      0.51830140
 2a2b22a 222      0.01043539     -0.00000462     -0.00000034      0.51819637      0.00000446
 222220a 222      0.51819637     -0.00000268      0.00000360     -0.01043539      0.00000100
 202222a 222      0.51819637     -0.00000268      0.00000360     -0.01043538      0.00000100
 2b2a22a 222     -0.01043538      0.00000462      0.00000034     -0.51819635     -0.00000446
 222022a 222     -0.51819633      0.00000268     -0.00000360      0.01043539     -0.00000100
 22aa22b 222     -0.00000000     -0.00000000      0.00000002      0.00000000     -0.00000000
 222aa2b 222     -0.00000000     -0.00000003      0.00000000     -0.00000000      0.00000000
 222202a 222     -0.25006088     -0.00000267     -0.00000209      0.45398889      0.00000336
 2a22b2a 222      0.00000240      0.44886220     -0.00001706      0.00000396     -0.00006484
 22b22aa 222     -0.00000240     -0.44886220      0.00001706     -0.00000396      0.00006484
 2ab222a 222      0.00000311     -0.00001705     -0.44886220     -0.00000035      0.00010563
 2222baa 222      0.00000311     -0.00001705     -0.44886219     -0.00000035      0.00010563
 22a22ba 222      0.00000240      0.44886219     -0.00001706      0.00000396     -0.00006484
 2b22a2a 222     -0.00000240     -0.44886219      0.00001706     -0.00000396      0.00006484
 2222aba 222     -0.00000311      0.00001705      0.44886219      0.00000035     -0.00010563
 2ba222a 222     -0.00000311      0.00001705      0.44886218      0.00000035     -0.00010563
 22b2a2a 222     -0.00000095      0.00006484      0.00010563     -0.00000384      0.44886217
 22a2b2a 222      0.00000095     -0.00006484     -0.00010563      0.00000384     -0.44886216
 220222a 222     -0.26813549      0.00000534     -0.00000151     -0.44355350     -0.00000437
 2a222ab 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000001
 222ab2a 222      0.00000138      0.25915070     -0.00000985      0.00000228     -0.00003743
 22ba22a 222      0.00000180     -0.00000984     -0.25915070     -0.00000020      0.00006098
 22ab22a 222     -0.00000180      0.00000984      0.25915067      0.00000020     -0.00006098
 222ba2a 222     -0.00000138     -0.25915067      0.00000985     -0.00000228      0.00003743
 22222a0 222     -0.00000044      0.00002987      0.00004865     -0.00000177      0.20674988
 2222a20 222     -0.00000110     -0.20674986      0.00000786     -0.00000182      0.00002986
 22a2220 222      0.00000143     -0.00000785     -0.20674984     -0.00000016      0.00004865
 2a22220 222      0.00416267     -0.00000184     -0.00000013      0.20670798      0.00000178
 222a220 222     -0.20670795      0.00000107     -0.00000144      0.00416266     -0.00000040
 2b222aa 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001
 2a222ba 222     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22202a2 222      0.00000014     -0.00000984     -0.00001603      0.00000058     -0.06811676
 2a20222 222     -0.00137145      0.00000061      0.00000004     -0.06810296     -0.00000059
 222a202 222      0.06810295     -0.00000035      0.00000047     -0.00137145      0.00000013
 202a222 222      0.06810295     -0.00000035      0.00000047     -0.00137145      0.00000013
 
 Energy:       -109.33341791   -109.33341791   -109.33341791   -109.33341791   -109.33341791
 


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
 CPU TIMES  *         2.68      1.88      0.51
 REAL TIME  *         3.41 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.05 MB
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
     8      -109.32734397
     9      -109.32734396
    10      -109.32734396

 Number of blocks in overlap matrix:    76   Smallest eigenvalue:  0.25D-03
 Number of N-2 electron functions:     908
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1719888
 Total number of contracted configurations:      1772000
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    519141 words, CPU-Time:      0.07 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    460543 words, CPU-time:      0.04 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38093944    -0.00000000    -0.67379778  0.25D-01  0.10D+00     0.47
    1     2     2     1.00000000     0.00000000  -109.38093944     0.00000000    -0.67186722  0.25D-01  0.10D+00     0.47
    1     3     3     1.00000000     0.00000000  -109.38093944     0.00000000    -0.67119890  0.25D-01  0.99D-01     0.47
    1     4     4     1.00000000     0.00000000  -109.38093944    -0.00000000    -0.67328603  0.25D-01  0.10D+00     0.47
    1     5     5     1.00000000     0.00000000  -109.38093943    -0.00000000    -0.67070561  0.25D-01  0.99D-01     0.47
    1     6     6     1.00000000     0.00000000  -109.38093943    -0.00000000    -0.67097195  0.25D-01  0.99D-01     0.47
    1     7     7     1.00000000     0.00000000  -109.38093943    -0.00000000    -0.66994598  0.25D-01  0.99D-01     0.47
    1     8     8     1.00000000     0.00000000  -109.32734397     0.00000000    -0.68209648  0.29D-01  0.10D+00     0.47
    1     9     9     1.00000000     0.00000000  -109.32734396     0.00000000    -0.68192436  0.29D-01  0.10D+00     0.47
    1    10    10     1.00000000     0.00000000  -109.32734396     0.00000000    -0.68207725  0.29D-01  0.10D+00     0.47
    2     1     1     1.08708680    -0.56260576  -109.94354519    -0.56260576    -0.01781561  0.11D-02  0.25D-02    32.33
    2     2     2     1.08703781    -0.56244766  -109.94338710    -0.56244766    -0.01787281  0.11D-02  0.25D-02    32.33
    2     3     3     1.08690675    -0.56206589  -109.94300533    -0.56206589    -0.01795456  0.11D-02  0.25D-02    32.33
    2     4     4     1.08685927    -0.56195642  -109.94289585    -0.56195642    -0.01797872  0.11D-02  0.25D-02    32.33
    2     5     5     1.08675722    -0.56174641  -109.94268585    -0.56174641    -0.01804192  0.11D-02  0.25D-02    32.33
    2     6     6     1.08673897    -0.56165439  -109.94259382    -0.56165439    -0.01808094  0.11D-02  0.25D-02    32.33
    2     7     7     1.08668266    -0.56150173  -109.94244116    -0.56150173    -0.01811525  0.11D-02  0.25D-02    32.33
    2     8     8     1.09203883    -0.57211618  -109.89946015    -0.57211618    -0.01749539  0.11D-02  0.26D-02    32.33
    2     9     9     1.09206021    -0.57210410  -109.89944806    -0.57210410    -0.01750604  0.11D-02  0.26D-02    32.33
    2    10    10     1.09205436    -0.57203977  -109.89938373    -0.57203977    -0.01755243  0.11D-02  0.26D-02    32.33
    3     1     1     1.08512210    -0.58141362  -109.96235305    -0.01880786    -0.00117041  0.32D-04  0.20D-03    63.86
    3     2     2     1.08506847    -0.58135739  -109.96229683    -0.01890973    -0.00119452  0.32D-04  0.20D-03    63.86
    3     3     3     1.08491233    -0.58122347  -109.96216291    -0.01915758    -0.00125327  0.34D-04  0.20D-03    63.86
    3     4     4     1.08487532    -0.58119843  -109.96213786    -0.01924201    -0.00126510  0.35D-04  0.20D-03    63.86
    3     5     5     1.08477821    -0.58110694  -109.96204637    -0.01936052    -0.00129803  0.36D-04  0.21D-03    63.86
    3     6     6     1.08475837    -0.58108507  -109.96202450    -0.01943068    -0.00131067  0.36D-04  0.21D-03    63.86
    3     7     7     1.08470717    -0.58103645  -109.96197588    -0.01953472    -0.00133510  0.37D-04  0.21D-03    63.86
    3     8     8     1.08907855    -0.59098811  -109.91833208    -0.01887193    -0.00122099  0.44D-04  0.20D-03    63.86
    3     9     9     1.08909091    -0.59098314  -109.91832710    -0.01887904    -0.00123016  0.44D-04  0.20D-03    63.86
    3    10    10     1.08908984    -0.59098282  -109.91832678    -0.01894305    -0.00122420  0.44D-04  0.20D-03    63.86
    4     1     1     1.08822378    -0.58308495  -109.96402439    -0.00167133    -0.00020270  0.81D-05  0.33D-04    96.41
    4     2     2     1.08819880    -0.58306998  -109.96400942    -0.00171259    -0.00020978  0.83D-05  0.34D-04    96.41
    4     3     3     1.08818416    -0.58304887  -109.96398830    -0.00182539    -0.00021560  0.90D-05  0.33D-04    96.41
    4     4     4     1.08818004    -0.58304862  -109.96398805    -0.00185019    -0.00021704  0.86D-05  0.34D-04    96.41
    4     5     5     1.08813822    -0.58302109  -109.96396052    -0.00191415    -0.00022621  0.92D-05  0.35D-04    96.41
    4     6     6     1.08814089    -0.58302047  -109.96395990    -0.00193540    -0.00022729  0.92D-05  0.35D-04    96.41
    4     7     7     1.08812388    -0.58301346  -109.96395289    -0.00197701    -0.00023046  0.95D-05  0.35D-04    96.41
    4     8     8     1.09227114    -0.59280927  -109.92015323    -0.00182116    -0.00020716  0.11D-04  0.32D-04    96.41
    4     9     9     1.09227300    -0.59280678  -109.92015074    -0.00182364    -0.00020750  0.11D-04  0.32D-04    96.41
    4    10    10     1.09225595    -0.59280061  -109.92014457    -0.00181779    -0.00021160  0.11D-04  0.33D-04    96.41
    5     1     1     1.08940179    -0.58334438  -109.96428382    -0.00025943    -0.00004312  0.78D-06  0.80D-05   128.19
    5     2     2     1.08938908    -0.58333892  -109.96427836    -0.00026894    -0.00004543  0.81D-06  0.84D-05   128.19
    5     3     3     1.08937754    -0.58333291  -109.96427235    -0.00028405    -0.00004639  0.91D-06  0.82D-05   128.19
    5     4     4     1.08937561    -0.58333238  -109.96427182    -0.00028376    -0.00004699  0.89D-06  0.84D-05   128.19
    5     5     5     1.08935716    -0.58332210  -109.96426153    -0.00030101    -0.00005064  0.98D-06  0.88D-05   128.19
    5     6     6     1.08935011    -0.58332160  -109.96426104    -0.00030114    -0.00005141  0.96D-06  0.90D-05   128.19
    5     7     7     1.08934046    -0.58331940  -109.96425883    -0.00030594    -0.00005235  0.10D-05  0.91D-05   128.19
    5     8     8     1.09346435    -0.59308803  -109.92043200    -0.00027876    -0.00004712  0.18D-05  0.85D-05   128.19
    5     9     9     1.09345755    -0.59308593  -109.92042989    -0.00027915    -0.00004857  0.17D-05  0.89D-05   128.19
    5    10    10     1.09344933    -0.59308251  -109.92042648    -0.00028190    -0.00005074  0.17D-05  0.94D-05   128.19
    6     1     1     1.08942104    -0.58340256  -109.96434200    -0.00005818    -0.00001292  0.56D-06  0.22D-05   159.87
    6     2     2     1.08940676    -0.58340054  -109.96433998    -0.00006162    -0.00001384  0.61D-06  0.23D-05   159.87
    6     3     3     1.08937605    -0.58340039  -109.96433983    -0.00006748    -0.00001265  0.61D-06  0.19D-05   159.87
    6     4     4     1.08937781    -0.58339978  -109.96433921    -0.00006740    -0.00001322  0.63D-06  0.20D-05   159.87
    6     5     5     1.08934789    -0.58339640  -109.96433584    -0.00007431    -0.00001443  0.68D-06  0.21D-05   159.87
    6     6     6     1.08934982    -0.58339539  -109.96433482    -0.00007379    -0.00001547  0.68D-06  0.24D-05   159.87
    6     7     7     1.08933897    -0.58339491  -109.96433434    -0.00007551    -0.00001562  0.68D-06  0.24D-05   159.87
    6     8     8     1.09343326    -0.59315520  -109.92049917    -0.00006717    -0.00001447  0.64D-06  0.24D-05   159.87
    6     9     9     1.09343195    -0.59315361  -109.92049757    -0.00006768    -0.00001555  0.68D-06  0.26D-05   159.87
    6    10    10     1.09342945    -0.59315155  -109.92049551    -0.00006903    -0.00001699  0.75D-06  0.28D-05   159.87
    7     1     1     1.08951896    -0.58341714  -109.96435658    -0.00001458    -0.00000403  0.99D-07  0.76D-06   191.43
    7     2     2     1.08953322    -0.58341692  -109.96435635    -0.00001637    -0.00000389  0.21D-06  0.60D-06   191.43
    7     3     3     1.08952359    -0.58341652  -109.96435595    -0.00001612    -0.00000419  0.18D-06  0.69D-06   191.43
    7     4     4     1.08951053    -0.58341637  -109.96435580    -0.00001659    -0.00000440  0.12D-06  0.81D-06   191.43
    7     5     5     1.08951534    -0.58341533  -109.96435477    -0.00001893    -0.00000465  0.24D-06  0.71D-06   191.43
    7     6     6     1.08949791    -0.58341452  -109.96435396    -0.00001913    -0.00000519  0.20D-06  0.87D-06   191.43
    7     7     7     1.08949799    -0.58341443  -109.96435387    -0.00001952    -0.00000523  0.22D-06  0.87D-06   191.43
    7     8     8     1.09359751    -0.59317217  -109.92051614    -0.00001697    -0.00000475  0.23D-06  0.86D-06   191.43
    7     9     9     1.09358552    -0.59317163  -109.92051560    -0.00001802    -0.00000491  0.25D-06  0.86D-06   191.43
    7    10    10     1.09356672    -0.59317065  -109.92051462    -0.00001911    -0.00000538  0.25D-06  0.98D-06   191.43
    8     1     1     1.08963363    -0.58342186  -109.96436129    -0.00000472    -0.00000123  0.36D-07  0.23D-06   223.06
    8     2     2     1.08964056    -0.58342178  -109.96436121    -0.00000486    -0.00000127  0.24D-07  0.23D-06   223.06
    8     3     3     1.08963551    -0.58342158  -109.96436101    -0.00000506    -0.00000138  0.27D-07  0.25D-06   223.06
    8     4     4     1.08962991    -0.58342155  -109.96436099    -0.00000518    -0.00000138  0.38D-07  0.25D-06   223.06
    8     5     5     1.08963257    -0.58342113  -109.96436057    -0.00000580    -0.00000158  0.29D-07  0.28D-06   223.06
    8     6     6     1.08962570    -0.58342077  -109.96436021    -0.00000625    -0.00000174  0.36D-07  0.31D-06   223.06
    8     7     7     1.08962451    -0.58342071  -109.96436015    -0.00000628    -0.00000180  0.35D-07  0.32D-06   223.06
    8     8     8     1.09373498    -0.59317786  -109.92052183    -0.00000569    -0.00000153  0.54D-07  0.28D-06   223.06
    8     9     9     1.09373114    -0.59317773  -109.92052169    -0.00000609    -0.00000160  0.57D-07  0.29D-06   223.06
    8    10    10     1.09372602    -0.59317736  -109.92052133    -0.00000671    -0.00000177  0.66D-07  0.33D-06   223.06
    9     1     1     1.08965868    -0.58342339  -109.96436283    -0.00000154    -0.00000044  0.17D-07  0.79D-07   254.92
    9     2     2     1.08965368    -0.58342336  -109.96436279    -0.00000158    -0.00000042  0.20D-07  0.70D-07   254.92
    9     3     3     1.08965255    -0.58342328  -109.96436271    -0.00000170    -0.00000046  0.23D-07  0.78D-07   254.92
    9     4     4     1.08965524    -0.58342327  -109.96436271    -0.00000172    -0.00000050  0.19D-07  0.89D-07   254.92
    9     5     5     1.08964621    -0.58342310  -109.96436253    -0.00000196    -0.00000054  0.26D-07  0.89D-07   254.92
    9     6     6     1.08964383    -0.58342296  -109.96436240    -0.00000219    -0.00000062  0.28D-07  0.10D-06   254.92
    9     7     7     1.08964189    -0.58342293  -109.96436236    -0.00000221    -0.00000064  0.29D-07  0.11D-06   254.92
    9     8     8     1.09373508    -0.59317984  -109.92052381    -0.00000198    -0.00000056  0.32D-07  0.95D-07   254.92
    9     9     9     1.09373392    -0.59317977  -109.92052373    -0.00000204    -0.00000062  0.26D-07  0.11D-06   254.92
    9    10    10     1.09373172    -0.59317962  -109.92052358    -0.00000225    -0.00000072  0.26D-07  0.13D-06   254.92
   10     1     1     1.08966898    -0.58342389  -109.96436332    -0.00000049    -0.00000015  0.62D-08  0.24D-07   286.84
   10     2     2     1.08966923    -0.58342388  -109.96436332    -0.00000052    -0.00000017  0.17D-08  0.35D-07   286.84
   10     3     3     1.08966711    -0.58342385  -109.96436329    -0.00000058    -0.00000017  0.53D-08  0.29D-07   286.84
   10     4     4     1.08966636    -0.58342383  -109.96436326    -0.00000056    -0.00000019  0.23D-08  0.39D-07   286.84
   10     5     5     1.08966329    -0.58342378  -109.96436322    -0.00000068    -0.00000020  0.78D-08  0.32D-07   286.84
   10     6     6     1.08965964    -0.58342372  -109.96436315    -0.00000075    -0.00000024  0.54D-08  0.43D-07   286.84
   10     7     7     1.08965869    -0.58342371  -109.96436314    -0.00000078    -0.00000024  0.73D-08  0.42D-07   286.84
   10     8     8     1.09375462    -0.59318049  -109.92052445    -0.00000065    -0.00000022  0.45D-08  0.44D-07   286.84
   10     9     9     1.09375128    -0.59318046  -109.92052442    -0.00000069    -0.00000024  0.54D-08  0.46D-07   286.84
   10    10    10     1.09374630    -0.59318038  -109.92052434    -0.00000076    -0.00000028  0.46D-08  0.57D-07   286.84
   11     1     1     1.08968590    -0.58342407  -109.96436350    -0.00000018    -0.00000005  0.12D-08  0.97D-08   318.64
   11     2     2     1.08968312    -0.58342406  -109.96436349    -0.00000018    -0.00000006  0.17D-08  0.12D-07   318.64
   11     3     3     1.08968395    -0.58342405  -109.96436349    -0.00000020    -0.00000006  0.12D-08  0.12D-07   318.64
   11     4     4     1.08968160    -0.58342403  -109.96436347    -0.00000021    -0.00000007  0.19D-08  0.14D-07   318.64
   11     5     5     1.08968270    -0.58342403  -109.96436346    -0.00000024    -0.00000008  0.16D-08  0.14D-07   318.64
   11     6     6     1.08967924    -0.58342399  -109.96436342    -0.00000027    -0.00000010  0.21D-08  0.18D-07   318.64
   11     7     7     1.08967885    -0.58342399  -109.96436342    -0.00000028    -0.00000010  0.20D-08  0.19D-07   318.64
   11     8     8     1.09377606    -0.59318073  -109.92052469    -0.00000024    -0.00000009  0.37D-08  0.16D-07   318.64
   11     9     9     1.09377483    -0.59318072  -109.92052468    -0.00000026    -0.00000009  0.39D-08  0.18D-07   318.64
   11    10    10     1.09377236    -0.59318069  -109.92052465    -0.00000031    -0.00000011  0.50D-08  0.20D-07   318.64
   12     1     1     1.08969157    -0.58342413  -109.96436357    -0.00000006    -0.00000002  0.62D-09  0.36D-08   350.81
   12     2     2     1.08969139    -0.58342412  -109.96436356    -0.00000007    -0.00000002  0.44D-09  0.49D-08   350.81
   12     3     3     1.08969075    -0.58342412  -109.96436356    -0.00000007    -0.00000002  0.74D-09  0.45D-08   350.81
   12     4     4     1.08969031    -0.58342412  -109.96436355    -0.00000008    -0.00000003  0.50D-09  0.58D-08   350.81
   12     5     5     1.08968942    -0.58342411  -109.96436355    -0.00000009    -0.00000003  0.91D-09  0.53D-08   350.81
   12     6     6     1.08968776    -0.58342410  -109.96436353    -0.00000011    -0.00000004  0.10D-08  0.72D-08   350.81
   12     7     7     1.08968727    -0.58342409  -109.96436353    -0.00000011    -0.00000004  0.98D-09  0.75D-08   350.81
   12     8     8     1.09378125    -0.59318083  -109.92052479    -0.00000010    -0.00000003  0.13D-08  0.67D-08   350.81
   12     9     9     1.09378073    -0.59318083  -109.92052479    -0.00000010    -0.00000004  0.95D-09  0.76D-08   350.81
   12    10    10     1.09377948    -0.59318081  -109.92052477    -0.00000012    -0.00000005  0.79D-09  0.95D-08   350.81
   13     1     1     1.08969158    -0.58342413  -109.96436357    -0.00000000    -0.00000002  0.63D-09  0.36D-08   355.61
   13     2     2     1.08969139    -0.58342412  -109.96436356     0.00000000    -0.00000002  0.44D-09  0.49D-08   355.61
   13     3     3     1.08969075    -0.58342412  -109.96436356     0.00000000    -0.00000002  0.74D-09  0.45D-08   355.61
   13     4     4     1.08969031    -0.58342412  -109.96436355    -0.00000000    -0.00000003  0.50D-09  0.58D-08   355.61
   13     5     5     1.08968945    -0.58342411  -109.96436355    -0.00000000    -0.00000003  0.90D-09  0.54D-08   355.61
   13     6     6     1.08968776    -0.58342410  -109.96436353     0.00000000    -0.00000004  0.10D-08  0.72D-08   355.61
   13     7     7     1.08968727    -0.58342409  -109.96436353     0.00000000    -0.00000004  0.98D-09  0.75D-08   355.61
   13     8     8     1.09379314    -0.59318088  -109.92052485    -0.00000006    -0.00000001  0.67D-09  0.20D-08   355.61
   13     9     9     1.09378125    -0.59318083  -109.92052479    -0.00000000    -0.00000003  0.13D-08  0.67D-08   355.61
   13    10    10     1.09378073    -0.59318083  -109.92052479    -0.00000002    -0.00000004  0.95D-09  0.76D-08   355.61


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.2%   6.0%  73.4%

 Initialization:   0.1%
 Other:           20.0%

 Total CPU:      355.6 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/22/222           0.0000000   0.9579618   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.0000000
 222/2//222           0.0000000  -0.0000000  -0.0000000   0.9533137   0.0000000   0.0000000  -0.0942590  -0.0000000   0.0000000
                      0.0000003
 22/22//222          -0.0000000   0.0000000   0.0330383  -0.0000000  -0.0000000   0.8561916   0.0000000   0.0000000   0.4274386
                     -0.0000000
 2/222//222           0.0000000   0.0000000  -0.0000000   0.0421539  -0.0000000  -0.0000000   0.4263353  -0.0000000  -0.0000000
                      0.8548748
 2//222/222           0.8533209   0.0000000   0.0000000   0.0000000  -0.0774341   0.0000000   0.0000000  -0.4274350   0.0000000
                      0.0000000
 22/2/2/222          -0.0000000  -0.0000000   0.0000000   0.0843077  -0.0000000   0.0000000   0.8526710   0.0000000   0.0000000
                     -0.4274375
 2222///222          -0.1383546   0.0000000  -0.0000000   0.0000000   0.8455838   0.0000000   0.0000000  -0.4274353   0.0000000
                      0.0000000
 2/22/2/222          -0.0000000  -0.0000000   0.8372622  -0.0000000   0.0000000   0.1820580  -0.0000000   0.0000000  -0.4274372
                     -0.0000000
 222//2/222          -0.0000000   0.0000000   0.4643187   0.0000000   0.0000000  -0.3892105  -0.0000000   0.0000000   0.7403426
                     -0.0000000
 22//22/222           0.4127859  -0.0000000  -0.0000000  -0.0000000   0.4434913   0.0000000  -0.0000000   0.7403391  -0.0000000
                     -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000   -0.000000   -0.698227    0.000000   -0.000000    0.655873   -0.000000    0.000000   -0.000000    0.000000
 2           0.957962   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 3           0.000000    0.776692   -0.000000   -0.000000   -0.560750   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.952937   -0.000000   -0.000000    0.097991    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000    0.655874    0.000000   -0.000000    0.698228   -0.000000    0.000000    0.000000   -0.000000
 6          -0.000000    0.560751    0.000000    0.000000    0.776693    0.000000   -0.000000   -0.000000    0.000001    0.000000
 7           0.000000    0.000000   -0.000000   -0.097991    0.000000    0.000000    0.952939   -0.000000   -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.956120
 9           0.000000    0.000001   -0.000000    0.000000    0.000001    0.000000   -0.000000   -0.000000    0.956125   -0.000000
 10         -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.956125   -0.000000   -0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957962    0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
 2           0.000000    0.957962    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.957962   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.957962    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
 5           0.000000    0.000000    0.000000    0.000000    0.957963    0.000000   -0.000000   -0.000000    0.000000    0.000000
 6           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.957963   -0.000000    0.000000    0.000001   -0.000000
 7          -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957964   -0.000000   -0.000000   -0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.956120   -0.000000   -0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000001   -0.000000   -0.000000    0.956125   -0.000000
 10          0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.956125


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.69822685 (fixed)   0.95796182 (relaxed)   0.95796169 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028   -0.00000000   -0.46744891
 Singles      0.01457361   -0.07404894   -0.07575963
 Pairs        0.07511800   -0.00000007   -0.04021559
 Total        1.08969189   -0.07404901   -0.58342413
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44158760
 One electron energy                 -193.12066800
 Two electron energy                   83.15630444
 Virial quotient                       -2.65347855
 Correlation energy                    -0.58342413
 !MRCI STATE 1.1 Energy              -109.964363565942

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669198 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669180 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669198 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223295 (Pople, fixed reference)
 Cluster corrected energies          -110.01223277 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223295 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95796177 (fixed)   0.95796191 (relaxed)   0.95796177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028   -0.00000000   -0.46744852
 Singles      0.01457361   -0.07404952   -0.07576008
 Pairs        0.07511780    0.00000000   -0.04021552
 Total        1.08969170   -0.07404952   -0.58342412
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44156900
 One electron energy                 -193.12065146
 Two electron energy                   83.15628790
 Virial quotient                       -2.65347974
 Correlation energy                    -0.58342412
 !MRCI STATE 2.1 Energy              -109.964363560667

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669186 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669168 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669186 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223283 (Pople, fixed reference)
 Cluster corrected energies          -110.01223266 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223283 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.77669184 (fixed)   0.95796219 (relaxed)   0.95796205 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46745011
 Singles      0.01457323   -0.07404808   -0.07575967
 Pairs        0.07511755    0.00000000   -0.04021434
 Total        1.08969106   -0.07404808   -0.58342412
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157010
 One electron energy                 -193.12065888
 Two electron energy                   83.15629532
 Virial quotient                       -2.65347967
 Correlation energy                    -0.58342412
 !MRCI STATE 3.1 Energy              -109.964363557890

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669149 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669131 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669149 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223247 (Pople, fixed reference)
 Cluster corrected energies          -110.01223229 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223247 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95293731 (fixed)   0.95796238 (relaxed)   0.95796225 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028   -0.00000000   -0.46744915
 Singles      0.01457353   -0.07404933   -0.07576013
 Pairs        0.07511680    0.00000000   -0.04021483
 Total        1.08969062   -0.07404933   -0.58342412
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093944
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44156826
 One electron energy                 -193.12065394
 Two electron energy                   83.15629039
 Virial quotient                       -2.65347978
 Correlation energy                    -0.58342412
 !MRCI STATE 4.1 Energy              -109.964363551421

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669122 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669104 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669122 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223221 (Pople, fixed reference)
 Cluster corrected energies          -110.01223203 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223221 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.69822780 (fixed)   0.95796276 (relaxed)   0.95796263 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028   -0.00000000   -0.46745105
 Singles      0.01457325   -0.07404796   -0.07575959
 Pairs        0.07511622    0.00000030   -0.04021347
 Total        1.08968976   -0.07404766   -0.58342411
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44158925
 One electron energy                 -193.12068172
 Two electron energy                   83.15631817
 Virial quotient                       -2.65347844
 Correlation energy                    -0.58342411
 !MRCI STATE 5.1 Energy              -109.964363546894

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01669071 (Davidson, fixed reference)
 Cluster corrected energies          -110.01669053 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01669071 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223171 (Pople, fixed reference)
 Cluster corrected energies          -110.01223154 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223171 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.77669308 (fixed)   0.95796351 (relaxed)   0.95796337 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46745202
 Singles      0.01457294   -0.07404738   -0.07575976
 Pairs        0.07511484    0.00000000   -0.04021232
 Total        1.08968806   -0.07404738   -0.58342410
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44157381
 One electron energy                 -193.12067488
 Two electron energy                   83.15631135
 Virial quotient                       -2.65347943
 Correlation energy                    -0.58342410
 !MRCI STATE 6.1 Energy              -109.964363530320

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01668971 (Davidson, fixed reference)
 Cluster corrected energies          -110.01668953 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01668971 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223073 (Pople, fixed reference)
 Cluster corrected energies          -110.01223056 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223073 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95293864 (fixed)   0.95796372 (relaxed)   0.95796359 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000028    0.00000000   -0.46745198
 Singles      0.01457303   -0.07404764   -0.07575985
 Pairs        0.07511426    0.00000000   -0.04021226
 Total        1.08968757   -0.07404764   -0.58342409
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38093943
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44156589
 One electron energy                 -193.12066408
 Two electron energy                   83.15630055
 Virial quotient                       -2.65347993
 Correlation energy                    -0.58342409
 !MRCI STATE 7.1 Energy              -109.964363528418

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01668942 (Davidson, fixed reference)
 Cluster corrected energies          -110.01668924 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01668942 (Davidson, rotated reference)

 Cluster corrected energies          -110.01223045 (Pople, fixed reference)
 Cluster corrected energies          -110.01223028 (Pople, relaxed reference)
 Cluster corrected energies          -110.01223045 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95611994 (fixed)   0.95616403 (relaxed)   0.95611994 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009224   -0.00000000   -0.00005002
 Singles      0.01786004   -0.07951989   -0.08238116
 Pairs        0.07594175   -0.51366100   -0.51074971
 Total        1.09389403   -0.59318089   -0.59318088
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734396
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42127426
 One electron energy                 -193.06528797
 Two electron energy                   83.14476312
 Virial quotient                       -2.65372147
 Correlation energy                    -0.59318089
 !MRCI STATE 8.1 Energy              -109.920524848667

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97622099 (Davidson, fixed reference)
 Cluster corrected energies          -109.97616115 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97622099 (Davidson, rotated reference)

 Cluster corrected energies          -109.97163302 (Pople, fixed reference)
 Cluster corrected energies          -109.97157430 (Pople, relaxed reference)
 Cluster corrected energies          -109.97163302 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Coefficient of reference function:   C(0) = 0.95612513 (fixed)   0.95616923 (relaxed)   0.95612513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009223    0.00000000   -0.46962658
 Singles      0.01785932   -0.07951942   -0.08238180
 Pairs        0.07593058    0.00000000   -0.04117245
 Total        1.09388214   -0.07951942   -0.59318083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734396
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42128849
 One electron energy                 -193.06532860
 Two electron energy                   83.14480381
 Virial quotient                       -2.65372056
 Correlation energy                    -0.59318083
 !MRCI STATE 9.1 Energy              -109.920524792587

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97621388 (Davidson, fixed reference)
 Cluster corrected energies          -109.97615403 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97621388 (Davidson, rotated reference)

 Cluster corrected energies          -109.97162603 (Pople, fixed reference)
 Cluster corrected energies          -109.97156732 (Pople, relaxed reference)
 Cluster corrected energies          -109.97162603 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95612536 (fixed)   0.95616946 (relaxed)   0.95612536 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00009224    0.00000000   -0.46962617
 Singles      0.01785949   -0.07952010   -0.08238199
 Pairs        0.07592988    0.00000000   -0.04117267
 Total        1.09388161   -0.07952010   -0.59318083
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32734397
 Nuclear energy                         0.00000000
 Kinetic energy                        41.42130855
 One electron energy                 -193.06534924
 Two electron energy                   83.14482445
 Virial quotient                       -2.65371927
 Correlation energy                    -0.59318082
 !MRCI STATE 10.1 Energy             -109.920524788332

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97621356 (Davidson, fixed reference)
 Cluster corrected energies          -109.97615372 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97621356 (Davidson, rotated reference)

 Cluster corrected energies          -109.97162572 (Pople, fixed reference)
 Cluster corrected energies          -109.97156701 (Pople, relaxed reference)
 Cluster corrected energies          -109.97162572 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5      138.37       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *       368.00    365.31      1.88      0.51
 REAL TIME  *       396.81 SEC
 DISK USED  *       170.54 MB (local),        2.05 GB (total)
 SF USED    *         1.34 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01669198  AU                              
 SETTING HLSDIAG(2)     =      -110.01669186  AU                              
 SETTING HLSDIAG(3)     =      -110.01669149  AU                              
 SETTING HLSDIAG(4)     =      -110.01669122  AU                              
 SETTING HLSDIAG(5)     =      -110.01669071  AU                              
 SETTING HLSDIAG(6)     =      -110.01668971  AU                              
 SETTING HLSDIAG(7)     =      -110.01668942  AU                              
 SETTING HLSDIAG(8)     =      -109.97622099  AU                              
 SETTING HLSDIAG(9)     =      -109.97621388  AU                              
 SETTING HLSDIAG(10)    =      -109.97621356  AU                              


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

 Diagonal Coupling coefficients finished.               Storage:    824859 words, CPU-Time:      0.39 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    507037 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35267348    -0.00000000    -0.68822492  0.29D-01  0.10D+00     0.75
    1     2     2     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68806375  0.28D-01  0.10D+00     0.75
    1     3     3     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68744049  0.29D-01  0.10D+00     0.75
    1     4     4     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68855621  0.28D-01  0.10D+00     0.75
    1     5     5     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68779251  0.28D-01  0.10D+00     0.75
    1     6     6     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68713743  0.28D-01  0.10D+00     0.75
    1     7     7     1.00000000     0.00000000  -109.35267348     0.00000000    -0.68707426  0.28D-01  0.10D+00     0.75
    1     8     8     1.00000000     0.00000000  -109.33341791    -0.00000000    -0.69276166  0.31D-01  0.11D+00     0.75
    1     9     9     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69326178  0.31D-01  0.11D+00     0.75
    1    10    10     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69331519  0.31D-01  0.11D+00     0.75
    1    11    11     1.00000000     0.00000000  -109.33341791     0.00000000    -0.69380538  0.31D-01  0.11D+00     0.75
    1    12    12     1.00000000     0.00000000  -109.33341791    -0.00000000    -0.69357522  0.31D-01  0.11D+00     0.75
    2     1     1     1.09006844    -0.56841180  -109.92108528    -0.56841180    -0.01653484  0.15D-02  0.22D-02    99.55
    2     2     2     1.09008259    -0.56835147  -109.92102495    -0.56835147    -0.01655942  0.15D-02  0.22D-02    99.55
    2     3     3     1.08990827    -0.56816530  -109.92083879    -0.56816530    -0.01663547  0.15D-02  0.23D-02    99.55
    2     4     4     1.08999062    -0.56814869  -109.92082217    -0.56814869    -0.01669254  0.15D-02  0.23D-02    99.55
    2     5     5     1.09018384    -0.56812614  -109.92079962    -0.56812614    -0.01682553  0.16D-02  0.23D-02    99.55
    2     6     6     1.08996606    -0.56811487  -109.92078835    -0.56811487    -0.01670156  0.15D-02  0.23D-02    99.55
    2     7     7     1.09011655    -0.56794928  -109.92062276    -0.56794928    -0.01692962  0.16D-02  0.23D-02    99.55
    2     8     8     1.09334522    -0.57133026  -109.90474817    -0.57133026    -0.01648052  0.22D-02  0.20D-02    99.55
    2     9     9     1.09334600    -0.57119447  -109.90461237    -0.57119447    -0.01660041  0.22D-02  0.20D-02    99.55
    2    10    10     1.09330909    -0.57103415  -109.90445206    -0.57103415    -0.01673213  0.23D-02  0.20D-02    99.55
    2    11    11     1.09325391    -0.57103299  -109.90445090    -0.57103299    -0.01669608  0.22D-02  0.20D-02    99.55
    2    12    12     1.09325959    -0.57103261  -109.90445052    -0.57103261    -0.01668874  0.22D-02  0.20D-02    99.55
    3     1     1     1.08700768    -0.58528300  -109.93795649    -0.01687121    -0.00083857  0.26D-04  0.17D-03   198.67
    3     2     2     1.08698583    -0.58526205  -109.93793553    -0.01691058    -0.00084648  0.26D-04  0.17D-03   198.67
    3     3     3     1.08697949    -0.58524926  -109.93792274    -0.01708395    -0.00087032  0.24D-04  0.18D-03   198.67
    3     4     4     1.08692883    -0.58522145  -109.93789494    -0.01707276    -0.00088615  0.26D-04  0.18D-03   198.67
    3     5     5     1.08692919    -0.58521997  -109.93789345    -0.01709383    -0.00089081  0.24D-04  0.19D-03   198.67
    3     6     6     1.08688763    -0.58521335  -109.93788683    -0.01709847    -0.00087495  0.27D-04  0.18D-03   198.67
    3     7     7     1.08690155    -0.58521008  -109.93788356    -0.01726080    -0.00088352  0.26D-04  0.18D-03   198.67
    3     8     8     1.08880240    -0.58753505  -109.92095296    -0.01620479    -0.00083998  0.84D-04  0.15D-03   198.67
    3     9     9     1.08878692    -0.58751571  -109.92093362    -0.01632125    -0.00084154  0.82D-04  0.14D-03   198.67
    3    10    10     1.08874974    -0.58749296  -109.92091086    -0.01645880    -0.00085685  0.82D-04  0.15D-03   198.67
    3    11    11     1.08872845    -0.58748781  -109.92090572    -0.01645482    -0.00085788  0.83D-04  0.15D-03   198.67
    3    12    12     1.08872558    -0.58748537  -109.92090328    -0.01645276    -0.00085657  0.83D-04  0.15D-03   198.67
    4     1     1     1.08993711    -0.58645771  -109.93913120    -0.00117471    -0.00017819  0.83D-05  0.37D-04   296.82
    4     2     2     1.08993727    -0.58645341  -109.93912689    -0.00119136    -0.00018133  0.85D-05  0.37D-04   296.82
    4     3     3     1.08989408    -0.58644447  -109.93911795    -0.00119522    -0.00018969  0.83D-05  0.39D-04   296.82
    4     4     4     1.08985690    -0.58644083  -109.93911431    -0.00121938    -0.00019283  0.82D-05  0.40D-04   296.82
    4     5     5     1.08985648    -0.58644023  -109.93911371    -0.00122026    -0.00019170  0.81D-05  0.40D-04   296.82
    4     6     6     1.08986935    -0.58643796  -109.93911144    -0.00122462    -0.00019755  0.80D-05  0.42D-04   296.82
    4     7     7     1.08983866    -0.58643539  -109.93910887    -0.00122531    -0.00020237  0.78D-05  0.44D-04   296.82
    4     8     8     1.09080222    -0.58856429  -109.92198220    -0.00102924    -0.00021241  0.93D-05  0.42D-04   296.82
    4     9     9     1.09078991    -0.58855410  -109.92197200    -0.00103838    -0.00021890  0.95D-05  0.44D-04   296.82
    4    10    10     1.09077794    -0.58855019  -109.92196810    -0.00105723    -0.00022352  0.97D-05  0.45D-04   296.82
    4    11    11     1.09077472    -0.58854993  -109.92196784    -0.00106212    -0.00022220  0.94D-05  0.45D-04   296.82
    4    12    12     1.09078050    -0.58854935  -109.92196726    -0.00106398    -0.00022379  0.98D-05  0.45D-04   296.82
    5     1     1     1.09093992    -0.58665334  -109.93932682    -0.00019562    -0.00004435  0.85D-06  0.11D-04   396.41
    5     2     2     1.09093455    -0.58665131  -109.93932479    -0.00019790    -0.00004630  0.87D-06  0.11D-04   396.41
    5     3     3     1.09091352    -0.58665017  -109.93932365    -0.00020570    -0.00004531  0.10D-05  0.11D-04   396.41
    5     4     4     1.09092005    -0.58664940  -109.93932288    -0.00020857    -0.00004576  0.10D-05  0.11D-04   396.41
    5     5     5     1.09091055    -0.58664846  -109.93932194    -0.00020823    -0.00004851  0.97D-06  0.12D-04   396.41
    5     6     6     1.09089423    -0.58664558  -109.93931906    -0.00020762    -0.00005065  0.11D-05  0.13D-04   396.41
    5     7     7     1.09088139    -0.58664495  -109.93931843    -0.00020957    -0.00005086  0.12D-05  0.13D-04   396.41
    5     8     8     1.09221862    -0.58882921  -109.92224712    -0.00026492    -0.00005832  0.17D-05  0.13D-04   396.41
    5     9     9     1.09220373    -0.58882397  -109.92224188    -0.00026988    -0.00006342  0.18D-05  0.14D-04   396.41
    5    10    10     1.09219710    -0.58882307  -109.92224098    -0.00027288    -0.00006294  0.19D-05  0.14D-04   396.41
    5    11    11     1.09218896    -0.58882200  -109.92223991    -0.00027207    -0.00006421  0.19D-05  0.14D-04   396.41
    5    12    12     1.09218987    -0.58882159  -109.92223949    -0.00027223    -0.00006467  0.19D-05  0.14D-04   396.41
    6     1     1     1.09096354    -0.58669845  -109.93937193    -0.00004511    -0.00001189  0.63D-06  0.27D-05   495.13
    6     2     2     1.09095107    -0.58669783  -109.93937131    -0.00004652    -0.00001249  0.64D-06  0.28D-05   495.13
    6     3     3     1.09095944    -0.58669763  -109.93937111    -0.00004746    -0.00001257  0.63D-06  0.29D-05   495.13
    6     4     4     1.09095379    -0.58669723  -109.93937071    -0.00004783    -0.00001294  0.64D-06  0.30D-05   495.13
    6     5     5     1.09094704    -0.58669689  -109.93937037    -0.00004843    -0.00001319  0.63D-06  0.31D-05   495.13
    6     6     6     1.09093662    -0.58669582  -109.93936930    -0.00005023    -0.00001386  0.62D-06  0.33D-05   495.13
    6     7     7     1.09094184    -0.58669576  -109.93936924    -0.00005081    -0.00001406  0.62D-06  0.34D-05   495.13
    6     8     8     1.09223614    -0.58888872  -109.92230663    -0.00005951    -0.00001813  0.24D-05  0.34D-05   495.13
    6     9     9     1.09222190    -0.58888643  -109.92230434    -0.00006246    -0.00001925  0.26D-05  0.36D-05   495.13
    6    10    10     1.09221777    -0.58888591  -109.92230381    -0.00006283    -0.00001948  0.26D-05  0.37D-05   495.13
    6    11    11     1.09222872    -0.58888587  -109.92230377    -0.00006387    -0.00002024  0.24D-05  0.42D-05   495.13
    6    12    12     1.09221727    -0.58888562  -109.92230352    -0.00006403    -0.00001970  0.26D-05  0.37D-05   495.13
    7     1     1     1.09101065    -0.58671146  -109.93938495    -0.00001301    -0.00000389  0.43D-07  0.97D-06   597.13
    7     2     2     1.09100511    -0.58671110  -109.93938458    -0.00001327    -0.00000418  0.36D-07  0.11D-05   597.13
    7     3     3     1.09100206    -0.58671106  -109.93938454    -0.00001343    -0.00000424  0.39D-07  0.11D-05   597.13
    7     4     4     1.09100258    -0.58671075  -109.93938423    -0.00001352    -0.00000443  0.35D-07  0.12D-05   597.13
    7     5     5     1.09099552    -0.58671070  -109.93938418    -0.00001382    -0.00000453  0.35D-07  0.12D-05   597.13
    7     6     6     1.09098901    -0.58671011  -109.93938359    -0.00001430    -0.00000493  0.31D-07  0.13D-05   597.13
    7     7     7     1.09099074    -0.58671005  -109.93938353    -0.00001428    -0.00000507  0.28D-07  0.14D-05   597.13
    7     8     8     1.09225167    -0.58890757  -109.92232548    -0.00001885    -0.00000546  0.12D-06  0.12D-05   597.13
    7     9     9     1.09223915    -0.58890680  -109.92232470    -0.00002036    -0.00000593  0.14D-06  0.13D-05   597.13
    7    10    10     1.09223600    -0.58890664  -109.92232455    -0.00002074    -0.00000604  0.14D-06  0.13D-05   597.13
    7    11    11     1.09223408    -0.58890651  -109.92232442    -0.00002064    -0.00000613  0.14D-06  0.13D-05   597.13
    7    12    12     1.09223551    -0.58890611  -109.92232402    -0.00002050    -0.00000655  0.12D-06  0.16D-05   597.13
    8     1     1     1.09108130    -0.58671525  -109.93938873    -0.00000379    -0.00000132  0.37D-07  0.34D-06   697.03
    8     2     2     1.09107856    -0.58671513  -109.93938862    -0.00000403    -0.00000140  0.45D-07  0.35D-06   697.03
    8     3     3     1.09107316    -0.58671504  -109.93938853    -0.00000398    -0.00000147  0.40D-07  0.38D-06   697.03
    8     4     4     1.09107596    -0.58671500  -109.93938848    -0.00000425    -0.00000148  0.49D-07  0.37D-06   697.03
    8     5     5     1.09106960    -0.58671493  -109.93938841    -0.00000423    -0.00000154  0.45D-07  0.39D-06   697.03
    8     6     6     1.09106412    -0.58671472  -109.93938820    -0.00000460    -0.00000167  0.48D-07  0.43D-06   697.03
    8     7     7     1.09106573    -0.58671468  -109.93938816    -0.00000464    -0.00000169  0.53D-07  0.43D-06   697.03
    8     8     8     1.09233486    -0.58891330  -109.92233121    -0.00000573    -0.00000211  0.47D-07  0.52D-06   697.03
    8     9     9     1.09232609    -0.58891298  -109.92233089    -0.00000619    -0.00000234  0.50D-07  0.57D-06   697.03
    8    10    10     1.09232315    -0.58891290  -109.92233081    -0.00000626    -0.00000242  0.47D-07  0.60D-06   697.03
    8    11    11     1.09232183    -0.58891284  -109.92233074    -0.00000633    -0.00000247  0.48D-07  0.60D-06   697.03
    8    12    12     1.09231798    -0.58891253  -109.92233044    -0.00000642    -0.00000262  0.60D-07  0.65D-06   697.03
    9     1     1     1.09111829    -0.58671654  -109.93939002    -0.00000129    -0.00000045  0.52D-08  0.12D-06   797.89
    9     2     2     1.09111603    -0.58671649  -109.93938997    -0.00000136    -0.00000049  0.43D-08  0.13D-06   797.89
    9     3     3     1.09111359    -0.58671645  -109.93938994    -0.00000141    -0.00000051  0.47D-08  0.14D-06   797.89
    9     4     4     1.09111374    -0.58671642  -109.93938991    -0.00000143    -0.00000054  0.39D-08  0.14D-06   797.89
    9     5     5     1.09111107    -0.58671641  -109.93938989    -0.00000148    -0.00000055  0.42D-08  0.15D-06   797.89
    9     6     6     1.09110721    -0.58671631  -109.93938979    -0.00000159    -0.00000063  0.33D-08  0.18D-06   797.89
    9     7     7     1.09110826    -0.58671631  -109.93938979    -0.00000163    -0.00000062  0.34D-08  0.18D-06   797.89
    9     8     8     1.09237830    -0.58891530  -109.92233321    -0.00000200    -0.00000075  0.55D-07  0.16D-06   797.89
    9     9     9     1.09237310    -0.58891518  -109.92233309    -0.00000220    -0.00000082  0.60D-07  0.18D-06   797.89
    9    10    10     1.09237118    -0.58891514  -109.92233305    -0.00000224    -0.00000085  0.61D-07  0.18D-06   797.89
    9    11    11     1.09237031    -0.58891512  -109.92233302    -0.00000228    -0.00000087  0.61D-07  0.19D-06   797.89
    9    12    12     1.09236826    -0.58891499  -109.92233289    -0.00000245    -0.00000097  0.57D-07  0.23D-06   797.89
   10     1     1     1.09113398    -0.58671697  -109.93939046    -0.00000043    -0.00000018  0.89D-09  0.50D-07   899.70
   10     2     2     1.09113251    -0.58671695  -109.93939044    -0.00000046    -0.00000019  0.13D-08  0.54D-07   899.70
   10     3     3     1.09113078    -0.58671693  -109.93939041    -0.00000048    -0.00000021  0.10D-08  0.62D-07   899.70
   10     4     4     1.09113085    -0.58671692  -109.93939041    -0.00000050    -0.00000021  0.15D-08  0.59D-07   899.70
   10     5     5     1.09112897    -0.58671691  -109.93939039    -0.00000050    -0.00000023  0.14D-08  0.68D-07   899.70
   10     6     6     1.09112720    -0.58671686  -109.93939034    -0.00000055    -0.00000026  0.17D-08  0.81D-07   899.70
   10     7     7     1.09112614    -0.58671686  -109.93939034    -0.00000055    -0.00000026  0.17D-08  0.81D-07   899.70
   10     8     8     1.09239896    -0.58891603  -109.92233394    -0.00000073    -0.00000030  0.54D-08  0.76D-07   899.70
   10     9     9     1.09239574    -0.58891599  -109.92233389    -0.00000081    -0.00000033  0.51D-08  0.85D-07   899.70
   10    10    10     1.09239449    -0.58891597  -109.92233388    -0.00000083    -0.00000034  0.47D-08  0.88D-07   899.70
   10    11    11     1.09239371    -0.58891596  -109.92233386    -0.00000084    -0.00000035  0.47D-08  0.92D-07   899.70
   10    12    12     1.09239116    -0.58891587  -109.92233378    -0.00000089    -0.00000041  0.81D-08  0.12D-06   899.70
   11     1     1     1.09114406    -0.58671714  -109.93939062    -0.00000017    -0.00000007  0.87D-09  0.20D-07  1000.62
   11     2     2     1.09114294    -0.58671713  -109.93939061    -0.00000018    -0.00000008  0.75D-09  0.22D-07  1000.62
   11     3     3     1.09114177    -0.58671712  -109.93939060    -0.00000019    -0.00000009  0.72D-09  0.26D-07  1000.62
   11     4     4     1.09114164    -0.58671712  -109.93939060    -0.00000019    -0.00000009  0.81D-09  0.26D-07  1000.62
   11     5     5     1.09114055    -0.58671711  -109.93939059    -0.00000020    -0.00000009  0.78D-09  0.27D-07  1000.62
   11     6     6     1.09113940    -0.58671709  -109.93939057    -0.00000023    -0.00000011  0.68D-09  0.33D-07  1000.62
   11     7     7     1.09113849    -0.58671709  -109.93939056    -0.00000023    -0.00000011  0.65D-09  0.32D-07  1000.62
   11     8     8     1.09241241    -0.58891631  -109.92233422    -0.00000027    -0.00000012  0.16D-08  0.32D-07  1000.62
   11     9     9     1.09241007    -0.58891629  -109.92233419    -0.00000030    -0.00000014  0.17D-08  0.35D-07  1000.62
   11    10    10     1.09240918    -0.58891628  -109.92233419    -0.00000031    -0.00000014  0.18D-08  0.37D-07  1000.62
   11    11    11     1.09240859    -0.58891627  -109.92233418    -0.00000032    -0.00000015  0.18D-08  0.39D-07  1000.62
   11    12    12     1.09240639    -0.58891623  -109.92233413    -0.00000035    -0.00000018  0.22D-08  0.49D-07  1000.62
   12     1     1     1.09115046    -0.58671720  -109.93939068    -0.00000006    -0.00000003  0.11D-09  0.79D-08  1099.85
   12     2     2     1.09114959    -0.58671720  -109.93939068    -0.00000007    -0.00000003  0.15D-09  0.89D-08  1099.85
   12     3     3     1.09114866    -0.58671719  -109.93939067    -0.00000007    -0.00000003  0.20D-09  0.10D-07  1099.85
   12     4     4     1.09114870    -0.58671719  -109.93939067    -0.00000007    -0.00000003  0.14D-09  0.98D-08  1099.85
   12     5     5     1.09114800    -0.58671719  -109.93939067    -0.00000008    -0.00000004  0.18D-09  0.11D-07  1099.85
   12     6     6     1.09114719    -0.58671718  -109.93939066    -0.00000009    -0.00000004  0.23D-09  0.13D-07  1099.85
   12     7     7     1.09114671    -0.58671718  -109.93939066    -0.00000009    -0.00000004  0.23D-09  0.13D-07  1099.85
   12     8     8     1.09242195    -0.58891642  -109.92233433    -0.00000011    -0.00000005  0.17D-08  0.13D-07  1099.85
   12     9     9     1.09242023    -0.58891641  -109.92233432    -0.00000012    -0.00000006  0.18D-08  0.14D-07  1099.85
   12    10    10     1.09241952    -0.58891641  -109.92233432    -0.00000013    -0.00000006  0.18D-08  0.15D-07  1099.85
   12    11    11     1.09241910    -0.58891641  -109.92233431    -0.00000013    -0.00000006  0.18D-08  0.16D-07  1099.85
   12    12    12     1.09241709    -0.58891638  -109.92233429    -0.00000015    -0.00000008  0.13D-08  0.22D-07  1099.85
   13     1     1     1.09115338    -0.58671722  -109.93939070    -0.00000002    -0.00000001  0.54D-10  0.43D-08  1175.77
   13     2     2     1.09115301    -0.58671722  -109.93939070    -0.00000002    -0.00000002  0.68D-10  0.49D-08  1175.77
   13     3     3     1.09115202    -0.58671721  -109.93939070    -0.00000002    -0.00000002  0.60D-10  0.64D-08  1175.77
   13     4     4     1.09115221    -0.58671721  -109.93939070    -0.00000002    -0.00000002  0.53D-10  0.63D-08  1175.77
   13     5     5     1.09115047    -0.58671720  -109.93939068    -0.00000002    -0.00000003  0.11D-09  0.79D-08  1175.77
   13     6     6     1.09114960    -0.58671720  -109.93939068    -0.00000002    -0.00000003  0.15D-09  0.88D-08  1175.77
   13     7     7     1.09114873    -0.58671719  -109.93939067    -0.00000002    -0.00000003  0.15D-09  0.98D-08  1175.77
   13     8     8     1.09243536    -0.58891649  -109.92233440    -0.00000007    -0.00000002  0.12D-08  0.34D-08  1175.77
   13     9     9     1.09243536    -0.58891649  -109.92233439    -0.00000008    -0.00000002  0.12D-08  0.33D-08  1175.77
   13    10    10     1.09243485    -0.58891649  -109.92233439    -0.00000008    -0.00000002  0.14D-08  0.48D-08  1175.77
   13    11    11     1.09242767    -0.58891647  -109.92233437    -0.00000006    -0.00000002  0.58D-09  0.56D-08  1175.77
   13    12    12     1.09242666    -0.58891646  -109.92233437    -0.00000008    -0.00000002  0.56D-09  0.61D-08  1175.77


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%   3.5%  85.5%

 Initialization:   0.0%
 Other:           10.7%

 Total CPU:     1175.8 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/2/22\222           0.9547230  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.0000000
 222/2/\222          -0.0000000  -0.0000000  -0.0000000   0.0023493  -0.0000000   0.9547217   0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000001
 22/2/2\222           0.0000000   0.0000000   0.0000000   0.8539300  -0.0000000  -0.0021014  -0.0000000   0.0000000   0.0000000
                      0.0000000  -0.0000000  -0.0000002
 2222//\222           0.0000000   0.0820623   0.0000000   0.0000000  -0.0000000   0.0000000   0.8499799   0.0000000  -0.0000004
                      0.0000000  -0.0000000  -0.0000000
 2/22/2\222          -0.0000000   0.0000000  -0.2715461   0.0000000   0.8096068  -0.0000000   0.0000000  -0.0000003  -0.0000000
                      0.0000000   0.0000000   0.0000000
 2//222\222           0.0000000   0.8024719   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2919515   0.0000000  -0.0000005
                      0.0000000  -0.0000000   0.0000000
 22/22/\222           0.0000000  -0.0000000   0.7160117  -0.0000000   0.4653232   0.0000000  -0.0000000   0.0000003   0.0000000
                      0.0000000  -0.0000000   0.0000000
 222/2\/222          -0.0000000  -0.0000000  -0.0000000   0.0000006  -0.0000000  -0.0000017   0.0000000  -0.0000000  -0.0000000
                      0.0000000   0.0000000   0.6879680
 2/2\22/222           0.0000014   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.6877125  -0.0173047   0.0000000
 22/2\2/222           0.0000000   0.0000000  -0.0000000  -0.0000011   0.0000000   0.0000025  -0.0000000   0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.5958015
 2/22\2/222           0.0000000   0.0000000   0.0000029   0.0000000  -0.0000005  -0.0000000   0.0000000   0.5957631   0.0000000
                      0.0000000   0.0000000   0.0000000
 2222/\/222          -0.0000000   0.0000052  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000006   0.0000000   0.5957628
                      0.0000000  -0.0000000   0.0000000
 22/22\/222           0.0000000   0.0000000   0.0000045   0.0000000  -0.0000039   0.0000000   0.0000000   0.5957628   0.0000000
                      0.0000000   0.0000000   0.0000000
 2/\222/222          -0.0000000  -0.0000036  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000063   0.0000000  -0.5957622
                     -0.0000000   0.0000000  -0.0000000
 222//2\222           0.0000000  -0.0000000  -0.5701639   0.0000000   0.1987699   0.0000000  -0.0000000   0.0000009   0.0000000
                      0.0000000   0.0000000   0.0000000
 22//22\222          -0.0000000   0.5106865  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.3221773  -0.0000000   0.0000003
                     -0.0000000   0.0000000  -0.0000000
 202222/222          -0.0000002  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0122353   0.4863148  -0.0000000
 222022/222          -0.0000010   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.0122350  -0.4863143   0.0000000
 222220/222           0.0000003  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0122355   0.4863138  -0.0000000
 220222/222          -0.0000004  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                     -0.4272561  -0.2325610   0.0000000
 2/222/\222           0.0000000  -0.0000000  -0.0000000   0.4269600   0.0000000  -0.0010505   0.0000000   0.0000000   0.0000000
                     -0.0000000   0.0000000   0.0000007
 222202/222           0.0000009   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.4150203  -0.2537533   0.0000000
 22/\22/222          -0.0000000   0.0000006  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000008   0.0000000   0.3439638
                      0.0000000  -0.0000000   0.0000000
 222/\2/222           0.0000000   0.0000000  -0.0000003  -0.0000000  -0.0000035   0.0000000   0.0000000   0.3439633   0.0000000
                     -0.0000000   0.0000000  -0.0000000
 22/2220222          -0.0000000   0.0000198  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000116   0.0000000  -0.2671684
                      0.0000000  -0.0000000  -0.0000000
 2222/20222           0.0000000   0.0000000   0.0000158   0.0000000  -0.0000142   0.0000000   0.0000000  -0.2671672   0.0000000
                     -0.0000000   0.0000000   0.0000000
 2/22220222          -0.0000061  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                      0.2670658  -0.0067130  -0.0000000
 22222/0222           0.0000000   0.0000000   0.0000000  -0.0000040  -0.0000000   0.0000102   0.0000000  -0.0000000  -0.0000000
                     -0.0000000   0.0000000   0.2669914
 222/220222           0.0000015  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0067169  -0.2669046  -0.0000000
 22202/2222           0.0000000   0.0000000  -0.0000000   0.0000001   0.0000000   0.0000002  -0.0000000   0.0000000   0.0000000
                     -0.0000000  -0.0000000  -0.0664249
 2/20222222          -0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0664068   0.0016707  -0.0000000
 202/222222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.0016707   0.0664046  -0.0000000
 222/202222          -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0016707   0.0664045  -0.0000000
 2/2\/22222           0.0000000   0.0000000  -0.0026015  -0.0000000  -0.0313637   0.0000000  -0.0000000  -0.0521866  -0.0000000
                     -0.0000000   0.0000000  -0.0000000
 22/2\/2222          -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000
                     -0.0013126  -0.0521708  -0.0000000
 22/2/\2222          -0.0000001   0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                      0.0521706  -0.0013125  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957318   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 2          -0.000000   -0.000000   -0.000000   -0.498464   -0.000000    0.817307   -0.000000   -0.000000    0.000000    0.000002
             0.000000   -0.000000
 3          -0.000000   -0.100291    0.000000   -0.000000    0.952051   -0.000000    0.000000    0.000000    0.000001   -0.000000
             0.000000   -0.000000
 4          -0.000000    0.000000   -0.001773   -0.000000   -0.000000   -0.000000    0.957317   -0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000    0.952051   -0.000000   -0.000000    0.100291    0.000000   -0.000000    0.000000   -0.000001    0.000000
            -0.000000   -0.000000
 6           0.000000    0.000000    0.957318   -0.000000    0.000000    0.000000    0.001773    0.000000   -0.000000   -0.000000
            -0.000000   -0.000001
 7           0.000000    0.000000    0.000000    0.817309    0.000000    0.498465   -0.000000   -0.000000    0.000000    0.000001
             0.000000    0.000000
 8          -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954068   -0.000000
            -0.000000   -0.000000
 9          -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.954068
            -0.000000   -0.000000
 10         -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.043169    0.000000    0.000000
             0.953093    0.000000
 11          0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.953109   -0.000000   -0.000000
            -0.043170    0.000000
 12          0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.954086

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957318   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 2          -0.000000    0.957318   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000001    0.000000
            -0.000000   -0.000000
 3          -0.000000   -0.000000    0.957318   -0.000000   -0.000000    0.000000   -0.000000    0.000001   -0.000000   -0.000000
             0.000000   -0.000000
 4           0.000000   -0.000000   -0.000000    0.957318    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000
            -0.000000    0.000000
 5          -0.000000    0.000000   -0.000000    0.000000    0.957319    0.000000   -0.000000   -0.000001    0.000000   -0.000000
             0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957319    0.000000    0.000000   -0.000000   -0.000000
             0.000000   -0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957320    0.000000    0.000000    0.000000
            -0.000000    0.000000
 8           0.000000    0.000000    0.000001    0.000000   -0.000001    0.000000    0.000000    0.954068    0.000000   -0.000000
             0.000000    0.000000
 9          -0.000000    0.000001   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.954068   -0.000000
            -0.000000    0.000000
 10          0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954070
             0.000000    0.000000
 11          0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000
             0.954086   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.954086

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00488792    -1.65645902       2222120222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00488808    -1.65648649       2212220222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00488241    -1.65499933       2122220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00485946    -1.65107822       2221220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00486285    -1.65217506       2222210222                      


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95731779 (fixed)   0.95731993 (relaxed)   0.95731779 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868410
 Singles      0.01499894   -0.07531131   -0.07708440
 Pairs        0.07615485    0.00000000   -0.04094872
 Total        1.09115824   -0.07531131   -0.58671722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45728419
 One electron energy                 -193.07484022
 Two electron energy                   83.13544952
 Virial quotient                       -2.65187151
 Correlation energy                    -0.58671722
 !MRCI STATE 1.1 Energy              -109.939390704416

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287482 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287196 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287482 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957117 (Pople, fixed reference)
 Cluster corrected energies          -109.98956830 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957117 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.81730737 (fixed)   0.95732009 (relaxed)   0.95731795 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868411
 Singles      0.01499905   -0.07531147   -0.07708454
 Pairs        0.07615438   -0.00000000   -0.04094857
 Total        1.09115788   -0.07531147   -0.58671722
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45728866
 One electron energy                 -193.07484358
 Two electron energy                   83.13545287
 Virial quotient                       -2.65187122
 Correlation energy                    -0.58671722
 !MRCI STATE 2.1 Energy              -109.939390701742

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287460 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287175 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287460 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957095 (Pople, fixed reference)
 Cluster corrected energies          -109.98956808 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957095 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.95205053 (fixed)   0.95732052 (relaxed)   0.95731839 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868422
 Singles      0.01499926   -0.07531181   -0.07708478
 Pairs        0.07615316    0.00000000   -0.04094821
 Total        1.09115688   -0.07531181   -0.58671721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45729744
 One electron energy                 -193.07485081
 Two electron energy                   83.13546012
 Virial quotient                       -2.65187066
 Correlation energy                    -0.58671722
 !MRCI STATE 3.1 Energy              -109.939390696069

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287401 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287116 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287401 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957036 (Pople, fixed reference)
 Cluster corrected energies          -109.98956749 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957036 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95731666 (fixed)   0.95732044 (relaxed)   0.95731831 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868408
 Singles      0.01499919   -0.07531170   -0.07708471
 Pairs        0.07615343   -0.00000017   -0.04094842
 Total        1.09115708   -0.07531188   -0.58671721
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45729346
 One electron energy                 -193.07484762
 Two electron energy                   83.13545693
 Virial quotient                       -2.65187091
 Correlation energy                    -0.58671722
 !MRCI STATE 4.1 Energy              -109.939390695756

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287412 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287127 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287412 (Davidson, rotated reference)

 Cluster corrected energies          -109.98957047 (Pople, fixed reference)
 Cluster corrected energies          -109.98956760 (Pople, relaxed reference)
 Cluster corrected energies          -109.98957047 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95205121 (fixed)   0.95732120 (relaxed)   0.95731907 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868336
 Singles      0.01500010   -0.07531346   -0.07708548
 Pairs        0.07615079    0.00000000   -0.04094836
 Total        1.09115534   -0.07531346   -0.58671720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45731653
 One electron energy                 -193.07485761
 Two electron energy                   83.13546692
 Virial quotient                       -2.65186944
 Correlation energy                    -0.58671720
 !MRCI STATE 5.1 Energy              -109.939390683532

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287309 (Davidson, fixed reference)
 Cluster corrected energies          -109.99287023 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287309 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956943 (Pople, fixed reference)
 Cluster corrected energies          -109.98956657 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956943 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95731781 (fixed)   0.95732159 (relaxed)   0.95731945 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000445   -0.00000000   -0.46868370
 Singles      0.01500035   -0.07531406   -0.07708575
 Pairs        0.07614965    0.00000056   -0.04094774
 Total        1.09115446   -0.07531350   -0.58671720
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45733521
 One electron energy                 -193.07487282
 Two electron energy                   83.13548215
 Virial quotient                       -2.65186824
 Correlation energy                    -0.58671720
 !MRCI STATE 6.1 Energy              -109.939390679407

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287257 (Davidson, fixed reference)
 Cluster corrected energies          -109.99286972 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287257 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956891 (Pople, fixed reference)
 Cluster corrected energies          -109.98956604 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956891 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.81730895 (fixed)   0.95732197 (relaxed)   0.95731983 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000446   -0.00000000   -0.46868369
 Singles      0.01500043   -0.07531392   -0.07708587
 Pairs        0.07614871   -0.00000000   -0.04094763
 Total        1.09115359   -0.07531392   -0.58671719
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35267348
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45733943
 One electron energy                 -193.07487652
 Two electron energy                   83.13548585
 Virial quotient                       -2.65186797
 Correlation energy                    -0.58671719
 !MRCI STATE 7.1 Energy              -109.939390672429

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99287205 (Davidson, fixed reference)
 Cluster corrected energies          -109.99286920 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99287205 (Davidson, rotated reference)

 Cluster corrected energies          -109.98956839 (Pople, fixed reference)
 Cluster corrected energies          -109.98956552 (Pople, relaxed reference)
 Cluster corrected energies          -109.98956839 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95406842 (fixed)   0.95675805 (relaxed)   0.95406842 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564619    0.00000000   -0.47295418
 Singles      0.01625096   -0.07265252   -0.07484267
 Pairs        0.07670631    0.00000000   -0.04111964
 Total        1.09860346   -0.07265252   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48261269
 One electron energy                 -193.24560295
 Two electron energy                   83.32326856
 Virial quotient                       -2.64984116
 Correlation energy                    -0.58891649
 !MRCI STATE 8.1 Energy              -109.922334395234

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040360 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677110 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040360 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713472 (Pople, fixed reference)
 Cluster corrected energies          -109.97345956 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713472 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95406833 (fixed)   0.95675805 (relaxed)   0.95406833 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564638    0.00000000   -0.47295415
 Singles      0.01625101   -0.07265257   -0.07484269
 Pairs        0.07670628    0.00000000   -0.04111964
 Total        1.09860366   -0.07265257   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48261368
 One electron energy                 -193.24560457
 Two electron energy                   83.32327017
 Virial quotient                       -2.64984109
 Correlation energy                    -0.58891649
 !MRCI STATE 9.1 Energy              -109.922334394483

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040372 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677110 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040372 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713485 (Pople, fixed reference)
 Cluster corrected energies          -109.97345956 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713485 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95309282 (fixed)   0.95675827 (relaxed)   0.95406997 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00564339   -0.00000000   -0.47295400
 Singles      0.01625081   -0.07265276   -0.07484284
 Pairs        0.07670569   -0.00000000   -0.04111965
 Total        1.09859988   -0.07265276   -0.58891649
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48260564
 One electron energy                 -193.24556959
 Two electron energy                   83.32323520
 Virial quotient                       -2.64984161
 Correlation energy                    -0.58891649
 !MRCI STATE 10.1 Energy             -109.922334391673

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98040149 (Davidson, fixed reference)
 Cluster corrected energies          -109.97677080 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98040149 (Davidson, rotated reference)

 Cluster corrected energies          -109.97713258 (Pople, fixed reference)
 Cluster corrected energies          -109.97345926 (Pople, relaxed reference)
 Cluster corrected energies          -109.97713258 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95310857 (fixed)   0.95676142 (relaxed)   0.95408573 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561677   -0.00000000   -0.47295721
 Singles      0.01624771   -0.07265071   -0.07484261
 Pairs        0.07669911   -0.00000000   -0.04111665
 Total        1.09856359   -0.07265071   -0.58891647
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48252176
 One electron energy                 -193.24532303
 Two electron energy                   83.32298865
 Virial quotient                       -2.64984696
 Correlation energy                    -0.58891647
 !MRCI STATE 11.1 Energy             -109.922334372451

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98038009 (Davidson, fixed reference)
 Cluster corrected energies          -109.97676655 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98038009 (Davidson, rotated reference)

 Cluster corrected energies          -109.97711083 (Pople, fixed reference)
 Cluster corrected energies          -109.97345498 (Pople, relaxed reference)
 Cluster corrected energies          -109.97711083 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Coefficient of reference function:   C(0) = 0.95408601 (fixed)   0.95676186 (relaxed)   0.95408601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561712    0.00000000   -0.00301122
 Singles      0.01624785   -0.07265086   -0.07484272
 Pairs        0.07669798   -0.51626560   -0.51106253
 Total        1.09856294   -0.58891646   -0.58891646
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33341791
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48252851
 One electron energy                 -193.24533482
 Two electron energy                   83.32300045
 Virial quotient                       -2.64984653
 Correlation energy                    -0.58891646
 !MRCI STATE 12.1 Energy             -109.922334369062

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98037971 (Davidson, fixed reference)
 Cluster corrected energies          -109.97676595 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98037971 (Davidson, rotated reference)

 Cluster corrected energies          -109.97711044 (Pople, fixed reference)
 Cluster corrected energies          -109.97345437 (Pople, relaxed reference)
 Cluster corrected energies          -109.97711044 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      357.52       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1566.68   1198.68    365.31      1.88      0.51
 REAL TIME  *      1658.97 SEC
 DISK USED  *       389.69 MB (local),        4.62 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(11)    =      -109.99287482  AU                              
 SETTING HLSDIAG(12)    =      -109.99287460  AU                              
 SETTING HLSDIAG(13)    =      -109.99287401  AU                              
 SETTING HLSDIAG(14)    =      -109.99287412  AU                              
 SETTING HLSDIAG(15)    =      -109.99287309  AU                              
 SETTING HLSDIAG(16)    =      -109.99287257  AU                              
 SETTING HLSDIAG(17)    =      -109.99287205  AU                              
 SETTING HLSDIAG(18)    =      -109.98040360  AU                              
 SETTING HLSDIAG(19)    =      -109.98040372  AU                              
 SETTING HLSDIAG(20)    =      -109.98040149  AU                              
 SETTING HLSDIAG(21)    =      -109.98038009  AU                              
 SETTING HLSDIAG(22)    =      -109.98037971  AU                              


         HLSDIAG
    -110.0166920
    -110.0166919
    -110.0166915
    -110.0166912
    -110.0166907
    -110.0166897
    -110.0166894
    -109.9762210
    -109.9762139
    -109.9762136
    -109.9928748
    -109.9928746
    -109.9928740
    -109.9928741
    -109.9928731
    -109.9928726
    -109.9928721
    -109.9804036
    -109.9804037
    -109.9804015
    -109.9803801
    -109.9803797
                                                  
 SETTING HLSDIAG(1)     =      -110.01650700                                  
 SETTING HLSDIAG(2)     =      -110.01650700                                  
 SETTING HLSDIAG(3)     =      -110.01650700                                  
 SETTING HLSDIAG(4)     =      -110.01650700                                  
 SETTING HLSDIAG(5)     =      -110.01650700                                  
 SETTING HLSDIAG(6)     =      -110.01650700                                  
 SETTING HLSDIAG(7)     =      -110.01650700                                  
 SETTING HLSDIAG(8)     =      -109.97512300                                  
 SETTING HLSDIAG(9)     =      -109.97512300                                  
 SETTING HLSDIAG(10)    =      -109.97512300                                  
 SETTING HLSDIAG(11)    =      -109.99182200                                  
 SETTING HLSDIAG(12)    =      -109.99182200                                  
 SETTING HLSDIAG(13)    =      -109.99182200                                  
 SETTING HLSDIAG(14)    =      -109.99182200                                  
 SETTING HLSDIAG(15)    =      -109.99182200                                  
 SETTING HLSDIAG(16)    =      -109.99182200                                  
 SETTING HLSDIAG(17)    =      -109.99182200                                  
 SETTING HLSDIAG(18)    =      -109.99513600                                  
 SETTING HLSDIAG(19)    =      -109.99513600                                  
 SETTING HLSDIAG(20)    =      -109.99513600                                  
 SETTING HLSDIAG(21)    =      -109.99513600                                  
 SETTING HLSDIAG(22)    =      -109.99513600                                  


        HLSDIAG
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -109.975123
    -109.975123
    -109.975123
    -109.991822
    -109.991822
    -109.991822
    -109.991822
    -109.991822
    -109.991822
    -109.991822
    -109.995136
    -109.995136
    -109.995136
    -109.995136
    -109.995136
                                                  


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
 Replaced energies:   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -109.975123
                      -109.975123   -109.975123

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.939391   -109.922334
                      -109.922334   -109.922334   -109.922334   -109.922334
 Replaced energies:   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822   -109.991822   -109.995136
                      -109.995136   -109.995136   -109.995136   -109.995136



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01650700

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -456.96      -0.00       0.00   -1090.56       0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -1023.54       0.00      -0.00     101.20       0.00      -0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          456.96       0.00      -0.00       0.00    -963.74      -0.00      -0.00      -0.00      -0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    1023.54      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     963.74       0.00      -0.00     563.73      -0.00       0.00       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         1090.56       0.00       0.00       0.00    -563.73       0.00      -0.00       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -101.20       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     524.70       0.00

    9   9.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -524.70       0.00      -0.00

   10  10.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   11   1.1  1.5  0.5      -0.00      -0.00       0.00       4.65       0.00       0.00    -498.38       0.00      -0.00      -0.00
                           -0.00     586.03      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   12   2.1  1.5  0.5       0.00       0.00    -593.38      -0.00      -0.00      22.90       0.00      -0.00       0.00      -0.00
                         -586.03       0.00      -0.00      -0.00     -95.89      -0.00       0.00       0.00      -0.00      -0.00

   13   3.1  1.5  0.5      -0.00     593.38      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00    -180.41      -0.00       0.00    -542.25       0.00      -0.00       0.00

   14   4.1  1.5  0.5      -4.65       0.00       0.00      -0.00    -536.14      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     180.41       0.00       0.00    -623.42       0.00      -0.00      -0.00       0.00

   15   5.1  1.5  0.5      -0.00       0.00       0.00     536.14      -0.00       0.00    -587.97       0.00      -0.00       0.00
                            0.00      95.89       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   16   6.1  1.5  0.5      -0.00     -22.90      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     623.42      -0.00      -0.00     407.85      -0.00      -0.00      -0.00

   17   7.1  1.5  0.5     498.38      -0.00       0.00      -0.00     587.97       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     542.25      -0.00       0.00    -407.85      -0.00       0.00       0.00       0.00

   18   8.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     302.93
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   19   9.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     302.94

   20  10.1  1.5  0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -302.93       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -302.94       0.00

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

   41   1.1  0.5  0.5      -0.00       0.00     407.74       0.00       0.00     -15.73      -0.00       0.00       0.00      -0.00
                          402.69      -0.00       0.00      -0.00      65.89       0.00       0.00       0.00      -0.00      -0.00

   42   2.1  0.5  0.5       0.00      -0.00       0.00     -97.25      -0.00       0.00     434.35       0.00       0.00       0.00
                            0.00    -406.16      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   43   3.1  0.5  0.5      -0.00     222.36       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -431.43       0.00      -0.00    -431.54       0.00      -0.00      -0.00

   44   4.1  0.5  0.5    -340.40       0.00       0.00       0.00    -364.82      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -383.21      -0.00       0.00     322.02       0.00      -0.00      -0.00       0.00

   45   5.1  0.5  0.5       0.00    -342.15      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00    -112.94      -0.00      -0.00     176.48       0.00      -0.00       0.00

   46   6.1  0.5  0.5      37.72       0.00      -0.00       0.00     407.28       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00     -85.76      -0.00      -0.00     397.94       0.00       0.00      -0.00       0.00

   47   7.1  0.5  0.5      -0.00       0.00       0.00    -355.36       0.00       0.00     303.09      -0.00       0.00       0.00
                            0.00      39.21       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   48   8.1  0.5  0.5       0.00     525.98       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00    -483.34      -0.00       0.00     457.20       0.00      -0.00    -718.32

   49   9.1  0.5  0.5       0.00       0.00      -0.00    -563.51      -0.00      -0.00    -353.69       0.00      -0.00     718.32
                            0.00    -525.98      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   50  10.1  0.5  0.5       0.00       0.00    -297.37      -0.00       0.00    -591.04      -0.00      -0.00     707.67      -0.00
                         -348.23       0.00      -0.00      -0.00     571.08       0.00      -0.00     728.53      -0.00      -0.00

   51  11.1  0.5  0.5      -0.00       0.00    -434.25      -0.00      -0.00     385.15       0.00       0.00    -432.69      -0.00
                          401.47       0.00       0.00      -0.00     407.55       0.00      -0.00     396.55       0.00      -0.00

   52  12.1  0.5  0.5    -584.90       0.00      -0.00      -0.00     317.16      -0.00      -0.00    -718.36       0.00       0.00
                           -0.00      -0.00     541.33       0.00      -0.00     386.86       0.00      -0.00     718.37       0.00

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

    1   1.1  1.5  1.5      -0.00       0.00      -0.00      -4.65      -0.00      -0.00     498.38      -0.00       0.00       0.00
                            0.00     586.03      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

    2   2.1  1.5  1.5      -0.00       0.00     593.38       0.00       0.00     -22.90      -0.00       0.00      -0.00       0.00
                         -586.03      -0.00      -0.00      -0.00     -95.89      -0.00       0.00       0.00      -0.00      -0.00

    3   3.1  1.5  1.5       0.00    -593.38      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -180.41      -0.00       0.00    -542.25       0.00      -0.00       0.00

    4   4.1  1.5  1.5       4.65      -0.00      -0.00      -0.00     536.14       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     180.41      -0.00       0.00    -623.42       0.00      -0.00      -0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00      -0.00    -536.14      -0.00      -0.00     587.97      -0.00       0.00      -0.00
                            0.00      95.89       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00      22.90       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     623.42      -0.00       0.00     407.85      -0.00      -0.00      -0.00

    7   7.1  1.5  1.5    -498.38       0.00      -0.00       0.00    -587.97      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     542.25      -0.00       0.00    -407.85       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -302.93
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

    9   9.1  1.5  1.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     302.94

   10  10.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     302.93      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -302.94      -0.00

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -152.32      -0.00       0.00    -363.52       0.00       0.00      -0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -341.18       0.00      -0.00      33.73       0.00      -0.00       0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          152.32       0.00      -0.00       0.00    -321.25      -0.00      -0.00      -0.00      -0.00       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     341.18      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     321.25       0.00      -0.00     187.91      -0.00       0.00       0.00      -0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          363.52       0.00       0.00       0.00    -187.91       0.00      -0.00       0.00      -0.00       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -33.73       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                           -0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     174.90       0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                            0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00    -174.90       0.00      -0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00

   21   1.1  1.5 -0.5      -0.00      -0.00       0.00       5.37       0.00       0.00    -575.48       0.00      -0.00      -0.00
                           -0.00     676.69      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   22   2.1  1.5 -0.5       0.00       0.00    -685.18      -0.00      -0.00      26.44       0.00      -0.00       0.00      -0.00
                         -676.69       0.00      -0.00      -0.00    -110.72      -0.00       0.00       0.00      -0.00      -0.00

   23   3.1  1.5 -0.5      -0.00     685.18      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00    -208.31      -0.00       0.00    -626.13       0.00      -0.00       0.00

   24   4.1  1.5 -0.5      -5.37       0.00       0.00      -0.00    -619.08      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     208.31       0.00       0.00    -719.86       0.00      -0.00      -0.00       0.00

   25   5.1  1.5 -0.5      -0.00       0.00       0.00     619.08      -0.00       0.00    -678.93       0.00      -0.00       0.00
                            0.00     110.72       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   26   6.1  1.5 -0.5      -0.00     -26.44      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     719.86      -0.00      -0.00     470.94      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5     575.48      -0.00       0.00      -0.00     678.93       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     626.13      -0.00       0.00    -470.94      -0.00       0.00       0.00       0.00

   28   8.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     349.80
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   29   9.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     349.80

   30  10.1  1.5 -0.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -349.80       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -349.80       0.00

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
                           -0.00       0.00       0.00    -468.89      -0.00       0.00      46.36      -0.00       0.00       0.00

   42   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -89.56       0.00      -0.00    -416.99      -0.00       0.00       0.01      -0.00

   43   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.86      -0.00       0.00       0.00       4.32       0.00       0.00       0.00       0.00      -0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.16       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          435.67      -0.00       0.00       0.00    -511.45       0.00       0.00      -0.00       0.00       0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     471.17       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     480.33      -0.00       0.00     377.35       0.00       0.00       0.00       0.00

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -523.41      -0.00      -0.00       0.00    -562.35      -0.00       0.00     829.45      -0.00       0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -588.75      -0.00      -0.00     493.52       0.00       0.00     829.45      -0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -602.19      -0.00      -0.00      80.14       0.00      -0.00      24.09

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      95.36      -0.00      -0.00     809.17       0.00       0.00     957.52

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -607.38      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00

   53   1.1  0.5 -0.5      -0.00       0.00     235.41       0.00       0.00      -9.08      -0.00       0.00       0.00      -0.00
                          232.50      -0.00       0.00      -0.00      38.04       0.00       0.00       0.00      -0.00      -0.00

   54   2.1  0.5 -0.5       0.00      -0.00       0.00     -56.14      -0.00       0.00     250.77       0.00       0.00       0.00
                            0.00    -234.50      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00

   55   3.1  0.5 -0.5      -0.00     128.38       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -249.08       0.00      -0.00    -249.15       0.00      -0.00      -0.00

   56   4.1  0.5 -0.5    -196.53       0.00       0.00       0.00    -210.63      -0.00       0.00      -0.00       0.00       0.00
                           -0.00       0.00    -221.25      -0.00       0.00     185.92       0.00      -0.00      -0.00       0.00

   57   5.1  0.5 -0.5       0.00    -197.54      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00      -0.00      -0.00     -65.20      -0.00      -0.00     101.89       0.00      -0.00       0.00

   58   6.1  0.5 -0.5      21.78       0.00      -0.00       0.00     235.14       0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00     -49.51      -0.00      -0.00     229.75       0.00       0.00      -0.00       0.00

   59   7.1  0.5 -0.5      -0.00       0.00       0.00    -205.17       0.00       0.00     174.99      -0.00       0.00       0.00
                            0.00      22.64       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   60   8.1  0.5 -0.5       0.00     303.67       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                           -0.00       0.00       0.00    -279.05      -0.00       0.00     263.96       0.00      -0.00    -414.72

   61   9.1  0.5 -0.5       0.00       0.00      -0.00    -325.34      -0.00      -0.00    -204.20       0.00      -0.00     414.72
                            0.00    -303.67      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   62  10.1  0.5 -0.5       0.00       0.00    -171.69      -0.00       0.00    -341.24      -0.00      -0.00     408.57      -0.00
                         -201.05       0.00      -0.00      -0.00     329.71       0.00      -0.00     420.62      -0.00      -0.00

   63  11.1  0.5 -0.5      -0.00       0.00    -250.71      -0.00      -0.00     222.36       0.00       0.00    -249.81      -0.00
                          231.79       0.00       0.00      -0.00     235.30       0.00      -0.00     228.95       0.00      -0.00

   64  12.1  0.5 -0.5    -337.69       0.00      -0.00      -0.00     183.11      -0.00      -0.00    -414.75       0.00       0.00
                           -0.00      -0.00     312.54       0.00      -0.00     223.35       0.00      -0.00     414.75       0.00


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

   11   1.1  1.5  0.5      -0.00       0.00      -0.00      -5.37      -0.00      -0.00     575.48      -0.00       0.00       0.00
                            0.00     676.69      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   12   2.1  1.5  0.5      -0.00       0.00     685.18       0.00       0.00     -26.44      -0.00       0.00      -0.00       0.00
                         -676.69      -0.00      -0.00      -0.00    -110.72      -0.00       0.00       0.00      -0.00      -0.00

   13   3.1  1.5  0.5       0.00    -685.18      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -208.31      -0.00       0.00    -626.13       0.00      -0.00       0.00

   14   4.1  1.5  0.5       5.37      -0.00      -0.00      -0.00     619.08       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     208.31      -0.00       0.00    -719.86       0.00      -0.00      -0.00       0.00

   15   5.1  1.5  0.5       0.00      -0.00      -0.00    -619.08      -0.00      -0.00     678.93      -0.00       0.00      -0.00
                            0.00     110.72       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   16   6.1  1.5  0.5       0.00      26.44       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     719.86      -0.00       0.00     470.94      -0.00      -0.00      -0.00

   17   7.1  1.5  0.5    -575.48       0.00      -0.00       0.00    -678.93      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     626.13      -0.00       0.00    -470.94       0.00       0.00       0.00       0.00

   18   8.1  1.5  0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -349.80
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   19   9.1  1.5  0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     349.80

   20  10.1  1.5  0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     349.80      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -349.80      -0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     152.32       0.00      -0.00     363.52      -0.00      -0.00       0.00      -0.00

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     341.18      -0.00       0.00     -33.73      -0.00       0.00      -0.00

   23   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -152.32      -0.00       0.00      -0.00     321.25       0.00       0.00       0.00       0.00      -0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -341.18       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -321.25      -0.00       0.00    -187.91       0.00      -0.00      -0.00       0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -363.52      -0.00      -0.00      -0.00     187.91      -0.00       0.00      -0.00       0.00      -0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      33.73      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -174.90      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     174.90      -0.00       0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

   31   1.1  1.5 -1.5      -0.00      -0.00       0.00       4.65       0.00       0.00    -498.38       0.00      -0.00      -0.00
                           -0.00     586.03      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00    -593.38      -0.00      -0.00      22.90       0.00      -0.00       0.00      -0.00
                         -586.03       0.00      -0.00      -0.00     -95.89      -0.00       0.00       0.00      -0.00      -0.00

   33   3.1  1.5 -1.5      -0.00     593.38      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00    -180.41      -0.00       0.00    -542.25       0.00      -0.00       0.00

   34   4.1  1.5 -1.5      -4.65       0.00       0.00      -0.00    -536.14      -0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00     180.41       0.00       0.00    -623.42       0.00      -0.00      -0.00       0.00

   35   5.1  1.5 -1.5      -0.00       0.00       0.00     536.14      -0.00       0.00    -587.97       0.00      -0.00       0.00
                            0.00      95.89       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00

   36   6.1  1.5 -1.5      -0.00     -22.90      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00     623.42      -0.00      -0.00     407.85      -0.00      -0.00      -0.00

   37   7.1  1.5 -1.5     498.38      -0.00       0.00      -0.00     587.97       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00     542.25      -0.00       0.00    -407.85      -0.00       0.00       0.00       0.00

   38   8.1  1.5 -1.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     302.93
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   39   9.1  1.5 -1.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     302.94

   40  10.1  1.5 -1.5       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -302.93       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -302.94       0.00

   41   1.1  0.5  0.5      -0.00       0.00     235.41       0.00       0.00      -9.08      -0.00       0.00       0.00      -0.00
                         -232.50       0.00      -0.00       0.00     -38.04      -0.00      -0.00      -0.00       0.00       0.00

   42   2.1  0.5  0.5       0.00      -0.00       0.00     -56.14      -0.00       0.00     250.77       0.00       0.00       0.00
                           -0.00     234.50       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   43   3.1  0.5  0.5      -0.00     128.38       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     249.08      -0.00       0.00     249.15      -0.00       0.00       0.00

   44   4.1  0.5  0.5    -196.53       0.00       0.00       0.00    -210.63      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     221.25       0.00      -0.00    -185.92      -0.00       0.00       0.00      -0.00

   45   5.1  0.5  0.5       0.00    -197.54      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00      65.20       0.00       0.00    -101.89      -0.00       0.00      -0.00

   46   6.1  0.5  0.5      21.78       0.00      -0.00       0.00     235.14       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      49.51       0.00       0.00    -229.75      -0.00      -0.00       0.00      -0.00

   47   7.1  0.5  0.5      -0.00       0.00       0.00    -205.17       0.00       0.00     174.99      -0.00       0.00       0.00
                           -0.00     -22.64      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   48   8.1  0.5  0.5       0.00     303.67       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     279.05       0.00      -0.00    -263.96      -0.00       0.00     414.72

   49   9.1  0.5  0.5       0.00       0.00      -0.00    -325.34      -0.00      -0.00    -204.20       0.00      -0.00     414.72
                           -0.00     303.67       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   50  10.1  0.5  0.5       0.00       0.00    -171.69      -0.00       0.00    -341.24      -0.00      -0.00     408.57      -0.00
                          201.05      -0.00       0.00       0.00    -329.71      -0.00       0.00    -420.62       0.00       0.00

   51  11.1  0.5  0.5      -0.00       0.00    -250.71      -0.00      -0.00     222.36       0.00       0.00    -249.81      -0.00
                         -231.79      -0.00      -0.00       0.00    -235.30      -0.00       0.00    -228.95      -0.00       0.00

   52  12.1  0.5  0.5    -337.69       0.00      -0.00      -0.00     183.11      -0.00      -0.00    -414.75       0.00       0.00
                            0.00       0.00    -312.54      -0.00       0.00    -223.35      -0.00       0.00    -414.75      -0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00    -468.89      -0.00       0.00      46.36      -0.00       0.00       0.00

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -89.56       0.00      -0.00    -416.99      -0.00       0.00       0.01      -0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.86      -0.00       0.00       0.00       4.32       0.00       0.00       0.00       0.00      -0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       1.16       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          435.67      -0.00       0.00       0.00    -511.45       0.00       0.00      -0.00       0.00       0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     471.17       0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     480.33      -0.00       0.00     377.35       0.00       0.00       0.00       0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -523.41      -0.00      -0.00       0.00    -562.35      -0.00       0.00     829.45      -0.00       0.00

   61   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -588.75      -0.00      -0.00     493.52       0.00       0.00     829.45      -0.00

   62  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -602.19      -0.00      -0.00      80.14       0.00      -0.00      24.09

   63  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      95.36      -0.00      -0.00     809.17       0.00       0.00     957.52

   64  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -607.38      -0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00


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

   21   1.1  1.5 -0.5      -0.00       0.00      -0.00      -4.65      -0.00      -0.00     498.38      -0.00       0.00       0.00
                            0.00     586.03      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00

   22   2.1  1.5 -0.5      -0.00       0.00     593.38       0.00       0.00     -22.90      -0.00       0.00      -0.00       0.00
                         -586.03      -0.00      -0.00      -0.00     -95.89      -0.00       0.00       0.00      -0.00      -0.00

   23   3.1  1.5 -0.5       0.00    -593.38      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00      -0.00    -180.41      -0.00       0.00    -542.25       0.00      -0.00       0.00

   24   4.1  1.5 -0.5       4.65      -0.00      -0.00      -0.00     536.14       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00     180.41      -0.00       0.00    -623.42       0.00      -0.00      -0.00       0.00

   25   5.1  1.5 -0.5       0.00      -0.00      -0.00    -536.14      -0.00      -0.00     587.97      -0.00       0.00      -0.00
                            0.00      95.89       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   26   6.1  1.5 -0.5       0.00      22.90       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     623.42      -0.00       0.00     407.85      -0.00      -0.00      -0.00

   27   7.1  1.5 -0.5    -498.38       0.00      -0.00       0.00    -587.97      -0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00     542.25      -0.00       0.00    -407.85       0.00       0.00       0.00       0.00

   28   8.1  1.5 -0.5       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -302.93
                            0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00

   29   9.1  1.5 -0.5      -0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     302.94

   30  10.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00     302.93      -0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00    -302.94      -0.00

   31   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     456.96       0.00      -0.00    1090.56      -0.00      -0.00       0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    1023.54      -0.00       0.00    -101.20      -0.00       0.00      -0.00

   33   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -456.96      -0.00       0.00      -0.00     963.74       0.00       0.00       0.00       0.00      -0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00   -1023.54       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   35   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -963.74      -0.00       0.00    -563.73       0.00      -0.00      -0.00       0.00

   36   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                        -1090.56      -0.00      -0.00      -0.00     563.73      -0.00       0.00      -0.00       0.00      -0.00

   37   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     101.20      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -524.70      -0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00     524.70      -0.00       0.00

   40  10.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    9082.74
                            0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00

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

   53   1.1  0.5 -0.5      -0.00       0.00     407.74       0.00       0.00     -15.73      -0.00       0.00       0.00      -0.00
                         -402.69       0.00      -0.00       0.00     -65.89      -0.00      -0.00      -0.00       0.00       0.00

   54   2.1  0.5 -0.5       0.00      -0.00       0.00     -97.25      -0.00       0.00     434.35       0.00       0.00       0.00
                           -0.00     406.16       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00

   55   3.1  0.5 -0.5      -0.00     222.36       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00       0.00     431.43      -0.00       0.00     431.54      -0.00       0.00       0.00

   56   4.1  0.5 -0.5    -340.40       0.00       0.00       0.00    -364.82      -0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00     383.21       0.00      -0.00    -322.02      -0.00       0.00       0.00      -0.00

   57   5.1  0.5 -0.5       0.00    -342.15      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00     112.94       0.00       0.00    -176.48      -0.00       0.00      -0.00

   58   6.1  0.5 -0.5      37.72       0.00      -0.00       0.00     407.28       0.00       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      85.76       0.00       0.00    -397.94      -0.00      -0.00       0.00      -0.00

   59   7.1  0.5 -0.5      -0.00       0.00       0.00    -355.36       0.00       0.00     303.09      -0.00       0.00       0.00
                           -0.00     -39.21      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00

   60   8.1  0.5 -0.5       0.00     525.98       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     483.34       0.00      -0.00    -457.20      -0.00       0.00     718.32

   61   9.1  0.5 -0.5       0.00       0.00      -0.00    -563.51      -0.00      -0.00    -353.69       0.00      -0.00     718.32
                           -0.00     525.98       0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   62  10.1  0.5 -0.5       0.00       0.00    -297.37      -0.00       0.00    -591.04      -0.00      -0.00     707.67      -0.00
                          348.23      -0.00       0.00       0.00    -571.08      -0.00       0.00    -728.53       0.00       0.00

   63  11.1  0.5 -0.5      -0.00       0.00    -434.25      -0.00      -0.00     385.15       0.00       0.00    -432.69      -0.00
                         -401.47      -0.00      -0.00       0.00    -407.55      -0.00       0.00    -396.55      -0.00       0.00

   64  12.1  0.5 -0.5    -584.90       0.00      -0.00      -0.00     317.16      -0.00      -0.00    -718.36       0.00       0.00
                            0.00       0.00    -541.33      -0.00       0.00    -386.86      -0.00       0.00    -718.37      -0.00


   Nr   State  S   Sz       41         42         43         44         45         46         47         48         49         50

    1   1.1  1.5  1.5      -0.00       0.00      -0.00    -340.40       0.00      37.72      -0.00       0.00       0.00       0.00
                         -402.69      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     348.23

    2   2.1  1.5  1.5       0.00      -0.00     222.36       0.00    -342.15       0.00       0.00     525.98       0.00       0.00
                            0.00     406.16      -0.00      -0.00       0.00      -0.00     -39.21      -0.00     525.98      -0.00

    3   3.1  1.5  1.5     407.74       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -297.37
                           -0.00       0.00       0.00     383.21       0.00      85.76      -0.00      -0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00     -97.25      -0.00       0.00       0.00       0.00    -355.36       0.00    -563.51      -0.00
                            0.00      -0.00     431.43       0.00     112.94       0.00       0.00     483.34      -0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00      -0.00    -364.82      -0.00     407.28       0.00      -0.00      -0.00       0.00
                          -65.89      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00       0.00    -571.08

    6   6.1  1.5  1.5     -15.73       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -591.04
                           -0.00       0.00       0.00    -322.02       0.00    -397.94      -0.00      -0.00       0.00      -0.00

    7   7.1  1.5  1.5      -0.00     434.35      -0.00       0.00       0.00       0.00     303.09       0.00    -353.69      -0.00
                           -0.00      -0.00     431.54      -0.00    -176.48      -0.00       0.00    -457.20      -0.00       0.00

    8   8.1  1.5  1.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -728.53

    9   9.1  1.5  1.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     707.67
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     718.32      -0.00
                            0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     718.32      -0.00       0.00

   11   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -321.86       0.00    -435.67       0.00       0.00     523.41      -0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -1.16       0.00    -471.17       0.00       0.00      -0.00      -0.00

   13   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      89.56      -0.00      -0.00      -0.00      -0.00    -480.33       0.00     588.75       0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          468.89      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00     602.19

   15   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -4.32       0.00     511.45      -0.00      -0.00     562.35       0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     416.99      -0.00       0.00      -0.00      -0.00    -377.35       0.00    -493.52       0.00

   17   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -46.36       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     -80.14

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -829.45      -0.00      -0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00    -829.45       0.00

   20  10.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00     -24.09

   21   1.1  1.5 -0.5      -0.00       0.00      -0.00    -196.53       0.00      21.78      -0.00       0.00       0.00       0.00
                          232.50       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00    -201.05

   22   2.1  1.5 -0.5       0.00      -0.00     128.38       0.00    -197.54       0.00       0.00     303.67       0.00       0.00
                           -0.00    -234.50       0.00       0.00      -0.00       0.00      22.64       0.00    -303.67       0.00

   23   3.1  1.5 -0.5     235.41       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00    -171.69
                            0.00      -0.00      -0.00    -221.25      -0.00     -49.51       0.00       0.00      -0.00      -0.00

   24   4.1  1.5 -0.5       0.00     -56.14      -0.00       0.00       0.00       0.00    -205.17       0.00    -325.34      -0.00
                           -0.00       0.00    -249.08      -0.00     -65.20      -0.00      -0.00    -279.05       0.00      -0.00

   25   5.1  1.5 -0.5       0.00      -0.00      -0.00    -210.63      -0.00     235.14       0.00      -0.00      -0.00       0.00
                           38.04       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     329.71

   26   6.1  1.5 -0.5      -9.08       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00    -341.24
                            0.00      -0.00      -0.00     185.92      -0.00     229.75       0.00       0.00      -0.00       0.00

   27   7.1  1.5 -0.5      -0.00     250.77      -0.00       0.00       0.00       0.00     174.99       0.00    -204.20      -0.00
                            0.00       0.00    -249.15       0.00     101.89       0.00      -0.00     263.96       0.00      -0.00

   28   8.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00     420.62

   29   9.1  1.5 -0.5       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00     408.57
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00

   30  10.1  1.5 -0.5      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     414.72      -0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -414.72       0.00      -0.00

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

   41   1.1  0.5  0.5    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -1.65       0.00    -670.95      -0.00      -0.00       0.00      -0.00

   42   2.1  0.5  0.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -444.70      -0.00    -413.66       0.00      -0.00    -456.53      -0.00      -0.00

   43   3.1  0.5  0.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     444.70       0.00      -0.00      -0.00      -0.00    -111.18      -0.00     509.70       0.00

   44   4.1  0.5  0.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                            1.65       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      13.35

   45   5.1  0.5  0.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                           -0.00     413.66       0.00      -0.00      -0.00       0.00    -862.68       0.00    -177.69       0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                          670.95      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00    -426.65

   47   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                            0.00       0.00     111.18      -0.00     862.68       0.00      -0.00    -288.01      -0.00       0.00

   48   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                            0.00     456.53       0.00       0.00      -0.00       0.00     288.01      -0.00      50.57       0.00

   49   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                           -0.00       0.00    -509.70       0.00     177.69      -0.00       0.00     -50.57       0.00       0.00

   50  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                            0.00       0.00      -0.00     -13.35      -0.00     426.65      -0.00      -0.00      -0.00      -0.00

   51  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -572.41      -0.00      -9.33       0.00       0.00      -0.00      -0.00

   52  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          426.77       0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00    -101.05

   53   1.1  0.5 -0.5       0.00       0.00     365.62      -0.00    -562.59       0.00      -0.00    -426.74      -0.00      -0.00
                           -0.00    -667.85      -0.00      -0.00      -0.00      -0.00      64.48      -0.00     426.74       0.00

   54   2.1  0.5 -0.5      -0.00      -0.00      -0.00    -694.44      -0.00     231.10      -0.00      -0.00      -0.00       0.00
                          667.85       0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     154.74

   55   3.1  0.5 -0.5    -365.62       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00     288.28
                            0.00       0.00      -0.00     777.51      -0.00     634.22      -0.00       0.00       0.00      -0.00

   56   4.1  0.5 -0.5       0.00     694.44      -0.00      -0.00       0.00      -0.00     436.91      -0.00     331.61       0.00
                            0.00       0.00    -777.51      -0.00     269.99      -0.00      -0.00    -329.50      -0.00       0.00

   57   5.1  0.5 -0.5     562.59       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00     452.83
                            0.00       0.00       0.00    -269.99       0.00     214.03      -0.00       0.00       0.00      -0.00

   58   6.1  0.5 -0.5      -0.00    -231.10      -0.00       0.00       0.00       0.00    -631.60       0.00     425.93       0.00
                            0.00       0.00    -634.22       0.00    -214.03       0.00       0.00     427.55       0.00       0.00

   59   7.1  0.5 -0.5       0.00       0.00      -0.00    -436.91       0.00     631.60       0.00       0.00       0.00      -0.00
                          -64.48      -0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -520.15

   60   8.1  0.5 -0.5     426.74       0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00       0.00      52.75
                            0.00       0.00      -0.00     329.50      -0.00    -427.55      -0.00      -0.00      -0.00       0.00

   61   9.1  0.5 -0.5       0.00       0.00       0.00    -331.61       0.00    -425.93      -0.00      -0.00      -0.00      -0.00
                         -426.74       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     -48.35

   62  10.1  0.5 -0.5       0.00      -0.00    -288.28      -0.00    -452.83      -0.00       0.00     -52.75       0.00       0.00
                           -0.00    -154.74       0.00      -0.00       0.00      -0.00     520.15      -0.00      48.35      -0.00

   63  11.1  0.5 -0.5      -0.00       0.00     448.84       0.00    -142.55       0.00       0.00     -86.24       0.00      -0.00
                            0.00     399.42      -0.00      -0.00       0.00      -0.00     236.44      -0.00     -88.78      -0.00

   64  12.1  0.5 -0.5       0.00    -393.02      -0.00      -0.00      -0.00      -0.00     370.06       0.00     -50.54       0.00
                           -0.00      -0.00      44.63       0.00     537.97       0.00       0.00     -50.54       0.00       0.00


   Nr   State  S   Sz       51         52         53         54         55         56         57         58         59         60

    1   1.1  1.5  1.5      -0.00    -584.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -401.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5    -434.25      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -541.33       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00     317.16       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -407.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5     385.15      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -386.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   8.1  1.5  1.5       0.00    -718.36       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -396.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   9.1  1.5  1.5    -432.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -718.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   10  10.1  1.5  1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   1.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00    -196.53       0.00      21.78      -0.00       0.00
                            0.00       0.00    -232.50      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00      -0.00     128.38       0.00    -197.54       0.00       0.00     303.67
                            0.00     607.38       0.00     234.50      -0.00      -0.00       0.00      -0.00     -22.64      -0.00

   13   3.1  1.5  0.5       0.00       0.00     235.41       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00     221.25       0.00      49.51      -0.00      -0.00

   14   4.1  1.5  0.5       0.00       0.00       0.00     -56.14      -0.00       0.00       0.00       0.00    -205.17       0.00
                          -95.36      -0.00       0.00      -0.00     249.08       0.00      65.20       0.00       0.00     279.05

   15   5.1  1.5  0.5       0.00       0.00       0.00      -0.00      -0.00    -210.63      -0.00     235.14       0.00      -0.00
                            0.00       0.00     -38.04      -0.00      -0.00      -0.00       0.00       0.00      -0.00       0.00

   16   6.1  1.5  0.5       0.00       0.00      -9.08       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00    -185.92       0.00    -229.75      -0.00      -0.00

   17   7.1  1.5  0.5       0.00       0.00      -0.00     250.77      -0.00       0.00       0.00       0.00     174.99       0.00
                         -809.17       0.00      -0.00      -0.00     249.15      -0.00    -101.89      -0.00       0.00    -263.96

   18   8.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00

   19   9.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                           -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   20  10.1  1.5  0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                         -957.52      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00     414.72

   21   1.1  1.5 -0.5      -0.00    -337.69       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          231.79      -0.00       0.00      -0.00    -321.86       0.00    -435.67       0.00       0.00     523.41

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      -1.16       0.00    -471.17       0.00       0.00

   23   3.1  1.5 -0.5    -250.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     312.54      -0.00      89.56      -0.00      -0.00      -0.00      -0.00    -480.33       0.00

   24   4.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     468.89      -0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00

   25   5.1  1.5 -0.5      -0.00     183.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          235.30      -0.00       0.00       0.00      -4.32       0.00     511.45      -0.00      -0.00     562.35

   26   6.1  1.5 -0.5     222.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     223.35      -0.00     416.99      -0.00       0.00      -0.00      -0.00    -377.35       0.00

   27   7.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     -46.36       0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00

   28   8.1  1.5 -0.5       0.00    -414.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          228.95      -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00    -829.45

   29   9.1  1.5 -0.5    -249.81       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     414.75      -0.00      -0.01      -0.00       0.00      -0.00       0.00      -0.00       0.00

   30  10.1  1.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00

   31   1.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00    -340.40       0.00      37.72      -0.00       0.00
                            0.00       0.00     402.69       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00      -0.00     222.36       0.00    -342.15       0.00       0.00     525.98
                            0.00       0.00      -0.00    -406.16       0.00       0.00      -0.00       0.00      39.21       0.00

   33   3.1  1.5 -1.5       0.00       0.00     407.74       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00    -383.21      -0.00     -85.76       0.00       0.00

   34   4.1  1.5 -1.5       0.00       0.00       0.00     -97.25      -0.00       0.00       0.00       0.00    -355.36       0.00
                            0.00       0.00      -0.00       0.00    -431.43      -0.00    -112.94      -0.00      -0.00    -483.34

   35   5.1  1.5 -1.5       0.00       0.00       0.00      -0.00      -0.00    -364.82      -0.00     407.28       0.00      -0.00
                            0.00       0.00      65.89       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00

   36   6.1  1.5 -1.5       0.00       0.00     -15.73       0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00      -0.00     322.02      -0.00     397.94       0.00       0.00

   37   7.1  1.5 -1.5       0.00       0.00      -0.00     434.35      -0.00       0.00       0.00       0.00     303.09       0.00
                            0.00       0.00       0.00       0.00    -431.54       0.00     176.48       0.00      -0.00     457.20

   38   8.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00

   39   9.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -0.00
                            0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   40  10.1  1.5 -1.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00    -718.32

   41   1.1  0.5  0.5       0.00       0.00       0.00      -0.00    -365.62       0.00     562.59      -0.00       0.00     426.74
                           -0.00    -426.77       0.00    -667.85      -0.00      -0.00      -0.00      -0.00      64.48      -0.00

   42   2.1  0.5  0.5       0.00       0.00       0.00      -0.00       0.00     694.44       0.00    -231.10       0.00       0.00
                           -0.00      -0.00     667.85      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   43   3.1  0.5  0.5       0.00       0.00     365.62      -0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00       0.00       0.00     777.51      -0.00     634.22      -0.00       0.00

   44   4.1  0.5  0.5       0.00       0.00      -0.00    -694.44       0.00      -0.00      -0.00       0.00    -436.91       0.00
                          572.41      -0.00       0.00       0.00    -777.51       0.00     269.99      -0.00      -0.00    -329.50

   45   5.1  0.5  0.5       0.00       0.00    -562.59      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00      -0.00       0.00       0.00       0.00    -269.99      -0.00     214.03      -0.00       0.00

   46   6.1  0.5  0.5       0.00       0.00       0.00     231.10       0.00      -0.00      -0.00       0.00     631.60      -0.00
                            9.33       0.00       0.00       0.00    -634.22       0.00    -214.03      -0.00       0.00     427.55

   47   7.1  0.5  0.5       0.00       0.00      -0.00      -0.00       0.00     436.91      -0.00    -631.60       0.00      -0.00
                           -0.00      -0.00     -64.48      -0.00       0.00       0.00       0.00      -0.00      -0.00       0.00

   48   8.1  0.5  0.5       0.00       0.00    -426.74      -0.00       0.00      -0.00       0.00       0.00       0.00      -0.00
                           -0.00       0.00       0.00       0.00      -0.00     329.50      -0.00    -427.55      -0.00       0.00

   49   9.1  0.5  0.5       0.00       0.00      -0.00      -0.00      -0.00     331.61      -0.00     425.93       0.00       0.00
                            0.00       0.00    -426.74       0.00      -0.00       0.00      -0.00      -0.00      -0.00       0.00

   50  10.1  0.5  0.5       0.00       0.00      -0.00       0.00     288.28       0.00     452.83       0.00      -0.00      52.75
                            0.00     101.05      -0.00    -154.74       0.00      -0.00       0.00      -0.00     520.15      -0.00

   51  11.1  0.5  0.5    4690.39       0.00       0.00      -0.00    -448.84      -0.00     142.55      -0.00      -0.00      86.24
                           -0.00      -2.54       0.00     399.42      -0.00      -0.00       0.00      -0.00     236.44      -0.00

   52  12.1  0.5  0.5       0.00    4690.39      -0.00     393.02       0.00       0.00       0.00       0.00    -370.06      -0.00
                            2.54       0.00      -0.00      -0.00      44.63       0.00     537.97       0.00       0.00     -50.54

   53   1.1  0.5 -0.5       0.00      -0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00       1.65      -0.00     670.95       0.00       0.00

   54   2.1  0.5 -0.5      -0.00     393.02       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                         -399.42       0.00       0.00       0.00     444.70       0.00     413.66      -0.00       0.00     456.53

   55   3.1  0.5 -0.5    -448.84       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                            0.00     -44.63       0.00    -444.70      -0.00       0.00       0.00       0.00     111.18       0.00

   56   4.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                            0.00      -0.00      -1.65      -0.00      -0.00       0.00      -0.00       0.00      -0.00       0.00

   57   5.1  0.5 -0.5     142.55       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                           -0.00    -537.97       0.00    -413.66      -0.00       0.00       0.00      -0.00     862.68      -0.00

   58   6.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00
                            0.00      -0.00    -670.95       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

   59   7.1  0.5 -0.5      -0.00    -370.06       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                         -236.44      -0.00      -0.00      -0.00    -111.18       0.00    -862.68      -0.00       0.00     288.01

   60   8.1  0.5 -0.5      86.24      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                            0.00      50.54      -0.00    -456.53      -0.00      -0.00       0.00      -0.00    -288.01       0.00

   61   9.1  0.5 -0.5      -0.00      50.54       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           88.78      -0.00       0.00      -0.00     509.70      -0.00    -177.69       0.00      -0.00      50.57

   62  10.1  0.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00       0.00      13.35       0.00    -426.65       0.00       0.00

   63  11.1  0.5 -0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     572.41       0.00       9.33      -0.00      -0.00

   64  12.1  0.5 -0.5      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -426.77      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00


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

   11   1.1  1.5  0.5       0.00       0.00      -0.00    -337.69
                           -0.00     201.05    -231.79       0.00

   12   2.1  1.5  0.5       0.00       0.00       0.00       0.00
                          303.67      -0.00      -0.00       0.00

   13   3.1  1.5  0.5      -0.00    -171.69    -250.71      -0.00
                            0.00       0.00      -0.00    -312.54

   14   4.1  1.5  0.5    -325.34      -0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00

   15   5.1  1.5  0.5      -0.00       0.00      -0.00     183.11
                            0.00    -329.71    -235.30       0.00

   16   6.1  1.5  0.5      -0.00    -341.24     222.36      -0.00
                            0.00      -0.00      -0.00    -223.35

   17   7.1  1.5  0.5    -204.20      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

   18   8.1  1.5  0.5       0.00      -0.00       0.00    -414.75
                           -0.00    -420.62    -228.95       0.00

   19   9.1  1.5  0.5      -0.00     408.57    -249.81       0.00
                            0.00       0.00      -0.00    -414.75

   20  10.1  1.5  0.5     414.72      -0.00      -0.00       0.00
                           -0.00       0.00       0.00      -0.00

   21   1.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00

   22   2.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     607.38

   23   3.1  1.5 -0.5       0.00       0.00       0.00       0.00
                          588.75       0.00      -0.00       0.00

   24   4.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     602.19     -95.36      -0.00

   25   5.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   26   6.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -493.52       0.00       0.00      -0.00

   27   7.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00     -80.14    -809.17       0.00

   28   8.1  1.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   29   9.1  1.5 -0.5       0.00       0.00       0.00       0.00
                         -829.45       0.00      -0.00      -0.00

   30  10.1  1.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     -24.09    -957.52      -0.00

   31   1.1  1.5 -1.5       0.00       0.00      -0.00    -584.90
                            0.00    -348.23     401.47      -0.00

   32   2.1  1.5 -1.5       0.00       0.00       0.00       0.00
                         -525.98       0.00       0.00      -0.00

   33   3.1  1.5 -1.5      -0.00    -297.37    -434.25      -0.00
                           -0.00      -0.00       0.00     541.33

   34   4.1  1.5 -1.5    -563.51      -0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00

   35   5.1  1.5 -1.5      -0.00       0.00      -0.00     317.16
                           -0.00     571.08     407.55      -0.00

   36   6.1  1.5 -1.5      -0.00    -591.04     385.15      -0.00
                           -0.00       0.00       0.00     386.86

   37   7.1  1.5 -1.5    -353.69      -0.00       0.00      -0.00
                            0.00      -0.00      -0.00       0.00

   38   8.1  1.5 -1.5       0.00      -0.00       0.00    -718.36
                            0.00     728.53     396.55      -0.00

   39   9.1  1.5 -1.5      -0.00     707.67    -432.69       0.00
                           -0.00      -0.00       0.00     718.37

   40  10.1  1.5 -1.5     718.32      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00       0.00

   41   1.1  0.5  0.5       0.00       0.00      -0.00       0.00
                          426.74       0.00      -0.00       0.00

   42   2.1  0.5  0.5       0.00      -0.00       0.00    -393.02
                           -0.00     154.74    -399.42       0.00

   43   3.1  0.5  0.5       0.00    -288.28     448.84      -0.00
                            0.00      -0.00       0.00     -44.63

   44   4.1  0.5  0.5    -331.61      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00

   45   5.1  0.5  0.5       0.00    -452.83    -142.55      -0.00
                            0.00      -0.00      -0.00    -537.97

   46   6.1  0.5  0.5    -425.93      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00

   47   7.1  0.5  0.5      -0.00       0.00       0.00     370.06
                            0.00    -520.15    -236.44      -0.00

   48   8.1  0.5  0.5      -0.00     -52.75     -86.24       0.00
                           -0.00       0.00       0.00      50.54

   49   9.1  0.5  0.5      -0.00       0.00       0.00     -50.54
                           -0.00     -48.35      88.78      -0.00

   50  10.1  0.5  0.5      -0.00       0.00      -0.00       0.00
                           48.35       0.00       0.00      -0.00

   51  11.1  0.5  0.5      -0.00       0.00      -0.00      -0.00
                          -88.78      -0.00       0.00      -0.00

   52  12.1  0.5  0.5      50.54      -0.00       0.00      -0.00
                            0.00       0.00       0.00      -0.00

   53   1.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     426.77

   54   2.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00

   55   3.1  0.5 -0.5       0.00       0.00       0.00       0.00
                         -509.70      -0.00       0.00      -0.00

   56   4.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00     -13.35    -572.41       0.00

   57   5.1  0.5 -0.5       0.00       0.00       0.00       0.00
                          177.69      -0.00      -0.00       0.00

   58   6.1  0.5 -0.5       0.00       0.00       0.00       0.00
                           -0.00     426.65      -9.33      -0.00

   59   7.1  0.5 -0.5       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00

   60   8.1  0.5 -0.5       0.00       0.00       0.00       0.00
                          -50.57      -0.00       0.00      -0.00

   61   9.1  0.5 -0.5    4690.39       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00

   62  10.1  0.5 -0.5       0.00    4690.39       0.00       0.00
                            0.00       0.00      -0.00    -101.05

   63  11.1  0.5 -0.5       0.00       0.00    4690.39       0.00
                            0.00       0.00       0.00       2.54

   64  12.1  0.5 -0.5       0.00       0.00       0.00    4690.39
                            0.00     101.05      -2.54      -0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02353654    -0.00702954    -1542.81      0.00000000        0.00      0.0000
     2  -110.02353654    -0.00702954    -1542.81      0.00000000        0.00      0.0000
     3  -110.02353653    -0.00702953    -1542.80      0.00000001        0.00      0.0000
     4  -110.02353653    -0.00702953    -1542.80      0.00000001        0.00      0.0000
     5  -110.02353653    -0.00702953    -1542.80      0.00000002        0.00      0.0000
     6  -110.02353653    -0.00702953    -1542.80      0.00000002        0.00      0.0000
     7  -110.02353652    -0.00702952    -1542.80      0.00000003        0.01      0.0000
     8  -110.02353652    -0.00702952    -1542.80      0.00000003        0.01      0.0000
     9  -110.02353651    -0.00702951    -1542.80      0.00000003        0.01      0.0000
    10  -110.02353651    -0.00702951    -1542.80      0.00000003        0.01      0.0000
    11  -110.01725321    -0.00074621     -163.77      0.00628333     1379.03      0.1710
    12  -110.01725321    -0.00074621     -163.77      0.00628333     1379.03      0.1710
    13  -110.01725320    -0.00074620     -163.77      0.00628334     1379.03      0.1710
    14  -110.01725320    -0.00074620     -163.77      0.00628334     1379.03      0.1710
    15  -110.01725319    -0.00074619     -163.77      0.00628335     1379.04      0.1710
    16  -110.01725319    -0.00074619     -163.77      0.00628335     1379.04      0.1710
    17  -110.01725319    -0.00074619     -163.77      0.00628335     1379.04      0.1710
    18  -110.01725319    -0.00074619     -163.77      0.00628335     1379.04      0.1710
    19  -110.01254376     0.00396324      869.83      0.01099278     2412.64      0.2991
    20  -110.01254376     0.00396324      869.83      0.01099278     2412.64      0.2991
    21  -110.01254374     0.00396326      869.83      0.01099280     2412.64      0.2991
    22  -110.01254374     0.00396326      869.83      0.01099280     2412.64      0.2991
    23  -110.01254368     0.00396332      869.85      0.01099286     2412.65      0.2991
    24  -110.01254368     0.00396332      869.85      0.01099286     2412.65      0.2991
    25  -110.01022912     0.00627788     1377.83      0.01330742     2920.64      0.3621
    26  -110.01022912     0.00627788     1377.83      0.01330742     2920.64      0.3621
    27  -110.01022910     0.00627790     1377.84      0.01330744     2920.65      0.3621
    28  -110.01022910     0.00627790     1377.84      0.01330744     2920.65      0.3621
    29  -109.99880198     0.01770502     3885.80      0.02473457     5428.61      0.6731
    30  -109.99880198     0.01770502     3885.80      0.02473457     5428.61      0.6731
    31  -109.99880194     0.01770506     3885.81      0.02473460     5428.62      0.6731
    32  -109.99880194     0.01770506     3885.81      0.02473460     5428.62      0.6731
    33  -109.99880194     0.01770506     3885.81      0.02473460     5428.62      0.6731
    34  -109.99880194     0.01770506     3885.81      0.02473460     5428.62      0.6731
    35  -109.99566147     0.02084553     4575.06      0.02787507     6117.87      0.7585
    36  -109.99566147     0.02084553     4575.06      0.02787507     6117.87      0.7585
    37  -109.99566147     0.02084553     4575.07      0.02787507     6117.87      0.7585
    38  -109.99566147     0.02084553     4575.07      0.02787507     6117.87      0.7585
    39  -109.99566145     0.02084555     4575.07      0.02787509     6117.87      0.7585
    40  -109.99566145     0.02084555     4575.07      0.02787509     6117.87      0.7585
    41  -109.99566144     0.02084556     4575.07      0.02787510     6117.88      0.7585
    42  -109.99566144     0.02084556     4575.07      0.02787510     6117.88      0.7585
    43  -109.99170997     0.02479703     5442.32      0.03182657     6985.13      0.8660
    44  -109.99170997     0.02479703     5442.32      0.03182657     6985.13      0.8660
    45  -109.99170996     0.02479704     5442.32      0.03182659     6985.13      0.8660
    46  -109.99170996     0.02479704     5442.32      0.03182659     6985.13      0.8660
    47  -109.98351741     0.03298959     7240.38      0.04001914     8783.19      1.0890
    48  -109.98351741     0.03298959     7240.38      0.04001914     8783.19      1.0890
    49  -109.98351729     0.03298971     7240.40      0.04001925     8783.21      1.0890
    50  -109.98351729     0.03298971     7240.40      0.04001925     8783.21      1.0890
    51  -109.98351727     0.03298973     7240.41      0.04001928     8783.22      1.0890
    52  -109.98351727     0.03298973     7240.41      0.04001928     8783.22      1.0890
    53  -109.97499484     0.04151216     9110.87      0.04854170    10653.67      1.3209
    54  -109.97499484     0.04151216     9110.87      0.04854170    10653.67      1.3209
    55  -109.97499462     0.04151238     9110.91      0.04854192    10653.72      1.3209
    56  -109.97499462     0.04151238     9110.91      0.04854192    10653.72      1.3209
    57  -109.97499462     0.04151238     9110.91      0.04854192    10653.72      1.3209
    58  -109.97499462     0.04151238     9110.91      0.04854192    10653.72      1.3209
    59  -109.97316951     0.04333749     9511.48      0.05036704    11054.29      1.3706
    60  -109.97316951     0.04333749     9511.48      0.05036704    11054.29      1.3706
    61  -109.97316950     0.04333750     9511.48      0.05036704    11054.29      1.3706
    62  -109.97316950     0.04333750     9511.48      0.05036704    11054.29      1.3706
    63  -109.97113849     0.04536851     9957.24      0.05239806    11500.04      1.4258
    64  -109.97113849     0.04536851     9957.24      0.05239806    11500.04      1.4258


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.007332194  -0.402688188  -0.340960199  -0.019824544  -0.114838276   0.008242512   0.317626377   0.004322808
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.030723797  -0.000559904  -0.000227337   0.003912637  -0.002469484  -0.034400335   0.000000192  -0.000047218
                         0.004011665  -0.000073064   0.000119429  -0.002054506  -0.000949684  -0.013231606   0.000133291  -0.009793758

    3    3.1  1.5  1.5   0.000000040   0.000003179  -0.000021160  -0.000000835  -0.000031071   0.000001932  -0.000015221  -0.000000666
                         0.005734674   0.314942404   0.373279257   0.021704424   0.058334376  -0.004186181   0.345733140   0.004705338

    4    4.1  1.5  1.5  -0.013492108   0.000245642  -0.006981845   0.120079682   0.000230669   0.003213292  -0.000228282   0.016773890
                         0.103132434  -0.001877302  -0.013526306   0.232625916  -0.000609248  -0.008500058  -0.000001585   0.000129443

    5    5.1  1.5  1.5   0.008993786   0.493941672   0.110902471   0.006449045  -0.136601100   0.009806828   0.321162765   0.004370944
                        -0.000000831  -0.000046175   0.000029330   0.000001312   0.000097468  -0.000006054   0.000004577   0.000000191

    6    6.1  1.5  1.5   0.000000696   0.000038132  -0.000040345  -0.000002704   0.000032767  -0.000001840   0.000008601   0.000000388
                         0.010349263   0.568389783   0.055274546   0.003213148   0.124592502  -0.008943803  -0.255526268  -0.003477650

    7    7.1  1.5  1.5  -0.001388441   0.000025292  -0.002950086   0.050737033  -0.011631029  -0.162052037  -0.001705558   0.125320784
                         0.010669251  -0.000194466  -0.005723133   0.098395963   0.030294236   0.421978733  -0.000004648   0.000340170

    8    8.1  1.5  1.5  -0.000000002  -0.000000108   0.000000021   0.000000001  -0.000000004   0.000000000   0.000000041   0.000000001
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000003   0.000000159   0.000000024   0.000000001   0.000000005  -0.000000000   0.000000028   0.000000000

   10   10.1  1.5  1.5   0.000000002  -0.000000000   0.000000001  -0.000000015   0.000000001   0.000000010  -0.000000000   0.000000018
                        -0.000000013   0.000000000   0.000000002  -0.000000028  -0.000000002  -0.000000027  -0.000000000   0.000000000

   11    1.1  1.5  0.5   0.012554794  -0.000228599   0.002446882  -0.042084919  -0.009506298  -0.132448355  -0.003005520   0.220837089
                        -0.096023334   0.001748464   0.004729118  -0.081354729   0.024760721   0.344911351  -0.000008238   0.000643371

   12    2.1  1.5  0.5   0.000000090   0.000006018  -0.000058481  -0.000003563   0.000088148  -0.000005224  -0.000011398  -0.000000494
                        -0.000108708  -0.005981135  -0.036717612  -0.002135289   0.184181359  -0.013222141   0.567090066   0.007717932

   13    3.1  1.5  0.5  -0.134418074   0.002447796   0.015868704  -0.272895746  -0.016298781  -0.227016581   0.000009222  -0.000652531
                        -0.017573173   0.000319985  -0.008190457   0.140866257  -0.006258478  -0.087198405  -0.003338394   0.245296118

   14    4.1  1.5  0.5  -0.001151988  -0.063269011   0.200836680   0.011679522  -0.396215426   0.028444113   0.392512725   0.005342015
                         0.000000023   0.000000964  -0.000049706  -0.000003981   0.000210717  -0.000012686   0.000012974   0.000000575

   15    5.1  1.5  0.5   0.016754336  -0.000305042   0.005150849  -0.088589961  -0.012237390  -0.170499511   0.000665897  -0.048926797
                        -0.128035906   0.002330876   0.009969398  -0.171487812   0.031879943   0.444083795   0.000002475  -0.000179884

   16    6.1  1.5  0.5   0.155944580  -0.002839170  -0.020646331   0.355056219   0.017322724   0.241276142   0.000001129  -0.000095918
                         0.020388281  -0.000371220   0.010656215  -0.183274292   0.006653929   0.092708073  -0.000732542   0.053823257

   17    7.1  1.5  0.5  -0.005345086  -0.293565045   0.550977114   0.032035997   0.242251228  -0.017388610  -0.070616828  -0.000961073
                         0.000001453   0.000079282  -0.000039384  -0.000002531  -0.000058472   0.000003768   0.000018385   0.000000824

   18    8.1  1.5  0.5  -0.000000004   0.000000000  -0.000000002   0.000000033   0.000000002   0.000000032   0.000000000  -0.000000014
                         0.000000030  -0.000000001  -0.000000004   0.000000065  -0.000000006  -0.000000084   0.000000000  -0.000000000

   19    9.1  1.5  0.5   0.000000047  -0.000000001  -0.000000005   0.000000081   0.000000002   0.000000034  -0.000000000   0.000000000
                         0.000000006  -0.000000000   0.000000002  -0.000000042   0.000000001   0.000000013  -0.000000000   0.000000003

   20   10.1  1.5  0.5   0.000000002   0.000000104  -0.000000045  -0.000000003  -0.000000006   0.000000000   0.000000010   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   21    1.1  1.5 -0.5  -0.001763344  -0.096840606   0.091595462   0.005324638   0.369467693  -0.026522875   0.220838025   0.003005531
                         0.000000419   0.000023455   0.000060213   0.000003946  -0.000175304   0.000010725  -0.000029116   0.000000122

   22    2.1  1.5 -0.5   0.005931624  -0.000107805   0.001898834  -0.032650350  -0.012343719  -0.171939637   0.000020973  -0.001565947
                         0.000768014  -0.000013978  -0.000976678   0.016797055  -0.004738949  -0.066026828  -0.007717904   0.567087904

   23    3.1  1.5 -0.5  -0.000000541  -0.000031217   0.000067331   0.000004644  -0.000136354   0.000007942   0.000029756   0.000000064
                        -0.002468622  -0.135561919   0.307108102   0.017857753  -0.243187316   0.017459059  -0.245296983  -0.003338406

   24    4.1  1.5 -0.5  -0.008188202   0.000149095  -0.005355974   0.092115978  -0.010196011  -0.142058213   0.005341995  -0.392511242
                         0.062736920  -0.001142299  -0.010379055   0.178465741   0.026553890   0.369873185   0.000014283  -0.001078789

   25    5.1  1.5 -0.5  -0.002350751  -0.129127453   0.193018782   0.011221414   0.475689460  -0.034147977  -0.048927109  -0.000665902
                         0.000000853   0.000045141   0.000019476   0.000001749  -0.000196062   0.000011787   0.000043795   0.000000623

   26    6.1  1.5 -0.5   0.000000700   0.000037045  -0.000089771  -0.000006187   0.000175252  -0.000010562   0.000053790   0.000000909
                         0.002863335   0.157271715  -0.399567738  -0.023234153   0.258474239  -0.018556709  -0.053823315  -0.000732543

   27    7.1  1.5 -0.5  -0.038067029   0.000693115  -0.014698463   0.252797951   0.006229359   0.086790527  -0.000961067   0.070616504
                         0.291086488  -0.005299957  -0.028465072   0.489559984  -0.016234496  -0.226170433  -0.000003497   0.000214803

   28    8.1  1.5 -0.5   0.000000001   0.000000031  -0.000000073  -0.000000004  -0.000000090   0.000000006  -0.000000014  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   29    9.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000001   0.000000047  -0.000000091  -0.000000005   0.000000037  -0.000000003  -0.000000003  -0.000000000

   30   10.1  1.5 -0.5   0.000000013  -0.000000000   0.000000001  -0.000000021  -0.000000000  -0.000000002   0.000000000  -0.000000010
                        -0.000000103   0.000000002   0.000000002  -0.000000040   0.000000000   0.000000006   0.000000000  -0.000000000

   31    1.1  1.5 -1.5   0.052109356  -0.000948813  -0.009097107   0.156460166   0.002951160   0.041116839  -0.004322791   0.317625149
                        -0.399302381   0.007270545  -0.017614062   0.302942361  -0.007696081  -0.107225161  -0.000012024   0.000883469

   32    2.1  1.5 -1.5   0.000000004  -0.000002161  -0.000029989  -0.000001792   0.000037688  -0.000002549   0.000074458   0.000000563
                        -0.000564651  -0.030984595   0.004419143   0.000256792   0.036857252  -0.002645797  -0.009793588  -0.000133290

   33    3.1  1.5 -1.5   0.312293954  -0.005686452   0.019283948  -0.331648061   0.003909353   0.054478268  -0.000012421   0.000946426
                         0.040757876  -0.000742128  -0.009960490   0.171309569   0.001497022   0.020857101   0.004705322  -0.345731845

   34    4.1  1.5 -1.5  -0.001893305  -0.104011225   0.261789884   0.015221928   0.009087044  -0.000651447  -0.016774186  -0.000228286
                         0.000000647   0.000032944  -0.000057095  -0.000003612   0.000043102  -0.000002759   0.000082785   0.000000950

   35    5.1  1.5 -1.5  -0.063963684   0.001164653   0.002960510  -0.050917099   0.003516901   0.048999835  -0.004370928   0.321161535
                         0.489782630  -0.008918059   0.005729359  -0.098523134  -0.009154524  -0.127510338  -0.000011967   0.000888728

   36    6.1  1.5 -1.5   0.563605821  -0.010262156   0.002853634  -0.049092796   0.008350222   0.116321007   0.000009285  -0.000702138
                         0.073589573  -0.001339923  -0.001476856   0.025400287   0.003203969   0.044639849  -0.003477638   0.255525304

   37    7.1  1.5 -1.5  -0.000196104  -0.010759213   0.110706852   0.006438730  -0.452025291   0.032450291  -0.125321245  -0.001705564
                        -0.000000086  -0.000003874  -0.000072302  -0.000005092   0.000223130  -0.000013373  -0.000008408  -0.000000096

   38    8.1  1.5 -1.5   0.000000014  -0.000000000   0.000000001  -0.000000010   0.000000000   0.000000002  -0.000000001   0.000000041
                        -0.000000107   0.000000002   0.000000001  -0.000000019  -0.000000000  -0.000000004  -0.000000000   0.000000000

   39    9.1  1.5 -1.5   0.000000158  -0.000000003   0.000000001  -0.000000022   0.000000000   0.000000005  -0.000000000   0.000000000
                         0.000000021  -0.000000000  -0.000000001   0.000000011   0.000000000   0.000000002   0.000000000  -0.000000028

   40   10.1  1.5 -1.5   0.000000000   0.000000014  -0.000000032  -0.000000002   0.000000029  -0.000000002  -0.000000018  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   41    1.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000001  -0.000000064   0.000000035   0.000000002   0.000000114  -0.000000008  -0.000000140  -0.000000002

   42    2.1  0.5  0.5   0.000000008  -0.000000000   0.000000003  -0.000000056   0.000000006   0.000000088   0.000000001  -0.000000083
                        -0.000000063   0.000000001   0.000000006  -0.000000108  -0.000000016  -0.000000228   0.000000000  -0.000000000

   43    3.1  0.5  0.5   0.000000064  -0.000000001  -0.000000003   0.000000056  -0.000000018  -0.000000255   0.000000000  -0.000000000
                         0.000000008  -0.000000000   0.000000002  -0.000000029  -0.000000007  -0.000000098  -0.000000002   0.000000140

   44    4.1  0.5  0.5  -0.000000001  -0.000000042  -0.000000119  -0.000000007   0.000000043  -0.000000003   0.000000108   0.000000001
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   45    5.1  0.5  0.5   0.000000098  -0.000000002  -0.000000011   0.000000188  -0.000000016  -0.000000221   0.000000000  -0.000000000
                         0.000000013  -0.000000000   0.000000006  -0.000000097  -0.000000006  -0.000000085  -0.000000001   0.000000089

   46    6.1  0.5  0.5  -0.000000003  -0.000000179  -0.000000028  -0.000000002  -0.000000130   0.000000009  -0.000000232  -0.000000003
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   47    7.1  0.5  0.5   0.000000022  -0.000000000   0.000000010  -0.000000168   0.000000004   0.000000059  -0.000000000   0.000000015
                        -0.000000172   0.000000003   0.000000019  -0.000000325  -0.000000011  -0.000000154   0.000000000  -0.000000000

   48    8.1  0.5  0.5   0.000000097  -0.000000002  -0.000000007   0.000000125  -0.000000030  -0.000000421   0.000000000  -0.000000000
                         0.000000013  -0.000000000   0.000000004  -0.000000065  -0.000000012  -0.000000162  -0.000000001   0.000000085

   49    9.1  0.5  0.5   0.000000003  -0.000000000   0.000000004  -0.000000066   0.000000003   0.000000038   0.000000001  -0.000000104
                        -0.000000022   0.000000000   0.000000007  -0.000000128  -0.000000007  -0.000000098   0.000000000  -0.000000000

   50   10.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000001  -0.000000073  -0.000000188  -0.000000011   0.000000176  -0.000000013  -0.000000247  -0.000000003

   51   11.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000002   0.000000115  -0.000000039  -0.000000002   0.000000167  -0.000000012  -0.000000154  -0.000000002

   52   12.1  0.5  0.5  -0.000000002  -0.000000124  -0.000000070  -0.000000004   0.000000104  -0.000000007   0.000000480   0.000000007
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   53    1.1  0.5 -0.5  -0.000000064   0.000000001   0.000000002  -0.000000031   0.000000008   0.000000107   0.000000000  -0.000000000
                        -0.000000008   0.000000000  -0.000000001   0.000000016   0.000000003   0.000000041  -0.000000002   0.000000140

   54    2.1  0.5 -0.5   0.000000001   0.000000064  -0.000000122  -0.000000007   0.000000245  -0.000000018   0.000000083   0.000000001
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   55    3.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000001  -0.000000065   0.000000063   0.000000004   0.000000273  -0.000000020   0.000000140   0.000000002

   56    4.1  0.5 -0.5   0.000000005  -0.000000000  -0.000000003   0.000000055  -0.000000001  -0.000000015  -0.000000001   0.000000108
                        -0.000000042   0.000000001  -0.000000006   0.000000106   0.000000003   0.000000040  -0.000000000   0.000000000

   57    5.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000002  -0.000000099   0.000000211   0.000000012   0.000000237  -0.000000017   0.000000089   0.000000001

   58    6.1  0.5 -0.5   0.000000023  -0.000000000  -0.000000001   0.000000013   0.000000003   0.000000047   0.000000003  -0.000000232
                        -0.000000177   0.000000003  -0.000000001   0.000000025  -0.000000009  -0.000000121   0.000000000  -0.000000001

   59    7.1  0.5 -0.5   0.000000003   0.000000173  -0.000000365  -0.000000021   0.000000166  -0.000000012  -0.000000015  -0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   60    8.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000002  -0.000000097   0.000000141   0.000000008   0.000000451  -0.000000032   0.000000085   0.000000001

   61    9.1  0.5 -0.5   0.000000000   0.000000023  -0.000000144  -0.000000008   0.000000105  -0.000000008   0.000000104   0.000000001
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   62   10.1  0.5 -0.5  -0.000000072   0.000000001  -0.000000010   0.000000167   0.000000012   0.000000165   0.000000000  -0.000000001
                        -0.000000009   0.000000000   0.000000005  -0.000000086   0.000000005   0.000000063  -0.000000003   0.000000247

   63   11.1  0.5 -0.5   0.000000114  -0.000000002  -0.000000002   0.000000035   0.000000011   0.000000156   0.000000000  -0.000000000
                         0.000000015  -0.000000000   0.000000001  -0.000000018   0.000000004   0.000000060  -0.000000002   0.000000154

   64   12.1  0.5 -0.5   0.000000016  -0.000000000  -0.000000002   0.000000032  -0.000000003  -0.000000037  -0.000000007   0.000000480
                        -0.000000123   0.000000002  -0.000000004   0.000000062   0.000000007   0.000000097  -0.000000000   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.049091776  -0.001578957  -0.006533807   0.025206054   0.005123010   0.307384010   0.280127488   0.003605320
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.013061628   0.406129925  -0.105358062  -0.027308715   0.017564916  -0.000292840  -0.001517879   0.117936861
                        -0.013996976   0.435193318   0.364507661   0.094486387   0.001118064  -0.000018656   0.001995086  -0.155015042

    3    3.1  1.5  1.5   0.000095599   0.000002772  -0.000007304   0.000027907   0.000001013   0.000060178  -0.000091636  -0.000001166
                         0.064078599   0.002061255  -0.003773491   0.014557294   0.006166948   0.370026812   0.016602667   0.000213691

    4    4.1  1.5  1.5  -0.012348062   0.383925528   0.380243814   0.098565457  -0.000534340   0.000008888  -0.001401938   0.108928221
                         0.011522384  -0.358265164   0.109871677   0.028478631   0.008867350  -0.000147587  -0.001065885   0.082817779

    5    5.1  1.5  1.5  -0.007605796  -0.000244147   0.005269791  -0.020329885   0.005793539   0.347620587   0.017159251   0.000220759
                        -0.000024764  -0.000000317   0.000002870  -0.000010149  -0.000001083  -0.000065019   0.000059137   0.000000877

    6    6.1  1.5  1.5  -0.000052793  -0.000001890   0.000008674  -0.000032415  -0.000001812  -0.000108246   0.000129388   0.000001757
                        -0.023378307  -0.000751700  -0.007762549   0.029946444  -0.005426718  -0.325615475   0.238389589   0.003068209

    7    7.1  1.5  1.5   0.001780882  -0.055371065   0.061024012   0.015818430  -0.002338592   0.000038968  -0.006156082   0.478317820
                        -0.001663444   0.051722860   0.017596128   0.004560857   0.036660674  -0.000610866  -0.004681747   0.363739829

    8    8.1  1.5  1.5   0.000000020   0.000000001  -0.000000002   0.000000006   0.000000004   0.000000263  -0.000000026  -0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    9    9.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000005   0.000000000  -0.000000006   0.000000022   0.000000005   0.000000301   0.000000026   0.000000000

   10   10.1  1.5  1.5   0.000000000  -0.000000002  -0.000000022  -0.000000006   0.000000005  -0.000000000  -0.000000002   0.000000131
                        -0.000000000   0.000000002  -0.000000006  -0.000000002  -0.000000089   0.000000001  -0.000000001   0.000000100

   11    1.1  1.5  0.5  -0.007972954   0.247894649  -0.386186820  -0.100105998   0.018901176  -0.000314998   0.000203229  -0.015790535
                         0.007438634  -0.231290845  -0.111579786  -0.028921252  -0.314706747   0.005244803   0.000155382  -0.012071033

   12    2.1  1.5  0.5   0.000077290   0.000002202   0.000007782  -0.000028263  -0.000002315  -0.000138683   0.000139322   0.000001997
                        -0.002166637  -0.000069420  -0.018173066   0.070108135  -0.004784718  -0.287096256   0.392928713   0.005057255

   13    3.1  1.5  0.5   0.007455360  -0.231819709  -0.097234839  -0.025203287   0.270382439  -0.004506426   0.000612426  -0.047590474
                         0.007986945  -0.248329561   0.336443166   0.087211594   0.016268616  -0.000271156  -0.000807013   0.062703446

   14    4.1  1.5  0.5   0.043883201   0.001411579   0.017360466  -0.066973165  -0.003912067  -0.234723669  -0.437321286  -0.005628544
                        -0.000072075  -0.000002133   0.000000826  -0.000002279  -0.000000853  -0.000051394   0.000035295   0.000000583

   15    5.1  1.5  0.5   0.005359547  -0.166638928   0.353546804   0.091645167  -0.016530204   0.000275480   0.001894370  -0.147189465
                        -0.005001632   0.155509958   0.102171313   0.026482597   0.275870470  -0.004597624   0.001440142  -0.111900487

   16    6.1  1.5  0.5   0.004981542  -0.154890518  -0.114080973  -0.029569814   0.341983264  -0.005699702  -0.001075170   0.083534150
                         0.005339215  -0.166006870   0.394643572   0.102298095   0.020618486  -0.000343660   0.001411353  -0.109659955

   17    7.1  1.5  0.5   0.142234532   0.004574316  -0.000761187   0.002936500   0.000557731   0.033466390  -0.078915766  -0.001015649
                        -0.000119425  -0.000004204   0.000003141  -0.000012132  -0.000000323  -0.000019100   0.000035612   0.000000433

   18    8.1  1.5  0.5  -0.000000000   0.000000003   0.000000010   0.000000003  -0.000000003   0.000000000   0.000000000  -0.000000008
                         0.000000000  -0.000000003   0.000000003   0.000000001   0.000000051  -0.000000001   0.000000000  -0.000000006

   19    9.1  1.5  0.5   0.000000001  -0.000000024  -0.000000002  -0.000000001  -0.000000080   0.000000001   0.000000000  -0.000000027
                         0.000000001  -0.000000026   0.000000007   0.000000002  -0.000000005   0.000000000  -0.000000000   0.000000035

   20   10.1  1.5  0.5   0.000000039   0.000000001  -0.000000025   0.000000095   0.000000000   0.000000012  -0.000000051  -0.000000001
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   21    1.1  1.5 -0.5   0.339038435   0.010904178  -0.104200046   0.401982968  -0.005254253  -0.315273834   0.019875812   0.000255822
                        -0.000388348  -0.000012708   0.000009319  -0.000043623   0.000000566   0.000034169  -0.000054349  -0.000000719

   22    2.1  1.5 -0.5   0.000049024  -0.001536337   0.019425693   0.005034989   0.286573416  -0.004776004  -0.003061967   0.237890098
                         0.000049199  -0.001529691  -0.067363150  -0.017461652   0.017319258  -0.000288644   0.004024946  -0.312731985

   23    3.1  1.5 -0.5   0.000299131   0.000010048  -0.000015142   0.000064269   0.000000990   0.000058848  -0.000057258  -0.000000799
                         0.339717323   0.010925822  -0.090780326   0.350212241   0.004514576   0.270871423   0.078718309   0.001013081

   24    4.1  1.5 -0.5   0.001032456  -0.032100966  -0.064344066  -0.016679029  -0.013995368   0.000233260   0.004480614  -0.348136513
                        -0.000962597   0.029921038  -0.018580797  -0.004816200   0.234306067  -0.003905107   0.003406555  -0.264671262

   25    5.1  1.5 -0.5  -0.227929425  -0.007330826   0.095394782  -0.368014016   0.004605870   0.276365273   0.184895801   0.002379631
                         0.000237400   0.000007620  -0.000014038   0.000061177   0.000000151   0.000008458  -0.000014519  -0.000000148

   26    6.1  1.5 -0.5   0.000258115   0.000008406  -0.000024177   0.000100115   0.000001954   0.000116083  -0.000142492  -0.000001884
                         0.227044680   0.007302254  -0.106486025   0.410801664   0.005710052   0.342604234  -0.137852239  -0.001774233

   27    7.1  1.5 -0.5   0.003343894  -0.103967878   0.002817830   0.000730427   0.002021809  -0.000033699   0.000808311  -0.062804445
                        -0.003121339   0.097063673   0.000826444   0.000214223  -0.033405268   0.000556712   0.000614960  -0.047783900

   28    8.1  1.5 -0.5   0.000000005   0.000000000   0.000000003  -0.000000010   0.000000001   0.000000051   0.000000009   0.000000000
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   29    9.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000036   0.000000001  -0.000000002   0.000000008  -0.000000001  -0.000000080   0.000000044   0.000000001

   30   10.1  1.5 -0.5   0.000000001  -0.000000029   0.000000091   0.000000024   0.000000001  -0.000000000   0.000000001  -0.000000041
                        -0.000000001   0.000000027   0.000000026   0.000000007  -0.000000012   0.000000000   0.000000000  -0.000000031

   31    1.1  1.5 -1.5   0.001153250  -0.035856013  -0.024216327  -0.006277254  -0.018394914   0.000306578   0.002870248  -0.223013590
                        -0.001078480   0.033531310  -0.006993902  -0.001812930   0.306833108  -0.005113829   0.002181744  -0.169517989

   32    2.1  1.5 -1.5   0.000619289   0.000020350   0.000019368  -0.000081497  -0.000001098  -0.000064917   0.000084550   0.000001088
                         0.595259907   0.019144739   0.098353663  -0.379428715  -0.000293431  -0.017600344   0.194778744   0.002506856

   33    3.1  1.5 -1.5   0.001405881  -0.043697983  -0.004066010  -0.001054045   0.369360040  -0.006155835   0.000128386  -0.009974082
                         0.001507408  -0.046867498   0.013977952   0.003623297   0.022203744  -0.000370062  -0.000170829   0.013273079

   34    4.1  1.5 -1.5  -0.525121342  -0.016889039  -0.102597181   0.395799369  -0.000147855  -0.008883434   0.136836186   0.001761119
                         0.000561507   0.000018332   0.000011530  -0.000051586   0.000000040   0.000002729  -0.000014984  -0.000000190

   35    5.1  1.5 -1.5   0.000178105  -0.005538262   0.019534438   0.005063666  -0.020867711   0.000347787   0.000176280  -0.013696517
                        -0.000166992   0.005213098   0.005631166   0.001459448   0.346993682  -0.005783091   0.000132893  -0.010336770

   36    6.1  1.5 -1.5  -0.000512056   0.015929599  -0.008278073  -0.002145535  -0.325025421   0.005416884   0.001858113  -0.144363479
                        -0.000550323   0.017111280   0.028779577   0.007460156  -0.019593999   0.000326562  -0.002441583   0.189707139

   37    7.1  1.5 -1.5   0.075770755   0.002436922  -0.016462809   0.063510259  -0.000612103  -0.036734919   0.600911461   0.007734086
                        -0.000042549  -0.000001443  -0.000007353   0.000027074   0.000002342   0.000140501  -0.000126552  -0.000001880

   38    8.1  1.5 -1.5  -0.000000000   0.000000015  -0.000000006  -0.000000001  -0.000000016   0.000000000  -0.000000000   0.000000020
                         0.000000000  -0.000000014  -0.000000002  -0.000000000   0.000000262  -0.000000004  -0.000000000   0.000000016

   39    9.1  1.5 -1.5   0.000000000  -0.000000003  -0.000000006  -0.000000002   0.000000300  -0.000000005   0.000000000  -0.000000015
                         0.000000000  -0.000000003   0.000000021   0.000000006   0.000000018  -0.000000000  -0.000000000   0.000000020

   40   10.1  1.5 -1.5   0.000000002   0.000000000   0.000000006  -0.000000023   0.000000001   0.000000089   0.000000165   0.000000002
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   41    1.1  0.5  0.5   0.000000000   0.000000000   0.000001044  -0.000004034  -0.000000105  -0.000006203   0.000011753   0.000000142
                         0.000000031   0.000000001   0.002553440  -0.009850634  -0.001958909  -0.117536521  -0.071360742  -0.000918440

   42    2.1  0.5  0.5  -0.000000004   0.000000110  -0.077023709  -0.019965812  -0.001481194   0.000024691   0.000481670  -0.037425022
                         0.000000003  -0.000000102  -0.022258847  -0.005769478   0.024748189  -0.000412496   0.000366099  -0.028442262

   43    3.1  0.5  0.5  -0.000000002   0.000000072  -0.016165034  -0.004189948  -0.024131421   0.000402132   0.000933057  -0.072493495
                        -0.000000002   0.000000078   0.055972072   0.014508884  -0.001473555   0.000024556  -0.001226828   0.095322582

   44    4.1  0.5  0.5   0.000000011   0.000000000  -0.000447840   0.001727678  -0.000083964  -0.005039019   0.056473774   0.000726829
                        -0.000000000  -0.000000000  -0.000001492   0.000005720   0.000000189   0.000011239  -0.000018127  -0.000000228

   45    5.1  0.5  0.5   0.000000006  -0.000000177  -0.031404452  -0.008139989  -0.041843519   0.000697342  -0.000511349   0.039730075
                         0.000000006  -0.000000190   0.108662451   0.028167099  -0.002494952   0.000041576   0.000672413  -0.052245431

   46    6.1  0.5  0.5   0.000000013   0.000000000  -0.002933302   0.011316124  -0.002087968  -0.125282140   0.055230622   0.000710865
                         0.000000000   0.000000000  -0.000002321   0.000008552   0.000000588   0.000035209  -0.000038116  -0.000000533

   47    7.1  0.5  0.5   0.000000010  -0.000000301   0.093828498   0.024321889   0.002740983  -0.000045687   0.000497813  -0.038679297
                        -0.000000009   0.000000281   0.027120411   0.007029606  -0.045281121   0.000754698   0.000378849  -0.029432767

   48    8.1  0.5  0.5  -0.000000001   0.000000026   0.000000049   0.000000013   0.000000085  -0.000000001   0.000000002  -0.000000171
                        -0.000000001   0.000000028  -0.000000171  -0.000000044   0.000000005  -0.000000000  -0.000000003   0.000000225

   49    9.1  0.5  0.5  -0.000000002   0.000000075  -0.000000176  -0.000000046  -0.000000010   0.000000000   0.000000002  -0.000000126
                         0.000000002  -0.000000070  -0.000000051  -0.000000013   0.000000164  -0.000000003   0.000000001  -0.000000096

   50   10.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000104  -0.000000003   0.000000025  -0.000000097  -0.000000005  -0.000000271  -0.000000310  -0.000000004

   51   11.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000039   0.000000001  -0.000000069   0.000000265  -0.000000005  -0.000000279  -0.000000033  -0.000000000

   52   12.1  0.5  0.5   0.000000049   0.000000002  -0.000000036   0.000000138   0.000000012   0.000000732  -0.000000234  -0.000000003
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   53    1.1  0.5 -0.5   0.000000001  -0.000000021   0.002737123   0.000709503  -0.117325498   0.001955391  -0.000555677   0.043174300
                         0.000000001  -0.000000023  -0.009462725  -0.002452888  -0.007039980   0.000117333   0.000731269  -0.056818443

   54    2.1  0.5 -0.5  -0.000000150  -0.000000005   0.020782698  -0.080175482  -0.000413234  -0.024792475  -0.047006324  -0.000605008
                         0.000000000   0.000000000  -0.000003039   0.000013140  -0.000000038  -0.000002477  -0.000004296  -0.000000024

   55    3.1  0.5 -0.5   0.000000000   0.000000000  -0.000000340   0.000000217   0.000000447   0.000026807  -0.000029067  -0.000000410
                         0.000000106   0.000000003   0.015101767  -0.058259602   0.000402881   0.024176355  -0.119756840  -0.001541331

   56    4.1  0.5 -0.5  -0.000000000   0.000000008  -0.001661427  -0.000430669   0.000312771  -0.000005214   0.000578502  -0.044948628
                         0.000000000  -0.000000007  -0.000473882  -0.000122829  -0.005029315   0.000083802   0.000440019  -0.034189302

   57    5.1  0.5 -0.5  -0.000000000  -0.000000000   0.000004868  -0.000020863  -0.000000229  -0.000013580   0.000013588   0.000000185
                        -0.000000260  -0.000000008   0.029319701  -0.113109537   0.000698581   0.041917832   0.065635842   0.000844759

   58    6.1  0.5 -0.5  -0.000000000   0.000000010  -0.010874164  -0.002818769   0.007532459  -0.000125538   0.000565608  -0.043946840
                         0.000000000  -0.000000009  -0.003131659  -0.000811671  -0.125055499   0.002084191   0.000430602  -0.033452926

   59    7.1  0.5 -0.5   0.000000411   0.000000013  -0.025317378   0.097669357   0.000756080   0.045363997  -0.048604270  -0.000625575
                        -0.000000000  -0.000000000   0.000005011  -0.000021002  -0.000000441  -0.000026293   0.000025240   0.000000358

   60    8.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000038   0.000000001  -0.000000046   0.000000178  -0.000000001  -0.000000085  -0.000000283  -0.000000004

   61    9.1  0.5 -0.5  -0.000000103  -0.000000003   0.000000048  -0.000000183  -0.000000003  -0.000000164  -0.000000159  -0.000000002
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   62   10.1  0.5 -0.5  -0.000000002   0.000000071   0.000000027   0.000000007  -0.000000270   0.000000005  -0.000000002   0.000000187
                        -0.000000002   0.000000076  -0.000000094  -0.000000024  -0.000000016   0.000000000   0.000000003  -0.000000247

   63   11.1  0.5 -0.5   0.000000001  -0.000000027  -0.000000073  -0.000000019  -0.000000279   0.000000005  -0.000000000   0.000000020
                         0.000000001  -0.000000029   0.000000254   0.000000066  -0.000000017   0.000000000   0.000000000  -0.000000026

   64   12.1  0.5 -0.5  -0.000000001   0.000000036  -0.000000133  -0.000000034  -0.000000044   0.000000001  -0.000000002   0.000000186
                         0.000000001  -0.000000033  -0.000000038  -0.000000010   0.000000730  -0.000000012  -0.000000002   0.000000142


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.207403302   0.002388294   0.006758351  -0.180357947   0.005414898  -0.317404094  -0.228318741  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.002608834   0.226548737   0.010342267   0.000387460  -0.135709286  -0.002315085  -0.000000083  -0.009784644
                         0.002079479   0.180585616   0.043360853   0.001624814  -0.421170220  -0.007185145   0.000000003   0.016204080

    3    3.1  1.5  1.5  -0.000030949   0.000000461   0.000000284  -0.000004423  -0.000000171   0.000001932   0.000000813   0.000000087
                         0.352853913  -0.004063308   0.009455607  -0.252339425  -0.004962371   0.290880786  -0.216426596   0.000000056

    4    4.1  1.5  1.5  -0.002172443  -0.188658805  -0.032880092  -0.001232081   0.422041417   0.007200008  -0.000000002   0.023859806
                         0.002725738   0.236700849   0.007841585   0.000293756  -0.135990038  -0.002319885  -0.000000071   0.014408830

    5    5.1  1.5  1.5  -0.348441860   0.004012473   0.002593993  -0.069224896   0.005201461  -0.304894894   0.305553074  -0.000000081
                        -0.000017821   0.000000277  -0.000000050   0.000001645  -0.000000112   0.000000284  -0.000001696   0.000000120

    6    6.1  1.5  1.5   0.000010097  -0.000000139  -0.000000283   0.000005170   0.000000044  -0.000001369  -0.000002189   0.000000034
                        -0.184105148   0.002120030  -0.003776973   0.100795296   0.004707486  -0.275938246  -0.308301041   0.000000025

    7    7.1  1.5  1.5   0.002166477   0.188140496   0.108135902   0.004052053  -0.011961484  -0.000204066   0.000000007   0.405997601
                        -0.002718765  -0.236079559  -0.025800767  -0.000966784   0.003853870   0.000065641   0.000000132   0.245170710

    8    8.1  1.5  1.5   0.000000014  -0.000000000   0.001206242  -0.032190647   0.000235653  -0.013813239   0.008192261  -0.000000004
                        -0.000000000   0.000000000  -0.000000029   0.000000539   0.000000003  -0.000000133  -0.000000242   0.000000005

    9    9.1  1.5  1.5  -0.000000000  -0.000000000   0.000000038  -0.000000681  -0.000000009   0.000000199   0.000000262  -0.000000002
                        -0.000000089   0.000000001   0.001287692  -0.034364298  -0.000132421   0.007762215   0.007269431  -0.000000001

   10   10.1  1.5  1.5   0.000000001   0.000000059  -0.006568544  -0.000246136  -0.001864300  -0.000031805  -0.000000000  -0.025575955
                        -0.000000001  -0.000000074   0.001567248   0.000058727   0.000600736   0.000010255  -0.000000008  -0.015444615

   11    1.1  1.5  0.5   0.001797204   0.156072684   0.279593953   0.010476918   0.066304310   0.001131150  -0.000000009  -0.300681792
                        -0.002255144  -0.195831852  -0.066699828  -0.002499269  -0.021366299  -0.000364475  -0.000000124  -0.181576213

   12    2.1  1.5  0.5  -0.000021059   0.000000336  -0.000000414   0.000007755   0.000000034  -0.000001873  -0.000003532   0.000000077
                         0.183648373  -0.002114870  -0.013268720   0.354098635  -0.000413384   0.024231151  -0.268473269   0.000000056

   13    3.1  1.5  0.5  -0.002534383  -0.220083767   0.057651410   0.002160200  -0.016373413  -0.000279345   0.000000105   0.191015810
                        -0.002019979  -0.175418308   0.241668935   0.009055796  -0.050819083  -0.000866970  -0.000000008  -0.316313897

   14    4.1  1.5  0.5  -0.151261800   0.001741946  -0.016332964   0.435873271  -0.000140766   0.008249821   0.086610821  -0.000000000
                        -0.000028806   0.000000442   0.000000397  -0.000006920  -0.000000117   0.000002164   0.000002468   0.000000006

   15    5.1  1.5  0.5   0.001660387   0.144190683  -0.388676356  -0.014564437   0.009934909   0.000169491   0.000000000  -0.182161767
                        -0.002082910  -0.180879625   0.092726648   0.003474516  -0.003199189  -0.000054474  -0.000000046  -0.109999761

   16    6.1  1.5  0.5   0.001741690   0.151245336   0.097817647   0.003665294   0.031288629   0.000533857  -0.000000011  -0.084476925
                         0.001388233   0.120556889   0.410015214   0.015364045   0.097096507   0.001656460  -0.000000002   0.139896805

   17    7.1  1.5  0.5   0.293865885  -0.003384003   0.000113497  -0.003028495   0.006799280  -0.398553645   0.008449930  -0.000000041
                         0.000018214  -0.000000273   0.000000133  -0.000001924  -0.000000102   0.000001002   0.000000129   0.000000062

   18    8.1  1.5  0.5   0.000000000   0.000000010   0.007521360   0.000281839  -0.016167266  -0.000275813   0.000000000   0.022833932
                        -0.000000000  -0.000000012  -0.001794438  -0.000067237   0.005209390   0.000088862   0.000000010   0.013788759

   19    9.1  1.5  0.5   0.000000001   0.000000045   0.000921112   0.000034519   0.006250079   0.000106627  -0.000000003  -0.012962533
                         0.000000000   0.000000036   0.003859867   0.000144636   0.019396895   0.000330910   0.000000000   0.021465642

   20   10.1  1.5  0.5   0.000000037  -0.000000000  -0.000141060   0.003764477   0.000637487  -0.037367600   0.001598476  -0.000000004
                        -0.000000000  -0.000000000   0.000000016  -0.000000245  -0.000000011   0.000000114   0.000000035   0.000000006

   21    1.1  1.5 -0.5  -0.250417245   0.002883681   0.010770894  -0.287439812   0.001188420  -0.069661899   0.351254126  -0.000000072
                        -0.000028352   0.000000392  -0.000000357   0.000006913  -0.000000007  -0.000001456  -0.000003447   0.000000102

   22    2.1  1.5 -0.5  -0.001653935  -0.143617277  -0.082168614  -0.003078887  -0.007433341  -0.000126815  -0.000000095  -0.138784503
                        -0.001318019  -0.114458741  -0.344433103  -0.012906563  -0.023062830  -0.000393452   0.000000008   0.229818968

   23    3.1  1.5 -0.5   0.000018176  -0.000000254  -0.000000367   0.000006987   0.000000012  -0.000001581  -0.000003331   0.000000086
                        -0.281439953   0.003240896  -0.009309883   0.248450315   0.000910862  -0.053391646  -0.369515251   0.000000061

   24    4.1  1.5 -0.5  -0.001085477  -0.094264866   0.423974996   0.015887146   0.007851582   0.000133946  -0.000000003   0.074142615
                         0.001362393   0.118297370  -0.101146978  -0.003790027  -0.002532234  -0.000043283   0.000000005   0.044769488

   25    5.1  1.5 -0.5  -0.231318810   0.002663719  -0.014973146   0.399584210   0.000178030  -0.010437300   0.212797690  -0.000000023
                         0.000000804   0.000000017   0.000000332  -0.000005561  -0.000000134   0.000001967   0.000001665   0.000000039

   26    6.1  1.5 -0.5  -0.000007469   0.000000132  -0.000000328   0.000005690   0.000000102  -0.000001815  -0.000001980  -0.000000010
                         0.193414361  -0.002227258  -0.015795197   0.421521966  -0.001740363   0.102013284   0.163424193  -0.000000004

   27    7.1  1.5 -0.5   0.002109168   0.183163848  -0.002945367  -0.000110368  -0.379346872  -0.006471641   0.000000003   0.007233449
                        -0.002646297  -0.229800269   0.000704699   0.000026469   0.122233213   0.002085203   0.000000075   0.004367899

   28    8.1  1.5 -0.5  -0.000000016   0.000000000   0.000289749  -0.007732455  -0.000289775   0.016985825  -0.026674301   0.000000006
                         0.000000000  -0.000000000  -0.000000006   0.000000045   0.000000011  -0.000000070   0.000000062  -0.000000009

   29    9.1  1.5 -0.5  -0.000000000   0.000000000   0.000000010  -0.000000200  -0.000000000   0.000000044   0.000000097  -0.000000003
                         0.000000058  -0.000000001  -0.000148698   0.003968252  -0.000347665   0.020378985   0.025075906  -0.000000002

   30   10.1  1.5 -0.5   0.000000000   0.000000023   0.003661759   0.000137213  -0.035566818  -0.000606768   0.000000000   0.001368359
                        -0.000000000  -0.000000029  -0.000873389  -0.000032720   0.011460325   0.000195503   0.000000007   0.000826268

   31    1.1  1.5 -1.5   0.001488717   0.129282584   0.175433951   0.006573840   0.302107770   0.005153943  -0.000000000   0.195447369
                        -0.001867530  -0.162179356  -0.041855917  -0.001568420  -0.097346055  -0.001660719  -0.000000000   0.118024460

   32    2.1  1.5 -1.5   0.000007460  -0.000000136   0.000000191  -0.000002902  -0.000000127   0.000001353   0.000000415   0.000000070
                        -0.289716232   0.003336202   0.001670373  -0.044577193  -0.007548903   0.442494480  -0.018929117   0.000000045

   33    3.1  1.5 -1.5   0.003177598   0.275933994  -0.058556455  -0.002194099   0.089209667   0.001521769   0.000000104   0.111876376
                         0.002532459   0.219923432  -0.245451272  -0.009197523   0.276863265   0.004723277  -0.000000003  -0.185267774

   34    4.1  1.5 -1.5  -0.302687027   0.003485564   0.001266616  -0.033802233  -0.007564521   0.443409797   0.027873011   0.000000038
                        -0.000022825   0.000000314  -0.000000195   0.000003028   0.000000117  -0.000001323  -0.000000557  -0.000000060

   35    5.1  1.5 -1.5   0.002500914   0.217183493   0.067335353   0.002523185   0.290201499   0.004950826  -0.000000008  -0.261561290
                        -0.003137733  -0.272475798  -0.016063517  -0.000601943  -0.093509283  -0.001595152  -0.000000145  -0.157950538

   36    6.1  1.5 -1.5  -0.001657848  -0.143967619   0.023386674   0.000876252  -0.084627409  -0.001443718   0.000000042   0.159371463
                        -0.001321389  -0.114752038   0.098044659   0.003673923  -0.262640662  -0.004480636  -0.000000004  -0.263913374

   37    7.1  1.5 -1.5   0.301878126  -0.003476392  -0.004165789   0.111171277   0.000214363  -0.012566997   0.474281276  -0.000000074
                         0.000040842  -0.000000632  -0.000000024   0.000001126  -0.000000108   0.000000376  -0.000001413   0.000000110

   38    8.1  1.5 -1.5  -0.000000000  -0.000000009   0.031311927   0.001173317   0.013147512   0.000224296  -0.000000001  -0.007012685
                         0.000000000   0.000000011  -0.007470003  -0.000279906  -0.004236570  -0.000072276  -0.000000006  -0.004235020

   39    9.1  1.5 -1.5  -0.000000001  -0.000000070  -0.007974307  -0.000298799   0.002380439   0.000040604  -0.000000002  -0.003758000
                        -0.000000001  -0.000000055  -0.033426268  -0.001252546   0.007388200   0.000126042   0.000000000   0.006222705

   40   10.1  1.5 -1.5   0.000000095  -0.000000001   0.000253045  -0.006752928   0.000033417  -0.001958698  -0.029877510   0.000000004
                         0.000000000  -0.000000000   0.000000003  -0.000000089   0.000000006  -0.000000015   0.000000092  -0.000000007

   41    1.1  0.5  0.5   0.000006157  -0.000000092  -0.000000015   0.000000217   0.000000012  -0.000000114  -0.000000013  -0.000000007
                        -0.027070648   0.000311749  -0.001051901   0.028071786  -0.000075643   0.004433807   0.037477126  -0.000000005

   42    2.1  0.5  0.5  -0.000719943  -0.062521113  -0.031755101  -0.001189924   0.027232452   0.000464585  -0.000000000  -0.015482769
                         0.000903335   0.078442489   0.007575684   0.000283860  -0.008774677  -0.000149681  -0.000000009  -0.009349382

   43    3.1  0.5  0.5  -0.000311529  -0.027055009  -0.003017514  -0.000113061   0.011139641   0.000190036  -0.000000002  -0.013911621
                        -0.000248357  -0.021567773  -0.012650066  -0.000474022   0.034571785   0.000589793   0.000000000   0.023037076

   44    4.1  0.5  0.5  -0.128560059   0.001480425  -0.000177350   0.004732920   0.000797742  -0.046761270   0.001886720  -0.000000005
                        -0.000007082   0.000000106   0.000000020  -0.000000308  -0.000000013   0.000000143   0.000000045   0.000000007

   45    5.1  0.5  0.5   0.000047981   0.004167882  -0.010158134  -0.000380632  -0.005230814  -0.000089240  -0.000000005  -0.000952727
                         0.000038325   0.003328169  -0.042579510  -0.001595535  -0.016232937  -0.000276933   0.000000001   0.001577150

   46    6.1  0.5  0.5   0.029336226  -0.000337828  -0.000343311   0.009161850   0.000015910  -0.000932494  -0.046135812   0.000000008
                         0.000001819  -0.000000032   0.000000023  -0.000000466   0.000000005   0.000000071   0.000000270  -0.000000011

   47    7.1  0.5  0.5  -0.000514843  -0.044709802   0.032429138   0.001215181   0.021847239   0.000372713  -0.000000001  -0.020494708
                         0.000646023   0.056098672  -0.007736474  -0.000289892  -0.007039811  -0.000120095  -0.000000012  -0.012376474

   48    8.1  0.5  0.5   0.000000000   0.000000033  -0.011085104  -0.000415354   0.032188580   0.000549075   0.000000064   0.085204465
                         0.000000000   0.000000026  -0.046463059  -0.001741058   0.099896788   0.001704236  -0.000000003  -0.141097031

   49    9.1  0.5  0.5  -0.000000003  -0.000000254   0.023839515   0.000893310   0.119850444   0.002044642   0.000000001   0.132642144
                         0.000000004   0.000000319  -0.005689022  -0.000213197  -0.038618278  -0.000658830   0.000000020   0.080099080

   50   10.1  0.5  0.5  -0.000000000   0.000000000  -0.000000185   0.000003470   0.000000014  -0.000000831  -0.000001591   0.000000036
                        -0.000000181   0.000000002  -0.005974296   0.159434361  -0.000272503   0.015973240  -0.121496656   0.000000026

   51   11.1  0.5  0.5  -0.000000000   0.000000000   0.000000091  -0.000001399  -0.000000058   0.000000632   0.000000228   0.000000031
                         0.000000297  -0.000000003   0.000905451  -0.024163707  -0.003405788   0.199637257  -0.005499812   0.000000020

   52   12.1  0.5  0.5  -0.000000169   0.000000002   0.007350598  -0.196163348   0.000365669  -0.021433783  -0.038576524  -0.000000002
                         0.000000000  -0.000000000  -0.000000173   0.000003027   0.000000048  -0.000000929  -0.000001104   0.000000000

   53    1.1  0.5 -0.5  -0.000243830  -0.021171776   0.006514447   0.000244101   0.001359932   0.000023211  -0.000000009  -0.019372983
                        -0.000194253  -0.016869378   0.027305441   0.001023186   0.004220098   0.000071994   0.000000000   0.032081498

   54    2.1  0.5 -0.5  -0.100310087   0.001155133   0.001223313  -0.032646247  -0.000488102   0.028611211  -0.018086655   0.000000005
                        -0.000007781   0.000000123  -0.000000037   0.000000591   0.000000018  -0.000000232  -0.000000146  -0.000000008

   55    3.1  0.5 -0.5   0.000000511  -0.000000014  -0.000000033   0.000000586   0.000000008  -0.000000172  -0.000000224   0.000000001
                         0.034599745  -0.000398411  -0.000487319   0.013004982   0.000619653  -0.036322168  -0.026911708   0.000000001

   56    4.1  0.5 -0.5   0.000922724   0.080130971  -0.004603777  -0.000172512   0.044507797   0.000759301  -0.000000000  -0.001615110
                        -0.001157686  -0.100532166   0.001098076   0.000041138  -0.014341283  -0.000244650  -0.000000009  -0.000975261

   57    5.1  0.5 -0.5  -0.000004464   0.000000060  -0.000000037   0.000000682   0.000000006  -0.000000181  -0.000000288   0.000000004
                        -0.005333660   0.000061408  -0.001640309   0.043774448  -0.000290957   0.017054901  -0.001842577   0.000000003

   58    6.1  0.5 -0.5  -0.000210557  -0.018284994  -0.008911828  -0.000333944   0.000887577   0.000015142   0.000000001   0.039493435
                         0.000264185   0.022940644   0.002125750   0.000079651  -0.000285923  -0.000004885   0.000000013   0.023849146

   59    7.1  0.5 -0.5  -0.071735816   0.000826081  -0.001249281   0.033339197  -0.000391584   0.022953448  -0.023941808   0.000000007
                        -0.000007591   0.000000109   0.000000031  -0.000000616   0.000000002   0.000000123   0.000000317  -0.000000010

   60    8.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000035   0.000000279   0.000000066  -0.000000435   0.000000384  -0.000000053
                        -0.000000042   0.000000000  -0.001789916   0.047767095   0.001790504  -0.104954623   0.164827707  -0.000000035

   61    9.1  0.5 -0.5  -0.000000407   0.000000005  -0.000918398   0.024508926  -0.002148166   0.125918625   0.154950964  -0.000000012
                        -0.000000000   0.000000000  -0.000000064   0.000001235   0.000000001  -0.000000271  -0.000000600   0.000000017

   62   10.1  0.5 -0.5  -0.000000002  -0.000000141   0.036996776   0.001386283   0.004899694   0.000083588   0.000000044   0.062806444
                        -0.000000001  -0.000000113   0.155082410   0.005811233   0.015203204   0.000259366  -0.000000004  -0.104003789

   63   11.1  0.5 -0.5   0.000000003   0.000000232  -0.005606344  -0.000210041   0.061227025   0.001044481   0.000000037   0.002842815
                         0.000000002   0.000000185  -0.023504332  -0.000880752   0.190016541   0.003241674  -0.000000001  -0.004708114

   64   12.1  0.5 -0.5   0.000000001   0.000000105   0.190808548   0.007149957   0.020400562   0.000348032  -0.000000001   0.033023178
                        -0.000000002  -0.000000132  -0.045520954  -0.001705695  -0.006574505  -0.000112194  -0.000000001   0.019940359


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.370558331   0.001757733   0.111349762   0.001905322  -0.000000000   0.047790963   0.074255352  -0.000856491
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000167158  -0.035280473   0.001046229  -0.061105419  -0.002039011  -0.000000008   0.001013840   0.087885624
                         0.000005928  -0.001251541   0.005779663  -0.337770067   0.000028728   0.000000001   0.000466427   0.040436928

    3    3.1  1.5  1.5  -0.000000374   0.000000000   0.000001234   0.000000564  -0.000000001  -0.000000389   0.000009568  -0.000000172
                         0.294747701   0.001398295  -0.198413039  -0.003395199   0.000000011   0.036263373  -0.058187729   0.000671332

    4    4.1  1.5  1.5  -0.000008439   0.001780829  -0.005725476   0.334603324  -0.000171494  -0.000000000  -0.000467561  -0.040535291
                         0.000237963  -0.050206370   0.001036411  -0.060532509  -0.012019510  -0.000000007   0.001016287   0.088098384

    5    5.1  1.5  1.5  -0.314420190  -0.001491611   0.192895051   0.003300780  -0.000000010  -0.066485162   0.071475929  -0.000824507
                        -0.000000376   0.000000000   0.000001235   0.000000565  -0.000000001  -0.000001675   0.000004443  -0.000000079

    6    6.1  1.5  1.5  -0.000000021  -0.000000000   0.000000065   0.000000029  -0.000000000  -0.000001163  -0.000004070   0.000000074
                         0.386391565   0.001832846   0.101186388   0.001731409  -0.000000000   0.074356068   0.056156592  -0.000647810

    7    7.1  1.5  1.5  -0.000025102   0.005291422   0.000833193  -0.048692483  -0.001442495   0.000000001   0.000011541   0.001000070
                         0.000707868  -0.149218350  -0.000150916   0.008809079  -0.100840653   0.000000009  -0.000025271  -0.002183891

    8    8.1  1.5  1.5   0.001356785   0.000006428   0.013176762   0.000225475   0.000000002   0.066221511  -0.098741321   0.001138760
                        -0.000000017   0.000000000   0.000000055   0.000000025   0.000000001   0.000003371   0.000008400  -0.000000153

    9    9.1  1.5  1.5  -0.000000017   0.000000000   0.000000055   0.000000025  -0.000000001  -0.000002887  -0.000016622   0.000000301
                        -0.001353710  -0.000006414  -0.013177127  -0.000225481  -0.000000008   0.068631716   0.015610750  -0.000180370

   10   10.1  1.5  1.5   0.000003837  -0.000808859  -0.000039514   0.002309208  -0.002216095   0.000000001  -0.000052676  -0.004567495
                        -0.000108202   0.022809662   0.000007167  -0.000417785  -0.154925475   0.000000013   0.000114215   0.009911140

   11    1.1  1.5  0.5   0.000020442  -0.004307728  -0.004569458   0.267044075   0.001236027  -0.000000001  -0.000126416  -0.010960406
                        -0.000576448   0.121486642   0.000827249  -0.048310694   0.086339370  -0.000000004   0.000274591   0.023810949

   12    2.1  1.5  0.5   0.000000182  -0.000000000  -0.000000596  -0.000000272  -0.000000001  -0.000002067  -0.000004685   0.000000085
                        -0.343265157  -0.001628349   0.035293389   0.000603970   0.000000002   0.070779930  -0.017640580   0.000203382

   13    3.1  1.5  0.5   0.000929077  -0.195890515   0.000826045  -0.048251197  -0.090388784   0.000000003   0.000021850   0.001888219
                         0.000032947  -0.006946898   0.004563861  -0.266717502   0.001293719  -0.000000001   0.000009988   0.000865251

   14    4.1  1.5  0.5   0.346293740   0.001642689   0.010182771   0.000174198  -0.000000005  -0.004702232  -0.014340661   0.000165261
                         0.000000124  -0.000000000  -0.000000404  -0.000000185   0.000000000   0.000000950   0.000008114  -0.000000147

   15    5.1  1.5  0.5   0.000021968  -0.004629254  -0.004909435   0.286912738   0.000479212  -0.000000000   0.000040272   0.003492703
                        -0.000619473   0.130554277   0.000888798  -0.051905116   0.033559125  -0.000000007  -0.000087151  -0.007569653

   16    6.1  1.5  0.5  -0.000778919   0.164230571  -0.000692415   0.040445591   0.023135589  -0.000000005  -0.000358070  -0.031055362
                        -0.000027622   0.005824137  -0.003825564   0.223570549  -0.000329891  -0.000000000  -0.000164921  -0.014299194

   17    7.1  1.5  0.5   0.013348692   0.000063052   0.461717970   0.007900722  -0.000000007   0.002297758   0.088385708  -0.001019573
                        -0.000000596   0.000000000   0.000001967   0.000000900  -0.000000000  -0.000000462   0.000005451  -0.000000098

   18    8.1  1.5  0.5   0.000002478  -0.000522517   0.000233341  -0.013636732   0.001889790  -0.000000002  -0.000431830  -0.037436909
                        -0.000069886   0.014734306  -0.000042231   0.002466981   0.132082343  -0.000000019   0.000938885   0.081379113

   19    9.1  1.5  0.5   0.000055070  -0.011607184  -0.000050508   0.002949460  -0.136256629   0.000000003   0.001136725   0.098546948
                         0.000001953  -0.000411585  -0.000278974   0.016303522   0.001948602  -0.000000001   0.000523074   0.045348612

   20   10.1  1.5  0.5   0.000782737   0.000003709   0.007610133   0.000130221   0.000000017  -0.004174657  -0.198060871   0.002284769
                        -0.000000010   0.000000000   0.000000032   0.000000015   0.000000001   0.000000838  -0.000014242   0.000000256

   21    1.1  1.5 -0.5   0.121562990   0.000576810  -0.271378815  -0.004643736  -0.000000004  -0.086348217   0.026212436  -0.000302293
                         0.000000402  -0.000000000  -0.000001323  -0.000000606  -0.000000001  -0.000002233  -0.000002462   0.000000045

   22    2.1  1.5 -0.5  -0.001627326   0.343049532   0.000107783  -0.006283325   0.070772675  -0.000000002   0.000184721   0.016023150
                        -0.000057708   0.012164959   0.000594275  -0.034729571  -0.001013412   0.000000001   0.000085102   0.007378942

   23    3.1  1.5 -0.5  -0.000000275   0.000000000   0.000000911   0.000000417  -0.000000001  -0.000002058  -0.000003361   0.000000062
                        -0.196013655  -0.000929661  -0.271046867  -0.004638015   0.000000003   0.090398041   0.002077021  -0.000024025

   24    4.1  1.5 -0.5  -0.000058216   0.012272348  -0.000171449   0.010020203  -0.000066239  -0.000000000  -0.000069221  -0.006002517
                         0.001641657  -0.346076211   0.000030828  -0.001812285  -0.004701765   0.000000005   0.000150066   0.013023994

   25    5.1  1.5 -0.5   0.130636325   0.000619863  -0.291569992  -0.004989240  -0.000000007  -0.033562547  -0.008336579   0.000096006
                         0.000000431  -0.000000000  -0.000001422  -0.000000651  -0.000000000   0.000000349   0.000008341  -0.000000151

   26    6.1  1.5 -0.5   0.000000231  -0.000000000  -0.000000765  -0.000000350  -0.000000000  -0.000000718  -0.000006949   0.000000126
                         0.164333810   0.000779409   0.227199552   0.003887722  -0.000000005  -0.023137941  -0.034189214   0.000394224

   27    7.1  1.5 -0.5  -0.000002235   0.000473667  -0.007774370   0.454342989   0.000032370   0.000000001   0.000426146   0.036944899
                         0.000063012  -0.013340286   0.001407330  -0.082194477   0.002297530   0.000000007  -0.000926245  -0.080293884

   28    8.1  1.5 -0.5   0.014743568   0.000069930   0.013858082   0.000237132  -0.000000019  -0.132095861   0.089577240  -0.001033432
                        -0.000000012   0.000000000   0.000000040   0.000000019  -0.000000002  -0.000002327   0.000012180  -0.000000218

   29    9.1  1.5 -0.5   0.000000026  -0.000000000  -0.000000086  -0.000000039  -0.000000001  -0.000001488  -0.000002061   0.000000038
                        -0.011614479  -0.000055105   0.016568167   0.000283509   0.000000003   0.136270561   0.108480401  -0.001251299

   30   10.1  1.5 -0.5  -0.000000131   0.000027749  -0.000128139   0.007488577  -0.000058812  -0.000000001  -0.000954920  -0.082786870
                         0.000003706  -0.000782245   0.000023196  -0.001354746  -0.004174243  -0.000000017   0.002075643   0.179928994

   31    1.1  1.5 -1.5   0.000062293  -0.013132396   0.001874890  -0.109571267  -0.000682865  -0.000000000  -0.000358058  -0.031042623
                        -0.001756629   0.370325555  -0.000339175   0.019821884  -0.047786085  -0.000000000   0.000778056   0.067455266

   32    2.1  1.5 -1.5   0.000000433  -0.000000000  -0.000001429  -0.000000654  -0.000000000  -0.000000410   0.000006956  -0.000000125
                         0.035302665   0.000167263   0.343252809   0.005873593   0.000000008  -0.002039213  -0.096742070   0.001115986

   33    3.1  1.5 -1.5  -0.001397416   0.294562561   0.000604950  -0.035321633  -0.036259665   0.000000011  -0.000609926  -0.052863068
                        -0.000049555   0.010445333   0.003340870  -0.195243736   0.000518541  -0.000000001  -0.000280495  -0.024316823

   34    4.1  1.5 -1.5   0.050237943   0.000238113   0.340034659   0.005818524   0.000000007  -0.012020733  -0.096976466   0.001118683
                        -0.000000423   0.000000000   0.000001396   0.000000639   0.000000000   0.000000265  -0.000006546   0.000000118

   35    5.1  1.5 -1.5  -0.000052862   0.011142514   0.003247959  -0.189813882   0.000951654  -0.000000001  -0.000344615  -0.029876642
                         0.001490674  -0.314222692  -0.000588143   0.034339351   0.066478351  -0.000000010   0.000749034   0.064932232

   36    6.1  1.5 -1.5  -0.001831695   0.386148843  -0.000308187   0.018012591  -0.074348461  -0.000000000   0.000588517   0.051015638
                        -0.000064955   0.013693497  -0.001703760   0.099570235   0.001063606  -0.000000000   0.000270751   0.023472697

   37    7.1  1.5 -1.5   0.149312139   0.000708313  -0.049482904  -0.000846750  -0.000000009  -0.100850970   0.002401978  -0.000027782
                         0.000000123  -0.000000000  -0.000000405  -0.000000186  -0.000000001  -0.000001477   0.000004494  -0.000000080

   38    8.1  1.5 -1.5   0.000000228  -0.000048100   0.000221869  -0.012966291  -0.000949583   0.000000001   0.000476200   0.041286669
                        -0.000006424   0.001355932  -0.000040163   0.002345710  -0.066214702   0.000000002  -0.001034412  -0.089695371

   39    9.1  1.5 -1.5   0.000006410  -0.001352859   0.000040164  -0.002345775  -0.068624669  -0.000000008   0.000163978   0.014188112
                         0.000000227  -0.000047991   0.000221875  -0.012966650   0.000983537  -0.000000001   0.000075131   0.006511011

   40   10.1  1.5 -1.5  -0.022823999  -0.000108270   0.002346697   0.000040159  -0.000000013  -0.154941324  -0.010912959   0.000125776
                        -0.000000012   0.000000000   0.000000040   0.000000018  -0.000000001  -0.000002203   0.000005842  -0.000000104

   41    1.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000001339  -0.000015267   0.000000275
                         0.000005222   0.000000025  -0.000000618  -0.000000011  -0.000000019  -0.180122939  -0.038762171   0.000446828

   42    2.1  0.5  0.5   0.000000000  -0.000000093  -0.000000109   0.000006346   0.000906133  -0.000000001  -0.000642954  -0.055738619
                        -0.000000012   0.000002620   0.000000020  -0.000001148   0.063404171  -0.000000026   0.001398253   0.121181543

   43    3.1  0.5  0.5   0.000000002  -0.000000342  -0.000000019   0.000001105   0.164887434   0.000000007  -0.001913082  -0.165833863
                         0.000000000  -0.000000012  -0.000000105   0.000006108  -0.002358708   0.000000001  -0.000880101  -0.076299966

   44    4.1  0.5  0.5  -0.000000417  -0.000000002  -0.000005302  -0.000000091  -0.000000021   0.005885461   0.249324757  -0.002876133
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000001043   0.000017926  -0.000000323

   45    5.1  0.5  0.5   0.000000024  -0.000005012   0.000000006  -0.000000379   0.040983532   0.000000002   0.001302581   0.112952951
                         0.000000001  -0.000000178   0.000000036  -0.000002095  -0.000589370   0.000000001   0.000599706   0.051994975

   46    6.1  0.5  0.5  -0.000001165  -0.000000006  -0.000000061  -0.000000001   0.000000016   0.256032197  -0.008653481   0.000099819
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002   0.000004865  -0.000001223   0.000000020

   47    7.1  0.5  0.5  -0.000000001   0.000000170  -0.000000051   0.000002997   0.002147726  -0.000000003  -0.000732613  -0.063516414
                         0.000000023  -0.000004795   0.000000009  -0.000000542   0.149934413  -0.000000012   0.001591780   0.138010861

   48    8.1  0.5  0.5   0.000498732  -0.105108016  -0.000715654   0.041793668   0.496007166  -0.000000073   0.003525752   0.305599296
                         0.000017686  -0.003726968  -0.003953046   0.231020307  -0.007096705   0.000000007   0.001621633   0.140585129

   49    9.1  0.5  0.5  -0.000025340   0.005342992  -0.003509970   0.205126831   0.007317554  -0.000000003   0.001964250   0.170293302
                         0.000714571  -0.150663138   0.000635294  -0.037108983   0.511682219  -0.000000010  -0.004268634  -0.370063926

   50   10.1  0.5  0.5  -0.000000143   0.000000000   0.000000470   0.000000215   0.000000006   0.000013822   0.000030012  -0.000000548
                         0.255191484   0.001210557  -0.032742897  -0.000560316  -0.000000013  -0.470740901   0.133592264  -0.001540320

   51   11.1  0.5  0.5  -0.000000320   0.000000000   0.000001054   0.000000482   0.000000003   0.000002380  -0.000047084   0.000000848
                        -0.032747796  -0.000155195  -0.255161945  -0.004366220  -0.000000055   0.025423672   0.640947023  -0.007393785

   52   12.1  0.5  0.5   0.255937656   0.001214093  -0.026314977  -0.000450324  -0.000000030  -0.032663840  -0.152919072   0.001762903
                         0.000000135  -0.000000000  -0.000000444  -0.000000203   0.000000001   0.000006595   0.000050185  -0.000000908

   53    1.1  0.5 -0.5  -0.000000025   0.000005219   0.000000002  -0.000000110   0.180104532  -0.000000019  -0.000405794  -0.035206064
                        -0.000000001   0.000000185   0.000000010  -0.000000608  -0.002575041   0.000000001  -0.000187047  -0.016218484

   54    2.1  0.5 -0.5  -0.000002622  -0.000000012   0.000006449   0.000000110   0.000000026   0.063410646  -0.133385754   0.001538994
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000085  -0.000025986   0.000000468

   55    3.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000002458  -0.000014592   0.000000264
                         0.000000343   0.000000002  -0.000006207  -0.000000106  -0.000000007   0.164904303   0.182544665  -0.002105816

   56    4.1  0.5 -0.5  -0.000000000   0.000000015  -0.000000089   0.000005218  -0.000083052  -0.000000001  -0.001202081  -0.104214510
                         0.000000002  -0.000000417   0.000000016  -0.000000944  -0.005884875  -0.000000021   0.002612880   0.226499825

   57    5.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000003713  -0.000013185   0.000000240
                         0.000005015   0.000000024   0.000002129   0.000000036  -0.000000002   0.040987769  -0.124345673   0.001434003

   58    6.1  0.5 -0.5  -0.000000000   0.000000041  -0.000000001   0.000000060  -0.003663203   0.000000003   0.000041712   0.003616496
                         0.000000006  -0.000001164   0.000000000  -0.000000011  -0.256005989   0.000000016  -0.000090686  -0.007861532

   59    7.1  0.5 -0.5   0.000004798   0.000000023   0.000003045   0.000000052   0.000000012   0.149949794  -0.151925418   0.001752280
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002   0.000005156   0.000004007  -0.000000075

   60    8.1  0.5 -0.5  -0.000000347   0.000000000   0.000001145   0.000000524  -0.000000006  -0.000008738   0.000045739  -0.000000820
                         0.105174072   0.000499046  -0.234770298  -0.004017304   0.000000073   0.496057932  -0.336385353   0.003880801

   61    9.1  0.5 -0.5   0.150757848   0.000715020   0.208456454   0.003567000   0.000000010   0.511734540   0.407366073  -0.004698884
                        -0.000000212   0.000000000   0.000000701   0.000000321   0.000000002   0.000005589   0.000007741  -0.000000142

   62   10.1  0.5 -0.5  -0.001209797   0.255031184   0.000099956  -0.005829177   0.470692647  -0.000000013   0.001399033   0.121345732
                        -0.000042902   0.009043712   0.000551328  -0.032219839  -0.006740044   0.000000006   0.000644432   0.055875820

   63   11.1  0.5 -0.5   0.000155098  -0.032727213   0.000777726  -0.045423590  -0.025421110  -0.000000054   0.006717038   0.582270668
                         0.000005500  -0.001160884   0.004296396  -0.251086271   0.000360889   0.000000004   0.003090219   0.267906621

   64   12.1  0.5 -0.5   0.000043027  -0.009070163  -0.000443095   0.025894592   0.000460126   0.000000001   0.000737811   0.063973763
                        -0.001213331   0.255776887   0.000080364  -0.004684887   0.032660600  -0.000000030  -0.001601083  -0.138894214


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5  -0.000884384  -0.038266682   0.076183299   0.000036305   0.000335288   0.017612612  -0.038195691  -0.000074690
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.010824163   0.000250403   0.000001496  -0.003138149  -0.014578680   0.000277503  -0.000039952   0.020426230
                        -0.020389114   0.000471237  -0.000000535   0.001123855  -0.003737234   0.000071143   0.000186264  -0.095253150

    3    3.1  1.5  1.5   0.000000703   0.000018069   0.000000637   0.000000003   0.000000025   0.000001104   0.000003653   0.000000019
                        -0.001642090  -0.071044008   0.054026493   0.000025749   0.000242325   0.012729655   0.048609778   0.000095056

    4    4.1  1.5  1.5   0.016906596  -0.000390751   0.000004804  -0.010074063  -0.006739011   0.000128284   0.000004448  -0.002273969
                        -0.008977177   0.000207704   0.000013414  -0.028160617   0.026297456  -0.000500590   0.000000946  -0.000485467

    5    5.1  1.5  1.5   0.000094128   0.004069510   0.073470270   0.000035031  -0.000731917  -0.038452476  -0.033875481  -0.000066243
                         0.000000271   0.000006527  -0.000001231  -0.000000010   0.000000129   0.000005931   0.000000594   0.000000003

    6    6.1  1.5  1.5  -0.000000348  -0.000009343  -0.000001629  -0.000000011   0.000000093   0.000004347  -0.000002534  -0.000000013
                         0.000448070   0.019383916  -0.037837214  -0.000018050   0.000767803   0.040336704  -0.047112960  -0.000092129

    7    7.1  1.5  1.5  -0.036226436   0.000837245   0.000002443  -0.005117606  -0.030176740   0.000574451  -0.000030087   0.015386448
                         0.019213553  -0.000444192   0.000006769  -0.014296995   0.117731425  -0.002241024  -0.000006444   0.003297699

    8    8.1  1.5  1.5   0.003571492   0.154527913   0.000000009   0.000000000  -0.000000002  -0.000000123   0.000000485   0.000000001
                         0.000000755   0.000020496   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    9    9.1  1.5  1.5  -0.000001353  -0.000035837  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.004202272   0.181814468   0.000000224   0.000000000  -0.000000001  -0.000000070  -0.000000281  -0.000000001

   10   10.1  1.5  1.5  -0.052472024   0.001212702  -0.000000000   0.000000075   0.000000280  -0.000000005   0.000000001  -0.000000485
                         0.027828231  -0.000643327  -0.000000000   0.000000208  -0.000001092   0.000000021   0.000000000  -0.000000104

   11    1.1  1.5  0.5  -0.043200997   0.000998432   0.000005038  -0.010579684   0.006495208  -0.000123640  -0.000023035   0.011779451
                         0.022911958  -0.000529631   0.000014105  -0.029573181  -0.025341522   0.000482372  -0.000004927   0.002522682

   12    2.1  1.5  0.5  -0.000000428  -0.000011664  -0.000002447  -0.000000019   0.000000223   0.000010294  -0.000000235  -0.000000001
                         0.001563537   0.067648622  -0.034827078  -0.000016632   0.001746921   0.091774354  -0.014925196  -0.000029185

   13    3.1  1.5  0.5  -0.020268524   0.000468569  -0.000033136   0.069517688  -0.004262303   0.000081165  -0.000004729   0.002417794
                        -0.038211626   0.000883125   0.000011852  -0.024868534  -0.001090343   0.000020757   0.000022057  -0.011279259

   14    4.1  1.5  0.5   0.002269970   0.098212834  -0.060154088  -0.000028647  -0.001403322  -0.073721764   0.009867387   0.000019294
                         0.000000643   0.000016919  -0.000001129  -0.000000009   0.000000147   0.000006733   0.000001773   0.000000009

   15    5.1  1.5  0.5   0.084045544  -0.001942411  -0.000008486   0.017812298  -0.006045605   0.000115082   0.000155278  -0.079407174
                        -0.044576307   0.001030509  -0.000023737   0.049789055   0.023581659  -0.000448858   0.000033299  -0.017026849

   16    6.1  1.5  0.5  -0.044523175   0.001029235  -0.000027442   0.057564482  -0.005075753   0.000096638  -0.000038360   0.019610555
                        -0.083950101   0.001940201   0.000009812  -0.020591571  -0.001300094   0.000024752   0.000178818  -0.091445433

   17    7.1  1.5  0.5   0.000255281   0.011041317  -0.008253247  -0.000003935   0.000138669   0.007285239   0.041064563   0.000080301
                         0.000000391   0.000009994  -0.000000113  -0.000000000  -0.000000034  -0.000001516  -0.000001902  -0.000000010

   18    8.1  1.5  0.5   0.066315393  -0.001532657   0.000000000  -0.000000103   0.000000058  -0.000000001  -0.000000001   0.000000611
                        -0.035181155   0.000813487   0.000000000  -0.000000289  -0.000000227   0.000000004  -0.000000000   0.000000131

   19    9.1  1.5  0.5   0.013021030  -0.000300841   0.000000000  -0.000000092  -0.000000426   0.000000008  -0.000000000   0.000000162
                         0.024573107  -0.000567903  -0.000000000   0.000000033  -0.000000109   0.000000002   0.000000001  -0.000000754

   20   10.1  1.5  0.5  -0.001092523  -0.047260782   0.000000240   0.000000000  -0.000000005  -0.000000245  -0.000000286  -0.000000001
                        -0.000001036  -0.000026570  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   21    1.1  1.5 -0.5  -0.001130211  -0.048900756  -0.031408642  -0.000014977   0.000497965   0.026160666   0.012046551   0.000023556
                        -0.000000268  -0.000007561   0.000000089   0.000000008  -0.000000051  -0.000002451   0.000003046   0.000000012

   22    2.1  1.5 -0.5   0.031697147  -0.000732744  -0.000015666   0.032792642   0.088900290  -0.001692206  -0.000006120   0.003129423
                         0.059763092  -0.001381207   0.000005585  -0.011728938   0.022787510  -0.000433785   0.000028536  -0.014593430

   23    3.1  1.5 -0.5  -0.000000329  -0.000009086   0.000001275   0.000000003  -0.000000037  -0.000001636  -0.000000734  -0.000000000
                         0.000999734   0.043254379   0.073831924   0.000035192   0.000083777   0.004399554   0.011535485   0.000022558

   24    4.1  1.5 -0.5  -0.086764562   0.002005250  -0.000009658   0.020263521   0.018303577  -0.000348433   0.000018867  -0.009648453
                         0.046018169  -0.001063830  -0.000026969   0.056638361  -0.071413427   0.001359377   0.000004036  -0.002067047

   25    5.1  1.5 -0.5   0.002198843   0.095135168   0.052879372   0.000025208  -0.000463376  -0.024344280  -0.081212147  -0.000158809
                         0.000000638   0.000016610   0.000000292  -0.000000006   0.000000079   0.000003698   0.000000041   0.000000004

   26    6.1  1.5 -0.5  -0.000000548  -0.000014372   0.000001949   0.000000005  -0.000000007  -0.000000339   0.000002401   0.000000017
                         0.002196293   0.095025956   0.061136588   0.000029144   0.000099758   0.005239610   0.093524548   0.000182886

   27    7.1  1.5 -0.5  -0.009750485   0.000225361  -0.000001325   0.002780152  -0.001809597   0.000034449   0.000078514  -0.040151492
                         0.005180620  -0.000119920  -0.000003705   0.007770897   0.007056916  -0.000134322   0.000016846  -0.008611391

   28    8.1  1.5 -0.5   0.001735165   0.075069598  -0.000000306  -0.000000000   0.000000004   0.000000234   0.000000625   0.000000001
                         0.000000826   0.000020716   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   29    9.1  1.5 -0.5  -0.000000210  -0.000005854   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000642665  -0.027809797  -0.000000097  -0.000000000   0.000000008   0.000000439   0.000000771   0.000000002

   30   10.1  1.5 -0.5   0.041743152  -0.000964775   0.000000000  -0.000000081   0.000000061  -0.000000001  -0.000000001   0.000000280
                        -0.022160584   0.000512657   0.000000000  -0.000000226  -0.000000237   0.000000005  -0.000000000   0.000000060

   31    1.1  1.5 -1.5  -0.033809177   0.000781367  -0.000012229   0.025661778   0.004371286  -0.000083215   0.000073030  -0.037346780
                         0.017924242  -0.000414249  -0.000034183   0.071731222  -0.017061534   0.000324797   0.000015659  -0.008008047

   32    2.1  1.5 -1.5   0.000000506   0.000012978  -0.000001115   0.000000000  -0.000000043  -0.000002008  -0.000001627  -0.000000012
                        -0.000533634  -0.023084157   0.003333321   0.000001589  -0.000286477  -0.015050077  -0.097418651  -0.000190501

   33    3.1  1.5 -1.5   0.033293216  -0.000769781  -0.000024245   0.050869452  -0.012331085   0.000234737  -0.000019948   0.010195020
                         0.062759964  -0.001450481   0.000008670  -0.018197822  -0.003160451   0.000060167   0.000092940  -0.047528645

   34    4.1  1.5 -1.5  -0.000442523  -0.019142166   0.029908312   0.000014248   0.000516766   0.027147200   0.002325211   0.000004547
                        -0.000000481  -0.000012362  -0.000000350   0.000000005  -0.000000028  -0.000001372   0.000002080   0.000000007

   35    5.1  1.5 -1.5   0.003592415  -0.000083037  -0.000011791   0.024746755  -0.009549291   0.000181780   0.000064770  -0.033122463
                        -0.001911939   0.000044329  -0.000032987   0.069177154   0.037247873  -0.000708984   0.000013891  -0.007102860

   36    6.1  1.5 -1.5  -0.009087746   0.000210185   0.000016999  -0.035626593  -0.039073538   0.000743756   0.000019329  -0.009880105
                        -0.017121599   0.000395713  -0.000006069   0.012743651  -0.010015405   0.000190652  -0.000090078   0.046065329

   37    7.1  1.5 -1.5   0.000947779   0.041006283   0.015185320   0.000007196   0.002313479   0.121537335  -0.015735870  -0.000030769
                         0.000000282   0.000006873   0.000002701   0.000000020  -0.000000276  -0.000012704  -0.000001492  -0.000000007

   38    8.1  1.5 -1.5   0.136518089  -0.003155112  -0.000000000   0.000000003  -0.000000030   0.000000001  -0.000000001   0.000000474
                        -0.072399501   0.001673566  -0.000000000   0.000000009   0.000000119  -0.000000002  -0.000000000   0.000000102

   39    9.1  1.5 -1.5  -0.085194169   0.001969554  -0.000000000   0.000000211   0.000000068  -0.000000001   0.000000000  -0.000000059
                        -0.160618977   0.003712136   0.000000000  -0.000000075   0.000000017  -0.000000000  -0.000000001   0.000000275

   40   10.1  1.5 -1.5   0.001372776   0.059394643  -0.000000221  -0.000000000  -0.000000021  -0.000001127   0.000000496   0.000000001
                         0.000000356   0.000008581  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   41    1.1  0.5  0.5  -0.000001094  -0.000027936   0.000000957  -0.000000000   0.000000325   0.000014696   0.000017860   0.000000093
                         0.004120620   0.178283647   0.659958563   0.000314483   0.004632107   0.243333600   0.014534686   0.000028432

   42    2.1  0.5  0.5   0.185119456  -0.004278395   0.000027051  -0.056728470  -0.130880948   0.002491486   0.000919768  -0.470357778
                        -0.098199674   0.002270431   0.000075411  -0.158562650   0.510616967  -0.009719648   0.000197336  -0.100874551

   43    3.1  0.5  0.5   0.033889298  -0.000783766   0.000062484  -0.131569288   0.576456199  -0.010972942  -0.000096489   0.049332562
                         0.063855928  -0.001475830  -0.000022470   0.047081218   0.147749028  -0.002812570   0.000449792  -0.230021807

   44    4.1  0.5  0.5   0.001376031   0.059524917  -0.181600541  -0.000086539  -0.000023090  -0.001207204   0.541916550   0.001059709
                         0.000001304   0.000033460  -0.000002941  -0.000000013  -0.000000243  -0.000010814  -0.000022279  -0.000000116

   45    5.1  0.5  0.5   0.103268091  -0.002387147  -0.000085491   0.179433717  -0.011623926   0.000221313   0.000224419  -0.114756820
                         0.194722513  -0.004500295   0.000030582  -0.064201517  -0.002977382   0.000056696  -0.001046591   0.535212330

   46    6.1  0.5  0.5   0.000252678   0.010933033   0.555874240   0.000265118  -0.008992053  -0.472403758   0.102545338   0.000200526
                         0.000000090   0.000003698  -0.000016313  -0.000000120   0.000001281   0.000059312  -0.000010396  -0.000000055

   47    7.1  0.5  0.5  -0.125469718   0.002899760  -0.000051687   0.108464815  -0.055850023   0.001063171  -0.000522438   0.267167410
                         0.066534986  -0.001537891  -0.000144644   0.303232012   0.217849751  -0.004146622  -0.000112013   0.057279148

   48    8.1  0.5  0.5  -0.132109433   0.003054741   0.000000000  -0.000000454  -0.000001728   0.000000033  -0.000000001   0.000000399
                        -0.249022212   0.005755311  -0.000000000   0.000000162  -0.000000443   0.000000008   0.000000004  -0.000001859

   49    9.1  0.5  0.5   0.092270925  -0.002132449  -0.000000000   0.000000260  -0.000000078   0.000000001   0.000000002  -0.000001027
                        -0.048893386   0.001129645  -0.000000000   0.000000727   0.000000303  -0.000000006   0.000000000  -0.000000220

   50   10.1  0.5  0.5   0.000002764   0.000075448  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.010315496  -0.446315125  -0.000001408  -0.000000001   0.000000046   0.000002394  -0.000001645  -0.000000003

   51   11.1  0.5  0.5  -0.000003440  -0.000088334  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.003813598   0.164972254   0.000000311   0.000000000  -0.000000007  -0.000000356  -0.000002893  -0.000000006

   52   12.1  0.5  0.5   0.014872597   0.643482333   0.000002030   0.000000001   0.000000020   0.000001046  -0.000001180  -0.000000002
                         0.000004007   0.000105551   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   53    1.1  0.5 -0.5  -0.083533340   0.001931079  -0.000296105   0.621391555  -0.235716336   0.004487094  -0.000006052   0.003064782
                        -0.157503146   0.003640116   0.000105932  -0.222301237  -0.060407366   0.001149961   0.000027781  -0.014207903

   54    2.1  0.5 -0.5  -0.004843503  -0.209552825   0.168404968   0.000080116   0.010033895   0.527123805   0.481053130   0.000940699
                        -0.000001944  -0.000050286   0.000002664   0.000000068  -0.000001204  -0.000055472  -0.000018124  -0.000000113

   55    3.1  0.5 -0.5  -0.000001185  -0.000031364  -0.000011701  -0.000000110   0.000001186   0.000055086  -0.000010126  -0.000000042
                         0.001671036   0.072291515   0.139739467   0.000066401   0.011327665   0.595089508  -0.235252488  -0.000460025

   56    4.1  0.5 -0.5   0.052575469  -0.001215133   0.000029162  -0.061173562  -0.000289142   0.000005495  -0.001036132   0.529867619
                        -0.027911233   0.000645690   0.000081478  -0.170986993   0.001172115  -0.000022428  -0.000222290   0.113639141

   57    5.1  0.5 -0.5  -0.000001126  -0.000030203   0.000008729  -0.000000002   0.000000006   0.000000727  -0.000005445   0.000000005
                         0.005094225   0.220411331  -0.190573591  -0.000090796  -0.000228460  -0.011999186   0.547376805   0.001070382

   58    6.1  0.5 -0.5   0.009657763  -0.000223203  -0.000089190   0.187226748  -0.117303663   0.002232984  -0.000196057   0.100264057
                        -0.005124336   0.000118435  -0.000249665   0.523394990   0.457608091  -0.008710384  -0.000042096   0.021509657

   59    7.1  0.5 -0.5   0.003282334   0.142019556  -0.322046999  -0.000153602   0.004280748   0.224894949  -0.273238588  -0.000534311
                         0.000000492   0.000014204   0.000015212   0.000000056  -0.000000752  -0.000034266  -0.000007789  -0.000000010

   60    8.1  0.5 -0.5   0.000003102   0.000077793  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.006515753  -0.281895296   0.000000482   0.000000000  -0.000000034  -0.000001784  -0.000001901  -0.000000004

   61    9.1  0.5 -0.5  -0.002413180  -0.104424548  -0.000000772  -0.000000000   0.000000006   0.000000313   0.000001050   0.000000002
                         0.000000788   0.000021983   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   62   10.1  0.5 -0.5   0.209122160  -0.004834255   0.000000001  -0.000001326  -0.000002319   0.000000044   0.000000001  -0.000000345
                         0.394290652  -0.009112598  -0.000000000   0.000000474  -0.000000594   0.000000011  -0.000000003   0.000001608

   63   11.1  0.5 -0.5  -0.077351601   0.001789342  -0.000000000   0.000000292   0.000000345  -0.000000007   0.000000001  -0.000000607
                        -0.145714043   0.003367760   0.000000000  -0.000000105   0.000000088  -0.000000002  -0.000000006   0.000002828

   64   12.1  0.5 -0.5   0.568476686  -0.013138282  -0.000000000   0.000000684   0.000000260  -0.000000005   0.000000002  -0.000001153
                        -0.301502538   0.006969914  -0.000000001   0.000001911  -0.000001014   0.000000019   0.000000000  -0.000000247


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.000853999  -0.013533007  -0.149825862   0.014935126   0.084132364  -0.000000000  -0.040017838  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.010082557   0.000636250  -0.000091513  -0.000918881   0.000000150   0.008097979  -0.000000001   0.000481891
                         0.006635521   0.000418735  -0.001750048  -0.017556063  -0.000000005  -0.152586838   0.000000000  -0.000734720

    3    3.1  1.5  1.5   0.000000324  -0.000005264   0.000003156  -0.000000242   0.000005664   0.000000129  -0.000000057  -0.000000001
                        -0.003950319   0.062599243  -0.146656958   0.014619238  -0.058011801   0.000000011  -0.035076353  -0.000000001

    4    4.1  1.5  1.5   0.050006245   0.003155647   0.001075527   0.010789418   0.000000005   0.152622845  -0.000000000  -0.005718294
                        -0.075942350  -0.004792322  -0.000056343  -0.000566043   0.000000146   0.008100044  -0.000000001  -0.003750179

    5    5.1  1.5  1.5   0.001636784  -0.025937478   0.154641941  -0.015415207   0.053717433  -0.000000011   0.047959693   0.000000002
                         0.000000058  -0.000000884   0.000003161  -0.000000242   0.000005671   0.000000129   0.000000067  -0.000000001

    6    6.1  1.5  1.5  -0.000000221   0.000003627   0.000000165  -0.000000013   0.000000295   0.000000007   0.000000108  -0.000000000
                         0.002671868  -0.042340123  -0.157650229   0.015715084   0.081230571   0.000000001  -0.051457070  -0.000000001

    7    7.1  1.5  1.5  -0.018516909  -0.001168507  -0.006908488  -0.069304406  -0.000000001  -0.007162019   0.000000001  -0.065298700
                         0.028119586   0.001774488   0.000360227   0.003613959  -0.000000042  -0.000378542   0.000000002  -0.042824745

    8    8.1  1.5  1.5  -0.000000030   0.000000472  -0.006786780   0.000676528  -0.059015727   0.000000005  -0.042050650  -0.000000004
                        -0.000000000   0.000000000  -0.000001413   0.000000108  -0.000002535  -0.000000058  -0.000000445   0.000000002

    9    9.1  1.5  1.5  -0.000000000   0.000000000  -0.000001413   0.000000108  -0.000002535  -0.000000058   0.000000507  -0.000000001
                         0.000000015  -0.000000237   0.006792895  -0.000677137   0.059015201  -0.000000005  -0.040416263  -0.000000002

   10   10.1  1.5  1.5   0.000000290   0.000000018  -0.010125080  -0.101572546  -0.000000001   0.011801395   0.000000002  -0.157443882
                        -0.000000440  -0.000000028   0.000527910   0.005296115  -0.000000042   0.000628654   0.000000004  -0.103256166

   11    1.1  1.5  0.5  -0.055364103  -0.003493756   0.007828367   0.078532414   0.000000005   0.106280845  -0.000000001   0.046522962
                         0.084080235   0.005305860  -0.000408362  -0.004097377   0.000000139   0.005638954  -0.000000002   0.030510936

   12    2.1  1.5  0.5  -0.000000012   0.000000288  -0.000001523   0.000000117  -0.000002732  -0.000000062   0.000000169  -0.000000001
                        -0.000227991   0.003612845   0.152049097  -0.015156744  -0.017667314  -0.000000005  -0.042006193  -0.000000001

   13    3.1  1.5  0.5   0.057546745   0.003631473   0.000305688   0.003066051   0.000000096   0.007253956   0.000000001  -0.032629794
                         0.037893382   0.002391262   0.005867251   0.058858973  -0.000000003  -0.136651338  -0.000000001   0.049753764

   14    4.1  1.5  0.5   0.001615432  -0.025599118  -0.148989918   0.014851796   0.037753313   0.000000004   0.016414172  -0.000000000
                         0.000000163  -0.000002586  -0.000001033   0.000000079  -0.000001852  -0.000000042  -0.000000128  -0.000000000

   15    5.1  1.5  0.5   0.017897719   0.001129438   0.008410652   0.084373767   0.000000005   0.114186707   0.000000000   0.030750230
                        -0.027185746  -0.001715543  -0.000438736  -0.004402146   0.000000149   0.006058416  -0.000000000   0.020167017

   16    6.1  1.5  0.5   0.010457040   0.000659884  -0.000256236  -0.002570048  -0.000000080  -0.006080549   0.000000000   0.016138014
                         0.006882821   0.000434339  -0.004918090  -0.049337203   0.000000003   0.114546494  -0.000000000  -0.024606839

   17    7.1  1.5  0.5  -0.002477356   0.039257734   0.038432881  -0.003831111   0.202274037  -0.000000018  -0.000833356   0.000000001
                        -0.000000170   0.000002746   0.000005034  -0.000000386   0.000009032   0.000000205  -0.000000017  -0.000000000

   18    8.1  1.5  0.5   0.000000158   0.000000010  -0.005065475  -0.050815724   0.000000001   0.074860300  -0.000000002   0.137535349
                        -0.000000239  -0.000000015   0.000263989   0.002648039   0.000000043   0.003974282  -0.000000004   0.090199651

   19    9.1  1.5  0.5  -0.000000361  -0.000000023  -0.000345610  -0.003467596   0.000000091   0.003248311   0.000000002  -0.088646871
                        -0.000000238  -0.000000015  -0.006626357  -0.066474120  -0.000000003  -0.061232003  -0.000000001   0.135167887

   20   10.1  1.5  0.5  -0.000000005   0.000000086  -0.003920367   0.000390795  -0.034075909   0.000000003  -0.002831125  -0.000000002
                        -0.000000000   0.000000000  -0.000000816   0.000000063  -0.000001464  -0.000000033   0.000000108   0.000000002

   21    1.1  1.5 -0.5   0.006352833  -0.100671097  -0.078639231   0.007839011  -0.106430333   0.000000012   0.055635449   0.000000002
                         0.000000693  -0.000011243  -0.000003386   0.000000260  -0.000006076  -0.000000138   0.000000161  -0.000000001

   22    2.1  1.5 -0.5   0.003017058   0.000190397  -0.000789184  -0.007917269   0.000000062  -0.000939796  -0.000000001   0.023036500
                         0.001987463   0.000125415  -0.015136185  -0.151842829  -0.000000002   0.017642301   0.000000001  -0.035126058

   23    3.1  1.5 -0.5  -0.000000440   0.000007093   0.000002332  -0.000000179   0.000004186   0.000000095   0.000000158  -0.000000001
                         0.004348072  -0.068902367   0.058938776  -0.005875209  -0.136843736   0.000000008  -0.059499079  -0.000000002

   24    4.1  1.5 -0.5   0.014078472   0.000888422  -0.014831652  -0.148787824  -0.000000001   0.037700073  -0.000000000  -0.013725611
                        -0.021380166  -0.001349195   0.000773271   0.007757517  -0.000000042   0.002004270  -0.000000000  -0.009001813

   25    5.1  1.5 -0.5  -0.002053952   0.032548319  -0.084488529   0.008422088  -0.114347315   0.000000013   0.036773431   0.000000000
                        -0.000000389   0.000006317  -0.000003638   0.000000279  -0.000006529  -0.000000149  -0.000000093  -0.000000000

   26    6.1  1.5 -0.5  -0.000000233   0.000003736  -0.000001956   0.000000150  -0.000003509  -0.000000080   0.000000104   0.000000000
                         0.000789998  -0.012518902  -0.049404096   0.004924761   0.114707770  -0.000000007   0.029426723  -0.000000000

   27    7.1  1.5 -0.5  -0.021591172  -0.001362512   0.003825896   0.038380501   0.000000007   0.201989797   0.000000000   0.000696870
                         0.032787055   0.002069022  -0.000199835  -0.002005861   0.000000206   0.010719513   0.000000001   0.000457007

   28    8.1  1.5 -0.5  -0.000000018   0.000000287   0.050884673  -0.005072349  -0.074965722   0.000000004   0.164474768   0.000000004
                         0.000000000  -0.000000000  -0.000001043   0.000000080  -0.000001872  -0.000000043   0.000000067  -0.000000003

   29    9.1  1.5 -0.5   0.000000000  -0.000000000   0.000002219  -0.000000170   0.000003982   0.000000091   0.000000175  -0.000000001
                        -0.000000027   0.000000432  -0.066564502   0.006635364  -0.061318103   0.000000008  -0.161643513  -0.000000002

   30   10.1  1.5 -0.5  -0.000000047  -0.000000003  -0.000390261  -0.003915009  -0.000000001  -0.034028022  -0.000000001   0.002367353
                         0.000000072   0.000000005   0.000020407   0.000204911  -0.000000033  -0.001805911  -0.000000003   0.001552709

   31    1.1  1.5 -1.5  -0.007443744  -0.000469737   0.014914873   0.149622688  -0.000000000  -0.084013940   0.000000000  -0.033463284
                         0.011301901   0.000713205  -0.000777530  -0.007800005   0.000000000  -0.004462347   0.000000000  -0.021946207

   32    2.1  1.5 -1.5   0.000000265  -0.000004283  -0.000003658   0.000000280  -0.000006564  -0.000000149  -0.000000034  -0.000000001
                        -0.000761678   0.012070131   0.017580094  -0.001752439   0.152801572  -0.000000013  -0.000878654  -0.000000001

   33    3.1  1.5 -1.5  -0.052281773  -0.003299232  -0.000761326  -0.007638182   0.000000129   0.003071267   0.000000001  -0.019236292
                        -0.034427917  -0.002172577  -0.014599401  -0.146457917  -0.000000004  -0.057930445  -0.000000000   0.029331138

   34    4.1  1.5 -1.5   0.005737984  -0.090927801   0.010804255  -0.001077001   0.152837638  -0.000000013   0.006838328  -0.000000001
                         0.000000592  -0.000009591   0.000003573  -0.000000274   0.000006412   0.000000146   0.000000039   0.000000000

   35    5.1  1.5 -1.5  -0.014266005  -0.000900254  -0.015394290  -0.154432072  -0.000000004  -0.053642122  -0.000000001   0.040104373
                         0.021661806   0.001366969   0.000802765   0.008053889  -0.000000129  -0.002843488  -0.000000002   0.026301548

   36    6.1  1.5 -1.5   0.035361753   0.002231495  -0.000818147  -0.008207510   0.000000007  -0.004308731   0.000000001  -0.028219513
                         0.023285885   0.001469460  -0.015693773  -0.157436436  -0.000000000   0.081116216  -0.000000000   0.043028934

   37    7.1  1.5 -1.5  -0.002124668   0.033668784  -0.069398569   0.006917873  -0.007172015   0.000000004   0.078088917   0.000000002
                        -0.000000183   0.000002862  -0.000001038   0.000000080  -0.000001862  -0.000000042   0.000000054  -0.000000001

   38    8.1  1.5 -1.5   0.000000259   0.000000016   0.000675604   0.006777503   0.000000002   0.058932791   0.000000002  -0.035163384
                        -0.000000394  -0.000000025  -0.000035329  -0.000354734   0.000000058   0.003127639   0.000000003  -0.023060651

   39    9.1  1.5 -1.5   0.000000198   0.000000013   0.000035360   0.000355052  -0.000000058  -0.003127611   0.000000002  -0.022164283
                         0.000000131   0.000000008   0.000676213   0.006783610   0.000000002   0.058932266  -0.000000002   0.033796728

   40   10.1  1.5 -1.5   0.000000033  -0.000000527  -0.101710525   0.010138833   0.011818127   0.000000004   0.188282798   0.000000003
                         0.000000000  -0.000000000  -0.000001019   0.000000078  -0.000001828  -0.000000042   0.000000139  -0.000000002

   41    1.1  0.5  0.5   0.000001594  -0.000025783  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000143  -0.000000004
                        -0.014995133   0.237622262   0.000003318  -0.000000331   0.000000011  -0.000000000  -0.480275161  -0.000000006

   42    2.1  0.5  0.5  -0.064833353  -0.004091306  -0.000000502  -0.000005038   0.000000000  -0.000000155   0.000000002  -0.189139702
                         0.098426038   0.006211218   0.000000026   0.000000263  -0.000000000  -0.000000008   0.000000006  -0.124044190

   43    3.1  0.5  0.5  -0.291795564  -0.018413662   0.000000004   0.000000039   0.000000000   0.000000181   0.000000003  -0.189795488
                        -0.192143537  -0.012125244   0.000000075   0.000000754   0.000000000  -0.000003412  -0.000000003   0.289399222

   44    4.1  0.5  0.5  -0.029875641   0.473428140   0.000002510  -0.000000250   0.000010670  -0.000000000  -0.005670721  -0.000000006
                        -0.000001982   0.000032126   0.000000000  -0.000000000   0.000000001   0.000000000   0.000000273   0.000000004

   45    5.1  0.5  0.5  -0.387038962  -0.024423968  -0.000000037  -0.000000368   0.000000000  -0.000000065   0.000000006   0.000567113
                        -0.254836479  -0.016081470  -0.000000704  -0.000007066  -0.000000000   0.000001216  -0.000000005  -0.000862763

   46    6.1  0.5  0.5  -0.005948571   0.094265080   0.000000711  -0.000000071  -0.000000496  -0.000000000   0.572515628   0.000000013
                        -0.000000872   0.000014677   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000921  -0.000000007

   47    7.1  0.5  0.5  -0.311794290  -0.019675779   0.000000087   0.000000868  -0.000000000  -0.000000971   0.000000007  -0.230999811
                         0.473514065   0.029880996  -0.000000005  -0.000000045  -0.000000000  -0.000000051   0.000000012  -0.151495141

   48    8.1  0.5  0.5  -0.000000910  -0.000000057  -0.001760745  -0.017666774   0.000000598   0.024313676  -0.000000005   0.095527374
                        -0.000000599  -0.000000038  -0.033753787  -0.338610376  -0.000000020  -0.458254826   0.000000002  -0.145658998

   49    9.1  0.5  0.5  -0.000000565  -0.000000036   0.022490246   0.225617212  -0.000000012  -0.523810868  -0.000000001   0.143151861
                         0.000000858   0.000000054  -0.001171756  -0.011752735  -0.000000366  -0.027805809  -0.000000002   0.093882983

   50   10.1  0.5  0.5   0.000000000  -0.000000000  -0.000006000   0.000000460  -0.000010762  -0.000000245  -0.000000498   0.000000002
                        -0.000000018   0.000000289   0.566457168  -0.056466278  -0.051347760  -0.000000021   0.124192445   0.000000004

   51   11.1  0.5  0.5  -0.000000000   0.000000000  -0.000013445   0.000001031  -0.000024126  -0.000000549   0.000000112   0.000000002
                         0.000000178  -0.000002820   0.051092406  -0.005093050   0.569246968  -0.000000047  -0.000527042   0.000000002

   52   12.1  0.5  0.5  -0.000000080   0.000001269   0.564975308  -0.056318561  -0.065648165  -0.000000020   0.048527987  -0.000000001
                        -0.000000000   0.000000000   0.000005660  -0.000000434   0.000010152   0.000000231  -0.000000373   0.000000000

   53    1.1  0.5 -0.5  -0.198461074  -0.012523852   0.000000017   0.000000173  -0.000000000  -0.000000001   0.000000007  -0.263388110
                        -0.130681071  -0.008246646   0.000000330   0.000003313   0.000000000   0.000000011  -0.000000003   0.401610426

   54    2.1  0.5 -0.5  -0.007437608   0.117860293  -0.000005045   0.000000503  -0.000000155  -0.000000000   0.226187506   0.000000005
                         0.000000356  -0.000006051   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000674  -0.000000004

   55    3.1  0.5 -0.5  -0.000002090   0.000034308  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000870   0.000000001
                         0.022047324  -0.349376286  -0.000000755   0.000000075   0.000003417  -0.000000000   0.346084147   0.000000004

   56    4.1  0.5 -0.5   0.260379287   0.016431250  -0.000000250  -0.000002506  -0.000000000  -0.000010655   0.000000003  -0.004741759
                        -0.395394527  -0.024951312   0.000000013   0.000000131  -0.000000000  -0.000000565   0.000000007  -0.003110111

   57    5.1  0.5 -0.5  -0.000004034   0.000065198  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000001077   0.000000003
                         0.029242843  -0.463401321   0.000007076  -0.000000705  -0.000001218  -0.000000000  -0.001032461   0.000000008

   58    6.1  0.5 -0.5   0.051837646   0.003271246  -0.000000071  -0.000000710  -0.000000000   0.000000495  -0.000000007   0.478743335
                        -0.078732229  -0.004968345   0.000000004   0.000000037   0.000000000   0.000000026  -0.000000013   0.313972871

   59    7.1  0.5 -0.5  -0.035777230   0.566949067   0.000000869  -0.000000087  -0.000000972   0.000000000   0.276245706   0.000000013
                        -0.000003900   0.000062760  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000001116  -0.000000006

   60    8.1  0.5 -0.5   0.000000000  -0.000000000  -0.000014601   0.000001120  -0.000026199  -0.000000596   0.000000071  -0.000000003
                         0.000000069  -0.000001090   0.339070939  -0.033799680   0.458899378  -0.000000051  -0.174189617  -0.000000004

   61    9.1  0.5 -0.5  -0.000000065   0.000001027   0.225923113  -0.022520750  -0.524548366   0.000000032  -0.171191325  -0.000000002
                        -0.000000000   0.000000000  -0.000008941   0.000000686  -0.000016046  -0.000000365  -0.000000185   0.000000001

   62   10.1  0.5 -0.5  -0.000000242  -0.000000015   0.002940120   0.029496019  -0.000000246   0.002734212  -0.000000004   0.068108037
                        -0.000000159  -0.000000010   0.056389682   0.565688703   0.000000008  -0.051274912   0.000000003  -0.103851136

   63   11.1  0.5 -0.5   0.000002355   0.000000149   0.000266176   0.002673322  -0.000000551  -0.030168537  -0.000000002  -0.000288942
                         0.000001551   0.000000098   0.005086090   0.051022421   0.000000018   0.568446981   0.000000001   0.000440778

   64   12.1  0.5 -0.5   0.000000698   0.000000044  -0.056242167  -0.564208870  -0.000000008   0.065555221   0.000000001   0.040579345
                        -0.000001060  -0.000000067   0.002932404   0.029418533  -0.000000232   0.003492090   0.000000001   0.026613574


   Nr   State  S   Sz       49            50            51            52            53            54            55            56

    1    1.1  1.5  1.5   0.024373342   0.000095590  -0.052724494   0.000219570   0.000000000   0.014120612   0.000904020   0.017796099
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000027231  -0.006941994   0.000155375   0.037308733  -0.000087526   0.000000000   0.003651142  -0.000185484
                        -0.000042276   0.010778565   0.000255353   0.061317282   0.000002519  -0.000000000   0.000046962  -0.000002388

    3    3.1  1.5  1.5   0.000000578   0.000000006   0.000000311   0.000000004   0.000000000  -0.000000001  -0.000000071  -0.000001323
                         0.043919986   0.000172258   0.045584230  -0.000189835  -0.000000001   0.011451726   0.000669717   0.013183988

    4    4.1  1.5  1.5   0.000037221  -0.009489717  -0.000255384  -0.061324758  -0.000087675   0.000000000  -0.000059894   0.000003045
                         0.000023976  -0.006111933   0.000155393   0.037313291  -0.003046089   0.000000000   0.004681144  -0.000237806

    5    5.1  1.5  1.5   0.008835800   0.000034652  -0.052434041   0.000218361   0.000000001  -0.019738002   0.000343389   0.006759668
                         0.000000286   0.000000002   0.000000081   0.000000002   0.000000000   0.000000005  -0.000000026  -0.000000500

    6    6.1  1.5  1.5  -0.000000231  -0.000000003  -0.000000188  -0.000000002   0.000000000   0.000000005   0.000000036   0.000000664
                        -0.021390524  -0.000083897  -0.041955192   0.000174721  -0.000000001   0.021435261  -0.000003196  -0.000063051

    7    7.1  1.5  1.5  -0.000053211   0.013567511   0.000012275   0.002947725  -0.000861099  -0.000000000  -0.000128480   0.000006525
                        -0.000034271   0.008737939  -0.000007471  -0.001793460  -0.029917043  -0.000000001   0.010237116  -0.000520027

    8    8.1  1.5  1.5  -0.195412693  -0.000766411   0.103313961  -0.000430249   0.000000021  -0.217154189   0.031954125   0.629036573
                         0.000000732   0.000000012   0.000000676   0.000000005   0.000000006   0.000000172   0.000000919   0.000017141

    9    9.1  1.5  1.5  -0.000001517  -0.000000020  -0.000001086  -0.000000010  -0.000000005  -0.000000174  -0.000001630  -0.000030490
                        -0.219270609  -0.000859990  -0.030251504   0.000125981   0.000000014  -0.218379907   0.029353064   0.577836174

   10   10.1  1.5  1.5  -0.000118406   0.030190697  -0.000031022  -0.007448586   0.015670229   0.000000005   0.002421668  -0.000123000
                        -0.000076260   0.019443783   0.000018871   0.004532349   0.544428514   0.000000018  -0.192793235   0.009793575

   11    1.1  1.5  0.5  -0.000157213   0.040085010  -0.000060655  -0.014564674   0.000717422   0.000000000  -0.000210454   0.000010689
                        -0.000101250   0.025815250   0.000036905   0.008862201   0.024925454   0.000000001   0.016741953  -0.000850466

   12    2.1  1.5  0.5  -0.000000257  -0.000000004  -0.000000247  -0.000000002   0.000000000   0.000000009   0.000000044   0.000000820
                        -0.058763409  -0.000230472   0.009982262  -0.000041571  -0.000000001   0.020177304  -0.001060564  -0.020877902

   13    3.1  1.5  0.5   0.000091229  -0.023259829   0.000007401   0.001776779  -0.026075196  -0.000000001  -0.012303933   0.000625019
                        -0.000141651   0.036116916   0.000012161   0.002920523   0.000750515   0.000000000  -0.000154415   0.000007842

   14    4.1  1.5  0.5  -0.070691987  -0.000277256   0.006308424  -0.000026271  -0.000000000  -0.002227644  -0.001440230  -0.028351900
                         0.000000476   0.000000006   0.000000317   0.000000003  -0.000000000  -0.000000005  -0.000000065  -0.000001219

   15    5.1  1.5  0.5   0.000212421  -0.054161499   0.000007326   0.001758467   0.000307103  -0.000000000   0.000334904  -0.000017009
                         0.000136808  -0.034881081  -0.000004453  -0.001070305   0.010669477   0.000000000  -0.026672334   0.001354910

   16    6.1  1.5  0.5   0.000141861  -0.036169787  -0.000045412  -0.010905437   0.007535197  -0.000000000  -0.029389387   0.001492935
                        -0.000220269   0.056162729  -0.000074640  -0.017922557  -0.000216890   0.000000000  -0.000369311   0.000018758

   17    7.1  1.5  0.5  -0.004534328  -0.000017788  -0.065138380   0.000271267   0.000000000   0.000299062   0.000309139   0.006085401
                         0.000000332   0.000000003   0.000000167   0.000000002   0.000000000   0.000000000  -0.000000039  -0.000000735

   18    8.1  1.5  0.5   0.000170686  -0.043519419  -0.000384628  -0.092360504  -0.013540109  -0.000000006  -0.001526499   0.000077498
                         0.000109936  -0.028028314   0.000234040   0.056196901  -0.470422040  -0.000000021   0.122590569  -0.006227254

   19    9.1  1.5  0.5  -0.000022170   0.005654399   0.000266729   0.064048152   0.472547900   0.000000010  -0.211273568   0.010732488
                         0.000034431  -0.008780311   0.000438366   0.105263463  -0.013601295  -0.000000003  -0.002667155   0.000135503

   20   10.1  1.5  0.5   0.041321862   0.000162080   0.231336718  -0.000963397   0.000000012   0.002125916   0.004505328   0.088684825
                        -0.000001360  -0.000000014  -0.000000711  -0.000000009   0.000000002  -0.000000002  -0.000001232  -0.000023122

   21    1.1  1.5 -0.5   0.047678456   0.000186996  -0.017048998   0.000071000   0.000000001  -0.024935776   0.000850533   0.016743276
                        -0.000000122  -0.000000003  -0.000000178  -0.000000001   0.000000000   0.000000009   0.000000028   0.000000518

   22    2.1  1.5 -0.5  -0.000124791   0.031817230   0.000021607   0.005188979   0.020168952   0.000000001   0.020876255  -0.001060480
                         0.000193764  -0.049404475   0.000035515   0.008527606  -0.000580515  -0.000000000   0.000262251  -0.000013320

   23    3.1  1.5 -0.5  -0.000000178  -0.000000004  -0.000000202  -0.000000001   0.000000000   0.000000008   0.000000034   0.000000632
                        -0.042958716  -0.000168486  -0.003418537   0.000014236  -0.000000001   0.026085994  -0.000625068  -0.012304902

   24    4.1  1.5 -0.5  -0.000233097   0.059433162  -0.000022445  -0.005389051  -0.000064097   0.000000000  -0.000356027   0.000018082
                        -0.000150123   0.038276054   0.000013653   0.003279383  -0.002226721   0.000000000   0.028349664  -0.001440116

   25    5.1  1.5 -0.5  -0.064421718  -0.000252664   0.002058582  -0.000008573   0.000000000  -0.010673896  -0.001355016  -0.026674436
                         0.000000496   0.000000006   0.000000300   0.000000003  -0.000000000  -0.000000003  -0.000000064  -0.000001206

   26    6.1  1.5 -0.5  -0.000000408  -0.000000005  -0.000000268  -0.000000003   0.000000000   0.000000004   0.000000055   0.000001037
                        -0.066801988  -0.000261999   0.020979672  -0.000087369  -0.000000000  -0.007538318  -0.001493052  -0.029391708

   27    7.1  1.5 -0.5  -0.000014953   0.003812001   0.000231740   0.055647070   0.000008605  -0.000000000   0.000077414  -0.000003934
                        -0.000009634   0.002455358  -0.000141006  -0.033858710   0.000298938  -0.000000000  -0.006084909   0.000309114

   28    8.1  1.5 -0.5  -0.051764140  -0.000203026  -0.108113618   0.000450237  -0.000000021   0.470616861   0.006227736   0.122600074
                         0.000001193   0.000000011   0.000000501   0.000000008  -0.000000005  -0.000000068   0.000000974   0.000018319

   29    9.1  1.5 -0.5  -0.000000168  -0.000000004  -0.000000210  -0.000000001  -0.000000003  -0.000000070  -0.000000258  -0.000004805
                         0.010443471   0.000040951  -0.123217541   0.000513137   0.000000010  -0.472743602  -0.010733343  -0.211290399

   30   10.1  1.5 -0.5   0.000136259  -0.034740111  -0.000823014  -0.197628716   0.000061163  -0.000000003   0.001140585  -0.000058001
                         0.000087769  -0.022374560   0.000500780   0.120247942   0.002125036  -0.000000012  -0.088677500   0.004504955

   31    1.1  1.5 -1.5  -0.000080366   0.020491587  -0.000187576  -0.045041940  -0.000406266   0.000000000  -0.000224239   0.000011391
                        -0.000051756   0.013196766   0.000114132   0.027406129  -0.014114766   0.000000000   0.017794686  -0.000903949

   32    2.1  1.5 -1.5   0.000000422   0.000000004   0.000000221   0.000000003   0.000000000  -0.000000000  -0.000000051  -0.000000952
                         0.012820637   0.000050287   0.071775697  -0.000298908  -0.000000000  -0.000087562  -0.000185499  -0.003651444

   33    3.1  1.5 -1.5  -0.000093273   0.023780638  -0.000098679  -0.023694363  -0.011446985  -0.000000001   0.013182958  -0.000669664
                         0.000144821  -0.036924875  -0.000162172  -0.038942254   0.000329480   0.000000000   0.000164802  -0.000008368

   34    4.1  1.5 -1.5   0.011287624   0.000044275   0.071784453  -0.000298945  -0.000000000  -0.003047350  -0.000237825  -0.004681527
                        -0.000000396  -0.000000004  -0.000000213  -0.000000003  -0.000000000   0.000000001   0.000000048   0.000000905

   35    5.1  1.5 -1.5  -0.000029134   0.007428745  -0.000186542  -0.044793851   0.000567879   0.000000000  -0.000085675   0.000004353
                        -0.000018760   0.004783838   0.000113505   0.027255082   0.019729831   0.000000001   0.006759125  -0.000343361

   36    6.1  1.5 -1.5   0.000045429  -0.011581935   0.000090821   0.021808098  -0.021426387  -0.000000001  -0.000063054   0.000003196
                        -0.000070534   0.017983696   0.000149262   0.035841945   0.000616711   0.000000000  -0.000000131   0.000000005

   37    7.1  1.5 -1.5  -0.016137811  -0.000063293  -0.003450447   0.000014369   0.000000001  -0.029929433  -0.000520068  -0.010237922
                         0.000000287   0.000000002   0.000000091   0.000000002   0.000000000   0.000000004  -0.000000028  -0.000000523

   38    8.1  1.5 -1.5   0.000644344  -0.164290424   0.000367560   0.088259599   0.006247598   0.000000007  -0.007908998   0.000401717
                         0.000414978  -0.105805374  -0.000223639  -0.053703051   0.217064297   0.000000020   0.628986852  -0.031951600

   39    9.1  1.5 -1.5   0.000465652  -0.118723727   0.000065494   0.015723768   0.218289508   0.000000014   0.577790682  -0.029350755
                        -0.000723015   0.184348249   0.000107619   0.025844083  -0.006282862  -0.000000005   0.007250504  -0.000368232

   40   10.1  1.5 -1.5  -0.035910150  -0.000140839   0.008719152  -0.000036310  -0.000000018   0.544653985   0.009794347   0.192808443
                         0.000000592   0.000000004   0.000000168   0.000000004  -0.000000005  -0.000000079   0.000000413   0.000007804

   41    1.1  0.5  0.5   0.000002912   0.000000029   0.000001456   0.000000019   0.000000000   0.000000002  -0.000000180  -0.000003383
                         0.332245141   0.001303071  -0.065224692   0.000271626  -0.000000002   0.089324575   0.004306005   0.084766614

   42    2.1  0.5  0.5  -0.001411503   0.359891034   0.001184716   0.284486756  -0.000989523  -0.000000000  -0.000888982   0.000045143
                        -0.000909085   0.231778849  -0.000720888  -0.173095005  -0.034378358  -0.000000002   0.071024900  -0.003607915

   43    3.1  0.5  0.5   0.000438887  -0.111893546   0.000925582   0.222251211  -0.077467114  -0.000000002  -0.003581149   0.000181880
                        -0.000681427   0.173740436   0.001521159   0.365273222   0.002229719   0.000000001  -0.000041425   0.000002094

   44    4.1  0.5  0.5   0.103641989   0.000406522   0.578378017  -0.002408643  -0.000000002  -0.000675072  -0.000785616  -0.015464413
                        -0.000003400  -0.000000035  -0.000001779  -0.000000023  -0.000000000   0.000000000   0.000000215   0.000004039

   45    5.1  0.5  0.5   0.001124217  -0.286637619  -0.000552042  -0.132564593  -0.017090447  -0.000000003  -0.120991390   0.006146180
                        -0.001745591   0.445078962  -0.000907312  -0.217866096   0.000491887   0.000000001  -0.001521132   0.000077262

   46    6.1  0.5  0.5   0.131203418   0.000514589  -0.017898206   0.000074538   0.000000005  -0.123335530   0.000483908   0.009526016
                         0.000000406  -0.000000007  -0.000000510   0.000000002   0.000000001   0.000000029   0.000000018   0.000000327

   47    7.1  0.5  0.5   0.001323651  -0.337496411   0.001168316   0.280541650  -0.002041281  -0.000000002   0.001153589  -0.000058596
                         0.000852465  -0.217351383  -0.000710866  -0.170699110  -0.070920706  -0.000000005  -0.091669645   0.004656692

   48    8.1  0.5  0.5   0.000116412  -0.029679433   0.000247842   0.059511166   0.209024780   0.000000009  -0.054479004   0.002767379
                        -0.000180741   0.046083103   0.000407312   0.097807551  -0.006016339  -0.000000003  -0.000678374   0.000034440

   49    9.1  0.5  0.5   0.000036450  -0.009295122   0.000464214   0.111470122   0.006043524   0.000000001   0.001185197  -0.000060213
                         0.000023469  -0.005985931  -0.000282456  -0.067824628   0.209969297   0.000000004  -0.093883176   0.004769172

   50   10.1  0.5  0.5   0.000000728   0.000000013   0.000000714   0.000000005  -0.000000003  -0.000000082  -0.000000399  -0.000007437
                         0.172676828   0.000677244  -0.034832185   0.000145058   0.000000010  -0.188510149   0.009952177   0.195915119

   51   11.1  0.5  0.5  -0.000001266  -0.000000013  -0.000000670  -0.000000008  -0.000000001   0.000000003   0.000000484   0.000009088
                        -0.042254865  -0.000165738  -0.211357656   0.000880195   0.000000004   0.005561829   0.001483946   0.029210335

   52   12.1  0.5  0.5  -0.206632299  -0.000810417   0.037502311  -0.000156178  -0.000000003  -0.020994922  -0.013680774  -0.269315168
                         0.000001303   0.000000017   0.000000885   0.000000009  -0.000000001  -0.000000051  -0.000000570  -0.000010666

   53    1.1  0.5 -0.5  -0.000705563   0.179894126   0.000141174   0.033904961  -0.089287597  -0.000000002   0.084759927  -0.004305666
                         0.001095525  -0.279329442   0.000232057   0.055719961   0.002569967   0.000000001   0.001064714  -0.000054077

   54    2.1  0.5 -0.5  -0.428068909  -0.001678921  -0.333008401   0.001386807   0.000000002  -0.034392596  -0.003608198  -0.071030464
                         0.000004877   0.000000054   0.000002767   0.000000033   0.000000000  -0.000000010  -0.000000322  -0.000006034

   55    3.1  0.5 -0.5   0.000002648   0.000000035   0.000001884   0.000000018  -0.000000001  -0.000000020  -0.000000198  -0.000003703
                         0.206654070   0.000810534   0.427574704  -0.001780625   0.000000002  -0.077499196   0.000181892   0.003581388

   56    4.1  0.5 -0.5  -0.000341759   0.087133888   0.002057665   0.494102736   0.000019422  -0.000000000   0.000198896  -0.000010114
                        -0.000220138   0.056119048  -0.001252029  -0.300638683   0.000674793  -0.000000002  -0.015463136   0.000785551

   57    5.1  0.5 -0.5   0.000002338   0.000000035   0.000001899   0.000000016  -0.000000001  -0.000000028  -0.000000189  -0.000003534
                         0.529392489   0.002076283  -0.255027463   0.001062057   0.000000003  -0.017097524   0.006146666   0.121000951

   58    6.1  0.5 -0.5  -0.000432631   0.110307880  -0.000063676  -0.015289971   0.003548473   0.000000001  -0.000119705   0.000006079
                        -0.000278626   0.071038781   0.000038747   0.009303902   0.123284473   0.000000005   0.009525264  -0.000483870

   59    7.1  0.5 -0.5   0.401429261   0.001574404  -0.328392758   0.001367586   0.000000005  -0.070950077   0.004657061   0.091676903
                        -0.000000564  -0.000000018  -0.000001108  -0.000000004   0.000000001   0.000000033   0.000000085   0.000001580

   60    8.1  0.5 -0.5   0.000001263   0.000000011   0.000000531   0.000000008   0.000000002   0.000000030  -0.000000433  -0.000008140
                         0.054813513   0.000214986   0.114489719  -0.000476790  -0.000000010   0.209111346   0.002767593   0.054483228

   61    9.1  0.5 -0.5   0.011055798   0.000043352  -0.130482828   0.000543393  -0.000000004   0.210056254   0.004769552   0.093890655
                         0.000000178   0.000000004   0.000000222   0.000000001  -0.000000001  -0.000000031  -0.000000115  -0.000002135

   62   10.1  0.5 -0.5  -0.000366700   0.093495205   0.000075397   0.018106338   0.188432113   0.000000010   0.195899659  -0.009951392
                         0.000569378  -0.145175526   0.000123924   0.029756371  -0.005423567  -0.000000003   0.002461181  -0.000125003

   63   11.1  0.5 -0.5   0.000089749  -0.022879649   0.000457531   0.109862884  -0.005559527   0.000000004   0.029207904  -0.001483823
                        -0.000139335   0.035524573   0.000751936   0.180560808   0.000160017  -0.000000001   0.000377149  -0.000019183

   64   12.1  0.5 -0.5   0.000681339  -0.173722860   0.000133426   0.032037341   0.000604099  -0.000000001   0.003382824  -0.000171814
                         0.000438809  -0.111880627  -0.000081173  -0.019494413   0.020986229  -0.000000003  -0.269293921   0.013679695


   Nr   State  S   Sz       57            58            59            60            61            62            63            64

    1    1.1  1.5  1.5   0.016705982  -0.000351149   0.009640527  -0.000734994   0.000197384  -0.006329843  -0.000000000   0.000000001
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000450546  -0.021435329   0.000217627   0.002854413  -0.004979051  -0.000155252   0.000000027  -0.000000000
                         0.000408406   0.019429898   0.000610536   0.008008077   0.002946927   0.000091894  -0.000000001  -0.000000000

    3    3.1  1.5  1.5   0.000001413  -0.000000042  -0.000000060  -0.000000001  -0.000000001  -0.000000092   0.000000000  -0.000000001
                        -0.023073483   0.000484981   0.001122748  -0.000085597   0.000328940  -0.010548900   0.000000000   0.000000014

    4    4.1  1.5  1.5  -0.000404427  -0.019240567  -0.000625812  -0.008208451  -0.002741636  -0.000085492   0.000000002   0.000000000
                        -0.000446157  -0.021226516   0.000223072   0.002925838  -0.004632208  -0.000144437   0.000000037  -0.000000000

    5    5.1  1.5  1.5   0.019617449  -0.000412343  -0.001624788   0.000123872  -0.000339623   0.010891512  -0.000000000  -0.000000172
                         0.000000530  -0.000000016  -0.000000060  -0.000000001  -0.000000001  -0.000000092   0.000000000  -0.000000014

    6    6.1  1.5  1.5  -0.000000713   0.000000021  -0.000000003  -0.000000000  -0.000000000  -0.000000005  -0.000000000   0.000000013
                         0.017857459  -0.000375348   0.009711525  -0.000740407   0.000214727  -0.006886013  -0.000000000  -0.000000157

    7    7.1  1.5  1.5   0.000060392   0.002873081  -0.000124388  -0.001631529   0.002221754   0.000069281  -0.000000001  -0.000000000
                         0.000066605   0.003169021   0.000044338   0.000581581   0.003753719   0.000117050  -0.000000014   0.000000000

    8    8.1  1.5  1.5   0.127168544  -0.002673114   0.365508999  -0.027866489  -0.007755790   0.248729888  -0.000054019  -0.498409496
                        -0.000018442   0.000000557  -0.000003004  -0.000000037  -0.000000052  -0.000004573   0.000000764  -0.039841420

    9    9.1  1.5  1.5   0.000032694  -0.000000983  -0.000003004  -0.000000037  -0.000000052  -0.000004573   0.000000764  -0.039841501
                        -0.278497766   0.005853641  -0.365492579   0.027865237   0.007756575  -0.248755061   0.000054019   0.498410503

   10   10.1  1.5  1.5  -0.000367641  -0.017489490   0.030864663   0.404835352  -0.323224475  -0.010079118   0.000000052   0.000000000
                        -0.000405252  -0.019283706  -0.011001712  -0.144306268  -0.546095296  -0.017028630   0.000000989  -0.000000000

   11    1.1  1.5  0.5  -0.000022760  -0.001082874  -0.000277065  -0.003634116  -0.004070499  -0.000126930  -0.000000000  -0.000000000
                        -0.000025136  -0.001195561   0.000098761   0.001295316  -0.006877315  -0.000214447  -0.000000004   0.000000000

   12    2.1  1.5  0.5  -0.000000883   0.000000027   0.000000029   0.000000000   0.000000001   0.000000044  -0.000000000   0.000000001
                         0.002579664  -0.000054217  -0.005772870   0.000440123  -0.000265791   0.008523675  -0.000000000  -0.000000008

   13    3.1  1.5  0.5  -0.000087030  -0.004140813   0.000254344   0.003336043  -0.000624974  -0.000019482   0.000000006  -0.000000000
                         0.000078910   0.003754065   0.000713544   0.009359183   0.000369837   0.000011532  -0.000000000  -0.000000000

   14    4.1  1.5  0.5   0.006179746  -0.000129886   0.006866314  -0.000523487   0.000240629  -0.007716731   0.000000000   0.000000048
                         0.000001306  -0.000000039   0.000000020   0.000000000   0.000000000   0.000000030  -0.000000000   0.000000004

   15    5.1  1.5  0.5  -0.000103541  -0.004925832  -0.000297735  -0.003905234  -0.004372513  -0.000136348  -0.000000003  -0.000000000
                        -0.000114179  -0.005432709   0.000106129   0.001391951  -0.007387583  -0.000230358  -0.000000066   0.000000000

   16    6.1  1.5  0.5  -0.000004546  -0.000216819  -0.000213179  -0.002796112   0.000524945   0.000016364   0.000000094  -0.000000000
                         0.000004165   0.000198019  -0.000598059  -0.007844421  -0.000310644  -0.000009687  -0.000000005  -0.000000000

   17    7.1  1.5  0.5   0.025394535  -0.000533772   0.010785066  -0.000822256  -0.000267062   0.008564721   0.000000000   0.000000051
                         0.000000784  -0.000000023  -0.000000096  -0.000000001  -0.000000002  -0.000000146  -0.000000000   0.000000004

   18    8.1  1.5  0.5   0.005278306   0.251114107   0.048128024   0.631270037  -0.040328878  -0.001257596  -0.015123544  -0.000001294
                         0.005822647   0.277023038  -0.017155312  -0.225014487  -0.068129148  -0.002124788  -0.288277760   0.000031164

   19    9.1  1.5  0.5   0.005120837   0.243627777  -0.004451317  -0.058379873   0.562460556   0.017538591  -0.288279474   0.000031164
                        -0.004641630  -0.220826047  -0.012487706  -0.163794967  -0.332906392  -0.010381011   0.015123634   0.000001294

   20   10.1  1.5  0.5   0.702672913  -0.014769577   0.211036258  -0.016089452  -0.004478277   0.143619318   0.000062376   0.575514745
                         0.000024687  -0.000000738  -0.000001735  -0.000000021  -0.000000030  -0.000002641  -0.000000882   0.046004992

   21    1.1  1.5 -0.5   0.001613066  -0.000033909  -0.003858062   0.000294140   0.000249196  -0.007991647   0.000000000   0.000000004
                        -0.000000561   0.000000017   0.000000065   0.000000001   0.000000001   0.000000098  -0.000000000   0.000000000

   22    2.1  1.5 -0.5   0.000040154   0.001910782  -0.000147775  -0.001938317  -0.007335127  -0.000228728  -0.000000008   0.000000000
                        -0.000036431  -0.001733084  -0.000414573  -0.005437734   0.004341536   0.000135382   0.000000000   0.000000000

   23    3.1  1.5 -0.5  -0.000000682   0.000000021  -0.000000045  -0.000000001  -0.000000001  -0.000000068   0.000000000   0.000000001
                         0.005589216  -0.000117477  -0.009935969   0.000757520   0.000022640  -0.000726203  -0.000000000  -0.000000006

   24    4.1  1.5 -0.5   0.000087257   0.004151111  -0.000493098  -0.006467705   0.003930528   0.000122566   0.000000003   0.000000000
                         0.000096212   0.004577941   0.000175765   0.002305441   0.006640699   0.000207075   0.000000048  -0.000000000

   25    5.1  1.5 -0.5   0.007333358  -0.000154135  -0.004145887   0.000316084   0.000267685  -0.008584594   0.000000000   0.000000066
                         0.000001290  -0.000000039   0.000000069   0.000000001   0.000000001   0.000000106  -0.000000000   0.000000005

   26    6.1  1.5 -0.5  -0.000001111   0.000000033   0.000000037   0.000000000   0.000000001   0.000000057  -0.000000000   0.000000008
                         0.000293634  -0.000006165   0.008327856  -0.000634917  -0.000019016   0.000609973  -0.000000000  -0.000000094

   27    7.1  1.5 -0.5   0.000358483   0.017054835  -0.000774522  -0.010159005  -0.004362356  -0.000136031   0.000000003   0.000000000
                         0.000395477   0.018815287   0.000276080   0.003621086  -0.007370501  -0.000229821   0.000000051  -0.000000000

   28    8.1  1.5 -0.5  -0.373898458   0.007858990   0.670174141  -0.051094143   0.002469063  -0.079170695   0.000031188   0.287756282
                        -0.000019497   0.000000580  -0.000002217  -0.000000027  -0.000000038  -0.000003378  -0.000000441   0.023002409

   29    9.1  1.5 -0.5   0.000005191  -0.000000158   0.000004721   0.000000058   0.000000082   0.000007183   0.000000441  -0.023002546
                        -0.328813987   0.006911418   0.173887896  -0.013257339  -0.020380568   0.653596621   0.000031188   0.287757993

   30   10.1  1.5 -0.5   0.009919378   0.471913604  -0.015155423  -0.198785796  -0.073150917  -0.002281058   0.030247202   0.000002588
                         0.010942868   0.520621524   0.005402188   0.070855556  -0.123593899  -0.003853795   0.576557706  -0.000062329

   31    1.1  1.5 -1.5  -0.000235822  -0.011219267   0.000692326   0.009080876  -0.003224136  -0.000100538   0.000000000  -0.000000000
                        -0.000260180  -0.012378122  -0.000246780  -0.003236888  -0.005447188  -0.000169860  -0.000000001  -0.000000000

   32    2.1  1.5 -1.5   0.000001016  -0.000000030   0.000000070   0.000000001   0.000000001   0.000000106   0.000000000  -0.000000002
                        -0.028930853   0.000608102   0.008501586  -0.000648163  -0.000180410   0.005785787   0.000000000   0.000000027

   33    3.1  1.5 -1.5   0.000359313   0.017095106  -0.000028739  -0.000377029  -0.009077972  -0.000283071  -0.000000014   0.000000000
                        -0.000325731  -0.015496547  -0.000080628  -0.001057550   0.005373054   0.000167548   0.000000001   0.000000000

   34    4.1  1.5 -1.5  -0.028648986   0.000602177   0.008714310  -0.000664381  -0.000167842   0.005382743   0.000000000   0.000000037
                        -0.000000967   0.000000029  -0.000000068  -0.000000001  -0.000000001  -0.000000104  -0.000000000   0.000000003

   35    5.1  1.5 -1.5  -0.000276930  -0.013174918  -0.000116682  -0.001530446   0.005547565   0.000172990   0.000000009   0.000000000
                        -0.000305511  -0.014534987   0.000041590   0.000545593   0.009372810   0.000292265   0.000000172  -0.000000000

   36    6.1  1.5 -1.5  -0.000278095  -0.013230817  -0.000248598  -0.003260729  -0.005925806  -0.000184784   0.000000157  -0.000000000
                         0.000252089   0.011993094  -0.000697425  -0.009147752   0.003507420   0.000109372  -0.000000008  -0.000000000

   37    7.1  1.5 -1.5   0.004277533  -0.000089908   0.001732086  -0.000132054   0.000136017  -0.004361949  -0.000000000  -0.000000014
                         0.000000554  -0.000000016   0.000000020   0.000000000   0.000000000   0.000000030   0.000000000  -0.000000001

   38    8.1  1.5 -1.5  -0.001794775  -0.085389142   0.026248776   0.344291535   0.126687827   0.003950494   0.026194799   0.000002241
                        -0.001980990  -0.094236574  -0.009356442  -0.122719876   0.214048479   0.006674270   0.499312725  -0.000053978

   39    9.1  1.5 -1.5   0.004336534   0.206328041   0.009356021   0.122714363  -0.214070142  -0.006674945  -0.499313733   0.000053978
                        -0.003931868  -0.187055472   0.026247596   0.344276068   0.126700649   0.003950894   0.026194852   0.000002241

   40   10.1  1.5 -1.5  -0.026033506   0.000547165  -0.429785950   0.032766829  -0.019787948   0.634581856   0.000000000   0.000000987
                        -0.000008261   0.000000244  -0.000002168  -0.000000026  -0.000000038  -0.000003296  -0.000000000   0.000000079

   41    1.1  0.5  0.5   0.000003609  -0.000000108  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000007
                        -0.010991151   0.000231006   0.000002121  -0.000000162   0.000000090  -0.000002899  -0.000000000  -0.000000092

   42    2.1  0.5  0.5   0.001343697   0.063925886  -0.000000042  -0.000000557  -0.000002339  -0.000000073   0.000000001   0.000000000
                         0.001482202   0.070519286   0.000000015   0.000000199  -0.000003952  -0.000000123   0.000000023  -0.000000000

   43    3.1  0.5  0.5  -0.001500290  -0.071378637  -0.000000081  -0.000001068   0.000001654   0.000000052  -0.000000085   0.000000000
                         0.001359992   0.064701439  -0.000000228  -0.000002997  -0.000000979  -0.000000031   0.000000004   0.000000000

   44    4.1  0.5  0.5  -0.122711760   0.002579295  -0.000004357   0.000000332   0.000000086  -0.000002747   0.000000000   0.000000103
                        -0.000004312   0.000000129   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000008

   45    5.1  0.5  0.5   0.000284436   0.013530185   0.000000090   0.000001185   0.000002818   0.000000088   0.000000175  -0.000000000
                        -0.000257652  -0.012258350   0.000000254   0.000003326  -0.000001668  -0.000000052  -0.000000009  -0.000000000

   46    6.1  0.5  0.5  -0.000525185   0.000011035  -0.000000242   0.000000018   0.000000003  -0.000000081   0.000000000   0.000000102
                        -0.000000374   0.000000012   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000008

   47    7.1  0.5  0.5   0.000606010   0.028831256  -0.000000222  -0.000002910   0.000000646   0.000000020   0.000000009   0.000000000
                         0.000668683   0.031811833   0.000000079   0.000001037   0.000001091   0.000000034   0.000000171  -0.000000000

   48    8.1  0.5  0.5  -0.002587170  -0.123089311   0.000937701   0.012298585  -0.065287957  -0.002035793  -0.000000144   0.000000000
                         0.002345303   0.111577228   0.002630636   0.034504705   0.038642198   0.001204978   0.000000008   0.000000000

   49    9.1  0.5  0.5   0.002062388   0.098118338   0.006022281   0.078991110   0.003123491   0.000097397   0.000000005   0.000000000
                         0.002275311   0.108249696  -0.002146653  -0.028156062   0.005278273   0.000164540   0.000000092  -0.000000000

   50   10.1  0.5  0.5   0.000008008  -0.000000242   0.000000253   0.000000003   0.000000004   0.000000384   0.000000000  -0.000000032
                        -0.017299390   0.000363571  -0.045464243   0.003466188  -0.002210929   0.070902563   0.000000000   0.000000395

   51   11.1  0.5  0.5  -0.000009705   0.000000290   0.000000566   0.000000007   0.000000010   0.000000861   0.000000000  -0.000000023
                         0.270933782  -0.005694793   0.070744985  -0.005393613  -0.001421340   0.045582764   0.000000000   0.000000285

   52   12.1  0.5  0.5   0.034126872  -0.000717256  -0.047237560   0.003601386  -0.002174885   0.069746622  -0.000000000  -0.000000060
                         0.000011429  -0.000000343  -0.000000238  -0.000000003  -0.000000004  -0.000000362   0.000000000  -0.000000005

   53    1.1  0.5 -0.5   0.000171089   0.008141355  -0.000000054  -0.000000712  -0.000002494  -0.000000078   0.000000092  -0.000000000
                        -0.000155217  -0.007384022  -0.000000152  -0.000001998   0.000001476   0.000000046  -0.000000005  -0.000000000

   54    2.1  0.5 -0.5   0.095181344  -0.002000611   0.000000592  -0.000000045  -0.000000143   0.000004592   0.000000000   0.000000023
                         0.000006449  -0.000000193  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000002

   55    3.1  0.5 -0.5   0.000003971  -0.000000119  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000007
                        -0.096338913   0.002024956  -0.000003182   0.000000243   0.000000060  -0.000001922  -0.000000000  -0.000000084

   56    4.1  0.5 -0.5   0.001732277   0.082412953  -0.000000313  -0.000004104  -0.000001399  -0.000000044  -0.000000005  -0.000000000
                         0.001911015   0.090919092   0.000000112   0.000001463  -0.000002364  -0.000000074  -0.000000103   0.000000000

   57    5.1  0.5 -0.5   0.000003795  -0.000000114  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000014
                         0.018257411  -0.000383782   0.000003531  -0.000000269   0.000000102  -0.000003275   0.000000000   0.000000174

   58    6.1  0.5 -0.5   0.000007420   0.000352976  -0.000000017  -0.000000228  -0.000000041  -0.000000001  -0.000000005  -0.000000000
                         0.000008168   0.000388880   0.000000006   0.000000081  -0.000000070  -0.000000002  -0.000000102   0.000000000

   59    7.1  0.5 -0.5   0.042932903  -0.000902433   0.000003090  -0.000000236   0.000000040  -0.000001268   0.000000000   0.000000170
                        -0.000001714   0.000000052   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000014

   60    8.1  0.5 -0.5   0.000008663  -0.000000258   0.000000614   0.000000008   0.000000011   0.000000935  -0.000000000   0.000000011
                        -0.166133850   0.003491976   0.036630996  -0.002792764  -0.002365677   0.075866572  -0.000000000  -0.000000144

   61    9.1  0.5 -0.5   0.146099984  -0.003070910  -0.083859164   0.006393434   0.000191206  -0.006133218   0.000000000   0.000000092
                         0.000002306  -0.000000070   0.000000376   0.000000005   0.000000007   0.000000573  -0.000000000   0.000000007

   62   10.1  0.5 -0.5   0.000269222   0.012812425   0.001163799   0.015265237   0.061015866   0.001902627  -0.000000396   0.000000000
                        -0.000244343  -0.011623716   0.003264970   0.042824874  -0.036114230  -0.001126151   0.000000021   0.000000000

   63   11.1  0.5 -0.5  -0.004219302  -0.200739019  -0.001810957  -0.023752688   0.039226988   0.001223139  -0.000000286   0.000000000
                         0.003824677   0.181958679  -0.005080502  -0.066638297  -0.023217059  -0.000723975   0.000000015   0.000000000

   64   12.1  0.5 -0.5  -0.000481943  -0.022927114  -0.003392320  -0.044495253   0.035525465   0.001107792   0.000000003   0.000000000
                        -0.000531213  -0.025278275   0.001209193   0.015860630   0.060021102   0.001871609   0.000000060  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.005%  16.216%  11.625%   0.039%   1.319%   0.007%  10.089%   0.002%   0.241%   0.000%
    2    2.1  1.5  1.5   0.096%   0.000%   0.000%   0.002%   0.001%   0.136%   0.000%   0.010%   0.037%  35.433%
    3    3.1  1.5  1.5   0.003%   9.919%  13.934%   0.047%   0.340%   0.002%  11.953%   0.002%   0.411%   0.000%
    4    4.1  1.5  1.5   1.082%   0.000%   0.023%   6.853%   0.000%   0.008%   0.000%   0.028%   0.029%  27.575%
    5    5.1  1.5  1.5   0.008%  24.398%   1.230%   0.004%   1.866%   0.010%  10.315%   0.002%   0.006%   0.000%
    6    6.1  1.5  1.5   0.011%  32.307%   0.306%   0.001%   1.552%   0.008%   6.529%   0.001%   0.055%   0.000%
    7    7.1  1.5  1.5   0.012%   0.000%   0.004%   1.226%   0.105%  20.433%   0.000%   1.571%   0.001%   0.574%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5   0.938%   0.000%   0.003%   0.839%   0.070%  13.651%   0.001%   4.877%   0.012%  11.495%
   12    2.1  1.5  0.5   0.000%   0.004%   0.135%   0.000%   3.392%   0.017%  32.159%   0.006%   0.000%   0.000%
   13    3.1  1.5  0.5   1.838%   0.001%   0.032%   9.432%   0.030%   5.914%   0.001%   6.017%   0.012%  11.541%
   14    4.1  1.5  0.5   0.000%   0.400%   4.034%   0.014%  15.699%   0.081%  15.407%   0.003%   0.193%   0.000%
   15    5.1  1.5  0.5   1.667%   0.001%   0.013%   3.726%   0.117%  22.628%   0.000%   0.239%   0.005%   5.195%
   16    6.1  1.5  0.5   2.473%   0.001%   0.054%  15.965%   0.034%   6.681%   0.000%   0.290%   0.005%   5.155%
   17    7.1  1.5  0.5   0.003%   8.618%  30.358%   0.103%   5.869%   0.030%   0.499%   0.000%   2.023%   0.002%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.000%   0.938%   0.839%   0.003%  13.651%   0.070%   4.877%   0.001%  11.495%   0.012%
   22    2.1  1.5 -0.5   0.004%   0.000%   0.000%   0.135%   0.017%   3.392%   0.006%  32.159%   0.000%   0.000%
   23    3.1  1.5 -0.5   0.001%   1.838%   9.432%   0.032%   5.914%   0.030%   6.017%   0.001%  11.541%   0.012%
   24    4.1  1.5 -0.5   0.400%   0.000%   0.014%   4.034%   0.081%  15.699%   0.003%  15.407%   0.000%   0.193%
   25    5.1  1.5 -0.5   0.001%   1.667%   3.726%   0.013%  22.628%   0.117%   0.239%   0.000%   5.195%   0.005%
   26    6.1  1.5 -0.5   0.001%   2.473%  15.965%   0.054%   6.681%   0.034%   0.290%   0.000%   5.155%   0.005%
   27    7.1  1.5 -0.5   8.618%   0.003%   0.103%  30.358%   0.030%   5.869%   0.000%   0.499%   0.002%   2.023%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5  16.216%   0.005%   0.039%  11.625%   0.007%   1.319%   0.002%  10.089%   0.000%   0.241%
   32    2.1  1.5 -1.5   0.000%   0.096%   0.002%   0.000%   0.136%   0.001%   0.010%   0.000%  35.433%   0.037%
   33    3.1  1.5 -1.5   9.919%   0.003%   0.047%  13.934%   0.002%   0.340%   0.002%  11.953%   0.000%   0.411%
   34    4.1  1.5 -1.5   0.000%   1.082%   6.853%   0.023%   0.008%   0.000%   0.028%   0.000%  27.575%   0.029%
   35    5.1  1.5 -1.5  24.398%   0.008%   0.004%   1.230%   0.010%   1.866%   0.002%  10.315%   0.000%   0.006%
   36    6.1  1.5 -1.5  32.307%   0.011%   0.001%   0.306%   0.008%   1.552%   0.001%   6.529%   0.000%   0.055%
   37    7.1  1.5 -1.5   0.000%   0.012%   1.226%   0.004%  20.433%   0.105%   1.571%   0.000%   0.574%   0.001%
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

    1    1.1  1.5  1.5   0.004%   0.064%   0.003%   9.448%   7.847%   0.001%   4.302%   0.001%   0.005%   3.253%
    2    2.1  1.5  1.5  14.397%   0.967%   0.031%   0.000%   0.001%   3.794%   0.001%   8.394%   0.199%   0.000%
    3    3.1  1.5  1.5   0.001%   0.021%   0.004%  13.692%   0.028%   0.000%  12.451%   0.002%   0.009%   6.368%
    4    4.1  1.5  1.5  15.666%   1.053%   0.008%   0.000%   0.000%   1.872%   0.001%   9.162%   0.114%   0.000%
    5    5.1  1.5  1.5   0.003%   0.041%   0.003%  12.084%   0.029%   0.000%  12.141%   0.002%   0.001%   0.479%
    6    6.1  1.5  1.5   0.006%   0.090%   0.003%  10.603%   5.683%   0.001%   3.389%   0.000%   0.001%   1.016%
    7    7.1  1.5  1.5   0.403%   0.027%   0.135%   0.000%   0.006%  36.109%   0.001%   9.113%   1.236%   0.002%
    8    8.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%
    9    9.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   0.000%
   11    1.1  1.5  0.5  16.159%   1.086%   9.940%   0.003%   0.000%   0.040%   0.001%   6.271%   8.262%   0.012%
   12    2.1  1.5  0.5   0.033%   0.492%   0.002%   8.242%  15.439%   0.003%   3.373%   0.000%   0.018%  12.539%
   13    3.1  1.5  0.5  12.265%   0.824%   7.337%   0.002%   0.000%   0.620%   0.001%   7.921%   6.173%   0.009%
   14    4.1  1.5  0.5   0.030%   0.449%   0.002%   5.510%  19.125%   0.003%   2.288%   0.000%   0.027%  18.999%
   15    5.1  1.5  0.5  13.543%   0.910%   7.638%   0.002%   0.001%   3.419%   0.001%   5.351%  15.967%   0.022%
   16    6.1  1.5  0.5  16.876%   1.134%  11.738%   0.003%   0.000%   1.900%   0.000%   3.741%  17.768%   0.025%
   17    7.1  1.5  0.5   0.000%   0.001%   0.000%   0.112%   0.623%   0.000%   8.636%   0.001%   0.000%   0.001%
   18    8.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%
   19    9.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%   0.000%
   20   10.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   21    1.1  1.5 -0.5   1.086%  16.159%   0.003%   9.940%   0.040%   0.000%   6.271%   0.001%   0.012%   8.262%
   22    2.1  1.5 -0.5   0.492%   0.033%   8.242%   0.002%   0.003%  15.439%   0.000%   3.373%  12.539%   0.018%
   23    3.1  1.5 -0.5   0.824%  12.265%   0.002%   7.337%   0.620%   0.000%   7.921%   0.001%   0.009%   6.173%
   24    4.1  1.5 -0.5   0.449%   0.030%   5.510%   0.002%   0.003%  19.125%   0.000%   2.288%  18.999%   0.027%
   25    5.1  1.5 -0.5   0.910%  13.543%   0.002%   7.638%   3.419%   0.001%   5.351%   0.001%   0.022%  15.967%
   26    6.1  1.5 -0.5   1.134%  16.876%   0.003%  11.738%   1.900%   0.000%   3.741%   0.000%   0.025%  17.768%
   27    7.1  1.5 -0.5   0.001%   0.000%   0.112%   0.000%   0.000%   0.623%   0.001%   8.636%   0.001%   0.000%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.002%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   31    1.1  1.5 -1.5   0.064%   0.004%   9.448%   0.003%   0.001%   7.847%   0.001%   4.302%   3.253%   0.005%
   32    2.1  1.5 -1.5   0.967%  14.397%   0.000%   0.031%   3.794%   0.001%   8.394%   0.001%   0.000%   0.199%
   33    3.1  1.5 -1.5   0.021%   0.001%  13.692%   0.004%   0.000%   0.028%   0.002%  12.451%   6.368%   0.009%
   34    4.1  1.5 -1.5   1.053%  15.666%   0.000%   0.008%   1.872%   0.000%   9.162%   0.001%   0.000%   0.114%
   35    5.1  1.5 -1.5   0.041%   0.003%  12.084%   0.003%   0.000%   0.029%   0.002%  12.141%   0.479%   0.001%
   36    6.1  1.5 -1.5   0.090%   0.006%  10.603%   0.003%   0.001%   5.683%   0.000%   3.389%   1.016%   0.001%
   37    7.1  1.5 -1.5   0.027%   0.403%   0.000%   0.135%  36.109%   0.006%   9.113%   0.001%   0.002%   1.236%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.104%   0.000%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.118%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%
   41    1.1  0.5  0.5   0.001%   0.010%   0.000%   1.381%   0.509%   0.000%   0.073%   0.000%   0.000%   0.079%
   42    2.1  0.5  0.5   0.643%   0.043%   0.061%   0.000%   0.000%   0.221%   0.000%   1.006%   0.107%   0.000%
   43    3.1  0.5  0.5   0.339%   0.023%   0.058%   0.000%   0.000%   1.434%   0.000%   0.120%   0.017%   0.000%
   44    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.003%   0.319%   0.000%   1.653%   0.000%   0.000%   0.002%
   45    5.1  0.5  0.5   1.279%   0.086%   0.176%   0.000%   0.000%   0.431%   0.000%   0.003%   0.192%   0.000%
   46    6.1  0.5  0.5   0.001%   0.013%   0.000%   1.570%   0.305%   0.000%   0.086%   0.000%   0.000%   0.008%
   47    7.1  0.5  0.5   0.954%   0.064%   0.206%   0.000%   0.000%   0.236%   0.000%   0.515%   0.111%   0.000%
   48    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.228%   0.000%
   49    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%   0.000%
   50   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   2.542%
   51   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%
   52   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.005%   3.848%
   53    1.1  0.5 -0.5   0.010%   0.001%   1.381%   0.000%   0.000%   0.509%   0.000%   0.073%   0.079%   0.000%
   54    2.1  0.5 -0.5   0.043%   0.643%   0.000%   0.061%   0.221%   0.000%   1.006%   0.000%   0.000%   0.107%
   55    3.1  0.5 -0.5   0.023%   0.339%   0.000%   0.058%   1.434%   0.000%   0.120%   0.000%   0.000%   0.017%
   56    4.1  0.5 -0.5   0.000%   0.000%   0.003%   0.000%   0.000%   0.319%   0.000%   1.653%   0.002%   0.000%
   57    5.1  0.5 -0.5   0.086%   1.279%   0.000%   0.176%   0.431%   0.000%   0.003%   0.000%   0.000%   0.192%
   58    6.1  0.5 -0.5   0.013%   0.001%   1.570%   0.000%   0.000%   0.305%   0.000%   0.086%   0.008%   0.000%
   59    7.1  0.5 -0.5   0.064%   0.954%   0.000%   0.206%   0.236%   0.000%   0.515%   0.000%   0.000%   0.111%
   60    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.228%
   61    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.060%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.542%   0.004%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.058%   0.000%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.848%   0.005%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.003%  10.075%   5.213%   0.000%  13.731%   0.000%   1.240%   0.000%   0.000%   0.228%
    2    2.1  1.5  1.5  19.580%   0.006%   0.000%   0.036%   0.000%   0.125%   0.003%  11.782%   0.000%   0.000%
    3    3.1  1.5  1.5   0.002%   8.461%   4.684%   0.000%   8.688%   0.000%   3.937%   0.001%   0.000%   0.132%
    4    4.1  1.5  1.5  19.661%   0.006%   0.000%   0.078%   0.000%   0.252%   0.003%  11.562%   0.014%   0.000%
    5    5.1  1.5  1.5   0.003%   9.296%   9.336%   0.000%   9.886%   0.000%   3.721%   0.001%   0.000%   0.442%
    6    6.1  1.5  1.5   0.002%   7.614%   9.505%   0.000%  14.930%   0.000%   1.024%   0.000%   0.000%   0.553%
    7    7.1  1.5  1.5   0.016%   0.000%   0.000%  22.494%   0.000%   2.229%   0.000%   0.245%   1.017%   0.000%
    8    8.1  1.5  1.5   0.000%   0.019%   0.007%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.439%
    9    9.1  1.5  1.5   0.000%   0.006%   0.005%   0.000%   0.000%   0.000%   0.017%   0.000%   0.000%   0.471%
   10   10.1  1.5  1.5   0.000%   0.000%   0.000%   0.089%   0.000%   0.052%   0.000%   0.001%   2.401%   0.000%
   11    1.1  1.5  0.5   0.485%   0.000%   0.000%  12.338%   0.000%   1.478%   0.002%   7.365%   0.746%   0.000%
   12    2.1  1.5  0.5   0.000%   0.059%   7.208%   0.000%  11.783%   0.000%   0.125%   0.000%   0.000%   0.501%
   13    3.1  1.5  0.5   0.285%   0.000%   0.000%  13.654%   0.000%   3.842%   0.002%   7.347%   0.817%   0.000%
   14    4.1  1.5  0.5   0.000%   0.007%   0.750%   0.000%  11.992%   0.000%   0.010%   0.000%   0.000%   0.002%
   15    5.1  1.5  0.5   0.011%   0.000%   0.000%   4.528%   0.000%   1.707%   0.002%   8.501%   0.113%   0.000%
   16    6.1  1.5  0.5   1.041%   0.000%   0.000%   2.671%   0.000%   2.701%   0.002%   5.162%   0.054%   0.000%
   17    7.1  1.5  0.5   0.005%  15.885%   0.007%   0.000%   0.018%   0.000%  21.318%   0.006%   0.000%   0.001%
   18    8.1  1.5  0.5   0.029%   0.000%   0.000%   0.071%   0.000%   0.022%   0.000%   0.019%   1.745%   0.000%
   19    9.1  1.5  0.5   0.042%   0.000%   0.000%   0.063%   0.000%   0.013%   0.000%   0.027%   1.857%   0.000%
   20   10.1  1.5  0.5   0.000%   0.140%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%   0.000%   0.002%
   21    1.1  1.5 -0.5   0.000%   0.485%  12.338%   0.000%   1.478%   0.000%   7.365%   0.002%   0.000%   0.746%
   22    2.1  1.5 -0.5   0.059%   0.000%   0.000%   7.208%   0.000%  11.783%   0.000%   0.125%   0.501%   0.000%
   23    3.1  1.5 -0.5   0.000%   0.285%  13.654%   0.000%   3.842%   0.000%   7.347%   0.002%   0.000%   0.817%
   24    4.1  1.5 -0.5   0.007%   0.000%   0.000%   0.750%   0.000%  11.992%   0.000%   0.010%   0.002%   0.000%
   25    5.1  1.5 -0.5   0.000%   0.011%   4.528%   0.000%   1.707%   0.000%   8.501%   0.002%   0.000%   0.113%
   26    6.1  1.5 -0.5   0.000%   1.041%   2.671%   0.000%   2.701%   0.000%   5.162%   0.002%   0.000%   0.054%
   27    7.1  1.5 -0.5  15.885%   0.005%   0.000%   0.007%   0.000%   0.018%   0.006%  21.318%   0.001%   0.000%
   28    8.1  1.5 -0.5   0.000%   0.029%   0.071%   0.000%   0.022%   0.000%   0.019%   0.000%   0.000%   1.745%
   29    9.1  1.5 -0.5   0.000%   0.042%   0.063%   0.000%   0.013%   0.000%   0.027%   0.000%   0.000%   1.857%
   30   10.1  1.5 -0.5   0.140%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.002%   0.000%
   31    1.1  1.5 -1.5  10.075%   0.003%   0.000%   5.213%   0.000%  13.731%   0.000%   1.240%   0.228%   0.000%
   32    2.1  1.5 -1.5   0.006%  19.580%   0.036%   0.000%   0.125%   0.000%  11.782%   0.003%   0.000%   0.000%
   33    3.1  1.5 -1.5   8.461%   0.002%   0.000%   4.684%   0.000%   8.688%   0.001%   3.937%   0.132%   0.000%
   34    4.1  1.5 -1.5   0.006%  19.661%   0.078%   0.000%   0.252%   0.000%  11.562%   0.003%   0.000%   0.014%
   35    5.1  1.5 -1.5   9.296%   0.003%   0.000%   9.336%   0.000%   9.886%   0.001%   3.721%   0.442%   0.000%
   36    6.1  1.5 -1.5   7.614%   0.002%   0.000%   9.505%   0.000%  14.930%   0.000%   1.024%   0.553%   0.000%
   37    7.1  1.5 -1.5   0.000%   0.016%  22.494%   0.000%   2.229%   0.000%   0.245%   0.000%   0.000%   1.017%
   38    8.1  1.5 -1.5   0.019%   0.000%   0.000%   0.007%   0.000%   0.000%   0.000%   0.017%   0.439%   0.000%
   39    9.1  1.5 -1.5   0.006%   0.000%   0.000%   0.005%   0.000%   0.000%   0.000%   0.017%   0.471%   0.000%
   40   10.1  1.5 -1.5   0.000%   0.000%   0.089%   0.000%   0.052%   0.000%   0.001%   0.000%   0.000%   2.401%
   41    1.1  0.5  0.5   0.000%   0.002%   0.140%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   3.244%
   42    2.1  0.5  0.5   0.082%   0.000%   0.000%   0.033%   0.000%   0.000%   0.000%   0.000%   0.402%   0.000%
   43    3.1  0.5  0.5   0.132%   0.000%   0.000%   0.072%   0.000%   0.000%   0.000%   0.000%   2.719%   0.000%
   44    4.1  0.5  0.5   0.000%   0.219%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   45    5.1  0.5  0.5   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.168%   0.000%
   46    6.1  0.5  0.5   0.000%   0.000%   0.213%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   6.555%
   47    7.1  0.5  0.5   0.053%   0.000%   0.000%   0.057%   0.000%   0.000%   0.000%   0.000%   2.248%   0.000%
   48    8.1  0.5  0.5   1.102%   0.000%   0.000%   2.717%   0.000%   1.106%   0.002%   5.512%  24.607%   0.000%
   49    9.1  0.5  0.5   1.586%   0.000%   0.000%   2.401%   0.000%   2.273%   0.001%   4.345%  26.187%   0.000%
   50   10.1  0.5  0.5   0.000%   0.026%   1.476%   0.000%   6.512%   0.000%   0.107%   0.000%   0.000%  22.160%
   51   11.1  0.5  0.5   0.001%   3.986%   0.003%   0.000%   0.107%   0.000%   6.511%   0.002%   0.000%   0.065%
   52   12.1  0.5  0.5   0.000%   0.046%   0.149%   0.000%   6.550%   0.000%   0.069%   0.000%   0.000%   0.107%
   53    1.1  0.5 -0.5   0.002%   0.000%   0.000%   0.140%   0.000%   0.000%   0.000%   0.000%   3.244%   0.000%
   54    2.1  0.5 -0.5   0.000%   0.082%   0.033%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.402%
   55    3.1  0.5 -0.5   0.000%   0.132%   0.072%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.719%
   56    4.1  0.5 -0.5   0.219%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   57    5.1  0.5 -0.5   0.000%   0.029%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.168%
   58    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.213%   0.000%   0.000%   0.000%   0.000%   6.555%   0.000%
   59    7.1  0.5 -0.5   0.000%   0.053%   0.057%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.248%
   60    8.1  0.5 -0.5   0.000%   1.102%   2.717%   0.000%   1.106%   0.000%   5.512%   0.002%   0.000%  24.607%
   61    9.1  0.5 -0.5   0.000%   1.586%   2.401%   0.000%   2.273%   0.000%   4.345%   0.001%   0.000%  26.187%
   62   10.1  0.5 -0.5   0.026%   0.000%   0.000%   1.476%   0.000%   6.512%   0.000%   0.107%  22.160%   0.000%
   63   11.1  0.5 -0.5   3.986%   0.001%   0.000%   0.003%   0.000%   0.107%   0.002%   6.511%   0.065%   0.000%
   64   12.1  0.5 -0.5   0.046%   0.000%   0.000%   0.149%   0.000%   6.550%   0.000%   0.069%   0.107%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.551%   0.000%   0.000%   0.146%   0.580%   0.000%   0.000%   0.031%   0.146%   0.000%
    2    2.1  1.5  1.5   0.000%   0.936%   0.053%   0.000%   0.000%   0.001%   0.023%   0.000%   0.000%   0.949%
    3    3.1  1.5  1.5   0.339%   0.000%   0.000%   0.505%   0.292%   0.000%   0.000%   0.016%   0.236%   0.000%
    4    4.1  1.5  1.5   0.000%   0.940%   0.037%   0.000%   0.000%   0.089%   0.074%   0.000%   0.000%   0.001%
    5    5.1  1.5  1.5   0.511%   0.000%   0.000%   0.002%   0.540%   0.000%   0.000%   0.148%   0.115%   0.000%
    6    6.1  1.5  1.5   0.315%   0.000%   0.000%   0.038%   0.143%   0.000%   0.000%   0.163%   0.222%   0.000%
    7    7.1  1.5  1.5   0.000%   0.001%   0.168%   0.000%   0.000%   0.023%   1.477%   0.001%   0.000%   0.025%
    8    8.1  1.5  1.5   0.975%   0.000%   0.001%   2.388%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
    9    9.1  1.5  1.5   0.024%   0.000%   0.002%   3.306%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   10   10.1  1.5  1.5   0.000%   0.012%   0.353%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   11    1.1  1.5  0.5   0.000%   0.069%   0.239%   0.000%   0.000%   0.099%   0.068%   0.000%   0.000%   0.015%
   12    2.1  1.5  0.5   0.031%   0.000%   0.000%   0.458%   0.121%   0.000%   0.000%   0.842%   0.022%   0.000%
   13    3.1  1.5  0.5   0.000%   0.000%   0.187%   0.000%   0.000%   0.545%   0.002%   0.000%   0.000%   0.013%
   14    4.1  1.5  0.5   0.021%   0.000%   0.001%   0.965%   0.362%   0.000%   0.000%   0.543%   0.010%   0.000%
   15    5.1  1.5  0.5   0.000%   0.007%   0.905%   0.000%   0.000%   0.280%   0.059%   0.000%   0.000%   0.660%
   16    6.1  1.5  0.5   0.000%   0.117%   0.903%   0.000%   0.000%   0.374%   0.003%   0.000%   0.000%   0.875%
   17    7.1  1.5  0.5   0.781%   0.000%   0.000%   0.012%   0.007%   0.000%   0.000%   0.005%   0.169%   0.000%
   18    8.1  1.5  0.5   0.000%   0.802%   0.564%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   19    9.1  1.5  0.5   0.000%   1.177%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   20   10.1  1.5  0.5   3.923%   0.001%   0.000%   0.223%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   21    1.1  1.5 -0.5   0.069%   0.000%   0.000%   0.239%   0.099%   0.000%   0.000%   0.068%   0.015%   0.000%
   22    2.1  1.5 -0.5   0.000%   0.031%   0.458%   0.000%   0.000%   0.121%   0.842%   0.000%   0.000%   0.022%
   23    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.187%   0.545%   0.000%   0.000%   0.002%   0.013%   0.000%
   24    4.1  1.5 -0.5   0.000%   0.021%   0.965%   0.001%   0.000%   0.362%   0.543%   0.000%   0.000%   0.010%
   25    5.1  1.5 -0.5   0.007%   0.000%   0.000%   0.905%   0.280%   0.000%   0.000%   0.059%   0.660%   0.000%
   26    6.1  1.5 -0.5   0.117%   0.000%   0.000%   0.903%   0.374%   0.000%   0.000%   0.003%   0.875%   0.000%
   27    7.1  1.5 -0.5   0.000%   0.781%   0.012%   0.000%   0.000%   0.007%   0.005%   0.000%   0.000%   0.169%
   28    8.1  1.5 -0.5   0.802%   0.000%   0.000%   0.564%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   29    9.1  1.5 -0.5   1.177%   0.000%   0.000%   0.077%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30   10.1  1.5 -0.5   0.001%   3.923%   0.223%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    1.1  1.5 -1.5   0.000%   0.551%   0.146%   0.000%   0.000%   0.580%   0.031%   0.000%   0.000%   0.146%
   32    2.1  1.5 -1.5   0.936%   0.000%   0.000%   0.053%   0.001%   0.000%   0.000%   0.023%   0.949%   0.000%
   33    3.1  1.5 -1.5   0.000%   0.339%   0.505%   0.000%   0.000%   0.292%   0.016%   0.000%   0.000%   0.236%
   34    4.1  1.5 -1.5   0.940%   0.000%   0.000%   0.037%   0.089%   0.000%   0.000%   0.074%   0.001%   0.000%
   35    5.1  1.5 -1.5   0.000%   0.511%   0.002%   0.000%   0.000%   0.540%   0.148%   0.000%   0.000%   0.115%
   36    6.1  1.5 -1.5   0.000%   0.315%   0.038%   0.000%   0.000%   0.143%   0.163%   0.000%   0.000%   0.222%
   37    7.1  1.5 -1.5   0.001%   0.000%   0.000%   0.168%   0.023%   0.000%   0.001%   1.477%   0.025%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.975%   2.388%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    9.1  1.5 -1.5   0.000%   0.024%   3.306%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   10.1  1.5 -1.5   0.012%   0.000%   0.000%   0.353%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5  0.5   0.150%   0.000%   0.002%   3.179%  43.555%   0.000%   0.002%   5.921%   0.021%   0.000%
   42    2.1  0.5  0.5   0.000%   1.779%   4.391%   0.002%   0.000%   2.836%  27.786%   0.010%   0.000%  23.141%
   43    3.1  0.5  0.5   0.000%   3.332%   0.523%   0.000%   0.000%   1.953%  35.413%   0.013%   0.000%   5.534%
   44    4.1  0.5  0.5   6.216%   0.001%   0.000%   0.354%   3.298%   0.000%   0.000%   0.000%  29.367%   0.000%
   45    5.1  0.5  0.5   0.000%   1.546%   4.858%   0.003%   0.000%   3.632%   0.014%   0.000%   0.000%  29.962%
   46    6.1  0.5  0.5   0.007%   0.000%   0.000%   0.012%  30.900%   0.000%   0.008%  22.317%   1.052%   0.000%
   47    7.1  0.5  0.5   0.000%   2.308%   2.017%   0.001%   0.000%  10.371%   5.058%   0.002%   0.000%   7.466%
   48    8.1  0.5  0.5   0.002%  11.316%   7.946%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  0.5  0.5   0.002%  16.595%   1.090%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  0.5  0.5   1.785%   0.000%   0.011%  19.920%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  0.5  0.5  41.081%   0.005%   0.001%   2.722%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  0.5  0.5   2.338%   0.000%   0.022%  41.407%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.150%   3.179%   0.002%   0.000%  43.555%   5.921%   0.002%   0.000%   0.021%
   54    2.1  0.5 -0.5   1.779%   0.000%   0.002%   4.391%   2.836%   0.000%   0.010%  27.786%  23.141%   0.000%
   55    3.1  0.5 -0.5   3.332%   0.000%   0.000%   0.523%   1.953%   0.000%   0.013%  35.413%   5.534%   0.000%
   56    4.1  0.5 -0.5   0.001%   6.216%   0.354%   0.000%   0.000%   3.298%   0.000%   0.000%   0.000%  29.367%
   57    5.1  0.5 -0.5   1.546%   0.000%   0.003%   4.858%   3.632%   0.000%   0.000%   0.014%  29.962%   0.000%
   58    6.1  0.5 -0.5   0.000%   0.007%   0.012%   0.000%   0.000%  30.900%  22.317%   0.008%   0.000%   1.052%
   59    7.1  0.5 -0.5   2.308%   0.000%   0.001%   2.017%  10.371%   0.000%   0.002%   5.058%   7.466%   0.000%
   60    8.1  0.5 -0.5  11.316%   0.002%   0.004%   7.946%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   61    9.1  0.5 -0.5  16.595%   0.002%   0.001%   1.090%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   62   10.1  0.5 -0.5   0.000%   1.785%  19.920%   0.011%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   63   11.1  0.5 -0.5   0.005%  41.081%   2.722%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   64   12.1  0.5 -0.5   0.000%   2.338%  41.407%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.000%   0.018%   2.245%   0.022%   0.708%   0.000%   0.160%   0.000%   0.059%   0.000%
    2    2.1  1.5  1.5   0.015%   0.000%   0.000%   0.031%   0.000%   2.335%   0.000%   0.000%   0.000%   0.016%
    3    3.1  1.5  1.5   0.002%   0.392%   2.151%   0.021%   0.337%   0.000%   0.123%   0.000%   0.193%   0.000%
    4    4.1  1.5  1.5   0.827%   0.003%   0.000%   0.012%   0.000%   2.336%   0.000%   0.005%   0.000%   0.013%
    5    5.1  1.5  1.5   0.000%   0.067%   2.391%   0.024%   0.289%   0.000%   0.230%   0.000%   0.008%   0.000%
    6    6.1  1.5  1.5   0.001%   0.179%   2.485%   0.025%   0.660%   0.000%   0.265%   0.000%   0.046%   0.000%
    7    7.1  1.5  1.5   0.113%   0.000%   0.005%   0.482%   0.000%   0.005%   0.000%   0.610%   0.000%   0.026%
    8    8.1  1.5  1.5   0.000%   0.000%   0.005%   0.000%   0.348%   0.000%   0.177%   0.000%   3.819%   0.000%
    9    9.1  1.5  1.5   0.000%   0.000%   0.005%   0.000%   0.348%   0.000%   0.163%   0.000%   4.808%   0.000%
   10   10.1  1.5  1.5   0.000%   0.000%   0.010%   1.035%   0.000%   0.014%   0.000%   3.545%   0.000%   0.129%
   11    1.1  1.5  0.5   1.013%   0.004%   0.006%   0.618%   0.000%   1.133%   0.000%   0.310%   0.000%   0.227%
   12    2.1  1.5  0.5   0.000%   0.001%   2.312%   0.023%   0.031%   0.000%   0.176%   0.000%   0.345%   0.000%
   13    3.1  1.5  0.5   0.475%   0.002%   0.003%   0.347%   0.000%   1.873%   0.000%   0.354%   0.000%   0.185%
   14    4.1  1.5  0.5   0.000%   0.066%   2.220%   0.022%   0.143%   0.000%   0.027%   0.000%   0.500%   0.000%
   15    5.1  1.5  0.5   0.106%   0.000%   0.007%   0.714%   0.000%   1.308%   0.000%   0.135%   0.000%   0.415%
   16    6.1  1.5  0.5   0.016%   0.000%   0.002%   0.244%   0.000%   1.316%   0.000%   0.087%   0.000%   0.446%
   17    7.1  1.5  0.5   0.001%   0.154%   0.148%   0.001%   4.091%   0.000%   0.000%   0.000%   0.002%   0.000%
   18    8.1  1.5  0.5   0.000%   0.000%   0.003%   0.259%   0.000%   0.562%   0.000%   2.705%   0.000%   0.268%
   19    9.1  1.5  0.5   0.000%   0.000%   0.004%   0.443%   0.000%   0.376%   0.000%   2.613%   0.000%   0.011%
   20   10.1  1.5  0.5   0.000%   0.000%   0.002%   0.000%   0.116%   0.000%   0.001%   0.000%   0.171%   0.000%
   21    1.1  1.5 -0.5   0.004%   1.013%   0.618%   0.006%   1.133%   0.000%   0.310%   0.000%   0.227%   0.000%
   22    2.1  1.5 -0.5   0.001%   0.000%   0.023%   2.312%   0.000%   0.031%   0.000%   0.176%   0.000%   0.345%
   23    3.1  1.5 -0.5   0.002%   0.475%   0.347%   0.003%   1.873%   0.000%   0.354%   0.000%   0.185%   0.000%
   24    4.1  1.5 -0.5   0.066%   0.000%   0.022%   2.220%   0.000%   0.143%   0.000%   0.027%   0.000%   0.500%
   25    5.1  1.5 -0.5   0.000%   0.106%   0.714%   0.007%   1.308%   0.000%   0.135%   0.000%   0.415%   0.000%
   26    6.1  1.5 -0.5   0.000%   0.016%   0.244%   0.002%   1.316%   0.000%   0.087%   0.000%   0.446%   0.000%
   27    7.1  1.5 -0.5   0.154%   0.001%   0.001%   0.148%   0.000%   4.091%   0.000%   0.000%   0.000%   0.002%
   28    8.1  1.5 -0.5   0.000%   0.000%   0.259%   0.003%   0.562%   0.000%   2.705%   0.000%   0.268%   0.000%
   29    9.1  1.5 -0.5   0.000%   0.000%   0.443%   0.004%   0.376%   0.000%   2.613%   0.000%   0.011%   0.000%
   30   10.1  1.5 -0.5   0.000%   0.000%   0.000%   0.002%   0.000%   0.116%   0.000%   0.001%   0.000%   0.171%
   31    1.1  1.5 -1.5   0.018%   0.000%   0.022%   2.245%   0.000%   0.708%   0.000%   0.160%   0.000%   0.059%
   32    2.1  1.5 -1.5   0.000%   0.015%   0.031%   0.000%   2.335%   0.000%   0.000%   0.000%   0.016%   0.000%
   33    3.1  1.5 -1.5   0.392%   0.002%   0.021%   2.151%   0.000%   0.337%   0.000%   0.123%   0.000%   0.193%
   34    4.1  1.5 -1.5   0.003%   0.827%   0.012%   0.000%   2.336%   0.000%   0.005%   0.000%   0.013%   0.000%
   35    5.1  1.5 -1.5   0.067%   0.000%   0.024%   2.391%   0.000%   0.289%   0.000%   0.230%   0.000%   0.008%
   36    6.1  1.5 -1.5   0.179%   0.001%   0.025%   2.485%   0.000%   0.660%   0.000%   0.265%   0.000%   0.046%
   37    7.1  1.5 -1.5   0.000%   0.113%   0.482%   0.005%   0.005%   0.000%   0.610%   0.000%   0.026%   0.000%
   38    8.1  1.5 -1.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.348%   0.000%   0.177%   0.000%   3.819%
   39    9.1  1.5 -1.5   0.000%   0.000%   0.000%   0.005%   0.000%   0.348%   0.000%   0.163%   0.000%   4.808%
   40   10.1  1.5 -1.5   0.000%   0.000%   1.035%   0.010%   0.014%   0.000%   3.545%   0.000%   0.129%   0.000%
   41    1.1  0.5  0.5   0.022%   5.646%   0.000%   0.000%   0.000%   0.000%  23.066%   0.000%  11.039%   0.000%
   42    2.1  0.5  0.5   1.389%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   5.116%   0.000%  18.324%
   43    3.1  0.5  0.5  12.206%   0.049%   0.000%   0.000%   0.000%   0.000%   0.000%  11.977%   0.000%   4.271%
   44    4.1  0.5  0.5   0.089%  22.413%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   1.074%   0.000%
   45    5.1  0.5  0.5  21.474%   0.086%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.026%
   46    6.1  0.5  0.5   0.004%   0.889%   0.000%   0.000%   0.000%   0.000%  32.777%   0.000%   1.721%   0.000%
   47    7.1  0.5  0.5  32.143%   0.128%   0.000%   0.000%   0.000%   0.000%   0.000%   7.631%   0.000%  16.115%
   48    8.1  0.5  0.5   0.000%   0.000%   0.114%  11.497%   0.000%  21.059%   0.000%   3.034%   0.000%   0.300%
   49    9.1  0.5  0.5   0.000%   0.000%   0.051%   5.104%   0.000%  27.515%   0.000%   2.931%   0.000%   0.012%
   50   10.1  0.5  0.5   0.000%   0.000%  32.087%   0.319%   0.264%   0.000%   1.542%   0.000%   2.982%   0.000%
   51   11.1  0.5  0.5   0.000%   0.000%   0.261%   0.003%  32.404%   0.000%   0.000%   0.000%   0.179%   0.000%
   52   12.1  0.5  0.5   0.000%   0.000%  31.920%   0.317%   0.431%   0.000%   0.235%   0.000%   4.270%   0.000%
   53    1.1  0.5 -0.5   5.646%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%  23.066%   0.000%  11.039%
   54    2.1  0.5 -0.5   0.006%   1.389%   0.000%   0.000%   0.000%   0.000%   5.116%   0.000%  18.324%   0.000%
   55    3.1  0.5 -0.5   0.049%  12.206%   0.000%   0.000%   0.000%   0.000%  11.977%   0.000%   4.271%   0.000%
   56    4.1  0.5 -0.5  22.413%   0.089%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%   1.074%
   57    5.1  0.5 -0.5   0.086%  21.474%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  28.026%   0.000%
   58    6.1  0.5 -0.5   0.889%   0.004%   0.000%   0.000%   0.000%   0.000%   0.000%  32.777%   0.000%   1.721%
   59    7.1  0.5 -0.5   0.128%  32.143%   0.000%   0.000%   0.000%   0.000%   7.631%   0.000%  16.115%   0.000%
   60    8.1  0.5 -0.5   0.000%   0.000%  11.497%   0.114%  21.059%   0.000%   3.034%   0.000%   0.300%   0.000%
   61    9.1  0.5 -0.5   0.000%   0.000%   5.104%   0.051%  27.515%   0.000%   2.931%   0.000%   0.012%   0.000%
   62   10.1  0.5 -0.5   0.000%   0.000%   0.319%  32.087%   0.000%   0.264%   0.000%   1.542%   0.000%   2.982%
   63   11.1  0.5 -0.5   0.000%   0.000%   0.003%   0.261%   0.000%  32.404%   0.000%   0.000%   0.000%   0.179%
   64   12.1  0.5 -0.5   0.000%   0.000%   0.317%  31.920%   0.000%   0.431%   0.000%   0.235%   0.000%   4.270%

   Nr   State  S   Sz      51       52       53       54       55       56       57       58       59       60

    1    1.1  1.5  1.5   0.278%   0.000%   0.000%   0.020%   0.000%   0.032%   0.028%   0.000%   0.009%   0.000%
    2    2.1  1.5  1.5   0.000%   0.515%   0.000%   0.000%   0.001%   0.000%   0.000%   0.084%   0.000%   0.007%
    3    3.1  1.5  1.5   0.208%   0.000%   0.000%   0.013%   0.000%   0.017%   0.053%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.515%   0.001%   0.000%   0.002%   0.000%   0.000%   0.082%   0.000%   0.008%
    5    5.1  1.5  1.5   0.275%   0.000%   0.000%   0.039%   0.000%   0.005%   0.038%   0.000%   0.000%   0.000%
    6    6.1  1.5  1.5   0.176%   0.000%   0.000%   0.046%   0.000%   0.000%   0.032%   0.000%   0.009%   0.000%
    7    7.1  1.5  1.5   0.000%   0.001%   0.090%   0.000%   0.010%   0.000%   0.000%   0.002%   0.000%   0.000%
    8    8.1  1.5  1.5   1.067%   0.000%   0.000%   4.716%   0.102%  39.569%   1.617%   0.001%  13.360%   0.078%
    9    9.1  1.5  1.5   0.092%   0.000%   0.000%   4.769%   0.086%  33.389%   7.756%   0.003%  13.358%   0.078%
   10   10.1  1.5  1.5   0.000%   0.008%  29.665%   0.000%   3.718%   0.010%   0.000%   0.068%   0.107%  18.472%
   11    1.1  1.5  0.5   0.000%   0.029%   0.062%   0.000%   0.028%   0.000%   0.000%   0.000%   0.000%   0.001%
   12    2.1  1.5  0.5   0.010%   0.000%   0.000%   0.041%   0.000%   0.044%   0.001%   0.000%   0.003%   0.000%
   13    3.1  1.5  0.5   0.000%   0.001%   0.068%   0.000%   0.015%   0.000%   0.000%   0.003%   0.000%   0.010%
   14    4.1  1.5  0.5   0.004%   0.000%   0.000%   0.000%   0.000%   0.080%   0.004%   0.000%   0.005%   0.000%
   15    5.1  1.5  0.5   0.000%   0.000%   0.011%   0.000%   0.071%   0.000%   0.000%   0.005%   0.000%   0.002%
   16    6.1  1.5  0.5   0.000%   0.044%   0.006%   0.000%   0.086%   0.000%   0.000%   0.000%   0.000%   0.007%
   17    7.1  1.5  0.5   0.424%   0.000%   0.000%   0.000%   0.000%   0.004%   0.064%   0.000%   0.012%   0.000%
   18    8.1  1.5  0.5   0.000%   1.169%  22.148%   0.000%   1.503%   0.004%   0.006%  13.980%   0.261%  44.913%
   19    9.1  1.5  0.5   0.000%   1.518%  22.349%   0.000%   4.464%   0.012%   0.005%  10.812%   0.018%   3.024%
   20   10.1  1.5  0.5   5.352%   0.000%   0.000%   0.000%   0.002%   0.786%  49.375%   0.022%   4.454%   0.026%
   21    1.1  1.5 -0.5   0.029%   0.000%   0.000%   0.062%   0.000%   0.028%   0.000%   0.000%   0.001%   0.000%
   22    2.1  1.5 -0.5   0.000%   0.010%   0.041%   0.000%   0.044%   0.000%   0.000%   0.001%   0.000%   0.003%
   23    3.1  1.5 -0.5   0.001%   0.000%   0.000%   0.068%   0.000%   0.015%   0.003%   0.000%   0.010%   0.000%
   24    4.1  1.5 -0.5   0.000%   0.004%   0.000%   0.000%   0.080%   0.000%   0.000%   0.004%   0.000%   0.005%
   25    5.1  1.5 -0.5   0.000%   0.000%   0.000%   0.011%   0.000%   0.071%   0.005%   0.000%   0.002%   0.000%
   26    6.1  1.5 -0.5   0.044%   0.000%   0.000%   0.006%   0.000%   0.086%   0.000%   0.000%   0.007%   0.000%
   27    7.1  1.5 -0.5   0.000%   0.424%   0.000%   0.000%   0.004%   0.000%   0.000%   0.064%   0.000%   0.012%
   28    8.1  1.5 -0.5   1.169%   0.000%   0.000%  22.148%   0.004%   1.503%  13.980%   0.006%  44.913%   0.261%
   29    9.1  1.5 -0.5   1.518%   0.000%   0.000%  22.349%   0.012%   4.464%  10.812%   0.005%   3.024%   0.018%
   30   10.1  1.5 -0.5   0.000%   5.352%   0.000%   0.000%   0.786%   0.002%   0.022%  49.375%   0.026%   4.454%
   31    1.1  1.5 -1.5   0.000%   0.278%   0.020%   0.000%   0.032%   0.000%   0.000%   0.028%   0.000%   0.009%
   32    2.1  1.5 -1.5   0.515%   0.000%   0.000%   0.000%   0.000%   0.001%   0.084%   0.000%   0.007%   0.000%
   33    3.1  1.5 -1.5   0.000%   0.208%   0.013%   0.000%   0.017%   0.000%   0.000%   0.053%   0.000%   0.000%
   34    4.1  1.5 -1.5   0.515%   0.000%   0.000%   0.001%   0.000%   0.002%   0.082%   0.000%   0.008%   0.000%
   35    5.1  1.5 -1.5   0.000%   0.275%   0.039%   0.000%   0.005%   0.000%   0.000%   0.038%   0.000%   0.000%
   36    6.1  1.5 -1.5   0.000%   0.176%   0.046%   0.000%   0.000%   0.000%   0.000%   0.032%   0.000%   0.009%
   37    7.1  1.5 -1.5   0.001%   0.000%   0.000%   0.090%   0.000%   0.010%   0.002%   0.000%   0.000%   0.000%
   38    8.1  1.5 -1.5   0.000%   1.067%   4.716%   0.000%  39.569%   0.102%   0.001%   1.617%   0.078%  13.360%
   39    9.1  1.5 -1.5   0.000%   0.092%   4.769%   0.000%  33.389%   0.086%   0.003%   7.756%   0.078%  13.358%
   40   10.1  1.5 -1.5   0.008%   0.000%   0.000%  29.665%   0.010%   3.718%   0.068%   0.000%  18.472%   0.107%
   41    1.1  0.5  0.5   0.425%   0.000%   0.000%   0.798%   0.002%   0.719%   0.012%   0.000%   0.000%   0.000%
   42    2.1  0.5  0.5   0.000%  11.089%   0.118%   0.000%   0.505%   0.001%   0.000%   0.906%   0.000%   0.000%
   43    3.1  0.5  0.5   0.000%  18.282%   0.601%   0.000%   0.001%   0.000%   0.000%   0.928%   0.000%   0.000%
   44    4.1  0.5  0.5  33.452%   0.001%   0.000%   0.000%   0.000%   0.024%   1.506%   0.001%   0.000%   0.000%
   45    5.1  0.5  0.5   0.000%   6.504%   0.029%   0.000%   1.464%   0.004%   0.000%   0.033%   0.000%   0.000%
   46    6.1  0.5  0.5   0.032%   0.000%   0.000%   1.521%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%
   47    7.1  0.5  0.5   0.000%  10.784%   0.503%   0.000%   0.840%   0.002%   0.000%   0.184%   0.000%   0.000%
   48    8.1  0.5  0.5   0.000%   1.311%   4.373%   0.000%   0.297%   0.001%   0.001%   2.760%   0.001%   0.134%
   49    9.1  0.5  0.5   0.000%   1.703%   4.412%   0.000%   0.882%   0.002%   0.001%   2.135%   0.004%   0.703%
   50   10.1  0.5  0.5   0.121%   0.000%   0.000%   3.554%   0.010%   3.838%   0.030%   0.000%   0.207%   0.001%
   51   11.1  0.5  0.5   4.467%   0.000%   0.000%   0.003%   0.000%   0.085%   7.341%   0.003%   0.500%   0.003%
   52   12.1  0.5  0.5   0.141%   0.000%   0.000%   0.044%   0.019%   7.253%   0.116%   0.000%   0.223%   0.001%
   53    1.1  0.5 -0.5   0.000%   0.425%   0.798%   0.000%   0.719%   0.002%   0.000%   0.012%   0.000%   0.000%
   54    2.1  0.5 -0.5  11.089%   0.000%   0.000%   0.118%   0.001%   0.505%   0.906%   0.000%   0.000%   0.000%
   55    3.1  0.5 -0.5  18.282%   0.000%   0.000%   0.601%   0.000%   0.001%   0.928%   0.000%   0.000%   0.000%
   56    4.1  0.5 -0.5   0.001%  33.452%   0.000%   0.000%   0.024%   0.000%   0.001%   1.506%   0.000%   0.000%
   57    5.1  0.5 -0.5   6.504%   0.000%   0.000%   0.029%   0.004%   1.464%   0.033%   0.000%   0.000%   0.000%
   58    6.1  0.5 -0.5   0.000%   0.032%   1.521%   0.000%   0.009%   0.000%   0.000%   0.000%   0.000%   0.000%
   59    7.1  0.5 -0.5  10.784%   0.000%   0.000%   0.503%   0.002%   0.840%   0.184%   0.000%   0.000%   0.000%
   60    8.1  0.5 -0.5   1.311%   0.000%   0.000%   4.373%   0.001%   0.297%   2.760%   0.001%   0.134%   0.001%
   61    9.1  0.5 -0.5   1.703%   0.000%   0.000%   4.412%   0.002%   0.882%   2.135%   0.001%   0.703%   0.004%
   62   10.1  0.5 -0.5   0.000%   0.121%   3.554%   0.000%   3.838%   0.010%   0.000%   0.030%   0.001%   0.207%
   63   11.1  0.5 -0.5   0.000%   4.467%   0.003%   0.000%   0.085%   0.000%   0.003%   7.341%   0.003%   0.500%
   64   12.1  0.5 -0.5   0.000%   0.141%   0.044%   0.000%   7.253%   0.019%   0.000%   0.116%   0.001%   0.223%

   Nr   State  S   Sz      61       62       63       64

    1    1.1  1.5  1.5   0.000%   0.004%   0.000%   0.000%
    2    2.1  1.5  1.5   0.003%   0.000%   0.000%   0.000%
    3    3.1  1.5  1.5   0.000%   0.011%   0.000%   0.000%
    4    4.1  1.5  1.5   0.003%   0.000%   0.000%   0.000%
    5    5.1  1.5  1.5   0.000%   0.012%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.005%   0.000%   0.000%
    7    7.1  1.5  1.5   0.002%   0.000%   0.000%   0.000%
    8    8.1  1.5  1.5   0.006%   6.187%   0.000%  25.000%
    9    9.1  1.5  1.5   0.006%   6.188%   0.000%  25.000%
   10   10.1  1.5  1.5  40.269%   0.039%   0.000%   0.000%
   11    1.1  1.5  0.5   0.006%   0.000%   0.000%   0.000%
   12    2.1  1.5  0.5   0.000%   0.007%   0.000%   0.000%
   13    3.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   14    4.1  1.5  0.5   0.000%   0.006%   0.000%   0.000%
   15    5.1  1.5  0.5   0.007%   0.000%   0.000%   0.000%
   16    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.000%
   17    7.1  1.5  0.5   0.000%   0.007%   0.000%   0.000%
   18    8.1  1.5  0.5   0.627%   0.001%   8.333%   0.000%
   19    9.1  1.5  0.5  42.719%   0.042%   8.333%   0.000%
   20   10.1  1.5  0.5   0.002%   2.063%   0.000%  33.333%
   21    1.1  1.5 -0.5   0.000%   0.006%   0.000%   0.000%
   22    2.1  1.5 -0.5   0.007%   0.000%   0.000%   0.000%
   23    3.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   24    4.1  1.5 -0.5   0.006%   0.000%   0.000%   0.000%
   25    5.1  1.5 -0.5   0.000%   0.007%   0.000%   0.000%
   26    6.1  1.5 -0.5   0.000%   0.000%   0.000%   0.000%
   27    7.1  1.5 -0.5   0.007%   0.000%   0.000%   0.000%
   28    8.1  1.5 -0.5   0.001%   0.627%   0.000%   8.333%
   29    9.1  1.5 -0.5   0.042%  42.719%   0.000%   8.333%
   30   10.1  1.5 -0.5   2.063%   0.002%  33.333%   0.000%
   31    1.1  1.5 -1.5   0.004%   0.000%   0.000%   0.000%
   32    2.1  1.5 -1.5   0.000%   0.003%   0.000%   0.000%
   33    3.1  1.5 -1.5   0.011%   0.000%   0.000%   0.000%
   34    4.1  1.5 -1.5   0.000%   0.003%   0.000%   0.000%
   35    5.1  1.5 -1.5   0.012%   0.000%   0.000%   0.000%
   36    6.1  1.5 -1.5   0.005%   0.000%   0.000%   0.000%
   37    7.1  1.5 -1.5   0.000%   0.002%   0.000%   0.000%
   38    8.1  1.5 -1.5   6.187%   0.006%  25.000%   0.000%
   39    9.1  1.5 -1.5   6.188%   0.006%  25.000%   0.000%
   40   10.1  1.5 -1.5   0.039%  40.269%   0.000%   0.000%
   41    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   42    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   43    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   44    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   45    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   46    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   47    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%
   48    8.1  0.5  0.5   0.576%   0.001%   0.000%   0.000%
   49    9.1  0.5  0.5   0.004%   0.000%   0.000%   0.000%
   50   10.1  0.5  0.5   0.000%   0.503%   0.000%   0.000%
   51   11.1  0.5  0.5   0.000%   0.208%   0.000%   0.000%
   52   12.1  0.5  0.5   0.000%   0.486%   0.000%   0.000%
   53    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   54    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   55    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   56    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   57    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   58    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   59    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%
   60    8.1  0.5 -0.5   0.001%   0.576%   0.000%   0.000%
   61    9.1  0.5 -0.5   0.000%   0.004%   0.000%   0.000%
   62   10.1  0.5 -0.5   0.503%   0.000%   0.000%   0.000%
   63   11.1  0.5 -0.5   0.208%   0.000%   0.000%   0.000%
   64   12.1  0.5 -0.5   0.486%   0.000%   0.000%   0.000%


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

              2       6      357.52       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      7580.21   6013.51   1198.68    365.31      1.88      0.51
 REAL TIME  *      7845.75 SEC
 DISK USED  *       389.69 MB (local),        4.62 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.971138485378

              CI              CI           MULTI
   -109.92233437   -109.92052479   -109.33341791
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
