
 Working directory              : /wrk/irikura/molpro.HbL78zJVUN/
 Global scratch directory       : /wrk/irikura/molpro.HbL78zJVUN/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.HbL78zJVUN/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   10
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! 4F + 2F
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,7;
     wf,nelec=17,sym=1,spin=1; state,7;
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,7;save,5103.2}
 hlsdiag = energd4
 {ci;wf,sym=1,spin=1;state,7;save,5101.2}
 hlsdiag(8) = energd4
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (840), CPU time= 0.01 sec, 684 directives.
 Default parameters read. Elapsed time= 0.08 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2022.3 linked Wed Nov 30 06:40:34 2022


 **********************************************************************************************************************************
 LABEL *   Rh ato0) activcore                                                            
  64 bit mpp version                                                                     DATE: 13-Feb-24          TIME: 16:37:45  
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

     13.369 MB (compressed) written to integral file ( 16.1%)

     Node minimum: 0.786 MB, node maximum: 2.097 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     576100.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     576100      RECORD LENGTH: 524288

 Memory used in sort:       1.13 MW

 SORT1 READ    10862098. AND WROTE      115800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     30 RECORDS. CPU TIME:     0.01 SEC, REAL TIME:     0.02 SEC

 Node minimum:      574636.  Node maximum:      579915. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         0.57      0.41
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
 Number of states:             7
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.161D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.156D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.225D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.220D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 3 5 1 711 91514  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.357D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.358D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.156D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 2 1 3 2 1 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 7 9 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 Weight factors for state symmetry  2:    0.07143   0.07143   0.07143   0.07143   0.07143   0.07143   0.07143
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    2462
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.35402588    -109.36715811   -0.01313223    0.20234649 0.00013420 0.00000000  0.10E+00      0.26
   2    2    4    0   -109.36692323    -109.36693286   -0.00000963    0.00533116 0.00002058 0.00000000  0.32E-02      0.45
   3   20   40    0   -109.36693287    -109.36693287   -0.00000000    0.00000489 0.00000017 0.00000000  0.39E-05      1.77

 CONVERGENCE REACHED!  Final gradient:    0.00000012 ( 0.12E-06)
                       Final energy:   -109.36693287
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380524162831
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01645992
 One electron energy                          -193.49472998
 Two electron energy                            84.11420581
 Virial ratio                                    3.66674707
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380524162654
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01645997
 One electron energy                          -193.49473005
 Two electron energy                            84.11420588
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380524162616
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01645996
 One electron energy                          -193.49473002
 Two electron energy                            84.11420586
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380524162545
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01646000
 One electron energy                          -193.49473009
 Two electron energy                            84.11420592
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380524161966
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01646001
 One electron energy                          -193.49473010
 Two electron energy                            84.11420593
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380524160799
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01646005
 One electron energy                          -193.49473016
 Two electron energy                            84.11420600
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380524160636
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.01646007
 One electron energy                          -193.49473017
 Two electron energy                            84.11420601
 Virial ratio                                    3.66674706
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.353341580433
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184245
 One electron energy                          -193.46918382
 Two electron energy                            84.11584224
 Virial ratio                                    3.66703482
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.353341579859
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184248
 One electron energy                          -193.46918386
 Two electron energy                            84.11584228
 Virial ratio                                    3.66703482
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.353341579776
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184248
 One electron energy                          -193.46918386
 Two electron energy                            84.11584228
 Virial ratio                                    3.66703482
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.353341579197
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184253
 One electron energy                          -193.46918393
 Two electron energy                            84.11584235
 Virial ratio                                    3.66703482
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.353341578418
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184256
 One electron energy                          -193.46918396
 Two electron energy                            84.11584239
 Virial ratio                                    3.66703482
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.353341576952
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184258
 One electron energy                          -193.46918400
 Two electron energy                            84.11584242
 Virial ratio                                    3.66703481
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.353341576637
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.00184259
 One electron energy                          -193.46918402
 Two electron energy                            84.11584244
 Virial ratio                                    3.66703481
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     7.996154514911
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     3.665488840995
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     8.995863234542
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     2.003790473743
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     1.004130950287
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     0.334503909475
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.999999999999
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.750041707092
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     5.684155220551
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     8.986274562895
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     4.315733214446
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     1.013730911610
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     0.249964811221
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     1.095388091953
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     6.311564876609
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     1.588564276853
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     8.904629938058
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     2.411497644342
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.688462540751
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     4.000000000001
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     5.999836550058
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     2.493409011938
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     1.341435163316
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     7.506679796782
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     2.658604179226
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     4.000141925714
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     4.000000000000
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     2.908457393136
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     2.022946282396
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     1.415572488605
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     1.091579588199
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     8.584371405371
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     7.977033549774
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     4.000000000001
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     2.250121742850
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     3.822435767511
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     1.672290273789
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     0.177586988772
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     8.327664909164
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     7.749893263064
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 3 4 5 2 1 1 6 4   3 2 5 1 6 4 3 2 5 4   6 3 2 5 1 9 7121310   8141511 4 2 5 3 6 1
                                        9 7131012 8141511 4   2 5 3 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 3 2 1 3 2 1 3 2 1   3 2 810 5 4 7 9 6 1   3 2 4 810 6 7 9 5 1   3 2 4 6 9 710 8 5 1
                                        3 2
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72383     1  1  s    1.00208
    2.1     1.59952    -0.30807     1  1  d1-  1.00408
    3.1     1.59952    -0.30807     1  1  d2-  1.00408
    4.1     1.59952    -0.30807     1  1  d1+  1.00408
    5.1     1.59952    -0.30807     1  1  d2+  1.00408
    6.1     1.59952    -0.30807     1  1  d0   1.00408
    7.1     1.00242    -0.10310     1  2  s    0.87712
    1.2     2.00000    -2.35453     1  1  px   1.00011
    2.2     2.00000    -2.35453     1  1  pz   1.00011
    3.2     2.00000    -2.35453     1  1  py   1.00011
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================
 
 2222aaa 222      0.99999933     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 22aa22a 222     -0.00000000     -0.00000745      0.25865488      0.00009590      0.00000654      0.00002707      0.85621057
 22a22aa 222      0.00000000      0.85270943      0.00003499      0.00000216      0.52238423      0.00000799     -0.00000714
 222aa2a 222      0.00000000     -0.00000514     -0.00013742      0.37214413     -0.00000559      0.81333120     -0.00002589
 2a22a2a 222      0.00000000     -0.00003609      0.76435854      0.00030488      0.00000136     -0.00002513     -0.46449420
 2a2a22a 222      0.00000000     -0.46723466     -0.00002486      0.00000043      0.76268652      0.00000209     -0.00000238
 2aa222a 222      0.00000000      0.00000206     -0.00028048      0.69446845      0.00000241     -0.56365985      0.00002477
 222a2aa 222     -0.00000000     -0.00000178     -0.00024128      0.61580909     -0.00000183      0.14414784     -0.00000064
 2a222aa 222     -0.00000000      0.00002514     -0.59063710     -0.00023139     -0.00000456     -0.00000112     -0.22615759
 22a2a2a 222     -0.00000000      0.23361733      0.00001243     -0.00000021     -0.38134322     -0.00000104      0.00000119
 
 Energy:       -109.38052416   -109.38052416   -109.38052416   -109.38052416   -109.38052416   -109.38052416   -109.38052416
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================
 
 2222aab 222      0.81451856      0.00000010     -0.00000037      0.00000007     -0.00000028      0.00000020     -0.00000028
 22a22ab 222      0.00000042      0.00053045      0.79623457      0.00001151      0.17161207     -0.00003822      0.00002493
 2a2a22b 222      0.00000017     -0.00011480     -0.15349445      0.00017645      0.71217400     -0.00009386     -0.00004144
 22aa22b 222      0.00000022      0.18211712     -0.00015153      0.00007621      0.00003781      0.00063798      0.70539724
 222aa2b 222     -0.00000019     -0.00006613      0.00002249      0.26001060      0.00003007      0.68054864     -0.00062652
 2a22a2b 222     -0.00000020      0.63746877     -0.00041222      0.00016087     -0.00000669     -0.00032419     -0.35268349
 2aa222b 222      0.00000005     -0.00016521      0.00001430      0.59393597     -0.00019968     -0.42189128      0.00036007
 222a2ab 222     -0.00000008     -0.00013357      0.00002124      0.49302631     -0.00009792      0.14933593     -0.00015384
 2a222ab 222     -0.00000001     -0.47318818      0.00032548     -0.00013687     -0.00001797     -0.00018117     -0.20363943
 2222aba 222     -0.40725929     -0.00000005      0.00000019     -0.00000003      0.00000014     -0.00000010      0.00000014
 2222baa 222     -0.40725926     -0.00000005      0.00000019     -0.00000003      0.00000014     -0.00000010      0.00000014
 22a22ba 222     -0.00000021     -0.00026523     -0.39811731     -0.00000576     -0.08580604      0.00001911     -0.00001246
 22b22aa 222     -0.00000021     -0.00026523     -0.39811727     -0.00000576     -0.08580602      0.00001911     -0.00001246
 2b2a22a 222     -0.00000009      0.00005740      0.07674722     -0.00008822     -0.35608701      0.00004693      0.00002072
 2a2b22a 222     -0.00000009      0.00005740      0.07674723     -0.00008822     -0.35608699      0.00004693      0.00002072
 22a2a2b 222     -0.00000009      0.00005740      0.07674723     -0.00008822     -0.35608696      0.00004693      0.00002072
 22ba22a 222     -0.00000011     -0.09105856      0.00007577     -0.00003810     -0.00001890     -0.00031899     -0.35269862
 22ab22a 222     -0.00000011     -0.09105856      0.00007577     -0.00003810     -0.00001890     -0.00031899     -0.35269862
 222ab2a 222      0.00000009      0.00003307     -0.00001125     -0.13000530     -0.00001504     -0.34027433      0.00031326
 222ba2a 222      0.00000009      0.00003307     -0.00001125     -0.13000530     -0.00001504     -0.34027431      0.00031326
 2b22a2a 222      0.00000010     -0.31873439      0.00020611     -0.00008043      0.00000335      0.00016209      0.17634175
 2a22b2a 222      0.00000010     -0.31873438      0.00020611     -0.00008043      0.00000335      0.00016209      0.17634174
 2ba222a 222     -0.00000003      0.00008261     -0.00000715     -0.29696799      0.00009984      0.21094565     -0.00018004
 2ab222a 222     -0.00000003      0.00008261     -0.00000715     -0.29696798      0.00009984      0.21094563     -0.00018004
 222a2ba 222      0.00000004      0.00006678     -0.00001062     -0.24651316      0.00004896     -0.07466797      0.00007692
 222b2aa 222      0.00000004      0.00006678     -0.00001062     -0.24651315      0.00004896     -0.07466796      0.00007692
 2a222ba 222      0.00000001      0.23659409     -0.00016274      0.00006844      0.00000898      0.00009059      0.10181972
 2b222aa 222      0.00000001      0.23659409     -0.00016274      0.00006844      0.00000898      0.00009059      0.10181971
 22a2b2a 222      0.00000004     -0.00002870     -0.03837362      0.00004411      0.17804348     -0.00002346     -0.00001036
 22b2a2a 222      0.00000004     -0.00002870     -0.03837362      0.00004411      0.17804348     -0.00002346     -0.00001036
 
 Energy:       -109.35334158   -109.35334158   -109.35334158   -109.35334158   -109.35334158   -109.35334158   -109.35334158
 


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
 CPU TIMES  *         2.43      1.85      0.41
 REAL TIME  *         3.04 SEC
 DISK USED  *        32.59 MB (local),      372.87 MB (total)
 SF USED    *        12.19 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3805242   12.0
    -109.3533416   12.0
    -109.3533416   12.0
    -109.3533416   12.0
    -109.3533416   12.0
    -109.3533416   12.0
    -109.3533416   12.0
    -109.3533416   12.0
                                                  


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
     1      -109.38052416
     2      -109.38052416
     3      -109.38052416
     4      -109.38052416
     5      -109.38052416
     6      -109.38052416
     7      -109.38052416

 Number of blocks in overlap matrix:    85   Smallest eigenvalue:  0.19D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  409035 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  413743 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38052416    -0.00000000    -0.71418140  0.25D-01  0.12D+00     0.19
    1     2     2     1.00000000     0.00000000  -109.38052416     0.00000000    -0.71385860  0.25D-01  0.12D+00     0.19
    1     3     3     1.00000000     0.00000000  -109.38052416     0.00000000    -0.71369772  0.25D-01  0.12D+00     0.19
    1     4     4     1.00000000     0.00000000  -109.38052416    -0.00000000    -0.71372579  0.25D-01  0.12D+00     0.19
    1     5     5     1.00000000     0.00000000  -109.38052416    -0.00000000    -0.71372538  0.25D-01  0.12D+00     0.19
    1     6     6     1.00000000     0.00000000  -109.38052416    -0.00000000    -0.71381079  0.25D-01  0.12D+00     0.19
    1     7     7     1.00000000     0.00000000  -109.38052416    -0.00000000    -0.71379602  0.25D-01  0.12D+00     0.19
    2     1     1     1.09351421    -0.56780953  -109.94833369    -0.56780953    -0.01552195  0.96D-03  0.20D-02     8.22
    2     2     2     1.09354350    -0.56780729  -109.94833145    -0.56780729    -0.01552720  0.96D-03  0.20D-02     8.22
    2     3     3     1.09354676    -0.56780241  -109.94832657    -0.56780241    -0.01553246  0.96D-03  0.20D-02     8.22
    2     4     4     1.09348779    -0.56778892  -109.94831308    -0.56778892    -0.01554455  0.96D-03  0.20D-02     8.22
    2     5     5     1.09351199    -0.56777747  -109.94830164    -0.56777747    -0.01555591  0.97D-03  0.20D-02     8.22
    2     6     6     1.09355224    -0.56776645  -109.94829061    -0.56776645    -0.01558093  0.96D-03  0.21D-02     8.22
    2     7     7     1.09356912    -0.56774866  -109.94827282    -0.56774866    -0.01560571  0.96D-03  0.21D-02     8.22
    3     1     1     1.08901278    -0.58252561  -109.96304977    -0.01471608    -0.00018464  0.12D-04  0.24D-04    16.14
    3     2     2     1.08898689    -0.58252544  -109.96304961    -0.01471816    -0.00018395  0.12D-04  0.24D-04    16.14
    3     3     3     1.08901495    -0.58252531  -109.96304947    -0.01472291    -0.00018509  0.12D-04  0.24D-04    16.14
    3     4     4     1.08898592    -0.58252531  -109.96304947    -0.01473639    -0.00018405  0.12D-04  0.24D-04    16.14
    3     5     5     1.08897185    -0.58252431  -109.96304847    -0.01474683    -0.00018445  0.12D-04  0.24D-04    16.14
    3     6     6     1.08896296    -0.58252358  -109.96304774    -0.01475713    -0.00018508  0.13D-04  0.24D-04    16.14
    3     7     7     1.08896938    -0.58252347  -109.96304763    -0.01477481    -0.00018529  0.12D-04  0.24D-04    16.14
    4     1     1     1.08954801    -0.58271459  -109.96323876    -0.00018899    -0.00000798  0.21D-05  0.91D-06    24.09
    4     2     2     1.08954761    -0.58271459  -109.96323876    -0.00018915    -0.00000797  0.21D-05  0.91D-06    24.09
    4     3     3     1.08954164    -0.58271447  -109.96323864    -0.00018916    -0.00000804  0.22D-05  0.90D-06    24.09
    4     4     4     1.08954125    -0.58271446  -109.96323862    -0.00018915    -0.00000805  0.22D-05  0.90D-06    24.09
    4     5     5     1.08953703    -0.58271433  -109.96323850    -0.00019003    -0.00000812  0.22D-05  0.91D-06    24.09
    4     6     6     1.08953609    -0.58271431  -109.96323847    -0.00019073    -0.00000815  0.22D-05  0.91D-06    24.09
    4     7     7     1.08953409    -0.58271428  -109.96323844    -0.00019081    -0.00000816  0.22D-05  0.91D-06    24.09
    5     1     1     1.08975995    -0.58272301  -109.96324717    -0.00000841    -0.00000043  0.71D-07  0.66D-07    32.06
    5     2     2     1.08975998    -0.58272301  -109.96324717    -0.00000841    -0.00000043  0.71D-07  0.66D-07    32.06
    5     3     3     1.08975937    -0.58272300  -109.96324716    -0.00000852    -0.00000044  0.75D-07  0.65D-07    32.06
    5     4     4     1.08975932    -0.58272300  -109.96324716    -0.00000854    -0.00000044  0.75D-07  0.65D-07    32.06
    5     5     5     1.08975888    -0.58272299  -109.96324715    -0.00000865    -0.00000045  0.77D-07  0.65D-07    32.06
    5     6     6     1.08975932    -0.58272299  -109.96324715    -0.00000868    -0.00000045  0.77D-07  0.65D-07    32.06
    5     7     7     1.08975860    -0.58272299  -109.96324715    -0.00000871    -0.00000045  0.77D-07  0.65D-07    32.06
    6     1     1     1.08981044    -0.58272347  -109.96324764    -0.00000046    -0.00000003  0.55D-08  0.38D-08    40.04
    6     2     2     1.08981049    -0.58272347  -109.96324764    -0.00000047    -0.00000003  0.56D-08  0.38D-08    40.04
    6     3     3     1.08981024    -0.58272347  -109.96324764    -0.00000047    -0.00000003  0.55D-08  0.37D-08    40.04
    6     4     4     1.08981025    -0.58272347  -109.96324763    -0.00000048    -0.00000003  0.55D-08  0.37D-08    40.04
    6     5     5     1.08981032    -0.58272347  -109.96324763    -0.00000048    -0.00000003  0.55D-08  0.37D-08    40.04
    6     6     6     1.08981025    -0.58272347  -109.96324763    -0.00000048    -0.00000003  0.56D-08  0.37D-08    40.04
    6     7     7     1.08981023    -0.58272347  -109.96324763    -0.00000049    -0.00000003  0.56D-08  0.37D-08    40.04


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.7%
 P   0.2%  11.3%  57.0%

 Initialization:   0.3%
 Other:           30.3%

 Total CPU:       40.0 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222///222           0.9579082  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 22/22//222          -0.0000000   0.9578937  -0.0000000  -0.0000000   0.0052561   0.0000000  -0.0000000
 2/2/22/222          -0.0000000  -0.0047023  -0.0000000   0.0000000   0.8567691   0.0000000   0.0000000
 222//2/222           0.0000000  -0.0000000  -0.0000080   0.0121961   0.0000000   0.0000201   0.8566919
 22//22/222           0.0000000  -0.0000000   0.0537850  -0.0023425  -0.0000000   0.8550881   0.0000138
 2//222/222           0.0000000  -0.0000000   0.0000156   0.8264366   0.0000000   0.0022667  -0.2259825
 2/22/2/222           0.0000000  -0.0000000   0.8144902   0.0007148  -0.0000000  -0.2658466   0.0000037
 2/222//222           0.0000000  -0.0000000  -0.5012994   0.0009397  -0.0000000  -0.3401930  -0.0000101
 222/2//222          -0.0000000   0.0000000   0.0000044   0.4841851  -0.0000000   0.0013203   0.3641417
 22/2/2/222          -0.0000000   0.0023483  -0.0000000  -0.0000000  -0.4283776   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957909   -0.000000    0.000000   -0.000000   -0.000000    0.000000    0.000000
 2          -0.000000    0.819526   -0.000000    0.000000    0.495952   -0.000000   -0.000000
 3          -0.000000    0.000000    0.932560    0.000011   -0.000000   -0.000015   -0.218912
 4           0.000000   -0.000000   -0.000615    0.876640   -0.000000   -0.386116   -0.002550
 5           0.000000   -0.495952    0.000000    0.000000    0.819526    0.000000   -0.000000
 6          -0.000000    0.000000    0.218912    0.002395   -0.000000   -0.001071    0.932556
 7           0.000000   -0.000000    0.000012    0.386118    0.000000    0.876644    0.000012

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957909   -0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
 2          -0.000000    0.957909   -0.000000    0.000000   -0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.957910   -0.000000   -0.000000    0.000000   -0.000000
 4           0.000000    0.000000   -0.000000    0.957910    0.000000    0.000000    0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.957909    0.000000    0.000000
 6          -0.000000    0.000000    0.000000    0.000000    0.000000    0.957910    0.000000
 7           0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957910


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95790944 (fixed)   0.95790958 (relaxed)   0.95790944 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031    0.00000000   -0.46675687
 Singles      0.01491404   -0.07404698   -0.07592393
 Pairs        0.07489643   -0.00000000   -0.04004267
 Total        1.08981077   -0.07404698   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618821
 One electron energy                 -193.11732443
 Two electron energy                   83.15407680
 Virial quotient                       -2.65251709
 Correlation energy                    -0.58272347
 !MRCI STATE 1.1 Energy              -109.963247635556

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558248 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558229 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558248 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112710 (Pople, fixed reference)
 Cluster corrected energies          -110.01112690 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112710 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.81952560 (fixed)   0.95790956 (relaxed)   0.95790941 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031    0.00000000   -0.46675684
 Singles      0.01491406   -0.07404700   -0.07592393
 Pairs        0.07489646   -0.00000000   -0.04004270
 Total        1.08981082   -0.07404700   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618827
 One electron energy                 -193.11732601
 Two electron energy                   83.15407837
 Virial quotient                       -2.65251708
 Correlation energy                    -0.58272347
 !MRCI STATE 2.1 Energy              -109.963247635256

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558251 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558231 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558251 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112712 (Pople, fixed reference)
 Cluster corrected energies          -110.01112693 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112712 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.93255993 (fixed)   0.95790967 (relaxed)   0.95790952 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031   -0.00000000   -0.57342546
 Singles      0.01491367   -0.07404701   -0.07592383
 Pairs        0.07489660    0.11624849    0.06662582
 Total        1.08981057    0.04220148   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618245
 One electron energy                 -193.11730628
 Two electron energy                   83.15405864
 Virial quotient                       -2.65251746
 Correlation energy                    -0.58272347
 !MRCI STATE 3.1 Energy              -109.963247635234

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558236 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558217 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558236 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112698 (Pople, fixed reference)
 Cluster corrected energies          -110.01112679 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112698 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.87664027 (fixed)   0.95790967 (relaxed)   0.95790952 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031    0.00000000   -0.46799955
 Singles      0.01491370   -0.07404704   -0.07592384
 Pairs        0.07489658    0.00135425   -0.03880008
 Total        1.08981059   -0.07269279   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618116
 One electron energy                 -193.11730582
 Two electron energy                   83.15405819
 Virial quotient                       -2.65251754
 Correlation energy                    -0.58272347
 !MRCI STATE 4.1 Energy              -109.963247634953

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558237 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558218 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558237 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112699 (Pople, fixed reference)
 Cluster corrected energies          -110.01112680 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112699 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.81952566 (fixed)   0.95790964 (relaxed)   0.95790949 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031   -0.00000000   -0.46675687
 Singles      0.01491373   -0.07404705   -0.07592386
 Pairs        0.07489661   -0.00000000   -0.04004275
 Total        1.08981065   -0.07404705   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618140
 One electron energy                 -193.11730505
 Two electron energy                   83.15405742
 Virial quotient                       -2.65251752
 Correlation energy                    -0.58272347
 !MRCI STATE 5.1 Energy              -109.963247634825

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558241 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558221 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558241 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112703 (Pople, fixed reference)
 Cluster corrected energies          -110.01112683 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112703 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.93255642 (fixed)   0.95790967 (relaxed)   0.95790952 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031    0.00000000   -0.01235388
 Singles      0.01491375   -0.07404707   -0.07592387
 Pairs        0.07489653   -0.49521319   -0.49444572
 Total        1.08981058   -0.56926026   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618226
 One electron energy                 -193.11730844
 Two electron energy                   83.15406081
 Virial quotient                       -2.65251747
 Correlation energy                    -0.58272347
 !MRCI STATE 6.1 Energy              -109.963247634460

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558237 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558217 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558237 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112699 (Pople, fixed reference)
 Cluster corrected energies          -110.01112680 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112699 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.87664353 (fixed)   0.95790967 (relaxed)   0.95790953 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000031    0.00000000   -0.46675086
 Singles      0.01491376   -0.07404705   -0.07592387
 Pairs        0.07489650   -0.00000659   -0.04004875
 Total        1.08981057   -0.07405364   -0.58272347
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38052416
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45618331
 One electron energy                 -193.11730986
 Two electron energy                   83.15406222
 Virial quotient                       -2.65251740
 Correlation energy                    -0.58272347
 !MRCI STATE 7.1 Energy              -109.963247634447

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01558236 (Davidson, fixed reference)
 Cluster corrected energies          -110.01558217 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01558236 (Davidson, rotated reference)

 Cluster corrected energies          -110.01112698 (Pople, fixed reference)
 Cluster corrected energies          -110.01112679 (Pople, relaxed reference)
 Cluster corrected energies          -110.01112698 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       66.00       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        45.25     42.82      1.85      0.41
 REAL TIME  *        51.75 SEC
 DISK USED  *        98.11 MB (local),        1.00 GB (total)
 SF USED    *       658.73 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01558248  AU                              
 SETTING HLSDIAG(2)     =      -110.01558251  AU                              
 SETTING HLSDIAG(3)     =      -110.01558236  AU                              
 SETTING HLSDIAG(4)     =      -110.01558237  AU                              
 SETTING HLSDIAG(5)     =      -110.01558241  AU                              
 SETTING HLSDIAG(6)     =      -110.01558237  AU                              
 SETTING HLSDIAG(7)     =      -110.01558236  AU                              


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 7  Roots:    1   2   3   4   5   6   7
 Number of reference states: 7  Roots:    1   2   3   4   5   6   7

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
     1      -109.35334158
     2      -109.35334158
     3      -109.35334158
     4      -109.35334158
     5      -109.35334158
     6      -109.35334158
     7      -109.35334158

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.59D-05
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  570570 words, CPU-Time:      0.16 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  429037 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35334158    -0.00000000    -0.69797634  0.28D-01  0.11D+00     0.34
    1     2     2     1.00000000     0.00000000  -109.35334158     0.00000000    -0.69778270  0.28D-01  0.11D+00     0.34
    1     3     3     1.00000000     0.00000000  -109.35334158    -0.00000000    -0.69759216  0.28D-01  0.11D+00     0.34
    1     4     4     1.00000000     0.00000000  -109.35334158     0.00000000    -0.69898534  0.28D-01  0.11D+00     0.34
    1     5     5     1.00000000     0.00000000  -109.35334158     0.00000000    -0.69950894  0.28D-01  0.11D+00     0.34
    1     6     6     1.00000000     0.00000000  -109.35334158     0.00000000    -0.69934271  0.28D-01  0.11D+00     0.34
    1     7     7     1.00000000     0.00000000  -109.35334158     0.00000000    -0.69962109  0.28D-01  0.11D+00     0.34
    2     1     1     1.09275103    -0.56931873  -109.92266031    -0.56931873    -0.01637234  0.16D-02  0.22D-02    17.66
    2     2     2     1.09290139    -0.56907992  -109.92242150    -0.56907992    -0.01654387  0.16D-02  0.22D-02    17.66
    2     3     3     1.09290742    -0.56905371  -109.92239529    -0.56905371    -0.01658966  0.17D-02  0.22D-02    17.66
    2     4     4     1.09273078    -0.56895244  -109.92229402    -0.56895244    -0.01659245  0.16D-02  0.22D-02    17.66
    2     5     5     1.09267536    -0.56892409  -109.92226566    -0.56892409    -0.01657986  0.16D-02  0.22D-02    17.66
    2     6     6     1.09300110    -0.56872755  -109.92206912    -0.56872755    -0.01683943  0.17D-02  0.23D-02    17.66
    2     7     7     1.09289798    -0.56866853  -109.92201011    -0.56866853    -0.01685545  0.17D-02  0.23D-02    17.66
    3     1     1     1.08875105    -0.58526778  -109.93860936    -0.01594905    -0.00045945  0.21D-04  0.92D-04    34.99
    3     2     2     1.08873776    -0.58522446  -109.93856604    -0.01614454    -0.00048972  0.21D-04  0.97D-04    34.99
    3     3     3     1.08873672    -0.58522344  -109.93856502    -0.01616973    -0.00048558  0.21D-04  0.96D-04    34.99
    3     4     4     1.08867688    -0.58519134  -109.93853291    -0.01623890    -0.00050775  0.20D-04  0.10D-03    34.99
    3     5     5     1.08864879    -0.58518994  -109.93853152    -0.01626585    -0.00050394  0.21D-04  0.99D-04    34.99
    3     6     6     1.08862886    -0.58518420  -109.93852577    -0.01645665    -0.00050087  0.21D-04  0.97D-04    34.99
    3     7     7     1.08863743    -0.58517211  -109.93851368    -0.01650357    -0.00051750  0.20D-04  0.10D-03    34.99
    4     1     1     1.09030943    -0.58579710  -109.93913868    -0.00052932    -0.00006214  0.40D-05  0.14D-04    52.27
    4     2     2     1.09031989    -0.58579081  -109.93913239    -0.00056635    -0.00006472  0.41D-05  0.14D-04    52.27
    4     3     3     1.09029866    -0.58578933  -109.93913091    -0.00056589    -0.00006608  0.40D-05  0.14D-04    52.27
    4     4     4     1.09032747    -0.58578870  -109.93913028    -0.00059737    -0.00006609  0.41D-05  0.14D-04    52.27
    4     5     5     1.09029131    -0.58578847  -109.93913005    -0.00059853    -0.00006796  0.42D-05  0.14D-04    52.27
    4     6     6     1.09028204    -0.58578424  -109.93912582    -0.00060005    -0.00007165  0.41D-05  0.15D-04    52.27
    4     7     7     1.09029805    -0.58578419  -109.93912577    -0.00061208    -0.00007198  0.40D-05  0.16D-04    52.27
    5     1     1     1.09085438    -0.58585293  -109.93919451    -0.00005583    -0.00001182  0.46D-06  0.29D-05    69.75
    5     2     2     1.09087978    -0.58585233  -109.93919391    -0.00006152    -0.00001177  0.35D-06  0.28D-05    69.75
    5     3     3     1.09087711    -0.58585196  -109.93919354    -0.00006263    -0.00001244  0.36D-06  0.30D-05    69.75
    5     4     4     1.09088427    -0.58585142  -109.93919300    -0.00006272    -0.00001268  0.37D-06  0.30D-05    69.75
    5     5     5     1.09085376    -0.58585102  -109.93919260    -0.00006256    -0.00001351  0.42D-06  0.33D-05    69.75
    5     6     6     1.09085894    -0.58585024  -109.93919182    -0.00006600    -0.00001382  0.44D-06  0.33D-05    69.75
    5     7     7     1.09086886    -0.58585007  -109.93919165    -0.00006588    -0.00001389  0.45D-06  0.33D-05    69.75
    6     1     1     1.09096127    -0.58586279  -109.93920437    -0.00000985    -0.00000159  0.79D-07  0.39D-06    87.09
    6     2     2     1.09096412    -0.58586262  -109.93920420    -0.00001029    -0.00000169  0.93D-07  0.39D-06    87.09
    6     3     3     1.09096800    -0.58586248  -109.93920406    -0.00001052    -0.00000173  0.11D-06  0.39D-06    87.09
    6     4     4     1.09095953    -0.58586243  -109.93920401    -0.00001100    -0.00000178  0.12D-06  0.40D-06    87.09
    6     5     5     1.09097617    -0.58586217  -109.93920375    -0.00001115    -0.00000188  0.13D-06  0.40D-06    87.09
    6     6     6     1.09096188    -0.58586215  -109.93920373    -0.00001191    -0.00000199  0.13D-06  0.45D-06    87.09
    6     7     7     1.09096618    -0.58586206  -109.93920364    -0.00001199    -0.00000204  0.12D-06  0.46D-06    87.09
    7     1     1     1.09098546    -0.58586423  -109.93920581    -0.00000145    -0.00000039  0.64D-08  0.11D-06   104.41
    7     2     2     1.09098622    -0.58586420  -109.93920578    -0.00000158    -0.00000041  0.63D-08  0.11D-06   104.41
    7     3     3     1.09098320    -0.58586418  -109.93920576    -0.00000170    -0.00000044  0.50D-08  0.12D-06   104.41
    7     4     4     1.09098714    -0.58586417  -109.93920575    -0.00000174    -0.00000044  0.53D-08  0.12D-06   104.41
    7     5     5     1.09098890    -0.58586410  -109.93920568    -0.00000193    -0.00000047  0.51D-08  0.12D-06   104.41
    7     6     6     1.09098366    -0.58586409  -109.93920566    -0.00000193    -0.00000052  0.57D-08  0.14D-06   104.41
    7     7     7     1.09098567    -0.58586403  -109.93920561    -0.00000197    -0.00000055  0.62D-08  0.15D-06   104.41
    8     1     1     1.09100012    -0.58586456  -109.93920614    -0.00000032    -0.00000009  0.23D-08  0.22D-07   121.71
    8     2     2     1.09100044    -0.58586455  -109.93920613    -0.00000035    -0.00000009  0.26D-08  0.23D-07   121.71
    8     3     3     1.09099820    -0.58586454  -109.93920612    -0.00000036    -0.00000010  0.32D-08  0.24D-07   121.71
    8     4     4     1.09100059    -0.58586453  -109.93920611    -0.00000036    -0.00000010  0.30D-08  0.25D-07   121.71
    8     5     5     1.09099820    -0.58586451  -109.93920609    -0.00000041    -0.00000012  0.36D-08  0.30D-07   121.71
    8     6     6     1.09100104    -0.58586450  -109.93920608    -0.00000042    -0.00000012  0.31D-08  0.29D-07   121.71
    8     7     7     1.09099954    -0.58586449  -109.93920607    -0.00000046    -0.00000013  0.38D-08  0.32D-07   121.71
    9     1     1     1.09100791    -0.58586463  -109.93920621    -0.00000007    -0.00000002  0.14D-09  0.64D-08   138.99
    9     2     2     1.09100828    -0.58586463  -109.93920621    -0.00000008    -0.00000002  0.15D-09  0.66D-08   138.99
    9     3     3     1.09100760    -0.58586463  -109.93920621    -0.00000009    -0.00000003  0.20D-09  0.69D-08   138.99
    9     4     4     1.09100852    -0.58586462  -109.93920620    -0.00000009    -0.00000003  0.19D-09  0.75D-08   138.99
    9     5     5     1.09100754    -0.58586462  -109.93920620    -0.00000011    -0.00000003  0.20D-09  0.90D-08   138.99
    9     6     6     1.09100918    -0.58586462  -109.93920619    -0.00000011    -0.00000003  0.35D-09  0.85D-08   138.99
    9     7     7     1.09100788    -0.58586461  -109.93920619    -0.00000012    -0.00000004  0.21D-09  0.10D-07   138.99
   10     1     1     1.09101409    -0.58586465  -109.93920623    -0.00000002    -0.00000001  0.31D-09  0.15D-08   145.06
   10     2     2     1.09100791    -0.58586463  -109.93920621    -0.00000000    -0.00000002  0.14D-09  0.64D-08   145.06
   10     3     3     1.09100828    -0.58586463  -109.93920621    -0.00000000    -0.00000002  0.15D-09  0.66D-08   145.06
   10     4     4     1.09100760    -0.58586463  -109.93920621    -0.00000000    -0.00000003  0.20D-09  0.69D-08   145.06
   10     5     5     1.09100852    -0.58586462  -109.93920620    -0.00000001    -0.00000003  0.19D-09  0.75D-08   145.06
   10     6     6     1.09100754    -0.58586462  -109.93920620    -0.00000000    -0.00000003  0.20D-09  0.90D-08   145.06
   10     7     7     1.09100918    -0.58586462  -109.93920619    -0.00000000    -0.00000003  0.35D-09  0.85D-08   145.06


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.0%   0.5%
 P   0.4%   8.3%  73.6%

 Initialization:   0.2%
 Other:           16.9%

 Total CPU:      145.1 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222//\222           0.0000000   0.0000000   0.0000000   0.9549645  -0.0000000  -0.0000000  -0.0000000
 22/22/\222          -0.0000000  -0.0000000   0.0000000  -0.0000000  -0.3279381   0.8968912   0.0000000
 2//222\222           0.0077157   0.8541130   0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000
 2/22/2\222           0.0000000  -0.0000000   0.8508032   0.0000000  -0.0000000  -0.0000000   0.0755210
 222//2\222           0.8250577  -0.2209973   0.0000000   0.0000000   0.0000000  -0.0000000  -0.0000000
 22//22\222          -0.0000000  -0.0000000  -0.2858221   0.0000000   0.0000000   0.0000000   0.8049016
 2/2/22\222          -0.0000000  -0.0000000  -0.0000000   0.0000000   0.8022066   0.2933159   0.0000000
 2/222/\222           0.0000000  -0.0000000  -0.3261845  -0.0000000   0.0000000   0.0000000  -0.5083168
 222/2/\222           0.4808037   0.3655247  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000
 22/2/2\222          -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.4010956  -0.1466599  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.561434    0.000000    0.775478    0.000000
 2           0.000000    0.000000   -0.000000    0.775480   -0.000000   -0.561436    0.000000
 3           0.000000    0.793467    0.000000    0.000000    0.000000   -0.000000   -0.535715
 4           0.957382   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
 5          -0.000000   -0.000000   -0.510767   -0.000000    0.809751    0.000000   -0.000000
 6          -0.000000   -0.000000    0.809751    0.000000    0.510767   -0.000000    0.000000
 7          -0.000000    0.535714    0.000000   -0.000000    0.000000   -0.000000    0.793466

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957379    0.000000    0.000000    0.000000    0.000000   -0.000000   -0.000000
 2           0.000000    0.957382    0.000000   -0.000000   -0.000000   -0.000000    0.000000
 3           0.000000    0.000000    0.957382    0.000000    0.000000    0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.957382   -0.000000   -0.000000    0.000000
 5           0.000000   -0.000000    0.000000   -0.000000    0.957381   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.957382    0.000000
 7          -0.000000    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.957381


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.77547823 (fixed)   0.95738104 (relaxed)   0.95737906 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000413   -0.00000000   -0.46813911
 Singles      0.01504839   -0.07511860   -0.07693293
 Pairs        0.07596607   -0.00000000   -0.04079261
 Total        1.09101859   -0.07511860   -0.58586465
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47120423
 One electron energy                 -193.06848984
 Two electron energy                   83.12928362
 Virial quotient                       -2.65097694
 Correlation energy                    -0.58586465
 !MRCI STATE 1.1 Energy              -109.939206225851

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99253080 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252816 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99253080 (Davidson, rotated reference)

 Cluster corrected energies          -109.98923156 (Pople, fixed reference)
 Cluster corrected energies          -109.98922890 (Pople, relaxed reference)
 Cluster corrected energies          -109.98923156 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.77548045 (fixed)   0.95738375 (relaxed)   0.95738177 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000413    0.00000000   -0.46814031
 Singles      0.01504824   -0.07512016   -0.07693344
 Pairs        0.07596004   -0.00000000   -0.04079088
 Total        1.09101241   -0.07512016   -0.58586463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47132218
 One electron energy                 -193.06860218
 Two electron energy                   83.12939598
 Virial quotient                       -2.65096940
 Correlation energy                    -0.58586463
 !MRCI STATE 2.1 Energy              -109.939206208547

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252716 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252452 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252716 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922790 (Pople, fixed reference)
 Cluster corrected energies          -109.98922525 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922790 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.79346665 (fixed)   0.95738358 (relaxed)   0.95738160 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000413   -0.00000000   -0.73009241
 Singles      0.01504831   -0.07512018   -0.07693342
 Pairs        0.07596035    0.28579329    0.22116121
 Total        1.09101279    0.21067312   -0.58586463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47130833
 One electron energy                 -193.06859227
 Two electron energy                   83.12938606
 Virial quotient                       -2.65097029
 Correlation energy                    -0.58586463
 !MRCI STATE 3.1 Energy              -109.939206206621

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252738 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252474 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252738 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922812 (Pople, fixed reference)
 Cluster corrected energies          -109.98922547 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922812 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95738190 (fixed)   0.95738388 (relaxed)   0.95738190 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000413   -0.00000000   -0.46814065
 Singles      0.01504827   -0.07511993   -0.07693339
 Pairs        0.07595971   -0.00000000   -0.04079059
 Total        1.09101212   -0.07511993   -0.58586463
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47128722
 One electron energy                 -193.06857938
 Two electron energy                   83.12937317
 Virial quotient                       -2.65097164
 Correlation energy                    -0.58586463
 !MRCI STATE 4.1 Energy              -109.939206206124

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252698 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252434 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252698 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922772 (Pople, fixed reference)
 Cluster corrected energies          -109.98922507 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922772 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.80975055 (fixed)   0.95738348 (relaxed)   0.95738150 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000414   -0.00000000   -0.46814022
 Singles      0.01504837   -0.07511997   -0.07693341
 Pairs        0.07596052   -0.00000000   -0.04079099
 Total        1.09101303   -0.07511997   -0.58586462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47128654
 One electron energy                 -193.06857500
 Two electron energy                   83.12936880
 Virial quotient                       -2.65097168
 Correlation energy                    -0.58586462
 !MRCI STATE 5.1 Energy              -109.939206202089

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252752 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252488 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252752 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922826 (Pople, fixed reference)
 Cluster corrected energies          -109.98922560 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922826 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.80975109 (fixed)   0.95738391 (relaxed)   0.95738193 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000414   -0.00000000   -0.46814045
 Singles      0.01504842   -0.07512017   -0.07693350
 Pairs        0.07595950    0.00000000   -0.04079067
 Total        1.09101205   -0.07512017   -0.58586462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47129174
 One electron energy                 -193.06857968
 Two electron energy                   83.12937348
 Virial quotient                       -2.65097135
 Correlation energy                    -0.58586462
 !MRCI STATE 6.1 Energy              -109.939206196091

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252694 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252429 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252694 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922767 (Pople, fixed reference)
 Cluster corrected energies          -109.98922502 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922767 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.79346642 (fixed)   0.95738319 (relaxed)   0.95738121 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000413   -0.00000000   -0.08015291
 Singles      0.01504842   -0.07511979   -0.07693334
 Pairs        0.07596114   -0.42329933   -0.42877836
 Total        1.09101369   -0.49841911   -0.58586462
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35334158
 Nuclear energy                         0.00000000
 Kinetic energy                        41.47125344
 One electron energy                 -193.06855014
 Two electron energy                   83.12934395
 Virial quotient                       -2.65097380
 Correlation energy                    -0.58586462
 !MRCI STATE 7.1 Energy              -109.939206192919

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99252789 (Davidson, fixed reference)
 Cluster corrected energies          -109.99252525 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99252789 (Davidson, rotated reference)

 Cluster corrected energies          -109.98922864 (Pople, fixed reference)
 Cluster corrected energies          -109.98922598 (Pople, relaxed reference)
 Cluster corrected energies          -109.98922864 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.05       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      142.40       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *       194.42    149.16     42.82      1.85      0.41
 REAL TIME  *       213.55 SEC
 DISK USED  *       174.50 MB (local),        1.75 GB (total)
 SF USED    *       770.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -109.99253080  AU                              
 SETTING HLSDIAG(9)     =      -109.99252716  AU                              
 SETTING HLSDIAG(10)    =      -109.99252738  AU                              
 SETTING HLSDIAG(11)    =      -109.99252698  AU                              
 SETTING HLSDIAG(12)    =      -109.99252752  AU                              
 SETTING HLSDIAG(13)    =      -109.99252694  AU                              
 SETTING HLSDIAG(14)    =      -109.99252789  AU                              


         HLSDIAG
    -110.0155825
    -110.0155825
    -110.0155824
    -110.0155824
    -110.0155824
    -110.0155824
    -110.0155824
    -109.9925308
    -109.9925272
    -109.9925274
    -109.9925270
    -109.9925275
    -109.9925269
    -109.9925279
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.963248   -109.963248   -109.963248   -109.963248   -109.963248   -109.963248   -109.963248
 Replaced energies:   -110.015582   -110.015583   -110.015582   -110.015582   -110.015582   -110.015582   -110.015582

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:   -109.939206   -109.939206   -109.939206   -109.939206   -109.939206   -109.939206   -109.939206
 Replaced energies:   -109.992531   -109.992527   -109.992527   -109.992527   -109.992528   -109.992527   -109.992528



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01558251

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00    1030.07      -0.00      -0.00       5.65       0.00      -0.00       0.00      -0.00     593.55

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     181.23
                        -1030.07       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.01

    3   3.1  1.5  1.5       0.00       0.00       0.03       0.00       0.00       0.00       0.00      -0.00    -181.23       0.00
                            0.00      -0.00      -0.00     862.11       0.00       2.39    -437.27    -593.55      -0.01       0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.03       0.00       0.00       0.00     156.86       1.55      -0.00
                            0.00      -0.00    -862.11      -0.00      -0.00     537.32      -3.27      -0.09    -597.84      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.02       0.00       0.00      -0.00       0.00     603.71
                           -5.65       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00      -0.01

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.03       0.00       0.42    -563.11       0.00
                           -0.00      -0.00      -2.39    -537.32       0.00       0.00    1195.64      37.33      -1.64      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.03     573.66      -0.01      -0.00
                            0.00      -0.00     437.27       3.27      -0.00   -1195.64      -0.00      -0.01       6.06      -0.00

    8   1.1  1.5  0.5      -0.00      -0.00      -0.00     156.86      -0.00       0.42     573.66       0.01       0.00       0.00
                           -0.00      -0.00     593.55       0.09      -0.00     -37.33       0.01       0.00     343.36      -0.00

    9   2.1  1.5  0.5       0.00       0.00    -181.23       1.55       0.00    -563.11      -0.01       0.00       0.00       0.00
                            0.00      -0.00       0.01     597.84      -0.00       1.64      -6.06    -343.36       0.00       0.00

   10   3.1  1.5  0.5       0.00     181.23       0.00      -0.00     603.71       0.00      -0.00       0.00       0.00       0.03
                         -593.55      -0.01      -0.00       0.00       0.01       0.00       0.00       0.00      -0.00      -0.00

   11   4.1  1.5  0.5    -156.86      -1.55       0.00       0.00      -1.14       0.00       0.00       0.00       0.00       0.00
                           -0.09    -597.84      -0.00       0.00     578.85      -0.00       0.00       0.00      -0.00    -287.37

   12   5.1  1.5  0.5       0.00      -0.00    -603.71       1.14      -0.00    -412.11      -0.01       0.00       0.00       0.00
                            0.00       0.00      -0.01    -578.85       0.00      -1.58    -437.84      -1.88       0.00      -0.00

   13   6.1  1.5  0.5      -0.42     563.11      -0.00      -0.00     412.11       0.00      -0.00       0.00       0.00       0.00
                           37.33      -1.64      -0.00       0.00       1.58      -0.00      -0.00      -0.00      -0.00      -0.80

   14   7.1  1.5  0.5    -573.66       0.01       0.00      -0.00       0.01       0.00      -0.00       0.00       0.00       0.00
                           -0.01       6.06      -0.00      -0.00     437.84       0.00       0.00       0.00      -0.00     145.76

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     685.37

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -209.26
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     209.26       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -685.37      -0.01      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -181.13      -1.78       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.11    -690.33      -0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -697.10
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.49     650.23      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      43.11      -1.89      -0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -662.41       0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.01       7.00      -0.00

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

   29   1.1  0.5  0.5     408.75      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00     107.95       0.00       0.00    -397.96      -0.00       0.00      -0.00       0.00      85.16

   30   2.1  0.5  0.5      -3.69      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00     396.51       0.00      -0.00    -300.82       0.00      -0.00       0.00      -0.00    -434.69

   31   3.1  0.5  0.5       0.00      37.63       0.00       0.00    -270.18      -0.00       0.00       0.00       0.00       0.00
                          385.21       0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.01

   32   4.1  0.5  0.5       0.00       0.00       0.00    -107.82      -0.00      -0.29    -394.30       0.00       0.00       0.00
                           -0.00       0.00    -407.97      -0.06       0.00      25.66      -0.00      -0.00     472.00       0.00

   33   5.1  0.5  0.5       0.00       0.00     345.51      -0.36      -0.00     130.59       0.01       0.00       0.00       0.00
                           -0.00       0.00       0.01     516.14       0.00       1.41     280.62     162.09       0.00       0.00

   34   6.1  0.5  0.5      -0.00      -0.00     261.38      -1.27      -0.00     461.50       0.01       0.00       0.00       0.00
                            0.00      -0.00      -0.01    -246.47      -0.00      -0.68     108.80    -443.31       0.00       0.00

   35   7.1  0.5  0.5      -0.00    -404.85       0.00       0.00    -423.58      -0.00      -0.00       0.00       0.00       0.00
                          136.79       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.01

   36   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     235.99      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      62.32       0.00

   37   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -2.13      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     228.93       0.00

   38   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      21.72       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     222.40       0.00      -0.00

   39   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -235.54

   40   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     199.48
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   41   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     150.91
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00

   42   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -233.74       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      78.97       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5    -156.86       0.00      -0.42    -573.66       0.00       0.00       0.00       0.00       0.00       0.00
                            0.09      -0.00     -37.33       0.01       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      -1.55      -0.00     563.11       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          597.84      -0.00       1.64      -6.06       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00    -603.71      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       1.14      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     578.85      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -1.14      -0.00     412.11       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -578.85      -0.00      -1.58    -437.84       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00    -412.11       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       1.58       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00      -0.01      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     437.84       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -181.13       0.00      -0.49
                           -0.00       1.88       0.00      -0.00       0.00      -0.00     685.37       0.11      -0.00     -43.11

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00     209.26      -1.78      -0.00     650.23
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.01     690.33      -0.00       1.89

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -209.26       0.00       0.00    -697.10      -0.00
                          287.37       0.00       0.80    -145.76    -685.37      -0.01       0.00       0.00       0.01       0.00

   11   4.1  1.5  0.5       0.03       0.00       0.00       0.00     181.13       1.78      -0.00       0.00       1.31      -0.00
                           -0.00      -0.00     179.11      -1.09      -0.11    -690.33      -0.00      -0.00     668.40      -0.00

   12   5.1  1.5  0.5       0.00       0.02       0.00       0.00      -0.00       0.00     697.10      -1.31      -0.00     475.86
                            0.00       0.00      -0.00       0.00       0.00       0.00      -0.01    -668.40      -0.00      -1.82

   13   6.1  1.5  0.5       0.00       0.00       0.03       0.00       0.49    -650.23       0.00       0.00    -475.86       0.00
                         -179.11       0.00       0.00     398.55      43.11      -1.89      -0.00       0.00       1.82       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.03     662.41      -0.01      -0.00       0.00      -0.01      -0.00
                            1.09      -0.00    -398.55      -0.00      -0.01       7.00      -0.00      -0.00     505.57       0.00

   15   1.1  1.5 -0.5     181.13      -0.00       0.49     662.41       0.01       0.00       0.00       0.00       0.00       0.00
                            0.11      -0.00     -43.11       0.01      -0.00    -343.36       0.00       0.00      -1.88      -0.00

   16   2.1  1.5 -0.5       1.78       0.00    -650.23      -0.01       0.00       0.00       0.00       0.00       0.00       0.00
                          690.33      -0.00       1.89      -7.00     343.36      -0.00      -0.00      -0.00       0.00      -0.00

   17   3.1  1.5 -0.5      -0.00     697.10       0.00      -0.00       0.00       0.00       0.03       0.00       0.00       0.00
                            0.00       0.01       0.00       0.00      -0.00       0.00       0.00    -287.37      -0.00      -0.80

   18   4.1  1.5 -0.5       0.00      -1.31       0.00       0.00       0.00       0.00       0.00       0.03       0.00       0.00
                            0.00     668.40      -0.00       0.00      -0.00       0.00     287.37       0.00       0.00    -179.11

   19   5.1  1.5 -0.5       1.31      -0.00    -475.86      -0.01       0.00       0.00       0.00       0.00       0.02       0.00
                         -668.40       0.00      -1.82    -505.57       1.88      -0.00       0.00      -0.00      -0.00       0.00

   20   6.1  1.5 -0.5      -0.00     475.86       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.03
                            0.00       1.82      -0.00      -0.00       0.00       0.00       0.80     179.11      -0.00      -0.00

   21   7.1  1.5 -0.5      -0.00       0.01       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     505.57       0.00       0.00      -0.00       0.00    -145.76      -1.09       0.00     398.55

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     156.86      -0.00       0.42
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     593.55       0.09      -0.00     -37.33

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    -181.23       1.55       0.00    -563.11
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.01     597.84      -0.00       1.64

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     181.23       0.00      -0.00     603.71       0.00
                           -0.00      -0.00      -0.00      -0.00    -593.55      -0.01      -0.00       0.00       0.01       0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00    -156.86      -1.55       0.00       0.00      -1.14       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.09    -597.84      -0.00       0.00     578.85      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00    -603.71       1.14      -0.00    -412.11
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00      -0.01    -578.85       0.00      -1.58

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.42     563.11      -0.00      -0.00     412.11       0.00
                           -0.00      -0.00      -0.00      -0.00      37.33      -1.64      -0.00       0.00       1.58      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00    -573.66       0.01       0.00      -0.00       0.01       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.01       6.06      -0.00      -0.00     437.84       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00     235.99      -0.00      -0.00      -0.00       0.00      -0.00
                            1.26       0.00    -460.06      -0.01      -0.00     -62.32      -0.00      -0.00     229.76       0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00      -2.13      -0.00       0.00       0.00       0.00       0.00
                           -1.05       0.00     386.17       0.00      -0.00    -228.93      -0.00       0.00     173.68      -0.00

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      21.72       0.00       0.00    -155.99      -0.00
                          460.02      -0.00       1.27    -399.62    -222.40      -0.00       0.00       0.00      -0.00       0.00

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -62.25      -0.00      -0.17
                           -0.00       2.59       0.00      -0.00       0.00      -0.00     235.54       0.04      -0.00     -14.82

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     199.48      -0.21      -0.00      75.39
                           -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00    -297.99      -0.00      -0.81

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     150.91      -0.73      -0.00     266.45
                           -0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00     142.30       0.00       0.39

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -233.74       0.00       0.00    -244.55      -0.00
                          -71.09       0.00      -0.20     424.99     -78.97      -0.00      -0.00      -0.00      -0.00      -0.00

   36   1.1  0.5 -0.5      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -229.76      -0.00       0.00      -0.00       0.00      85.16       1.26       0.00    -460.06

   37   2.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -173.68       0.00      -0.00       0.00      -0.00    -434.69      -1.05       0.00     386.17

   38   3.1  0.5 -0.5       0.00    -155.99      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00       0.01     460.02      -0.00       1.27

   39   4.1  0.5 -0.5     -62.25      -0.00      -0.17    -227.65       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.04       0.00      14.82      -0.00      -0.00     472.00       0.00      -0.00       2.59       0.00

   40   5.1  0.5 -0.5      -0.21      -0.00      75.39       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          297.99       0.00       0.81     162.01     162.09       0.00       0.00      -0.00      -0.00       0.00

   41   6.1  0.5 -0.5      -0.73      -0.00     266.45       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -142.30      -0.00      -0.39      62.82    -443.31       0.00       0.00      -0.00       0.00      -0.00

   42   7.1  0.5 -0.5       0.00    -244.55      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.01     -71.09       0.00      -0.20


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     408.75      -3.69
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -107.95    -396.51

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     397.96     300.82

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    8   1.1  1.5  0.5    -662.41       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    9   2.1  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -7.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -85.16     434.69

   11   4.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -1.26       1.05

   12   5.1  1.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -505.57       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     460.06    -386.17

   14   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01      -0.00

   15   1.1  1.5 -0.5       0.00      -0.00       0.00       0.00    -156.86       0.00      -0.42    -573.66     235.99      -2.13
                            0.00       0.00      -0.00     593.55       0.09      -0.00     -37.33       0.01       0.00       0.00

   16   2.1  1.5 -0.5       0.00      -0.00       0.00     181.23      -1.55      -0.00     563.11       0.01      -0.00      -0.00
                           -0.00       0.00       0.00       0.01     597.84      -0.00       1.64      -6.06      62.32     228.93

   17   3.1  1.5 -0.5       0.00      -0.00    -181.23       0.00       0.00    -603.71      -0.00       0.00      -0.00       0.00
                          145.76    -593.55      -0.01       0.00       0.00       0.01       0.00       0.00       0.00       0.00

   18   4.1  1.5 -0.5       0.00     156.86       1.55      -0.00       0.00       1.14      -0.00      -0.00      -0.00       0.00
                            1.09      -0.09    -597.84      -0.00      -0.00     578.85      -0.00       0.00       0.00      -0.00

   19   5.1  1.5 -0.5       0.00      -0.00       0.00     603.71      -1.14      -0.00     412.11       0.01       0.00       0.00
                           -0.00       0.00       0.00      -0.01    -578.85      -0.00      -1.58    -437.84    -229.76    -173.68

   20   6.1  1.5 -0.5       0.00       0.42    -563.11       0.00       0.00    -412.11       0.00       0.00      -0.00       0.00
                         -398.55      37.33      -1.64      -0.00       0.00       1.58       0.00      -0.00      -0.00       0.00

   21   7.1  1.5 -0.5       0.03     573.66      -0.01      -0.00       0.00      -0.01      -0.00      -0.00       0.00      -0.00
                            0.00      -0.01       6.06      -0.00      -0.00     437.84       0.00      -0.00       0.00      -0.00

   22   1.1  1.5 -1.5     573.66       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.01      -0.00   -1030.07       0.00       0.00      -5.65      -0.00       0.00       0.00       0.00

   23   2.1  1.5 -1.5      -0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -6.06    1030.07      -0.00      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00

   24   3.1  1.5 -1.5      -0.00       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00    -862.11      -0.00      -2.39     437.27       0.00       0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.03       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     862.11       0.00       0.00    -537.32       3.27       0.00       0.00

   26   5.1  1.5 -1.5      -0.01       0.00       0.00       0.00       0.00       0.02       0.00       0.00       0.00       0.00
                         -437.84       5.65      -0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00

   27   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.03       0.00       0.00       0.00
                           -0.00       0.00       0.00       2.39     537.32      -0.00      -0.00   -1195.64       0.00       0.00

   28   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.03       0.00       0.00
                            0.00      -0.00       0.00    -437.27      -3.27       0.00    1195.64       0.00       0.00       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5059.27       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   30   2.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5060.06
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -369.05     785.34

   32   4.1  0.5  0.5    -227.65       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -162.01      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   34   6.1  0.5  0.5       0.01       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -62.82      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   35   7.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     554.71    -262.29

   36   1.1  0.5 -0.5       0.00     408.75      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00
                           -0.01      -0.00    -107.95      -0.00      -0.00     397.96       0.00      -0.00       0.00       0.00

   37   2.1  0.5 -0.5       0.00      -3.69      -0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00    -396.51      -0.00       0.00     300.82      -0.00       0.00      -0.00      -0.00

   38   3.1  0.5 -0.5       0.00       0.00      37.63       0.00       0.00    -270.18      -0.00       0.00       0.00      -0.00
                         -399.62    -385.21      -0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00

   39   4.1  0.5 -0.5       0.00       0.00       0.00       0.00    -107.82      -0.00      -0.29    -394.30     672.12      -6.07
                           -0.00       0.00      -0.00     407.97       0.06      -0.00     -25.66       0.00       0.00      -0.00

   40   5.1  0.5 -0.5       0.00       0.00       0.00     345.51      -0.36      -0.00     130.59       0.01      -0.00      -0.00
                           -0.00       0.00      -0.00      -0.01    -516.14      -0.00      -1.41    -280.62    -675.20    -690.87

   41   6.1  0.5 -0.5       0.00      -0.00      -0.00     261.38      -1.27      -0.00     461.50       0.01       0.00      -0.00
                           -0.00      -0.00       0.00       0.01     246.47       0.00       0.68    -108.80     -61.71     438.69

   42   7.1  0.5 -0.5       0.00      -0.00    -404.85       0.00       0.00    -423.58      -0.00      -0.00      -0.00      -0.00
                          424.99    -136.79      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -385.21       0.00       0.00      -0.00    -136.79       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5      37.63       0.00       0.00      -0.00    -404.85       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00     345.51     261.38       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     407.97      -0.01       0.01      -0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00    -107.82      -0.36      -1.27       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.06    -516.14     246.47      -0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5    -270.18      -0.00      -0.00      -0.00    -423.58       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00      -0.29     130.59     461.50      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     -25.66      -1.41       0.68      -0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00    -394.30       0.01       0.01      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -280.62    -108.80       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     235.99      -2.13       0.00       0.00       0.00
                           -0.00       0.00    -162.09     443.31       0.00      -0.00      -0.00    -222.40       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      21.72       0.00       0.00
                           -0.00    -472.00      -0.00      -0.00       0.00     -62.32    -228.93      -0.00      -0.00      -0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     199.48
                           -0.01      -0.00      -0.00      -0.00       0.01      -0.00      -0.00       0.00     235.54      -0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     -62.25      -0.21
                         -460.02       0.00       0.00       0.00      71.09      -0.00       0.00       0.00       0.04    -297.99

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -155.99      -0.00      -0.00
                            0.00      -2.59       0.00      -0.00      -0.00     229.76     173.68      -0.00      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.17      75.39
                           -1.27      -0.00      -0.00       0.00       0.20       0.00      -0.00       0.00     -14.82      -0.81

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -227.65       0.00
                          399.62       0.00       0.00       0.00    -424.99      -0.00       0.00       0.00       0.00    -162.01

   15   1.1  1.5 -0.5       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          222.40      -0.00      -0.00       0.00      78.97       0.00      -0.00      -0.00       0.00    -162.09

   16   2.1  1.5 -0.5      21.72       0.00       0.00      -0.00    -233.74       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -472.00      -0.00

   17   3.1  1.5 -0.5       0.00       0.00     199.48     150.91       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -235.54       0.00      -0.00       0.00     -85.16     434.69      -0.01      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00     -62.25      -0.21      -0.73       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.04     297.99    -142.30       0.00      -1.26       1.05    -460.02       0.00       0.00

   19   5.1  1.5 -0.5    -155.99      -0.00      -0.00      -0.00    -244.55       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00       0.00      -2.59       0.00

   20   6.1  1.5 -0.5      -0.00      -0.17      75.39     266.45      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      14.82       0.81      -0.39       0.00     460.06    -386.17      -1.27      -0.00      -0.00

   21   7.1  1.5 -0.5       0.00    -227.65       0.00       0.01      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00     162.01      62.82      -0.00       0.01      -0.00     399.62       0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     408.75      -3.69       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00     385.21      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      37.63       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00     107.95     396.51       0.00       0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     345.51
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -407.97       0.01

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -107.82      -0.36
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.06     516.14

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -270.18      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00    -397.96    -300.82       0.00       0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.29     130.59
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      25.66       1.41

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00    -394.30       0.01
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     280.62

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00     672.12      -0.00
                          369.05       0.00      -0.00      -0.00    -554.71      -0.00       0.00       0.00      -0.00     675.20

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -6.07      -0.00
                         -785.34      -0.00      -0.00      -0.00     262.29      -0.00       0.00       0.00       0.00     690.87

   31   3.1  0.5  0.5    5060.02       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -437.97
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00    -633.40       0.00

   32   4.1  0.5  0.5       0.00    5060.10       0.00       0.00       0.00    -672.12       6.07      -0.00       0.00       0.00
                            0.00       0.00    -230.82     631.28      -0.00       0.00      -0.00     633.40       0.00       0.00

   33   5.1  0.5  0.5       0.00       0.00    5059.99       0.00       0.00       0.00       0.00     437.97      -0.00      -0.00
                           -0.00     230.82       0.00      -0.00      -0.00    -675.20    -690.87      -0.00      -0.00      -0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00    5060.11       0.00      -0.00       0.00      96.86       0.00      -0.00
                           -0.00    -631.28       0.00      -0.00      -0.00     -61.71     438.69       0.00      -0.00      -0.00

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5059.90       0.00       0.00      -0.00      -0.00    -420.78
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00    -224.92       0.00

   36   1.1  0.5 -0.5      -0.00    -672.12       0.00      -0.00       0.00    5059.27       0.00       0.00       0.00       0.00
                            0.00      -0.00     675.20      61.71      -0.00       0.00       0.00    -369.05      -0.00       0.00

   37   2.1  0.5 -0.5       0.00       6.07       0.00       0.00       0.00       0.00    5060.06       0.00       0.00       0.00
                            0.00       0.00     690.87    -438.69      -0.00      -0.00       0.00     785.34       0.00       0.00

   38   3.1  0.5 -0.5       0.00      -0.00     437.97      96.86      -0.00       0.00       0.00    5060.02       0.00       0.00
                            0.00    -633.40       0.00      -0.00      -0.00     369.05    -785.34       0.00       0.00      -0.00

   39   4.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    5060.10       0.00
                          633.40      -0.00       0.00       0.00     224.92       0.00      -0.00      -0.00      -0.00     230.82

   40   5.1  0.5 -0.5    -437.97       0.00      -0.00      -0.00    -420.78       0.00       0.00       0.00       0.00    5059.99
                           -0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00    -230.82      -0.00

   41   6.1  0.5 -0.5     -96.86      -0.00       0.00      -0.00    -866.72       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     631.28      -0.00

   42   7.1  0.5 -0.5       0.00       0.00     420.78     866.72       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -224.92       0.00       0.00      -0.00    -554.71     262.29      -0.00      -0.00      -0.00


   Nr   State  S   Sz       41         42

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
                           -0.00     -78.97

    9   2.1  1.5  0.5      -0.00    -233.74
                            0.00      -0.00

   10   3.1  1.5  0.5     150.91       0.00
                            0.00      -0.00

   11   4.1  1.5  0.5      -0.73       0.00
                          142.30      -0.00

   12   5.1  1.5  0.5      -0.00    -244.55
                            0.00      -0.00

   13   6.1  1.5  0.5     266.45      -0.00
                            0.39      -0.00

   14   7.1  1.5  0.5       0.01      -0.00
                          -62.82       0.00

   15   1.1  1.5 -0.5       0.00       0.00
                          443.31       0.00

   16   2.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   17   3.1  1.5 -0.5       0.00       0.00
                           -0.00       0.01

   18   4.1  1.5 -0.5       0.00       0.00
                            0.00      71.09

   19   5.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00
                            0.00       0.20

   21   7.1  1.5 -0.5       0.00       0.00
                            0.00    -424.99

   22   1.1  1.5 -1.5      -0.00      -0.00
                            0.00     136.79

   23   2.1  1.5 -1.5      -0.00    -404.85
                           -0.00       0.00

   24   3.1  1.5 -1.5     261.38       0.00
                           -0.01       0.00

   25   4.1  1.5 -1.5      -1.27       0.00
                         -246.47       0.00

   26   5.1  1.5 -1.5      -0.00    -423.58
                           -0.00       0.00

   27   6.1  1.5 -1.5     461.50      -0.00
                           -0.68       0.00

   28   7.1  1.5 -1.5       0.01      -0.00
                          108.80      -0.00

   29   1.1  0.5  0.5       0.00      -0.00
                           61.71      -0.00

   30   2.1  0.5  0.5      -0.00      -0.00
                         -438.69      -0.00

   31   3.1  0.5  0.5     -96.86       0.00
                           -0.00      -0.00

   32   4.1  0.5  0.5      -0.00       0.00
                            0.00     224.92

   33   5.1  0.5  0.5       0.00     420.78
                            0.00      -0.00

   34   6.1  0.5  0.5      -0.00     866.72
                            0.00      -0.00

   35   7.1  0.5  0.5    -866.72       0.00
                            0.00       0.00

   36   1.1  0.5 -0.5       0.00       0.00
                            0.00     554.71

   37   2.1  0.5 -0.5       0.00       0.00
                            0.00    -262.29

   38   3.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   39   4.1  0.5 -0.5       0.00       0.00
                         -631.28       0.00

   40   5.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   41   6.1  0.5 -0.5    5060.11       0.00
                            0.00       0.00

   42   7.1  0.5 -0.5       0.00    5059.90
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02262259    -0.00704008    -1545.12      0.00000000        0.00      0.0000
     2  -110.02262259    -0.00704008    -1545.12      0.00000000        0.00      0.0000
     3  -110.02262257    -0.00704006    -1545.12      0.00000002        0.00      0.0000
     4  -110.02262257    -0.00704006    -1545.12      0.00000002        0.00      0.0000
     5  -110.02262254    -0.00704003    -1545.11      0.00000005        0.01      0.0000
     6  -110.02262254    -0.00704003    -1545.11      0.00000005        0.01      0.0000
     7  -110.02262253    -0.00704002    -1545.11      0.00000007        0.01      0.0000
     8  -110.02262253    -0.00704002    -1545.11      0.00000007        0.01      0.0000
     9  -110.02262252    -0.00704001    -1545.10      0.00000007        0.02      0.0000
    10  -110.02262252    -0.00704001    -1545.10      0.00000007        0.02      0.0000
    11  -110.01639252    -0.00081001     -177.78      0.00623007     1367.34      0.1695
    12  -110.01639252    -0.00081001     -177.78      0.00623007     1367.34      0.1695
    13  -110.01639245    -0.00080994     -177.76      0.00623015     1367.36      0.1695
    14  -110.01639245    -0.00080994     -177.76      0.00623015     1367.36      0.1695
    15  -110.01639242    -0.00080991     -177.76      0.00623017     1367.36      0.1695
    16  -110.01639242    -0.00080991     -177.76      0.00623017     1367.36      0.1695
    17  -110.01639241    -0.00080990     -177.75      0.00623018     1367.37      0.1695
    18  -110.01639241    -0.00080990     -177.75      0.00623018     1367.37      0.1695
    19  -110.01058494     0.00499757     1096.84      0.01203765     2641.96      0.3276
    20  -110.01058494     0.00499757     1096.84      0.01203765     2641.96      0.3276
    21  -110.01058491     0.00499760     1096.85      0.01203768     2641.97      0.3276
    22  -110.01058491     0.00499760     1096.85      0.01203768     2641.97      0.3276
    23  -110.01058488     0.00499763     1096.85      0.01203771     2641.97      0.3276
    24  -110.01058488     0.00499763     1096.85      0.01203771     2641.97      0.3276
    25  -110.00619556     0.00938695     2060.20      0.01642703     3605.32      0.4470
    26  -110.00619556     0.00938695     2060.20      0.01642703     3605.32      0.4470
    27  -110.00619555     0.00938696     2060.20      0.01642704     3605.32      0.4470
    28  -110.00619555     0.00938696     2060.20      0.01642704     3605.32      0.4470
    29  -109.99631305     0.01926946     4229.16      0.02630954     5774.28      0.7159
    30  -109.99631305     0.01926946     4229.16      0.02630954     5774.28      0.7159
    31  -109.99631133     0.01927118     4229.54      0.02631127     5774.66      0.7160
    32  -109.99631133     0.01927118     4229.54      0.02631127     5774.66      0.7160
    33  -109.99631103     0.01927148     4229.60      0.02631156     5774.72      0.7160
    34  -109.99631103     0.01927148     4229.60      0.02631156     5774.72      0.7160
    35  -109.99631089     0.01927162     4229.63      0.02631171     5774.75      0.7160
    36  -109.99631089     0.01927162     4229.63      0.02631171     5774.75      0.7160
    37  -109.98592564     0.02965687     6508.93      0.03669696     8054.05      0.9986
    38  -109.98592564     0.02965687     6508.93      0.03669696     8054.05      0.9986
    39  -109.98592408     0.02965843     6509.27      0.03669851     8054.39      0.9986
    40  -109.98592408     0.02965843     6509.27      0.03669851     8054.39      0.9986
    41  -109.98592401     0.02965850     6509.29      0.03669858     8054.41      0.9986
    42  -109.98592401     0.02965850     6509.29      0.03669858     8054.41      0.9986


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5   0.566212891   0.009396559   0.000942448  -0.039257270   0.061360927  -0.000476626   0.173179883   0.027609093
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000005873   0.000000097  -0.000000539   0.000022437  -0.000029330   0.000000228  -0.000003553  -0.000000566
                         0.583396004   0.009681721   0.000284687  -0.011858506   0.018293636  -0.000142097  -0.124998695  -0.019927838

    3    3.1  1.5  1.5   0.000084828  -0.005111491   0.312621167   0.007505088   0.000159903   0.020585982  -0.039610134   0.248457215
                         0.000012925  -0.000778834  -0.143034632  -0.003433829   0.001261057   0.162348855  -0.007088909   0.044465657

    4    4.1  1.5  1.5   0.000058892  -0.003548709   0.159967233   0.003840329  -0.000176549  -0.022728981  -0.003220980   0.020203813
                        -0.000374358   0.022557837   0.351194891   0.008431126   0.000022342   0.002876286   0.018163176  -0.113929736

    5    5.1  1.5  1.5  -0.000035034  -0.000000581   0.000003329  -0.000138652   0.000209250  -0.000001625   0.000008363   0.000001333
                        -0.032048721  -0.000531863   0.002591812  -0.107960785   0.468807650  -0.003641498  -0.073988684  -0.011795599

    6    6.1  1.5  1.5  -0.000059722   0.003598690   0.222400259   0.005339157   0.000005092   0.000655590  -0.014366757   0.090116442
                        -0.000010612   0.000639450  -0.100594365  -0.002414966   0.000045563   0.005865786  -0.002540296   0.015934174

    7    7.1  1.5  1.5   0.000027373  -0.001649404   0.107649653   0.002584342  -0.000722924  -0.093069452  -0.005567592   0.034923094
                        -0.000174484   0.010513954   0.235243602   0.005647487   0.000091552   0.011786439   0.031171327  -0.195524237

    8    1.1  1.5  0.5   0.000028900  -0.001741430  -0.171676923  -0.004121443   0.003323653   0.427888116   0.000632351  -0.003966462
                        -0.000186394   0.011231643  -0.375198237  -0.009007374  -0.000421387  -0.054249486  -0.003558409   0.022320356

    9    2.1  1.5  0.5  -0.000592411   0.035697177   0.507122054   0.012174465  -0.000193548  -0.024917471  -0.011299832   0.070878954
                        -0.000093052   0.005607074  -0.232044474  -0.005570685  -0.001525855  -0.196439005  -0.002027477   0.012717484

   10    3.1  1.5  0.5   0.000011147   0.000000185   0.000001152  -0.000047980  -0.000168686   0.000001310  -0.000008095  -0.000001290
                         0.237057504   0.003934077   0.001371420  -0.057125892  -0.375943387   0.002920168   0.406045029   0.064733471

   11    4.1  1.5  0.5  -0.295747750  -0.004908068   0.005493141  -0.228814402   0.395467888  -0.003071826   0.247960418   0.039530932
                         0.000928274   0.000015405   0.000007375  -0.000307186   0.000443538  -0.000003445  -0.000746441  -0.000119001

   12    5.1  1.5  0.5   0.000619938  -0.037355920  -0.051711806  -0.001241444   0.000087245   0.011231973  -0.104834979   0.657584421
                         0.000096654  -0.005824107   0.023694487   0.000568833   0.000689428   0.088757226  -0.018781078   0.117805569

   13    6.1  1.5  0.5  -0.000789677  -0.000013105   0.000008490  -0.000353665   0.001002500  -0.000007787   0.000683044   0.000108894
                        -0.324180737  -0.005379926  -0.005344140   0.222607831  -0.232586100   0.001806630   0.268215862   0.042760144

   14    7.1  1.5  0.5   0.292323246   0.004851237  -0.001267106   0.052780733   0.393506607  -0.003056592   0.221156882   0.035257796
                         0.000013073   0.000000217   0.000002490  -0.000103704  -0.000175699   0.000001365  -0.000007602  -0.000001212

   15    1.1  1.5 -0.5   0.011365841   0.000188621   0.009905499  -0.412609246  -0.431313350   0.003350259   0.022670027   0.003614155
                         0.000005832   0.000000097  -0.000012982   0.000540749   0.000201011  -0.000001561   0.000031432   0.000005011

   16    2.1  1.5 -0.5   0.000052946   0.000000879  -0.000017458   0.000727193  -0.000080286   0.000000624   0.000020143   0.000003211
                         0.036134816   0.000599674  -0.013388422   0.557688880  -0.198013022   0.001538081   0.072010834   0.011480282

   17    3.1  1.5 -0.5   0.003887288  -0.234238114   0.051935106   0.001246805   0.000367341   0.047291662   0.063719399  -0.399684194
                         0.000604941  -0.036452241  -0.023793164  -0.000571202   0.002896972   0.372957045   0.011413170  -0.071589875

   18    4.1  1.5 -0.5   0.000769706  -0.046380517   0.095755934   0.002298810   0.003046816   0.392248058  -0.007087618   0.044457558
                        -0.004847362   0.292089783   0.207814643   0.004989000  -0.000391204  -0.050363756   0.038890544  -0.243943541

   19    5.1  1.5 -0.5  -0.000012412  -0.000000206   0.000001068  -0.000044480   0.000062575  -0.000000486   0.000007954   0.000001268
                        -0.037807206  -0.000627428   0.001365559  -0.056881786   0.089465068  -0.000694927   0.668053458   0.106503999

   20    6.1  1.5 -0.5  -0.005313965   0.320206119  -0.202154818  -0.004853125   0.000235793   0.030356090   0.042070940  -0.263892784
                        -0.000839968   0.050614375   0.093208374   0.002237651   0.001791193   0.230598800   0.007647076  -0.047966794

   21    7.1  1.5 -0.5  -0.000745533   0.044923933  -0.021929430  -0.000526459   0.003032311   0.390380640  -0.006218193   0.039004034
                         0.004793608  -0.288850689  -0.048009548  -0.001152564  -0.000384510  -0.049501882   0.034705133  -0.217690266

   22    1.1  1.5 -1.5   0.001444469  -0.087040030  -0.016380775  -0.000393253  -0.000472812  -0.060870025   0.004868306  -0.030536776
                        -0.009284871   0.559482861  -0.035676371  -0.000856482   0.000060169   0.007746188  -0.027176490   0.170466352

   23    2.1  1.5 -1.5  -0.009566628   0.576460831  -0.010767456  -0.000258494   0.000018164   0.002338479   0.019615491  -0.123039482
                        -0.001488401   0.089687276   0.004968557   0.000119280   0.000140932   0.018143580   0.003514429  -0.022044494

   24    3.1  1.5 -1.5  -0.000016178  -0.000000268   0.000011020  -0.000459034  -0.000073590   0.000000572   0.000041482   0.000006613
                         0.005170460   0.000085806   0.008253327  -0.343788728  -0.163648795   0.001271154  -0.252404795  -0.040239474

   25    4.1  1.5 -1.5  -0.022835232  -0.000378961   0.009264515  -0.385909324  -0.022910245   0.000177957   0.115707121   0.018446534
                         0.000038867   0.000000645  -0.000028004   0.001166515   0.000016026  -0.000000124   0.000201967   0.000032198

   26    5.1  1.5 -1.5   0.000525452  -0.031662403  -0.098170868  -0.002356785   0.000458089   0.058974584   0.011611010  -0.072830840
                         0.000082334  -0.004961247   0.044922501   0.001078453   0.003612571   0.465083492   0.002078603  -0.013038179

   27    6.1  1.5 -1.5  -0.000078647  -0.000001305   0.000033173  -0.001381827  -0.000090150   0.000000700   0.000205711   0.000032795
                        -0.003654214  -0.000060643   0.005859826  -0.244088492  -0.005901619   0.000045841  -0.091514091  -0.014589576

   28    7.1  1.5 -1.5  -0.010642536  -0.000176618   0.006210706  -0.258704255  -0.093812791   0.000728698   0.198618577   0.031664641
                         0.000013561   0.000000225  -0.000007903   0.000329203   0.000056919  -0.000000442   0.000100863   0.000016080

   29    1.1  0.5  0.5  -0.000000470  -0.000000008   0.000000002  -0.000000095   0.000000237  -0.000000002  -0.000000087  -0.000000014
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   30    2.1  0.5  0.5   0.000000905   0.000000015   0.000000005  -0.000000221   0.000000151  -0.000000001  -0.000000088  -0.000000014
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   31    3.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000687  -0.000000011  -0.000000002   0.000000087  -0.000000031   0.000000000   0.000000050   0.000000008

   32    4.1  0.5  0.5  -0.000000000   0.000000006  -0.000000349  -0.000000008  -0.000000002  -0.000000247   0.000000001  -0.000000006
                         0.000000001  -0.000000040  -0.000000762  -0.000000018   0.000000000   0.000000031  -0.000000005   0.000000034

   33    5.1  0.5  0.5   0.000000001  -0.000000085  -0.000000182  -0.000000004  -0.000000000  -0.000000024  -0.000000013   0.000000079
                         0.000000000  -0.000000013   0.000000083   0.000000002  -0.000000001  -0.000000191  -0.000000002   0.000000014

   34    6.1  0.5  0.5  -0.000000000   0.000000015   0.000000382   0.000000009   0.000000000   0.000000050   0.000000001  -0.000000007
                        -0.000000000   0.000000002  -0.000000175  -0.000000004   0.000000003   0.000000393   0.000000000  -0.000000001

   35    7.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000543   0.000000009  -0.000000004   0.000000159  -0.000000320   0.000000002  -0.000000111  -0.000000018

   36    1.1  0.5 -0.5  -0.000000001   0.000000072  -0.000000039  -0.000000001  -0.000000002  -0.000000235  -0.000000002   0.000000015
                         0.000000008  -0.000000465  -0.000000086  -0.000000002   0.000000000   0.000000030   0.000000014  -0.000000085

   37    2.1  0.5 -0.5   0.000000002  -0.000000139  -0.000000092  -0.000000002  -0.000000001  -0.000000149  -0.000000002   0.000000016
                        -0.000000015   0.000000895  -0.000000201  -0.000000005   0.000000000   0.000000019   0.000000014  -0.000000087

   38    3.1  0.5 -0.5   0.000000011  -0.000000679   0.000000079   0.000000002  -0.000000000  -0.000000004  -0.000000008   0.000000050
                         0.000000002  -0.000000106  -0.000000036  -0.000000001  -0.000000000  -0.000000030  -0.000000001   0.000000009

   39    4.1  0.5 -0.5   0.000000041   0.000000001  -0.000000020   0.000000838  -0.000000249   0.000000002  -0.000000034  -0.000000005
                        -0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000000  -0.000000000  -0.000000000  -0.000000000

   40    5.1  0.5 -0.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000086   0.000000001  -0.000000005   0.000000200   0.000000192  -0.000000001  -0.000000080  -0.000000013

   41    6.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000016  -0.000000000   0.000000010  -0.000000421  -0.000000396   0.000000003   0.000000007   0.000000001

   42    7.1  0.5 -0.5  -0.000000009   0.000000536   0.000000145   0.000000003  -0.000000000  -0.000000040   0.000000017  -0.000000109
                        -0.000000001   0.000000083  -0.000000066  -0.000000002  -0.000000002  -0.000000318   0.000000003  -0.000000019


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.020001560  -0.000000000   0.003597624   0.310737859   0.364203424  -0.000840058   0.209129845   0.028651458
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000000706   0.000000000  -0.000000258  -0.000022112   0.000005187  -0.000000006   0.000039281   0.000005373
                         0.014252738  -0.000000000   0.001065240   0.092008039   0.292184908  -0.000673939  -0.410164390  -0.056193840

    3    3.1  1.5  1.5  -0.000000000   0.170816296  -0.038053197   0.000440566  -0.000104575  -0.045337494  -0.029016297   0.211792791
                        -0.000000000  -0.321492921  -0.259808645   0.003007983  -0.000023226  -0.010070890  -0.006674657   0.048718958

    4    4.1  1.5  1.5   0.000000000   0.385754797  -0.155558785   0.001801010  -0.000009488  -0.004114929  -0.011445480   0.083541645
                        -0.000000000   0.203168512   0.022713514  -0.000262968   0.000039971   0.017332168   0.050100828  -0.365690947

    5    5.1  1.5  1.5  -0.000003502   0.000000000   0.000000072   0.000005846  -0.000008912   0.000000024   0.000018272   0.000002507
                         0.001004441  -0.000000000   0.006175374   0.533385722  -0.378894268   0.000873938  -0.117505313  -0.016098601

    6    6.1  1.5  1.5   0.000000000  -0.281558539   0.003268805  -0.000037845   0.000256491   0.111201959  -0.025603562   0.186882916
                         0.000000000   0.532304470   0.025240819  -0.000292231   0.000056778   0.024614776  -0.005745238   0.041935056

    7    7.1  1.5  1.5  -0.000000000  -0.486569664   0.091630164  -0.001060867   0.000068382   0.029645491  -0.010061106   0.073436986
                         0.000000000  -0.258556115  -0.013432523   0.000155518  -0.000308881  -0.133912756   0.043755769  -0.319377735

    8    1.1  1.5  0.5  -0.000000000   0.008947432  -0.317647270   0.003677621  -0.000121252  -0.052567788   0.000613505  -0.004478063
                        -0.000000000   0.004773199   0.046534800  -0.000538762   0.000548529   0.237815079  -0.002666265   0.019461319

    9    2.1  1.5  0.5  -0.000000000  -0.005155973   0.057168367  -0.000661875   0.000600729   0.260443951  -0.017776364   0.129751484
                         0.000000000   0.009675136   0.390241710  -0.004518097   0.000132924   0.057627955  -0.004085548   0.029820830

   10    3.1  1.5  0.5   0.000001915  -0.000000000   0.000000264   0.000022654   0.000029404  -0.000000072  -0.000044203  -0.000006047
                        -0.038302996   0.000000000  -0.001119339  -0.096680653  -0.215505756   0.000497072   0.413618767   0.056667097

   11    4.1  1.5  0.5  -0.032845315  -0.000000000   0.002675949   0.231130021   0.321997331  -0.000742710   0.241931534   0.033145392
                         0.000083816   0.000000000  -0.000011164  -0.000964274  -0.001090881   0.000002516   0.000020170   0.000002761

   12    5.1  1.5  0.5   0.000000000  -0.036080532  -0.013666892   0.000158230   0.000077935   0.033787888  -0.037114835   0.270904861
                         0.000000000   0.067646955  -0.093352274   0.001080803   0.000017232   0.007469582  -0.008535091   0.062298449

   13    6.1  1.5  0.5  -0.000087635  -0.000000000   0.000007292   0.000629901   0.000851828  -0.000001964   0.000687812   0.000094227
                        -0.028849366   0.000000000   0.004086342   0.352949896   0.389838749  -0.000899183  -0.004818230  -0.000660111

   14    7.1  1.5  0.5  -0.032740351  -0.000000000  -0.001281379  -0.110676657  -0.360629113   0.000831813   0.243221362   0.033322114
                         0.000001363  -0.000000000  -0.000000192  -0.000016495   0.000044327  -0.000000097   0.000021584   0.000002952

   15    1.1  1.5 -0.5   0.010141004   0.000000000   0.003716876   0.321037811  -0.243555710   0.000561771  -0.019969877  -0.002735938
                        -0.000001039   0.000000000  -0.000000038  -0.000002996  -0.000021380   0.000000047   0.000001312   0.000000175

   16    2.1  1.5 -0.5   0.000003672  -0.000000000   0.000000061   0.000005064  -0.000033386   0.000000079   0.000025440   0.000003486
                        -0.010963225   0.000000000   0.004566320   0.394406915  -0.266743381   0.000615260  -0.133134251  -0.018239814

   17    3.1  1.5 -0.5   0.000000000   0.018023420   0.014037279  -0.000162521  -0.000485362  -0.210428529  -0.055226189   0.403101446
                        -0.000000000  -0.033797571   0.095656175  -0.001107477  -0.000107258  -0.046503394  -0.012697561   0.092680692

   18    4.1  1.5 -0.5  -0.000000000   0.028941639   0.228828483  -0.002649303  -0.000162823  -0.070590963   0.007427740  -0.054215803
                        -0.000000000   0.015530720  -0.032550608   0.000376860   0.000724647   0.314166177  -0.032302410   0.235778528

   19    5.1  1.5 -0.5  -0.000001516  -0.000000000  -0.000000115  -0.000009846   0.000002114  -0.000000002   0.000017752   0.000002428
                        -0.076667563   0.000000000  -0.001092324  -0.094347395  -0.034603699   0.000079817  -0.277975790  -0.038083575

   20    6.1  1.5 -0.5   0.000000000   0.013653625  -0.050540505   0.000585143   0.000877548   0.380458898   0.000664434  -0.004849791
                        -0.000000000  -0.025414014  -0.349313159   0.004044237   0.000196070   0.085005900   0.000056153  -0.000409830

   21    7.1  1.5 -0.5  -0.000000000   0.028887826  -0.109505239   0.001267817   0.000179700   0.077910489   0.007467171  -0.054503574
                        -0.000000000   0.015408572   0.016060051  -0.000185940  -0.000812171  -0.352112645  -0.032474677   0.237035845

   22    1.1  1.5 -1.5  -0.000000000  -0.017648388  -0.307455678   0.003559624   0.000181386   0.078638975  -0.006422995   0.046882079
                        -0.000000000  -0.009412588   0.045044679  -0.000521513  -0.000820242  -0.355612212   0.027922234  -0.203807171

   23    2.1  1.5 -1.5  -0.000000000   0.006707858   0.013359399  -0.000154673  -0.000658040  -0.285291424  -0.054764825   0.399733885
                        -0.000000000  -0.012575579   0.091032995  -0.001053951  -0.000145523  -0.063093767  -0.012592124   0.091911096

   24    3.1  1.5 -1.5   0.000572359  -0.000000000   0.000000125   0.000010702  -0.000044034   0.000000098  -0.000000063  -0.000000007
                        -0.364054361  -0.000000000   0.003040075   0.262580612  -0.046442537   0.000107123   0.217324005   0.029774092

   25    4.1  1.5 -1.5  -0.435980579  -0.000000000  -0.001820107  -0.157208248   0.017811816  -0.000041077  -0.375111659  -0.051391497
                        -0.002267531   0.000000000   0.000000885   0.000076259  -0.000275492   0.000000634  -0.000564078  -0.000077272

   26    5.1  1.5 -1.5   0.000000000   0.000469593   0.077314015  -0.000895113   0.000853318   0.369954589  -0.015689429   0.114518719
                        -0.000000000  -0.000887917   0.527752661  -0.006110156   0.000188725   0.081819730  -0.003606491   0.026324168

   27    6.1  1.5 -1.5  -0.002065249   0.000000000  -0.000004917  -0.000424641   0.000023358  -0.000000057  -0.001027087  -0.000140714
                         0.602178540   0.000000000  -0.000294630  -0.025448060   0.113893644  -0.000262700   0.191527331   0.026239861

   28    7.1  1.5 -1.5   0.550999636   0.000000000   0.001072205   0.092609501  -0.137154950   0.000316360  -0.327711958  -0.044897586
                         0.000838985  -0.000000000   0.000000091   0.000007897   0.000031676  -0.000000075  -0.000029205  -0.000003997

   29    1.1  0.5  0.5   0.000000022   0.000000000  -0.001702812  -0.147077095  -0.023195871   0.000053503  -0.022798940  -0.003123528
                        -0.000000000   0.000000000   0.000000012   0.000001013  -0.000004672   0.000000011   0.000004139   0.000000567

   30    2.1  0.5  0.5   0.000000013   0.000000000  -0.000138204  -0.011937112   0.125292450  -0.000288993  -0.077079075  -0.010560081
                        -0.000000000  -0.000000000   0.000000064   0.000005435   0.000002354  -0.000000006  -0.000009095  -0.000001243

   31    3.1  0.5  0.5   0.000000000  -0.000000000   0.000000028   0.000002405  -0.000005967   0.000000014   0.000001088   0.000000150
                        -0.000000003   0.000000000  -0.000223083  -0.019268399  -0.141780677   0.000327026  -0.036855663  -0.005049343

   32    4.1  0.5  0.5   0.000000000   0.000000027   0.077305591  -0.000895020   0.000024235   0.010506999  -0.001280746   0.009348292
                        -0.000000000   0.000000014  -0.011324690   0.000131113  -0.000109436  -0.047445233   0.005573054  -0.040678291

   33    5.1  0.5  0.5   0.000000000  -0.000000024   0.008662137  -0.000100287  -0.000006696  -0.002902476   0.018185982  -0.132741293
                        -0.000000000   0.000000044   0.059156548  -0.000684896  -0.000001490  -0.000645217   0.004181957  -0.030524500

   34    6.1  0.5  0.5  -0.000000000  -0.000000047  -0.003245135   0.000037571  -0.000090835  -0.039381819   0.004395210  -0.032081066
                        -0.000000000   0.000000088  -0.022139220   0.000256321  -0.000020059  -0.008696108   0.001011232  -0.007381083

   35    7.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000045  -0.000003893   0.000002783  -0.000000005   0.000009547   0.000001307
                         0.000000036   0.000000000   0.001036429   0.089519536  -0.001397006   0.000003222  -0.101969496  -0.013970148

   36    1.1  0.5 -0.5  -0.000000000   0.000000019   0.145523734  -0.001684828  -0.000011542  -0.005003902   0.000700776  -0.005115029
                         0.000000000   0.000000010  -0.021319350   0.000246828   0.000052244   0.022649711  -0.003043903   0.022217745

   37    2.1  0.5 -0.5   0.000000000   0.000000011   0.011811814  -0.000136754   0.000062393   0.027050907   0.002366114  -0.017270484
                        -0.000000000   0.000000006  -0.001725030   0.000019971  -0.000282177  -0.122337429  -0.010291590   0.075119334

   38    3.1  0.5 -0.5   0.000000000  -0.000000001  -0.002795534   0.000032366   0.000319309   0.138434918  -0.004920863   0.035917874
                         0.000000000   0.000000003  -0.019064527   0.000220723   0.000070625   0.030619177  -0.001131800   0.008261128

   39    4.1  0.5 -0.5  -0.000000031   0.000000000   0.000904573   0.078130679  -0.048594722   0.000112087  -0.041738637  -0.005718325
                        -0.000000000   0.000000000  -0.000000014  -0.000001176   0.000014752  -0.000000034  -0.000008769  -0.000001201

   40    5.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000055  -0.000004714  -0.000003293   0.000000009   0.000009925   0.000001358
                         0.000000050   0.000000000  -0.000692199  -0.059787372  -0.002973324   0.000006860  -0.136205712  -0.018660619

   41    6.1  0.5 -0.5  -0.000000000  -0.000000000  -0.000000017  -0.000001548   0.000012366  -0.000000027  -0.000001390  -0.000000190
                         0.000000100   0.000000000   0.000259060   0.022375789  -0.040330508   0.000093023  -0.032919222  -0.004510040

   42    7.1  0.5 -0.5   0.000000000   0.000000017   0.012980638  -0.000150285   0.000003147   0.001364653  -0.013614880   0.099376357
                         0.000000000  -0.000000032   0.088573418  -0.001025476   0.000000691   0.000298925  -0.003130511   0.022849901


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.000742884   0.020401128   0.006202690  -0.349975709   0.002389829  -0.285223973  -0.000000000  -0.079054692
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000006011  -0.000165773   0.000000000  -0.000000025   0.000000002  -0.000000199  -0.000000000   0.000000828
                         0.003444857  -0.094603004  -0.006215684   0.350708827  -0.002388382   0.285051304   0.000000000   0.076401020

    3    3.1  1.5  1.5   0.062266791   0.002267492   0.410133418   0.007268877   0.056092393   0.000469986   0.104990887   0.000000002
                         0.415526220   0.015130879  -0.174435539  -0.003091561  -0.027206348  -0.000227950   0.039240841  -0.000000004

    4    4.1  1.5  1.5  -0.329136962  -0.011985119  -0.087092048  -0.001543547  -0.150369707  -0.001259917   0.073996238  -0.000000006
                         0.048425765   0.001763468  -0.203435751  -0.003605533  -0.310190725  -0.002599019  -0.194896161  -0.000000003

    5    5.1  1.5  1.5   0.000004363  -0.000120620  -0.000000082   0.000004553  -0.000000300   0.000036194   0.000000012  -0.000150755
                         0.004428597  -0.121618571   0.002339384  -0.131995558  -0.000268720   0.032071216  -0.000000001   0.483421774

    6    6.1  1.5  1.5   0.048236076   0.001756553   0.160352022   0.002841951   0.063906875   0.000535463  -0.360770623  -0.000000004
                         0.327888795   0.011939670  -0.068844360  -0.001220144  -0.031975782  -0.000267918  -0.135558678   0.000000008

    7    7.1  1.5  1.5  -0.200046314  -0.007284441  -0.013299030  -0.000235698  -0.126070466  -0.001056322  -0.112463751   0.000000006
                         0.029990083   0.001092118  -0.031241652  -0.000553703  -0.260527512  -0.002182903   0.300643550   0.000000003

    8    1.1  1.5  0.5  -0.329835431  -0.012010554   0.076708720   0.001359532  -0.137301801  -0.001150429   0.094185400  -0.000000007
                         0.049467434   0.001801392   0.180485347   0.003198778  -0.283736260  -0.002377362  -0.251834884  -0.000000003

    9    2.1  1.5  0.5  -0.025371713  -0.000923936  -0.270759482  -0.004798724   0.305471606   0.002559478  -0.085725619  -0.000000000
                        -0.169445925  -0.006170165   0.115112225   0.002040166  -0.147793834  -0.001238343  -0.032064563   0.000000001

   10    3.1  1.5  0.5   0.000006189  -0.000171259  -0.000000865   0.000049034   0.000000203  -0.000024717   0.000000010  -0.000124464
                         0.005432661  -0.149192274  -0.002315704   0.130659376   0.001346372  -0.160688354  -0.000000001   0.402764236

   11    4.1  1.5  0.5   0.008331951  -0.228812907  -0.005679921   0.320479291   0.001834166  -0.218905682   0.000000000  -0.241491920
                         0.000021341  -0.000584071  -0.000012644   0.000713064   0.000007994  -0.000953000   0.000000006  -0.000472076

   12    5.1  1.5  0.5   0.007522923   0.000273949  -0.289536749  -0.005131519  -0.227943100  -0.001909885   0.065748533   0.000000000
                         0.050229184   0.001829035   0.123159623   0.002182783   0.110346921   0.000924572   0.024613929   0.000000000

   13    6.1  1.5  0.5   0.000008452  -0.000229518  -0.000014608   0.000823747   0.000004410  -0.000525061   0.000000003  -0.000695739
                        -0.012113568   0.332664016   0.004882327  -0.275476419  -0.003136547   0.374343662   0.000000000   0.141790359

   14    7.1  1.5  0.5  -0.014916839   0.409647749   0.002410399  -0.136002302  -0.002813978   0.335845610   0.000000001  -0.317802041
                         0.000020977  -0.000579398  -0.000000974   0.000055344   0.000000316  -0.000038488   0.000000009  -0.000098129

   15    1.1  1.5 -0.5   0.012144884  -0.333524014   0.003475702  -0.196110134  -0.002641086   0.315211115   0.000000001  -0.268871141
                        -0.000014947   0.000413077  -0.000001039   0.000059031   0.000000399  -0.000048544   0.000000007  -0.000086258

   16    2.1  1.5 -0.5  -0.000009153   0.000252875  -0.000000978   0.000055638   0.000000623  -0.000075522  -0.000000001   0.000026112
                        -0.006238951   0.171334706  -0.005214406   0.294213389   0.002843312  -0.339346304  -0.000000000  -0.091526047

   17    3.1  1.5 -0.5  -0.022141186  -0.000806292   0.120253080   0.002131270  -0.144643085  -0.001211931  -0.377242557  -0.000000004
                        -0.147540271  -0.005372498  -0.051098646  -0.000905637   0.069993752   0.000586466  -0.141092517   0.000000009

   18    4.1  1.5 -0.5   0.226152647   0.008235070   0.126100807   0.002234917  -0.096240545  -0.000806388  -0.084224920   0.000000005
                        -0.034794655  -0.001267079   0.294628700   0.005221763  -0.196617302  -0.001647413   0.226328817   0.000000002

   19    5.1  1.5 -0.5   0.000002649  -0.000073044  -0.000000005   0.000000306   0.000000003  -0.000000415  -0.000000000   0.000000143
                         0.001849435  -0.050789369  -0.005576471   0.314642371  -0.002121908   0.253247902   0.000000000   0.070204808

   20    6.1  1.5 -0.5   0.049974198   0.001819845  -0.253173343  -0.004487042   0.336710327   0.002821221  -0.133034192  -0.000000001
                         0.328889009   0.011976092   0.108587264   0.001924523  -0.163583644  -0.001370643  -0.049060101   0.000000002

   21    7.1  1.5 -0.5  -0.405128054  -0.014752242  -0.053184211  -0.000942602   0.146301825   0.001225838  -0.111329448   0.000000008
                         0.060686683   0.002209953  -0.125172157  -0.002218451   0.302304566   0.002532942   0.297664075   0.000000004

   22    1.1  1.5 -1.5   0.020171725   0.000734530   0.136990370   0.002427908   0.124279334   0.001041309   0.027716563  -0.000000000
                        -0.003050826  -0.000111092   0.322050672   0.005707769   0.256724292   0.002151036  -0.074036723  -0.000000000

   23    2.1  1.5 -1.5   0.013983219   0.000509208  -0.322725284  -0.005719726  -0.256568789  -0.002149733   0.071551202  -0.000000000
                         0.093564018   0.003407019   0.137277356   0.002432994   0.124204277   0.001040680   0.026786962   0.000000000

   24    3.1  1.5 -1.5  -0.000020708   0.000572021  -0.000000363   0.000020704   0.000000388  -0.000046998  -0.000000004   0.000059747
                        -0.015299823   0.420165283  -0.007899008   0.445687309  -0.000522348   0.062342118   0.000000000  -0.112084461

   25    4.1  1.5 -1.5  -0.012114063   0.332677625   0.003922031  -0.221293622   0.002888302  -0.344716260  -0.000000001   0.208468266
                         0.000048641  -0.001338582   0.000009078  -0.000512361   0.000001567  -0.000186730  -0.000000007  -0.000968789

   26    5.1  1.5 -1.5   0.018067827   0.000657948   0.121461671   0.002152689  -0.028882420  -0.000242000   0.452789604   0.000000005
                         0.120269052   0.004379452  -0.051670976  -0.000915776   0.013941667   0.000116818   0.169346415  -0.000000011

   27    6.1  1.5 -1.5  -0.000048682   0.001339484   0.000010367  -0.000584868   0.000007833  -0.000934901   0.000000009   0.000468013
                        -0.012068092   0.331415128  -0.003092787   0.174504941  -0.000598698   0.071453938  -0.000000001   0.385397689

   28    7.1  1.5 -1.5  -0.007365847   0.202281645   0.000601781  -0.033954453   0.002425053  -0.289427616   0.000000000  -0.320990082
                         0.000009493  -0.000262482   0.000000157  -0.000009018  -0.000000372   0.000044999   0.000000007  -0.000080429

   29    1.1  0.5  0.5   0.000684873  -0.018808042  -0.001574906   0.088861212   0.000073209  -0.008737301   0.000000000  -0.018368690
                        -0.000000895   0.000024710   0.000000126  -0.000007181  -0.000000092   0.000011201   0.000000001  -0.000008615

   30    2.1  0.5  0.5  -0.001237261   0.033977771  -0.000003910   0.000220628  -0.000693150   0.082726758   0.000000000  -0.038279633
                         0.000001075  -0.000029797  -0.000000180   0.000010232   0.000000070  -0.000008462   0.000000001  -0.000014778

   31    3.1  0.5  0.5  -0.000002116   0.000058448   0.000000180  -0.000010254  -0.000000111   0.000013422   0.000000000  -0.000003020
                        -0.001256835   0.034515337   0.000389848  -0.021996460  -0.000725720   0.086613964   0.000000000   0.017979305

   32    4.1  0.5  0.5  -0.111848107  -0.004072812   0.017246048   0.000305656  -0.014846982  -0.000124401  -0.025270000   0.000000002
                         0.016760794   0.000610358   0.040554835   0.000718761  -0.030695893  -0.000257194   0.067565070   0.000000001

   33    5.1  0.5  0.5   0.003529554   0.000128533  -0.060247666  -0.001067782  -0.055363441  -0.000463878  -0.014458709  -0.000000000
                         0.023516897   0.000856339   0.025629673   0.000454240   0.026801432   0.000224563  -0.005402655   0.000000001

   34    6.1  0.5  0.5  -0.020857559  -0.000759543  -0.021723205  -0.000385005   0.002745671   0.000023005   0.082416075   0.000000001
                        -0.139127646  -0.005066163   0.009234404   0.000163664  -0.001329672  -0.000011141   0.030825742  -0.000000002

   35    7.1  0.5  0.5   0.000003258  -0.000089959  -0.000000126   0.000007147   0.000000034  -0.000004106   0.000000001  -0.000016837
                         0.002425118  -0.066598820  -0.001151236   0.064956399  -0.000027179   0.003243804  -0.000000000   0.063865586

   36    1.1  0.5 -0.5  -0.018600247  -0.000677305  -0.034776179  -0.000616346   0.003796983   0.000031816   0.006431991  -0.000000001
                         0.002788161   0.000101533  -0.081773666  -0.001449291   0.007869147   0.000065934  -0.017205764  -0.000000000

   37    2.1  0.5 -0.5   0.033600159   0.001223509  -0.000095775  -0.000001696  -0.036038535  -0.000301960   0.013406994  -0.000000001
                        -0.005051644  -0.000183959  -0.000199019  -0.000003527  -0.074464358  -0.000623920  -0.035855028  -0.000000001

   38    3.1  0.5 -0.5  -0.005103703  -0.000185857   0.020245346   0.000358812  -0.077965314  -0.000653254   0.016839133   0.000000000
                        -0.034135965  -0.001243019  -0.008600599  -0.000152432   0.037727824   0.000316115   0.006300713  -0.000000000

   39    4.1  0.5 -0.5  -0.004118289   0.113096859  -0.000781053   0.044069500   0.000285700  -0.034097955   0.000000000  -0.072136060
                         0.000005561  -0.000153671   0.000000076  -0.000004344  -0.000000095   0.000011514   0.000000002  -0.000022308

   40    5.1  0.5 -0.5  -0.000000971   0.000026899  -0.000000035   0.000002010  -0.000000001   0.000000165   0.000000001  -0.000009498
                        -0.000865931   0.023780275   0.001160384  -0.065472600   0.000515375  -0.061509572  -0.000000000   0.015435117

   41    6.1  0.5 -0.5   0.000006602  -0.000182411   0.000000097  -0.000005497   0.000000004  -0.000000452  -0.000000002   0.000025975
                         0.005122780  -0.140682289   0.000418347  -0.023604487  -0.000025561   0.003050695   0.000000000  -0.087992245

   42    7.1  0.5 -0.5   0.009870377   0.000359436  -0.059776238  -0.001059426  -0.002917893  -0.000024449   0.059817644   0.000000001
                         0.065863393   0.002398335   0.025419191   0.000450510   0.001417103   0.000011873   0.022375497  -0.000000001


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.001241427   0.377145337   0.024759675  -0.000290315   0.080894484  -0.001913354   0.037289033  -0.001437488
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000  -0.000000071   0.000001080  -0.000000013  -0.000000020   0.000000001  -0.000000025  -0.000000000
                        -0.001241606  -0.377199714  -0.023833610   0.000279456   0.016243934  -0.000384209  -0.085088034   0.003280135

    3    3.1  1.5  1.5  -0.195587551   0.000643804  -0.003306859  -0.282027765   0.001022334   0.043223164  -0.001556680  -0.040380914
                        -0.094084720   0.000309693  -0.000593417  -0.050609948   0.001030721   0.043577752   0.001239728   0.032159036

    4    4.1  1.5  1.5  -0.091505350   0.000301203  -0.000652249  -0.055627510   0.000630679   0.026664388   0.001355357   0.035158484
                         0.190886413  -0.000628329   0.003552645   0.302989854  -0.000626279  -0.026478369   0.001692685   0.043908934

    5    5.1  1.5  1.5   0.000000043   0.000012915  -0.000196711   0.000002307   0.000000001  -0.000000000  -0.000000019   0.000000001
                         0.000029638   0.009004018  -0.168787328   0.001979081   0.088711528  -0.002098246  -0.049916633   0.001924281

    6    6.1  1.5  1.5  -0.094863498   0.000312257   0.005192932   0.442882897   0.000131621   0.005564808  -0.001622507  -0.042088487
                        -0.044942936   0.000147936   0.000941770   0.080319474   0.000129245   0.005464328   0.001299682   0.033714256

    7    7.1  1.5  1.5  -0.049982824   0.000164525   0.000902087   0.076935085  -0.000114013  -0.004820341   0.001485712   0.038539968
                         0.103998566  -0.000342326  -0.005027992  -0.428815860   0.000113106   0.004782003   0.001865644   0.048395562

    8    1.1  1.5  0.5   0.010757677  -0.000035410   0.000780941   0.066603111   0.000863891   0.036524361  -0.000736365  -0.019101598
                        -0.022302343   0.000073411  -0.004352373  -0.371195233  -0.000856844  -0.036226433  -0.000924639  -0.023985501

    9    2.1  1.5  0.5  -0.024804561   0.000081648  -0.004350192  -0.371009212  -0.001125759  -0.047595840  -0.001066660  -0.027669583
                        -0.011961042   0.000039371  -0.000780552  -0.066569950  -0.001135019  -0.047987322   0.000849477   0.022035775

   10    3.1  1.5  0.5   0.000000040   0.000012028  -0.000228673   0.000002681   0.000001228  -0.000000029  -0.000000095   0.000000005
                        -0.001082628  -0.328902453  -0.219802070   0.002577244  -0.017032231   0.000402854   0.076966654  -0.002967057

   11    4.1  1.5  0.5  -0.001128064  -0.342705624   0.168944184  -0.001980920   0.061699203  -0.001459338   0.035715878  -0.001376843
                         0.000002078   0.000631163   0.000189708  -0.000002224  -0.000239811   0.000005672  -0.000018176   0.000000701

   12    5.1  1.5  0.5   0.455881030  -0.001500596  -0.000407340  -0.034740255   0.000471783   0.019946451  -0.001659956  -0.043059934
                         0.219241862  -0.000721665  -0.000072627  -0.006194038   0.000475663   0.020110516   0.001321966   0.034292332

   13    6.1  1.5  0.5  -0.000003042  -0.000924228   0.000304457  -0.000003570   0.000169345  -0.000004005   0.000096919  -0.000003737
                        -0.000734702  -0.223202495  -0.149164311   0.001748996   0.087676919  -0.002073775   0.006213306  -0.000239522

   14    7.1  1.5  0.5  -0.000848382  -0.257738460   0.127057537  -0.001489787  -0.023605356   0.000558325   0.064280375  -0.002478002
                         0.000000014   0.000004359  -0.000171635   0.000002013   0.000001162  -0.000000027   0.000000696  -0.000000028

   15    1.1  1.5 -0.5  -0.000081505  -0.024761286   0.377122900  -0.004421877   0.051443011  -0.001216754  -0.030662278   0.001182028
                         0.000000095   0.000028881  -0.000439866   0.000005158   0.000000015  -0.000000000   0.000000101  -0.000000004

   16    2.1  1.5 -0.5  -0.000000095  -0.000028880   0.000439859  -0.000005158   0.000000017  -0.000000001   0.000000075  -0.000000003
                        -0.000090645  -0.027537827   0.376933947  -0.004419662   0.067588069  -0.001598625  -0.035372040   0.001363589

   17    3.1  1.5 -0.5   0.296411960  -0.000975681  -0.002536791  -0.216352052  -0.000283713  -0.011995053  -0.002320965  -0.060206783
                         0.142536919  -0.000469180  -0.000454844  -0.038791646  -0.000286005  -0.012091964   0.001848391   0.047947984

   18    4.1  1.5 -0.5  -0.149098918   0.000490780  -0.000345383  -0.029456219  -0.001040120  -0.043975111  -0.000857184  -0.022235699
                         0.308572610  -0.001015710   0.001950580   0.166356559   0.001023646   0.043278619  -0.001077466  -0.027949919

   19    5.1  1.5 -0.5  -0.000000001  -0.000000158   0.000002414  -0.000000028  -0.000000009   0.000000000  -0.000000011  -0.000000000
                         0.001665110   0.505860166   0.035288120  -0.000413764  -0.028324790   0.000669951  -0.055046543   0.002122039

   20    6.1  1.5 -0.5   0.200749427  -0.000660795  -0.001722489  -0.146903674   0.001457519   0.061622285  -0.000189693  -0.004920710
                         0.097569849  -0.000321165  -0.000303365  -0.025872670   0.001475194   0.062369583   0.000146292   0.003794888

   21    7.1  1.5 -0.5  -0.111708902   0.000367705  -0.000263380  -0.022462517   0.000396428   0.016760545  -0.001543743  -0.040045284
                         0.232271899  -0.000764555   0.001466322   0.125056318  -0.000393156  -0.016622183  -0.001938390  -0.050282620

   22    1.1  1.5 -1.5  -0.163456436   0.000538040   0.000050939   0.004344338   0.001358475   0.057434822   0.000895512   0.023229945
                         0.339883214  -0.001118773  -0.000285811  -0.024375566  -0.001347393  -0.056966295   0.001124469   0.029169189

   23    2.1  1.5 -1.5  -0.339932188   0.001118934   0.000275123   0.023464057  -0.000270562  -0.011439073  -0.002565872  -0.066559773
                        -0.163480067   0.000538118   0.000049021   0.004180788  -0.000272787  -0.011533126   0.002043426   0.053007265

   24    3.1  1.5 -1.5   0.000000068   0.000020610  -0.000340157   0.000003989  -0.000000639   0.000000015  -0.000000177   0.000000007
                         0.000714418   0.217040144  -0.286532566   0.003359679   0.061378029  -0.001451742   0.051621913  -0.001990020

   25    4.1  1.5 -1.5  -0.000696793  -0.211685571   0.308049842  -0.003611975  -0.037577827   0.000888808  -0.056250257   0.002168442
                        -0.000000877  -0.000266424  -0.001601866   0.000018782  -0.000022363   0.000000529  -0.000148632   0.000005730

   26    5.1  1.5 -1.5   0.008108819  -0.000026691   0.001947974   0.166134334  -0.001477595  -0.062471095  -0.001505261  -0.039047088
                         0.003914020  -0.000012884   0.000349521   0.029809121  -0.001489748  -0.062984899   0.001198769   0.031096545

   27    6.1  1.5 -1.5  -0.000002013  -0.000611700   0.001365107  -0.000016006  -0.000102989   0.000002436  -0.000152974   0.000005897
                         0.000345521   0.104969408   0.450105115  -0.005277615   0.007798420  -0.000184452   0.053926509  -0.002078862

   28    7.1  1.5 -1.5  -0.000379810  -0.115386237  -0.435662481   0.005108271   0.006789937  -0.000160599  -0.061866465   0.002384946
                        -0.000000095  -0.000028933   0.000501427  -0.000005880   0.000000699  -0.000000016   0.000001251  -0.000000048

   29    1.1  0.5  0.5   0.000000004   0.000001156   0.000000729  -0.000000009   0.738279699  -0.017462135   0.022915694  -0.000883398
                        -0.000000000  -0.000000000  -0.000000001   0.000000000  -0.000000052   0.000000002  -0.000000196   0.000000008

   30    2.1  0.5  0.5   0.000000003   0.000000959   0.000000484  -0.000000006  -0.005809862   0.000137418   0.287824706  -0.011095614
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000051   0.000000002   0.000000255  -0.000000016

   31    3.1  0.5  0.5   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000105   0.000000003  -0.000000362   0.000000012
                         0.000000003   0.000000915  -0.000000363   0.000000004   0.225349289  -0.005330066   0.168911608  -0.006511525

   32    4.1  0.5  0.5   0.000000065  -0.000000000   0.000000003   0.000000272   0.005579500   0.235895025  -0.003890600  -0.100923751
                        -0.000000134   0.000000000  -0.000000018  -0.000001517  -0.005533977  -0.233970429  -0.004885254  -0.126725514

   33    5.1  0.5  0.5   0.000000149  -0.000000000   0.000000003   0.000000241   0.006166871   0.260728510  -0.017501645  -0.453999828
                         0.000000072  -0.000000000   0.000000001   0.000000043   0.006217594   0.262872962   0.013938092   0.361559606

   34    6.1  0.5  0.5  -0.000000146   0.000000000  -0.000000016  -0.000001385  -0.000246887  -0.010438101  -0.009679639  -0.251093737
                        -0.000000071   0.000000000  -0.000000003  -0.000000249  -0.000248911  -0.010523651   0.007708682   0.199966255

   35    7.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000001   0.000000000   0.000000139  -0.000000003   0.000000427  -0.000000011
                         0.000000007   0.000002104  -0.000000914   0.000000011  -0.339935243   0.008040307   0.616618128  -0.023770569

   36    1.1  0.5 -0.5  -0.000000501   0.000000002   0.000000002   0.000000129   0.012398061   0.524176237   0.000550324   0.014275634
                         0.000001042  -0.000000003  -0.000000008  -0.000000718  -0.012296921  -0.519900170   0.000691039   0.017925827

   37    2.1  0.5 -0.5  -0.000000416   0.000000001   0.000000001   0.000000085  -0.000097565  -0.004124948   0.006912246   0.179306331
                         0.000000865  -0.000000003  -0.000000006  -0.000000476   0.000096772   0.004091370   0.008679488   0.225149509

   38    3.1  0.5 -0.5   0.000000824  -0.000000003   0.000000004   0.000000357  -0.003753461  -0.158692155   0.005093605   0.132130170
                         0.000000397  -0.000000001   0.000000001   0.000000064  -0.003784328  -0.159997193  -0.004056494  -0.105227133

   39    4.1  0.5 -0.5   0.000000000   0.000000149  -0.000001541   0.000000018  -0.332247836   0.007858481   0.162002961  -0.006245197
                        -0.000000000  -0.000000000   0.000000002  -0.000000000   0.000000192  -0.000000005   0.000000998  -0.000000040

   40    5.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000038  -0.000000001  -0.000000251   0.000000015
                        -0.000000001  -0.000000165   0.000000245  -0.000000003   0.370245257  -0.008757213   0.580380214  -0.022373600

   41    6.1  0.5 -0.5   0.000000000   0.000000000  -0.000000002   0.000000000   0.000000211  -0.000000005   0.000001080  -0.000000040
                         0.000000001   0.000000163  -0.000001407   0.000000016  -0.014822320   0.000350584   0.320989981  -0.012374134

   42    7.1  0.5 -0.5   0.000001896  -0.000000006   0.000000011   0.000000899   0.005662026   0.239384175   0.018594435   0.482347206
                         0.000000912  -0.000000003   0.000000002   0.000000162   0.005708590   0.241352826  -0.014808341  -0.384134206


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.059881837   0.000072021  -0.000221553  -0.001316070   0.041224711   0.019769625   0.045039566   0.000000000
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000045  -0.000000000   0.000000015   0.000000104   0.000000000   0.000000000   0.000000000   0.000000000
                         0.063245324   0.000076067   0.000531170   0.003155259  -0.041360959  -0.019834964  -0.044939270  -0.000000000

    3    3.1  1.5  1.5   0.000015405  -0.012809405  -0.027288802   0.004593875   0.018307566  -0.038175946  -0.000000000   0.007253866
                        -0.000032120   0.026705968   0.065105184  -0.010960106   0.020455375  -0.042654676   0.000000000  -0.006147168

    4    4.1  1.5  1.5  -0.000007225   0.006006983  -0.076620674   0.012898676   0.010160817  -0.021187896   0.000000001  -0.027686847
                        -0.000003518   0.002923736  -0.032290938   0.005435949  -0.009123298   0.019024404   0.000000000  -0.032572149

    5    5.1  1.5  1.5  -0.000000038  -0.000000001  -0.000000342  -0.000002146  -0.000000009  -0.000000004  -0.000000016  -0.000000001
                        -0.089217580  -0.000107304  -0.004931503  -0.029294146   0.023252217   0.011150778  -0.018346070   0.000000001

    6    6.1  1.5  1.5  -0.000007369   0.006126409  -0.023057829   0.003881621   0.005274305  -0.010998271   0.000000001   0.018042316
                         0.000015309  -0.012728962   0.054425854  -0.009162299   0.005837088  -0.012171818  -0.000000001  -0.015441345

    7    7.1  1.5  1.5   0.000032980  -0.027421151  -0.046975694   0.007908104  -0.000650196   0.001355824  -0.000000001  -0.032361013
                         0.000015819  -0.013152784  -0.019687249   0.003314208   0.000582432  -0.001214520  -0.000000000  -0.038189654

    8    1.1  1.5  0.5  -0.000056386   0.046882249  -0.065785534   0.011074639  -0.008258322   0.017220708   0.000000001  -0.021044312
                        -0.000027047   0.022487646  -0.027572973   0.004641712   0.007391063  -0.015412252   0.000000001  -0.024834199

    9    2.1  1.5  0.5  -0.000035458   0.029481361   0.012367584  -0.002081995  -0.012928127   0.026958443  -0.000000000   0.035297575
                         0.000073923  -0.061462799  -0.029507632   0.004967450  -0.014445082   0.030121681  -0.000000000  -0.029910886

   10    3.1  1.5  0.5   0.000001682   0.000000002  -0.000000792  -0.000004894  -0.000000891  -0.000000427   0.000000882  -0.000000001
                        -0.042585019  -0.000051219  -0.008417966  -0.050004452  -0.012111268  -0.005808051   0.007867243   0.000000001

   11    4.1  1.5  0.5   0.058800202   0.000070720  -0.008735773  -0.051892290  -0.044964562  -0.021563099   0.034292263  -0.000000000
                        -0.000163464  -0.000000196  -0.000031319  -0.000185854  -0.000106429  -0.000051039   0.000144523  -0.000000000

   12    5.1  1.5  0.5   0.000000474  -0.000393866   0.000812898  -0.000136846  -0.011864795   0.024741124  -0.000000000  -0.030540875
                        -0.000000988   0.000821086  -0.001939721   0.000326542  -0.013256971   0.027644167  -0.000000000   0.025880114

   13    6.1  1.5  0.5   0.000162301   0.000000196  -0.000023301  -0.000138154  -0.000123354  -0.000059156   0.000094426  -0.000000000
                         0.059945996   0.000072099   0.011695586   0.069474193   0.038938498   0.018673254  -0.052828160   0.000000000

   14    7.1  1.5  0.5  -0.080801687  -0.000097182   0.010953743   0.065067487   0.015022323   0.007204069  -0.034433595  -0.000000001
                         0.000000557  -0.000000000  -0.000000648  -0.000004086   0.000000468   0.000000224  -0.000000744  -0.000000001

   15    1.1  1.5 -0.5  -0.051996534  -0.000062538  -0.012008044  -0.071330255   0.023110394   0.011082766  -0.032551505  -0.000000001
                         0.000000032   0.000000001   0.000000813   0.000005096  -0.000000021  -0.000000010   0.000000005  -0.000000000

   16    2.1  1.5 -0.5  -0.000000019   0.000000000   0.000000354   0.000002215  -0.000000015  -0.000000007   0.000000017   0.000000000
                        -0.068167634  -0.000081987   0.005386118   0.031994647  -0.040423673  -0.019385480   0.046266402   0.000000000

   17    3.1  1.5 -0.5   0.000022150  -0.018415781   0.019330624  -0.003254172   0.003873057  -0.008076313   0.000000001  -0.006002647
                        -0.000046182   0.038397172  -0.046116941   0.007763538   0.004328150  -0.009025297  -0.000000001   0.005085443

   18    4.1  1.5 -0.5  -0.000063679   0.052946041   0.047931805  -0.008069060  -0.016033690   0.033434335  -0.000000001  -0.022279963
                        -0.000030762   0.025577475   0.019884325  -0.003347385   0.014418412  -0.030066068  -0.000000000  -0.026068821

   19    5.1  1.5 -0.5   0.000000020  -0.000000000   0.000000008   0.000000053  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.000910666   0.000001096   0.000354057   0.002103169  -0.037098830  -0.017791027  -0.040031555   0.000000000

   20    6.1  1.5 -0.5  -0.000031358   0.026071962  -0.026723510   0.004498711  -0.012497229   0.026059912  -0.000000000   0.040242615
                         0.000064923  -0.053979640   0.064129062  -0.010795781  -0.013874911   0.028932730  -0.000000000  -0.034225068

   21    7.1  1.5 -0.5   0.000087623  -0.072853960  -0.060009807   0.010102327   0.005367958  -0.011193562  -0.000000001   0.022261641
                         0.000042029  -0.034945859  -0.025151559   0.004234086  -0.004804544   0.010018701  -0.000000001   0.026269598

   22    1.1  1.5 -1.5   0.000064937  -0.053991984  -0.001213804   0.000204337  -0.014731322   0.030718565   0.000000000   0.029117758
                         0.000031148  -0.025897877  -0.000508645   0.000085628   0.013184317  -0.027492665   0.000000000   0.034361587

   23    2.1  1.5 -1.5   0.000032897  -0.027352569   0.001219565  -0.000205304  -0.013227891   0.027583528   0.000000000  -0.034285069
                        -0.000068585   0.057024626  -0.002910038   0.000489889  -0.014780009   0.030820090  -0.000000000   0.029052917

   24    3.1  1.5 -1.5   0.000000378   0.000000001   0.000000958   0.000005953   0.000000475   0.000000228   0.000000225   0.000000000
                        -0.029619075  -0.000035623   0.011883922   0.070592944  -0.057243552  -0.027451582  -0.009508220  -0.000000000

   25    4.1  1.5 -1.5   0.006680615   0.000008036   0.013997307   0.083146881   0.028475477   0.013655632   0.042749294   0.000000001
                        -0.000038245  -0.000000047  -0.000028365  -0.000168799   0.000045863   0.000021994   0.000065189   0.000000000

   26    5.1  1.5 -1.5  -0.000046408   0.038585122  -0.011323810   0.001906281   0.007436431  -0.015506856  -0.000000001  -0.013996595
                         0.000096750  -0.080442308   0.027017001  -0.004548166   0.008308991  -0.017326367   0.000000001   0.011860591

   27    6.1  1.5 -1.5   0.000018768   0.000000023   0.000038881   0.000231181   0.000077997   0.000037404   0.000116283  -0.000000001
                         0.014126535   0.000016991   0.009950537   0.059108237  -0.016404544  -0.007866924  -0.023747564   0.000000001

   28    7.1  1.5 -1.5  -0.030412419  -0.000036577   0.008574502   0.050934307  -0.001820252  -0.000872916   0.050056816  -0.000000001
                        -0.000000078  -0.000000001  -0.000000290  -0.000001909  -0.000000803  -0.000000385  -0.000000474  -0.000000000

   29    1.1  0.5  0.5  -0.019005287  -0.000022859   0.007917441   0.047031230   0.580987175   0.278616831  -0.043970865   0.000000002
                         0.000000113  -0.000000000  -0.000000572  -0.000003567  -0.000000083  -0.000000039   0.000000137   0.000000002

   30    2.1  0.5  0.5  -0.615653861  -0.000740465  -0.048778945  -0.289756994   0.000772888   0.000370646   0.510444995   0.000000010
                         0.000000364   0.000000002   0.000003209   0.000020174   0.000000187   0.000000089  -0.000000044   0.000000004

   31    3.1  0.5  0.5   0.000000142  -0.000000002  -0.000001591  -0.000009945  -0.000000142  -0.000000067   0.000000144   0.000000000
                         0.668426841   0.000803931  -0.024730701  -0.146905424  -0.179867150  -0.086256662   0.615952722   0.000000002

   32    4.1  0.5  0.5  -0.000364199   0.302812262   0.497130512  -0.083689235   0.121572388  -0.253509446   0.000000010   0.212355769
                        -0.000174685   0.145247418   0.208363829  -0.035076566  -0.108805499   0.226887225   0.000000004   0.250599286

   33    5.1  0.5  0.5   0.000032992  -0.027428837   0.100716654  -0.016954929   0.130444339  -0.272009726  -0.000000002   0.331124478
                        -0.000068779   0.057183067  -0.240299915   0.040453192   0.145750217  -0.303926385   0.000000005  -0.280592501

   34    6.1  0.5  0.5  -0.000066974   0.055677105  -0.249489519   0.041999774   0.029473239  -0.061459223   0.000000006   0.100729292
                         0.000139606  -0.116075626   0.595249263  -0.100206996   0.032931638  -0.068670869  -0.000000014  -0.085357164

   35    7.1  0.5  0.5  -0.000000074   0.000000005   0.000002687   0.000016800   0.000000148   0.000000070   0.000000006   0.000000004
                         0.009418751   0.000011328   0.037814012   0.224623022   0.369812449   0.177346380   0.158185401  -0.000000010

   36    1.1  0.5 -0.5  -0.000020610   0.017135918   0.043375267  -0.007301992  -0.207611162   0.432922241  -0.000000003  -0.028426745
                        -0.000009886   0.008219565   0.018180286  -0.003060522   0.185808891  -0.387458941  -0.000000000  -0.033546342

   37    2.1  0.5 -0.5  -0.000667633   0.555099272  -0.267233490   0.044987313  -0.000276127   0.000575792  -0.000000010   0.329999013
                        -0.000320240   0.266260163  -0.112006151   0.018855427   0.000247249  -0.000515577  -0.000000005   0.389428741

   38    3.1  0.5 -0.5   0.000347685  -0.289083380  -0.056786327   0.009559582  -0.057524319   0.119952880  -0.000000001   0.469922765
                        -0.000724859   0.602681708   0.135486224  -0.022808374  -0.064274136   0.134027975   0.000000001  -0.398208929

   39    4.1  0.5 -0.5   0.335845319   0.000403925  -0.090742788  -0.539030825   0.340212951   0.163151715  -0.328473705   0.000000009
                        -0.000000027   0.000000006   0.000006056   0.000037938  -0.000000006  -0.000000002   0.000000179   0.000000005

   40    5.1  0.5 -0.5  -0.000000288  -0.000000002  -0.000002773  -0.000017431   0.000000054   0.000000026   0.000000028   0.000000002
                        -0.063421165  -0.000076282  -0.043862631  -0.260553053  -0.407873190  -0.195598700  -0.434022547  -0.000000005

   41    6.1  0.5 -0.5   0.000000085   0.000000009   0.000007379   0.000046236  -0.000000147  -0.000000070  -0.000000078  -0.000000007
                         0.128738071   0.000154840   0.108652763   0.645419788  -0.092157063  -0.044194622  -0.132031192   0.000000014

   42    7.1  0.5 -0.5   0.000004904  -0.004073383   0.086829553  -0.014617132   0.118271838  -0.246626956   0.000000005   0.120682815
                        -0.000010212   0.008492375  -0.207162089   0.034874618   0.132149577  -0.275565585  -0.000000010  -0.102265728


   Nr   State  S   Sz       41            42

    1    1.1  1.5  1.5  -0.000000000  -0.005956085
                         0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.000000001
                        -0.000000000   0.005607266

    3    3.1  1.5  1.5  -0.004126550  -0.000000001
                        -0.010848952   0.000000002

    4    4.1  1.5  1.5  -0.034433167   0.000000008
                         0.012940619   0.000000003

    5    5.1  1.5  1.5   0.000000008  -0.000000194
                         0.000000009   0.063113936

    6    6.1  1.5  1.5   0.018529374   0.000000004
                         0.049011773  -0.000000009

    7    7.1  1.5  1.5   0.032472279  -0.000000005
                        -0.012347490  -0.000000002

    8    1.1  1.5  0.5  -0.046154873   0.000000010
                         0.017551333   0.000000004

    9    2.1  1.5  0.5  -0.000826330  -0.000000001
                        -0.002173024   0.000000001

   10    3.1  1.5  0.5   0.000000009   0.000000002
                         0.000000009   0.061753535

   11    4.1  1.5  0.5  -0.000000003  -0.021683119
                         0.000000002  -0.000010988

   12    5.1  1.5  0.5  -0.001897733  -0.000000000
                        -0.004990527   0.000000000

   13    6.1  1.5  0.5  -0.000000000  -0.000058525
                        -0.000000000   0.003619725

   14    7.1  1.5  0.5  -0.000000009  -0.055944222
                         0.000000008   0.000000480

   15    1.1  1.5 -0.5  -0.000000008  -0.049379364
                         0.000000007  -0.000000145

   16    2.1  1.5 -0.5   0.000000001  -0.000000000
                         0.000000001   0.002324835

   17    3.1  1.5 -0.5   0.021949420   0.000000005
                         0.057721071  -0.000000011

   18    4.1  1.5 -0.5   0.020263320  -0.000000003
                        -0.007717228  -0.000000001

   19    5.1  1.5 -0.5   0.000000000   0.000000000
                         0.000000000   0.005339171

   20    6.1  1.5 -0.5   0.001341284  -0.000000000
                         0.003362557   0.000000000

   21    7.1  1.5 -0.5   0.052291272  -0.000000011
                        -0.019884135  -0.000000005

   22    1.1  1.5 -1.5  -0.005567157   0.000000000
                         0.002117006   0.000000000

   23    2.1  1.5 -1.5  -0.001993023   0.000000000
                        -0.005241116  -0.000000000

   24    3.1  1.5 -1.5  -0.000000002   0.000000982
                        -0.000000002  -0.011607247

   25    4.1  1.5 -1.5   0.000000006   0.036784265
                        -0.000000006  -0.000143177

   26    5.1  1.5 -1.5  -0.022433138  -0.000000005
                        -0.058992569   0.000000011

   27    6.1  1.5 -1.5   0.000000007   0.000101124
                         0.000000007   0.052397341

   28    7.1  1.5 -1.5  -0.000000004  -0.034740602
                         0.000000004   0.000000605

   29    1.1  0.5  0.5   0.000000008   0.054777916
                        -0.000000007   0.000000336

   30    2.1  0.5  0.5   0.000000066   0.399646603
                        -0.000000064   0.000001258

   31    3.1  0.5  0.5   0.000000015  -0.000000116
                         0.000000015   0.032833308

   32    4.1  0.5  0.5  -0.385463735   0.000000068
                         0.146580553   0.000000029

   33    5.1  0.5  0.5  -0.058739774  -0.000000018
                        -0.154467905   0.000000041

   34    6.1  0.5  0.5   0.222656156   0.000000048
                         0.585520595  -0.000000111

   35    7.1  0.5  0.5  -0.000000063   0.000001297
                        -0.000000065  -0.476472142

   36    1.1  0.5 -0.5   0.051200835  -0.000000010
                        -0.019470351  -0.000000004

   37    2.1  0.5 -0.5   0.373549500  -0.000000085
                        -0.142049916  -0.000000037

   38    3.1  0.5 -0.5  -0.011670244  -0.000000009
                        -0.030689273   0.000000020

   39    4.1  0.5 -0.5   0.000000054   0.412393198
                        -0.000000051   0.000001301

   40    5.1  0.5 -0.5  -0.000000031   0.000000671
                        -0.000000032  -0.165259477

   41    6.1  0.5 -0.5   0.000000084  -0.000001834
                         0.000000087   0.626426477

   42    7.1  0.5 -0.5   0.169356504   0.000000036
                         0.445358369  -0.000000083


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5  32.060%   0.009%   0.000%   0.154%   0.377%   0.000%   2.999%   0.076%   0.040%   0.000%
    2    2.1  1.5  1.5  34.035%   0.009%   0.000%   0.014%   0.033%   0.000%   1.562%   0.040%   0.020%   0.000%
    3    3.1  1.5  1.5   0.000%   0.003%  11.819%   0.007%   0.000%   2.678%   0.162%   6.371%   0.000%  13.254%
    4    4.1  1.5  1.5   0.000%   0.052%  14.893%   0.009%   0.000%   0.052%   0.034%   1.339%   0.000%  19.008%
    5    5.1  1.5  1.5   0.103%   0.000%   0.001%   1.166%  21.978%   0.001%   0.547%   0.014%   0.000%   0.000%
    6    6.1  1.5  1.5   0.000%   0.001%   5.958%   0.003%   0.000%   0.003%   0.021%   0.837%   0.000%  36.262%
    7    7.1  1.5  1.5   0.000%   0.011%   6.693%   0.004%   0.000%   0.880%   0.100%   3.945%   0.000%  30.360%
    8    1.1  1.5  0.5   0.000%   0.013%  17.025%   0.010%   0.001%  18.603%   0.001%   0.051%   0.000%   0.010%
    9    2.1  1.5  0.5   0.000%   0.131%  31.102%   0.018%   0.000%   3.921%   0.013%   0.519%   0.000%   0.012%
   10    3.1  1.5  0.5   5.620%   0.002%   0.000%   0.326%  14.133%   0.001%  16.487%   0.419%   0.147%   0.000%
   11    4.1  1.5  0.5   8.747%   0.002%   0.003%   5.236%  15.640%   0.001%   6.148%   0.156%   0.108%   0.000%
   12    5.1  1.5  0.5   0.000%   0.143%   0.324%   0.000%   0.000%   0.800%   1.134%  44.630%   0.000%   0.588%
   13    6.1  1.5  0.5  10.509%   0.003%   0.003%   4.955%   5.410%   0.000%   7.194%   0.183%   0.083%   0.000%
   14    7.1  1.5  0.5   8.545%   0.002%   0.000%   0.279%  15.485%   0.001%   4.891%   0.124%   0.107%   0.000%
   15    1.1  1.5 -0.5   0.013%   0.000%   0.010%  17.025%  18.603%   0.001%   0.051%   0.001%   0.010%   0.000%
   16    2.1  1.5 -0.5   0.131%   0.000%   0.018%  31.102%   3.921%   0.000%   0.519%   0.013%   0.012%   0.000%
   17    3.1  1.5 -0.5   0.002%   5.620%   0.326%   0.000%   0.001%  14.133%   0.419%  16.487%   0.000%   0.147%
   18    4.1  1.5 -0.5   0.002%   8.747%   5.236%   0.003%   0.001%  15.640%   0.156%   6.148%   0.000%   0.108%
   19    5.1  1.5 -0.5   0.143%   0.000%   0.000%   0.324%   0.800%   0.000%  44.630%   1.134%   0.588%   0.000%
   20    6.1  1.5 -0.5   0.003%  10.509%   4.955%   0.003%   0.000%   5.410%   0.183%   7.194%   0.000%   0.083%
   21    7.1  1.5 -0.5   0.002%   8.545%   0.279%   0.000%   0.001%  15.485%   0.124%   4.891%   0.000%   0.107%
   22    1.1  1.5 -1.5   0.009%  32.060%   0.154%   0.000%   0.000%   0.377%   0.076%   2.999%   0.000%   0.040%
   23    2.1  1.5 -1.5   0.009%  34.035%   0.014%   0.000%   0.000%   0.033%   0.040%   1.562%   0.000%   0.020%
   24    3.1  1.5 -1.5   0.003%   0.000%   0.007%  11.819%   2.678%   0.000%   6.371%   0.162%  13.254%   0.000%
   25    4.1  1.5 -1.5   0.052%   0.000%   0.009%  14.893%   0.052%   0.000%   1.339%   0.034%  19.008%   0.000%
   26    5.1  1.5 -1.5   0.000%   0.103%   1.166%   0.001%   0.001%  21.978%   0.014%   0.547%   0.000%   0.000%
   27    6.1  1.5 -1.5   0.001%   0.000%   0.003%   5.958%   0.003%   0.000%   0.837%   0.021%  36.262%   0.000%
   28    7.1  1.5 -1.5   0.011%   0.000%   0.004%   6.693%   0.880%   0.000%   3.945%   0.100%  30.360%   0.000%
   29    1.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   30    2.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   31    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   32    4.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   33    5.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   34    6.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   35    7.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   36    1.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    2.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38    3.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39    4.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40    5.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    6.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   42    7.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      11       12       13       14       15       16       17       18       19       20

    1    1.1  1.5  1.5   0.001%   9.656%  13.264%   0.000%   4.374%   0.082%   0.000%   0.042%   0.004%  12.248%
    2    2.1  1.5  1.5   0.000%   0.847%   8.537%   0.000%  16.823%   0.316%   0.001%   0.895%   0.004%  12.300%
    3    3.1  1.5  1.5   6.895%   0.001%   0.000%   0.216%   0.089%   4.723%  17.654%   0.023%  19.864%   0.006%
    4    4.1  1.5  1.5   2.471%   0.000%   0.000%   0.032%   0.264%  14.071%  11.068%   0.015%   4.897%   0.002%
    5    5.1  1.5  1.5   0.004%  28.450%  14.356%   0.000%   1.381%   0.026%   0.002%   1.479%   0.001%   1.742%
    6    6.1  1.5  1.5   0.065%   0.000%   0.000%   1.297%   0.069%   3.668%  10.984%   0.015%   3.045%   0.001%
    7    7.1  1.5  1.5   0.858%   0.000%   0.000%   1.881%   0.202%  10.740%   4.092%   0.005%   0.115%   0.000%
    8    1.1  1.5  0.5  10.307%   0.001%   0.000%   5.932%   0.001%   0.040%  11.124%   0.015%   3.846%   0.001%
    9    2.1  1.5  0.5  15.556%   0.002%   0.000%   7.115%   0.033%   1.772%   2.936%   0.004%   8.656%   0.003%
   10    3.1  1.5  0.5   0.000%   0.935%   4.644%   0.000%  17.108%   0.321%   0.003%   2.226%   0.001%   1.707%
   11    4.1  1.5  0.5   0.001%   5.342%  10.368%   0.000%   5.853%   0.110%   0.007%   5.236%   0.003%  10.271%
   12    5.1  1.5  0.5   0.890%   0.000%   0.000%   0.120%   0.145%   7.727%   0.258%   0.000%   9.900%   0.003%
   13    6.1  1.5  0.5   0.002%  12.457%  15.197%   0.000%   0.002%   0.000%   0.015%  11.067%   0.002%   7.589%
   14    7.1  1.5  0.5   0.000%   1.225%  13.005%   0.000%   5.916%   0.111%   0.022%  16.781%   0.001%   1.850%
   15    1.1  1.5 -0.5   0.001%  10.307%   5.932%   0.000%   0.040%   0.001%   0.015%  11.124%   0.001%   3.846%
   16    2.1  1.5 -0.5   0.002%  15.556%   7.115%   0.000%   1.772%   0.033%   0.004%   2.936%   0.003%   8.656%
   17    3.1  1.5 -0.5   0.935%   0.000%   0.000%   4.644%   0.321%  17.108%   2.226%   0.003%   1.707%   0.001%
   18    4.1  1.5 -0.5   5.342%   0.001%   0.000%  10.368%   0.110%   5.853%   5.236%   0.007%  10.271%   0.003%
   19    5.1  1.5 -0.5   0.000%   0.890%   0.120%   0.000%   7.727%   0.145%   0.000%   0.258%   0.003%   9.900%
   20    6.1  1.5 -0.5  12.457%   0.002%   0.000%  15.197%   0.000%   0.002%  11.067%   0.015%   7.589%   0.002%
   21    7.1  1.5 -0.5   1.225%   0.000%   0.000%  13.005%   0.111%   5.916%  16.781%   0.022%   1.850%   0.001%
   22    1.1  1.5 -1.5   9.656%   0.001%   0.000%  13.264%   0.082%   4.374%   0.042%   0.000%  12.248%   0.004%
   23    2.1  1.5 -1.5   0.847%   0.000%   0.000%   8.537%   0.316%  16.823%   0.895%   0.001%  12.300%   0.004%
   24    3.1  1.5 -1.5   0.001%   6.895%   0.216%   0.000%   4.723%   0.089%   0.023%  17.654%   0.006%  19.864%
   25    4.1  1.5 -1.5   0.000%   2.471%   0.032%   0.000%  14.071%   0.264%   0.015%  11.068%   0.002%   4.897%
   26    5.1  1.5 -1.5  28.450%   0.004%   0.000%  14.356%   0.026%   1.381%   1.479%   0.002%   1.742%   0.001%
   27    6.1  1.5 -1.5   0.000%   0.065%   1.297%   0.000%   3.668%   0.069%   0.015%  10.984%   0.001%   3.045%
   28    7.1  1.5 -1.5   0.000%   0.858%   1.881%   0.000%  10.740%   0.202%   0.005%   4.092%   0.000%   0.115%
   29    1.1  0.5  0.5   0.000%   2.163%   0.054%   0.000%   0.052%   0.001%   0.000%   0.035%   0.000%   0.790%
   30    2.1  0.5  0.5   0.000%   0.014%   1.570%   0.000%   0.594%   0.011%   0.000%   0.115%   0.000%   0.000%
   31    3.1  0.5  0.5   0.000%   0.037%   2.010%   0.000%   0.136%   0.003%   0.000%   0.119%   0.000%   0.048%
   32    4.1  0.5  0.5   0.610%   0.000%   0.000%   0.236%   0.003%   0.174%   1.279%   0.002%   0.194%   0.000%
   33    5.1  0.5  0.5   0.357%   0.000%   0.000%   0.001%   0.035%   1.855%   0.057%   0.000%   0.429%   0.000%
   34    6.1  0.5  0.5   0.050%   0.000%   0.000%   0.163%   0.002%   0.108%   1.979%   0.003%   0.056%   0.000%
   35    7.1  0.5  0.5   0.000%   0.801%   0.000%   0.000%   1.040%   0.020%   0.001%   0.444%   0.000%   0.422%
   36    1.1  0.5 -0.5   2.163%   0.000%   0.000%   0.054%   0.001%   0.052%   0.035%   0.000%   0.790%   0.000%
   37    2.1  0.5 -0.5   0.014%   0.000%   0.000%   1.570%   0.011%   0.594%   0.115%   0.000%   0.000%   0.000%
   38    3.1  0.5 -0.5   0.037%   0.000%   0.000%   2.010%   0.003%   0.136%   0.119%   0.000%   0.048%   0.000%
   39    4.1  0.5 -0.5   0.000%   0.610%   0.236%   0.000%   0.174%   0.003%   0.002%   1.279%   0.000%   0.194%
   40    5.1  0.5 -0.5   0.000%   0.357%   0.001%   0.000%   1.855%   0.035%   0.000%   0.057%   0.000%   0.429%
   41    6.1  0.5 -0.5   0.000%   0.050%   0.163%   0.000%   0.108%   0.002%   0.003%   1.979%   0.000%   0.056%
   42    7.1  0.5 -0.5   0.801%   0.000%   0.000%   0.000%   0.020%   1.040%   0.444%   0.001%   0.422%   0.000%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.001%   8.135%   0.000%   0.625%   0.000%  14.224%   0.061%   0.000%   0.654%   0.000%
    2    2.1  1.5  1.5   0.001%   8.125%   0.000%   0.584%   0.000%  14.228%   0.057%   0.000%   0.026%   0.000%
    3    3.1  1.5  1.5   0.389%   0.000%   1.256%   0.000%   4.711%   0.000%   0.001%   8.210%   0.000%   0.377%
    4    4.1  1.5  1.5  11.883%   0.001%   4.346%   0.000%   4.481%   0.000%   0.001%   9.490%   0.000%   0.141%
    5    5.1  1.5  1.5   0.000%   0.103%   0.000%  23.370%   0.000%   0.008%   2.849%   0.000%   0.787%   0.000%
    6    6.1  1.5  1.5   0.511%   0.000%  14.853%   0.000%   1.102%   0.000%   0.003%  20.260%   0.000%   0.006%
    7    7.1  1.5  1.5   8.377%   0.001%  10.303%   0.000%   1.331%   0.000%   0.003%  18.980%   0.000%   0.005%
    8    1.1  1.5  0.5   9.936%   0.001%   7.229%   0.000%   0.061%   0.000%   0.002%  14.222%   0.000%   0.265%
    9    2.1  1.5  0.5  11.516%   0.001%   0.838%   0.000%   0.076%   0.000%   0.002%  14.208%   0.000%   0.457%
   10    3.1  1.5  0.5   0.000%   2.582%   0.000%  16.222%   0.000%  10.818%   4.831%   0.001%   0.029%   0.000%
   11    4.1  1.5  0.5   0.000%   4.792%   0.000%   5.832%   0.000%  11.745%   2.854%   0.000%   0.381%   0.000%
   12    5.1  1.5  0.5   6.413%   0.000%   0.493%   0.000%  25.589%   0.000%   0.000%   0.125%   0.000%   0.080%
   13    6.1  1.5  0.5   0.001%  14.013%   0.000%   2.010%   0.000%   4.982%   2.225%   0.000%   0.769%   0.000%
   14    7.1  1.5  0.5   0.001%  11.279%   0.000%  10.100%   0.000%   6.643%   1.614%   0.000%   0.056%   0.000%
   15    1.1  1.5 -0.5   0.001%   9.936%   0.000%   7.229%   0.000%   0.061%  14.222%   0.002%   0.265%   0.000%
   16    2.1  1.5 -0.5   0.001%  11.516%   0.000%   0.838%   0.000%   0.076%  14.208%   0.002%   0.457%   0.000%
   17    3.1  1.5 -0.5   2.582%   0.000%  16.222%   0.000%  10.818%   0.000%   0.001%   4.831%   0.000%   0.029%
   18    4.1  1.5 -0.5   4.792%   0.000%   5.832%   0.000%  11.745%   0.000%   0.000%   2.854%   0.000%   0.381%
   19    5.1  1.5 -0.5   0.000%   6.413%   0.000%   0.493%   0.000%  25.589%   0.125%   0.000%   0.080%   0.000%
   20    6.1  1.5 -0.5  14.013%   0.001%   2.010%   0.000%   4.982%   0.000%   0.000%   2.225%   0.000%   0.769%
   21    7.1  1.5 -0.5  11.279%   0.001%  10.100%   0.000%   6.643%   0.000%   0.000%   1.614%   0.000%   0.056%
   22    1.1  1.5 -1.5   8.135%   0.001%   0.625%   0.000%  14.224%   0.000%   0.000%   0.061%   0.000%   0.654%
   23    2.1  1.5 -1.5   8.125%   0.001%   0.584%   0.000%  14.228%   0.000%   0.000%   0.057%   0.000%   0.026%
   24    3.1  1.5 -1.5   0.000%   0.389%   0.000%   1.256%   0.000%   4.711%   8.210%   0.001%   0.377%   0.000%
   25    4.1  1.5 -1.5   0.001%  11.883%   0.000%   4.346%   0.000%   4.481%   9.490%   0.001%   0.141%   0.000%
   26    5.1  1.5 -1.5   0.103%   0.000%  23.370%   0.000%   0.008%   0.000%   0.000%   2.849%   0.000%   0.787%
   27    6.1  1.5 -1.5   0.000%   0.511%   0.000%  14.853%   0.000%   1.102%  20.260%   0.003%   0.006%   0.000%
   28    7.1  1.5 -1.5   0.001%   8.377%   0.000%  10.303%   0.000%   1.331%  18.980%   0.003%   0.005%   0.000%
   29    1.1  0.5  0.5   0.000%   0.008%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%  54.506%   0.030%
   30    2.1  0.5  0.5   0.000%   0.684%   0.000%   0.147%   0.000%   0.000%   0.000%   0.000%   0.003%   0.000%
   31    3.1  0.5  0.5   0.000%   0.750%   0.000%   0.032%   0.000%   0.000%   0.000%   0.000%   5.078%   0.003%
   32    4.1  0.5  0.5   0.116%   0.000%   0.520%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  11.039%
   33    5.1  0.5  0.5   0.378%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%   0.000%   0.008%  13.708%
   34    6.1  0.5  0.5   0.001%   0.000%   0.774%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.022%
   35    7.1  0.5  0.5   0.000%   0.001%   0.000%   0.408%   0.000%   0.000%   0.000%   0.000%  11.556%   0.006%
   36    1.1  0.5 -0.5   0.008%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   0.030%  54.506%
   37    2.1  0.5 -0.5   0.684%   0.000%   0.147%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%
   38    3.1  0.5 -0.5   0.750%   0.000%   0.032%   0.000%   0.000%   0.000%   0.000%   0.000%   0.003%   5.078%
   39    4.1  0.5 -0.5   0.000%   0.116%   0.000%   0.520%   0.000%   0.000%   0.000%   0.000%  11.039%   0.006%
   40    5.1  0.5 -0.5   0.000%   0.378%   0.000%   0.024%   0.000%   0.000%   0.000%   0.000%  13.708%   0.008%
   41    6.1  0.5 -0.5   0.000%   0.001%   0.000%   0.774%   0.000%   0.000%   0.000%   0.000%   0.022%   0.000%
   42    7.1  0.5 -0.5   0.001%   0.000%   0.408%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%  11.556%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.139%   0.000%   0.359%   0.000%   0.000%   0.000%   0.170%   0.039%   0.203%   0.000%
    2    2.1  1.5  1.5   0.724%   0.001%   0.400%   0.000%   0.000%   0.001%   0.171%   0.039%   0.202%   0.000%
    3    3.1  1.5  1.5   0.000%   0.266%   0.000%   0.088%   0.498%   0.014%   0.075%   0.328%   0.000%   0.009%
    4    4.1  1.5  1.5   0.000%   0.316%   0.000%   0.004%   0.691%   0.020%   0.019%   0.081%   0.000%   0.183%
    5    5.1  1.5  1.5   0.249%   0.000%   0.796%   0.000%   0.002%   0.086%   0.054%   0.012%   0.034%   0.000%
    6    6.1  1.5  1.5   0.000%   0.291%   0.000%   0.020%   0.349%   0.010%   0.006%   0.027%   0.000%   0.056%
    7    7.1  1.5  1.5   0.001%   0.383%   0.000%   0.092%   0.259%   0.007%   0.000%   0.000%   0.000%   0.251%
    8    1.1  1.5  0.5   0.000%   0.094%   0.000%   0.270%   0.509%   0.014%   0.012%   0.053%   0.000%   0.106%
    9    2.1  1.5  0.5   0.000%   0.125%   0.000%   0.465%   0.102%   0.003%   0.038%   0.163%   0.000%   0.214%
   10    3.1  1.5  0.5   0.592%   0.001%   0.181%   0.000%   0.007%   0.250%   0.015%   0.003%   0.006%   0.000%
   11    4.1  1.5  0.5   0.128%   0.000%   0.346%   0.000%   0.008%   0.269%   0.202%   0.046%   0.118%   0.000%
   12    5.1  1.5  0.5   0.000%   0.303%   0.000%   0.000%   0.000%   0.000%   0.032%   0.138%   0.000%   0.160%
   13    6.1  1.5  0.5   0.004%   0.000%   0.359%   0.000%   0.014%   0.483%   0.152%   0.035%   0.279%   0.000%
   14    7.1  1.5  0.5   0.413%   0.001%   0.653%   0.000%   0.012%   0.423%   0.023%   0.005%   0.119%   0.000%
   15    1.1  1.5 -0.5   0.094%   0.000%   0.270%   0.000%   0.014%   0.509%   0.053%   0.012%   0.106%   0.000%
   16    2.1  1.5 -0.5   0.125%   0.000%   0.465%   0.000%   0.003%   0.102%   0.163%   0.038%   0.214%   0.000%
   17    3.1  1.5 -0.5   0.001%   0.592%   0.000%   0.181%   0.250%   0.007%   0.003%   0.015%   0.000%   0.006%
   18    4.1  1.5 -0.5   0.000%   0.128%   0.000%   0.346%   0.269%   0.008%   0.046%   0.202%   0.000%   0.118%
   19    5.1  1.5 -0.5   0.303%   0.000%   0.000%   0.000%   0.000%   0.000%   0.138%   0.032%   0.160%   0.000%
   20    6.1  1.5 -0.5   0.000%   0.004%   0.000%   0.359%   0.483%   0.014%   0.035%   0.152%   0.000%   0.279%
   21    7.1  1.5 -0.5   0.001%   0.413%   0.000%   0.653%   0.423%   0.012%   0.005%   0.023%   0.000%   0.119%
   22    1.1  1.5 -1.5   0.000%   0.139%   0.000%   0.359%   0.000%   0.000%   0.039%   0.170%   0.000%   0.203%
   23    2.1  1.5 -1.5   0.001%   0.724%   0.000%   0.400%   0.001%   0.000%   0.039%   0.171%   0.000%   0.202%
   24    3.1  1.5 -1.5   0.266%   0.000%   0.088%   0.000%   0.014%   0.498%   0.328%   0.075%   0.009%   0.000%
   25    4.1  1.5 -1.5   0.316%   0.000%   0.004%   0.000%   0.020%   0.691%   0.081%   0.019%   0.183%   0.000%
   26    5.1  1.5 -1.5   0.000%   0.249%   0.000%   0.796%   0.086%   0.002%   0.012%   0.054%   0.000%   0.034%
   27    6.1  1.5 -1.5   0.291%   0.000%   0.020%   0.000%   0.010%   0.349%   0.027%   0.006%   0.056%   0.000%
   28    7.1  1.5 -1.5   0.383%   0.001%   0.092%   0.000%   0.007%   0.259%   0.000%   0.000%   0.251%   0.000%
   29    1.1  0.5  0.5   0.053%   0.000%   0.036%   0.000%   0.006%   0.221%  33.755%   7.763%   0.193%   0.000%
   30    2.1  0.5  0.5   8.284%   0.012%  37.903%   0.000%   0.238%   8.396%   0.000%   0.000%  26.055%   0.000%
   31    3.1  0.5  0.5   2.853%   0.004%  44.679%   0.000%   0.061%   2.158%   3.235%   0.744%  37.940%   0.000%
   32    4.1  0.5  0.5   0.004%   2.624%   0.000%  11.279%  29.055%   0.823%   2.662%  11.574%   0.000%  10.789%
   33    5.1  0.5  0.5   0.050%  33.684%   0.000%   0.402%   6.789%   0.192%   3.826%  16.636%   0.000%  18.838%
   34    6.1  0.5  0.5   0.015%  10.303%   0.000%   1.657%  41.657%   1.181%   0.195%   0.849%   0.000%   1.743%
   35    7.1  0.5  0.5  38.022%   0.057%   0.009%   0.000%   0.143%   5.046%  13.676%   3.145%   2.502%   0.000%
   36    1.1  0.5 -0.5   0.000%   0.053%   0.000%   0.036%   0.221%   0.006%   7.763%  33.755%   0.000%   0.193%
   37    2.1  0.5 -0.5   0.012%   8.284%   0.000%  37.903%   8.396%   0.238%   0.000%   0.000%   0.000%  26.055%
   38    3.1  0.5 -0.5   0.004%   2.853%   0.000%  44.679%   2.158%   0.061%   0.744%   3.235%   0.000%  37.940%
   39    4.1  0.5 -0.5   2.624%   0.004%  11.279%   0.000%   0.823%  29.055%  11.574%   2.662%  10.789%   0.000%
   40    5.1  0.5 -0.5  33.684%   0.050%   0.402%   0.000%   0.192%   6.789%  16.636%   3.826%  18.838%   0.000%
   41    6.1  0.5 -0.5  10.303%   0.015%   1.657%   0.000%   1.181%  41.657%   0.849%   0.195%   1.743%   0.000%
   42    7.1  0.5 -0.5   0.057%  38.022%   0.000%   0.009%   5.046%   0.143%   3.145%  13.676%   0.000%   2.502%

   Nr   State  S   Sz      41       42

    1    1.1  1.5  1.5   0.000%   0.004%
    2    2.1  1.5  1.5   0.000%   0.003%
    3    3.1  1.5  1.5   0.013%   0.000%
    4    4.1  1.5  1.5   0.135%   0.000%
    5    5.1  1.5  1.5   0.000%   0.398%
    6    6.1  1.5  1.5   0.275%   0.000%
    7    7.1  1.5  1.5   0.121%   0.000%
    8    1.1  1.5  0.5   0.244%   0.000%
    9    2.1  1.5  0.5   0.001%   0.000%
   10    3.1  1.5  0.5   0.000%   0.381%
   11    4.1  1.5  0.5   0.000%   0.047%
   12    5.1  1.5  0.5   0.003%   0.000%
   13    6.1  1.5  0.5   0.000%   0.001%
   14    7.1  1.5  0.5   0.000%   0.313%
   15    1.1  1.5 -0.5   0.000%   0.244%
   16    2.1  1.5 -0.5   0.000%   0.001%
   17    3.1  1.5 -0.5   0.381%   0.000%
   18    4.1  1.5 -0.5   0.047%   0.000%
   19    5.1  1.5 -0.5   0.000%   0.003%
   20    6.1  1.5 -0.5   0.001%   0.000%
   21    7.1  1.5 -0.5   0.313%   0.000%
   22    1.1  1.5 -1.5   0.004%   0.000%
   23    2.1  1.5 -1.5   0.003%   0.000%
   24    3.1  1.5 -1.5   0.000%   0.013%
   25    4.1  1.5 -1.5   0.000%   0.135%
   26    5.1  1.5 -1.5   0.398%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.275%
   28    7.1  1.5 -1.5   0.000%   0.121%
   29    1.1  0.5  0.5   0.000%   0.300%
   30    2.1  0.5  0.5   0.000%  15.972%
   31    3.1  0.5  0.5   0.000%   0.108%
   32    4.1  0.5  0.5  17.007%   0.000%
   33    5.1  0.5  0.5   2.731%   0.000%
   34    6.1  0.5  0.5  39.241%   0.000%
   35    7.1  0.5  0.5   0.000%  22.703%
   36    1.1  0.5 -0.5   0.300%   0.000%
   37    2.1  0.5 -0.5  15.972%   0.000%
   38    3.1  0.5 -0.5   0.108%   0.000%
   39    4.1  0.5 -0.5   0.000%  17.007%
   40    5.1  0.5 -0.5   0.000%   2.731%
   41    6.1  0.5 -0.5   0.000%  39.241%
   42    7.1  0.5 -0.5  22.703%   0.000%


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

              2       6      142.40       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *       648.89    454.46    149.16     42.82      1.85      0.41
 REAL TIME  *       695.19 SEC
 DISK USED  *       174.50 MB (local),        1.75 GB (total)
 SF USED    *       770.66 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.985924009792

              CI              CI           MULTI
   -109.93920619   -109.96324763   -109.35334158
 **********************************************************************************************************************************
 Molpro calculation terminated
