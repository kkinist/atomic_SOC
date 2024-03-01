
 Working directory              : /wrk/irikura/molpro.5Lm8BCte2q/
 Global scratch directory       : /wrk/irikura/molpro.5Lm8BCte2q/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.5Lm8BCte2q/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! 4F + 2F,2D
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,7;
     wf,nelec=17,sym=1,spin=1; state,12;
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
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.09 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 13-Feb-24          TIME: 16:51:38  
 **********************************************************************************************************************************

 SHA1:             e31ec9a5ea85254ab76f59d122cbdd51c71cf98b
 **********************************************************************************************************************************

 Memory per process:      1000 MW
 Total memory per node:  10000 MW

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

     13.631 MB (compressed) written to integral file ( 15.8%)

     Node minimum: 0.786 MB, node maximum: 1.835 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     576100.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     576100      RECORD LENGTH: 524288

 Memory used in sort:       1.13 MW

 SORT1 READ    10862098. AND WROTE      115800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.05 SEC, REAL TIME:     0.06 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     40 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      574636.  Node maximum:      579915. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.60      0.44
 REAL TIME  *         1.03 SEC
 DISK USED  *        29.10 MB (local),      337.97 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.227D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.225D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.211D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.211D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 5 3 1 6 4 2 5 3 2   6 4 3 5 1 711 91415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.357D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.358D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263   0.05263   0.05263
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3617
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    8    0   -109.34700541    -109.35824586   -0.01124045    0.16041533 0.00001796 0.00000000  0.10E+00      0.34
   2    3    6    0   -109.35802045    -109.35803011   -0.00000966    0.00513691 0.00001043 0.00000000  0.34E-02      0.60
   3   20   40    0   -109.35803011    -109.35803011   -0.00000000    0.00000494 0.00000034 0.00000000  0.37E-05      1.95

 CONVERGENCE REACHED!  Final gradient:    0.00000014 ( 0.14E-06)
                       Final energy:   -109.35803011
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380835326064
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272164
 One electron energy                          -193.47641964
 Two electron energy                            84.09558432
 Virial ratio                                    3.66895001
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380835325027
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272176
 One electron energy                          -193.47641981
 Two electron energy                            84.09558448
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380835324106
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272182
 One electron energy                          -193.47641990
 Two electron energy                            84.09558457
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380835323334
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272192
 One electron energy                          -193.47642003
 Two electron energy                            84.09558471
 Virial ratio                                    3.66894999
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380835323020
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272195
 One electron energy                          -193.47642008
 Two electron energy                            84.09558476
 Virial ratio                                    3.66894999
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380835322793
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272195
 One electron energy                          -193.47642009
 Two electron energy                            84.09558476
 Virial ratio                                    3.66894999
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380835321869
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272205
 One electron energy                          -193.47642023
 Two electron energy                            84.09558491
 Virial ratio                                    3.66894998
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.352898892473
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751354
 One electron energy                          -193.44995924
 Two electron energy                            84.09706035
 Virial ratio                                    3.66925887
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.352898890014
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751366
 One electron energy                          -193.44995941
 Two electron energy                            84.09706052
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.352898888355
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751372
 One electron energy                          -193.44995949
 Two electron energy                            84.09706060
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.352898886454
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751382
 One electron energy                          -193.44995963
 Two electron energy                            84.09706074
 Virial ratio                                    3.66925885
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.352898885698
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751386
 One electron energy                          -193.44995968
 Two electron energy                            84.09706079
 Virial ratio                                    3.66925885
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.352898885415
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751386
 One electron energy                          -193.44995968
 Two electron energy                            84.09706080
 Virial ratio                                    3.66925885
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.352898883270
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751396
 One electron energy                          -193.44995983
 Two electron energy                            84.09706094
 Virial ratio                                    3.66925884
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333286538074
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330024
 One electron energy                          -193.59161729
 Two electron energy                            84.25833075
 Virial ratio                                    3.66320335
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333286537977
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330025
 One electron energy                          -193.59161729
 Two electron energy                            84.25833075
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333286537466
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330033
 One electron energy                          -193.59161739
 Two electron energy                            84.25833086
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333286537276
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330032
 One electron energy                          -193.59161737
 Two electron energy                            84.25833083
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333286536955
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330037
 One electron energy                          -193.59161745
 Two electron energy                            84.25833092
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     4.353901154970
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     6.755901883873
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     0.099176123546
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     3.999999999705
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     3.900821446927
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     5.646103127393
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.244138432242
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     4.160089517020
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     6.828185181434
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     0.213476151780
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     3.999999978614
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     3.786512890740
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     5.839815600813
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.171844984568
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     1.000000000548
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     2.426041940749
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999996361974
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000003926467
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.573795451895
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     3.654273531595
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     0.040576343592
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     7.154885645907
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     3.999999996036
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     2.845101047593
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     6.345722382009
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.959428169003
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     3.841601771483
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     0.049078077190
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     7.634308849444
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     4.000000299509
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     2.365654046857
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     6.158491107472
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     3.950925657589
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     1.000000002360
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     3.479275144581
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000003576220
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     3.999995301603
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     0.520837462395
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     3.991825313435
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     5.203521772535
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     4.745938230547
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000004259
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     5.254077505480
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     0.008174490598
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     4.796433398755
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.998308711497
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     5.122736741375
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     4.152214998776
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     3.999999721877
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     5.847833062403
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     0.001693291715
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     4.877229357843
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.999999997091
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     0.094682914670
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000061806
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000771930
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     3.905367085710
 
 !MCSCF expec      <1.1 Quartet|L**2|1.1 Quartet>    12.000000000000
 !MCSCF expec      <2.1 Quartet|L**2|2.1 Quartet>    12.000000000000
 !MCSCF expec      <3.1 Quartet|L**2|3.1 Quartet>    12.000000000000
 !MCSCF expec      <4.1 Quartet|L**2|4.1 Quartet>    12.000000000000
 !MCSCF expec      <5.1 Quartet|L**2|5.1 Quartet>    12.000000000000
 !MCSCF expec      <6.1 Quartet|L**2|6.1 Quartet>    12.000000000000
 !MCSCF expec      <7.1 Quartet|L**2|7.1 Quartet>    12.000000000000
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 3 5 2 6 1 1 2 6   3 4 5 1 2 6 3 4 5 6   2 3 5 4 111 712 814  151310 9 6 2 5 3 4 1
                                       11 712 815141310 9 6   2 5 3 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 3 1 2 3 1 2 3 1 2   3 1 5 6 8 410 9 7 2   3 1 5 6 810 7 9 4 2   3 1 5 610 8 9 7 4 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99984    -3.72320     1  1  s    1.00208
    2.1     1.60118    -0.30725     1  1  d1+  1.00394
    3.1     1.60118    -0.30725     1  1  d2-  1.00394
    4.1     1.60118    -0.30725     1  1  d2+  1.00394
    5.1     1.60118    -0.30725     1  1  d0   1.00394
    6.1     1.60118    -0.30725     1  1  d1-  1.00394
    7.1     0.99496    -0.10138     1  2  s    0.89695
    1.2     1.99977    -2.35363     1  1  py   1.00013
    2.2     1.99977    -2.35363     1  1  pz   1.00013
    3.2     1.99977    -2.35363     1  1  px   1.00013
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================
 
 222aa2a 222      0.00000000      0.00000069      0.00001336      0.99999997     -0.00009906     -0.00000497      0.00001115
 22a2a2a 222      0.99897762     -0.00000001      0.00000022     -0.00000023     -0.00000184     -0.04520699     -0.00000000
 2a222aa 222      0.04043435      0.00000024     -0.00000434      0.00000445      0.00003635      0.89351274      0.00000000
 222a2aa 222     -0.00000000      0.00000220     -0.08445195      0.00008933      0.89043126     -0.00003663      0.00003047
 22a22aa 222      0.00000000      0.88987904      0.00000890     -0.00000162     -0.00000444     -0.00000024      0.09008479
 2a2a22a 222      0.00000000      0.13524553      0.00003917     -0.00000996     -0.00002687     -0.00000004      0.88414286
 2aa222a 222     -0.00000000     -0.00000522      0.88326935     -0.00002575     -0.14083756      0.00001002     -0.00004261
 2222aaa 222      0.00000000      0.00000175     -0.46119744     -0.00003671     -0.43277812      0.00001537      0.00000701
 2a22a2a 222     -0.00000000     -0.43568784      0.00001747     -0.00000482     -0.00001295      0.00000012      0.45844965
 22aa22a 222      0.02021718      0.00000012     -0.00000217      0.00000222      0.00001817      0.44675638      0.00000000
 
 Energy:       -109.38083533   -109.38083533   -109.38083532   -109.38083532   -109.38083532   -109.38083532   -109.38083532
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 222aa2b 222      0.00000022     -0.00002350      0.00017449      0.81442184      0.00049704      0.00000099     -0.00003506
 22a2a2b 222      0.81424982      0.00001945     -0.00000001     -0.00000020      0.00000077     -0.01674667      0.00000033
 222a2ab 222     -0.00000012      0.00001073     -0.01424530     -0.00044142      0.72830175      0.00002759      0.00004297
 2a222ab 222      0.01497867      0.00000831      0.00000036     -0.00000088     -0.00002758      0.72828717     -0.00001711
 22a22ab 222     -0.00001745      0.72395860      0.00001458      0.00002437     -0.00001512     -0.00000601      0.08068788
 2a2a22b 222     -0.00000243      0.10286394      0.00000323      0.00003404     -0.00004398      0.00001581      0.72114185
 2aa222b 222      0.00000003     -0.00001655      0.70873658     -0.00004915     -0.16828258     -0.00000672     -0.00001107
 22a2b2a 222     -0.40712489     -0.00000972      0.00000001      0.00000010     -0.00000038      0.00837334     -0.00000017
 22b2a2a 222     -0.40712492     -0.00000972      0.00000001      0.00000010     -0.00000038      0.00837333     -0.00000017
 220222a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 222022a 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000
 222202a 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000
 222ba2a 222     -0.00000011      0.00001175     -0.00008725     -0.40721089     -0.00024852     -0.00000050      0.00001753
 222ab2a 222     -0.00000011      0.00001175     -0.00008725     -0.40721095     -0.00024852     -0.00000050      0.00001753
 202222a 222      0.00000000      0.00000000     -0.00000000     -0.00000001     -0.00000000     -0.00000000      0.00000000
 2b222aa 222     -0.00748933     -0.00000416     -0.00000018      0.00000044      0.00001379     -0.36414357      0.00000855
 2a222ba 222     -0.00748934     -0.00000416     -0.00000018      0.00000044      0.00001379     -0.36414360      0.00000855
 2ba222a 222     -0.00000002      0.00000828     -0.35436826      0.00002457      0.08414128      0.00000336      0.00000554
 222b2aa 222      0.00000006     -0.00000536      0.00712264      0.00022071     -0.36415086     -0.00001380     -0.00002149
 222a2ba 222      0.00000006     -0.00000536      0.00712267      0.00022071     -0.36415089     -0.00001380     -0.00002149
 2ab222a 222     -0.00000002      0.00000828     -0.35436832      0.00002457      0.08414130      0.00000336      0.00000554
 22a22ba 222      0.00000872     -0.36197928     -0.00000729     -0.00001218      0.00000756      0.00000300     -0.04034394
 2a2b22a 222      0.00000121     -0.05143196     -0.00000162     -0.00001702      0.00002199     -0.00000791     -0.36057092
 2b2a22a 222      0.00000121     -0.05143198     -0.00000162     -0.00001702      0.00002199     -0.00000791     -0.36057092
 22b22aa 222      0.00000872     -0.36197932     -0.00000729     -0.00001218      0.00000756      0.00000300     -0.04034394
 222220a 222     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000     -0.00000000
 2222aab 222      0.00000005      0.00000336     -0.40096473      0.00028323     -0.32332723     -0.00001205     -0.00001842
 2a22a2b 222      0.00000867     -0.35858913     -0.00000655      0.00000558     -0.00001666      0.00001260      0.36976630
 22aa22b 222      0.00748934      0.00000416      0.00000018     -0.00000044     -0.00001379      0.36414361     -0.00000855
 2222aba 222     -0.00000002     -0.00000168      0.20048236     -0.00014162      0.16166362      0.00000602      0.00000921
 2222baa 222     -0.00000002     -0.00000168      0.20048238     -0.00014162      0.16166361      0.00000602      0.00000921
 2b22a2a 222     -0.00000434      0.17929455      0.00000328     -0.00000279      0.00000833     -0.00000630     -0.18488314
 2a22b2a 222     -0.00000434      0.17929458      0.00000328     -0.00000279      0.00000833     -0.00000630     -0.18488316
 22a2220 222     -0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 22222a0 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000
 2a22220 222      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000001
 2222a20 222     -0.00000000     -0.00000000     -0.00000000      0.00000001      0.00000000      0.00000000     -0.00000000
 222a220 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22ba22a 222     -0.00374467     -0.00000208     -0.00000009      0.00000022      0.00000690     -0.18207181      0.00000428
 22ab22a 222     -0.00374467     -0.00000208     -0.00000009      0.00000022      0.00000690     -0.18207179      0.00000428
 22a2022 222      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000
 2220a22 222     -0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000
 222a022 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 2202a22 222     -0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 202a222 222      0.00000001     -0.00000059      0.00000440      0.02052139      0.00001252      0.00000003     -0.00000088
 
 Energy:       -109.35289889   -109.35289889   -109.35289889   -109.35289889   -109.35289889   -109.35289889   -109.35289888

 State:                8               9              10              11              12
 222aa2b 222      0.00000000     -0.00000001     -0.00000000      0.00000000      0.00000003
 22a2a2b 222     -0.00000002      0.00000000      0.00000000      0.00000000      0.00000000
 222a2ab 222     -0.00000000      0.00000000      0.00000002      0.00000000      0.00000000
 2a222ab 222     -0.00000001      0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a22ab 222      0.00000000     -0.00000000      0.00000000     -0.00000003      0.00000000
 2a2a22b 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000
 2aa222b 222     -0.00000000      0.00000000     -0.00000003     -0.00000000     -0.00000000
 22a2b2a 222      0.51886886     -0.00000022     -0.00000689     -0.00001460     -0.00000217
 22b2a2a 222     -0.51886885      0.00000022      0.00000689      0.00001460      0.00000217
 220222a 222     -0.00000056     -0.51269108     -0.00004525     -0.00002745     -0.07982949
 222022a 222     -0.00000056     -0.51269107     -0.00004525     -0.00002745     -0.07982951
 222202a 222      0.00000056      0.51269107      0.00004525      0.00002745      0.07982950
 222ba2a 222     -0.00000211      0.07982950      0.00007874     -0.00025873     -0.51269102
 222ab2a 222      0.00000211     -0.07982949     -0.00007874      0.00025873      0.51269099
 202222a 222      0.00000211      0.18721116     -0.00004557      0.00023779      0.48391818
 2b222aa 222      0.44935361     -0.00000019     -0.00000596     -0.00001265     -0.00000188
 2a222ba 222     -0.44935360      0.00000019      0.00000596      0.00001265      0.00000188
 2ba222a 222      0.00000598     -0.00004920      0.44935335      0.00048569      0.00006111
 222b2aa 222     -0.00000598      0.00004920     -0.44935335     -0.00048569     -0.00006111
 222a2ba 222      0.00000598     -0.00004920      0.44935333      0.00048569      0.00006111
 2ab222a 222     -0.00000598      0.00004920     -0.44935332     -0.00048569     -0.00006111
 22a22ba 222      0.00001264      0.00001104     -0.00048566      0.44935331     -0.00022512
 2a2b22a 222      0.00001264      0.00001104     -0.00048566      0.44935329     -0.00022512
 2b2a22a 222     -0.00001264     -0.00001104      0.00048566     -0.44935329      0.00022512
 22b22aa 222     -0.00001264     -0.00001104      0.00048566     -0.44935328      0.00022512
 222220a 222     -0.00000155      0.32547991      0.00009082     -0.00021034     -0.40408868
 2222aab 222      0.00000000     -0.00000000      0.00000002      0.00000000      0.00000000
 2a22a2b 222      0.00000000      0.00000000     -0.00000000      0.00000001     -0.00000000
 22aa22b 222     -0.00000002     -0.00000000      0.00000000      0.00000000      0.00000000
 2222aba 222     -0.00000345      0.00002840     -0.25943428     -0.00028041     -0.00003528
 2222baa 222      0.00000345     -0.00002840      0.25943426      0.00028041      0.00003528
 2b22a2a 222     -0.00000730     -0.00000637      0.00028039     -0.25943425      0.00012997
 2a22b2a 222      0.00000730      0.00000637     -0.00028039      0.25943424     -0.00012997
 22a2220 222      0.20263820     -0.00000009     -0.00000269     -0.00000570     -0.00000085
 22222a0 222      0.00000270     -0.00002219      0.20263806      0.00021902      0.00002756
 2a22220 222     -0.00000570     -0.00000498      0.00021901     -0.20263801      0.00010152
 2222a20 222      0.00000022      0.20022552      0.00001767      0.00001072      0.03117649
 222a220 222      0.00000082     -0.03117647     -0.00003075      0.00010104      0.20022548
 22ba22a 222      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 22ab22a 222      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22a2022 222     -0.06718509      0.00000003      0.00000089      0.00000189      0.00000028
 2220a22 222     -0.00000007     -0.06638519     -0.00000586     -0.00000355     -0.01033663
 222a022 222     -0.00000027      0.01033663      0.00001020     -0.00003350     -0.06638517
 2202a22 222     -0.00000007     -0.06638516     -0.00000586     -0.00000355     -0.01033662
 202a222 222     -0.00000023     -0.03033645      0.00000359     -0.00002463     -0.05065019
 
 Energy:       -109.33328654   -109.33328654   -109.33328654   -109.33328654   -109.33328654
 


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
 CPU TIMES  *         2.63      2.03      0.44
 REAL TIME  *         3.25 SEC
 DISK USED  *        32.59 MB (local),      372.87 MB (total)
 SF USED    *        12.09 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3808353   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3528989   12.0
    -109.3332865    6.0
    -109.3332865    6.0
    -109.3332865    6.0
    -109.3332865    6.0
    -109.3332865    6.0
                                                  


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
     1      -109.38083533
     2      -109.38083533
     3      -109.38083532
     4      -109.38083532
     5      -109.38083532
     6      -109.38083532
     7      -109.38083532

 Number of blocks in overlap matrix:    96   Smallest eigenvalue:  0.27D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  408831 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  413743 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38083533    -0.00000000    -0.71460399  0.25D-01  0.12D+00     0.17
    1     2     2     1.00000000     0.00000000  -109.38083533    -0.00000000    -0.71430020  0.25D-01  0.12D+00     0.17
    1     3     3     1.00000000     0.00000000  -109.38083532     0.00000000    -0.71433185  0.25D-01  0.12D+00     0.17
    1     4     4     1.00000000     0.00000000  -109.38083532     0.00000000    -0.71470700  0.25D-01  0.12D+00     0.17
    1     5     5     1.00000000     0.00000000  -109.38083532     0.00000000    -0.71427076  0.25D-01  0.12D+00     0.17
    1     6     6     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71413703  0.25D-01  0.12D+00     0.17
    1     7     7     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71427693  0.25D-01  0.12D+00     0.17
    2     1     1     1.09343297    -0.56784364  -109.94867896    -0.56784364    -0.01562491  0.99D-03  0.21D-02     8.44
    2     2     2     1.09343241    -0.56782635  -109.94866167    -0.56782635    -0.01564611  0.99D-03  0.21D-02     8.44
    2     3     3     1.09345944    -0.56782521  -109.94866053    -0.56782521    -0.01564844  0.99D-03  0.21D-02     8.44
    2     4     4     1.09342484    -0.56781010  -109.94864543    -0.56781010    -0.01566071  0.99D-03  0.21D-02     8.44
    2     5     5     1.09340749    -0.56780971  -109.94864503    -0.56780971    -0.01566077  0.99D-03  0.21D-02     8.44
    2     6     6     1.09344116    -0.56778043  -109.94861575    -0.56778043    -0.01571290  0.99D-03  0.21D-02     8.44
    2     7     7     1.09346100    -0.56776357  -109.94859890    -0.56776357    -0.01572474  0.99D-03  0.21D-02     8.44
    3     1     1     1.08864294    -0.58264524  -109.96348057    -0.01480160    -0.00018867  0.13D-04  0.24D-04    16.62
    3     2     2     1.08864404    -0.58264511  -109.96348043    -0.01481876    -0.00018880  0.13D-04  0.24D-04    16.62
    3     3     3     1.08865828    -0.58264488  -109.96348021    -0.01481968    -0.00018989  0.13D-04  0.25D-04    16.62
    3     4     4     1.08865461    -0.58264481  -109.96348013    -0.01483470    -0.00018995  0.13D-04  0.25D-04    16.62
    3     5     5     1.08863224    -0.58264466  -109.96347998    -0.01483495    -0.00018867  0.13D-04  0.24D-04    16.62
    3     6     6     1.08861574    -0.58264349  -109.96347881    -0.01486306    -0.00018955  0.13D-04  0.25D-04    16.62
    3     7     7     1.08861849    -0.58264340  -109.96347872    -0.01487983    -0.00018970  0.13D-04  0.25D-04    16.62
    4     1     1     1.08920656    -0.58283790  -109.96367323    -0.00019266    -0.00000852  0.24D-05  0.91D-06    24.76
    4     2     2     1.08920462    -0.58283788  -109.96367320    -0.00019277    -0.00000853  0.24D-05  0.92D-06    24.76
    4     3     3     1.08920303    -0.58283783  -109.96367316    -0.00019295    -0.00000853  0.24D-05  0.90D-06    24.76
    4     4     4     1.08920344    -0.58283783  -109.96367315    -0.00019302    -0.00000853  0.24D-05  0.90D-06    24.76
    4     5     5     1.08919951    -0.58283773  -109.96367306    -0.00019307    -0.00000858  0.24D-05  0.90D-06    24.76
    4     6     6     1.08919549    -0.58283764  -109.96367296    -0.00019415    -0.00000865  0.25D-05  0.91D-06    24.76
    4     7     7     1.08919455    -0.58283764  -109.96367296    -0.00019423    -0.00000865  0.25D-05  0.91D-06    24.76
    5     1     1     1.08940557    -0.58284679  -109.96368212    -0.00000889    -0.00000047  0.82D-07  0.72D-07    32.93
    5     2     2     1.08940544    -0.58284679  -109.96368212    -0.00000891    -0.00000047  0.82D-07  0.72D-07    32.93
    5     3     3     1.08940571    -0.58284679  -109.96368211    -0.00000895    -0.00000048  0.85D-07  0.70D-07    32.93
    5     4     4     1.08940559    -0.58284679  -109.96368211    -0.00000896    -0.00000048  0.85D-07  0.70D-07    32.93
    5     5     5     1.08940561    -0.58284678  -109.96368210    -0.00000905    -0.00000048  0.88D-07  0.70D-07    32.93
    5     6     6     1.08940490    -0.58284678  -109.96368210    -0.00000914    -0.00000049  0.88D-07  0.71D-07    32.93
    5     7     7     1.08940479    -0.58284678  -109.96368210    -0.00000914    -0.00000049  0.88D-07  0.71D-07    32.93
    6     1     1     1.08945741    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.60D-08  0.43D-08    41.16
    6     2     2     1.08945734    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.59D-08  0.42D-08    41.16
    6     3     3     1.08945734    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.59D-08  0.42D-08    41.16
    6     4     4     1.08945741    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.60D-08  0.43D-08    41.16
    6     5     5     1.08945739    -0.58284730  -109.96368262    -0.00000052    -0.00000003  0.59D-08  0.42D-08    41.16
    6     6     6     1.08945728    -0.58284730  -109.96368262    -0.00000053    -0.00000003  0.60D-08  0.42D-08    41.16
    6     7     7     1.08945729    -0.58284730  -109.96368262    -0.00000053    -0.00000003  0.59D-08  0.42D-08    41.16
    7     1     1     1.08946146    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.24D-09  0.31D-09    49.36
    7     2     2     1.08946140    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.25D-09  0.30D-09    49.36
    7     3     3     1.08946141    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.25D-09  0.30D-09    49.36
    7     4     4     1.08946145    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.24D-09  0.31D-09    49.36
    7     5     5     1.08946138    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.25D-09  0.31D-09    49.36
    7     6     6     1.08946141    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.26D-09  0.30D-09    49.36
    7     7     7     1.08946139    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.25D-09  0.30D-09    49.36


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.6%
 P   0.3%  11.3%  58.0%

 Initialization:   0.2%
 Other:           29.3%

 Total CPU:       49.4 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 222//2/222           0.0000000   0.0000000   0.0000000   0.9580629  -0.0000000   0.0000000  -0.0000000
 22/2/2/222           0.9569201   0.0000000   0.0000000   0.0000000   0.0000000  -0.0467808  -0.0000000
 2/222//222           0.0418421  -0.0000000  -0.0000000   0.0000000   0.0000000   0.8558964   0.0000000
 22/22//222          -0.0000000   0.8542600  -0.0000000   0.0000000   0.0000000   0.0000000   0.0674430
 2//222/222           0.0000000  -0.0000000   0.8534074   0.0000000  -0.0774909   0.0000000  -0.0000000
 222/2//222           0.0000000  -0.0000000  -0.1383202   0.0000000   0.8456806   0.0000000  -0.0000000
 2/2/22/222           0.0000000   0.1482622   0.0000000   0.0000000  -0.0000000   0.0000000   0.8439946
 2/22/2/222          -0.0000000  -0.4076061  -0.0000000   0.0000000   0.0000000   0.0000000   0.4483405
 2222///222           0.0000000  -0.0000000  -0.4128534   0.0000000  -0.4435134   0.0000000  -0.0000000
 22//22/222           0.0209209   0.0000000   0.0000000   0.0000000   0.0000000   0.4279456  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.958057    0.000000   -0.000000   -0.000000    0.000000    0.003476    0.000000
 2          -0.000000    0.957829   -0.000000   -0.000000    0.000000   -0.000000    0.021189
 3           0.000000    0.000000    0.955879   -0.000000   -0.064652   -0.000000    0.000000
 4           0.000000    0.000000    0.000000    0.958063   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000    0.064653   -0.000000    0.955879    0.000000   -0.000000
 6          -0.003476   -0.000000   -0.000000   -0.000000   -0.000000    0.958057   -0.000000
 7          -0.000000   -0.021189    0.000000   -0.000000    0.000000    0.000000    0.957829

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958063   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000
 2          -0.000000    0.958063   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
 3           0.000000   -0.000000    0.958063   -0.000000    0.000000   -0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.958063    0.000000   -0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958063   -0.000000   -0.000000
 6           0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.958063    0.000000
 7          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.958063


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95805655 (fixed)   0.95806299 (relaxed)   0.95806286 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724683
 Singles      0.01453480   -0.07379993   -0.07551485
 Pairs        0.07492668   -0.00000000   -0.04008565
 Total        1.08946175   -0.07379993   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083533
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487567
 One electron energy                 -193.11889051
 Two electron energy                   83.15520786
 Virial quotient                       -2.65325160
 Correlation energy                    -0.58284733
 !MRCI STATE 1.1 Energy              -109.963682656221

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582520 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582503 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582520 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137393 (Pople, fixed reference)
 Cluster corrected energies          -110.01137376 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137393 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95782854 (fixed)   0.95806302 (relaxed)   0.95806289 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.45691282
 Singles      0.01453477   -0.07379996   -0.07551485
 Pairs        0.07492665   -0.01125851   -0.05041966
 Total        1.08946170   -0.08505848   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083533
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487354
 One electron energy                 -193.11888755
 Two electron energy                   83.15520490
 Virial quotient                       -2.65325174
 Correlation energy                    -0.58284733
 !MRCI STATE 2.1 Energy              -109.963682655732

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582517 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582499 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582517 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137389 (Pople, fixed reference)
 Cluster corrected energies          -110.01137372 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137389 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95587894 (fixed)   0.95806301 (relaxed)   0.95806288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.46724683
 Singles      0.01453477   -0.07379996   -0.07551485
 Pairs        0.07492667    0.00000000   -0.04008565
 Total        1.08946171   -0.07379996   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487323
 One electron energy                 -193.11888716
 Two electron energy                   83.15520451
 Virial quotient                       -2.65325176
 Correlation energy                    -0.58284733
 !MRCI STATE 3.1 Energy              -109.963682655295

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582517 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582500 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582517 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137390 (Pople, fixed reference)
 Cluster corrected energies          -110.01137373 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137390 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95806286 (fixed)   0.95806299 (relaxed)   0.95806286 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.46724682
 Singles      0.01453482   -0.07379995   -0.07551486
 Pairs        0.07492666    0.00000000   -0.04008565
 Total        1.08946175   -0.07379995   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487523
 One electron energy                 -193.11889011
 Two electron energy                   83.15520746
 Virial quotient                       -2.65325163
 Correlation energy                    -0.58284733
 !MRCI STATE 4.1 Energy              -109.963682654876

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582520 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582502 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582520 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137392 (Pople, fixed reference)
 Cluster corrected energies          -110.01137375 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137392 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95587895 (fixed)   0.95806302 (relaxed)   0.95806289 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724682
 Singles      0.01453477   -0.07379998   -0.07551486
 Pairs        0.07492664   -0.00000000   -0.04008565
 Total        1.08946168   -0.07379998   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487349
 One electron energy                 -193.11888750
 Two electron energy                   83.15520485
 Virial quotient                       -2.65325174
 Correlation energy                    -0.58284733
 !MRCI STATE 5.1 Energy              -109.963682654767

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582516 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582498 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582516 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137388 (Pople, fixed reference)
 Cluster corrected energies          -110.01137371 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137388 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95805657 (fixed)   0.95806301 (relaxed)   0.95806288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724682
 Singles      0.01453478   -0.07379997   -0.07551486
 Pairs        0.07492666    0.00000000   -0.04008565
 Total        1.08946171   -0.07379997   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487328
 One electron energy                 -193.11888675
 Two electron energy                   83.15520410
 Virial quotient                       -2.65325175
 Correlation energy                    -0.58284733
 !MRCI STATE 6.1 Energy              -109.963682654708

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582517 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582500 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582517 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137390 (Pople, fixed reference)
 Cluster corrected energies          -110.01137373 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137390 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95782854 (fixed)   0.95806302 (relaxed)   0.95806289 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.00011444
 Singles      0.01453478   -0.07379998   -0.07551486
 Pairs        0.07492664   -0.50892284   -0.50721804
 Total        1.08946169   -0.58272282   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487291
 One electron energy                 -193.11888688
 Two electron energy                   83.15520423
 Virial quotient                       -2.65325178
 Correlation energy                    -0.58284733
 !MRCI STATE 7.1 Energy              -109.963682654259

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582516 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582499 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582516 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137388 (Pople, fixed reference)
 Cluster corrected energies          -110.01137372 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137388 (Pople, rotated reference)



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
 CPU TIMES  *        54.80     52.17      2.03      0.44
 REAL TIME  *        62.31 SEC
 DISK USED  *        98.20 MB (local),        1.00 GB (total)
 SF USED    *       658.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01582520  AU                              
 SETTING HLSDIAG(2)     =      -110.01582517  AU                              
 SETTING HLSDIAG(3)     =      -110.01582517  AU                              
 SETTING HLSDIAG(4)     =      -110.01582520  AU                              
 SETTING HLSDIAG(5)     =      -110.01582516  AU                              
 SETTING HLSDIAG(6)     =      -110.01582517  AU                              
 SETTING HLSDIAG(7)     =      -110.01582516  AU                              


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
     1      -109.35289889
     2      -109.35289889
     3      -109.35289889
     4      -109.35289889
     5      -109.35289889
     6      -109.35289889
     7      -109.35289888
     8      -109.33328654
     9      -109.33328654
    10      -109.33328654
    11      -109.33328654
    12      -109.33328654

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.59D-05
 Number of N-2 electron functions:    1200
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       2279808
 Total number of contracted configurations:      2359039
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  824859 words, CPU-Time:      0.54 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  507037 words, CPU-time:      0.05 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68630817  0.28D-01  0.10D+00     0.95
    1     2     2     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68741907  0.28D-01  0.10D+00     0.95
    1     3     3     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68754080  0.28D-01  0.10D+00     0.95
    1     4     4     1.00000000     0.00000000  -109.35289889    -0.00000000    -0.68759434  0.28D-01  0.10D+00     0.95
    1     5     5     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68699602  0.28D-01  0.10D+00     0.95
    1     6     6     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68735743  0.28D-01  0.10D+00     0.95
    1     7     7     1.00000000     0.00000000  -109.35289888     0.00000000    -0.68683605  0.28D-01  0.10D+00     0.95
    1     8     8     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69275848  0.31D-01  0.11D+00     0.95
    1     9     9     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69181414  0.31D-01  0.11D+00     0.95
    1    10    10     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69232495  0.31D-01  0.11D+00     0.95
    1    11    11     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69219512  0.31D-01  0.11D+00     0.95
    1    12    12     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69287208  0.31D-01  0.11D+00     0.95
    2     1     1     1.08990502    -0.56821174  -109.92111063    -0.56821174    -0.01649438  0.15D-02  0.22D-02    71.72
    2     2     2     1.08990249    -0.56815610  -109.92105499    -0.56815610    -0.01653579  0.15D-02  0.22D-02    71.72
    2     3     3     1.08987943    -0.56811958  -109.92101847    -0.56811958    -0.01656946  0.15D-02  0.22D-02    71.72
    2     4     4     1.08980982    -0.56800632  -109.92090521    -0.56800632    -0.01661930  0.15D-02  0.23D-02    71.72
    2     5     5     1.08979006    -0.56799703  -109.92089591    -0.56799703    -0.01662126  0.15D-02  0.23D-02    71.72
    2     6     6     1.08997869    -0.56793543  -109.92083432    -0.56793543    -0.01676817  0.16D-02  0.23D-02    71.72
    2     7     7     1.08988379    -0.56772643  -109.92062531    -0.56772643    -0.01687668  0.16D-02  0.23D-02    71.72
    2     8     8     1.09323016    -0.57125468  -109.90454122    -0.57125468    -0.01637183  0.22D-02  0.20D-02    71.72
    2     9     9     1.09325225    -0.57113860  -109.90442514    -0.57113860    -0.01649738  0.22D-02  0.20D-02    71.72
    2    10    10     1.09321270    -0.57095733  -109.90424387    -0.57095733    -0.01661881  0.22D-02  0.20D-02    71.72
    2    11    11     1.09314914    -0.57094556  -109.90423210    -0.57094556    -0.01659009  0.22D-02  0.20D-02    71.72
    2    12    12     1.09313386    -0.57094277  -109.90422931    -0.57094277    -0.01658918  0.22D-02  0.20D-02    71.72
    3     1     1     1.08696137    -0.58504659  -109.93794548    -0.01683485    -0.00084402  0.26D-04  0.18D-03   142.51
    3     2     2     1.08695257    -0.58503898  -109.93793787    -0.01688288    -0.00085061  0.26D-04  0.18D-03   142.51
    3     3     3     1.08693788    -0.58501946  -109.93791835    -0.01689988    -0.00087123  0.24D-04  0.18D-03   142.51
    3     4     4     1.08694223    -0.58501361  -109.93791250    -0.01700729    -0.00087447  0.26D-04  0.18D-03   142.51
    3     5     5     1.08689195    -0.58500829  -109.93790718    -0.01701127    -0.00086814  0.26D-04  0.18D-03   142.51
    3     6     6     1.08688536    -0.58500579  -109.93790468    -0.01707036    -0.00086982  0.26D-04  0.18D-03   142.51
    3     7     7     1.08686593    -0.58498373  -109.93788262    -0.01725730    -0.00089427  0.25D-04  0.19D-03   142.51
    3     8     8     1.08885346    -0.58738105  -109.92066759    -0.01612637    -0.00083669  0.83D-04  0.14D-03   142.51
    3     9     9     1.08885871    -0.58737345  -109.92065999    -0.01623485    -0.00083880  0.81D-04  0.15D-03   142.51
    3    10    10     1.08880145    -0.58733540  -109.92062194    -0.01637807    -0.00085445  0.81D-04  0.15D-03   142.51
    3    11    11     1.08877688    -0.58732771  -109.92061425    -0.01638215    -0.00085814  0.82D-04  0.15D-03   142.51
    3    12    12     1.08877243    -0.58732613  -109.92061267    -0.01638336    -0.00085986  0.82D-04  0.15D-03   142.51
    4     1     1     1.08989554    -0.58622085  -109.93911975    -0.00117427    -0.00018472  0.82D-05  0.39D-04   213.04
    4     2     2     1.08988918    -0.58622032  -109.93911921    -0.00118134    -0.00018482  0.82D-05  0.39D-04   213.04
    4     3     3     1.08987573    -0.58621551  -109.93911440    -0.00119605    -0.00019025  0.80D-05  0.40D-04   213.04
    4     4     4     1.08987427    -0.58621491  -109.93911379    -0.00120129    -0.00019127  0.80D-05  0.41D-04   213.04
    4     5     5     1.08984768    -0.58621314  -109.93911202    -0.00120484    -0.00019081  0.80D-05  0.40D-04   213.04
    4     6     6     1.08984543    -0.58621307  -109.93911196    -0.00120728    -0.00019150  0.82D-05  0.40D-04   213.04
    4     7     7     1.08979591    -0.58619795  -109.93909683    -0.00121422    -0.00021016  0.73D-05  0.46D-04   213.04
    4     8     8     1.09090348    -0.58841278  -109.92169932    -0.00103173    -0.00021043  0.95D-05  0.41D-04   213.04
    4     9     9     1.09088702    -0.58840591  -109.92169245    -0.00103246    -0.00021596  0.93D-05  0.43D-04   213.04
    4    10    10     1.09086882    -0.58839629  -109.92168283    -0.00106088    -0.00022209  0.97D-05  0.44D-04   213.04
    4    11    11     1.09086943    -0.58839555  -109.92168209    -0.00106784    -0.00022425  0.98D-05  0.45D-04   213.04
    4    12    12     1.09086726    -0.58839519  -109.92168173    -0.00106906    -0.00022465  0.97D-05  0.45D-04   213.04
    5     1     1     1.09092431    -0.58642204  -109.93932093    -0.00020118    -0.00004482  0.92D-06  0.11D-04   283.63
    5     2     2     1.09092652    -0.58642176  -109.93932065    -0.00020143    -0.00004510  0.93D-06  0.11D-04   283.63
    5     3     3     1.09090459    -0.58642074  -109.93931963    -0.00020522    -0.00004578  0.98D-06  0.11D-04   283.63
    5     4     4     1.09091301    -0.58642015  -109.93931904    -0.00020524    -0.00004657  0.10D-05  0.11D-04   283.63
    5     5     5     1.09090790    -0.58641854  -109.93931743    -0.00020540    -0.00004839  0.10D-05  0.12D-04   283.63
    5     6     6     1.09090662    -0.58641826  -109.93931714    -0.00020518    -0.00004854  0.10D-05  0.12D-04   283.63
    5     7     7     1.09087741    -0.58641281  -109.93931169    -0.00021486    -0.00005208  0.14D-05  0.13D-04   283.63
    5     8     8     1.09232886    -0.58867688  -109.92196342    -0.00026410    -0.00005753  0.17D-05  0.13D-04   283.63
    5     9     9     1.09231030    -0.58867307  -109.92195960    -0.00026715    -0.00006111  0.18D-05  0.14D-04   283.63
    5    10    10     1.09230321    -0.58867040  -109.92195694    -0.00027412    -0.00006230  0.18D-05  0.14D-04   283.63
    5    11    11     1.09228989    -0.58866830  -109.92195484    -0.00027274    -0.00006467  0.19D-05  0.15D-04   283.63
    5    12    12     1.09228780    -0.58866801  -109.92195454    -0.00027282    -0.00006488  0.19D-05  0.15D-04   283.63
    6     1     1     1.09095683    -0.58646896  -109.93936786    -0.00004693    -0.00001196  0.64D-06  0.26D-05   354.30
    6     2     2     1.09095749    -0.58646885  -109.93936774    -0.00004709    -0.00001198  0.65D-06  0.26D-05   354.30
    6     3     3     1.09095009    -0.58646849  -109.93936738    -0.00004775    -0.00001246  0.65D-06  0.28D-05   354.30
    6     4     4     1.09095445    -0.58646740  -109.93936629    -0.00004725    -0.00001356  0.60D-06  0.33D-05   354.30
    6     5     5     1.09095062    -0.58646730  -109.93936619    -0.00004876    -0.00001321  0.63D-06  0.31D-05   354.30
    6     6     6     1.09094974    -0.58646721  -109.93936610    -0.00004896    -0.00001326  0.63D-06  0.31D-05   354.30
    6     7     7     1.09093389    -0.58646539  -109.93936427    -0.00005258    -0.00001459  0.61D-06  0.36D-05   354.30
    6     8     8     1.09234082    -0.58873585  -109.92202239    -0.00005897    -0.00001831  0.24D-05  0.35D-05   354.30
    6     9     9     1.09233583    -0.58873414  -109.92202068    -0.00006108    -0.00001939  0.24D-05  0.38D-05   354.30
    6    10    10     1.09232329    -0.58873376  -109.92202030    -0.00006336    -0.00001916  0.25D-05  0.36D-05   354.30
    6    11    11     1.09231929    -0.58873235  -109.92201889    -0.00006405    -0.00002016  0.26D-05  0.39D-05   354.30
    6    12    12     1.09231866    -0.58873224  -109.92201877    -0.00006423    -0.00002019  0.26D-05  0.39D-05   354.30
    7     1     1     1.09100832    -0.58648210  -109.93938100    -0.00001314    -0.00000397  0.43D-07  0.10D-05   424.95
    7     2     2     1.09100830    -0.58648210  -109.93938099    -0.00001325    -0.00000395  0.43D-07  0.10D-05   424.95
    7     3     3     1.09100402    -0.58648181  -109.93938070    -0.00001332    -0.00000421  0.37D-07  0.11D-05   424.95
    7     4     4     1.09099689    -0.58648120  -109.93938009    -0.00001380    -0.00000467  0.31D-07  0.13D-05   424.95
    7     5     5     1.09099656    -0.58648114  -109.93938003    -0.00001384    -0.00000473  0.31D-07  0.13D-05   424.95
    7     6     6     1.09099736    -0.58648113  -109.93938001    -0.00001392    -0.00000463  0.34D-07  0.12D-05   424.95
    7     7     7     1.09098478    -0.58648017  -109.93937905    -0.00001478    -0.00000543  0.31D-07  0.15D-05   424.95
    7     8     8     1.09235334    -0.58875468  -109.92204122    -0.00001883    -0.00000549  0.13D-06  0.12D-05   424.95
    7     9     9     1.09234024    -0.58875407  -109.92204061    -0.00001993    -0.00000586  0.14D-06  0.13D-05   424.95
    7    10    10     1.09234491    -0.58875386  -109.92204040    -0.00002010    -0.00000612  0.12D-06  0.14D-05   424.95
    7    11    11     1.09233361    -0.58875335  -109.92203989    -0.00002100    -0.00000644  0.13D-06  0.15D-05   424.95
    7    12    12     1.09233362    -0.58875335  -109.92203988    -0.00002111    -0.00000640  0.14D-06  0.15D-05   424.95
    8     1     1     1.09107965    -0.58648594  -109.93938483    -0.00000384    -0.00000133  0.39D-07  0.34D-06   495.59
    8     2     2     1.09107934    -0.58648593  -109.93938482    -0.00000383    -0.00000134  0.40D-07  0.35D-06   495.59
    8     3     3     1.09107639    -0.58648581  -109.93938470    -0.00000400    -0.00000143  0.44D-07  0.37D-06   495.59
    8     4     4     1.09107161    -0.58648557  -109.93938446    -0.00000437    -0.00000158  0.48D-07  0.40D-06   495.59
    8     5     5     1.09106901    -0.58648556  -109.93938445    -0.00000442    -0.00000158  0.48D-07  0.40D-06   495.59
    8     6     6     1.09106856    -0.58648553  -109.93938441    -0.00000440    -0.00000160  0.49D-07  0.41D-06   495.59
    8     7     7     1.09106221    -0.58648520  -109.93938408    -0.00000503    -0.00000181  0.59D-07  0.45D-06   495.59
    8     8     8     1.09243757    -0.58876047  -109.92204700    -0.00000578    -0.00000213  0.48D-07  0.52D-06   495.59
    8     9     9     1.09242899    -0.58876025  -109.92204678    -0.00000618    -0.00000230  0.50D-07  0.56D-06   495.59
    8    10    10     1.09242716    -0.58876002  -109.92204656    -0.00000616    -0.00000244  0.54D-07  0.61D-06   495.59
    8    11    11     1.09242148    -0.58875986  -109.92204639    -0.00000651    -0.00000257  0.52D-07  0.63D-06   495.59
    8    12    12     1.09242052    -0.58875982  -109.92204636    -0.00000648    -0.00000260  0.54D-07  0.65D-06   495.59
    9     1     1     1.09111744    -0.58648725  -109.93938614    -0.00000131    -0.00000044  0.54D-08  0.11D-06   566.19
    9     2     2     1.09111710    -0.58648724  -109.93938613    -0.00000131    -0.00000045  0.52D-08  0.12D-06   566.19
    9     3     3     1.09111540    -0.58648719  -109.93938608    -0.00000138    -0.00000049  0.46D-08  0.13D-06   566.19
    9     4     4     1.09111059    -0.58648709  -109.93938597    -0.00000152    -0.00000057  0.40D-08  0.16D-06   566.19
    9     5     5     1.09111031    -0.58648707  -109.93938596    -0.00000151    -0.00000058  0.40D-08  0.16D-06   566.19
    9     6     6     1.09111120    -0.58648707  -109.93938595    -0.00000154    -0.00000059  0.33D-08  0.16D-06   566.19
    9     7     7     1.09110505    -0.58648692  -109.93938581    -0.00000173    -0.00000068  0.30D-08  0.19D-06   566.19
    9     8     8     1.09248099    -0.58876248  -109.92204902    -0.00000202    -0.00000077  0.55D-07  0.17D-06   566.19
    9     9     9     1.09247590    -0.58876241  -109.92204895    -0.00000216    -0.00000081  0.59D-07  0.17D-06   566.19
    9    10    10     1.09247537    -0.58876230  -109.92204884    -0.00000228    -0.00000089  0.57D-07  0.20D-06   566.19
    9    11    11     1.09247161    -0.58876225  -109.92204878    -0.00000239    -0.00000092  0.62D-07  0.20D-06   566.19
    9    12    12     1.09247106    -0.58876223  -109.92204877    -0.00000241    -0.00000092  0.63D-07  0.20D-06   566.19
   10     1     1     1.09113334    -0.58648768  -109.93938657    -0.00000043    -0.00000018  0.89D-09  0.50D-07   636.63
   10     2     2     1.09113312    -0.58648768  -109.93938657    -0.00000044    -0.00000018  0.10D-08  0.51D-07   636.63
   10     3     3     1.09113203    -0.58648766  -109.93938655    -0.00000047    -0.00000020  0.11D-08  0.57D-07   636.63
   10     4     4     1.09112849    -0.58648760  -109.93938649    -0.00000052    -0.00000024  0.14D-08  0.73D-07   636.63
   10     5     5     1.09112884    -0.58648760  -109.93938649    -0.00000053    -0.00000024  0.18D-08  0.69D-07   636.63
   10     6     6     1.09112836    -0.58648760  -109.93938648    -0.00000053    -0.00000024  0.15D-08  0.74D-07   636.63
   10     7     7     1.09112492    -0.58648753  -109.93938641    -0.00000061    -0.00000029  0.23D-08  0.87D-07   636.63
   10     8     8     1.09250166    -0.58876323  -109.92204977    -0.00000075    -0.00000031  0.57D-08  0.79D-07   636.63
   10     9     9     1.09249870    -0.58876321  -109.92204975    -0.00000080    -0.00000032  0.48D-08  0.82D-07   636.63
   10    10    10     1.09249754    -0.58876314  -109.92204968    -0.00000084    -0.00000037  0.70D-08  0.10D-06   636.63
   10    11    11     1.09249539    -0.58876312  -109.92204966    -0.00000088    -0.00000038  0.53D-08  0.10D-06   636.63
   10    12    12     1.09249506    -0.58876312  -109.92204966    -0.00000089    -0.00000038  0.54D-08  0.10D-06   636.63
   11     1     1     1.09114345    -0.58648784  -109.93938674    -0.00000016    -0.00000007  0.89D-09  0.20D-07   707.34
   11     2     2     1.09114326    -0.58648784  -109.93938673    -0.00000017    -0.00000007  0.86D-09  0.20D-07   707.34
   11     3     3     1.09114225    -0.58648784  -109.93938673    -0.00000018    -0.00000008  0.75D-09  0.24D-07   707.34
   11     4     4     1.09113999    -0.58648781  -109.93938670    -0.00000021    -0.00000010  0.80D-09  0.29D-07   707.34
   11     5     5     1.09113984    -0.58648781  -109.93938670    -0.00000021    -0.00000010  0.78D-09  0.30D-07   707.34
   11     6     6     1.09113989    -0.58648781  -109.93938670    -0.00000021    -0.00000010  0.57D-09  0.30D-07   707.34
   11     7     7     1.09113777    -0.58648778  -109.93938666    -0.00000025    -0.00000012  0.60D-09  0.36D-07   707.34
   11     8     8     1.09251523    -0.58876351  -109.92205005    -0.00000028    -0.00000013  0.16D-08  0.33D-07   707.34
   11     9     9     1.09251325    -0.58876350  -109.92205004    -0.00000029    -0.00000013  0.16D-08  0.34D-07   707.34
   11    10    10     1.09251203    -0.58876346  -109.92205000    -0.00000033    -0.00000016  0.20D-08  0.42D-07   707.34
   11    11    11     1.09251059    -0.58876346  -109.92205000    -0.00000034    -0.00000016  0.19D-08  0.43D-07   707.34
   11    12    12     1.09251027    -0.58876346  -109.92204999    -0.00000034    -0.00000016  0.20D-08  0.45D-07   707.34
   12     1     1     1.09115007    -0.58648791  -109.93938680    -0.00000006    -0.00000003  0.10D-09  0.76D-08   778.36
   12     2     2     1.09114988    -0.58648791  -109.93938680    -0.00000006    -0.00000003  0.11D-09  0.80D-08   778.36
   12     3     3     1.09114905    -0.58648791  -109.93938679    -0.00000007    -0.00000003  0.14D-09  0.92D-08   778.36
   12     4     4     1.09114751    -0.58648789  -109.93938678    -0.00000008    -0.00000004  0.18D-09  0.11D-07   778.36
   12     5     5     1.09114735    -0.58648789  -109.93938678    -0.00000008    -0.00000004  0.19D-09  0.12D-07   778.36
   12     6     6     1.09114736    -0.58648789  -109.93938678    -0.00000008    -0.00000004  0.24D-09  0.12D-07   778.36
   12     7     7     1.09114599    -0.58648788  -109.93938676    -0.00000010    -0.00000005  0.31D-09  0.14D-07   778.36
   12     8     8     1.09252498    -0.58876362  -109.92205016    -0.00000012    -0.00000005  0.17D-08  0.14D-07   778.36
   12     9     9     1.09252361    -0.58876362  -109.92205016    -0.00000012    -0.00000005  0.19D-08  0.14D-07   778.36
   12    10    10     1.09252148    -0.58876360  -109.92205014    -0.00000014    -0.00000007  0.18D-08  0.18D-07   778.36
   12    11    11     1.09252234    -0.58876360  -109.92205014    -0.00000014    -0.00000007  0.15D-08  0.19D-07   778.36
   12    12    12     1.09252110    -0.58876360  -109.92205014    -0.00000014    -0.00000007  0.17D-08  0.18D-07   778.36
   13     1     1     1.09115248    -0.58648792  -109.93938682    -0.00000002    -0.00000002  0.61D-10  0.54D-08   834.65
   13     2     2     1.09115237    -0.58648793  -109.93938682    -0.00000002    -0.00000002  0.64D-10  0.54D-08   834.65
   13     3     3     1.09115241    -0.58648793  -109.93938681    -0.00000002    -0.00000002  0.53D-10  0.53D-08   834.65
   13     4     4     1.09115129    -0.58648792  -109.93938681    -0.00000003    -0.00000002  0.54D-10  0.71D-08   834.65
   13     5     5     1.09115008    -0.58648791  -109.93938680    -0.00000002    -0.00000003  0.10D-09  0.75D-08   834.65
   13     6     6     1.09114994    -0.58648791  -109.93938680    -0.00000002    -0.00000003  0.11D-09  0.78D-08   834.65
   13     7     7     1.09114905    -0.58648791  -109.93938679    -0.00000003    -0.00000003  0.15D-09  0.92D-08   834.65
   13     8     8     1.09253871    -0.58876369  -109.92205023    -0.00000007    -0.00000002  0.13D-08  0.37D-08   834.65
   13     9     9     1.09253837    -0.58876369  -109.92205023    -0.00000007    -0.00000002  0.14D-08  0.42D-08   834.65
   13    10    10     1.09253854    -0.58876369  -109.92205023    -0.00000009    -0.00000002  0.14D-08  0.46D-08   834.65
   13    11    11     1.09253005    -0.58876367  -109.92205021    -0.00000007    -0.00000002  0.47D-09  0.59D-08   834.65
   13    12    12     1.09253085    -0.58876367  -109.92205021    -0.00000007    -0.00000002  0.59D-09  0.59D-08   834.65


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.2%
 P   0.2%   4.8%  81.8%

 Initialization:   0.1%
 Other:           12.7%

 Total CPU:      834.6 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 222//2\222          -0.0000000   0.0000000   0.9547750  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0000002   0.0000000  -0.0000000
 22/2/2\222          -0.0000000  -0.0000000   0.0000000  -0.0703633   0.0000000  -0.0000000   0.9521802   0.0000000  -0.0000000
                     -0.0000000   0.0000001  -0.0000000
 222/2/\222           0.0219091   0.0000000   0.0000000   0.0000000   0.8536972   0.0000000   0.0000000   0.0000000  -0.0000003
                     -0.0000000   0.0000000   0.0000000
 22/22/\222          -0.0000000   0.8516617   0.0000000   0.0000000  -0.0000000   0.0628555   0.0000000  -0.0000003   0.0000000
                     -0.0000000   0.0000000  -0.0000000
 2/222/\222          -0.0000000   0.0000000  -0.0000000   0.8516568  -0.0000000   0.0000000   0.0629350  -0.0000000  -0.0000000
                      0.0000000   0.0000004   0.0000000
 2/2/22\222           0.0000000   0.1520536  -0.0000000  -0.0000000   0.0000000   0.8403322   0.0000000   0.0000007  -0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2//222\222           0.8211114   0.0000000   0.0000000   0.0000000  -0.2346358   0.0000000   0.0000000   0.0000000  -0.0000005
                     -0.0000000  -0.0000000  -0.0000000
 22/2\2/222           0.0000000  -0.0000000  -0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000008  -0.0000000   0.0000000
                      0.0000000   0.6889542   0.0000000
 222/\2/222           0.0000000   0.0000000   0.0000003  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                      0.6367830   0.0000000  -0.2629128
 2/222\/222           0.0000000  -0.0000000  -0.0000000   0.0000002  -0.0000000   0.0000000  -0.0000028  -0.0000000  -0.0000000
                     -0.0000000  -0.5966512  -0.0000000
 2/\222/222           0.0000025  -0.0000000  -0.0000000   0.0000000   0.0000009   0.0000000   0.0000000   0.0000000   0.5966202
                      0.0000000  -0.0000000   0.0000000
 222/2\/222          -0.0000021   0.0000000   0.0000000  -0.0000000  -0.0000002  -0.0000000  -0.0000000  -0.0000000  -0.5966201
                      0.0000000   0.0000000   0.0000000
 22/22\/222          -0.0000000  -0.0000021  -0.0000000   0.0000000  -0.0000000  -0.0000006  -0.0000000   0.5966193  -0.0000000
                     -0.0000000   0.0000000   0.0000000
 2/2\22/222          -0.0000000  -0.0000024  -0.0000000   0.0000000  -0.0000000   0.0000003  -0.0000000   0.5966190  -0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2222//\222          -0.4867147   0.0000000  -0.0000000   0.0000000  -0.3574135   0.0000000   0.0000000  -0.0000000  -0.0000006
                     -0.0000000   0.0000000   0.0000000
 222220/222           0.0000000   0.0000000   0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                     -0.4828995   0.0000000  -0.0641480
 222022/222          -0.0000000  -0.0000000  -0.0000008  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.1858989  -0.0000000   0.4503003
 220222/222          -0.0000000  -0.0000000  -0.0000007  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.1858990  -0.0000000   0.4503002
 222202/222           0.0000000   0.0000000   0.0000007   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.1858990   0.0000000  -0.4502985
 2/22/2\222          -0.0000000  -0.4039150   0.0000000   0.0000000  -0.0000000   0.4488745  -0.0000000  -0.0000008   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 22//22\222          -0.0000000  -0.0000000   0.0000000   0.4258237  -0.0000000  -0.0000000   0.0314671  -0.0000000   0.0000000
                     -0.0000000  -0.0000008   0.0000000
 202222/222           0.0000000   0.0000000   0.0000007  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                      0.2970003   0.0000000  -0.3861536
 2222/\/222          -0.0000014  -0.0000000   0.0000000   0.0000000   0.0000037   0.0000000  -0.0000000   0.0000000   0.3444590
                      0.0000000  -0.0000000  -0.0000000
 2/22\2/222          -0.0000000   0.0000015  -0.0000000   0.0000000  -0.0000000   0.0000023  -0.0000000   0.3444586  -0.0000000
                     -0.0000000   0.0000000  -0.0000000
 2/22220222          -0.0000000  -0.0000074  -0.0000000   0.0000000  -0.0000000   0.0000038  -0.0000000  -0.2631133  -0.0000000
                     -0.0000000   0.0000000   0.0000000
 22222/0222           0.0000081  -0.0000000  -0.0000000   0.0000000   0.0000082   0.0000000   0.0000000   0.0000000  -0.2631088
                      0.0000000  -0.0000000   0.0000000
 22/2220222           0.0000000   0.0000000   0.0000000   0.0000006  -0.0000000  -0.0000000  -0.0000089   0.0000000  -0.0000000
                      0.0000000   0.2629572   0.0000000
 222/220222           0.0000000  -0.0000000  -0.0000023   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      0.2431881   0.0000000  -0.1003425
 2222/20222          -0.0000000  -0.0000000  -0.0000048  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
                     -0.1003990  -0.0000000  -0.2430339
 22/2022222           0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000
                      0.0000000  -0.0656025   0.0000000
 222/022222           0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0606402   0.0000000   0.0250346
 2220/22222           0.0000000  -0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                      0.0250357   0.0000000   0.0606380
 2202/22222           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000
                      0.0250357  -0.0000000   0.0606378
 222/202222          -0.0000000  -0.0000000   0.0201116  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0550851  -0.0000000  -0.0167874
 222/\/2222           0.0115773   0.0000000  -0.0000000  -0.0000000  -0.0289260  -0.0000000   0.0000000   0.0000000   0.0516712
                     -0.0000000   0.0000000   0.0000000
 22//2\2222           0.0000000   0.0312619  -0.0000000  -0.0000000  -0.0000000  -0.0347408  -0.0000000  -0.0516710   0.0000000
                     -0.0000000  -0.0000000   0.0000000
 22/2\/2222           0.0000000  -0.0276357  -0.0000000   0.0000000   0.0000000  -0.0143890   0.0000000  -0.0516709   0.0000000
                     -0.0000000  -0.0000000  -0.0000000
 2//22\2222           0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0068038  -0.0000000   0.0512223
 2/\22/2222           0.0000000   0.0000000   0.0000001   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
                      0.0512217   0.0000000   0.0068039
 202/222222           0.0000000  -0.0000000   0.0201116  -0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000
                     -0.0271992  -0.0000000   0.0507570

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.000000    0.956338    0.000000    0.043314   -0.000000   -0.000000    0.000000   -0.000000    0.000001
            -0.000000    0.000000
 2          -0.000000    0.956651   -0.000000    0.000000   -0.000000   -0.000000    0.035720   -0.000000   -0.000000   -0.000000
            -0.000001    0.000000
 3           0.000000    0.000000   -0.000000    0.957318    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000    0.000000
 4          -0.050888   -0.000000   -0.000000   -0.000000    0.000000    0.955965   -0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 5           0.000000    0.000000   -0.043314   -0.000000    0.956339   -0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000    0.000000
 6          -0.000000   -0.035720   -0.000000    0.000000    0.000000    0.000000    0.956653    0.000000    0.000000    0.000000
            -0.000000   -0.000000
 7           0.955966    0.000000   -0.000000   -0.000000    0.000000    0.050888    0.000000    0.000001    0.000000    0.000000
            -0.000000   -0.000000
 8           0.000000    0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.954037    0.000000
 9          -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954038
            -0.000000    0.000000
 10         -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.495355    0.000000
            -0.000000    0.815360
 11          0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000    0.954053   -0.000000   -0.000000
             0.000000    0.000000
 12         -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.815375    0.000000
             0.000000   -0.495363

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957318    0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 2           0.000000    0.957318    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000
            -0.000000   -0.000000
 3          -0.000000    0.000000    0.957318   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 4          -0.000000   -0.000000   -0.000000    0.957319   -0.000000   -0.000000   -0.000000    0.000000    0.000000   -0.000000
            -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.957319   -0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957319   -0.000000    0.000000    0.000000   -0.000000
             0.000000    0.000000
 7          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.957320   -0.000000    0.000000   -0.000000
             0.000000    0.000000
 8           0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.954037    0.000000    0.000000
            -0.000000   -0.000000
 9           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.954038   -0.000000
            -0.000000    0.000000
 10         -0.000000   -0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954038
            -0.000000    0.000000
 11         -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.000000
             0.954053   -0.000000
 12         -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.954054

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00487049    -1.62067149       2122220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00486984    -1.62056243       2222210222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00415946    -1.38436229       2221220222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00484827    -1.61694318       2212220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00413919    -1.38096216       2222120222                      


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95633769 (fixed)   0.95732032 (relaxed)   0.95731808 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852594
 Singles      0.01502579   -0.07525504   -0.07704408
 Pairs        0.07612711    0.00000000   -0.04091791
 Total        1.09115760   -0.07525504   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46010803
 One electron energy                 -193.07058607
 Two electron energy                   83.13119925
 Virial quotient                       -2.65169079
 Correlation energy                    -0.58648793
 !MRCI STATE 1.1 Energy              -109.939386815708

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284965 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284664 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284965 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954729 (Pople, fixed reference)
 Cluster corrected energies          -109.98954427 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954729 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95665149 (fixed)   0.95732037 (relaxed)   0.95731812 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852594
 Singles      0.01502582   -0.07525509   -0.07704410
 Pairs        0.07612699   -0.00000000   -0.04091788
 Total        1.09115750   -0.07525509   -0.58648793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46010955
 One electron energy                 -193.07058755
 Two electron energy                   83.13120073
 Virial quotient                       -2.65169070
 Correlation energy                    -0.58648793
 !MRCI STATE 2.1 Energy              -109.939386815687

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284959 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284658 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284959 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954723 (Pople, fixed reference)
 Cluster corrected energies          -109.98954421 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954723 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95731810 (fixed)   0.95732035 (relaxed)   0.95731810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852582
 Singles      0.01502587   -0.07525523   -0.07704411
 Pairs        0.07612697    0.00000003   -0.04091800
 Total        1.09115754   -0.07525520   -0.58648793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46011255
 One electron energy                 -193.07058945
 Two electron energy                   83.13120263
 Virial quotient                       -2.65169051
 Correlation energy                    -0.58648793
 !MRCI STATE 3.1 Energy              -109.939386814393

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284961 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284661 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284961 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954725 (Pople, fixed reference)
 Cluster corrected energies          -109.98954423 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954725 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95596512 (fixed)   0.95732084 (relaxed)   0.95731859 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852614
 Singles      0.01502601   -0.07525537   -0.07704435
 Pairs        0.07612571    0.00000000   -0.04091744
 Total        1.09115642   -0.07525537   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46011801
 One electron energy                 -193.07059519
 Two electron energy                   83.13120838
 Virial quotient                       -2.65169016
 Correlation energy                    -0.58648792
 !MRCI STATE 4.1 Energy              -109.939386807067

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284895 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284594 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284895 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954659 (Pople, fixed reference)
 Cluster corrected energies          -109.98954356 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954659 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.95633874 (fixed)   0.95732138 (relaxed)   0.95731913 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852515
 Singles      0.01502680   -0.07525701   -0.07704498
 Pairs        0.07612370    0.00000000   -0.04091778
 Total        1.09115520   -0.07525701   -0.58648791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46013628
 One electron energy                 -193.07060225
 Two electron energy                   83.13121546
 Virial quotient                       -2.65168899
 Correlation energy                    -0.58648791
 !MRCI STATE 5.1 Energy              -109.939386798662

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284822 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284522 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284822 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954586 (Pople, fixed reference)
 Cluster corrected energies          -109.98954284 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954586 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.95665255 (fixed)   0.95732144 (relaxed)   0.95731919 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852513
 Singles      0.01502684   -0.07525710   -0.07704502
 Pairs        0.07612353   -0.00000000   -0.04091776
 Total        1.09115506   -0.07525710   -0.58648791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289888
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46013911
 One electron energy                 -193.07060419
 Two electron energy                   83.13121740
 Virial quotient                       -2.65168881
 Correlation energy                    -0.58648791
 !MRCI STATE 6.1 Energy              -109.939386796848

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284814 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284513 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284814 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954577 (Pople, fixed reference)
 Cluster corrected energies          -109.98954276 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954577 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95596611 (fixed)   0.95732183 (relaxed)   0.95731958 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000469   -0.00000000   -0.46852509
 Singles      0.01502705   -0.07525756   -0.07704526
 Pairs        0.07612242   -0.00000000   -0.04091756
 Total        1.09115417   -0.07525756   -0.58648791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46015341
 One electron energy                 -193.07061374
 Two electron energy                   83.13122695
 Virial quotient                       -2.65168789
 Correlation energy                    -0.58648790
 !MRCI STATE 7.1 Energy              -109.939386794857

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284761 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284461 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284761 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954525 (Pople, fixed reference)
 Cluster corrected energies          -109.98954223 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954525 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95403700 (fixed)   0.95671280 (relaxed)   0.95403700 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561729    0.00000000   -0.47272682
 Singles      0.01637560   -0.07269742   -0.07494301
 Pairs        0.07668293   -0.00000000   -0.04109386
 Total        1.09867582   -0.07269742   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48335000
 One electron energy                 -193.23637475
 Two electron energy                   83.31432452
 Virial quotient                       -2.64978721
 Correlation energy                    -0.58876369
 !MRCI STATE 8.1 Energy              -109.922050231650

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014697 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653367 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014697 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687965 (Pople, fixed reference)
 Cluster corrected energies          -109.97322341 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687965 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95403751 (fixed)   0.95671295 (relaxed)   0.95403751 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561653    0.00000000   -0.47272691
 Singles      0.01637548   -0.07269744   -0.07494304
 Pairs        0.07668263   -0.00000000   -0.04109374
 Total        1.09867464   -0.07269744   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48335136
 One electron energy                 -193.23637065
 Two electron energy                   83.31432042
 Virial quotient                       -2.64978712
 Correlation energy                    -0.58876369
 !MRCI STATE 9.1 Energy              -109.922050230923

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014628 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653346 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014628 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687895 (Pople, fixed reference)
 Cluster corrected energies          -109.97322321 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687895 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.81536050 (fixed)   0.95671287 (relaxed)   0.95403828 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561474   -0.00000000   -0.07128640
 Singles      0.01637537   -0.07269740   -0.07494303
 Pairs        0.07668275   -0.44105162   -0.44253426
 Total        1.09867286   -0.51374901   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48334050
 One electron energy                 -193.23634554
 Two electron energy                   83.31429531
 Virial quotient                       -2.64978782
 Correlation energy                    -0.58876369
 !MRCI STATE 10.1 Energy             -109.922050229622

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014523 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653356 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014523 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687788 (Pople, fixed reference)
 Cluster corrected energies          -109.97322331 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687788 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.95405299 (fixed)   0.95671659 (relaxed)   0.95405299 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00559155    0.00000000   -0.47273046
 Singles      0.01637282   -0.07269566   -0.07494298
 Pairs        0.07667462   -0.00000000   -0.04109023
 Total        1.09863898   -0.07269566   -0.58876367
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48327600
 One electron energy                 -193.23614250
 Two electron energy                   83.31409229
 Virial quotient                       -2.64979194
 Correlation energy                    -0.58876367
 !MRCI STATE 11.1 Energy             -109.922050209459

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98012526 (Davidson, fixed reference)
 Cluster corrected energies          -109.97652854 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98012526 (Davidson, rotated reference)

 Cluster corrected energies          -109.97685758 (Pople, fixed reference)
 Cluster corrected energies          -109.97321825 (Pople, relaxed reference)
 Cluster corrected energies          -109.97685758 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.81537452 (fixed)   0.95671624 (relaxed)   0.95405445 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00558773   -0.00000000   -0.71662556
 Singles      0.01637223   -0.07269540   -0.07494285
 Pairs        0.07667565    0.26795224    0.20280473
 Total        1.09863562    0.19525683   -0.58876367
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48325904
 One electron energy                 -193.23609664
 Two electron energy                   83.31404643
 Virial quotient                       -2.64979302
 Correlation energy                    -0.58876367
 !MRCI STATE 12.1 Energy             -109.922050209260

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98012328 (Davidson, fixed reference)
 Cluster corrected energies          -109.97652901 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98012328 (Davidson, rotated reference)

 Cluster corrected energies          -109.97685556 (Pople, fixed reference)
 Cluster corrected energies          -109.97321873 (Pople, relaxed reference)
 Cluster corrected energies          -109.97685556 (Pople, rotated reference)



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
 CPU TIMES  *       912.14    857.33     52.17      2.03      0.44
 REAL TIME  *       985.39 SEC
 DISK USED  *       317.36 MB (local),        3.15 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -109.99284965  AU                              
 SETTING HLSDIAG(9)     =      -109.99284959  AU                              
 SETTING HLSDIAG(10)    =      -109.99284961  AU                              
 SETTING HLSDIAG(11)    =      -109.99284895  AU                              
 SETTING HLSDIAG(12)    =      -109.99284822  AU                              
 SETTING HLSDIAG(13)    =      -109.99284814  AU                              
 SETTING HLSDIAG(14)    =      -109.99284761  AU                              
 SETTING HLSDIAG(15)    =      -109.98014697  AU                              
 SETTING HLSDIAG(16)    =      -109.98014628  AU                              
 SETTING HLSDIAG(17)    =      -109.98014523  AU                              
 SETTING HLSDIAG(18)    =      -109.98012526  AU                              
 SETTING HLSDIAG(19)    =      -109.98012328  AU                              


         HLSDIAG
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -109.9928496
    -109.9928496
    -109.9928496
    -109.9928489
    -109.9928482
    -109.9928481
    -109.9928476
    -109.9801470
    -109.9801463
    -109.9801452
    -109.9801253
    -109.9801233
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683
 Replaced energies:   -110.015825   -110.015825   -110.015825   -110.015825   -110.015825   -110.015825   -110.015825

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.922050
                      -109.922050   -109.922050   -109.922050   -109.922050
 Replaced energies:   -109.992850   -109.992850   -109.992850   -109.992849   -109.992848   -109.992848   -109.992848   -109.980147
                      -109.980146   -109.980145   -109.980125   -109.980123



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01582520

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -561.48
                           -0.00       0.00       0.00   -1027.93       0.00       0.00       0.00      -0.00    -608.43      -0.00

    2   2.1  1.5  1.5       0.00       0.01       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00     600.21       0.00   -1031.64       0.00       0.00     608.43      -0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00     561.48       0.00      -0.00
                           -0.00    -600.21      -0.00      -0.00       0.00       0.00   -1019.53       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      46.77      -0.00
                         1027.93      -0.00       0.00       0.00      -0.00     -50.25      -0.00       0.00      -0.00     -53.73

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.01       0.00       0.00      69.79       0.00       0.00
                           -0.00    1031.64      -0.00       0.00       0.00      -0.00     428.87      -0.00      -0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00     523.88
                           -0.00      -0.00      -0.00      50.25       0.00      -0.00      -0.00      -0.00    -460.38      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00
                           -0.00      -0.00    1019.53       0.00    -428.87       0.00      -0.00    -128.97       0.00      -0.00

    8   1.1  1.5  0.5       0.00      -0.00     561.48       0.00      69.79      -0.00      -0.00       0.00       0.00       0.00
                            0.00    -608.43      -0.00      -0.00       0.00       0.00     128.97      -0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00      -0.00       0.00      46.77       0.00       0.00      -0.00       0.00       0.01       0.00
                          608.43       0.00      -0.00       0.00       0.00     460.38      -0.00      -0.00       0.00     200.07

   10   3.1  1.5  0.5    -561.48      -0.00      -0.00      -0.00       0.00     523.88      -0.00       0.00       0.00       0.01
                            0.00       0.00      -0.00      53.73       0.00       0.00       0.00      -0.00    -200.07      -0.00

   11   4.1  1.5  0.5      -0.00     -46.77       0.00       0.00      -0.00      -0.00     592.34       0.00       0.00       0.00
                            0.00      -0.00     -53.73       0.00    -591.75       0.00       0.00     342.64      -0.00       0.00

   12   5.1  1.5  0.5     -69.79      -0.00      -0.00       0.00      -0.00     536.71      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     591.75       0.00      -0.00      -0.00      -0.00     343.88      -0.00

   13   6.1  1.5  0.5       0.00      -0.00    -523.88       0.00    -536.71       0.00      -0.00       0.00       0.00       0.00
                           -0.00    -460.38      -0.00      -0.00       0.00       0.00     532.79      -0.00      -0.00      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00    -592.34       0.00       0.00      -0.00       0.00       0.00       0.00
                         -128.97       0.00      -0.00      -0.00       0.00    -532.79       0.00      -0.00      -0.00     339.84

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     648.34
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -702.55      -0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     702.55       0.00      -0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -648.34      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -54.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -62.04

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -80.58      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -604.92
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -531.60      -0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -148.93       0.00      -0.00

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

   29   1.1  0.5  0.5     387.95       0.00       0.00      -0.00       0.00    -422.45      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -112.17      -0.00       0.00       0.00      -0.00    -181.88       0.00

   30   2.1  0.5  0.5      -0.00       0.00      -0.00     -30.05       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -417.57       0.00      -0.00       0.00      -0.00    -314.43      -0.00       0.00       0.00     277.31

   31   3.1  0.5  0.5      -0.00      32.13      -0.00      -0.00      -0.00      -0.00    -406.98       0.00       0.00       0.00
                           -0.00       0.00      36.92       0.00     406.57       0.00      -0.00     470.84       0.00       0.00

   32   4.1  0.5  0.5       0.00      -0.00     369.44       0.00     369.84       0.00      -0.00       0.00       0.00       0.00
                            0.00     305.80      -0.00      -0.00      -0.00      -0.00    -363.75      -0.00      -0.00      -0.00

   33   5.1  0.5  0.5     -24.91       0.00      -0.00      -0.00      -0.00    -295.08      -0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -392.54      -0.00       0.00      -0.00       0.00     515.56       0.00

   34   6.1  0.5  0.5       0.00      -0.00       0.00     407.14       0.00       0.00       0.00       0.00       0.00       0.00
                           90.75      -0.00       0.00      -0.00       0.00     367.68       0.00       0.00      -0.00     465.58

   35   7.1  0.5  0.5       0.00      -0.00    -376.69      -0.00     -38.75       0.00       0.00       0.00       0.00       0.00
                           -0.00     425.78       0.00      -0.00       0.00       0.00     -97.71      -0.00      -0.00       0.00

   36   8.1  0.5  0.5       0.00       0.00      -0.00     526.21      -0.00       0.00       0.00       0.00       0.00       0.00
                          505.68       0.00       0.00      -0.00      -0.00    -432.81      -0.00       0.00      -0.00    -523.68

   37   9.1  0.5  0.5     545.49       0.00       0.00      -0.00      -0.00     381.42      -0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -526.21      -0.00       0.00      -0.00      -0.00    -517.02       0.00

   38  10.1  0.5  0.5       0.00     396.26       0.00      -0.00      -0.00       0.00     449.68       0.00       0.00       0.00
                           -0.00       0.00     690.71      -0.00    -132.29       0.00       0.00     545.77      -0.00       0.00

   39  11.1  0.5  0.5      -0.00       0.00     358.37      -0.00    -560.94      -0.00      -0.00       0.00       0.00       0.00
                            0.00    -364.94      -0.00      -0.00      -0.00      -0.00    -556.69       0.00       0.00       0.00

   40  12.1  0.5  0.5       0.00    -583.14       0.00       0.00      -0.00       0.00     275.80       0.00       0.00       0.00
                           -0.00      -0.00     139.76       0.00     511.11       0.00      -0.00    -268.40      -0.00      -0.00

   41   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     223.98       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   42   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -241.09       0.00      -0.00

   43   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      18.55      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      21.31

   44   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     213.30
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     176.55      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -14.38       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      52.40      -0.00       0.00

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -217.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     245.83       0.00

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     291.95       0.00       0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     314.94       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     228.78       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     398.78

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     206.90
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -210.70      -0.00

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -336.68       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      80.69


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5      -0.00     -69.79       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     128.97       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5     -46.77      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     460.38      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00      -0.00    -523.88       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           53.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00    -592.34       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -591.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00      -0.00    -536.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          591.75      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00     536.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     532.79       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5     592.34      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -532.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -648.34      -0.00     -80.58       0.00
                         -342.64       0.00       0.00       0.00      -0.00    -702.55      -0.00      -0.00       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     -54.00      -0.00      -0.00
                            0.00    -343.88       0.00       0.00     702.55      -0.00      -0.00       0.00       0.00     531.60

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00     648.34       0.00      -0.00       0.00      -0.00    -604.92
                           -0.00       0.00       0.00    -339.84       0.00       0.00       0.00      62.04       0.00       0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      54.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     -16.75      -0.00       0.00      -0.00     -62.04      -0.00    -683.29       0.00

   12   5.1  1.5  0.5       0.00       0.01       0.00       0.00      80.58       0.00       0.00      -0.00      -0.00    -619.74
                            0.00       0.00      -0.00     142.96      -0.00      -0.00      -0.00     683.29      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.01       0.00      -0.00       0.00     604.92      -0.00     619.74       0.00
                           16.75       0.00      -0.00      -0.00      -0.00    -531.60      -0.00      -0.00       0.00      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.01      -0.00      -0.00      -0.00     683.97      -0.00      -0.00
                            0.00    -142.96       0.00      -0.00    -148.93       0.00      -0.00      -0.00       0.00    -615.22

   15   1.1  1.5 -0.5       0.00      80.58      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     148.93       0.00      -0.00      -0.00     342.64      -0.00      -0.00

   16   2.1  1.5 -0.5      54.00       0.00       0.00      -0.00       0.00       0.01       0.00       0.00       0.00       0.00
                            0.00       0.00     531.60      -0.00       0.00      -0.00    -200.07      -0.00     343.88      -0.00

   17   3.1  1.5 -0.5      -0.00       0.00     604.92      -0.00       0.00       0.00       0.01       0.00       0.00       0.00
                           62.04       0.00       0.00       0.00       0.00     200.07       0.00       0.00      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00      -0.00      -0.00     683.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -683.29       0.00       0.00    -342.64       0.00      -0.00      -0.00       0.00      16.75

   19   5.1  1.5 -0.5       0.00      -0.00     619.74      -0.00       0.00       0.00       0.00       0.00       0.01       0.00
                          683.29       0.00      -0.00      -0.00       0.00    -343.88       0.00      -0.00      -0.00       0.00

   20   6.1  1.5 -0.5       0.00    -619.74       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00       0.00       0.00     615.22       0.00       0.00       0.00     -16.75      -0.00       0.00

   21   7.1  1.5 -0.5    -683.97       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -615.22       0.00       0.00       0.00    -339.84      -0.00     142.96      -0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00     561.48       0.00      69.79      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00    -608.43      -0.00      -0.00       0.00       0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      46.77       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00     608.43       0.00      -0.00       0.00       0.00     460.38

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00    -561.48      -0.00      -0.00      -0.00       0.00     523.88
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.00      53.73       0.00       0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00     -46.77       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -53.73       0.00    -591.75       0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00     -69.79      -0.00      -0.00       0.00      -0.00     536.71
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     591.75       0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00    -523.88       0.00    -536.71       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00    -460.38      -0.00      -0.00       0.00       0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -592.34       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -128.97       0.00      -0.00      -0.00       0.00    -532.79

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00     223.98       0.00       0.00      -0.00       0.00    -243.90
                           -0.00       0.00       0.00    -422.11       0.00       0.00       0.00      64.76       0.00      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00     -17.35       0.00      -0.00
                            0.00    -473.54       0.00      -0.00     241.09      -0.00       0.00      -0.00       0.00     181.54

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      18.55      -0.00      -0.00      -0.00      -0.00
                            0.00       0.00     -23.02      -0.00       0.00      -0.00     -21.31      -0.00    -234.73      -0.00

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     213.30       0.00     213.52       0.00
                           34.74      -0.00       0.00       0.00      -0.00    -176.55       0.00       0.00       0.00       0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00     -14.38       0.00      -0.00      -0.00      -0.00    -170.36
                            0.00       0.00       0.00     280.17       0.00      -0.00       0.00     226.63       0.00      -0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     235.06       0.00       0.00
                           -0.00    -194.02      -0.00       0.00     -52.40       0.00      -0.00       0.00      -0.00    -212.28

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00    -217.48      -0.00     -22.37       0.00
                         -470.12       0.00      -0.00       0.00       0.00    -245.83      -0.00       0.00      -0.00      -0.00

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     303.81      -0.00       0.00
                            0.00    -562.57       0.00       0.00    -291.95      -0.00      -0.00       0.00       0.00     249.88

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00     314.94       0.00       0.00      -0.00      -0.00     220.21
                           -0.00       0.00       0.00     568.69       0.00       0.00       0.00     303.81       0.00      -0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00     228.78       0.00      -0.00      -0.00       0.00
                           -0.00       0.00    -338.14       0.00       0.00      -0.00    -398.78       0.00      76.38      -0.00

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     206.90      -0.00    -323.86      -0.00
                         -607.65      -0.00       0.00      -0.00      -0.00     210.70       0.00       0.00       0.00       0.00

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -336.68       0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -741.33       0.00       0.00       0.00     -80.69      -0.00    -295.09      -0.00

   41   1.1  0.5 -0.5      -0.00       0.00    -243.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -64.76      -0.00       0.00       0.00      -0.00    -181.88       0.00      -0.00       0.00       0.00

   42   2.1  0.5 -0.5     -17.35       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -181.54      -0.00       0.00       0.00     277.31       0.00    -473.54       0.00

   43   3.1  0.5 -0.5      -0.00      -0.00      -0.00    -234.97       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     234.73       0.00      -0.00     470.84       0.00       0.00       0.00       0.00     -23.02

   44   4.1  0.5 -0.5       0.00     213.52       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -210.01      -0.00      -0.00      -0.00      34.74      -0.00       0.00

   45   5.1  0.5 -0.5      -0.00      -0.00    -170.36      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -226.63      -0.00       0.00      -0.00       0.00     515.56       0.00       0.00       0.00       0.00

   46   6.1  0.5 -0.5     235.06       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     212.28       0.00       0.00      -0.00     465.58      -0.00    -194.02      -0.00

   47   7.1  0.5 -0.5      -0.00     -22.37       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     -56.41      -0.00      -0.00       0.00    -470.12       0.00      -0.00

   48   8.1  0.5 -0.5     303.81      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -249.88      -0.00       0.00      -0.00    -523.68       0.00    -562.57       0.00

   49   9.1  0.5 -0.5      -0.00      -0.00     220.21      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -303.81      -0.00       0.00      -0.00      -0.00    -517.02       0.00      -0.00       0.00       0.00

   50  10.1  0.5 -0.5      -0.00      -0.00       0.00     259.63       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -76.38       0.00       0.00     545.77      -0.00       0.00      -0.00       0.00    -338.14

   51  11.1  0.5 -0.5      -0.00    -323.86      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -321.40       0.00       0.00       0.00    -607.65      -0.00       0.00

   52  12.1  0.5 -0.5       0.00      -0.00       0.00     159.23       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     295.09       0.00      -0.00    -268.40      -0.00      -0.00      -0.00      -0.00    -741.33


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     387.95      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     417.57

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     -30.05
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     112.17      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -422.45      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     314.43

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          148.93       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     181.88      -0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -277.31

   11   4.1  1.5  0.5    -683.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     473.54

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          615.22       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   14   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     422.11       0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00    -561.48      -0.00     -69.79       0.00       0.00     223.98      -0.00
                           -0.00      -0.00    -608.43      -0.00      -0.00       0.00       0.00     128.97      -0.00    -241.09

   16   2.1  1.5 -0.5       0.00      -0.00      -0.00      -0.00     -46.77      -0.00      -0.00       0.00       0.00       0.00
                           -0.00     608.43      -0.00      -0.00       0.00       0.00     460.38      -0.00      -0.00       0.00

   17   3.1  1.5 -0.5       0.00     561.48       0.00      -0.00       0.00      -0.00    -523.88       0.00       0.00      -0.00
                          339.84       0.00       0.00       0.00      53.73       0.00       0.00       0.00      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00      46.77      -0.00       0.00       0.00       0.00    -592.34      -0.00     -17.35
                            0.00       0.00      -0.00     -53.73      -0.00    -591.75       0.00       0.00     -64.76       0.00

   19   5.1  1.5 -0.5       0.00      69.79       0.00       0.00      -0.00      -0.00    -536.71       0.00       0.00       0.00
                         -142.96      -0.00      -0.00      -0.00     591.75      -0.00      -0.00      -0.00      -0.00      -0.00

   20   6.1  1.5 -0.5       0.00      -0.00       0.00     523.88      -0.00     536.71       0.00       0.00    -243.90      -0.00
                            0.00      -0.00    -460.38      -0.00      -0.00       0.00      -0.00     532.79       0.00    -181.54

   21   7.1  1.5 -0.5       0.01      -0.00      -0.00      -0.00     592.34      -0.00      -0.00      -0.00      -0.00      -0.00
                            0.00    -128.97       0.00      -0.00      -0.00       0.00    -532.79      -0.00       0.00      -0.00

   22   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          128.97       0.00      -0.00      -0.00    1027.93      -0.00      -0.00      -0.00       0.00       0.00

   23   2.1  1.5 -1.5      -0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -600.21      -0.00    1031.64      -0.00      -0.00       0.00       0.00

   24   3.1  1.5 -1.5      -0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     600.21       0.00       0.00      -0.00      -0.00    1019.53       0.00       0.00

   25   4.1  1.5 -1.5     592.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00   -1027.93       0.00      -0.00      -0.00       0.00      50.25       0.00       0.00       0.00

   26   5.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00
                           -0.00       0.00   -1031.64       0.00      -0.00      -0.00       0.00    -428.87       0.00       0.00

   27   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                          532.79       0.00       0.00       0.00     -50.25      -0.00       0.00       0.00       0.00       0.00

   28   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00       0.00   -1019.53      -0.00     428.87      -0.00       0.00       0.00       0.00

   29   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5042.55       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -262.06

   30   2.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5042.56
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     262.06      -0.00

   31   3.1  0.5  0.5    -234.97       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          210.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   33   5.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     736.19

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     599.76      -0.00

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           56.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     435.82       0.00

   37   9.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     361.68

   38  10.1  0.5  0.5     259.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   39  11.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          321.40      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   40  12.1  0.5  0.5     159.23       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   41   1.1  0.5 -0.5       0.00     387.95       0.00       0.00      -0.00       0.00    -422.45      -0.00       0.00       0.00
                         -422.11       0.00       0.00       0.00     112.17       0.00      -0.00      -0.00       0.00       0.00

   42   2.1  0.5 -0.5       0.00      -0.00       0.00      -0.00     -30.05       0.00      -0.00      -0.00      -0.00       0.00
                           -0.00     417.57      -0.00       0.00      -0.00       0.00     314.43       0.00      -0.00      -0.00

   43   3.1  0.5 -0.5       0.00      -0.00      32.13      -0.00      -0.00      -0.00      -0.00    -406.98      -0.00     -49.41
                           -0.00       0.00      -0.00     -36.92      -0.00    -406.57      -0.00       0.00    -184.44       0.00

   44   4.1  0.5 -0.5       0.00       0.00      -0.00     369.44       0.00     369.84       0.00      -0.00    -710.32       0.00
                            0.00      -0.00    -305.80       0.00       0.00       0.00       0.00     363.75      -0.00    -499.76

   45   5.1  0.5 -0.5       0.00     -24.91       0.00      -0.00      -0.00      -0.00    -295.08      -0.00      -0.00       0.00
                          280.17       0.00      -0.00       0.00     392.54       0.00      -0.00       0.00       0.00       0.00

   46   6.1  0.5 -0.5       0.00       0.00      -0.00       0.00     407.14       0.00       0.00       0.00       0.00       0.00
                            0.00     -90.75       0.00      -0.00       0.00      -0.00    -367.68      -0.00      -0.00      -0.00

   47   7.1  0.5 -0.5       0.00       0.00      -0.00    -376.69      -0.00     -38.75       0.00       0.00     620.40       0.00
                            0.00       0.00    -425.78      -0.00       0.00      -0.00      -0.00      97.71       0.00    -699.29

   48   8.1  0.5 -0.5       0.00       0.00       0.00      -0.00     526.21      -0.00       0.00       0.00       0.00       0.00
                            0.00    -505.68      -0.00      -0.00       0.00       0.00     432.81       0.00       0.00       0.00

   49   9.1  0.5 -0.5       0.00     545.49       0.00       0.00      -0.00      -0.00     381.42      -0.00       0.00       0.00
                          568.69       0.00       0.00       0.00     526.21       0.00      -0.00       0.00      -0.00       0.00

   50  10.1  0.5 -0.5       0.00       0.00     396.26       0.00      -0.00      -0.00       0.00     449.68       0.00     323.76
                            0.00       0.00      -0.00    -690.71       0.00     132.29      -0.00      -0.00     531.16      -0.00

   51  11.1  0.5 -0.5       0.00      -0.00       0.00     358.37      -0.00    -560.94      -0.00      -0.00     200.93       0.00
                           -0.00      -0.00     364.94       0.00       0.00       0.00       0.00     556.69       0.00    -298.77

   52  12.1  0.5 -0.5       0.00       0.00    -583.14       0.00       0.00      -0.00       0.00     275.80      -0.00    -472.56
                            0.00       0.00       0.00    -139.76      -0.00    -511.11      -0.00       0.00     189.05      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5      -0.00       0.00     -24.91       0.00       0.00       0.00     545.49       0.00      -0.00       0.00
                            0.00      -0.00       0.00     -90.75       0.00    -505.68       0.00       0.00      -0.00       0.00

    2   2.1  1.5  1.5      32.13      -0.00       0.00      -0.00      -0.00       0.00       0.00     396.26       0.00    -583.14
                           -0.00    -305.80      -0.00       0.00    -425.78      -0.00       0.00      -0.00     364.94       0.00

    3   3.1  1.5  1.5      -0.00     369.44      -0.00       0.00    -376.69      -0.00       0.00       0.00     358.37       0.00
                          -36.92       0.00       0.00      -0.00      -0.00      -0.00       0.00    -690.71       0.00    -139.76

    4   4.1  1.5  1.5      -0.00       0.00      -0.00     407.14      -0.00     526.21      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00     392.54       0.00       0.00       0.00     526.21       0.00       0.00      -0.00

    5   5.1  1.5  1.5      -0.00     369.84      -0.00       0.00     -38.75      -0.00      -0.00      -0.00    -560.94      -0.00
                         -406.57       0.00       0.00      -0.00      -0.00       0.00       0.00     132.29       0.00    -511.11

    6   6.1  1.5  1.5      -0.00       0.00    -295.08       0.00       0.00       0.00     381.42       0.00      -0.00       0.00
                           -0.00       0.00      -0.00    -367.68      -0.00     432.81      -0.00      -0.00       0.00      -0.00

    7   7.1  1.5  1.5    -406.98      -0.00      -0.00       0.00       0.00       0.00      -0.00     449.68      -0.00     275.80
                            0.00     363.75       0.00      -0.00      97.71       0.00       0.00      -0.00     556.69       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -470.84       0.00      -0.00      -0.00       0.00      -0.00       0.00    -545.77      -0.00     268.40

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -515.56       0.00       0.00       0.00     517.02       0.00      -0.00       0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -465.58      -0.00     523.68      -0.00      -0.00      -0.00       0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -34.74      -0.00       0.00     470.12      -0.00       0.00       0.00     607.65       0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     194.02      -0.00     562.57      -0.00      -0.00       0.00       0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           23.02      -0.00      -0.00       0.00       0.00      -0.00      -0.00     338.14      -0.00     741.33

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -280.17      -0.00      -0.00      -0.00    -568.69      -0.00       0.00      -0.00

   15   1.1  1.5 -0.5      -0.00       0.00     -14.38       0.00       0.00       0.00     314.94       0.00      -0.00       0.00
                           -0.00       0.00      -0.00      52.40      -0.00     291.95      -0.00      -0.00       0.00      -0.00

   16   2.1  1.5 -0.5      18.55      -0.00       0.00      -0.00      -0.00       0.00       0.00     228.78       0.00    -336.68
                            0.00     176.55       0.00      -0.00     245.83       0.00      -0.00       0.00    -210.70      -0.00

   17   3.1  1.5 -0.5      -0.00     213.30      -0.00       0.00    -217.48      -0.00       0.00       0.00     206.90       0.00
                           21.31      -0.00      -0.00       0.00       0.00       0.00      -0.00     398.78      -0.00      80.69

   18   4.1  1.5 -0.5      -0.00       0.00      -0.00     235.06      -0.00     303.81      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00    -226.63      -0.00      -0.00      -0.00    -303.81      -0.00      -0.00       0.00

   19   5.1  1.5 -0.5      -0.00     213.52      -0.00       0.00     -22.37      -0.00      -0.00      -0.00    -323.86      -0.00
                          234.73      -0.00      -0.00       0.00       0.00      -0.00      -0.00     -76.38      -0.00     295.09

   20   6.1  1.5 -0.5      -0.00       0.00    -170.36       0.00       0.00       0.00     220.21       0.00      -0.00       0.00
                            0.00      -0.00       0.00     212.28       0.00    -249.88       0.00       0.00      -0.00       0.00

   21   7.1  1.5 -0.5    -234.97      -0.00      -0.00       0.00       0.00       0.00      -0.00     259.63      -0.00     159.23
                           -0.00    -210.01      -0.00       0.00     -56.41      -0.00      -0.00       0.00    -321.40      -0.00

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
                            0.00      -0.00       0.00    -599.76       0.00    -435.82       0.00       0.00       0.00      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -736.19       0.00      -0.00      -0.00    -361.68      -0.00      -0.00      -0.00

   31   3.1  0.5  0.5    5042.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -49.47       0.00      -0.00     669.45       0.00      -0.00      -0.00    -427.48      -0.00

   32   4.1  0.5  0.5       0.00    5042.71       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           49.47      -0.00       0.00      -0.00       0.00       0.00      -0.00    -247.38       0.00    -516.66

   33   5.1  0.5  0.5       0.00       0.00    5042.86       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00     395.20       0.00    -320.04       0.00       0.00      -0.00      -0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00    5042.88       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -395.20       0.00       0.00       0.00     401.93       0.00      -0.00       0.00

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5043.00       0.00       0.00       0.00       0.00       0.00
                         -669.45      -0.00      -0.00      -0.00      -0.00       0.00       0.00     377.91       0.00    -201.76

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    7830.47       0.00       0.00       0.00       0.00
                           -0.00      -0.00     320.04      -0.00      -0.00       0.00      49.23      -0.00      -0.00      -0.00

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    7830.62       0.00       0.00       0.00
                            0.00       0.00      -0.00    -401.93      -0.00     -49.23      -0.00       0.00       0.00      -0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7830.85       0.00       0.00
                            0.00     247.38      -0.00      -0.00    -377.91       0.00      -0.00      -0.00      90.96       0.00

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7835.23       0.00
                          427.48      -0.00       0.00       0.00      -0.00       0.00      -0.00     -90.96       0.00      37.54

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7835.67
                            0.00     516.66       0.00      -0.00     201.76       0.00       0.00      -0.00     -37.54      -0.00

   41   1.1  0.5 -0.5       0.00     710.32       0.00      -0.00    -620.40      -0.00      -0.00      -0.00    -200.93       0.00
                          184.44       0.00      -0.00       0.00      -0.00      -0.00       0.00    -531.16      -0.00    -189.05

   42   2.1  0.5 -0.5      49.41      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -323.76      -0.00     472.56
                           -0.00     499.76      -0.00       0.00     699.29      -0.00      -0.00       0.00     298.77       0.00

   43   3.1  0.5 -0.5       0.00      -0.00      -0.00     669.46       0.00    -427.46       0.00       0.00       0.00      -0.00
                           -0.00       0.00    -645.44      -0.00      -0.00       0.00     427.46       0.00       0.00       0.00

   44   4.1  0.5 -0.5       0.00      -0.00    -484.03      -0.00       0.00      -0.00    -298.71       0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     600.68      -0.00     361.72      -0.00       0.00       0.00      -0.00

   45   5.1  0.5 -0.5       0.00     484.03       0.00      -0.00      53.04      -0.00       0.00       0.00     502.01       0.00
                          645.44       0.00       0.00      -0.00      -0.00       0.00      -0.00     210.32       0.00    -386.71

   46   6.1  0.5 -0.5    -669.46       0.00       0.00       0.00       0.00      -0.00       0.00    -363.65      -0.00    -226.46
                            0.00    -600.68       0.00      -0.00    -164.24       0.00       0.00       0.00     450.69       0.00

   47   7.1  0.5 -0.5      -0.00      -0.00     -53.04      -0.00      -0.00      -0.00    -450.70      -0.00       0.00      -0.00
                            0.00       0.00       0.00     164.24       0.00    -401.90       0.00       0.00      -0.00      -0.00

   48   8.1  0.5 -0.5     427.46       0.00       0.00       0.00       0.00       0.00       0.00      78.04      -0.00      60.00
                           -0.00    -361.72      -0.00      -0.00     401.90       0.00      -0.00       0.00      49.21      -0.00

   49   9.1  0.5 -0.5      -0.00     298.71      -0.00      -0.00     450.70      -0.00       0.00       0.00      49.21       0.00
                         -427.46       0.00       0.00      -0.00      -0.00       0.00       0.00     -12.97       0.00      97.55

   50  10.1  0.5 -0.5      -0.00      -0.00      -0.00     363.65       0.00     -78.04      -0.00       0.00      -0.00       0.00
                           -0.00      -0.00    -210.32      -0.00      -0.00      -0.00      12.97      -0.00      -0.00      -0.00

   51  11.1  0.5 -0.5      -0.00       0.00    -502.01       0.00      -0.00       0.00     -49.21       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -450.69       0.00     -49.21      -0.00       0.00       0.00       0.00

   52  12.1  0.5 -0.5       0.00       0.00      -0.00     226.46       0.00     -60.00      -0.00      -0.00      -0.00       0.00
                           -0.00       0.00     386.71      -0.00       0.00       0.00     -97.55       0.00      -0.00      -0.00


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

    8   1.1  1.5  0.5     223.98      -0.00      -0.00       0.00     -14.38       0.00       0.00       0.00     314.94       0.00
                            0.00     241.09       0.00      -0.00       0.00     -52.40       0.00    -291.95       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00      18.55      -0.00       0.00      -0.00      -0.00       0.00       0.00     228.78
                            0.00      -0.00      -0.00    -176.55      -0.00       0.00    -245.83      -0.00       0.00      -0.00

   10   3.1  1.5  0.5       0.00      -0.00      -0.00     213.30      -0.00       0.00    -217.48      -0.00       0.00       0.00
                            0.00       0.00     -21.31       0.00       0.00      -0.00      -0.00      -0.00       0.00    -398.78

   11   4.1  1.5  0.5      -0.00     -17.35      -0.00       0.00      -0.00     235.06      -0.00     303.81      -0.00      -0.00
                           64.76      -0.00      -0.00       0.00     226.63       0.00       0.00       0.00     303.81       0.00

   12   5.1  1.5  0.5       0.00       0.00      -0.00     213.52      -0.00       0.00     -22.37      -0.00      -0.00      -0.00
                            0.00       0.00    -234.73       0.00       0.00      -0.00      -0.00       0.00       0.00      76.38

   13   6.1  1.5  0.5    -243.90      -0.00      -0.00       0.00    -170.36       0.00       0.00       0.00     220.21       0.00
                           -0.00     181.54      -0.00       0.00      -0.00    -212.28      -0.00     249.88      -0.00      -0.00

   14   7.1  1.5  0.5      -0.00      -0.00    -234.97      -0.00      -0.00       0.00       0.00       0.00      -0.00     259.63
                           -0.00       0.00       0.00     210.01       0.00      -0.00      56.41       0.00       0.00      -0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -470.84       0.00      -0.00      -0.00       0.00      -0.00       0.00    -545.77

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          181.88      -0.00      -0.00       0.00    -515.56       0.00       0.00       0.00     517.02       0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -277.31      -0.00       0.00      -0.00    -465.58      -0.00     523.68      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00     -34.74      -0.00       0.00     470.12      -0.00       0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     473.54      -0.00       0.00      -0.00     194.02      -0.00     562.57      -0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      23.02      -0.00      -0.00       0.00       0.00      -0.00      -0.00     338.14

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          422.11       0.00       0.00      -0.00    -280.17      -0.00      -0.00      -0.00    -568.69      -0.00

   22   1.1  1.5 -1.5     387.95      -0.00      -0.00       0.00     -24.91       0.00       0.00       0.00     545.49       0.00
                           -0.00    -417.57      -0.00       0.00      -0.00      90.75      -0.00     505.68      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00      32.13      -0.00       0.00      -0.00      -0.00       0.00       0.00     396.26
                           -0.00       0.00       0.00     305.80       0.00      -0.00     425.78       0.00      -0.00       0.00

   24   3.1  1.5 -1.5       0.00      -0.00      -0.00     369.44      -0.00       0.00    -376.69      -0.00       0.00       0.00
                           -0.00      -0.00      36.92      -0.00      -0.00       0.00       0.00       0.00      -0.00     690.71

   25   4.1  1.5 -1.5      -0.00     -30.05      -0.00       0.00      -0.00     407.14      -0.00     526.21      -0.00      -0.00
                         -112.17       0.00       0.00      -0.00    -392.54      -0.00      -0.00      -0.00    -526.21      -0.00

   26   5.1  1.5 -1.5       0.00       0.00      -0.00     369.84      -0.00       0.00     -38.75      -0.00      -0.00      -0.00
                           -0.00      -0.00     406.57      -0.00      -0.00       0.00       0.00      -0.00      -0.00    -132.29

   27   6.1  1.5 -1.5    -422.45      -0.00      -0.00       0.00    -295.08       0.00       0.00       0.00     381.42       0.00
                            0.00    -314.43       0.00      -0.00       0.00     367.68       0.00    -432.81       0.00       0.00

   28   7.1  1.5 -1.5      -0.00      -0.00    -406.98      -0.00      -0.00       0.00       0.00       0.00      -0.00     449.68
                            0.00      -0.00      -0.00    -363.75      -0.00       0.00     -97.71      -0.00      -0.00       0.00

   29   1.1  0.5  0.5       0.00      -0.00      -0.00    -710.32      -0.00       0.00     620.40       0.00       0.00       0.00
                           -0.00       0.00     184.44       0.00      -0.00       0.00      -0.00      -0.00       0.00    -531.16

   30   2.1  0.5  0.5       0.00       0.00     -49.41       0.00       0.00       0.00       0.00       0.00       0.00     323.76
                           -0.00       0.00      -0.00     499.76      -0.00       0.00     699.29      -0.00      -0.00       0.00

   31   3.1  0.5  0.5       0.00      49.41       0.00       0.00       0.00    -669.46      -0.00     427.46      -0.00      -0.00
                         -184.44       0.00       0.00       0.00    -645.44      -0.00      -0.00       0.00     427.46       0.00

   32   4.1  0.5  0.5     710.32      -0.00      -0.00      -0.00     484.03       0.00      -0.00       0.00     298.71      -0.00
                           -0.00    -499.76      -0.00      -0.00      -0.00     600.68      -0.00     361.72      -0.00       0.00

   33   5.1  0.5  0.5       0.00      -0.00      -0.00    -484.03       0.00       0.00     -53.04       0.00      -0.00      -0.00
                            0.00       0.00     645.44       0.00      -0.00      -0.00      -0.00       0.00      -0.00     210.32

   34   6.1  0.5  0.5      -0.00      -0.00     669.46      -0.00      -0.00       0.00      -0.00       0.00      -0.00     363.65
                           -0.00      -0.00       0.00    -600.68       0.00       0.00    -164.24       0.00       0.00       0.00

   35   7.1  0.5  0.5    -620.40      -0.00       0.00       0.00      53.04       0.00      -0.00       0.00     450.70       0.00
                            0.00    -699.29       0.00       0.00       0.00     164.24      -0.00    -401.90       0.00       0.00

   36   8.1  0.5  0.5      -0.00      -0.00    -427.46      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     -78.04
                            0.00       0.00      -0.00    -361.72      -0.00      -0.00     401.90      -0.00      -0.00       0.00

   37   9.1  0.5  0.5      -0.00      -0.00       0.00    -298.71       0.00       0.00    -450.70       0.00       0.00      -0.00
                           -0.00       0.00    -427.46       0.00       0.00      -0.00      -0.00       0.00      -0.00     -12.97

   38  10.1  0.5  0.5      -0.00    -323.76       0.00       0.00       0.00    -363.65      -0.00      78.04       0.00       0.00
                          531.16      -0.00      -0.00      -0.00    -210.32      -0.00      -0.00      -0.00      12.97       0.00

   39  11.1  0.5  0.5    -200.93      -0.00       0.00      -0.00     502.01      -0.00       0.00      -0.00      49.21      -0.00
                            0.00    -298.77      -0.00      -0.00      -0.00    -450.69       0.00     -49.21      -0.00       0.00

   40  12.1  0.5  0.5       0.00     472.56      -0.00      -0.00       0.00    -226.46      -0.00      60.00       0.00       0.00
                          189.05      -0.00      -0.00       0.00     386.71      -0.00       0.00       0.00     -97.55       0.00

   41   1.1  0.5 -0.5    5042.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     262.06      -0.00       0.00      -0.00     599.76      -0.00     435.82      -0.00      -0.00

   42   2.1  0.5 -0.5       0.00    5042.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -262.06       0.00       0.00       0.00     736.19      -0.00       0.00       0.00     361.68       0.00

   43   3.1  0.5 -0.5       0.00       0.00    5042.56       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      49.47      -0.00       0.00    -669.45      -0.00       0.00       0.00

   44   4.1  0.5 -0.5       0.00       0.00       0.00    5042.71       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     -49.47       0.00      -0.00       0.00      -0.00      -0.00       0.00     247.38

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00    5042.86       0.00       0.00       0.00       0.00       0.00
                            0.00    -736.19       0.00       0.00       0.00    -395.20      -0.00     320.04      -0.00      -0.00

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5042.88       0.00       0.00       0.00       0.00
                         -599.76       0.00      -0.00      -0.00     395.20      -0.00      -0.00      -0.00    -401.93      -0.00

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5043.00       0.00       0.00       0.00
                            0.00      -0.00     669.45       0.00       0.00       0.00       0.00      -0.00      -0.00    -377.91

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7830.47       0.00       0.00
                         -435.82      -0.00       0.00       0.00    -320.04       0.00       0.00      -0.00     -49.23       0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7830.62       0.00
                            0.00    -361.68      -0.00      -0.00       0.00     401.93       0.00      49.23       0.00      -0.00

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    7830.85
                            0.00      -0.00      -0.00    -247.38       0.00       0.00     377.91      -0.00       0.00       0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -427.48       0.00      -0.00      -0.00       0.00      -0.00       0.00      90.96

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -516.66      -0.00       0.00    -201.76      -0.00      -0.00       0.00


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

    8   1.1  1.5  0.5      -0.00       0.00
                           -0.00       0.00

    9   2.1  1.5  0.5       0.00    -336.68
                          210.70       0.00

   10   3.1  1.5  0.5     206.90       0.00
                            0.00     -80.69

   11   4.1  1.5  0.5      -0.00       0.00
                            0.00      -0.00

   12   5.1  1.5  0.5    -323.86      -0.00
                            0.00    -295.09

   13   6.1  1.5  0.5      -0.00       0.00
                            0.00      -0.00

   14   7.1  1.5  0.5      -0.00     159.23
                          321.40       0.00

   15   1.1  1.5 -0.5       0.00       0.00
                           -0.00     268.40

   16   2.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   17   3.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   18   4.1  1.5 -0.5       0.00       0.00
                          607.65       0.00

   19   5.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   20   6.1  1.5 -0.5       0.00       0.00
                           -0.00     741.33

   21   7.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   22   1.1  1.5 -1.5      -0.00       0.00
                            0.00      -0.00

   23   2.1  1.5 -1.5       0.00    -583.14
                         -364.94      -0.00

   24   3.1  1.5 -1.5     358.37       0.00
                           -0.00     139.76

   25   4.1  1.5 -1.5      -0.00       0.00
                           -0.00       0.00

   26   5.1  1.5 -1.5    -560.94      -0.00
                           -0.00     511.11

   27   6.1  1.5 -1.5      -0.00       0.00
                           -0.00       0.00

   28   7.1  1.5 -1.5      -0.00     275.80
                         -556.69      -0.00

   29   1.1  0.5  0.5     200.93      -0.00
                           -0.00    -189.05

   30   2.1  0.5  0.5       0.00    -472.56
                          298.77       0.00

   31   3.1  0.5  0.5      -0.00       0.00
                            0.00       0.00

   32   4.1  0.5  0.5       0.00       0.00
                            0.00      -0.00

   33   5.1  0.5  0.5    -502.01      -0.00
                            0.00    -386.71

   34   6.1  0.5  0.5       0.00     226.46
                          450.69       0.00

   35   7.1  0.5  0.5      -0.00       0.00
                           -0.00      -0.00

   36   8.1  0.5  0.5       0.00     -60.00
                           49.21      -0.00

   37   9.1  0.5  0.5     -49.21      -0.00
                            0.00      97.55

   38  10.1  0.5  0.5       0.00      -0.00
                           -0.00      -0.00

   39  11.1  0.5  0.5       0.00      -0.00
                           -0.00       0.00

   40  12.1  0.5  0.5       0.00       0.00
                           -0.00       0.00

   41   1.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   42   2.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   43   3.1  0.5 -0.5       0.00       0.00
                          427.48       0.00

   44   4.1  0.5 -0.5       0.00       0.00
                           -0.00     516.66

   45   5.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   46   6.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   47   7.1  0.5 -0.5       0.00       0.00
                           -0.00     201.76

   48   8.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   49   9.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   50  10.1  0.5 -0.5       0.00       0.00
                          -90.96      -0.00

   51  11.1  0.5 -0.5    7835.23       0.00
                           -0.00     -37.54

   52  12.1  0.5 -0.5       0.00    7835.67
                           37.54       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02285895    -0.00703375    -1543.73      0.00000000        0.00      0.0000
     2  -110.02285895    -0.00703375    -1543.73      0.00000000        0.00      0.0000
     3  -110.02285894    -0.00703374    -1543.73      0.00000000        0.00      0.0000
     4  -110.02285894    -0.00703374    -1543.73      0.00000000        0.00      0.0000
     5  -110.02285893    -0.00703373    -1543.73      0.00000001        0.00      0.0000
     6  -110.02285893    -0.00703373    -1543.73      0.00000001        0.00      0.0000
     7  -110.02285893    -0.00703373    -1543.72      0.00000002        0.00      0.0000
     8  -110.02285893    -0.00703373    -1543.72      0.00000002        0.00      0.0000
     9  -110.02285893    -0.00703373    -1543.72      0.00000002        0.01      0.0000
    10  -110.02285893    -0.00703373    -1543.72      0.00000002        0.01      0.0000
    11  -110.01663615    -0.00081095     -177.98      0.00622280     1365.75      0.1693
    12  -110.01663615    -0.00081095     -177.98      0.00622280     1365.75      0.1693
    13  -110.01663615    -0.00081094     -177.98      0.00622280     1365.75      0.1693
    14  -110.01663615    -0.00081094     -177.98      0.00622280     1365.75      0.1693
    15  -110.01663612    -0.00081092     -177.98      0.00622283     1365.75      0.1693
    16  -110.01663612    -0.00081092     -177.98      0.00622283     1365.75      0.1693
    17  -110.01663611    -0.00081091     -177.97      0.00622283     1365.75      0.1693
    18  -110.01663611    -0.00081091     -177.97      0.00622283     1365.75      0.1693
    19  -110.01134146     0.00448374      984.07      0.01151749     2527.80      0.3134
    20  -110.01134146     0.00448374      984.07      0.01151749     2527.80      0.3134
    21  -110.01134132     0.00448388      984.10      0.01151763     2527.83      0.3134
    22  -110.01134132     0.00448388      984.10      0.01151763     2527.83      0.3134
    23  -110.01134122     0.00448398      984.12      0.01151773     2527.85      0.3134
    24  -110.01134122     0.00448398      984.12      0.01151773     2527.85      0.3134
    25  -110.00813150     0.00769370     1688.57      0.01472745     3232.30      0.4008
    26  -110.00813150     0.00769370     1688.57      0.01472745     3232.30      0.4008
    27  -110.00813118     0.00769402     1688.64      0.01472777     3232.37      0.4008
    28  -110.00813118     0.00769402     1688.64      0.01472777     3232.37      0.4008
    29  -109.99662625     0.01919895     4213.68      0.02623270     5757.41      0.7138
    30  -109.99662625     0.01919895     4213.68      0.02623270     5757.41      0.7138
    31  -109.99662594     0.01919926     4213.75      0.02623301     5757.48      0.7138
    32  -109.99662594     0.01919926     4213.75      0.02623301     5757.48      0.7138
    33  -109.99662548     0.01919972     4213.85      0.02623347     5757.58      0.7138
    34  -109.99662548     0.01919972     4213.85      0.02623347     5757.58      0.7138
    35  -109.99662528     0.01919992     4213.90      0.02623367     5757.62      0.7139
    36  -109.99662528     0.01919992     4213.90      0.02623367     5757.62      0.7139
    37  -109.98964189     0.02618331     5746.57      0.03321706     7290.30      0.9039
    38  -109.98964189     0.02618331     5746.57      0.03321706     7290.30      0.9039
    39  -109.98963937     0.02618583     5747.12      0.03321958     7290.85      0.9040
    40  -109.98963937     0.02618583     5747.12      0.03321958     7290.85      0.9040
    41  -109.98963778     0.02618742     5747.47      0.03322117     7291.20      0.9040
    42  -109.98963778     0.02618742     5747.47      0.03322117     7291.20      0.9040
    43  -109.97778349     0.03804172     8349.19      0.04507546     9892.92      1.2266
    44  -109.97778349     0.03804172     8349.19      0.04507546     9892.92      1.2266
    45  -109.97777716     0.03804804     8350.58      0.04508179     9894.31      1.2267
    46  -109.97777716     0.03804804     8350.58      0.04508179     9894.31      1.2267
    47  -109.97669762     0.03912758     8587.51      0.04616132    10131.24      1.2561
    48  -109.97669762     0.03912758     8587.51      0.04616132    10131.24      1.2561
    49  -109.97669003     0.03913518     8589.18      0.04616892    10132.91      1.2563
    50  -109.97669003     0.03913518     8589.18      0.04616892    10132.91      1.2563
    51  -109.97668506     0.03914015     8590.27      0.04617389    10134.00      1.2565
    52  -109.97668506     0.03914015     8590.27      0.04617389    10134.00      1.2565


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.002273976   0.586073453  -0.000695240   0.048179108   0.000510108   0.038580960   0.086845262   0.000545020
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.001280000  -0.000004966   0.268639774   0.003876557   0.004468885  -0.000059086  -0.001752883   0.279309983
                         0.002914252   0.000011307   0.122033894   0.001760987  -0.011054188   0.000146156   0.001557330  -0.248149972

    3    3.1  1.5  1.5   0.037179141   0.000144256   0.136731164   0.001973073   0.028254884  -0.000373579  -0.001552034   0.247306136
                         0.016329860   0.000063360  -0.300993665  -0.004343434   0.011422623  -0.000151027  -0.001746922   0.278360187

    4    4.1  1.5  1.5  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.002171848  -0.559751853   0.000506120  -0.035073369   0.000159984   0.012100061   0.186731174   0.001171880

    5    5.1  1.5  1.5   0.030369142   0.000117833   0.120449554   0.001738124   0.121908268  -0.001611842   0.000246345  -0.039253370
                         0.013338765   0.000051755  -0.265152082  -0.003826228   0.049283948  -0.000651621   0.000277278  -0.044182388

    6    6.1  1.5  1.5   0.000159178  -0.041025135  -0.001423586   0.098652444   0.006264753   0.473821424  -0.044749905  -0.000280840
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    7    7.1  1.5  1.5   0.003329389   0.000012918  -0.311248606  -0.004491416   0.041310372  -0.000546196  -0.000164375   0.026192106
                        -0.007580215  -0.000029411  -0.141389634  -0.002040296  -0.102184913   0.001351064   0.000146037  -0.023270096

    8    1.1  1.5  0.5  -0.034980284  -0.000135724  -0.229670246  -0.003314212   0.201288740  -0.002661391  -0.000046592   0.007424142
                        -0.015364075  -0.000059613   0.505585465   0.007295758   0.081375150  -0.001075923  -0.000052443   0.008356387

    9    2.1  1.5  0.5   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.001190215  -0.306754852   0.003568553  -0.247295603  -0.004411835  -0.333679813  -0.201939993  -0.001267327

   10    3.1  1.5  0.5  -0.001324712   0.341418930   0.002750261  -0.190589102  -0.003777209  -0.285681236   0.258661613   0.001623299
                        -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5  -0.009928729  -0.000038524   0.382134042   0.005514315  -0.158578735   0.002096690  -0.000165781   0.026416109
                         0.022605316   0.000087709   0.173590472   0.002504964   0.392258736  -0.005186351   0.000147287  -0.023469110

   12    5.1  1.5  0.5   0.000963127  -0.248227292  -0.000672717   0.046618349  -0.004907129  -0.371140365   0.333530819   0.002093160
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   13    6.1  1.5  0.5   0.058334811   0.000226340   0.003606414   0.000052042   0.047234963  -0.000624529  -0.002570029   0.409516700
                         0.025621876   0.000099413  -0.007938993  -0.000114562   0.019095714  -0.000252479  -0.002892746   0.460939412

   14    7.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000952455  -0.245476922   0.000937605  -0.064974675   0.005667242   0.428629918   0.268549398   0.001685352

   15    1.1  1.5 -0.5   0.000148239  -0.038205693  -0.008013245   0.555306298   0.002870647   0.217115342   0.011177973   0.000070150
                         0.000000000   0.000000000  -0.000000002  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   16    2.1  1.5 -0.5   0.123358706   0.000478634   0.225153330   0.003249034   0.125063686  -0.001653562  -0.000947424   0.150965528
                        -0.280857915  -0.001089734   0.102279485   0.001475924  -0.309356254   0.004090234   0.000841728  -0.134123712

   17    3.1  1.5 -0.5  -0.312595574  -0.001212877  -0.078826128  -0.001137485   0.264856529  -0.003501869   0.001078156  -0.171796855
                        -0.137298553  -0.000532721   0.173524198   0.002504009   0.107073748  -0.001415704   0.001213539  -0.193369260

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000095796  -0.024689674  -0.006056609   0.419714281  -0.005594135  -0.423100616   0.035335674   0.000221758

   19    5.1  1.5 -0.5   0.227271384   0.000881817   0.019280976   0.000278230   0.344086123  -0.004549424   0.001390227  -0.221523190
                         0.099822374   0.000387313  -0.042444251  -0.000612484   0.139103956  -0.001839199   0.001564796  -0.249339695

   20    6.1  1.5 -0.5  -0.000247210   0.063713662   0.000125829  -0.008719739   0.000673634   0.050948877   0.616578519   0.003869500
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   21    7.1  1.5 -0.5   0.098716337   0.000383021   0.059156994   0.000853654  -0.160651125   0.002124091   0.001259929  -0.200761132
                        -0.224753207  -0.000872047   0.026873007   0.000387786   0.397384980  -0.005254129  -0.001119371   0.178364085

   22    1.1  1.5 -1.5   0.536595811   0.002082002  -0.019926496  -0.000287545   0.035768604  -0.000472924  -0.000361989   0.057680545
                         0.235684170   0.000914459   0.043865262   0.000632990   0.014460200  -0.000191189  -0.000407444   0.064923449

   23    2.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000012350   0.003182964   0.004257789  -0.295058638  -0.000157648  -0.011923338  -0.373620763  -0.002344755

   24    3.1  1.5 -1.5   0.000157557  -0.040607300  -0.004770580   0.330594309  -0.000402952  -0.030476462  -0.372350263  -0.002336781
                         0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   25    4.1  1.5 -1.5  -0.225099175  -0.000873389  -0.031932981  -0.000460803   0.004535121  -0.000059962  -0.000876070   0.139595777
                         0.512496340   0.001988496  -0.014506067  -0.000209327  -0.011218028   0.000148322   0.000778335  -0.124022378

   26    5.1  1.5 -1.5   0.000128698  -0.033169375  -0.004202511   0.291227955  -0.001738575  -0.131493474   0.059100849   0.000370903
                        -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   27    6.1  1.5 -1.5  -0.037561701  -0.000145740  -0.040801862  -0.000588783   0.439282256  -0.005808085   0.000186527  -0.029721816
                        -0.016497889  -0.000064012   0.089819334   0.001296121   0.177588968  -0.002348039   0.000209949  -0.033453963

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000032123  -0.008279160  -0.004933115   0.341857752  -0.001457294  -0.110219341  -0.035036034  -0.000219878

   29    1.1  0.5  0.5   0.000000001  -0.000000214   0.000000001  -0.000000037   0.000000002   0.000000165   0.000000208   0.000000001
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   30    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000001   0.000000178  -0.000000000   0.000000008   0.000000002   0.000000168  -0.000000275  -0.000000002

   31    3.1  0.5  0.5  -0.000000001  -0.000000000   0.000000175   0.000000003   0.000000063  -0.000000001   0.000000000  -0.000000018
                         0.000000003   0.000000000   0.000000079   0.000000001  -0.000000156   0.000000002  -0.000000000   0.000000016

   32    4.1  0.5  0.5   0.000000019   0.000000000  -0.000000002  -0.000000000   0.000000009  -0.000000000  -0.000000000   0.000000019
                         0.000000008   0.000000000   0.000000004   0.000000000   0.000000004  -0.000000000  -0.000000000   0.000000021

   33    5.1  0.5  0.5  -0.000000001   0.000000148   0.000000001  -0.000000100  -0.000000005  -0.000000380  -0.000000319  -0.000000002
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   34    6.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000001   0.000000208  -0.000000001   0.000000069   0.000000004   0.000000293  -0.000000335  -0.000000002

   35    7.1  0.5  0.5   0.000000001   0.000000000   0.000000003   0.000000000   0.000000087  -0.000000001   0.000000000  -0.000000014
                         0.000000000   0.000000000  -0.000000007  -0.000000000   0.000000035  -0.000000000   0.000000000  -0.000000016

   36    8.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000007  -0.000000000   0.000000009   0.000000001   0.000000081  -0.000000077  -0.000000000

   37    9.1  0.5  0.5   0.000000000  -0.000000007   0.000000000  -0.000000015  -0.000000001  -0.000000087  -0.000000052  -0.000000000
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   38   10.1  0.5  0.5  -0.000000004  -0.000000000   0.000000052   0.000000001   0.000000013  -0.000000000  -0.000000000   0.000000004
                         0.000000008   0.000000000   0.000000024   0.000000000  -0.000000031   0.000000000   0.000000000  -0.000000003

   39   11.1  0.5  0.5  -0.000000004  -0.000000000  -0.000000113  -0.000000002  -0.000000213   0.000000003  -0.000000000   0.000000007
                        -0.000000002  -0.000000000   0.000000249   0.000000004  -0.000000086   0.000000001  -0.000000000   0.000000007

   40   12.1  0.5  0.5  -0.000000010  -0.000000000   0.000000102   0.000000001   0.000000009  -0.000000000   0.000000001  -0.000000140
                         0.000000022   0.000000000   0.000000046   0.000000001  -0.000000023   0.000000000  -0.000000001   0.000000125

   41    1.1  0.5 -0.5  -0.000000196  -0.000000001   0.000000015   0.000000000   0.000000153  -0.000000002  -0.000000001   0.000000138
                        -0.000000086  -0.000000000  -0.000000033  -0.000000000   0.000000062  -0.000000001  -0.000000001   0.000000156

   42    2.1  0.5 -0.5   0.000000072   0.000000000   0.000000007   0.000000000   0.000000063  -0.000000001   0.000000001  -0.000000205
                        -0.000000163  -0.000000001   0.000000003   0.000000000  -0.000000156   0.000000002  -0.000000001   0.000000182

   43    3.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.000000003   0.000000003  -0.000000192  -0.000000002  -0.000000169   0.000000024   0.000000000

   44    4.1  0.5 -0.5   0.000000000  -0.000000020   0.000000000  -0.000000004  -0.000000000  -0.000000010  -0.000000028  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   45    5.1  0.5 -0.5   0.000000135   0.000000001   0.000000042   0.000000001  -0.000000352   0.000000005   0.000000001  -0.000000212
                         0.000000059   0.000000000  -0.000000091  -0.000000001  -0.000000143   0.000000002   0.000000001  -0.000000239

   46    6.1  0.5 -0.5   0.000000083   0.000000000   0.000000062   0.000000001   0.000000110  -0.000000001   0.000000002  -0.000000250
                        -0.000000190  -0.000000001   0.000000028   0.000000000  -0.000000271   0.000000004  -0.000000001   0.000000222

   47    7.1  0.5 -0.5   0.000000000  -0.000000001  -0.000000000   0.000000008  -0.000000001  -0.000000093   0.000000021   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   48    8.1  0.5 -0.5   0.000000003   0.000000000   0.000000008   0.000000000   0.000000031  -0.000000000   0.000000000  -0.000000057
                        -0.000000006  -0.000000000   0.000000004   0.000000000  -0.000000075   0.000000001  -0.000000000   0.000000051

   49    9.1  0.5 -0.5  -0.000000007  -0.000000000   0.000000006   0.000000000  -0.000000081   0.000000001   0.000000000  -0.000000035
                        -0.000000003  -0.000000000  -0.000000013  -0.000000000  -0.000000033   0.000000000   0.000000000  -0.000000039

   50   10.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000000009   0.000000001  -0.000000057  -0.000000000  -0.000000034  -0.000000005  -0.000000000

   51   11.1  0.5 -0.5  -0.000000000   0.000000005   0.000000004  -0.000000274   0.000000003   0.000000230  -0.000000010  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   52   12.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000000000   0.000000024   0.000000002  -0.000000112  -0.000000000  -0.000000024   0.000000188   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.044781064   0.003864569   0.393417367  -0.003472687  -0.038186553   0.342431110  -0.000582438  -0.032557148
                         0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.010245469   0.118720362  -0.000819334  -0.092821718  -0.080483312  -0.008975179  -0.137172471   0.002453970
                         0.034087672   0.394994188  -0.000992603  -0.112451376   0.078391204   0.008741872   0.079453007  -0.001421378

    3    3.1  1.5  1.5  -0.031340867  -0.363165326   0.001280720   0.145092119  -0.065639757  -0.007319875   0.205840507  -0.003682393
                         0.009419883   0.109153806  -0.001057163  -0.119764654  -0.067391557  -0.007515234   0.355375472  -0.006357553

    4    4.1  1.5  1.5  -0.000000000  -0.000000000   0.000000001   0.000000005  -0.000000006  -0.000000001   0.000000016  -0.000000002
                        -0.086686482   0.007480972  -0.020562702   0.000181511   0.009043791  -0.081098506   0.005646519   0.315630401

    5    5.1  1.5  1.5   0.042917826   0.497314449   0.000160500   0.018180256  -0.227173741  -0.025333535   0.181794431  -0.003252218
                        -0.012899481  -0.149473975  -0.000132453  -0.015006693  -0.233236581  -0.026009626   0.313860876  -0.005614870

    6    6.1  1.5  1.5   0.020239682  -0.001746668  -0.404368734   0.003569325  -0.052145964   0.467608954  -0.003000033  -0.167696492
                        -0.000000000  -0.000000000   0.000000005   0.000000064  -0.000000027  -0.000000009   0.000000007  -0.000000001

    7    7.1  1.5  1.5   0.012256425   0.142022507   0.001917349   0.217213189  -0.074384421  -0.008295070   0.082100715  -0.001468754
                         0.040778317   0.472522691   0.002322776   0.263148784   0.072450836   0.008079466  -0.047554355   0.000850723

    8    1.1  1.5  0.5  -0.001344972  -0.015584993  -0.002078155  -0.235438173  -0.287745956  -0.032088343   0.045411080  -0.000812380
                         0.000404248   0.004684262   0.001715458   0.194339775  -0.295425360  -0.032944687   0.078400433  -0.001402557

    9    2.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000003  -0.000000016   0.000000010   0.000000004  -0.000000000   0.000000004
                         0.092736975  -0.008003124   0.014330958  -0.000126510  -0.024777896   0.222191187  -0.000827206  -0.046239146

   10    3.1  1.5  0.5  -0.131535584   0.011351412  -0.145043988   0.001280297   0.002110460  -0.018925218   0.009321424   0.521051229
                         0.000000000   0.000000000   0.000000002   0.000000008  -0.000000001  -0.000000002  -0.000000028  -0.000000001

   11    4.1  1.5  0.5   0.000163405   0.001893473  -0.001134375  -0.128510447   0.172900667   0.019281213   0.269283464  -0.004817395
                         0.000543665   0.006299771  -0.001374218  -0.155687451  -0.168406221  -0.018780029  -0.155974312   0.002790311

   12    5.1  1.5  0.5  -0.151374620   0.013063505   0.428447106  -0.003781886  -0.021832373   0.195778044  -0.004777477  -0.267052589
                         0.000000000   0.000000000  -0.000000002  -0.000000014   0.000000006   0.000000003   0.000000014   0.000000002

   13    6.1  1.5  0.5   0.024563392   0.284630672   0.001296800   0.146914027  -0.060314643  -0.006726039   0.063152926  -0.001129778
                        -0.007382830  -0.085549250  -0.001070437  -0.121268526  -0.061924323  -0.006905551   0.109031018  -0.001950530

   14    7.1  1.5  0.5   0.000000000   0.000000000  -0.000000002  -0.000000009   0.000000004   0.000000003   0.000000012   0.000000003
                        -0.134869507   0.011639127   0.303296881  -0.002677201  -0.042180891   0.378249538   0.003105573   0.173596304

   15    1.1  1.5 -0.5   0.016273731  -0.001404409   0.305285246  -0.002694721   0.045989283  -0.412400144  -0.001620842  -0.090602396
                        -0.000000000  -0.000000000  -0.000000005  -0.000000053   0.000000023   0.000000009   0.000000007   0.000000003

   16    2.1  1.5 -0.5  -0.002303634  -0.026693586  -0.000080522  -0.009122865  -0.159168012  -0.017749790  -0.040011842   0.000715802
                        -0.007664416  -0.088812157  -0.000097575  -0.011052135   0.155030537   0.017288410   0.023175656  -0.000414607

   17    3.1  1.5 -0.5  -0.010870997  -0.125968728  -0.000987369  -0.111858964   0.013204787   0.001472541   0.261157556  -0.004671993
                         0.003267412   0.037861451   0.000815023   0.092332718   0.013557193   0.001511841   0.450878159  -0.008066066

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000002  -0.000000033   0.000000014   0.000000003  -0.000000017  -0.000000002
                         0.006578171  -0.000567691  -0.201875004   0.001781932  -0.026915695   0.241361339  -0.005567147  -0.311193782

   19    5.1  1.5 -0.5  -0.012510630  -0.144968135   0.002916609   0.330421479  -0.136601172  -0.015233204  -0.133850180   0.002394521
                         0.003760224   0.043571957  -0.002407500  -0.272742680  -0.140246790  -0.015639757  -0.231087028   0.004134073

   20    6.1  1.5 -0.5  -0.297209173   0.025648906  -0.190498784   0.001681525   0.009639825  -0.086443495  -0.002254100  -0.126000218
                         0.000000000   0.000000000   0.000000001   0.000000006  -0.000000004  -0.000000001   0.000000007  -0.000000001

   21    7.1  1.5 -0.5   0.003350228   0.038821094  -0.001704257  -0.193074020  -0.270961360  -0.030216535   0.150217058  -0.002687333
                         0.011146535   0.129161555  -0.002064682  -0.233904725   0.263917893   0.029431082  -0.087008691   0.001556543

   22    1.1  1.5 -1.5   0.003701012   0.042885837  -0.002678161  -0.303406291   0.238926129   0.026644090   0.016318060  -0.000291925
                        -0.001112385  -0.012889866   0.002210658   0.250443301   0.245302609   0.027355170   0.028172483  -0.000503998

   23    2.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000002   0.000000001  -0.000000002  -0.000000002  -0.000000009  -0.000000003
                        -0.412449916   0.035594086   0.145812151  -0.001287078  -0.012528934   0.112350988  -0.002835892  -0.158521503

   24    3.1  1.5 -1.5  -0.379214463   0.032725894   0.188136374  -0.001660674  -0.010490915   0.094075500   0.007347006   0.410684843
                         0.000000000   0.000000000   0.000000001  -0.000000006   0.000000004  -0.000000001  -0.000000023  -0.000000002

   25    4.1  1.5 -1.5  -0.002153337  -0.024952001  -0.000115543  -0.013089893  -0.058095409  -0.006478571  -0.273122575   0.004886077
                        -0.007164362  -0.083017733  -0.000139986  -0.015858103   0.056585255   0.006310173   0.158198005  -0.002830094

   26    5.1  1.5 -1.5   0.519291951  -0.044814466   0.023573768  -0.000208096  -0.036308244   0.325587486   0.006488735   0.362709063
                        -0.000000000  -0.000000000   0.000000003   0.000000023  -0.000000009  -0.000000005  -0.000000022  -0.000000002

   27    6.1  1.5 -1.5  -0.001672745  -0.019383096   0.002752648   0.311852069   0.326267068   0.036384077   0.084051633  -0.001503649
                         0.000502764   0.005825828  -0.002272225  -0.257414763   0.334974527   0.037355060   0.145111807  -0.002596005

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000004  -0.000000031   0.000000015   0.000000006   0.000000007   0.000000004
                        -0.493404588   0.042580408  -0.341216723   0.003011896  -0.011579549   0.103837208   0.001697342   0.094878576

   29    1.1  0.5  0.5  -0.000000095   0.000000008  -0.137574749   0.001214366   0.001041775  -0.009342025  -0.000802740  -0.044871776
                         0.000000000  -0.000000000   0.000000001   0.000000009  -0.000000004  -0.000000001   0.000000003   0.000000000

   30    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000006   0.000000003   0.000000001  -0.000000003  -0.000000000
                         0.000000120  -0.000000010   0.056270631  -0.000496702  -0.013360900   0.119811430  -0.001224747  -0.068461165

   31    3.1  0.5  0.5   0.000000001   0.000000009   0.000402242   0.045568987  -0.069003607  -0.007695013   0.069683562  -0.001246616
                         0.000000003   0.000000029   0.000487288   0.055205781   0.067209900   0.007494994  -0.040362097   0.000722059

   32    4.1  0.5  0.5   0.000000001   0.000000016  -0.000606881  -0.068753227   0.036651604   0.004087238  -0.037161905   0.000664810
                        -0.000000000  -0.000000005   0.000500946   0.056751576   0.037629765   0.004196320  -0.064158553   0.001147776

   33    5.1  0.5  0.5   0.000000159  -0.000000014  -0.019673244   0.000173650  -0.011456629   0.102735176  -0.001030302  -0.057591997
                         0.000000000   0.000000000   0.000000001   0.000000009  -0.000000005  -0.000000002   0.000000002  -0.000000001

   34    6.1  0.5  0.5   0.000000000   0.000000000   0.000000001   0.000000009  -0.000000003  -0.000000001  -0.000000004   0.000000000
                         0.000000165  -0.000000014   0.070010292  -0.000617976   0.005819045  -0.052181163  -0.001344269  -0.075142300

   35    7.1  0.5  0.5   0.000000001   0.000000015   0.000057698   0.006536756   0.011517393   0.001284376   0.056854098  -0.001017094
                        -0.000000000  -0.000000004  -0.000047629  -0.005395692   0.011824770   0.001318653   0.098156346  -0.001755985

   36    8.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000031  -0.000000003  -0.000000155   0.000000001  -0.000000007   0.000000067   0.000000005   0.000000279

   37    9.1  0.5  0.5   0.000000025  -0.000000002   0.000000009  -0.000000000   0.000000011  -0.000000103  -0.000000008  -0.000000432
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   38   10.1  0.5  0.5  -0.000000001  -0.000000006  -0.000000000  -0.000000049   0.000000008   0.000000001   0.000000171  -0.000000003
                        -0.000000002  -0.000000020  -0.000000001  -0.000000059  -0.000000008  -0.000000001  -0.000000099   0.000000002

   39   11.1  0.5  0.5   0.000000001   0.000000015   0.000000002   0.000000280   0.000000396   0.000000044  -0.000000018   0.000000000
                        -0.000000000  -0.000000004  -0.000000002  -0.000000231   0.000000407   0.000000045  -0.000000031   0.000000001

   40   12.1  0.5  0.5   0.000000003   0.000000030  -0.000000000  -0.000000022  -0.000000042  -0.000000005  -0.000000299   0.000000005
                         0.000000009   0.000000101  -0.000000000  -0.000000027   0.000000041   0.000000005   0.000000173  -0.000000003

   41    1.1  0.5 -0.5   0.000000008   0.000000091   0.000936522   0.106098633  -0.006518258  -0.000726880   0.022490309  -0.000402341
                        -0.000000002  -0.000000027  -0.000773053  -0.087577919  -0.006692215  -0.000746284   0.038828627  -0.000694632

   42    2.1  0.5 -0.5   0.000000003   0.000000035   0.000316189   0.035820998   0.085827647   0.009571160   0.059241093  -0.001059804
                         0.000000010   0.000000115   0.000383064   0.043396313  -0.083596613  -0.009322368  -0.034313614   0.000613856

   43    3.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000002  -0.000000012   0.000000005   0.000000002   0.000000005   0.000000001
                        -0.000000031   0.000000003  -0.071583593   0.000631861  -0.010741888   0.096325845   0.001440632   0.080528862

   44    4.1  0.5 -0.5   0.000000017  -0.000000001  -0.089150141   0.000786925   0.005857868  -0.052529414  -0.001326409  -0.074143962
                        -0.000000000  -0.000000000   0.000000000   0.000000002  -0.000000002  -0.000000000   0.000000004  -0.000000000

   45    5.1  0.5 -0.5  -0.000000013  -0.000000153   0.000133914   0.015172148   0.071681914   0.007993693   0.028865848  -0.000516398
                         0.000000004   0.000000046  -0.000110550  -0.012523676   0.073594970   0.008207023   0.049835740  -0.000891546

   46    6.1  0.5 -0.5   0.000000004   0.000000048   0.000393400   0.044567448  -0.037380295  -0.004168506   0.065022439  -0.001163231
                         0.000000014   0.000000158   0.000476582   0.053992439   0.036408616   0.004060153  -0.037662284   0.000673761

   47    7.1  0.5 -0.5   0.000000015  -0.000000001   0.008476006  -0.000074817   0.001840779  -0.016506833   0.002029277   0.113433049
                         0.000000000  -0.000000000   0.000000000  -0.000000002   0.000000001  -0.000000000  -0.000000006  -0.000000001

   48    8.1  0.5 -0.5   0.000000001   0.000000009  -0.000000001  -0.000000098   0.000000048   0.000000005  -0.000000242   0.000000004
                         0.000000003   0.000000029  -0.000000001  -0.000000119  -0.000000047  -0.000000005   0.000000140  -0.000000003

   49    9.1  0.5 -0.5  -0.000000002  -0.000000024  -0.000000000  -0.000000007  -0.000000072  -0.000000008   0.000000217  -0.000000004
                         0.000000001   0.000000007   0.000000000   0.000000005  -0.000000074  -0.000000008   0.000000374  -0.000000007

   50   10.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000021  -0.000000002   0.000000077  -0.000000001   0.000000001  -0.000000011   0.000000004   0.000000198

   51   11.1  0.5 -0.5   0.000000015  -0.000000001   0.000000363  -0.000000003   0.000000063  -0.000000568  -0.000000001  -0.000000036
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   52   12.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000106   0.000000009   0.000000034  -0.000000000  -0.000000006   0.000000058  -0.000000006  -0.000000345


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.000316884  -0.002061236  -0.119434913  -0.000000000  -0.113111996  -0.321628383   0.278756827  -0.005711775
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.369636559   0.056826119  -0.000000001   0.219680211   0.166402540  -0.058521338  -0.002712069  -0.132359505
                        -0.108497163   0.016679677  -0.000000001   0.036555620  -0.191053869   0.067190850  -0.004782067  -0.233383438

    3    3.1  1.5  1.5  -0.013355025   0.002053120  -0.000000001   0.065958022   0.112198572  -0.039458596   0.001632840   0.079688960
                         0.045498930  -0.006994782   0.000000001  -0.396373313   0.097721796  -0.034367326  -0.000926038  -0.045194258

    4    4.1  1.5  1.5   0.000000162   0.000000073  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.062169338  -0.404392849  -0.141037578  -0.000000000  -0.109469942  -0.311272382   0.281683574  -0.005771744

    5    5.1  1.5  1.5   0.012555580  -0.001930216   0.000000000  -0.012746119   0.312732771  -0.109983540   0.000658317   0.032128442
                        -0.042775335   0.006576073  -0.000000001   0.076597525   0.272381436  -0.095792566  -0.000373354  -0.018221107

    6    6.1  1.5  1.5  -0.031662965  -0.205958039   0.445321090   0.000000002  -0.071836941  -0.204264799  -0.066706365   0.001366825
                        -0.000000078  -0.000000038  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000

    7    7.1  1.5  1.5   0.313743470  -0.048233387  -0.000000001   0.267240406  -0.013474432   0.004738761   0.003612556   0.176306809
                         0.092091207  -0.014157525  -0.000000000   0.044469817   0.015470572  -0.005440773   0.006369855   0.310873700

    8    1.1  1.5  0.5   0.002697913  -0.000414763  -0.000000000  -0.002942968   0.202234931  -0.071123067  -0.006347808  -0.309797688
                        -0.009191469   0.001413054  -0.000000000   0.017685706   0.176140930  -0.061946188   0.003600052   0.175696567

    9    2.1  1.5  0.5  -0.000000210  -0.000000092   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001
                         0.081098017   0.527518216   0.088705617   0.000000000  -0.120140921  -0.341614782  -0.288877219   0.005919143

   10    3.1  1.5  0.5  -0.030355790  -0.197455274   0.128191678   0.000000000  -0.092936541  -0.264260468  -0.355754634   0.007289473
                        -0.000000081  -0.000000038  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   11    4.1  1.5  0.5   0.264061204  -0.040595480   0.000000001  -0.311125102   0.077701945  -0.027326638   0.003080297   0.150330504
                         0.077508273  -0.011915641   0.000000001  -0.051772397  -0.089212925   0.031374881   0.005431348   0.265070875

   12    5.1  1.5  0.5  -0.017343972  -0.112817331   0.410589345   0.000000001   0.026729561   0.076004188   0.201116046  -0.004120902
                        -0.000000043  -0.000000017  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000

   13    6.1  1.5  0.5   0.049855340  -0.007664448   0.000000000  -0.020586785  -0.220053318   0.077389532  -0.004184559  -0.204222775
                        -0.169851046   0.026112070  -0.000000000   0.123715845  -0.191660243   0.067404103   0.002373203   0.115821524

   14    7.1  1.5  0.5  -0.000000073  -0.000000031  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.028619697   0.186162525  -0.373959765  -0.000000001   0.003951153   0.011234909  -0.273056984   0.005594984

   15    1.1  1.5 -0.5   0.001472668   0.009579240   0.017928894   0.000000000  -0.094317659  -0.268187610  -0.356151500   0.007297605
                         0.000000002   0.000000005   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   16    2.1  1.5 -0.5   0.506164058  -0.077815190   0.000000000  -0.087502408  -0.224366611   0.078906455  -0.002920030  -0.142508835
                         0.148571245  -0.022840413   0.000000000  -0.014560732   0.257604897  -0.090595874  -0.005148756  -0.251279285

   17    3.1  1.5 -0.5   0.055611680  -0.008549390  -0.000000000   0.021042238  -0.199273551   0.070081593   0.006340734   0.309452475
                        -0.189462204   0.029126996   0.000000000  -0.126452878  -0.173561651   0.061039094  -0.003596040  -0.175500785

   18    4.1  1.5 -0.5   0.000000105   0.000000048  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000001
                        -0.042308103  -0.275201475  -0.315403250  -0.000000001  -0.041606830  -0.118306966  -0.304732390   0.006244019

   19    5.1  1.5 -0.5   0.031774092  -0.004884751  -0.000000001   0.067396878   0.057313243  -0.020156229  -0.003584559  -0.174940401
                        -0.108250438   0.016641892   0.000000001  -0.405020087   0.049918221  -0.017555508   0.002032922   0.099214516

   20    6.1  1.5 -0.5   0.027213673   0.177016758   0.125417008   0.000000000   0.102627739   0.291816914  -0.234779827   0.004810679
                         0.000000071   0.000000031  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   21    7.1  1.5 -0.5   0.178626587  -0.027461179  -0.000000001   0.368887353   0.007378892  -0.002595048  -0.002760116  -0.134704401
                         0.052431173  -0.008060441  -0.000000001   0.061384254  -0.008472021   0.002979486  -0.004866786  -0.237518086

   22    1.1  1.5 -1.5  -0.000580531   0.000089248   0.000000000   0.019604844   0.242533552  -0.085295501   0.004968376   0.242476083
                         0.001977796  -0.000304056   0.000000000  -0.117814891   0.211239894  -0.074289980  -0.002817731  -0.137516246

   23    2.1  1.5 -1.5   0.000000151   0.000000066  -0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.059223470  -0.385230865  -0.222700940  -0.000000001   0.089103072   0.253360191  -0.268303686   0.005497588

   24    3.1  1.5 -1.5   0.007289875   0.047418450   0.401823672   0.000000001   0.052326799   0.148788672  -0.091612507   0.001877156
                         0.000000016   0.000000006  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000

   25    4.1  1.5 -1.5   0.388022858  -0.059652740   0.000000000  -0.139124536   0.204438254  -0.071897942  -0.002847315  -0.138960068
                         0.113893978  -0.017509347   0.000000000  -0.023150850  -0.234724298   0.082549101  -0.005020541  -0.245021907

   26    5.1  1.5 -1.5  -0.006853501  -0.044579949  -0.077650785  -0.000000001   0.145851276   0.414720910  -0.036935694   0.000756819
                        -0.000000019  -0.000000011   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   27    6.1  1.5 -1.5  -0.058006416   0.008917549   0.000000001  -0.073097979   0.154032013  -0.054170805  -0.001188930  -0.058024402
                         0.197620772  -0.030381255  -0.000000001   0.439280729   0.134157546  -0.047181246   0.000674281   0.032907567

   28    7.1  1.5 -1.5  -0.000000130  -0.000000055  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.050268232   0.326979748  -0.270915115  -0.000000001  -0.007215114  -0.020515821   0.357388512  -0.007322951

   29    1.1  0.5  0.5  -0.007011068  -0.045604886   0.058932839   0.000000000   0.013242457   0.037654274   0.000393019  -0.000008053
                        -0.000000017  -0.000000008  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   30    2.1  0.5  0.5   0.000000010   0.000000005   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.004219719  -0.027448003   0.031413744   0.000000000  -0.004632395  -0.013171988   0.062320387  -0.001276955

   31    3.1  0.5  0.5   0.044014701  -0.006766604  -0.000000000   0.045850042   0.027939543  -0.009825929   0.000298575   0.014571614
                         0.012919367  -0.001986142  -0.000000000   0.007629621  -0.032078584   0.011281569   0.000526463   0.025693458

   32    4.1  0.5  0.5  -0.023152285   0.003559287   0.000000000  -0.004420553  -0.035711209   0.012559110  -0.000760503  -0.037115507
                         0.078877005  -0.012126166  -0.000000000   0.026565216  -0.031103457   0.010938631   0.000431307   0.021049438

   33    5.1  0.5  0.5   0.014226890   0.092541645   0.011084820   0.000000000  -0.005206990  -0.014805820  -0.068523806   0.001404064
                         0.000000037   0.000000016   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   34    6.1  0.5  0.5  -0.000000039  -0.000000018  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.015080750   0.098095738   0.003878722  -0.000000000   0.023138775   0.065793965   0.013666877  -0.000280037

   35    7.1  0.5  0.5  -0.027749468   0.004266031  -0.000000000   0.010809338  -0.013675551   0.004809491  -0.000337682  -0.016480207
                         0.094539043  -0.014533970   0.000000000  -0.064958482  -0.011911019   0.004188931   0.000191511   0.009346473

   36    8.1  0.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000000055   0.000000355   0.090379337   0.000000000   0.001239975   0.003525809  -0.044715189   0.000916222

   37    9.1  0.5  0.5  -0.000000009  -0.000000056  -0.054356308  -0.000000000   0.026719837   0.075976539  -0.027233031   0.000558009
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   38   10.1  0.5  0.5   0.000000214  -0.000000033   0.000000000  -0.075345704   0.033145300  -0.011656717   0.000389505   0.019009344
                         0.000000063  -0.000000010   0.000000000  -0.012537811  -0.038055536   0.013383575   0.000686796   0.033518303

   39   11.1  0.5  0.5  -0.000000010   0.000000002  -0.000000000  -0.000427349   0.047014119  -0.016534178  -0.001356155  -0.066185620
                         0.000000035  -0.000000005  -0.000000000   0.002568143   0.040947973  -0.014400803   0.000769120   0.037536065

   40   12.1  0.5  0.5   0.000000077  -0.000000012  -0.000000000  -0.002180255   0.035203928  -0.012380706  -0.000841403  -0.041063726
                         0.000000022  -0.000000003  -0.000000000  -0.000362803  -0.040419135   0.014214818  -0.001483607  -0.072405782

   41    1.1  0.5 -0.5  -0.012844248   0.001974595   0.000000000  -0.009673630  -0.028394337   0.009985873   0.000007005   0.000341867
                         0.043758781  -0.006727262  -0.000000000   0.058133470  -0.024730668   0.008697414  -0.000003973  -0.000193884

   42    2.1  0.5 -0.5   0.026336896  -0.004048906  -0.000000000   0.030987646   0.008651131  -0.003042476  -0.000629947  -0.030743877
                         0.007730508  -0.001188441  -0.000000000   0.005156462  -0.009932733   0.003493197  -0.001110757  -0.054209267

   43    3.1  0.5 -0.5  -0.000000018  -0.000000007  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.007052070   0.045871603  -0.046480506  -0.000000000   0.014960704   0.042540024   0.029537869  -0.000605236

   44    4.1  0.5 -0.5   0.012637738   0.082204685  -0.026930503  -0.000000000  -0.016654875  -0.047357317   0.042668955  -0.000874294
                         0.000000033   0.000000015   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   45    5.1  0.5 -0.5   0.026063607  -0.004006855  -0.000000000  -0.001819536   0.011164773  -0.003926488  -0.001221323  -0.059605299
                        -0.088795521   0.013650990  -0.000000000   0.010934465   0.009724203  -0.003419860   0.000692653   0.033804146

   46    6.1  0.5 -0.5  -0.094124782   0.014470285   0.000000000   0.003826110  -0.043212325   0.015197143  -0.000138148  -0.006742140
                        -0.027627871   0.004247337   0.000000000   0.000636679   0.049613918  -0.017448489  -0.000243589  -0.011888106

   47    7.1  0.5 -0.5   0.015147122   0.098527476   0.065851698   0.000000000  -0.006377958  -0.018135409   0.018946076  -0.000388208
                         0.000000038   0.000000017  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   48    8.1  0.5 -0.5  -0.000000341   0.000000052  -0.000000000   0.089153427  -0.002315690   0.000814394   0.000451990   0.022058886
                        -0.000000100   0.000000015  -0.000000000   0.014835468   0.002658742  -0.000935041   0.000796974   0.038895420

   49    9.1  0.5 -0.5  -0.000000016   0.000000002  -0.000000000   0.008922408  -0.057292393   0.020148896  -0.000485383  -0.023688599
                         0.000000054  -0.000000008   0.000000000  -0.053619016  -0.049900061   0.017549121   0.000275277   0.013434592

   50   10.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000034   0.000000223   0.076381751   0.000000000   0.017748215   0.050466175   0.038533515  -0.000789558

   51   11.1  0.5 -0.5   0.000000006   0.000000036  -0.002603456  -0.000000000   0.021926289   0.062346322   0.076088714  -0.001559071
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   52   12.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000012   0.000000080   0.002210235  -0.000000000   0.018850543   0.053600588  -0.083239575   0.001705593


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.025250457   0.296241273   0.215021634  -0.002785944   0.101808032   0.002170649   0.000520466  -0.029701389
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.008668160   0.000738840   0.004880252   0.376662261   0.000481262  -0.022572213   0.001781317   0.000031214
                        -0.089047150  -0.007590034   0.001931513   0.149075924  -0.000750785   0.035213398   0.003055563   0.000053544

    3    3.1  1.5  1.5  -0.343447553  -0.029274137   0.001062832   0.082030348   0.000836864  -0.039250684   0.015314301   0.000268357
                        -0.033432380  -0.002849646  -0.002685402  -0.207261746   0.000536440  -0.025160161  -0.008927857  -0.000156445

    4    4.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.025668157   0.301141784   0.208671810  -0.002703672   0.000078311   0.000001670  -0.000150488   0.008587890

    5    5.1  1.5  1.5   0.060687628   0.005172778  -0.001849517  -0.142747378   0.000653238  -0.030638223   0.061184061   0.001072146
                         0.005907545   0.000503536   0.004673076   0.360672258   0.000418733  -0.019639470  -0.035668789  -0.000625033

    6    6.1  1.5  1.5   0.009170688  -0.107591574   0.124791854  -0.001616875  -0.034513759  -0.000735867   0.001931715  -0.110237020
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000000

    7    7.1  1.5  1.5   0.032826701   0.002798021   0.002287239   0.176531204  -0.000688930   0.032312281  -0.028372984  -0.000497187
                        -0.337225471  -0.028743791   0.000905247   0.069867771   0.001074753  -0.050408228  -0.048669282  -0.000852847

    8    1.1  1.5  0.5  -0.187075978  -0.015945630   0.001504462   0.116115727  -0.000383181   0.017972051   0.090391105   0.001583950
                        -0.018210627  -0.001552203  -0.003801244  -0.293383472  -0.000245624   0.011520302  -0.052695771  -0.000923401

    9    2.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000
                        -0.011377031   0.133476639   0.282352700  -0.003658323   0.011286316   0.000240636   0.000826039  -0.047139515

   10    3.1  1.5  0.5   0.026796126  -0.314375241  -0.025558215   0.000331147  -0.019451426  -0.000414724   0.000423785  -0.024184141
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   11    4.1  1.5  0.5   0.020151481   0.001717634   0.003641237   0.281033950   0.000183479  -0.008605544   0.022796535   0.000399469
                        -0.207014184  -0.017645086   0.001441134   0.111228016  -0.000286233   0.013424933   0.039103784   0.000685227

   12    5.1  1.5  0.5   0.028790244  -0.337770460  -0.027427411   0.000355365   0.095513299   0.002036439  -0.000188735   0.010770494
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000

   13    6.1  1.5  0.5   0.411807702   0.035100891   0.001263330   0.097504958   0.000850147  -0.039873710   0.001652781   0.000028962
                         0.040086794   0.003416843  -0.003191989  -0.246360626   0.000544955  -0.025559529  -0.000963530  -0.000016884

   14    7.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.012509830  -0.146766773  -0.310599036   0.004024299   0.086833404   0.001851375   0.000954652  -0.054479058

   15    1.1  1.5 -0.5   0.016021001  -0.187960231   0.315526106  -0.004088137   0.021347412   0.000455147  -0.001833458   0.104629805
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000002  -0.000000000

   16    2.1  1.5 -0.5  -0.012931955  -0.001102270   0.003401594   0.262538072   0.000129861  -0.006090750  -0.023741352  -0.000416026
                         0.132848702   0.011323508   0.001346288   0.103907691  -0.000202588   0.009501772  -0.040724465  -0.000713627

   17    3.1  1.5 -0.5   0.312896273   0.026670064   0.000121864   0.009405595  -0.000349149   0.016375851   0.020893006   0.000366114
                         0.030458412   0.002596157  -0.000307908  -0.023764620  -0.000223809   0.010497118  -0.012180104  -0.000213435

   18    4.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000
                        -0.017728489   0.207992679  -0.302244524   0.003916053  -0.015946292  -0.000339991   0.000793166  -0.045263538

   19    5.1  1.5 -0.5   0.336181429   0.028654801   0.000130777   0.010093472   0.001714446  -0.080411150  -0.009304776  -0.000163051
                         0.032725070   0.002789358  -0.000330427  -0.025502641   0.001098980  -0.051544516   0.005424453   0.000095054

   20    6.1  1.5 -0.5  -0.035266802   0.413754195   0.264954289  -0.003432900  -0.047362456  -0.001009815  -0.000033524   0.001913132
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   21    7.1  1.5 -0.5   0.014219576   0.001212022  -0.003741886  -0.288802168   0.000999109  -0.046860341  -0.027437841  -0.000480801
                        -0.146076313  -0.012450978  -0.001480969  -0.114302532  -0.001558644   0.073103683  -0.047065196  -0.000824737

   22    1.1  1.5 -1.5   0.294847615   0.025131667   0.001025246   0.079129406  -0.001827435   0.085710588  -0.025659432  -0.000449637
                         0.028701493   0.002446404  -0.002590435  -0.199932089  -0.001171408   0.054941519   0.014958812   0.000262127

   23    2.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.007625909  -0.089468050   0.405090224  -0.005248581   0.041826884   0.000891791  -0.000061978   0.003536885

   24    3.1  1.5 -1.5  -0.029412507   0.345070928  -0.222904485   0.002888078   0.046622418   0.000994037   0.000310629  -0.017726659
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   25    4.1  1.5 -1.5   0.029176281   0.002486873  -0.002513936  -0.194027876  -0.000000901   0.000042261  -0.004325206  -0.000075792
                        -0.299725072  -0.025547402  -0.000994969  -0.076792628   0.000001406  -0.000065929  -0.007419195  -0.000130009

   26    5.1  1.5 -1.5   0.005197228  -0.060974481   0.387893402  -0.005025769   0.036392438   0.000775924   0.001241033  -0.070821973
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001   0.000000000

   27    6.1  1.5 -1.5  -0.107085413  -0.009127545   0.000595021   0.045924241   0.000619515  -0.029056593  -0.095235254  -0.001668836
                        -0.010424067  -0.000888507  -0.001503408  -0.116034352   0.000397117  -0.018625626   0.055519789   0.000972887

   28    7.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000000
                         0.028879654  -0.338819437   0.189854606  -0.002459865  -0.059875478  -0.001276605   0.000987189  -0.056335826

   29    1.1  0.5  0.5  -0.000000110   0.000001285   0.000010589  -0.000000137   0.618906943   0.013195712  -0.002987255   0.170473371
                        -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000007  -0.000000000

   30    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000004  -0.000000000
                         0.000001241  -0.000014557  -0.000007289   0.000000094  -0.480148894  -0.010237256  -0.006040996   0.344741143

   31    3.1  0.5  0.5   0.000000924   0.000000079   0.000000146   0.000011252   0.001431757  -0.067152509   0.327255804   0.005734588
                        -0.000009494  -0.000000809   0.000000058   0.000004453  -0.002233587   0.104760135   0.561354607   0.009836783

   32    4.1  0.5  0.5   0.000011889   0.000001013   0.000000080   0.000006185   0.009912722  -0.464927679   0.075586351   0.001324517
                         0.000001157   0.000000099  -0.000000202  -0.000015627   0.006354175  -0.298024244  -0.044064968  -0.000772163

   33    5.1  0.5  0.5  -0.000001520   0.000017835  -0.000002555   0.000000033  -0.062315113  -0.001328623  -0.008332014   0.475482326
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000008  -0.000000001

   34    6.1  0.5  0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000007  -0.000000001
                         0.000000323  -0.000003793   0.000020068  -0.000000260  -0.145052791  -0.003092668   0.006852812  -0.391068976

   35    7.1  0.5  0.5   0.000003714   0.000000317   0.000000030   0.000002282   0.000141973  -0.006658832  -0.042159282  -0.000738769
                         0.000000362   0.000000031  -0.000000075  -0.000005767   0.000091007  -0.004268392   0.024577814   0.000430684

   36    8.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.012616390  -0.148016944  -0.012021371   0.000155756  -0.000005942  -0.000000127  -0.000000171   0.000009759

   37    9.1  0.5  0.5   0.005423855  -0.063633295  -0.134649425   0.001744595  -0.000007098  -0.000000151   0.000000165  -0.000009408
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   38   10.1  0.5  0.5  -0.012074078  -0.001029148  -0.000976200  -0.075344027  -0.000000070   0.000003271  -0.000005527  -0.000000097
                         0.124035816   0.010572332  -0.000386362  -0.029819766   0.000000109  -0.000005102  -0.000009480  -0.000000166

   39   11.1  0.5  0.5   0.083931529   0.007153998  -0.000584342  -0.045100011  -0.000000043   0.000002005   0.000019815   0.000000347
                         0.008170187   0.000696395   0.001476425   0.113951816  -0.000000027   0.000001285  -0.000011552  -0.000000202

   40   12.1  0.5  0.5  -0.007817871  -0.000666365   0.001505716   0.116212505  -0.000000117   0.000005505   0.000002470   0.000000043
                         0.080312226   0.006845503   0.000595934   0.045994750   0.000000183  -0.000008587   0.000004236   0.000000074

   41    1.1  0.5 -0.5   0.000001279   0.000000109   0.000000050   0.000003897  -0.011109263   0.521048063   0.147274253   0.002580734
                         0.000000125   0.000000011  -0.000000128  -0.000009846  -0.007121172   0.333998085  -0.085857235  -0.001504496

   42    2.1  0.5 -0.5  -0.000001410  -0.000000120   0.000000088   0.000006778   0.005524617  -0.259116194  -0.173625482  -0.003042485
                         0.000014488   0.000001235   0.000000035   0.000002682  -0.008618585   0.404229834  -0.297826539  -0.005218901

   43    3.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000011   0.000000002
                         0.000000813  -0.000009539   0.000012101  -0.000000157   0.124435307   0.002653081  -0.011386299   0.649781006

   44    4.1  0.5 -0.5   0.000001018  -0.000011945  -0.000016807   0.000000218   0.552246500   0.011774447   0.001533161  -0.087492959
                         0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000002  -0.000000000

   45    5.1  0.5 -0.5   0.000017751   0.000001513  -0.000000012  -0.000000940   0.001118547  -0.052462118   0.410775618   0.007198144
                         0.000001728   0.000000147   0.000000031   0.000002376   0.000717002  -0.033628849  -0.239471991  -0.004196330

   46    6.1  0.5 -0.5  -0.000000367  -0.000000031  -0.000000242  -0.000018660   0.001668983  -0.078278900   0.196958038   0.003451345
                         0.000003775   0.000000322  -0.000000096  -0.000007385  -0.002603668   0.122117673   0.337849782   0.005920241

   47    7.1  0.5 -0.5   0.000000318  -0.000003732  -0.000006202   0.000000080   0.007909438   0.000168637  -0.000855143   0.048800349
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001

   48    8.1  0.5 -0.5  -0.014340700  -0.001222346   0.000144825   0.011177748   0.000000068  -0.000003207  -0.000004915  -0.000000086
                         0.147320603   0.012557037   0.000057319   0.004423945  -0.000000107   0.000005002  -0.000008431  -0.000000148

   49    9.1  0.5 -0.5  -0.063333934  -0.005398339  -0.000642023  -0.049551893   0.000000127  -0.000005976  -0.000008128  -0.000000142
                        -0.006165145  -0.000525493   0.001622165   0.125200150   0.000000082  -0.000003830   0.000004738   0.000000083

   50   10.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.010622304   0.124622097  -0.081030494   0.001049877  -0.000006061  -0.000000129   0.000000192  -0.000010973

   51   11.1  0.5 -0.5   0.007187813  -0.084328248   0.122552141  -0.001587856  -0.000002382  -0.000000051   0.000000402  -0.000022936
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   52   12.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.006877859   0.080691838   0.124983453  -0.001619357  -0.000010200  -0.000000217  -0.000000086   0.000004903


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.017759762  -0.001407392  -0.005408612  -0.000000000   0.003629842   0.000021209   0.009871629   0.000065746
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.002587220   0.032647918   0.000000000  -0.025920489  -0.000000251   0.000042986  -0.000004062   0.000609943
                        -0.000286120  -0.003610521  -0.000000001  -0.073449602   0.000036410  -0.006231499  -0.000053576   0.008044442

    3    3.1  1.5  1.5  -0.000693350  -0.008749321  -0.000000000  -0.014358631   0.000067992  -0.011636572   0.000028864  -0.004333970
                        -0.006269572  -0.079115216  -0.000000000   0.005067185   0.000000469  -0.000080271  -0.000002189   0.000328609

    4    4.1  1.5  1.5   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.069297950   0.005491592   0.081682449  -0.000000001   0.004245957   0.000024809   0.009552203   0.000063618

    5    5.1  1.5  1.5  -0.000532575  -0.006720519   0.000000000   0.009339516  -0.000011651   0.001994105   0.000084846  -0.012739559
                        -0.004815776  -0.060769888  -0.000000000  -0.003295931  -0.000000080   0.000013756  -0.000006433   0.000965935

    6    6.1  1.5  1.5   0.051719001  -0.004098529   0.056930342  -0.000000001  -0.012669881  -0.000074030   0.006404990   0.000042658
                         0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000

    7    7.1  1.5  1.5  -0.000901670  -0.011378099  -0.000000000   0.019658936  -0.000000315   0.000053994   0.000000334  -0.000050083
                         0.000099716   0.001258299   0.000000001   0.055706551   0.000045734  -0.007827225   0.000004399  -0.000660541

    8    1.1  1.5  0.5  -0.000012444  -0.000157025   0.000000000   0.011675854  -0.000002355   0.000403030   0.000052659  -0.007906673
                        -0.000112521  -0.001419890  -0.000000000  -0.004120429  -0.000000016   0.000002780  -0.000003993   0.000599497

    9    2.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000001  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.021276004  -0.001686040  -0.106936032   0.000000001  -0.002397513  -0.000014009   0.010254537   0.000068296

   10    3.1  1.5  0.5  -0.106333746   0.008426534   0.041459896  -0.000000000  -0.003571886  -0.000020870   0.007934810   0.000052846
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   11    4.1  1.5  0.5  -0.005569342  -0.070279069  -0.000000000   0.021676983   0.000000366  -0.000062699  -0.000001675   0.000251494
                         0.000615912   0.007772135   0.000000001   0.061424990  -0.000053108   0.009089268  -0.000022091   0.003316912

   12    5.1  1.5  0.5   0.058513512  -0.004636967   0.016413488  -0.000000000  -0.011796545  -0.000068927  -0.001993454  -0.000013277
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   13    6.1  1.5  0.5  -0.000210329  -0.002654128   0.000000000   0.030462275  -0.000022155   0.003791754  -0.000059890   0.008992457
                        -0.001901890  -0.023999793   0.000000000  -0.010750188  -0.000000153   0.000026156   0.000004541  -0.000681824

   14    7.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.020700923   0.001640467  -0.042813054   0.000000001   0.010695081   0.000062491  -0.000637027  -0.000004243

   15    1.1  1.5 -0.5   0.001428546  -0.000113207  -0.012381579   0.000000000  -0.000403040  -0.000002355   0.007929368   0.000052810
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000

   16    2.1  1.5 -0.5   0.001675824   0.021147082  -0.000000001   0.035586922   0.000000097  -0.000016538   0.000005163  -0.000775291
                        -0.000185328  -0.002338648   0.000000002   0.100840894  -0.000014008   0.002397456   0.000068100  -0.010225188

   17    3.1  1.5 -0.5  -0.000926241  -0.011688152   0.000000000   0.039096765   0.000020870  -0.003571801  -0.000052695   0.007912099
                        -0.008375474  -0.105689416   0.000000000  -0.013797315   0.000000144  -0.000024639   0.000003995  -0.000599909

   18    4.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.070707522  -0.005603295   0.065137708  -0.000000001   0.009089484   0.000053110   0.003326432   0.000022154

   19    5.1  1.5 -0.5   0.000509693   0.006431776   0.000000000   0.015477953   0.000068925  -0.011796265   0.000013239  -0.001987748
                         0.004608870   0.058158949   0.000000000  -0.005462196   0.000000475  -0.000081373  -0.000001004   0.000150714

   20    6.1  1.5 -0.5   0.024146106  -0.001913485  -0.032303510   0.000000000  -0.003791844  -0.000022156  -0.009018269  -0.000060062
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   21    7.1  1.5 -0.5  -0.001630527  -0.020575486  -0.000000000   0.014247628  -0.000000431   0.000073775  -0.000000321   0.000048162
                         0.000180320   0.002275435   0.000000001   0.040372796   0.000062489  -0.010694826  -0.000004230   0.000635203

   22    1.1  1.5 -1.5  -0.000154700  -0.001952144   0.000000000   0.005100332   0.000021209  -0.003629756   0.000065557  -0.009843375
                        -0.001398864  -0.017652146   0.000000000  -0.001799916   0.000000146  -0.000025039  -0.000004971   0.000746342

   23    2.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.032846955  -0.002602993   0.077889125  -0.000000001   0.006231647   0.000036411  -0.008067532  -0.000053730

   24    3.1  1.5 -1.5  -0.079597538   0.006307794  -0.015226511   0.000000000  -0.011636849  -0.000067994  -0.004346410  -0.000028947
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   25    4.1  1.5 -1.5   0.005458316   0.068878038  -0.000000000   0.027182858   0.000000171  -0.000029289  -0.000004810   0.000722191
                        -0.000603633  -0.007617196   0.000000001   0.077026715  -0.000024808   0.004245856  -0.000063436   0.009524863

   26    5.1  1.5 -1.5  -0.061140369   0.004845136   0.009904025  -0.000000000   0.001994152   0.000011652  -0.012776126  -0.000085090
                         0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   27    6.1  1.5 -1.5  -0.000450508  -0.005684927  -0.000000001  -0.053685427  -0.000074028   0.012669579   0.000042536  -0.006386658
                        -0.004073694  -0.051405609  -0.000000000   0.018945678  -0.000000511   0.000087397  -0.000003225   0.000484247

   28    7.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.011447465   0.000907167  -0.059073628   0.000000001   0.007827411   0.000045735   0.000662437   0.000004412

   29    1.1  0.5  0.5  -0.212106649   0.016808624  -0.301293336   0.000000005   0.472907012   0.002763179   0.308000231   0.002051300
                         0.000000000   0.000000001  -0.000000000  -0.000000003  -0.000000000   0.000000000   0.000000000  -0.000000000

   30    2.1  0.5  0.5  -0.000000000  -0.000000001   0.000000000   0.000000002   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.423049072   0.033524987  -0.136829517   0.000000004   0.245252064   0.001432999  -0.124928388  -0.000832030

   31    3.1  0.5  0.5   0.022285952   0.281224602   0.000000002  -0.057605023   0.000014630  -0.002503923   0.000181006  -0.027177943
                        -0.002464598  -0.031100520  -0.000000002  -0.163232495  -0.002120901   0.362983748   0.002387267  -0.358445378

   32    4.1  0.5  0.5  -0.002865901  -0.036164557   0.000000005   0.335488199   0.001296707  -0.221926189   0.002662312  -0.399743037
                        -0.025914728  -0.327015840   0.000000002  -0.118394354   0.000008945  -0.001530884  -0.000201861   0.030309202

   33    5.1  0.5  0.5  -0.383362569   0.030379986   0.412653057  -0.000000004   0.087701124   0.000512434  -0.115292224  -0.000767853
                        -0.000000001  -0.000000000   0.000000000   0.000000004   0.000000000  -0.000000000  -0.000000000   0.000000000

   34    6.1  0.5  0.5   0.000000000  -0.000000001  -0.000000001  -0.000000005  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.320394032   0.025389976   0.520461689  -0.000000007   0.040263359   0.000235257   0.550386612   0.003665607

   35    7.1  0.5  0.5   0.004703823   0.059357106   0.000000010   0.473645543  -0.003032618   0.519020430   0.001094427  -0.164327000
                         0.042534002   0.536733092   0.000000003  -0.167150314  -0.000020920   0.003580291  -0.000082981   0.012459555

   36    8.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000012779  -0.000001013   0.000019411  -0.000000000  -0.351656246  -0.002054715  -0.011635747  -0.000077495

   37    9.1  0.5  0.5  -0.000023123   0.000001832  -0.000007903   0.000000000   0.204969525   0.001197630  -0.318398584  -0.002120553
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   38   10.1  0.5  0.5   0.000001182   0.000014910   0.000000000  -0.000006001   0.000012074  -0.002066469  -0.000100358   0.015068604
                        -0.000000131  -0.000001649  -0.000000000  -0.000017005  -0.001750363   0.299567727  -0.001323602   0.198737314

   39   11.1  0.5  0.5   0.000000021   0.000000270   0.000000000   0.000002417  -0.000038591   0.006604788   0.001664414  -0.249909747
                         0.000000193   0.000002437  -0.000000000  -0.000000853  -0.000000266   0.000045561  -0.000126198   0.018948585

   40   12.1  0.5  0.5  -0.000001214  -0.000015326   0.000000000  -0.000000846   0.000000552  -0.000094523  -0.000114067   0.017127013
                         0.000000134   0.000001695   0.000000000  -0.000002398  -0.000080064   0.013702659  -0.001504409   0.225885327

   41    1.1  0.5 -0.5   0.001847597   0.023314656   0.000000006   0.284120224   0.002763113  -0.472895761   0.002045428  -0.307118694
                         0.016706772   0.210821387   0.000000001  -0.100266508   0.000019060  -0.003262115  -0.000155088   0.023286266

   42    2.1  0.5 -0.5   0.033321842   0.420485604   0.000000001  -0.045535086   0.000009885  -0.001691750   0.000062906  -0.009445173
                        -0.003685051  -0.046501342  -0.000000004  -0.129030511  -0.001432965   0.245246229   0.000829649  -0.124570826

   43    3.1  0.5 -0.5   0.000000001   0.000000003   0.000000001  -0.000000003  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.282939073  -0.022421818   0.173098776  -0.000000002  -0.362992385  -0.002120951   0.359474240   0.002394119

   44    4.1  0.5 -0.5  -0.329009475   0.026072716   0.355766151  -0.000000004  -0.221931469  -0.001296738  -0.400890438  -0.002669954
                        -0.000000000   0.000000001   0.000000001   0.000000004   0.000000000   0.000000000  -0.000000000  -0.000000000

   45    5.1  0.5 -0.5   0.003339352   0.042139022  -0.000000005  -0.389132666   0.000512422  -0.087699038  -0.000765655   0.114962242
                         0.030195898   0.381039581  -0.000000003   0.137325576   0.000003535  -0.000604963   0.000058053  -0.008716634

   46    6.1  0.5 -0.5   0.025236125   0.318452602  -0.000000002   0.173202889   0.000001623  -0.000277737  -0.000277137   0.041611816
                        -0.002790854  -0.035217551   0.000000009   0.490796423  -0.000235252   0.040262401  -0.003655115   0.548811333

   47    7.1  0.5 -0.5   0.540005257  -0.042793309   0.502274156  -0.000000008   0.519032779   0.003032690  -0.164798676  -0.001097569
                        -0.000000001  -0.000000004  -0.000000000   0.000000006  -0.000000000   0.000000000   0.000000000   0.000000000

   48    8.1  0.5 -0.5  -0.000001007  -0.000012702  -0.000000000   0.000006460  -0.000014173   0.002425726   0.000005859  -0.000879717
                         0.000000111   0.000001405   0.000000000   0.000018304   0.002054666  -0.351647879   0.000077273  -0.011602444

   49    9.1  0.5 -0.5   0.000000201   0.000002542   0.000000000   0.000007453   0.001197601  -0.204964649  -0.002114484   0.317487285
                         0.000001821   0.000022983   0.000000000  -0.000002630   0.000008261  -0.001413881   0.000160324  -0.024072430

   50   10.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000
                         0.000015001  -0.000001189   0.000018033  -0.000000000  -0.299574855  -0.001750405  -0.199307759  -0.001327401

   51   11.1  0.5 -0.5   0.000002452  -0.000000194   0.000002563  -0.000000000   0.006604945   0.000038592  -0.250627075  -0.001669191
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   52   12.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.000015419   0.000001222   0.000002543   0.000000000  -0.013702985  -0.000080066  -0.226533696  -0.001508728


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5   0.007784275  -0.000029254   0.001578925   0.072096242  -0.002470228   0.053072958   0.018891006   0.000000000
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000023768   0.006324531   0.016316782  -0.000357341  -0.084943430  -0.003953607  -0.000000000  -0.027572244
                         0.000015872   0.004223534   0.015762532  -0.000345203  -0.047839894  -0.002226660  -0.000000000  -0.027545610

    3    3.1  1.5  1.5  -0.000005346  -0.001422437   0.058439303  -0.001279835  -0.026346299  -0.001226262  -0.000000000  -0.047846167
                         0.000008005   0.002130028  -0.060494174   0.001324837   0.046779891   0.002177323   0.000000000   0.047892429

    4    4.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.007878384  -0.000029608   0.001605388   0.073304595  -0.002398262   0.051526767   0.022583283  -0.000000000

    5    5.1  1.5  1.5  -0.000001718  -0.000457086  -0.010731512   0.000235023   0.045720536   0.002128017   0.000000000   0.010252571
                         0.000002572   0.000684463   0.011108858  -0.000243287  -0.081180347  -0.003778458  -0.000000000  -0.010262484

    6    6.1  1.5  1.5  -0.001998338   0.000007510  -0.000580534  -0.026508099  -0.001413489   0.030368869  -0.076075228   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

    7    7.1  1.5  1.5  -0.000032248  -0.008581004   0.059127720  -0.001294911  -0.039693993  -0.001847517  -0.000000000  -0.032178329
                        -0.000021535  -0.005730412   0.057119265  -0.001250926  -0.022355542  -0.001040516  -0.000000000  -0.032147246

    8    1.1  1.5  0.5   0.000021724   0.005780612   0.032423780  -0.000710089  -0.037518134  -0.001746244  -0.000000000   0.002328353
                        -0.000032531  -0.008656177  -0.033563881   0.000735057   0.066616348   0.003100592  -0.000000000  -0.002330604

    9    2.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.008560750   0.000032172   0.000693059   0.031646193  -0.003213506   0.069042327  -0.015672435   0.000000000

   10    3.1  1.5  0.5  -0.010360092   0.000038934  -0.001684400  -0.076912377   0.000294488  -0.006327079  -0.022003465   0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   11    4.1  1.5  0.5  -0.000027883  -0.007419499   0.036461477  -0.000798515  -0.063393436  -0.002950584   0.000000000   0.037886908
                        -0.000018620  -0.004954757   0.035222950  -0.000771391  -0.035702999  -0.001661761   0.000000000   0.037850311

   12    5.1  1.5  0.5   0.005935010  -0.000022304  -0.001793838  -0.081909502   0.000335982  -0.007218590  -0.069693948   0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   13    6.1  1.5  0.5   0.000013886   0.003694859  -0.069431692   0.001520571  -0.031543250  -0.001468149   0.000000000   0.014227653
                        -0.000020793  -0.005532866   0.071873083  -0.001574038   0.056007478   0.002606812  -0.000000000  -0.014241409

   14    7.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.007880214   0.000029614  -0.000778171  -0.035532523   0.003514768  -0.075514950   0.063887685  -0.000000000

   15    1.1  1.5 -0.5  -0.010408884   0.000039117  -0.001022025  -0.046667287  -0.003558516   0.076454877  -0.003294381  -0.000000000
                        -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   16    2.1  1.5 -0.5   0.000026755   0.007119242  -0.022760463   0.000498460  -0.060157675  -0.002799979   0.000000000   0.011087439
                         0.000017867   0.004754244  -0.021987334   0.000481528  -0.033880629  -0.001576940  -0.000000000   0.011076729

   17    3.1  1.5 -0.5  -0.000021622  -0.005753516  -0.053437647   0.001170297  -0.003104841  -0.000144512   0.000000000  -0.015551279
                         0.000032378   0.008615601   0.055316648  -0.001211448   0.005512884   0.000256592   0.000000000   0.015566316

   18    4.1  1.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.008921804   0.000033529   0.001110257   0.050696110   0.003386354  -0.072755975   0.053554308  -0.000000000

   19    5.1  1.5 -0.5   0.000012387   0.003296030  -0.056909580   0.001246334  -0.003542325  -0.000164874  -0.000000000  -0.049257244
                        -0.000018549  -0.004935639   0.058910662  -0.001290158   0.006289672   0.000292747   0.000000000   0.049304870

   20    6.1  1.5 -0.5  -0.006653164   0.000025003   0.002188545   0.099932477  -0.002991811   0.064279190  -0.020130669   0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   21    7.1  1.5 -0.5   0.000024628   0.006553298   0.025555575  -0.000559673   0.065797375   0.003062473  -0.000000000  -0.045197239
                         0.000016447   0.004376306   0.024687501  -0.000540662   0.037056891   0.001724776  -0.000000000  -0.045153580

   22    1.1  1.5 -1.5  -0.000016246  -0.004323026  -0.050091464   0.001097015  -0.026044099  -0.001212197  -0.000000000  -0.013351502
                         0.000024328   0.006473514   0.051852804  -0.001135589   0.046243310   0.002152349   0.000000000   0.013364411

   23    2.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.007605125   0.000028581  -0.000496848  -0.022686886  -0.004537513   0.097488675   0.038974213  -0.000000000

   24    3.1  1.5 -1.5  -0.002561317   0.000009626   0.001842056   0.084111220   0.002498891  -0.053688786  -0.067697418   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   25    4.1  1.5 -1.5   0.000024622   0.006551776   0.052721871  -0.001154622   0.044896090   0.002089644   0.000000000   0.015976507
                         0.000016443   0.004375290   0.050931011  -0.001115401   0.025285348   0.001176881   0.000000000   0.015961075

   26    5.1  1.5 -1.5  -0.000823053   0.000003093  -0.000338266  -0.015445779  -0.004336497   0.093169824   0.014506336  -0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000

   27    6.1  1.5 -1.5   0.000004171   0.001109784   0.018417457  -0.000403347  -0.014902689  -0.000693631   0.000000000   0.053767310
                        -0.000006245  -0.001661846  -0.019065061   0.000417529   0.026460877   0.001231595  -0.000000000  -0.053819297

   28    7.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.010318490  -0.000038778  -0.001800447  -0.082211299  -0.002120376   0.045556375   0.045485056  -0.000000000

   29    1.1  0.5  0.5  -0.010938187   0.000041107   0.000003484   0.000159100  -0.000073794   0.001585464   0.265042259  -0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   30    2.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.492931936   0.001852477  -0.000046051  -0.002102781   0.000045101  -0.000968998   0.146270928  -0.000000000

   31    3.1  0.5  0.5   0.000750481   0.199697936   0.000899384  -0.000019697  -0.001481858  -0.000068972   0.000000000   0.151182048
                         0.000501172   0.133358687   0.000868833  -0.000019028  -0.000834578  -0.000038845   0.000000000   0.151036013

   32    4.1  0.5  0.5  -0.000688472  -0.183197937  -0.001095450   0.000023991  -0.001123503  -0.000052292  -0.000000000  -0.082764697
                         0.001030953   0.274329711   0.001133969  -0.000024834   0.001994866   0.000092849   0.000000000   0.082844721

   33    5.1  0.5  0.5   0.545817176  -0.002051224   0.000054660   0.002495858   0.000011138  -0.000239293   0.049038164   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

   34    6.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.119485443   0.000449036  -0.000011601  -0.000529714  -0.000128819   0.002767681   0.012890787   0.000000000

   35    7.1  0.5  0.5  -0.000311075  -0.082774912  -0.000300738   0.000006586  -0.000465512  -0.000021667   0.000000000   0.213258417
                         0.000465819   0.123951274   0.000311313  -0.000006818   0.000826552   0.000038471  -0.000000000  -0.213464614

   36    8.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.172134649   0.000646896   0.013459783   0.614595215  -0.002504349   0.053806046   0.588406919  -0.000000000

   37    9.1  0.5  0.5  -0.100235143   0.000376692   0.005710538   0.260752290  -0.026104172   0.560849309  -0.366036524   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   38   10.1  0.5  0.5  -0.000483458  -0.128644991   0.373459941  -0.008178863  -0.290190904  -0.013506646  -0.000000000  -0.351403048
                        -0.000322854  -0.085909386   0.360774223  -0.007901042  -0.163434677  -0.007606904  -0.000000000  -0.351063609

   39   11.1  0.5  0.5   0.000626584   0.166729996   0.242327750  -0.005307036  -0.245435485  -0.011423550   0.000000000  -0.014493943
                        -0.000938279  -0.249669796  -0.250848596   0.005493645   0.435789679   0.020283396   0.000000000   0.014507957

   40   12.1  0.5  0.5   0.000995407   0.264871253   0.235288598  -0.005152877   0.447630502   0.020834516   0.000000000  -0.002733781
                         0.000664735   0.176881560   0.227296295  -0.004977844   0.252104202   0.011733939   0.000000000  -0.002731141

   41    1.1  0.5 -0.5   0.000022829   0.006074563  -0.000110541   0.000002421  -0.000778023  -0.000036212  -0.000000000  -0.187322597
                        -0.000034185  -0.009096353   0.000114427  -0.000002506   0.001381440   0.000064298   0.000000000   0.187503716

   42    2.1  0.5 -0.5  -0.001540547  -0.409929227  -0.001512355   0.000033121  -0.000844304  -0.000039297   0.000000000   0.103479131
                        -0.001028780  -0.273751569  -0.001460983   0.000031996  -0.000475509  -0.000022132   0.000000000   0.103379175

   43    3.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.240132890   0.000902439  -0.000027386  -0.001250505  -0.000079158   0.001700713  -0.213700466   0.000000000

   44    4.1  0.5 -0.5  -0.329876150   0.001239701  -0.000034530  -0.001576672   0.000106562  -0.002289486  -0.117103556   0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   45    5.1  0.5 -0.5  -0.001139155  -0.303121583  -0.001734087   0.000037977   0.000117426   0.000005465   0.000000000  -0.034658459
                         0.001705828   0.453909348   0.001795062  -0.000039312  -0.000208499  -0.000009704   0.000000000   0.034691969

   46    6.1  0.5 -0.5  -0.000373425  -0.099365799  -0.000380979   0.000008344   0.002411524   0.000112242  -0.000000000   0.009119567
                        -0.000249374  -0.066356682  -0.000368038   0.000008060   0.001358163   0.000063214   0.000000000   0.009110758

   47    7.1  0.5 -0.5  -0.149049000   0.000560138  -0.000009480  -0.000432850   0.000044153  -0.000948625   0.301738784  -0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   48    8.1  0.5 -0.5  -0.000537968  -0.143149629   0.442026999  -0.009680498   0.046882062   0.002182079   0.000000000   0.416267522
                        -0.000359256  -0.095595612   0.427012190  -0.009351670   0.026403842   0.001228940   0.000000000   0.415865427

   49    9.1  0.5 -0.5   0.000209197   0.055665957  -0.181167057   0.003967602  -0.275221418  -0.012809907   0.000000000   0.258701810
                        -0.000313262  -0.083356975   0.187537341  -0.004107113   0.488676906   0.022744980  -0.000000000  -0.258951946

   50   10.1  0.5 -0.5   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.154693104  -0.000581349  -0.011371907  -0.519259442  -0.015501435   0.333049027   0.496718995  -0.000000000

   51   11.1  0.5 -0.5   0.300223081  -0.001128262   0.007638374   0.348780384   0.023279039  -0.500151199  -0.020507443  -0.000000000
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   52   12.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.318502538   0.001196958  -0.007164570  -0.327145732   0.023911553  -0.513740786   0.003864284   0.000000000


   Nr   State  S   Sz       49            50            51            52

    1    1.1  1.5  1.5  -0.000000000   0.057345851   0.047428806  -0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.025352306   0.000000000   0.000000000   0.009329350
                        -0.037569086  -0.000000000   0.000000000  -0.044627168

    3    3.1  1.5  1.5   0.022629001  -0.000000000   0.000000000   0.016526943
                        -0.015270463  -0.000000000  -0.000000000   0.003454973

    4    4.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.055552101   0.047933449   0.000000000

    5    5.1  1.5  1.5   0.062232976  -0.000000000   0.000000000   0.006693346
                        -0.041995949  -0.000000000   0.000000000   0.001399250

    6    6.1  1.5  1.5   0.000000000   0.035348878  -0.011477566  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000

    7    7.1  1.5  1.5   0.001965000  -0.000000000   0.000000000  -0.012603743
                         0.002911895   0.000000000  -0.000000000   0.060290306

    8    1.1  1.5  0.5   0.039886687  -0.000000000   0.000000000  -0.058539098
                        -0.026916265  -0.000000000   0.000000000  -0.012237652

    9    2.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.061100542  -0.048909394  -0.000000000

   10    3.1  1.5  0.5   0.000000000   0.047762870  -0.059585031  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000

   11    4.1  1.5  0.5  -0.012996196  -0.000000000   0.000000000  -0.010506042
                        -0.019258809   0.000000000  -0.000000000   0.050255900

   12    5.1  1.5  0.5   0.000000000  -0.015093885   0.034007848   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000

   13    6.1  1.5  0.5  -0.043912935   0.000000000  -0.000000000  -0.040405529
                         0.029633251   0.000000000  -0.000000000  -0.008446813

   14    7.1  1.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.000050578  -0.045484149  -0.000000000

   15    1.1  1.5 -0.5  -0.000000000   0.048118948  -0.059804566  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   16    2.1  1.5 -0.5   0.034177771   0.000000000  -0.000000000   0.010008201
                         0.050647371  -0.000000000   0.000000000  -0.047874468

   17    3.1  1.5 -0.5  -0.039591527   0.000000000  -0.000000000   0.058324208
                         0.026717086   0.000000000  -0.000000000   0.012192729

   18    4.1  1.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.023233658  -0.051342306  -0.000000000

   19    5.1  1.5 -0.5   0.012511601  -0.000000000   0.000000000  -0.033288240
                        -0.008443057  -0.000000000   0.000000000  -0.006958937

   20    6.1  1.5 -0.5   0.000000000  -0.052976177  -0.041278995   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

   21    7.1  1.5 -0.5   0.000028292   0.000000000  -0.000000000   0.009307302
                         0.000041925  -0.000000000   0.000000000  -0.044521702

   22    1.1  1.5 -1.5   0.047535038   0.000000000  -0.000000000   0.046425210
                        -0.032077512  -0.000000000   0.000000000   0.009705232

   23    2.1  1.5 -1.5   0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.045323014  -0.045591895  -0.000000000

   24    3.1  1.5 -1.5   0.000000000  -0.027299427  -0.016884214   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000

   25    4.1  1.5 -1.5  -0.031074143   0.000000000  -0.000000000   0.009808496
                        -0.046048165  -0.000000000   0.000000000  -0.046919174

   26    5.1  1.5 -1.5  -0.000000000  -0.075077314  -0.006838039   0.000000000
                         0.000000000  -0.000000000  -0.000000000  -0.000000000

   27    6.1  1.5 -1.5   0.029301339  -0.000000000  -0.000000000  -0.011234700
                        -0.019773079  -0.000000000   0.000000000  -0.002348624

   28    7.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.003512885   0.061593631   0.000000000

   29    1.1  0.5  0.5  -0.000000000   0.185858480   0.002093126  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   30    2.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000  -0.058513531  -0.282590873  -0.000000000

   31    3.1  0.5  0.5   0.113379875   0.000000000  -0.000000000   0.027453985
                         0.168015420  -0.000000000   0.000000000  -0.131326790

   32    4.1  0.5  0.5   0.189349063   0.000000000   0.000000000   0.192833663
                        -0.127776208  -0.000000000  -0.000000000   0.040312053

   33    5.1  0.5  0.5   0.000000000  -0.073359456   0.311236556   0.000000000
                         0.000000000   0.000000000   0.000000000  -0.000000000

   34    6.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.317901671  -0.059119758  -0.000000000

   35    7.1  0.5  0.5   0.067688889   0.000000000  -0.000000000   0.082607692
                        -0.045677699   0.000000000   0.000000000   0.017269213

   36    8.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.031260709   0.293534259   0.000000000

   37    9.1  0.5  0.5   0.000000000   0.515179429   0.177514191  -0.000000000
                        -0.000000000   0.000000000   0.000000000   0.000000000

   38   10.1  0.5  0.5   0.200227785   0.000000000  -0.000000000   0.049460030
                         0.296713639  -0.000000000   0.000000000  -0.236593233

   39   11.1  0.5  0.5  -0.365994415   0.000000000  -0.000000000   0.486359166
                         0.246979719   0.000000000  -0.000000000   0.101673826

   40   12.1  0.5  0.5   0.207956603  -0.000000000   0.000000000  -0.112989801
                         0.308166822   0.000000000  -0.000000000   0.540489403

   41    1.1  0.5 -0.5   0.154061536  -0.000000000   0.000000000   0.002048836
                        -0.103963540  -0.000000000   0.000000000   0.000428311

   42    2.1  0.5 -0.5   0.032730677  -0.000000000   0.000000000  -0.057825830
                         0.048502949   0.000000000  -0.000000000   0.276611234

   43    3.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000   0.202692322  -0.134165745  -0.000000000

   44    4.1  0.5 -0.5   0.000000000  -0.228429042  -0.197002242   0.000000000
                         0.000000000   0.000000000   0.000000000   0.000000000

   45    5.1  0.5 -0.5  -0.060809012   0.000000000  -0.000000000   0.304650773
                         0.041035032   0.000000000  -0.000000000   0.063687521

   46    6.1  0.5 -0.5  -0.177824456  -0.000000000   0.000000000  -0.012097521
                        -0.263514583   0.000000000  -0.000000000   0.057868781

   47    7.1  0.5 -0.5  -0.000000000  -0.081659279  -0.084393463  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000

   48    8.1  0.5 -0.5  -0.017486283   0.000000000  -0.000000000   0.060065146
                        -0.025912581  -0.000000000  -0.000000000  -0.287323057

   49    9.1  0.5 -0.5   0.427041770  -0.000000000  -0.000000000   0.173757981
                        -0.288175590  -0.000000000   0.000000000   0.036324264

   50   10.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.357952719  -0.241707783  -0.000000000

   51   11.1  0.5 -0.5  -0.000000000   0.441532437  -0.496873028  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000   0.000000000

   52   12.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000
                         0.000000000   0.371769739   0.552173424   0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.001%  34.348%   0.000%   0.232%   0.000%   0.149%   0.754%   0.000%   0.201%   0.001%
    2    2.1  1.5  1.5   0.001%   0.000%   8.706%   0.002%   0.014%   0.000%   0.001%  13.959%   0.127%  17.011%
    3    3.1  1.5  1.5   0.165%   0.000%  10.929%   0.002%   0.093%   0.000%   0.001%  13.864%   0.107%  14.380%
    4    4.1  1.5  1.5   0.000%  31.332%   0.000%   0.123%   0.000%   0.015%   3.487%   0.000%   0.751%   0.006%
    5    5.1  1.5  1.5   0.110%   0.000%   8.481%   0.002%   1.729%   0.000%   0.000%   0.349%   0.201%  26.966%
    6    6.1  1.5  1.5   0.000%   0.168%   0.000%   0.973%   0.004%  22.451%   0.200%   0.000%   0.041%   0.000%
    7    7.1  1.5  1.5   0.007%   0.000%  11.687%   0.002%   1.215%   0.000%   0.000%   0.123%   0.181%  24.345%
    8    1.1  1.5  0.5   0.146%   0.000%  30.837%   0.006%   4.714%   0.001%   0.000%   0.012%   0.000%   0.026%
    9    2.1  1.5  0.5   0.000%   9.410%   0.001%   6.116%   0.002%  11.134%   4.078%   0.000%   0.860%   0.006%
   10    3.1  1.5  0.5   0.000%  11.657%   0.001%   3.632%   0.001%   8.161%   6.691%   0.000%   1.730%   0.013%
   11    4.1  1.5  0.5   0.061%   0.000%  17.616%   0.004%  17.901%   0.003%   0.000%   0.125%   0.000%   0.004%
   12    5.1  1.5  0.5   0.000%   6.162%   0.000%   0.217%   0.002%  13.775%  11.124%   0.000%   2.291%   0.017%
   13    6.1  1.5  0.5   0.406%   0.000%   0.008%   0.000%   0.260%   0.000%   0.001%  38.017%   0.066%   8.833%
   14    7.1  1.5  0.5   0.000%   6.026%   0.000%   0.422%   0.003%  18.372%   7.212%   0.000%   1.819%   0.014%
   15    1.1  1.5 -0.5   0.000%   0.146%   0.006%  30.837%   0.001%   4.714%   0.012%   0.000%   0.026%   0.000%
   16    2.1  1.5 -0.5   9.410%   0.000%   6.116%   0.001%  11.134%   0.002%   0.000%   4.078%   0.006%   0.860%
   17    3.1  1.5 -0.5  11.657%   0.000%   3.632%   0.001%   8.161%   0.001%   0.000%   6.691%   0.013%   1.730%
   18    4.1  1.5 -0.5   0.000%   0.061%   0.004%  17.616%   0.003%  17.901%   0.125%   0.000%   0.004%   0.000%
   19    5.1  1.5 -0.5   6.162%   0.000%   0.217%   0.000%  13.775%   0.002%   0.000%  11.124%   0.017%   2.291%
   20    6.1  1.5 -0.5   0.000%   0.406%   0.000%   0.008%   0.000%   0.260%  38.017%   0.001%   8.833%   0.066%
   21    7.1  1.5 -0.5   6.026%   0.000%   0.422%   0.000%  18.372%   0.003%   0.000%   7.212%   0.014%   1.819%
   22    1.1  1.5 -1.5  34.348%   0.001%   0.232%   0.000%   0.149%   0.000%   0.000%   0.754%   0.001%   0.201%
   23    2.1  1.5 -1.5   0.000%   0.001%   0.002%   8.706%   0.000%   0.014%  13.959%   0.001%  17.011%   0.127%
   24    3.1  1.5 -1.5   0.000%   0.165%   0.002%  10.929%   0.000%   0.093%  13.864%   0.001%  14.380%   0.107%
   25    4.1  1.5 -1.5  31.332%   0.000%   0.123%   0.000%   0.015%   0.000%   0.000%   3.487%   0.006%   0.751%
   26    5.1  1.5 -1.5   0.000%   0.110%   0.002%   8.481%   0.000%   1.729%   0.349%   0.000%  26.966%   0.201%
   27    6.1  1.5 -1.5   0.168%   0.000%   0.973%   0.000%  22.451%   0.004%   0.000%   0.200%   0.000%   0.041%
   28    7.1  1.5 -1.5   0.000%   0.007%   0.002%  11.687%   0.000%   1.215%   0.123%   0.000%  24.345%   0.181%
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

    1    1.1  1.5  1.5  15.478%   0.001%   0.146%  11.726%   0.000%   0.106%   0.000%   0.000%   1.426%   0.000%
    2    2.1  1.5  1.5   0.000%   2.126%   1.262%   0.016%   2.513%   0.001%  14.840%   0.351%   0.000%   4.960%
    3    3.1  1.5  1.5   0.000%   3.540%   0.885%   0.011%  16.866%   0.005%   0.225%   0.005%   0.000%  16.146%
    4    4.1  1.5  1.5   0.042%   0.000%   0.008%   0.658%   0.003%   9.962%   0.387%  16.353%   1.989%   0.000%
    5    5.1  1.5  1.5   0.000%   0.056%  10.601%   0.132%  13.156%   0.004%   0.199%   0.005%   0.000%   0.603%
    6    6.1  1.5  1.5  16.351%   0.001%   0.272%  21.866%   0.001%   2.812%   0.100%   4.242%  19.831%   0.000%
    7    7.1  1.5  1.5   0.001%  11.643%   1.078%   0.013%   0.900%   0.000%  10.692%   0.253%   0.000%   7.339%
    8    1.1  1.5  0.5   0.001%   9.320%  17.007%   0.212%   0.821%   0.000%   0.009%   0.000%   0.000%   0.032%
    9    2.1  1.5  0.5   0.021%   0.000%   0.061%   4.937%   0.000%   0.214%   0.658%  27.828%   0.787%   0.000%
   10    3.1  1.5  0.5   2.104%   0.000%   0.000%   0.036%   0.009%  27.149%   0.092%   3.899%   1.643%   0.000%
   11    4.1  1.5  0.5   0.000%   4.075%   5.826%   0.072%   9.684%   0.003%   7.574%   0.179%   0.000%   9.948%
   12    5.1  1.5  0.5  18.357%   0.001%   0.048%   3.833%   0.002%   7.132%   0.030%   1.273%  16.858%   0.000%
   13    6.1  1.5  0.5   0.000%   3.629%   0.747%   0.009%   1.588%   0.001%   3.133%   0.074%   0.000%   1.573%
   14    7.1  1.5  0.5   9.199%   0.001%   0.178%  14.307%   0.001%   3.014%   0.082%   3.466%  13.985%   0.000%
   15    1.1  1.5 -0.5   9.320%   0.001%   0.212%  17.007%   0.000%   0.821%   0.000%   0.009%   0.032%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.021%   4.937%   0.061%   0.214%   0.000%  27.828%   0.658%   0.000%   0.787%
   17    3.1  1.5 -0.5   0.000%   2.104%   0.036%   0.000%  27.149%   0.009%   3.899%   0.092%   0.000%   1.643%
   18    4.1  1.5 -0.5   4.075%   0.000%   0.072%   5.826%   0.003%   9.684%   0.179%   7.574%   9.948%   0.000%
   19    5.1  1.5 -0.5   0.001%  18.357%   3.833%   0.048%   7.132%   0.002%   1.273%   0.030%   0.000%  16.858%
   20    6.1  1.5 -0.5   3.629%   0.000%   0.009%   0.747%   0.001%   1.588%   0.074%   3.133%   1.573%   0.000%
   21    7.1  1.5 -0.5   0.001%   9.199%  14.307%   0.178%   3.014%   0.001%   3.466%   0.082%   0.000%  13.985%
   22    1.1  1.5 -1.5   0.001%  15.478%  11.726%   0.146%   0.106%   0.000%   0.000%   0.000%   0.000%   1.426%
   23    2.1  1.5 -1.5   2.126%   0.000%   0.016%   1.262%   0.001%   2.513%   0.351%  14.840%   4.960%   0.000%
   24    3.1  1.5 -1.5   3.540%   0.000%   0.011%   0.885%   0.005%  16.866%   0.005%   0.225%  16.146%   0.000%
   25    4.1  1.5 -1.5   0.000%   0.042%   0.658%   0.008%   9.962%   0.003%  16.353%   0.387%   0.000%   1.989%
   26    5.1  1.5 -1.5   0.056%   0.000%   0.132%  10.601%   0.004%  13.156%   0.005%   0.199%   0.603%   0.000%
   27    6.1  1.5 -1.5   0.001%  16.351%  21.866%   0.272%   2.812%   0.001%   4.242%   0.100%   0.000%  19.831%
   28    7.1  1.5 -1.5  11.643%   0.001%   0.013%   1.078%   0.000%   0.900%   0.253%  10.692%   7.339%   0.000%
   29    1.1  0.5  0.5   1.893%   0.000%   0.000%   0.009%   0.000%   0.201%   0.005%   0.208%   0.347%   0.000%
   30    2.1  0.5  0.5   0.317%   0.000%   0.018%   1.435%   0.000%   0.469%   0.002%   0.075%   0.099%   0.000%
   31    3.1  0.5  0.5   0.000%   0.512%   0.928%   0.012%   0.648%   0.000%   0.210%   0.005%   0.000%   0.216%
   32    4.1  0.5  0.5   0.000%   0.795%   0.276%   0.003%   0.550%   0.000%   0.676%   0.016%   0.000%   0.073%
   33    5.1  0.5  0.5   0.039%   0.000%   0.013%   1.055%   0.000%   0.332%   0.020%   0.856%   0.012%   0.000%
   34    6.1  0.5  0.5   0.490%   0.000%   0.003%   0.272%   0.000%   0.565%   0.023%   0.962%   0.002%   0.000%
   35    7.1  0.5  0.5   0.000%   0.007%   0.027%   0.000%   1.287%   0.000%   0.971%   0.023%   0.000%   0.434%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.817%   0.000%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.295%   0.000%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.583%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5 -0.5   0.000%   1.893%   0.009%   0.000%   0.201%   0.000%   0.208%   0.005%   0.000%   0.347%
   42    2.1  0.5 -0.5   0.000%   0.317%   1.435%   0.018%   0.469%   0.000%   0.075%   0.002%   0.000%   0.099%
   43    3.1  0.5 -0.5   0.512%   0.000%   0.012%   0.928%   0.000%   0.648%   0.005%   0.210%   0.216%   0.000%
   44    4.1  0.5 -0.5   0.795%   0.000%   0.003%   0.276%   0.000%   0.550%   0.016%   0.676%   0.073%   0.000%
   45    5.1  0.5 -0.5   0.000%   0.039%   1.055%   0.013%   0.332%   0.000%   0.856%   0.020%   0.000%   0.012%
   46    6.1  0.5 -0.5   0.000%   0.490%   0.272%   0.003%   0.565%   0.000%   0.962%   0.023%   0.000%   0.002%
   47    7.1  0.5 -0.5   0.007%   0.000%   0.000%   0.027%   0.000%   1.287%   0.023%   0.971%   0.434%   0.000%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.817%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.295%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.583%   0.000%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   0.000%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   1.279%  10.344%   7.771%   0.003%   0.064%   8.776%   4.623%   0.001%   1.036%   0.000%
    2    2.1  1.5  1.5   6.419%   0.794%   0.003%   7.199%   0.800%   0.006%   0.003%  16.410%   0.000%   0.175%
    3    3.1  1.5  1.5   2.214%   0.274%   0.000%   0.839%  11.907%   0.087%   0.001%   4.969%   0.000%   0.217%
    4    4.1  1.5  1.5   1.198%   9.689%   7.935%   0.003%   0.066%   9.069%   4.354%   0.001%   0.000%   0.000%
    5    5.1  1.5  1.5  17.199%   2.127%   0.000%   0.136%   0.372%   0.003%   0.003%  15.046%   0.000%   0.132%
    6    6.1  1.5  1.5   0.516%   4.172%   0.445%   0.000%   0.008%   1.158%   1.557%   0.000%   0.119%   0.000%
    7    7.1  1.5  1.5   0.042%   0.005%   0.005%  12.773%  11.480%   0.083%   0.001%   3.604%   0.000%   0.359%
    8    1.1  1.5  0.5   7.192%   0.890%   0.005%  12.684%   3.533%   0.026%   0.002%   9.956%   0.000%   0.046%
    9    2.1  1.5  0.5   1.443%  11.670%   8.345%   0.004%   0.013%   1.782%   7.972%   0.001%   0.013%   0.000%
   10    3.1  1.5  0.5   0.864%   6.983%  12.656%   0.005%   0.072%   9.883%   0.065%   0.000%   0.038%   0.000%
   11    4.1  1.5  0.5   1.400%   0.173%   0.004%   9.286%   4.326%   0.031%   0.002%   9.135%   0.000%   0.025%
   12    5.1  1.5  0.5   0.071%   0.578%   4.045%   0.002%   0.083%  11.409%   0.075%   0.000%   0.912%   0.000%
   13    6.1  1.5  0.5   8.516%   1.053%   0.002%   5.512%  17.119%   0.124%   0.001%   7.020%   0.000%   0.224%
   14    7.1  1.5  0.5   0.002%   0.013%   7.456%   0.003%   0.016%   2.154%   9.647%   0.002%   0.754%   0.000%
   15    1.1  1.5 -0.5   0.890%   7.192%  12.684%   0.005%   0.026%   3.533%   9.956%   0.002%   0.046%   0.000%
   16    2.1  1.5 -0.5  11.670%   1.443%   0.004%   8.345%   1.782%   0.013%   0.001%   7.972%   0.000%   0.013%
   17    3.1  1.5 -0.5   6.983%   0.864%   0.005%  12.656%   9.883%   0.072%   0.000%   0.065%   0.000%   0.038%
   18    4.1  1.5 -0.5   0.173%   1.400%   9.286%   0.004%   0.031%   4.326%   9.135%   0.002%   0.025%   0.000%
   19    5.1  1.5 -0.5   0.578%   0.071%   0.002%   4.045%  11.409%   0.083%   0.000%   0.075%   0.000%   0.912%
   20    6.1  1.5 -0.5   1.053%   8.516%   5.512%   0.002%   0.124%  17.119%   7.020%   0.001%   0.224%   0.000%
   21    7.1  1.5 -0.5   0.013%   0.002%   0.003%   7.456%   2.154%   0.016%   0.002%   9.647%   0.000%   0.754%
   22    1.1  1.5 -1.5  10.344%   1.279%   0.003%   7.771%   8.776%   0.064%   0.001%   4.623%   0.000%   1.036%
   23    2.1  1.5 -1.5   0.794%   6.419%   7.199%   0.003%   0.006%   0.800%  16.410%   0.003%   0.175%   0.000%
   24    3.1  1.5 -1.5   0.274%   2.214%   0.839%   0.000%   0.087%  11.907%   4.969%   0.001%   0.217%   0.000%
   25    4.1  1.5 -1.5   9.689%   1.198%   0.003%   7.935%   9.069%   0.066%   0.001%   4.354%   0.000%   0.000%
   26    5.1  1.5 -1.5   2.127%  17.199%   0.136%   0.000%   0.003%   0.372%  15.046%   0.003%   0.132%   0.000%
   27    6.1  1.5 -1.5   4.172%   0.516%   0.000%   0.445%   1.158%   0.008%   0.000%   1.557%   0.000%   0.119%
   28    7.1  1.5 -1.5   0.005%   0.042%  12.773%   0.005%   0.083%  11.480%   3.604%   0.001%   0.359%   0.000%
   29    1.1  0.5  0.5   0.018%   0.142%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  38.305%   0.017%
   30    2.1  0.5  0.5   0.002%   0.017%   0.388%   0.000%   0.000%   0.000%   0.000%   0.000%  23.054%   0.010%
   31    3.1  0.5  0.5   0.181%   0.022%   0.000%   0.087%   0.000%   0.000%   0.000%   0.000%   0.001%   1.548%
   32    4.1  0.5  0.5   0.224%   0.028%   0.000%   0.182%   0.000%   0.000%   0.000%   0.000%   0.014%  30.498%
   33    5.1  0.5  0.5   0.003%   0.022%   0.470%   0.000%   0.000%   0.000%   0.000%   0.000%   0.388%   0.000%
   34    6.1  0.5  0.5   0.054%   0.433%   0.019%   0.000%   0.000%   0.000%   0.000%   0.000%   2.104%   0.001%
   35    7.1  0.5  0.5   0.033%   0.004%   0.000%   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%
   36    8.1  0.5  0.5   0.000%   0.001%   0.200%   0.000%   0.016%   2.191%   0.014%   0.000%   0.000%   0.000%
   37    9.1  0.5  0.5   0.071%   0.577%   0.074%   0.000%   0.003%   0.405%   1.813%   0.000%   0.000%   0.000%
   38   10.1  0.5  0.5   0.255%   0.031%   0.000%   0.148%   1.553%   0.011%   0.000%   0.657%   0.000%   0.000%
   39   11.1  0.5  0.5   0.389%   0.048%   0.000%   0.579%   0.711%   0.005%   0.000%   1.502%   0.000%   0.000%
   40   12.1  0.5  0.5   0.287%   0.036%   0.000%   0.693%   0.651%   0.005%   0.000%   1.562%   0.000%   0.000%
   41    1.1  0.5 -0.5   0.142%   0.018%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.017%  38.305%
   42    2.1  0.5 -0.5   0.017%   0.002%   0.000%   0.388%   0.000%   0.000%   0.000%   0.000%   0.010%  23.054%
   43    3.1  0.5 -0.5   0.022%   0.181%   0.087%   0.000%   0.000%   0.000%   0.000%   0.000%   1.548%   0.001%
   44    4.1  0.5 -0.5   0.028%   0.224%   0.182%   0.000%   0.000%   0.000%   0.000%   0.000%  30.498%   0.014%
   45    5.1  0.5 -0.5   0.022%   0.003%   0.000%   0.470%   0.000%   0.000%   0.000%   0.000%   0.000%   0.388%
   46    6.1  0.5 -0.5   0.433%   0.054%   0.000%   0.019%   0.000%   0.000%   0.000%   0.000%   0.001%   2.104%
   47    7.1  0.5 -0.5   0.004%   0.033%   0.036%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%
   48    8.1  0.5 -0.5   0.001%   0.000%   0.000%   0.200%   2.191%   0.016%   0.000%   0.014%   0.000%   0.000%
   49    9.1  0.5 -0.5   0.577%   0.071%   0.000%   0.074%   0.405%   0.003%   0.000%   1.813%   0.000%   0.000%
   50   10.1  0.5 -0.5   0.031%   0.255%   0.148%   0.000%   0.011%   1.553%   0.657%   0.000%   0.000%   0.000%
   51   11.1  0.5 -0.5   0.048%   0.389%   0.579%   0.000%   0.005%   0.711%   1.502%   0.000%   0.000%   0.000%
   52   12.1  0.5 -0.5   0.036%   0.287%   0.693%   0.000%   0.005%   0.651%   1.562%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.000%   0.088%   0.032%   0.000%   0.003%   0.000%   0.001%   0.000%   0.010%   0.000%
    2    2.1  1.5  1.5   0.001%   0.000%   0.001%   0.108%   0.000%   0.607%   0.000%   0.004%   0.000%   0.007%
    3    3.1  1.5  1.5   0.031%   0.000%   0.004%   0.634%   0.000%   0.023%   0.000%   0.014%   0.000%   0.002%
    4    4.1  1.5  1.5   0.000%   0.007%   0.480%   0.003%   0.667%   0.000%   0.002%   0.000%   0.009%   0.000%
    5    5.1  1.5  1.5   0.502%   0.000%   0.002%   0.374%   0.000%   0.010%   0.000%   0.000%   0.000%   0.016%
    6    6.1  1.5  1.5   0.000%   1.215%   0.267%   0.002%   0.324%   0.000%   0.016%   0.000%   0.004%   0.000%
    7    7.1  1.5  1.5   0.317%   0.000%   0.000%   0.013%   0.000%   0.349%   0.000%   0.006%   0.000%   0.000%
    8    1.1  1.5  0.5   1.095%   0.000%   0.000%   0.000%   0.000%   0.015%   0.000%   0.000%   0.000%   0.006%
    9    2.1  1.5  0.5   0.000%   0.222%   0.045%   0.000%   1.144%   0.000%   0.001%   0.000%   0.011%   0.000%
   10    3.1  1.5  0.5   0.000%   0.058%   1.131%   0.007%   0.172%   0.000%   0.001%   0.000%   0.006%   0.000%
   11    4.1  1.5  0.5   0.205%   0.000%   0.003%   0.500%   0.000%   0.424%   0.000%   0.008%   0.000%   0.001%
   12    5.1  1.5  0.5   0.000%   0.012%   0.342%   0.002%   0.027%   0.000%   0.014%   0.000%   0.000%   0.000%
   13    6.1  1.5  0.5   0.000%   0.000%   0.000%   0.058%   0.000%   0.104%   0.000%   0.001%   0.000%   0.008%
   14    7.1  1.5  0.5   0.000%   0.297%   0.043%   0.000%   0.183%   0.000%   0.011%   0.000%   0.000%   0.000%
   15    1.1  1.5 -0.5   0.000%   1.095%   0.000%   0.000%   0.015%   0.000%   0.000%   0.000%   0.006%   0.000%
   16    2.1  1.5 -0.5   0.222%   0.000%   0.000%   0.045%   0.000%   1.144%   0.000%   0.001%   0.000%   0.011%
   17    3.1  1.5 -0.5   0.058%   0.000%   0.007%   1.131%   0.000%   0.172%   0.000%   0.001%   0.000%   0.006%
   18    4.1  1.5 -0.5   0.000%   0.205%   0.500%   0.003%   0.424%   0.000%   0.008%   0.000%   0.001%   0.000%
   19    5.1  1.5 -0.5   0.012%   0.000%   0.002%   0.342%   0.000%   0.027%   0.000%   0.014%   0.000%   0.000%
   20    6.1  1.5 -0.5   0.000%   0.000%   0.058%   0.000%   0.104%   0.000%   0.001%   0.000%   0.008%   0.000%
   21    7.1  1.5 -0.5   0.297%   0.000%   0.000%   0.043%   0.000%   0.183%   0.000%   0.011%   0.000%   0.000%
   22    1.1  1.5 -1.5   0.088%   0.000%   0.000%   0.032%   0.000%   0.003%   0.000%   0.001%   0.000%   0.010%
   23    2.1  1.5 -1.5   0.000%   0.001%   0.108%   0.001%   0.607%   0.000%   0.004%   0.000%   0.007%   0.000%
   24    3.1  1.5 -1.5   0.000%   0.031%   0.634%   0.004%   0.023%   0.000%   0.014%   0.000%   0.002%   0.000%
   25    4.1  1.5 -1.5   0.007%   0.000%   0.003%   0.480%   0.000%   0.667%   0.000%   0.002%   0.000%   0.009%
   26    5.1  1.5 -1.5   0.000%   0.502%   0.374%   0.002%   0.010%   0.000%   0.000%   0.000%   0.016%   0.000%
   27    6.1  1.5 -1.5   1.215%   0.000%   0.002%   0.267%   0.000%   0.324%   0.000%   0.016%   0.000%   0.004%
   28    7.1  1.5 -1.5   0.000%   0.317%   0.013%   0.000%   0.349%   0.000%   0.006%   0.000%   0.000%   0.000%
   29    1.1  0.5  0.5   0.001%   2.906%   4.499%   0.028%   9.078%   0.000%  22.364%   0.001%   9.486%   0.000%
   30    2.1  0.5  0.5   0.004%  11.885%  17.897%   0.112%   1.872%   0.000%   6.015%   0.000%   1.561%   0.000%
   31    3.1  0.5  0.5  42.222%   0.013%   0.050%   8.005%   0.000%   2.996%   0.000%  13.176%   0.001%  12.922%
   32    4.1  0.5  0.5   0.766%   0.000%   0.068%  10.825%   0.000%  12.657%   0.000%   4.925%   0.001%  16.071%
   33    5.1  0.5  0.5   0.007%  22.608%  14.697%   0.092%  17.028%   0.000%   0.769%   0.000%   1.329%   0.000%
   34    6.1  0.5  0.5   0.005%  15.293%  10.265%   0.064%  27.088%   0.000%   0.162%   0.000%  30.293%   0.001%
   35    7.1  0.5  0.5   0.238%   0.000%   0.183%  29.161%   0.000%  25.228%   0.001%  26.940%   0.000%   2.716%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.366%   0.000%   0.014%   0.000%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.201%   0.000%  10.138%   0.000%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.975%   0.000%   3.972%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   6.281%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   5.132%
   41    1.1  0.5 -0.5   2.906%   0.001%   0.028%   4.499%   0.000%   9.078%   0.001%  22.364%   0.000%   9.486%
   42    2.1  0.5 -0.5  11.885%   0.004%   0.112%  17.897%   0.000%   1.872%   0.000%   6.015%   0.000%   1.561%
   43    3.1  0.5 -0.5   0.013%  42.222%   8.005%   0.050%   2.996%   0.000%  13.176%   0.000%  12.922%   0.001%
   44    4.1  0.5 -0.5   0.000%   0.766%  10.825%   0.068%  12.657%   0.000%   4.925%   0.000%  16.071%   0.001%
   45    5.1  0.5 -0.5  22.608%   0.007%   0.092%  14.697%   0.000%  17.028%   0.000%   0.769%   0.000%   1.329%
   46    6.1  0.5 -0.5  15.293%   0.005%   0.064%  10.265%   0.000%  27.088%   0.000%   0.162%   0.001%  30.293%
   47    7.1  0.5 -0.5   0.000%   0.238%  29.161%   0.183%  25.228%   0.000%  26.940%   0.001%   2.716%   0.000%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%  12.366%   0.000%   0.014%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   4.201%   0.000%  10.138%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   8.975%   0.000%   3.972%   0.000%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.004%   0.000%   6.281%   0.000%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.019%   0.000%   5.132%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.006%   0.000%   0.000%   0.520%   0.001%   0.282%   0.036%   0.000%   0.000%   0.329%
    2    2.1  1.5  1.5   0.000%   0.006%   0.051%   0.000%   0.950%   0.002%   0.000%   0.152%   0.205%   0.000%
    3    3.1  1.5  1.5   0.000%   0.001%   0.707%   0.000%   0.288%   0.001%   0.000%   0.458%   0.075%   0.000%
    4    4.1  1.5  1.5   0.006%   0.000%   0.000%   0.537%   0.001%   0.266%   0.051%   0.000%   0.000%   0.309%
    5    5.1  1.5  1.5   0.000%   0.000%   0.024%   0.000%   0.868%   0.002%   0.000%   0.021%   0.564%   0.000%
    6    6.1  1.5  1.5   0.000%   0.000%   0.000%   0.070%   0.000%   0.092%   0.579%   0.000%   0.000%   0.125%
    7    7.1  1.5  1.5   0.000%   0.011%   0.676%   0.000%   0.208%   0.000%   0.000%   0.207%   0.001%   0.000%
    8    1.1  1.5  0.5   0.000%   0.011%   0.218%   0.000%   0.585%   0.001%   0.000%   0.001%   0.232%   0.000%
    9    2.1  1.5  0.5   0.007%   0.000%   0.000%   0.100%   0.001%   0.477%   0.025%   0.000%   0.000%   0.373%
   10    3.1  1.5  0.5   0.011%   0.000%   0.000%   0.592%   0.000%   0.004%   0.048%   0.000%   0.000%   0.228%
   11    4.1  1.5  0.5   0.000%   0.008%   0.257%   0.000%   0.529%   0.001%   0.000%   0.287%   0.054%   0.000%
   12    5.1  1.5  0.5   0.004%   0.000%   0.000%   0.671%   0.000%   0.005%   0.486%   0.000%   0.000%   0.023%
   13    6.1  1.5  0.5   0.000%   0.004%   0.999%   0.000%   0.413%   0.001%   0.000%   0.041%   0.281%   0.000%
   14    7.1  1.5  0.5   0.006%   0.000%   0.000%   0.126%   0.001%   0.570%   0.408%   0.000%   0.000%   0.000%
   15    1.1  1.5 -0.5   0.011%   0.000%   0.000%   0.218%   0.001%   0.585%   0.001%   0.000%   0.000%   0.232%
   16    2.1  1.5 -0.5   0.000%   0.007%   0.100%   0.000%   0.477%   0.001%   0.000%   0.025%   0.373%   0.000%
   17    3.1  1.5 -0.5   0.000%   0.011%   0.592%   0.000%   0.004%   0.000%   0.000%   0.048%   0.228%   0.000%
   18    4.1  1.5 -0.5   0.008%   0.000%   0.000%   0.257%   0.001%   0.529%   0.287%   0.000%   0.000%   0.054%
   19    5.1  1.5 -0.5   0.000%   0.004%   0.671%   0.000%   0.005%   0.000%   0.000%   0.486%   0.023%   0.000%
   20    6.1  1.5 -0.5   0.004%   0.000%   0.000%   0.999%   0.001%   0.413%   0.041%   0.000%   0.000%   0.281%
   21    7.1  1.5 -0.5   0.000%   0.006%   0.126%   0.000%   0.570%   0.001%   0.000%   0.408%   0.000%   0.000%
   22    1.1  1.5 -1.5   0.000%   0.006%   0.520%   0.000%   0.282%   0.001%   0.000%   0.036%   0.329%   0.000%
   23    2.1  1.5 -1.5   0.006%   0.000%   0.000%   0.051%   0.002%   0.950%   0.152%   0.000%   0.000%   0.205%
   24    3.1  1.5 -1.5   0.001%   0.000%   0.000%   0.707%   0.001%   0.288%   0.458%   0.000%   0.000%   0.075%
   25    4.1  1.5 -1.5   0.000%   0.006%   0.537%   0.000%   0.266%   0.001%   0.000%   0.051%   0.309%   0.000%
   26    5.1  1.5 -1.5   0.000%   0.000%   0.000%   0.024%   0.002%   0.868%   0.021%   0.000%   0.000%   0.564%
   27    6.1  1.5 -1.5   0.000%   0.000%   0.070%   0.000%   0.092%   0.000%   0.000%   0.579%   0.125%   0.000%
   28    7.1  1.5 -1.5   0.011%   0.000%   0.000%   0.676%   0.000%   0.208%   0.207%   0.000%   0.000%   0.001%
   29    1.1  0.5  0.5   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   7.025%   0.000%   0.000%   3.454%
   30    2.1  0.5  0.5  24.298%   0.000%   0.000%   0.000%   0.000%   0.000%   2.140%   0.000%   0.000%   0.342%
   31    3.1  0.5  0.5   0.000%   5.766%   0.000%   0.000%   0.000%   0.000%   0.000%   4.567%   4.108%   0.000%
   32    4.1  0.5  0.5   0.000%  10.882%   0.000%   0.000%   0.001%   0.000%   0.000%   1.371%   5.218%   0.000%
   33    5.1  0.5  0.5  29.792%   0.000%   0.000%   0.001%   0.000%   0.000%   0.240%   0.000%   0.000%   0.538%
   34    6.1  0.5  0.5   1.428%   0.000%   0.000%   0.000%   0.000%   0.001%   0.017%   0.000%   0.000%  10.106%
   35    7.1  0.5  0.5   0.000%   2.222%   0.000%   0.000%   0.000%   0.000%   0.000%   9.105%   0.667%   0.000%
   36    8.1  0.5  0.5   2.963%   0.000%   0.018%  37.773%   0.001%   0.290%  34.622%   0.000%   0.000%   0.098%
   37    9.1  0.5  0.5   1.005%   0.000%   0.003%   6.799%   0.068%  31.455%  13.398%   0.000%   0.000%  26.541%
   38   10.1  0.5  0.5   0.000%   2.393%  26.963%   0.013%  11.092%   0.024%   0.000%  24.673%  12.813%   0.000%
   39   11.1  0.5  0.5   0.000%   9.013%  12.165%   0.006%  25.015%   0.054%   0.000%   0.042%  19.495%   0.000%
   40   12.1  0.5  0.5   0.000%  10.144%  10.702%   0.005%  26.393%   0.057%   0.000%   0.001%  13.821%   0.000%
   41    1.1  0.5 -0.5   0.000%   0.012%   0.000%   0.000%   0.000%   0.000%   0.000%   7.025%   3.454%   0.000%
   42    2.1  0.5 -0.5   0.000%  24.298%   0.000%   0.000%   0.000%   0.000%   0.000%   2.140%   0.342%   0.000%
   43    3.1  0.5 -0.5   5.766%   0.000%   0.000%   0.000%   0.000%   0.000%   4.567%   0.000%   0.000%   4.108%
   44    4.1  0.5 -0.5  10.882%   0.000%   0.000%   0.000%   0.000%   0.001%   1.371%   0.000%   0.000%   5.218%
   45    5.1  0.5 -0.5   0.000%  29.792%   0.001%   0.000%   0.000%   0.000%   0.000%   0.240%   0.538%   0.000%
   46    6.1  0.5 -0.5   0.000%   1.428%   0.000%   0.000%   0.001%   0.000%   0.000%   0.017%  10.106%   0.000%
   47    7.1  0.5 -0.5   2.222%   0.000%   0.000%   0.000%   0.000%   0.000%   9.105%   0.000%   0.000%   0.667%
   48    8.1  0.5 -0.5   0.000%   2.963%  37.773%   0.018%   0.290%   0.001%   0.000%  34.622%   0.098%   0.000%
   49    9.1  0.5 -0.5   0.000%   1.005%   6.799%   0.003%  31.455%   0.068%   0.000%  13.398%  26.541%   0.000%
   50   10.1  0.5 -0.5   2.393%   0.000%   0.013%  26.963%   0.024%  11.092%  24.673%   0.000%   0.000%  12.813%
   51   11.1  0.5 -0.5   9.013%   0.000%   0.006%  12.165%   0.054%  25.015%   0.042%   0.000%   0.000%  19.495%
   52   12.1  0.5 -0.5  10.144%   0.000%   0.005%  10.702%   0.057%  26.393%   0.001%   0.000%   0.000%  13.821%

   Nr   State  S   Sz      51       52

    1    1.1  1.5  1.5   0.225%   0.000%
    2    2.1  1.5  1.5   0.000%   0.208%
    3    3.1  1.5  1.5   0.000%   0.029%
    4    4.1  1.5  1.5   0.230%   0.000%
    5    5.1  1.5  1.5   0.000%   0.005%
    6    6.1  1.5  1.5   0.013%   0.000%
    7    7.1  1.5  1.5   0.000%   0.379%
    8    1.1  1.5  0.5   0.000%   0.358%
    9    2.1  1.5  0.5   0.239%   0.000%
   10    3.1  1.5  0.5   0.355%   0.000%
   11    4.1  1.5  0.5   0.000%   0.264%
   12    5.1  1.5  0.5   0.116%   0.000%
   13    6.1  1.5  0.5   0.000%   0.170%
   14    7.1  1.5  0.5   0.207%   0.000%
   15    1.1  1.5 -0.5   0.358%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.239%
   17    3.1  1.5 -0.5   0.000%   0.355%
   18    4.1  1.5 -0.5   0.264%   0.000%
   19    5.1  1.5 -0.5   0.000%   0.116%
   20    6.1  1.5 -0.5   0.170%   0.000%
   21    7.1  1.5 -0.5   0.000%   0.207%
   22    1.1  1.5 -1.5   0.000%   0.225%
   23    2.1  1.5 -1.5   0.208%   0.000%
   24    3.1  1.5 -1.5   0.029%   0.000%
   25    4.1  1.5 -1.5   0.000%   0.230%
   26    5.1  1.5 -1.5   0.005%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.013%
   28    7.1  1.5 -1.5   0.379%   0.000%
   29    1.1  0.5  0.5   0.000%   0.000%
   30    2.1  0.5  0.5   7.986%   0.000%
   31    3.1  0.5  0.5   0.000%   1.800%
   32    4.1  0.5  0.5   0.000%   3.881%
   33    5.1  0.5  0.5   9.687%   0.000%
   34    6.1  0.5  0.5   0.350%   0.000%
   35    7.1  0.5  0.5   0.000%   0.712%
   36    8.1  0.5  0.5   8.616%   0.000%
   37    9.1  0.5  0.5   3.151%   0.000%
   38   10.1  0.5  0.5   0.000%   5.842%
   39   11.1  0.5  0.5   0.000%  24.688%
   40   12.1  0.5  0.5   0.000%  30.490%
   41    1.1  0.5 -0.5   0.000%   0.000%
   42    2.1  0.5 -0.5   0.000%   7.986%
   43    3.1  0.5 -0.5   1.800%   0.000%
   44    4.1  0.5 -0.5   3.881%   0.000%
   45    5.1  0.5 -0.5   0.000%   9.687%
   46    6.1  0.5 -0.5   0.000%   0.350%
   47    7.1  0.5 -0.5   0.712%   0.000%
   48    8.1  0.5 -0.5   0.000%   8.616%
   49    9.1  0.5 -0.5   0.000%   3.151%
   50   10.1  0.5 -0.5   5.842%   0.000%
   51   11.1  0.5 -0.5  24.688%   0.000%
   52   12.1  0.5 -0.5  30.490%   0.000%


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
 CPU TIMES  *      3249.71   2337.56    857.33     52.17      2.03      0.44
 REAL TIME  *      3443.89 SEC
 DISK USED  *       317.36 MB (local),        3.15 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.976685055555

              CI              CI           MULTI
   -109.92205021   -109.96368265   -109.33328654
 **********************************************************************************************************************************
 Molpro calculation terminated
