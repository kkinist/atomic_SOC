
 Working directory              : /wrk/irikura/molpro.2uRrk0YFzD/
 Global scratch directory       : /wrk/irikura/molpro.2uRrk0YFzD/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.2uRrk0YFzD/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space, MRCI
                                                                                 ! a 4P term alone
 memory,1500,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,10;
 weight,7[0],3[1]
     expec2,lxx,lyy,lzz;
  }
 table, energy, ll
 title, Energies and LL values
 
 {ci;wf,sym=1,spin=3;state,3,8,9,10;save,5103.2}
 hlsdiag = energd4
 
 table, hlsdiag
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space, MRCI                                                                                                                           
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 11:13:10  
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

     14.418 MB (compressed) written to integral file ( 15.5%)

     Node minimum: 0.786 MB, node maximum: 1.573 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     479772.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     479772      RECORD LENGTH: 524288

 Memory used in sort:       1.04 MW

 SORT1 READ    10862098. AND WROTE       89681. INTEGRALS IN      1 RECORDS. CPU TIME:     0.06 SEC, REAL TIME:     0.07 SEC
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
 CPU TIMES  *         0.77      0.59
 REAL TIME  *         1.56 SEC
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

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.280D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.280D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.138D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.134D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 3 5 1 4 6 2 5 3 2   6 4 5 3 1 711 91415  1310 812 2 4 6 5 3 1
                                        71514131011 9 812 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 9 7 4 5 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.00000   0.33333
                                          0.33333   0.33333
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    1013
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    3    0   -109.31572950    -109.32797952   -0.01225002    0.18907349 0.00009496 0.00000000  0.13E+00      0.11
   2    2    2    0   -109.32772427    -109.32773576   -0.00001149    0.00541232 0.00001282 0.00000000  0.39E-02      0.19
   3    5    5    0   -109.32773577    -109.32773577   -0.00000000    0.00000570 0.00000001 0.00000000  0.42E-05      0.31

 CONVERGENCE REACHED!  Final gradient:    0.00000002 ( 0.20E-07)
                       Final energy:   -109.32773577
 
 Results for state 1.1
 =====================
 !MCSCF STATE 1.1 Energy                      -109.381121590547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 1.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1
 =====================
 !MCSCF STATE 2.1 Energy                      -109.381121590547
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 2.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1
 =====================
 !MCSCF STATE 3.1 Energy                      -109.381121590542
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 3.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1
 =====================
 !MCSCF STATE 4.1 Energy                      -109.381121590541
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 4.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1
 =====================
 !MCSCF STATE 5.1 Energy                      -109.381121590541
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 5.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1
 =====================
 !MCSCF STATE 6.1 Energy                      -109.381121590514
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 6.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1
 =====================
 !MCSCF STATE 7.1 Energy                      -109.381121590514
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.93932469
 One electron energy                          -193.49481951
 Two electron energy                            84.11369791
 Virial ratio                                    3.67178617
 
 !MCSCF STATE 7.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1
 =====================
 !MCSCF STATE 8.1 Energy                      -109.327735766583
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.94002306
 One electron energy                          -193.48526732
 Two electron energy                            84.15753156
 Virial ratio                                    3.67043659
 
 !MCSCF STATE 8.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1
 =====================
 !MCSCF STATE 9.1 Energy                      -109.327735766581
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.94002306
 One electron energy                          -193.48526732
 Two electron energy                            84.15753156
 Virial ratio                                    3.67043659
 
 !MCSCF STATE 9.1 Dipole moment                  0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1
 ======================
 !MCSCF STATE 10.1 Energy                     -109.327735766564
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.94002306
 One electron energy                          -193.48526732
 Two electron energy                            84.15753156
 Virial ratio                                    3.67043659
 
 !MCSCF STATE 10.1 Dipole moment                 0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec                      <1.1|LXLX|1.1>     0.974670964068
 !MCSCF expec                      <2.1|LXLX|2.1>     2.076871893050
 !MCSCF expec                      <3.1|LXLX|3.1>     2.731085641272
 !MCSCF expec                      <4.1|LXLX|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LXLX|5.1>     7.288888282368
 !MCSCF expec                      <6.1|LXLX|6.1>     7.903089606214
 !MCSCF expec                      <7.1|LXLX|7.1>     3.706092799074
 !MCSCF expec                      <8.1|LXLX|8.1>     0.999999956710
 !MCSCF expec                      <9.1|LXLX|9.1>     0.000001113985
 !MCSCF expec                    <10.1|LXLX|10.1>     0.999999958904
 
 !MCSCF expec                      <1.1|LYLY|1.1>     2.187832200570
 !MCSCF expec                      <2.1|LYLY|2.1>     1.044691903779
 !MCSCF expec                      <3.1|LYLY|3.1>     8.580110157000
 !MCSCF expec                      <4.1|LYLY|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LYLY|5.1>     1.409106228021
 !MCSCF expec                      <6.1|LYLY|6.1>     2.974370406615
 !MCSCF expec                      <7.1|LYLY|7.1>     7.135571824311
 !MCSCF expec                      <8.1|LYLY|8.1>     0.000000062522
 !MCSCF expec                      <9.1|LYLY|9.1>     0.999999950771
 !MCSCF expec                    <10.1|LYLY|10.1>     0.999999942054
 
 !MCSCF expec                      <1.1|LZLZ|1.1>     8.837496835361
 !MCSCF expec                      <2.1|LZLZ|2.1>     8.878436203171
 !MCSCF expec                      <3.1|LZLZ|3.1>     0.688804201728
 !MCSCF expec                      <4.1|LZLZ|4.1>     4.000000000000
 !MCSCF expec                      <5.1|LZLZ|5.1>     3.302005489611
 !MCSCF expec                      <6.1|LZLZ|6.1>     1.122539987170
 !MCSCF expec                      <7.1|LZLZ|7.1>     1.158335376616
 !MCSCF expec                      <8.1|LZLZ|8.1>     0.999999980768
 !MCSCF expec                      <9.1|LZLZ|9.1>     0.999998935244
 !MCSCF expec                    <10.1|LZLZ|10.1>     0.000000099042
 
 !MCSCF expec                      <1.1|L**2|1.1>    12.000000000000
 !MCSCF expec                      <2.1|L**2|2.1>    12.000000000000
 !MCSCF expec                      <3.1|L**2|3.1>    12.000000000000
 !MCSCF expec                      <4.1|L**2|4.1>    12.000000000000
 !MCSCF expec                      <5.1|L**2|5.1>    12.000000000000
 !MCSCF expec                      <6.1|L**2|6.1>    12.000000000000
 !MCSCF expec                      <7.1|L**2|7.1>    12.000000000000
 !MCSCF expec                      <8.1|L**2|8.1>     2.000000000000
 !MCSCF expec                      <9.1|L**2|9.1>     2.000000000000
 !MCSCF expec                    <10.1|L**2|10.1>     2.000000000000
 
 ? Warning
 ? Extra symmerty contamination removed!
 ? The problem occurs in mu_orbitals_clean_extra
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 6 2 4 5 3 1 1 5 3   4 2 6 1 5 3 4 6 2 5   3 4 2 6 113101415 9   812 711 3 5 4 2 6 1
                                       13101415 9 812 711 5   3 4 2 6 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 2 1 1 2 3 1 2 3 1   2 3 7 910 8 4 6 5 1   2 3 9 710 8 4 6 5 1   2 3 7 9 810 4 6 5 1
                                        2 3
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.72545     1  1  s    1.00186
    2.1     1.60058    -0.30675     1  1  d1-  1.00321
    3.1     1.60058    -0.30675     1  1  d0   1.00321
    4.1     1.60058    -0.30675     1  1  d1+  1.00321
    5.1     1.60058    -0.30675     1  1  d2+  1.00321
    6.1     1.60058    -0.30675     1  1  d2-  1.00321
    7.1     1.00000    -0.09978     1  2  s    0.95752
    1.2     1.99904    -2.35466     1  1  pz   1.00014
    2.2     1.99904    -2.35466     1  1  py   1.00014
    3.2     1.99904    -2.35466     1  1  px   1.00014
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1
 =============================

 State:                1               2               3               4               5               6               7
 22a2a2a 222     -0.00000000     -0.00000113     -0.00000115      1.00000000     -0.00000000     -0.00000000      0.00000000
 22a22aa 222      0.00018276     -0.00267756     -0.41496354     -0.00000048      0.90983407      0.00017343      0.00000000
 2222aaa 222     -0.00183959      0.00094023      0.40688588      0.00000047      0.18557858     -0.00030981      0.00032701
 2a2a22a 222     -0.00367917      0.00188046      0.81377176      0.00000093      0.37115715     -0.00061962      0.00065403
 222a2aa 222      0.77775308     -0.01632989      0.00329577     -0.00000001      0.00130339     -0.02370282     -0.44074834
 22aa22a 222     -0.00145718     -0.07787074     -0.00023284     -0.00000009     -0.00021561     -0.62671913      0.03401545
 2aa222a 222      0.09008558     -0.00211936      0.00074248     -0.00000000      0.00032076     -0.03387330     -0.62508563
 2a222aa 222      0.01586308      0.76900677     -0.00192816      0.00000086      0.00129364      0.45579102     -0.02502206
 2a22a2a 222      0.62172027     -0.01265904      0.00200976     -0.00000001      0.00074782      0.03496746      0.64193172
 222aa2a 222     -0.01333917     -0.63413069      0.00233146     -0.00000071     -0.00092019      0.62971836     -0.03389443
 
 Energy:       -109.38112159   -109.38112159   -109.38112159   -109.38112159   -109.38112159   -109.38112159   -109.38112159

 State:                8               9              10
 22a2a2a 222     -0.00000000      0.00000000      0.00000000
 22a22aa 222     -0.00000000      0.00000000      0.00000000
 2222aaa 222      0.00012395      0.00092232      0.89378074
 2a2a22a 222     -0.00006197     -0.00046116     -0.44689037
 222a2aa 222      0.00009298     -0.44689037      0.00046115
 22aa22a 222      0.77403722      0.00016094     -0.00010751
 2aa222a 222     -0.00016105      0.77403682     -0.00079873
 2a222aa 222      0.44689060      0.00009292     -0.00006207
 2a22a2a 222     -0.00009298      0.44689037     -0.00046115
 222aa2a 222      0.44689060      0.00009292     -0.00006207
 
 Energy:       -109.32773577   -109.32773577   -109.32773577
 


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
 CPU TIMES  *         1.12      0.34      0.59
 REAL TIME  *         2.00 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.07 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3811216   12.0
    -109.3277358    2.0
    -109.3277358    2.0
    -109.3277358    2.0
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Convergence thresholds:  THRVAR = 1.00D-08  THRDEN = 1.00D-06

 Number of optimized states: 3  Roots:    8   9  10
 Number of reference states: 3  Roots:    8   9  10

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
     8      -109.32773577
     9      -109.32773577
    10      -109.32773577
     4      -109.38112159
     5      -109.38112159
     6      -109.38112159
     7      -109.38112159
     1      -109.38112159
     2      -109.38112159
     3      -109.38112159

 Number of blocks in overlap matrix:    20   Smallest eigenvalue:  0.24D-02
 Number of N-2 electron functions:     300
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:        569952
 Total number of contracted configurations:       622064
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    321939 words, CPU-Time:      0.01 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    365695 words, CPU-time:      0.01 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     8     1.00000000     0.00000000  -109.32773577     0.00000000    -0.72359016  0.29D-01  0.12D+00     0.07
    1     2     9     1.00000000     0.00000000  -109.32773577     0.00000000    -0.72359314  0.29D-01  0.12D+00     0.07
    1     3    10     1.00000000     0.00000000  -109.32773577     0.00000000    -0.72446642  0.29D-01  0.12D+00     0.07
    2     1     1     1.09644505    -0.57710715  -109.90484291    -0.57710715    -0.01555951  0.10D-02  0.22D-02     2.32
    2     2     2     1.09618410    -0.57706933  -109.90480510    -0.57706933    -0.01540417  0.10D-02  0.22D-02     2.32
    2     3     3     1.09618441    -0.57706821  -109.90480397    -0.57706821    -0.01540529  0.10D-02  0.22D-02     2.32
    3     1     1     1.09062502    -0.59216393  -109.91989970    -0.01505678    -0.00033683  0.18D-04  0.74D-04     4.46
    3     2     2     1.09044524    -0.59209561  -109.91983137    -0.01502627    -0.00035197  0.18D-04  0.75D-04     4.46
    3     3     3     1.09044500    -0.59209556  -109.91983132    -0.01502735    -0.00035202  0.18D-04  0.75D-04     4.46
    4     1     1     1.09153159    -0.59259257  -109.92032833    -0.00042864    -0.00006500  0.49D-05  0.11D-04     6.53
    4     2     2     1.09147065    -0.59257330  -109.92030907    -0.00047770    -0.00008029  0.59D-05  0.16D-04     6.53
    4     3     3     1.09147073    -0.59257328  -109.92030905    -0.00047773    -0.00008030  0.59D-05  0.16D-04     6.53
    5     1     1     1.09209088    -0.59268416  -109.92041993    -0.00009159    -0.00001389  0.76D-06  0.29D-05     8.75
    5     2     2     1.09203911    -0.59267458  -109.92041035    -0.00010128    -0.00002416  0.60D-06  0.68D-05     8.75
    5     3     3     1.09203905    -0.59267458  -109.92041034    -0.00010130    -0.00002415  0.61D-06  0.68D-05     8.75
    6     1     1     1.09210328    -0.59270177  -109.92043754    -0.00001761    -0.00000293  0.20D-06  0.59D-06    10.90
    6     2     2     1.09207102    -0.59269777  -109.92043353    -0.00002318    -0.00000569  0.45D-06  0.13D-05    10.90
    6     3     3     1.09207097    -0.59269777  -109.92043353    -0.00002319    -0.00000569  0.45D-06  0.13D-05    10.90
    7     1     1     1.09212134    -0.59270529  -109.92044105    -0.00000351    -0.00000091  0.43D-07  0.21D-06    12.95
    7     2     2     1.09209085    -0.59270398  -109.92043975    -0.00000621    -0.00000159  0.11D-06  0.32D-06    12.95
    7     3     3     1.09209086    -0.59270398  -109.92043975    -0.00000621    -0.00000159  0.11D-06  0.32D-06    12.95
    8     1     1     1.09213788    -0.59270630  -109.92044207    -0.00000101    -0.00000028  0.13D-07  0.68D-07    15.04
    8     2     2     1.09211781    -0.59270585  -109.92044162    -0.00000187    -0.00000063  0.14D-07  0.18D-06    15.04
    8     3     3     1.09211780    -0.59270585  -109.92044162    -0.00000187    -0.00000063  0.14D-07  0.18D-06    15.04
    9     1     1     1.09215056    -0.59270664  -109.92044240    -0.00000034    -0.00000010  0.49D-08  0.21D-07    17.11
    9     2     2     1.09213804    -0.59270644  -109.92044221    -0.00000059    -0.00000022  0.68D-08  0.62D-07    17.11
    9     3     3     1.09213803    -0.59270644  -109.92044221    -0.00000059    -0.00000022  0.68D-08  0.62D-07    17.11
   10     1     1     1.09215613    -0.59270675  -109.92044251    -0.00000011    -0.00000004  0.85D-09  0.86D-08    19.14
   10     2     2     1.09214957    -0.59270666  -109.92044243    -0.00000022    -0.00000008  0.30D-08  0.23D-07    19.14
   10     3     3     1.09214958    -0.59270666  -109.92044243    -0.00000022    -0.00000008  0.30D-08  0.23D-07    19.14
   11     1     1     1.09216058    -0.59270678  -109.92044255    -0.00000004    -0.00000003  0.14D-08  0.63D-08    20.63
   11     2     2     1.09215301    -0.59270675  -109.92044251    -0.00000008    -0.00000004  0.31D-09  0.11D-07    20.63
   11     3     3     1.09215613    -0.59270675  -109.92044251    -0.00000008    -0.00000004  0.85D-09  0.86D-08    20.63
   12     1     1     1.09216107    -0.59270680  -109.92044257    -0.00000002    -0.00000001  0.43D-09  0.14D-08    21.53
   12     2     2     1.09216058    -0.59270678  -109.92044255    -0.00000004    -0.00000003  0.14D-08  0.63D-08    21.53
   12     3     3     1.09215613    -0.59270675  -109.92044251    -0.00000000    -0.00000004  0.85D-09  0.86D-08    21.53


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.3%
 S   0.1%   1.1%
 P   0.6%  14.5%  54.6%

 Initialization:   0.2%
 Other:           28.6%

 Total CPU:       21.5 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222///222           0.0000000   0.0000000   0.8555191
 22//22/222          -0.0000000   0.7408939  -0.0000000
 2//222/222           0.7408919  -0.0000000  -0.0000000
 222//2/222          -0.0000000   0.4277562  -0.0000000
 2/22/2/222           0.4277549  -0.0000000  -0.0000000
 222/2//222          -0.4277491   0.0000000   0.0000000
 2/222//222          -0.0000000   0.4277448  -0.0000000
 2/2/22/222          -0.0000000  -0.0000000  -0.4277331

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1          -0.000000    0.956836    0.000000
 2           0.956836   -0.000000    0.000000
 3          -0.000000   -0.000000    0.956838

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.956836   -0.000000    0.000000
 2          -0.000000    0.956836   -0.000000
 3           0.000000   -0.000000    0.956838


 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.95683601 (fixed)   0.95687819 (relaxed)   0.95683601 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008816    0.00000000   -0.47084877
 Singles      0.01650535   -0.07847102   -0.08079944
 Pairs        0.07566385   -0.00000000   -0.04105859
 Total        1.09225735   -0.07847102   -0.59270680
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32773577
 Nuclear energy                         0.00000000
 Kinetic energy                        41.40868632
 One electron energy                 -193.09965310
 Two electron energy                   83.17921053
 Virial quotient                       -2.65452620
 Correlation energy                    -0.59270680
 !MRCI STATE 8.1 Energy              -109.920442571193

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97512413 (Davidson, fixed reference)
 Cluster corrected energies          -109.97506706 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97512413 (Davidson, rotated reference)

 Cluster corrected energies          -109.97055922 (Pople, fixed reference)
 Cluster corrected energies          -109.97050336 (Pople, relaxed reference)
 Cluster corrected energies          -109.97055922 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.95683622 (fixed)   0.95687840 (relaxed)   0.95683622 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008816   -0.00000000   -0.47084864
 Singles      0.01650581   -0.07847137   -0.08079917
 Pairs        0.07566290   -0.00000000   -0.04105897
 Total        1.09225687   -0.07847137   -0.59270678
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32773577
 Nuclear energy                         0.00000000
 Kinetic energy                        41.40898597
 One electron energy                 -193.10001100
 Two electron energy                   83.17956845
 Virial quotient                       -2.65450699
 Correlation energy                    -0.59270678
 !MRCI STATE 9.1 Energy              -109.920442549630

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97512382 (Davidson, fixed reference)
 Cluster corrected energies          -109.97506675 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97512382 (Davidson, rotated reference)

 Cluster corrected energies          -109.97055892 (Pople, fixed reference)
 Cluster corrected energies          -109.97050306 (Pople, relaxed reference)
 Cluster corrected energies          -109.97055892 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 =====================

 Coefficient of reference function:   C(0) = 0.95683817 (fixed)   0.95688035 (relaxed)   0.95683817 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00008817   -0.00000000   -0.00004784
 Singles      0.01650590   -0.07847229   -0.08079987
 Pairs        0.07565835   -0.51423446   -0.51185903
 Total        1.09225242   -0.59270675   -0.59270675
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.32773577
 Nuclear energy                         0.00000000
 Kinetic energy                        41.40893977
 One electron energy                 -193.09994251
 Two electron energy                   83.17950000
 Virial quotient                       -2.65450995
 Correlation energy                    -0.59270675
 !MRCI STATE 10.1 Energy             -109.920442513449

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.97512114 (Davidson, fixed reference)
 Cluster corrected energies          -109.97506407 (Davidson, relaxed reference)
 Cluster corrected energies          -109.97512114 (Davidson, rotated reference)

 Cluster corrected energies          -109.97055630 (Pople, fixed reference)
 Cluster corrected energies          -109.97050044 (Pople, relaxed reference)
 Cluster corrected energies          -109.97055630 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       15.28       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        23.01     21.88      0.34      0.59
 REAL TIME  *        26.06 SEC
 DISK USED  *        47.45 MB (local),      624.57 MB (total)
 SF USED    *       155.65 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -109.97512413  AU                              
 SETTING HLSDIAG(2)     =      -109.97512382  AU                              
 SETTING HLSDIAG(3)     =      -109.97512114  AU                              


         HLSDIAG
    -109.9751241
    -109.9751238
    -109.9751211
                                                  

 CI/cc-pWCVTZ-PP energy=   -109.920442513449

              CI           MULTI
   -109.92044251   -109.32773577
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
