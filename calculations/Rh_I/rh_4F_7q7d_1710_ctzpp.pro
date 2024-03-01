
 Working directory              : /wrk/irikura/molpro.L7g8HefF1e/
 Global scratch directory       : /wrk/irikura/molpro.L7g8HefF1e/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.L7g8HefF1e/

 id        : nistki

 Nodes            nprocs
 pn125343.nist.gov   30
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1025), CPU time= 0.03 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! Heavy weight on 4F
                                                                                 ! 4F + 2F
 memory,1000,M;
 
 gprint,orbitals,civector
 
 symmetry,xyz
 geometry={Rh}
 
 basis=cc-pwCVTZ-PP
 
 {multi
     closed,0,0
     wf,nelec=17,sym=1,spin=3; state,7;
         weight,all,99
     wf,nelec=17,sym=1,spin=1; state,7;
         weight,all,1
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
  64 bit mpp version                                                                     DATE: 15-Feb-24          TIME: 10:54:01  
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

     16.515 MB (compressed) written to integral file ( 18.5%)

     Node minimum: 0.262 MB, node maximum: 1.311 MB


 NUMBER OF SORTED TWO-ELECTRON INTEGRALS:     192330.     BUFFER LENGTH:  32768
 NUMBER OF SEGMENTS:   1  SEGMENT LENGTH:     192330      RECORD LENGTH: 524288

 Memory used in sort:       0.75 MW

 SORT1 READ    10862098. AND WROTE       37800. INTEGRALS IN      1 RECORDS. CPU TIME:     0.15 SEC, REAL TIME:     0.17 SEC
 SORT2 READ     1120219. AND WROTE     5766586. INTEGRALS IN     30 RECORDS. CPU TIME:     0.02 SEC, REAL TIME:     0.02 SEC

 Node minimum:      190791.  Node maximum:      197199. integrals

 OPERATOR DM      FOR CENTER  0  COORDINATES:    0.000000    0.000000    0.000000


 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      19       28.83       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    

 PROGRAMS   *        TOTAL       INT
 CPU TIMES  *         1.89      1.56
 REAL TIME  *         2.43 SEC
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
 Number of states:             7
 Number of CSFs:             175   (231 determinants, 450 intermediate states)

 Orbital guess generated from atomic densities. Full valence occupancy:    7   3
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.312D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.309D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.221D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.226D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 6 4 3 5 1 1 2 4   6 3 5 1 4 6 2 5 3 2   6 4 3 5 1 711 91415  1310 812 2 6 4 5 3 1
                                        71514131011 9 812 2   6 4 5 3 1
 *** IN SYMMETRY 2 ORBITAL  1 SYMMETRY CONTAMINATION OF 0.242D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.250D-01 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.179D-02 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   2 1 3 1 2 3 1 2 3 3   2 1 9 7 5 4 6 810 3   2 1 6 4 5 9 7 810 2   1 3 810 6 9 7 4 5 2
                                        1 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.14143   0.14143   0.14143   0.14143   0.14143   0.14143   0.14143
 Weight factors for state symmetry  2:    0.00143   0.00143   0.00143   0.00143   0.00143   0.00143   0.00143
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    2462
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    3    6    0   -109.36750181    -109.38118129   -0.01367948    0.19793031 0.00010809 0.00000000  0.13E+00      0.37
   2    3    6    0   -109.38088782    -109.38090150   -0.00001368    0.00588271 0.00000104 0.00000000  0.42E-02      0.66
   3   20   40    0   -109.38090151    -109.38090151   -0.00000000    0.00000715 0.00000013 0.00000000  0.50E-05      2.21

 CONVERGENCE REACHED!  Final gradient:    0.00000009 ( 0.89E-07)
                       Final energy:   -109.38090151
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.381199831062
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357077
 One electron energy                          -193.56067185
 Two electron energy                            84.17947202
 Virial ratio                                    3.66890361
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.381199830958
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357073
 One electron energy                          -193.56067179
 Two electron energy                            84.17947196
 Virial ratio                                    3.66890361
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.381199830916
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357078
 One electron energy                          -193.56067187
 Two electron energy                            84.17947204
 Virial ratio                                    3.66890361
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.381199830581
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357075
 One electron energy                          -193.56067182
 Two electron energy                            84.17947199
 Virial ratio                                    3.66890361
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.381199829979
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357080
 One electron energy                          -193.56067189
 Two electron energy                            84.17947206
 Virial ratio                                    3.66890360
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.381199829187
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357081
 One electron energy                          -193.56067192
 Two electron energy                            84.17947209
 Virial ratio                                    3.66890360
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.381199828991
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98357084
 One electron energy                          -193.56067195
 Two electron energy                            84.17947212
 Virial ratio                                    3.66890360
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.351368196567
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635721
 One electron energy                          -193.53102583
 Two electron energy                            84.17965763
 Virial ratio                                    3.66929685
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.351368196068
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635726
 One electron energy                          -193.53102589
 Two electron energy                            84.17965770
 Virial ratio                                    3.66929685
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.351368195920
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635724
 One electron energy                          -193.53102586
 Two electron energy                            84.17965767
 Virial ratio                                    3.66929685
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.351368195794
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635727
 One electron energy                          -193.53102591
 Two electron energy                            84.17965771
 Virial ratio                                    3.66929684
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.351368194715
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635729
 One electron energy                          -193.53102593
 Two electron energy                            84.17965774
 Virial ratio                                    3.66929684
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.351368193789
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635730
 One electron energy                          -193.53102595
 Two electron energy                            84.17965776
 Virial ratio                                    3.66929684
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.351368193289
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96635733
 One electron energy                          -193.53102599
 Two electron energy                            84.17965780
 Virial ratio                                    3.66929684
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     7.944459861459
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     3.629893985491
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     8.903314427407
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     2.055618922037
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     1.096683393740
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     0.370127652914
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     3.789225950233
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     7.432625494646
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     4.000000000000
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     8.957336867747
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     2.567445912503
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     1.042612355866
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     0.210781047945
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     3.734324630841
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     6.429584734980
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     1.935279637382
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     6.265564936079
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     2.064723708892
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     3.570345911291
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     5.836000590869
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     4.408672476724
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     4.000000000020
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     1.787408150385
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     5.591237943829
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     2.212764653796
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     4.163971502219
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     0.321215507699
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     1.940521279530
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     1.161405935211
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     4.000000000000
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     3.678816141884
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     8.838592897368
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     8.059526435795
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     2.374773458899
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     0.158702028630
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     3.999999999979
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     1.255254981868
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     3.841316143668
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     8.744622990338
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     7.625247449836
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 4 6 3 2 5 1 1 6 3   5 4 2 1 6 3 4 5 2 6   3 5 2 4 11310111415  12 7 8 9 5 6 3 2 4 1
                                       1310111415 712 8 9 5   3 6 2 4 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   3 1 2 2 3 1 2 3 1 2   3 1 810 5 9 7 4 6 2   3 1 7 9 5 810 6 4 2   3 1 7 9 510 6 8 4 2
                                        3 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     2.00000    -3.71987     1  1  s    1.00198
    2.1     1.59999    -0.30302     1  1  d1+  1.00365
    3.1     1.59999    -0.30302     1  1  d1-  1.00365
    4.1     1.59999    -0.30302     1  1  d2-  1.00365
    5.1     1.59999    -0.30302     1  1  d0   1.00365
    6.1     1.59999    -0.30302     1  1  d2+  1.00365
    7.1     1.00006    -0.09903     1  2  s    0.95057
    1.2     2.00000    -2.34985     1  1  pz   1.00016
    2.2     2.00000    -2.34985     1  1  px   1.00016
    3.2     2.00000    -2.34985     1  1  py   1.00016
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================
 
 2222aaa 222     -0.00000000     -0.00000001      0.00000000      1.00000000      0.00000000      0.00000000     -0.00000000
 222aa2a 222      0.28337938     -0.00000409      0.00000373      0.00000000      0.95900789     -0.00000000      0.00000000
 2aa222a 222      0.85776274     -0.00003823     -0.00000087      0.00000000     -0.25346223     -0.00000010     -0.00002475
 2a2a22a 222      0.00001114     -0.27206842      0.00005255     -0.00000000     -0.00000445     -0.00016592      0.85204385
 2a222aa 222      0.00000004      0.00009152      0.44173069     -0.00000000     -0.00000173      0.77773642      0.00015343
 22a22aa 222      0.00004455      0.75697080     -0.00012478      0.00000001     -0.00000994     -0.00011220      0.47644010
 22aa22a 222     -0.00000014      0.00009568      0.64260738     -0.00000000     -0.00000245     -0.62213802     -0.00013023
 2a22a2a 222     -0.00000006      0.00010808      0.62604291     -0.00000000     -0.00000241      0.08983480      0.00001339
 22a2a2a 222     -0.00001929     -0.59411611      0.00010238     -0.00000001      0.00000317     -0.00003101      0.21685496
 222a2aa 222      0.42888133     -0.00001911     -0.00000044      0.00000000     -0.12673109     -0.00000005     -0.00001237
 
 Energy:       -109.38119983   -109.38119983   -109.38119983   -109.38119983   -109.38119983   -109.38119983   -109.38119983
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================
 
 2222aab 222      0.00002437      0.00002594      0.81408977      0.00000020     -0.00000082      0.00000001     -0.00000086
 222aa2b 222      0.00002691      0.16215594     -0.00000436      0.00002841      0.79777666     -0.00004336     -0.00001345
 2aa222b 222     -0.00036281      0.71355307     -0.00002287     -0.00004128     -0.14503666      0.00000447      0.00004745
 2a2a22b 222     -0.16714615     -0.00012344      0.00000576     -0.00002747      0.00004268      0.00003461      0.70870011
 2a222ab 222     -0.00004901      0.00001928     -0.00000009      0.33589893      0.00001923      0.64603840     -0.00003009
 22a22ab 222      0.64440930      0.00028988     -0.00001894      0.00011420     -0.00007494      0.00000529      0.33901367
 22aa22b 222     -0.00010279      0.00002404     -0.00000012      0.54154924     -0.00005062     -0.48674237      0.00002053
 2a22a2b 222     -0.00008764      0.00002501     -0.00000012      0.50659497     -0.00001812      0.09196963     -0.00000552
 22a2a2b 222     -0.46855180     -0.00023863      0.00001426     -0.00008179      0.00006791      0.00001693      0.21343862
 2222baa 222     -0.00001218     -0.00001297     -0.40704490     -0.00000010      0.00000041     -0.00000001      0.00000043
 2222aba 222     -0.00001218     -0.00001297     -0.40704487     -0.00000010      0.00000041     -0.00000001      0.00000043
 222ab2a 222     -0.00001345     -0.08107797      0.00000218     -0.00001420     -0.39888836      0.00002168      0.00000672
 222ba2a 222     -0.00001345     -0.08107797      0.00000218     -0.00001420     -0.39888831      0.00002168      0.00000672
 2ab222a 222      0.00018140     -0.35677654      0.00001144      0.00002064      0.07251834     -0.00000223     -0.00002373
 2ba222a 222      0.00018140     -0.35677653      0.00001144      0.00002064      0.07251832     -0.00000223     -0.00002373
 222a2ab 222     -0.00018140      0.35677649     -0.00001144     -0.00002064     -0.07251831      0.00000223      0.00002373
 2b2a22a 222      0.08357308      0.00006172     -0.00000288      0.00001374     -0.00002134     -0.00001731     -0.35435006
 2a2b22a 222      0.08357307      0.00006172     -0.00000288      0.00001374     -0.00002134     -0.00001731     -0.35435005
 2a222ba 222      0.00002450     -0.00000964      0.00000005     -0.16794946     -0.00000962     -0.32301920      0.00001504
 2b222aa 222      0.00002450     -0.00000964      0.00000005     -0.16794947     -0.00000962     -0.32301919      0.00001504
 22b22aa 222     -0.32220466     -0.00014494      0.00000947     -0.00005710      0.00003747     -0.00000265     -0.16950684
 22a22ba 222     -0.32220464     -0.00014494      0.00000947     -0.00005710      0.00003747     -0.00000265     -0.16950683
 22ba22a 222      0.00005139     -0.00001202      0.00000006     -0.27077463      0.00002531      0.24337120     -0.00001026
 22ab22a 222      0.00005139     -0.00001202      0.00000006     -0.27077461      0.00002531      0.24337117     -0.00001026
 2a22b2a 222      0.00004382     -0.00001250      0.00000006     -0.25329749      0.00000906     -0.04598482      0.00000276
 2b22a2a 222      0.00004382     -0.00001250      0.00000006     -0.25329749      0.00000906     -0.04598481      0.00000276
 22b2a2a 222      0.23427590      0.00011932     -0.00000713      0.00004090     -0.00003395     -0.00000846     -0.10671931
 22a2b2a 222      0.23427590      0.00011932     -0.00000713      0.00004090     -0.00003395     -0.00000846     -0.10671931
 222a2ba 222      0.00009070     -0.17838825      0.00000572      0.00001032      0.03625916     -0.00000112     -0.00001186
 222b2aa 222      0.00009070     -0.17838824      0.00000572      0.00001032      0.03625915     -0.00000112     -0.00001186
 
 Energy:       -109.35136820   -109.35136820   -109.35136820   -109.35136820   -109.35136819   -109.35136819   -109.35136819
 


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
 CPU TIMES  *         4.22      2.32      1.56
 REAL TIME  *         5.00 SEC
 DISK USED  *        32.59 MB (local),        1.08 GB (total)
 SF USED    *        11.34 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 Energies and LL values

         ENERGY      LL
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3811998   12.0
    -109.3513682   12.0
    -109.3513682   12.0
    -109.3513682   12.0
    -109.3513682   12.0
    -109.3513682   12.0
    -109.3513682   12.0
    -109.3513682   12.0
                                                  


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
     1      -109.38119983
     2      -109.38119983
     3      -109.38119983
     4      -109.38119983
     5      -109.38119983
     6      -109.38119983
     7      -109.38119983

 Number of blocks in overlap matrix:    83   Smallest eigenvalue:  0.18D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:  409095 words, CPU-Time:      0.02 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  413743 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38119983     0.00000000    -0.71636767  0.24D-01  0.12D+00     0.20
    1     2     2     1.00000000     0.00000000  -109.38119983    -0.00000000    -0.71654178  0.24D-01  0.12D+00     0.20
    1     3     3     1.00000000     0.00000000  -109.38119983     0.00000000    -0.71644233  0.24D-01  0.12D+00     0.20
    1     4     4     1.00000000     0.00000000  -109.38119983    -0.00000000    -0.71691075  0.24D-01  0.12D+00     0.20
    1     5     5     1.00000000     0.00000000  -109.38119983     0.00000000    -0.71680407  0.24D-01  0.12D+00     0.20
    1     6     6     1.00000000     0.00000000  -109.38119983     0.00000000    -0.71664358  0.24D-01  0.12D+00     0.20
    1     7     7     1.00000000     0.00000000  -109.38119983    -0.00000000    -0.71655074  0.24D-01  0.12D+00     0.20
    2     1     1     1.09333043    -0.56818624  -109.94938607    -0.56818624    -0.01588470  0.11D-02  0.21D-02     6.20
    2     2     2     1.09330266    -0.56817140  -109.94937123    -0.56817140    -0.01590162  0.11D-02  0.21D-02     6.20
    2     3     3     1.09335274    -0.56816781  -109.94936765    -0.56816781    -0.01590712  0.11D-02  0.21D-02     6.20
    2     4     4     1.09336603    -0.56815809  -109.94935792    -0.56815809    -0.01591988  0.11D-02  0.21D-02     6.20
    2     5     5     1.09333071    -0.56814591  -109.94934574    -0.56814591    -0.01592927  0.11D-02  0.21D-02     6.20
    2     6     6     1.09336158    -0.56808310  -109.94928293    -0.56808310    -0.01600759  0.11D-02  0.21D-02     6.20
    2     7     7     1.09336144    -0.56806531  -109.94926513    -0.56806531    -0.01602940  0.11D-02  0.21D-02     6.20
    3     1     1     1.08813026    -0.58323153  -109.96443137    -0.01504529    -0.00018963  0.14D-04  0.25D-04    11.69
    3     2     2     1.08812689    -0.58323116  -109.96443099    -0.01505976    -0.00018984  0.14D-04  0.25D-04    11.69
    3     3     3     1.08812192    -0.58323107  -109.96443090    -0.01506326    -0.00018949  0.14D-04  0.25D-04    11.69
    3     4     4     1.08811710    -0.58323036  -109.96443019    -0.01507226    -0.00019023  0.14D-04  0.25D-04    11.69
    3     5     5     1.08813825    -0.58323034  -109.96443017    -0.01508443    -0.00019148  0.14D-04  0.25D-04    11.69
    3     6     6     1.08811127    -0.58323016  -109.96442999    -0.01514706    -0.00019022  0.14D-04  0.25D-04    11.69
    3     7     7     1.08813860    -0.58323005  -109.96442988    -0.01516475    -0.00019192  0.14D-04  0.25D-04    11.69
    4     1     1     1.08865537    -0.58342637  -109.96462620    -0.00019483    -0.00000850  0.24D-05  0.91D-06    17.18
    4     2     2     1.08865590    -0.58342637  -109.96462620    -0.00019521    -0.00000850  0.24D-05  0.91D-06    17.18
    4     3     3     1.08865423    -0.58342632  -109.96462615    -0.00019525    -0.00000849  0.25D-05  0.89D-06    17.18
    4     4     4     1.08865323    -0.58342628  -109.96462611    -0.00019593    -0.00000852  0.25D-05  0.90D-06    17.18
    4     5     5     1.08865153    -0.58342624  -109.96462607    -0.00019590    -0.00000852  0.25D-05  0.90D-06    17.18
    4     6     6     1.08865011    -0.58342620  -109.96462603    -0.00019604    -0.00000856  0.25D-05  0.90D-06    17.18
    4     7     7     1.08864801    -0.58342615  -109.96462598    -0.00019610    -0.00000859  0.25D-05  0.91D-06    17.18
    5     1     1     1.08883908    -0.58343530  -109.96463514    -0.00000894    -0.00000046  0.81D-07  0.68D-07    22.66
    5     2     2     1.08883931    -0.58343530  -109.96463513    -0.00000894    -0.00000046  0.81D-07  0.68D-07    22.66
    5     3     3     1.08883932    -0.58343530  -109.96463513    -0.00000898    -0.00000047  0.84D-07  0.67D-07    22.66
    5     4     4     1.08883933    -0.58343529  -109.96463513    -0.00000901    -0.00000047  0.84D-07  0.68D-07    22.66
    5     5     5     1.08883950    -0.58343529  -109.96463512    -0.00000905    -0.00000047  0.85D-07  0.67D-07    22.66
    5     6     6     1.08883896    -0.58343529  -109.96463512    -0.00000909    -0.00000047  0.86D-07  0.67D-07    22.66
    5     7     7     1.08883889    -0.58343529  -109.96463512    -0.00000914    -0.00000048  0.85D-07  0.68D-07    22.66
    6     1     1     1.08888321    -0.58343580  -109.96463563    -0.00000049    -0.00000003  0.56D-08  0.40D-08    28.16
    6     2     2     1.08888311    -0.58343580  -109.96463563    -0.00000049    -0.00000003  0.57D-08  0.40D-08    28.16
    6     3     3     1.08888320    -0.58343580  -109.96463563    -0.00000050    -0.00000003  0.57D-08  0.41D-08    28.16
    6     4     4     1.08888317    -0.58343580  -109.96463563    -0.00000050    -0.00000003  0.56D-08  0.40D-08    28.16
    6     5     5     1.08888325    -0.58343580  -109.96463563    -0.00000051    -0.00000003  0.57D-08  0.41D-08    28.16
    6     6     6     1.08888314    -0.58343580  -109.96463563    -0.00000051    -0.00000003  0.57D-08  0.40D-08    28.16
    6     7     7     1.08888319    -0.58343580  -109.96463563    -0.00000051    -0.00000003  0.56D-08  0.40D-08    28.16


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.1%
 S   0.1%   0.5%
 P   0.8%  18.7%  32.6%

 Initialization:   0.4%
 Other:           46.8%

 Total CPU:       28.2 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222///222           0.0000000  -0.0000000   0.9583172   0.0000000   0.0000000   0.0000000   0.0000000
 222//2/222          -0.0815472   0.0000000   0.0000000   0.0000000   0.9548413   0.0000000   0.0000000
 2/222//222          -0.0000000   0.0000000   0.0000000  -0.0310094  -0.0000000   0.8565836  -0.0000000
 2//222/222           0.8540386   0.0000000  -0.0000000  -0.0000000   0.0729400  -0.0000000  -0.0000000
 22//22/222          -0.0000000  -0.0000000   0.0000000   0.8371353  -0.0000000  -0.1841221   0.0000000
 2/2/22/222          -0.0000000  -0.2307286   0.0000000  -0.0000000   0.0000000  -0.0000000   0.8255081
 22/22//222           0.0000000   0.7416093  -0.0000000   0.0000000  -0.0000000   0.0000000   0.4297785
 22/2/2/222           0.0000000  -0.5613838  -0.0000000   0.0000000  -0.0000000   0.0000000   0.2284702
 2/22/2/222           0.0000000   0.0000000   0.0000000   0.4654189   0.0000000   0.3882466  -0.0000000
 222/2//222           0.4270128   0.0000000   0.0000000   0.0000000   0.0364649   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.892585    0.000000    0.000000   -0.000000   -0.348805   -0.000000   -0.000000
 2           0.000000    0.957678    0.000000   -0.000000   -0.000000    0.000000    0.034988
 3          -0.000000   -0.000000   -0.000000    0.958317   -0.000000    0.000000    0.000000
 4           0.000000   -0.000000    0.815628    0.000000   -0.000000   -0.503113    0.000000
 5           0.348805    0.000000   -0.000000    0.000000    0.892585    0.000000    0.000000
 6           0.000000    0.000000    0.503113    0.000000    0.000000    0.815628    0.000000
 7           0.000000   -0.034988   -0.000000   -0.000000    0.000000   -0.000000    0.957678

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958317   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
 2          -0.000000    0.958317    0.000000   -0.000000   -0.000000   -0.000000   -0.000000
 3          -0.000000    0.000000    0.958317    0.000000   -0.000000   -0.000000   -0.000000
 4           0.000000   -0.000000    0.000000    0.958317    0.000000    0.000000   -0.000000
 5          -0.000000   -0.000000   -0.000000    0.000000    0.958317   -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.958317   -0.000000
 7           0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.958317


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.89258458 (fixed)   0.95831735 (relaxed)   0.95831719 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818214
 Singles      0.01383463   -0.07364015   -0.07504614
 Pairs        0.07504861    0.00000000   -0.04020752
 Total        1.08888356   -0.07364015   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369261
 One electron energy                 -193.17209941
 Two electron energy                   83.20746378
 Virial quotient                       -2.65335033
 Correlation energy                    -0.58343580
 !MRCI STATE 1.1 Energy              -109.964635628545

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649348 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649328 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649348 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204632 (Pople, fixed reference)
 Cluster corrected energies          -110.01204612 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204632 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95767830 (fixed)   0.95831739 (relaxed)   0.95831724 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.45108881
 Singles      0.01383454   -0.07364009   -0.07504610
 Pairs        0.07504859   -0.01861275   -0.05730089
 Total        1.08888346   -0.09225284   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369341
 One electron energy                 -193.17210050
 Two electron energy                   83.20746487
 Virial quotient                       -2.65335028
 Correlation energy                    -0.58343580
 !MRCI STATE 2.1 Energy              -109.964635628430

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649342 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649322 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649342 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204626 (Pople, fixed reference)
 Cluster corrected energies          -110.01204606 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204626 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.95831720 (fixed)   0.95831735 (relaxed)   0.95831720 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.46818223
 Singles      0.01383483   -0.07364006   -0.07504616
 Pairs        0.07504840    0.00000000   -0.04020741
 Total        1.08888355   -0.07364006   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44370050
 One electron energy                 -193.17212057
 Two electron energy                   83.20748494
 Virial quotient                       -2.65334983
 Correlation energy                    -0.58343580
 !MRCI STATE 3.1 Energy              -109.964635628350

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649347 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649327 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649347 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204631 (Pople, fixed reference)
 Cluster corrected energies          -110.01204611 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204631 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.81562802 (fixed)   0.95831737 (relaxed)   0.95831721 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818215
 Singles      0.01383462   -0.07364016   -0.07504613
 Pairs        0.07504858    0.00000000   -0.04020752
 Total        1.08888352   -0.07364016   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369301
 One electron energy                 -193.17210180
 Two electron energy                   83.20746617
 Virial quotient                       -2.65335031
 Correlation energy                    -0.58343580
 !MRCI STATE 4.1 Energy              -109.964635628336

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649345 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649325 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649345 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204629 (Pople, fixed reference)
 Cluster corrected energies          -110.01204609 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204629 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Coefficient of reference function:   C(0) = 0.89258456 (fixed)   0.95831733 (relaxed)   0.95831718 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818217
 Singles      0.01383485   -0.07364010   -0.07504617
 Pairs        0.07504842   -0.00000000   -0.04020746
 Total        1.08888360   -0.07364010   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369914
 One electron energy                 -193.17211978
 Two electron energy                   83.20748415
 Virial quotient                       -2.65334992
 Correlation energy                    -0.58343580
 !MRCI STATE 5.1 Energy              -109.964635628138

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649350 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649330 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649350 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204634 (Pople, fixed reference)
 Cluster corrected energies          -110.01204614 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204634 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.81562802 (fixed)   0.95831738 (relaxed)   0.95831722 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032    0.00000000   -0.46818219
 Singles      0.01383464   -0.07364012   -0.07504613
 Pairs        0.07504853    0.00000000   -0.04020748
 Total        1.08888349   -0.07364012   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369520
 One electron energy                 -193.17210619
 Two electron energy                   83.20747056
 Virial quotient                       -2.65335017
 Correlation energy                    -0.58343580
 !MRCI STATE 6.1 Energy              -109.964635627776

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649344 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649323 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649344 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204628 (Pople, fixed reference)
 Cluster corrected energies          -110.01204608 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204628 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95767827 (fixed)   0.95831736 (relaxed)   0.95831720 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000032   -0.00000000   -0.00031232
 Singles      0.01383470   -0.07364018   -0.07504615
 Pairs        0.07504852   -0.50945572   -0.50807732
 Total        1.08888354   -0.58309591   -0.58343580
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38119983
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44369436
 One electron energy                 -193.17210618
 Two electron energy                   83.20747055
 Virial quotient                       -2.65335022
 Correlation energy                    -0.58343580
 !MRCI STATE 7.1 Energy              -109.964635627743

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01649347 (Davidson, fixed reference)
 Cluster corrected energies          -110.01649326 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01649347 (Davidson, rotated reference)

 Cluster corrected energies          -110.01204631 (Pople, fixed reference)
 Cluster corrected energies          -110.01204611 (Pople, relaxed reference)
 Cluster corrected energies          -110.01204631 (Pople, rotated reference)



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
 CPU TIMES  *        35.97     31.71      2.32      1.56
 REAL TIME  *        44.42 SEC
 DISK USED  *        98.11 MB (local),        3.00 GB (total)
 SF USED    *       657.86 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01649348  AU                              
 SETTING HLSDIAG(2)     =      -110.01649342  AU                              
 SETTING HLSDIAG(3)     =      -110.01649347  AU                              
 SETTING HLSDIAG(4)     =      -110.01649345  AU                              
 SETTING HLSDIAG(5)     =      -110.01649350  AU                              
 SETTING HLSDIAG(6)     =      -110.01649344  AU                              
 SETTING HLSDIAG(7)     =      -110.01649347  AU                              


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
     1      -109.35136820
     2      -109.35136820
     3      -109.35136820
     4      -109.35136820
     5      -109.35136819
     6      -109.35136819
     7      -109.35136819

 Number of blocks in overlap matrix:    16   Smallest eigenvalue:  0.67D-05
 Number of N-2 electron functions:     700
 Number of N-1 electron functions:    1815

 Number of internal configurations:                  175
 Number of singly external configurations:         79056
 Number of doubly external configurations:       1329888
 Total number of contracted configurations:      1409119
 Total number of uncontracted configurations:   16014913

 Diagonal Coupling coefficients finished.               Storage:  570570 words, CPU-Time:      0.06 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:  429037 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.35136820     0.00000000    -0.70285026  0.30D-01  0.11D+00     0.23
    1     2     2     1.00000000     0.00000000  -109.35136820     0.00000000    -0.70451235  0.30D-01  0.11D+00     0.23
    1     3     3     1.00000000     0.00000000  -109.35136820     0.00000000    -0.70310053  0.30D-01  0.11D+00     0.23
    1     4     4     1.00000000     0.00000000  -109.35136820     0.00000000    -0.70406836  0.30D-01  0.11D+00     0.23
    1     5     5     1.00000000     0.00000000  -109.35136819     0.00000000    -0.70292803  0.30D-01  0.11D+00     0.23
    1     6     6     1.00000000     0.00000000  -109.35136819     0.00000000    -0.70497865  0.30D-01  0.11D+00     0.23
    1     7     7     1.00000000     0.00000000  -109.35136819     0.00000000    -0.70447273  0.30D-01  0.11D+00     0.23
    2     1     1     1.09446166    -0.57070936  -109.92207756    -0.57070936    -0.01696109  0.18D-02  0.23D-02     9.90
    2     2     2     1.09455836    -0.57036188  -109.92173007    -0.57036188    -0.01719086  0.19D-02  0.23D-02     9.90
    2     3     3     1.09455403    -0.57030776  -109.92167596    -0.57030776    -0.01728007  0.19D-02  0.23D-02     9.90
    2     4     4     1.09435306    -0.57028958  -109.92165777    -0.57028958    -0.01720610  0.19D-02  0.23D-02     9.90
    2     5     5     1.09434721    -0.57021203  -109.92158022    -0.57021203    -0.01723869  0.18D-02  0.23D-02     9.90
    2     6     6     1.09472963    -0.56997915  -109.92134734    -0.56997915    -0.01753850  0.20D-02  0.24D-02     9.90
    2     7     7     1.09465988    -0.56994806  -109.92131625    -0.56994806    -0.01756300  0.20D-02  0.24D-02     9.90
    3     1     1     1.08916124    -0.58717881  -109.93854701    -0.01646945    -0.00045368  0.25D-04  0.88D-04    19.26
    3     2     2     1.08909779    -0.58711108  -109.93847928    -0.01674920    -0.00049572  0.25D-04  0.96D-04    19.26
    3     3     3     1.08909901    -0.58710595  -109.93847414    -0.01679818    -0.00051088  0.24D-04  0.10D-03    19.26
    3     4     4     1.08901397    -0.58708133  -109.93844952    -0.01679175    -0.00051663  0.25D-04  0.10D-03    19.26
    3     5     5     1.08903004    -0.58707941  -109.93844760    -0.01686738    -0.00052126  0.24D-04  0.10D-03    19.26
    3     6     6     1.08899233    -0.58706937  -109.93843756    -0.01709022    -0.00051731  0.24D-04  0.10D-03    19.26
    3     7     7     1.08900952    -0.58706642  -109.93843461    -0.01711836    -0.00053171  0.24D-04  0.11D-03    19.26
    4     1     1     1.09055115    -0.58770630  -109.93907450    -0.00052749    -0.00005503  0.42D-05  0.12D-04    28.58
    4     2     2     1.09053380    -0.58769453  -109.93906273    -0.00058345    -0.00006366  0.42D-05  0.13D-04    28.58
    4     3     3     1.09049197    -0.58769110  -109.93905929    -0.00058515    -0.00006856  0.44D-05  0.14D-04    28.58
    4     4     4     1.09052475    -0.58768980  -109.93905800    -0.00060847    -0.00006815  0.42D-05  0.14D-04    28.58
    4     5     5     1.09047014    -0.58768676  -109.93905496    -0.00060736    -0.00007369  0.40D-05  0.16D-04    28.58
    4     6     6     1.09046777    -0.58768595  -109.93905414    -0.00061658    -0.00007385  0.42D-05  0.16D-04    28.58
    4     7     7     1.09048475    -0.58768405  -109.93905225    -0.00061763    -0.00007712  0.40D-05  0.17D-04    28.58
    5     1     1     1.09101744    -0.58775759  -109.93912579    -0.00005128    -0.00001062  0.36D-06  0.27D-05    37.90
    5     2     2     1.09102388    -0.58775514  -109.93912334    -0.00006061    -0.00001226  0.36D-06  0.29D-05    37.90
    5     3     3     1.09099592    -0.58775416  -109.93912236    -0.00006307    -0.00001296  0.58D-06  0.30D-05    37.90
    5     4     4     1.09099449    -0.58775388  -109.93912207    -0.00006408    -0.00001378  0.44D-06  0.34D-05    37.90
    5     5     5     1.09102655    -0.58775340  -109.93912160    -0.00006664    -0.00001377  0.33D-06  0.33D-05    37.90
    5     6     6     1.09099352    -0.58775317  -109.93912136    -0.00006722    -0.00001405  0.49D-06  0.34D-05    37.90
    5     7     7     1.09099677    -0.58775180  -109.93911999    -0.00006774    -0.00001510  0.57D-06  0.35D-05    37.90
    6     1     1     1.09109910    -0.58776612  -109.93913431    -0.00000853    -0.00000140  0.71D-07  0.34D-06    47.22
    6     2     2     1.09108920    -0.58776562  -109.93913381    -0.00001048    -0.00000181  0.87D-07  0.42D-06    47.22
    6     3     3     1.09109664    -0.58776559  -109.93913378    -0.00001142    -0.00000172  0.10D-06  0.38D-06    47.22
    6     4     4     1.09108781    -0.58776547  -109.93913367    -0.00001160    -0.00000183  0.12D-06  0.41D-06    47.22
    6     5     5     1.09108975    -0.58776526  -109.93913345    -0.00001186    -0.00000201  0.12D-06  0.46D-06    47.22
    6     6     6     1.09108925    -0.58776503  -109.93913322    -0.00001185    -0.00000215  0.11D-06  0.48D-06    47.22
    6     7     7     1.09109953    -0.58776502  -109.93913321    -0.00001322    -0.00000206  0.13D-06  0.45D-06    47.22
    7     1     1     1.09112155    -0.58776740  -109.93913560    -0.00000128    -0.00000033  0.59D-08  0.92D-07    56.51
    7     2     2     1.09112041    -0.58776727  -109.93913547    -0.00000166    -0.00000044  0.62D-08  0.11D-06    56.51
    7     3     3     1.09111706    -0.58776727  -109.93913546    -0.00000168    -0.00000045  0.86D-08  0.12D-06    56.51
    7     4     4     1.09111603    -0.58776726  -109.93913545    -0.00000179    -0.00000047  0.61D-08  0.13D-06    56.51
    7     5     5     1.09111559    -0.58776718  -109.93913538    -0.00000192    -0.00000053  0.72D-08  0.14D-06    56.51
    7     6     6     1.09111945    -0.58776711  -109.93913531    -0.00000209    -0.00000056  0.62D-08  0.14D-06    56.51
    7     7     7     1.09111646    -0.58776709  -109.93913528    -0.00000207    -0.00000061  0.74D-08  0.16D-06    56.51
    8     1     1     1.09113472    -0.58776767  -109.93913587    -0.00000027    -0.00000007  0.20D-08  0.19D-07    65.80
    8     2     2     1.09113350    -0.58776765  -109.93913584    -0.00000037    -0.00000010  0.28D-08  0.24D-07    65.80
    8     3     3     1.09113399    -0.58776764  -109.93913583    -0.00000037    -0.00000010  0.30D-08  0.24D-07    65.80
    8     4     4     1.09113192    -0.58776764  -109.93913583    -0.00000038    -0.00000010  0.33D-08  0.25D-07    65.80
    8     5     5     1.09113235    -0.58776761  -109.93913581    -0.00000043    -0.00000012  0.34D-08  0.30D-07    65.80
    8     6     6     1.09113268    -0.58776759  -109.93913578    -0.00000047    -0.00000014  0.43D-08  0.34D-07    65.80
    8     7     7     1.09113336    -0.58776758  -109.93913577    -0.00000049    -0.00000014  0.38D-08  0.34D-07    65.80
    9     1     1     1.09114146    -0.58776774  -109.93913593    -0.00000006    -0.00000002  0.14D-09  0.53D-08    75.16
    9     2     2     1.09114067    -0.58776773  -109.93913592    -0.00000008    -0.00000003  0.16D-09  0.68D-08    75.16
    9     3     3     1.09114036    -0.58776773  -109.93913592    -0.00000009    -0.00000003  0.19D-09  0.73D-08    75.16
    9     4     4     1.09114124    -0.58776773  -109.93913592    -0.00000009    -0.00000003  0.18D-09  0.71D-08    75.16
    9     5     5     1.09114045    -0.58776772  -109.93913592    -0.00000011    -0.00000003  0.21D-09  0.90D-08    75.16
    9     6     6     1.09114016    -0.58776771  -109.93913591    -0.00000012    -0.00000004  0.19D-09  0.11D-07    75.16
    9     7     7     1.09114118    -0.58776771  -109.93913590    -0.00000013    -0.00000004  0.34D-09  0.10D-07    75.16
   10     1     1     1.09114655    -0.58776775  -109.93913595    -0.00000001    -0.00000001  0.33D-09  0.15D-08    79.03
   10     2     2     1.09114696    -0.58776775  -109.93913594    -0.00000002    -0.00000001  0.37D-09  0.17D-08    79.03
   10     3     3     1.09114147    -0.58776774  -109.93913593    -0.00000001    -0.00000002  0.14D-09  0.53D-08    79.03
   10     4     4     1.09114070    -0.58776773  -109.93913592    -0.00000000    -0.00000002  0.17D-09  0.68D-08    79.03
   10     5     5     1.09114036    -0.58776773  -109.93913592    -0.00000001    -0.00000003  0.19D-09  0.73D-08    79.03
   10     6     6     1.09114124    -0.58776773  -109.93913592    -0.00000002    -0.00000003  0.18D-09  0.71D-08    79.03
   10     7     7     1.09114045    -0.58776772  -109.93913592    -0.00000001    -0.00000003  0.21D-09  0.90D-08    79.03


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.2%
 S   0.1%   0.5%
 P   0.4%  14.2%  51.0%

 Initialization:   0.2%
 Other:           33.4%

 Total CPU:       79.0 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2222//\222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.9544457  -0.0000000  -0.0000000
 22//22\222           0.0890944   0.0000000   0.8490238  -0.0000000   0.0000000   0.0000000  -0.0000000
 22/22/\222           0.0000000  -0.2751555   0.0000000   0.8081244  -0.0000000  -0.0000000  -0.0000000
 2/222/\222           0.7997841  -0.0000000  -0.2985169   0.0000000   0.0000000   0.0000000   0.0000000
 222//2\222           0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.6038516   0.7391415
 2/2/22\222          -0.0000000   0.7136694  -0.0000000   0.4684479   0.0000000  -0.0000000   0.0000000
 2//222\222           0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.6611090  -0.5401027
 22/2/2\222          -0.0000000   0.5708999  -0.0000000  -0.1961067  -0.0000000   0.0000000   0.0000000
 2/22/2\222           0.5131952   0.0000000   0.3178243  -0.0000000   0.0000000  -0.0000000  -0.0000000
 222/2/\222           0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.3305513  -0.2700473

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.000000    0.000000   -0.000000    0.710752   -0.000000    0.641323   -0.000000
 2          -0.695052    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.658307
 3           0.000000   -0.000000   -0.000000    0.641325    0.000000   -0.710754   -0.000000
 4           0.658309    0.000000    0.000000   -0.000000    0.000000    0.000000    0.695053
 5          -0.000000    0.000000    0.957324    0.000000    0.000000   -0.000000   -0.000000
 6          -0.000000    0.847215   -0.000000   -0.000000    0.445752   -0.000000   -0.000000
 7          -0.000000   -0.445752   -0.000000   -0.000000    0.847216    0.000000    0.000000

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957322   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000
 2          -0.000000    0.957321   -0.000000   -0.000000    0.000000    0.000000    0.000000
 3           0.000000   -0.000000    0.957324   -0.000000    0.000000    0.000000    0.000000
 4          -0.000000   -0.000000   -0.000000    0.957324    0.000000    0.000000    0.000000
 5          -0.000000    0.000000    0.000000    0.000000    0.957324    0.000000    0.000000
 6           0.000000    0.000000    0.000000    0.000000    0.000000    0.957324    0.000000
 7          -0.000000    0.000000    0.000000    0.000000    0.000000    0.000000    0.957324


 RESULTS FOR STATE 1.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.71075232 (fixed)   0.95732292 (relaxed)   0.95732159 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.46924254
 Singles      0.01496318   -0.07575558   -0.07748808
 Pairs        0.07618362   -0.00000000   -0.04103712
 Total        1.09114958   -0.07575558   -0.58776775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136819
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45702849
 One electron energy                 -193.12252008
 Two electron energy                   83.18338413
 Virial quotient                       -2.65188172
 Correlation energy                    -0.58776775
 !MRCI STATE 1.1 Energy              -109.939135945506

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99271073 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270895 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99271073 (Davidson, rotated reference)

 Cluster corrected energies          -109.98940114 (Pople, fixed reference)
 Cluster corrected energies          -109.98939935 (Pople, relaxed reference)
 Cluster corrected energies          -109.98940114 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  1

 Coefficient of reference function:   C(0) = 0.69505155 (fixed)   0.95732274 (relaxed)   0.95732141 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.14656651
 Singles      0.01496322   -0.07575569   -0.07748810
 Pairs        0.07618400   -0.35208765   -0.36371314
 Total        1.09115000   -0.42784334   -0.58776775
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136820
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45701796
 One electron energy                 -193.12251558
 Two electron energy                   83.18337963
 Virial quotient                       -2.65188239
 Correlation energy                    -0.58776775
 !MRCI STATE 2.1 Energy              -109.939135944394

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99271098 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270919 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99271098 (Davidson, rotated reference)

 Cluster corrected energies          -109.98940139 (Pople, fixed reference)
 Cluster corrected energies          -109.98939960 (Pople, relaxed reference)
 Cluster corrected energies          -109.98940139 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.71075392 (fixed)   0.95732515 (relaxed)   0.95732382 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.46924328
 Singles      0.01496330   -0.07575714   -0.07748857
 Pairs        0.07617842   -0.00000000   -0.04103589
 Total        1.09114450   -0.07575714   -0.58776774
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136819
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45713848
 One electron energy                 -193.12263088
 Two electron energy                   83.18349494
 Virial quotient                       -2.65187468
 Correlation energy                    -0.58776774
 !MRCI STATE 3.1 Energy              -109.939135932104

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99270773 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270594 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99270773 (Davidson, rotated reference)

 Cluster corrected energies          -109.98939813 (Pople, fixed reference)
 Cluster corrected energies          -109.98939633 (Pople, relaxed reference)
 Cluster corrected energies          -109.98939813 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  7

 Coefficient of reference function:   C(0) = 0.69505332 (fixed)   0.95732549 (relaxed)   0.95732416 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.12855600
 Singles      0.01496328   -0.07575744   -0.07748863
 Pairs        0.07617767   -0.37173886   -0.38172310
 Total        1.09114374   -0.44749630   -0.58776773
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136819
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45715511
 One electron energy                 -193.12264877
 Two electron energy                   83.18351284
 Virial quotient                       -2.65187362
 Correlation energy                    -0.58776773
 !MRCI STATE 4.1 Energy              -109.939135924825

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99270727 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270549 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99270727 (Davidson, rotated reference)

 Cluster corrected energies          -109.98939767 (Pople, fixed reference)
 Cluster corrected energies          -109.98939587 (Pople, relaxed reference)
 Cluster corrected energies          -109.98939767 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.95732430 (fixed)   0.95732564 (relaxed)   0.95732430 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.46924385
 Singles      0.01496319   -0.07575704   -0.07748858
 Pairs        0.07617742   -0.00000000   -0.04103530
 Total        1.09114340   -0.07575704   -0.58776773
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136820
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45711514
 One electron energy                 -193.12261318
 Two electron energy                   83.18347726
 Virial quotient                       -2.65187618
 Correlation energy                    -0.58776773
 !MRCI STATE 5.1 Energy              -109.939135923456

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99270707 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270529 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99270707 (Davidson, rotated reference)

 Cluster corrected energies          -109.98939747 (Pople, fixed reference)
 Cluster corrected energies          -109.98939567 (Pople, relaxed reference)
 Cluster corrected energies          -109.98939747 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.84721540 (fixed)   0.95732525 (relaxed)   0.95732392 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000278   -0.00000000   -0.46924342
 Singles      0.01496329   -0.07575709   -0.07748859
 Pairs        0.07617820    0.00000000   -0.04103572
 Total        1.09114427   -0.07575709   -0.58776773
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136820
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45711858
 One electron energy                 -193.12261247
 Two electron energy                   83.18347655
 Virial quotient                       -2.65187595
 Correlation energy                    -0.58776773
 !MRCI STATE 6.1 Energy              -109.939135922730

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99270759 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270580 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99270759 (Davidson, rotated reference)

 Cluster corrected energies          -109.98939798 (Pople, fixed reference)
 Cluster corrected energies          -109.98939619 (Pople, relaxed reference)
 Cluster corrected energies          -109.98939798 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.84721599 (fixed)   0.95732560 (relaxed)   0.95732426 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000279   -0.00000000   -0.46924361
 Singles      0.01496340   -0.07575725   -0.07748872
 Pairs        0.07617731    0.00000000   -0.04103540
 Total        1.09114349   -0.07575725   -0.58776772
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35136820
 Nuclear energy                         0.00000000
 Kinetic energy                        41.45711532
 One electron energy                 -193.12260932
 Two electron energy                   83.18347341
 Virial quotient                       -2.65187616
 Correlation energy                    -0.58776772
 !MRCI STATE 7.1 Energy              -109.939135915070

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99270712 (Davidson, fixed reference)
 Cluster corrected energies          -109.99270533 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99270712 (Davidson, rotated reference)

 Cluster corrected energies          -109.98939751 (Pople, fixed reference)
 Cluster corrected energies          -109.98939572 (Pople, relaxed reference)
 Cluster corrected energies          -109.98939751 (Pople, rotated reference)



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
 CPU TIMES  *       119.78     83.80     31.71      2.32      1.56
 REAL TIME  *       142.70 SEC
 DISK USED  *       174.50 MB (local),        5.24 GB (total)
 SF USED    *       768.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -109.99271073  AU                              
 SETTING HLSDIAG(9)     =      -109.99271098  AU                              
 SETTING HLSDIAG(10)    =      -109.99270773  AU                              
 SETTING HLSDIAG(11)    =      -109.99270727  AU                              
 SETTING HLSDIAG(12)    =      -109.99270707  AU                              
 SETTING HLSDIAG(13)    =      -109.99270759  AU                              
 SETTING HLSDIAG(14)    =      -109.99270712  AU                              


         HLSDIAG
    -110.0164935
    -110.0164934
    -110.0164935
    -110.0164935
    -110.0164935
    -110.0164934
    -110.0164935
    -109.9927107
    -109.9927110
    -109.9927077
    -109.9927073
    -109.9927071
    -109.9927076
    -109.9927071
                                                  


 PROGRAM * CI (Multireference internally contracted CI)     Authors: H.-J. Werner, P.J. Knowles, 1987


 Diagonal elements of H will be replaced by values from variable HLSDIAG


   ******************************
   *** Spin-orbit calculation ***
   ******************************


   Spin-orbit matrix elements
   ==========================

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636   -109.964636
 Replaced energies:   -110.016493   -110.016493   -110.016493   -110.016493   -110.016494   -110.016493   -110.016493

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=   7

 Original energies:   -109.939136   -109.939136   -109.939136   -109.939136   -109.939136   -109.939136   -109.939136
 Replaced energies:   -109.992711   -109.992711   -109.992708   -109.992707   -109.992707   -109.992708   -109.992707



   Spin-orbit calculation in the basis of zeroth order wave functions
   ==================================================================

 Lowest unperturbed energy E0=  -110.01649350

 Wigner-Eckart theorem used for 23 matrix elements

 No symmetry adapted basis set used to set up the SO-matrix


 Spin-Orbit Matrix (CM-1)
 ========================

   Nr   State  S   Sz        1          2          3          4          5          6          7          8          9         10

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -696.42      -0.00
                            0.00      -0.00     -87.51       0.00       0.00       0.00       0.00      -0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.02       0.00       0.00       0.00       0.00       0.00     696.42       0.00      -0.00
                            0.00       0.00       0.00     738.21      -0.00    -141.44      -0.00      -0.00      -0.00     571.82

    3   3.1  1.5  1.5       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           87.51      -0.00      -0.00       0.00   -1024.66      -0.00       0.00      -0.00    -571.82      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00      -0.00    -127.54
                           -0.00    -738.21      -0.00      -0.00      -0.00      -0.00    -766.40    -505.88      -0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     239.31      -0.00
                           -0.00       0.00    1024.66       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.01       0.00      -0.00       0.00    -579.88
                           -0.00     141.44       0.00       0.00       0.00      -0.00    1221.33    -462.29      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01    -316.84       0.00       0.00
                           -0.00       0.00      -0.00     766.40      -0.00   -1221.33       0.00       0.00      -0.00     159.82

    8   1.1  1.5  0.5       0.00     696.42       0.00       0.00       0.00      -0.00    -316.84       0.00       0.00       0.00
                            0.00       0.00       0.00     505.88      -0.00     462.29      -0.00       0.00      -0.00     -29.17

    9   2.1  1.5  0.5    -696.42       0.00       0.00      -0.00     239.31       0.00       0.00       0.00       0.02       0.00
                           -0.00       0.00     571.82       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

   10   3.1  1.5  0.5      -0.00      -0.00      -0.00    -127.54      -0.00    -579.88       0.00       0.00       0.00       0.01
                           -0.00    -571.82       0.00      -0.00      -0.00      -0.00    -159.82      29.17      -0.00      -0.00

   11   4.1  1.5  0.5      -0.00       0.00     127.54       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                         -505.88      -0.00       0.00      -0.00    -638.71       0.00      -0.00      -0.00    -246.07      -0.00

   12   5.1  1.5  0.5      -0.00    -239.31       0.00      -0.00      -0.00       0.00     488.52       0.00       0.00       0.00
                            0.00       0.00       0.00     638.71      -0.00      61.04      -0.00      -0.00       0.00     341.55

   13   6.1  1.5  0.5       0.00      -0.00     579.88       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -462.29      -0.00       0.00      -0.00     -61.04      -0.00       0.00      -0.00      47.15       0.00

   14   7.1  1.5  0.5     316.84      -0.00      -0.00       0.00    -488.52      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00     159.82       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     804.16       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -804.16       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     660.28

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -660.28       0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     147.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -584.14      -0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -276.33       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     669.58
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -533.81      -0.00       0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     365.85      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00     184.55

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

   29   1.1  0.5  0.5       0.00      -0.00    -405.23       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00
                          410.59      -0.00       0.00      -0.00     178.07       0.00      -0.00       0.00     -45.17      -0.00

   30   2.1  0.5  0.5    -503.07       0.00      -0.00       0.00     344.15       0.00      -0.00       0.00       0.00       0.00
                           -0.00       0.00     223.59      -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00

   31   3.1  0.5  0.5       0.00       0.00      42.52       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00
                          229.31       0.00      -0.00      -0.00     402.71       0.00      -0.00       0.00    -340.90      -0.00

   32   4.1  0.5  0.5     150.36       0.00      -0.00       0.00     144.65      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -340.63       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00

   33   5.1  0.5  0.5      -0.00       0.00      -0.00      87.52       0.00     397.94       0.00       0.00       0.00       0.00
                           -0.00     392.42      -0.00      -0.00       0.00       0.00     109.68      40.04       0.00       0.00

   34   6.1  0.5  0.5      -0.00    -228.69       0.00       0.00      -0.00       0.00     -77.36       0.00       0.00       0.00
                            0.00       0.00       0.00    -554.38      -0.00    -256.88      -0.00       0.00      -0.00     297.67

   35   7.1  0.5  0.5      -0.00     450.65      -0.00       0.00       0.00       0.00    -392.03       0.00       0.00       0.00
                           -0.00       0.00       0.00     -72.89       0.00     190.83      -0.00       0.00       0.00     364.36

   36   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -233.96
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     237.06      -0.00       0.00

   37   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -290.45       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     129.09

   38   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      24.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     132.39       0.00      -0.00

   39   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      86.81       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -196.66

   40   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     226.56      -0.00

   41   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -132.04       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00

   42   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     260.18      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5      -0.00      -0.00       0.00     316.84       0.00       0.00       0.00       0.00       0.00       0.00
                          505.88      -0.00     462.29      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00    -239.31      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5     127.54       0.00     579.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -159.82       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -638.71       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00      -0.00    -488.52       0.00       0.00       0.00       0.00       0.00       0.00
                          638.71       0.00      61.04      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -61.04       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00     488.52       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    -804.16      -0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00      -0.00       0.00       0.00     584.14      -0.00     533.81

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00     804.16       0.00      -0.00       0.00    -276.33      -0.00
                          246.07      -0.00     -47.15      -0.00      -0.00      -0.00     660.28       0.00      -0.00       0.00

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     147.27       0.00     669.58
                            0.00    -341.55      -0.00       0.00      -0.00    -660.28      -0.00      -0.00      -0.00      -0.00

   11   4.1  1.5  0.5       0.01       0.00       0.00       0.00       0.00      -0.00    -147.27       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00    -255.47    -584.14      -0.00       0.00       0.00    -737.52       0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00     276.33      -0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     737.52       0.00      70.48

   13   6.1  1.5  0.5       0.00       0.00       0.01       0.00      -0.00       0.00    -669.58      -0.00       0.00       0.00
                            0.00       0.00      -0.00     407.11    -533.81      -0.00       0.00      -0.00     -70.48       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.01    -365.85       0.00       0.00      -0.00     564.09       0.00
                          255.47      -0.00    -407.11       0.00       0.00      -0.00     184.55       0.00       0.00      -0.00

   15   1.1  1.5 -0.5       0.00       0.00      -0.00    -365.85       0.00       0.00       0.00       0.00       0.00       0.00
                          584.14      -0.00     533.81      -0.00      -0.00       0.00      29.17      -0.00      -0.00      -0.00

   16   2.1  1.5 -0.5      -0.00     276.33       0.00       0.00       0.00       0.02       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00      -0.00      -0.00      -0.00    -246.07       0.00      47.15

   17   3.1  1.5 -0.5    -147.27      -0.00    -669.58       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -184.55     -29.17       0.00       0.00      -0.00     341.55       0.00

   18   4.1  1.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.01       0.00       0.00
                           -0.00    -737.52       0.00      -0.00       0.00     246.07       0.00       0.00       0.00       0.00

   19   5.1  1.5 -0.5      -0.00      -0.00       0.00     564.09       0.00       0.00       0.00       0.00       0.00       0.00
                          737.52      -0.00      70.48      -0.00       0.00      -0.00    -341.55      -0.00       0.00       0.00

   20   6.1  1.5 -0.5       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01
                           -0.00     -70.48      -0.00       0.00       0.00     -47.15      -0.00      -0.00      -0.00       0.00

   21   7.1  1.5 -0.5       0.00    -564.09      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00       0.00    -255.47       0.00     407.11

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     696.42       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     505.88      -0.00     462.29

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00    -696.42       0.00       0.00      -0.00     239.31       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00     571.82       0.00      -0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00    -127.54      -0.00    -579.88
                           -0.00      -0.00      -0.00      -0.00      -0.00    -571.82       0.00      -0.00      -0.00      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00     127.54       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00    -505.88      -0.00       0.00      -0.00    -638.71       0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00    -239.31       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00     638.71      -0.00      61.04

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00     579.88       0.00      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00    -462.29      -0.00       0.00      -0.00     -61.04      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00     316.84      -0.00      -0.00       0.00    -488.52      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00     159.82       0.00       0.00      -0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00    -233.96       0.00       0.00      -0.00
                            0.00      -0.00       0.00     419.56    -237.06       0.00      -0.00       0.00    -102.81      -0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00    -290.45       0.00      -0.00       0.00     198.69       0.00
                          -23.98       0.00    -318.58      -0.00       0.00      -0.00    -129.09       0.00      -0.00       0.00

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      24.55       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00    -509.04    -132.39      -0.00       0.00       0.00    -232.50      -0.00

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00      86.81       0.00      -0.00       0.00      83.51      -0.00
                          486.24      -0.00    -463.58      -0.00       0.00      -0.00     196.66      -0.00      -0.00       0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      50.53       0.00     229.75
                            0.00    -468.79       0.00      -0.00       0.00    -226.56       0.00       0.00      -0.00      -0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -132.04       0.00       0.00      -0.00       0.00
                           -0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00     320.07       0.00     148.31

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00     260.18      -0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      42.08      -0.00    -110.17

   36   1.1  0.5 -0.5       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     102.81       0.00      -0.00       0.00     -45.17      -0.00       0.00      -0.00       0.00

   37   2.1  0.5 -0.5       0.00     198.69       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00       0.00       0.00      -0.00     -23.98       0.00    -318.58

   38   3.1  0.5 -0.5       0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     232.50       0.00      -0.00       0.00    -340.90      -0.00       0.00      -0.00      -0.00

   39   4.1  0.5 -0.5       0.00      83.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00       0.00       0.00       0.00     486.24      -0.00    -463.58

   40   5.1  0.5 -0.5      50.53       0.00     229.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      63.32      40.04       0.00       0.00       0.00    -468.79       0.00

   41   6.1  0.5 -0.5       0.00      -0.00       0.00     -44.66       0.00       0.00       0.00       0.00       0.00       0.00
                         -320.07      -0.00    -148.31      -0.00       0.00      -0.00     297.67      -0.00       0.00       0.00

   42   7.1  0.5 -0.5       0.00       0.00       0.00    -226.34       0.00       0.00       0.00       0.00       0.00       0.00
                          -42.08       0.00     110.17      -0.00       0.00       0.00     364.36      -0.00       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -503.07
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -410.59       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -405.23      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -223.59

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     344.15
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -178.07      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5     365.85       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    9   2.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      45.17      -0.00

   10   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -184.55       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      23.98

   12   5.1  1.5  0.5    -564.09       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

   13   6.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     318.58

   14   7.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -419.56       0.00

   15   1.1  1.5 -0.5       0.00       0.00    -696.42      -0.00      -0.00      -0.00       0.00     316.84       0.00    -290.45
                           -0.00      -0.00       0.00       0.00     505.88      -0.00     462.29      -0.00     237.06      -0.00

   16   2.1  1.5 -0.5       0.00     696.42       0.00      -0.00       0.00    -239.31      -0.00      -0.00      -0.00       0.00
                            0.00      -0.00      -0.00     571.82       0.00      -0.00       0.00       0.00      -0.00       0.00

   17   3.1  1.5 -0.5       0.00       0.00       0.00      -0.00     127.54       0.00     579.88      -0.00    -233.96      -0.00
                           -0.00      -0.00    -571.82      -0.00      -0.00      -0.00      -0.00    -159.82       0.00     129.09

   18   4.1  1.5 -0.5       0.00       0.00      -0.00    -127.54       0.00      -0.00       0.00       0.00       0.00       0.00
                          255.47    -505.88      -0.00       0.00       0.00    -638.71       0.00      -0.00      -0.00      -0.00

   19   5.1  1.5 -0.5       0.00       0.00     239.31      -0.00       0.00      -0.00      -0.00    -488.52       0.00     198.69
                           -0.00       0.00       0.00       0.00     638.71       0.00      61.04      -0.00     102.81       0.00

   20   6.1  1.5 -0.5       0.00      -0.00       0.00    -579.88      -0.00       0.00       0.00      -0.00      -0.00       0.00
                         -407.11    -462.29      -0.00       0.00      -0.00     -61.04       0.00       0.00       0.00      -0.00

   21   7.1  1.5 -0.5       0.01    -316.84       0.00       0.00      -0.00     488.52       0.00      -0.00      -0.00      -0.00
                           -0.00       0.00      -0.00     159.82       0.00       0.00      -0.00      -0.00      -0.00      -0.00

   22   1.1  1.5 -1.5    -316.84       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      87.51      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.02       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00    -738.21       0.00     141.44       0.00       0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00       0.00
                         -159.82     -87.51       0.00       0.00      -0.00    1024.66       0.00      -0.00       0.00       0.00

   25   4.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00     738.21       0.00       0.00       0.00       0.00     766.40       0.00       0.00

   26   5.1  1.5 -1.5     488.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00   -1024.66      -0.00       0.00       0.00      -0.00       0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00       0.00
                            0.00       0.00    -141.44      -0.00      -0.00      -0.00       0.00   -1221.33       0.00       0.00

   28   7.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.01       0.00       0.00
                            0.00       0.00      -0.00       0.00    -766.40       0.00    1221.33      -0.00       0.00       0.00

   29   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5219.71       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     441.08

   30   2.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5219.66
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -441.08       0.00

   31   3.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -110.71

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -407.75       0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.32      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   34   6.1  0.5  0.5     -44.66       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   35   7.1  0.5  0.5    -226.34       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   36   1.1  0.5 -0.5       0.00       0.00      -0.00    -405.23       0.00       0.00      -0.00      -0.00      -0.00      -0.00
                          419.56    -410.59       0.00      -0.00       0.00    -178.07      -0.00       0.00      -0.00      -0.00

   37   2.1  0.5 -0.5       0.00    -503.07       0.00      -0.00       0.00     344.15       0.00      -0.00       0.00      -0.00
                           -0.00       0.00      -0.00    -223.59       0.00      -0.00       0.00       0.00       0.00      -0.00

   38   3.1  0.5 -0.5       0.00       0.00       0.00      42.52       0.00      -0.00      -0.00      -0.00      -0.00       0.00
                         -509.04    -229.31      -0.00       0.00       0.00    -402.71      -0.00       0.00       0.00      -0.00

   39   4.1  0.5 -0.5       0.00     150.36       0.00      -0.00       0.00     144.65      -0.00       0.00       0.00      -0.00
                           -0.00       0.00      -0.00     340.63      -0.00      -0.00       0.00       0.00       0.00       0.00

   40   5.1  0.5 -0.5       0.00      -0.00       0.00      -0.00      87.52       0.00     397.94       0.00    -666.05       0.00
                           -0.00       0.00    -392.42       0.00       0.00      -0.00      -0.00    -109.68      -0.00     367.50

   41   6.1  0.5 -0.5       0.00      -0.00    -228.69       0.00       0.00      -0.00       0.00     -77.36       0.00    -199.65
                            0.00      -0.00      -0.00      -0.00     554.38       0.00     256.88       0.00     688.19      -0.00

   42   7.1  0.5 -0.5       0.00      -0.00     450.65      -0.00       0.00       0.00       0.00    -392.03       0.00     981.74
                            0.00       0.00      -0.00      -0.00      72.89      -0.00    -190.83       0.00    -259.82      -0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5       0.00     150.36      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                         -229.31       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00    -228.69     450.65       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -392.42      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5      42.52      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     340.63       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00       0.00      87.52       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00     554.38      72.89       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5      -0.00     144.65       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -402.71      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00      -0.00     397.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     256.88    -190.83       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5      -0.00       0.00       0.00     -77.36    -392.03       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -109.68       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    -290.45       0.00      86.81      -0.00
                           -0.00      -0.00     -40.04      -0.00      -0.00    -237.06       0.00    -132.39       0.00       0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          340.90      -0.00      -0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00    -226.56

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00    -233.96      -0.00      24.55      -0.00      -0.00
                            0.00      -0.00      -0.00    -297.67    -364.36      -0.00    -129.09       0.00     196.66       0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      50.53
                           -0.00    -486.24      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     198.69      -0.00      83.51       0.00
                            0.00       0.00     468.79      -0.00      -0.00    -102.81      -0.00    -232.50      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     229.75
                            0.00     463.58      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                          509.04       0.00       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     -63.32

   15   1.1  1.5 -0.5       0.00      86.81      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          132.39      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -40.04

   16   2.1  1.5 -0.5       0.00       0.00       0.00    -132.04     260.18       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     226.56       0.00       0.00      45.17      -0.00     340.90      -0.00      -0.00

   17   3.1  1.5 -0.5      24.55      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -196.66      -0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00      50.53       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -320.07     -42.08      -0.00      23.98      -0.00    -486.24      -0.00

   19   5.1  1.5 -0.5      -0.00      83.51       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          232.50       0.00       0.00      -0.00       0.00       0.00      -0.00       0.00       0.00     468.79

   20   6.1  1.5 -0.5      -0.00      -0.00     229.75       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00    -148.31     110.17      -0.00     318.58       0.00     463.58      -0.00

   21   7.1  1.5 -0.5      -0.00       0.00       0.00     -44.66    -226.34       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      63.32      -0.00      -0.00    -419.56       0.00     509.04       0.00       0.00

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00    -503.07       0.00     150.36      -0.00
                            0.00       0.00       0.00       0.00       0.00     410.59      -0.00     229.31      -0.00      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00       0.00     392.42

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00    -405.23      -0.00      42.52      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00     223.59      -0.00    -340.63      -0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      87.52
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00     344.15      -0.00     144.65       0.00
                            0.00       0.00       0.00       0.00       0.00     178.07       0.00     402.71       0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      -0.00     397.94
                            0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00      -0.00     109.68

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00       0.00    -666.05
                           -0.00     407.75       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00
                          110.71      -0.00       0.00      -0.00      -0.00       0.00       0.00       0.00      -0.00    -367.50

   31   3.1  0.5  0.5    5220.37       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      -0.00      69.89
                           -0.00    -865.00       0.00       0.00       0.00       0.00      -0.00      -0.00      -0.00       0.00

   32   4.1  0.5  0.5       0.00    5220.47       0.00       0.00       0.00      -0.00       0.00       0.00       0.00       0.00
                          865.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00       0.00       0.00     559.88

   33   5.1  0.5  0.5       0.00       0.00    5220.52       0.00       0.00     666.05      -0.00     -69.89      -0.00      -0.00
                           -0.00       0.00       0.00    -423.71    -518.64      -0.00     367.50      -0.00    -559.88       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00    5220.41       0.00      -0.00     199.65       0.00    -342.93      -0.00
                           -0.00       0.00     423.71      -0.00      -0.00     688.19      -0.00     731.41      -0.00       0.00

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5220.51      -0.00    -981.74       0.00       1.42       0.00
                           -0.00       0.00     518.64       0.00      -0.00    -259.82      -0.00     212.67      -0.00      -0.00

   36   1.1  0.5 -0.5       0.00      -0.00     666.05      -0.00      -0.00    5219.71       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00    -688.19     259.82       0.00    -441.08       0.00    -407.75      -0.00

   37   2.1  0.5 -0.5      -0.00       0.00      -0.00     199.65    -981.74       0.00    5219.66       0.00       0.00       0.00
                            0.00      -0.00    -367.50       0.00       0.00     441.08      -0.00    -110.71       0.00      -0.00

   38   3.1  0.5 -0.5       0.00       0.00     -69.89       0.00       0.00       0.00       0.00    5220.37       0.00       0.00
                            0.00      -0.00       0.00    -731.41    -212.67      -0.00     110.71       0.00     865.00      -0.00

   39   4.1  0.5 -0.5      -0.00       0.00      -0.00    -342.93       1.42       0.00       0.00       0.00    5220.47       0.00
                            0.00      -0.00     559.88       0.00       0.00     407.75      -0.00    -865.00       0.00       0.00

   40   5.1  0.5 -0.5      69.89       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00    5220.52
                           -0.00    -559.88      -0.00      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

   41   6.1  0.5 -0.5      -0.00     342.93       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          731.41      -0.00       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00    -423.71

   42   7.1  0.5 -0.5      -0.00      -1.42      -0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00
                          212.67      -0.00      -0.00       0.00       0.00       0.00      -0.00       0.00      -0.00    -518.64


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
                           -0.00       0.00

    9   2.1  1.5  0.5    -132.04     260.18
                           -0.00      -0.00

   10   3.1  1.5  0.5       0.00      -0.00
                           -0.00      -0.00

   11   4.1  1.5  0.5       0.00       0.00
                          320.07      42.08

   12   5.1  1.5  0.5      -0.00       0.00
                            0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00
                          148.31    -110.17

   14   7.1  1.5  0.5     -44.66    -226.34
                            0.00       0.00

   15   1.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   16   2.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   17   3.1  1.5 -0.5       0.00       0.00
                         -297.67    -364.36

   18   4.1  1.5 -0.5       0.00       0.00
                            0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   21   7.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   22   1.1  1.5 -1.5      -0.00      -0.00
                            0.00      -0.00

   23   2.1  1.5 -1.5    -228.69     450.65
                            0.00       0.00

   24   3.1  1.5 -1.5       0.00      -0.00
                            0.00       0.00

   25   4.1  1.5 -1.5       0.00       0.00
                         -554.38     -72.89

   26   5.1  1.5 -1.5      -0.00       0.00
                           -0.00       0.00

   27   6.1  1.5 -1.5       0.00       0.00
                         -256.88     190.83

   28   7.1  1.5 -1.5     -77.36    -392.03
                           -0.00      -0.00

   29   1.1  0.5  0.5       0.00       0.00
                         -688.19     259.82

   30   2.1  0.5  0.5    -199.65     981.74
                            0.00       0.00

   31   3.1  0.5  0.5      -0.00      -0.00
                         -731.41    -212.67

   32   4.1  0.5  0.5     342.93      -1.42
                            0.00       0.00

   33   5.1  0.5  0.5       0.00      -0.00
                           -0.00       0.00

   34   6.1  0.5  0.5       0.00       0.00
                           -0.00      -0.00

   35   7.1  0.5  0.5      -0.00      -0.00
                            0.00      -0.00

   36   1.1  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

   37   2.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   38   3.1  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

   39   4.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   40   5.1  0.5 -0.5       0.00       0.00
                          423.71     518.64

   41   6.1  0.5 -0.5    5220.41       0.00
                            0.00       0.00

   42   7.1  0.5 -0.5       0.00    5220.51
                           -0.00       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02352198    -0.00702848    -1542.57      0.00000000        0.00      0.0000
     2  -110.02352198    -0.00702848    -1542.57      0.00000000        0.00      0.0000
     3  -110.02352198    -0.00702848    -1542.57      0.00000000        0.00      0.0000
     4  -110.02352198    -0.00702848    -1542.57      0.00000000        0.00      0.0000
     5  -110.02352198    -0.00702847    -1542.57      0.00000001        0.00      0.0000
     6  -110.02352198    -0.00702847    -1542.57      0.00000001        0.00      0.0000
     7  -110.02352196    -0.00702846    -1542.57      0.00000002        0.01      0.0000
     8  -110.02352196    -0.00702846    -1542.57      0.00000002        0.01      0.0000
     9  -110.02352195    -0.00702845    -1542.57      0.00000003        0.01      0.0000
    10  -110.02352195    -0.00702845    -1542.57      0.00000003        0.01      0.0000
    11  -110.01726964    -0.00077614     -170.34      0.00625235     1372.23      0.1701
    12  -110.01726964    -0.00077614     -170.34      0.00625235     1372.23      0.1701
    13  -110.01726956    -0.00077606     -170.33      0.00625242     1372.25      0.1701
    14  -110.01726956    -0.00077606     -170.33      0.00625242     1372.25      0.1701
    15  -110.01726955    -0.00077605     -170.32      0.00625243     1372.25      0.1701
    16  -110.01726955    -0.00077605     -170.32      0.00625243     1372.25      0.1701
    17  -110.01726953    -0.00077603     -170.32      0.00625245     1372.25      0.1701
    18  -110.01726953    -0.00077603     -170.32      0.00625245     1372.25      0.1701
    19  -110.01148857     0.00500493     1098.46      0.01203342     2641.03      0.3274
    20  -110.01148857     0.00500493     1098.46      0.01203342     2641.03      0.3274
    21  -110.01148855     0.00500495     1098.46      0.01203344     2641.03      0.3274
    22  -110.01148855     0.00500495     1098.46      0.01203344     2641.03      0.3274
    23  -110.01148854     0.00500496     1098.46      0.01203344     2641.04      0.3274
    24  -110.01148854     0.00500496     1098.46      0.01203344     2641.04      0.3274
    25  -110.00712212     0.00937138     2056.78      0.01639987     3599.35      0.4463
    26  -110.00712212     0.00937138     2056.78      0.01639987     3599.35      0.4463
    27  -110.00712212     0.00937139     2056.78      0.01639987     3599.36      0.4463
    28  -110.00712212     0.00937139     2056.78      0.01639987     3599.36      0.4463
    29  -109.99651094     0.01998256     4385.66      0.02701104     5928.24      0.7350
    30  -109.99651094     0.01998256     4385.66      0.02701104     5928.24      0.7350
    31  -109.99650970     0.01998380     4385.94      0.02701229     5928.51      0.7350
    32  -109.99650970     0.01998380     4385.94      0.02701229     5928.51      0.7350
    33  -109.99650867     0.01998484     4386.16      0.02701332     5928.74      0.7351
    34  -109.99650867     0.01998484     4386.16      0.02701332     5928.74      0.7351
    35  -109.99650834     0.01998516     4386.24      0.02701364     5928.81      0.7351
    36  -109.99650834     0.01998516     4386.24      0.02701364     5928.81      0.7351
    37  -109.98614488     0.03034862     6660.75      0.03737710     8203.33      1.0171
    38  -109.98614488     0.03034862     6660.75      0.03737710     8203.33      1.0171
    39  -109.98614347     0.03035003     6661.06      0.03737851     8203.64      1.0171
    40  -109.98614347     0.03035003     6661.06      0.03737851     8203.64      1.0171
    41  -109.98614292     0.03035058     6661.18      0.03737907     8203.76      1.0171
    42  -109.98614292     0.03035058     6661.18      0.03737907     8203.76      1.0171


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.000000000   0.009646580   0.005739410   0.226401901   0.121683333  -0.001836057   0.296435578   0.012484823
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.013876010   0.000000000   0.103374998  -0.002620612   0.003983500   0.264003575  -0.000758231   0.018003187
                        -0.044832912  -0.000000000  -0.048820231   0.001237619  -0.001257470  -0.083337904   0.017606921  -0.418052992

    3    3.1  1.5  1.5  -0.000000001   0.000000001   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.511426571  -0.002669570  -0.105306264  -0.129943979   0.001960700  -0.166960607  -0.007031793

    4    4.1  1.5  1.5  -0.075450806  -0.000000000   0.051544262  -0.001306675   0.002518817   0.166932780  -0.007513680   0.178402368
                         0.023352402  -0.000000000   0.109143030  -0.002766834   0.007979284   0.528821200  -0.000323572   0.007682785

    5    5.1  1.5  1.5  -0.000000000   0.595361977  -0.000202967  -0.008006418  -0.034514601   0.000520784  -0.014332865  -0.000603650
                         0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    6    6.1  1.5  1.5  -0.011196364   0.000000000   0.197407162  -0.005004378  -0.001683219  -0.111554137  -0.003683060   0.087449383
                         0.003465331  -0.000000000   0.418002221  -0.010596581  -0.005332219  -0.353388908  -0.000158609   0.003765952

    7    7.1  1.5  1.5   0.012840410   0.000000000  -0.382569424   0.009698340   0.007736729   0.512746063   0.000034335  -0.000815231
                         0.041486921   0.000000000   0.180673548  -0.004580171  -0.002442250  -0.161858347  -0.000797287   0.018930530

    8    1.1  1.5  0.5   0.052194898  -0.000000000   0.118088544  -0.002993608   0.002471771   0.163814795   0.000533784  -0.012673990
                         0.168639917   0.000000000  -0.055768901   0.001413772  -0.000780263  -0.051711352  -0.012395024   0.294303416

    9    2.1  1.5  0.5  -0.000000000   0.102949233   0.001245462   0.049129607  -0.035530470   0.000536113   0.149354714   0.006290295
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   10    3.1  1.5  0.5   0.034272813   0.000000000   0.088585829  -0.002245698   0.000242055   0.016042030  -0.021851857   0.518843374
                        -0.010607607   0.000000000   0.187577152  -0.004755181   0.000766799   0.050819051  -0.000941036   0.022343661

   11    4.1  1.5  0.5  -0.000000001   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000000   0.385389447   0.008338854   0.328941921   0.181071439  -0.002732153   0.242619013   0.010218259

   12    5.1  1.5  0.5   0.017807638  -0.000000000   0.472178185  -0.011969970   0.003272849   0.216905694  -0.000181189   0.004302089
                         0.057535865  -0.000000000  -0.222992489   0.005652979  -0.001033139  -0.068470535   0.004207396  -0.099899046

   13    6.1  1.5  0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000  -0.189143443   0.003674161   0.144934269   0.160953077  -0.002428591   0.468643949   0.019737634

   14    7.1  1.5  0.5  -0.000000000   0.377428994  -0.005793129  -0.228520956  -0.110688316   0.001670155   0.002334300   0.000098312
                         0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   15    1.1  1.5 -0.5  -0.000000000   0.176532516   0.003310655   0.130595079   0.171782859  -0.002591999   0.294576188   0.012406512
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

   16    2.1  1.5 -0.5  -0.030438725   0.000000000  -0.044424674   0.001126189   0.000511245   0.033882406  -0.000270637   0.006425910
                        -0.098346473  -0.000000000   0.020980149  -0.000531858  -0.000161385  -0.010695646   0.006284470  -0.149216414

   17    3.1  1.5 -0.5  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.035876832  -0.005258794  -0.207443094  -0.053290924   0.000804097   0.519324259   0.021872110

   18    4.1  1.5 -0.5  -0.368159057  -0.000000000   0.140470296  -0.003560997   0.000822453   0.054507470   0.010208797  -0.242394352
                         0.113947069  -0.000000001   0.297440554  -0.007540278   0.002605423   0.172672530   0.000439635  -0.010438559

   19    5.1  1.5 -0.5  -0.000000000   0.060228629   0.013237687   0.522185685   0.227456134  -0.003432043  -0.099991636  -0.004211296
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   20    6.1  1.5 -0.5   0.180687022   0.000000000   0.061892262  -0.001569002   0.000731072   0.048451290   0.019719357  -0.468209993
                        -0.055923537   0.000000000   0.131054530  -0.003322303   0.002315942   0.153487347   0.000849202  -0.020163166

   21    7.1  1.5 -0.5  -0.111593424   0.000000000   0.206636477  -0.005238346   0.001592686   0.105554093  -0.000004230   0.000100432
                        -0.360554508  -0.000000000  -0.097586851   0.002473879  -0.000502763  -0.033320219   0.000098221  -0.002332139

   22    1.1  1.5 -1.5   0.002852178  -0.000000000   0.204720354  -0.005189771   0.001750892   0.116039112   0.000537153  -0.012753989
                         0.009215290  -0.000000000  -0.096681937   0.002450939  -0.000552703  -0.036630021  -0.012473263   0.296161084

   23    2.1  1.5 -1.5  -0.000000000   0.046931158  -0.002898156  -0.114323250  -0.276844891   0.004177260   0.418440461   0.017623240
                         0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   24    3.1  1.5 -1.5   0.488561183   0.000000001   0.044969647  -0.001140005   0.000590225   0.039116701   0.007025282  -0.166806005
                        -0.151212130   0.000000001   0.095221531  -0.002413917   0.001869754   0.123916590   0.000302539  -0.007183395

   25    4.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000000   0.078982016   0.003059865   0.120702165   0.554543428  -0.008367401  -0.178567719  -0.007520644

   26    5.1  1.5 -1.5   0.176029087  -0.000000001  -0.007239677   0.000183530  -0.000496628  -0.032913658  -0.000025972   0.000616664
                         0.568743918   0.000000001   0.003419035  -0.000086674   0.000156770   0.010389841   0.000603091  -0.014319593

   27    6.1  1.5 -1.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                         0.000000000   0.011720371   0.011718845   0.462272044  -0.370577991   0.005591582  -0.087530435  -0.003686474

   28    7.1  1.5 -1.5   0.000000000  -0.043428571   0.010725473   0.423086625  -0.537686389   0.008113049  -0.018948075  -0.000798026
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000

   29    1.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000057   0.000000004   0.000000153   0.000000060  -0.000000001  -0.000000051  -0.000000002

   30    2.1  0.5  0.5  -0.000000000  -0.000000181  -0.000000002  -0.000000074   0.000000069  -0.000000001   0.000000105   0.000000004
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   31    3.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000000  -0.000000125  -0.000000001  -0.000000020  -0.000000003   0.000000000  -0.000000031  -0.000000001

   32    4.1  0.5  0.5   0.000000000  -0.000000186  -0.000000001  -0.000000055  -0.000000041   0.000000001  -0.000000077  -0.000000003
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

   33    5.1  0.5  0.5   0.000000058   0.000000000   0.000000170  -0.000000004   0.000000000   0.000000025  -0.000000004   0.000000106
                        -0.000000018   0.000000000   0.000000359  -0.000000009   0.000000001   0.000000080  -0.000000000   0.000000005

   34    6.1  0.5  0.5   0.000000012   0.000000000   0.000000039  -0.000000001   0.000000000   0.000000019  -0.000000000   0.000000004
                         0.000000039  -0.000000000  -0.000000018   0.000000000  -0.000000000  -0.000000006   0.000000003  -0.000000082

   35    7.1  0.5  0.5  -0.000000035   0.000000000   0.000000058  -0.000000001   0.000000002   0.000000160  -0.000000000   0.000000008
                        -0.000000114   0.000000000  -0.000000027   0.000000001  -0.000000001  -0.000000050   0.000000008  -0.000000184

   36    1.1  0.5 -0.5  -0.000000055  -0.000000000  -0.000000065   0.000000002  -0.000000000  -0.000000018   0.000000002  -0.000000051
                         0.000000017   0.000000000  -0.000000138   0.000000004  -0.000000001  -0.000000058   0.000000000  -0.000000002

   37    2.1  0.5 -0.5  -0.000000053   0.000000000  -0.000000067   0.000000002   0.000000001   0.000000066   0.000000000  -0.000000005
                        -0.000000173   0.000000000   0.000000031  -0.000000001  -0.000000000  -0.000000021  -0.000000004   0.000000105

   38    3.1  0.5 -0.5  -0.000000119  -0.000000000   0.000000009  -0.000000000   0.000000000   0.000000001   0.000000001  -0.000000031
                         0.000000037   0.000000000   0.000000018  -0.000000000   0.000000000   0.000000003   0.000000000  -0.000000001

   39    4.1  0.5 -0.5  -0.000000055   0.000000000  -0.000000050   0.000000001  -0.000000001  -0.000000039  -0.000000000   0.000000003
                        -0.000000177  -0.000000000   0.000000024  -0.000000001   0.000000000   0.000000012   0.000000003  -0.000000077

   40    5.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                         0.000000000  -0.000000060   0.000000010   0.000000398   0.000000084  -0.000000001  -0.000000107  -0.000000004

   41    6.1  0.5 -0.5  -0.000000000  -0.000000041  -0.000000001  -0.000000043  -0.000000020   0.000000000   0.000000082   0.000000003
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000

   42    7.1  0.5 -0.5   0.000000000   0.000000119  -0.000000002  -0.000000064  -0.000000167   0.000000003   0.000000184   0.000000008
                         0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5  -0.008376017   0.290971381   0.008745064   0.607656768   0.001117104  -0.271303875   0.082182367  -0.061538778
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.063252379  -0.001820808  -0.019622575   0.000282396  -0.257986304  -0.001062268  -0.066852358  -0.089278426
                        -0.174111795  -0.005012051   0.104246388  -0.001500258  -0.112518062  -0.000463299   0.153271208   0.204687023

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000001   0.000000001   0.000000001   0.000000002   0.000000000   0.000000000
                        -0.005731449   0.199102706  -0.002843224  -0.197563217   0.001863686  -0.452620659  -0.106064696   0.079422054

    4    4.1  1.5  1.5  -0.067796883  -0.001951628   0.103788065  -0.001493664  -0.001848674  -0.000007610   0.210837358   0.281564123
                         0.024629659   0.000708999   0.019536306  -0.000281156   0.004238717   0.000017455   0.091961013   0.122809933

    5    5.1  1.5  1.5   0.000550173  -0.019112263  -0.001891859  -0.131457198   0.000591105  -0.143557443   0.373869244  -0.279956138
                        -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000002  -0.000000002  -0.000000000  -0.000000007

    6    6.1  1.5  1.5  -0.208496290  -0.006001857  -0.153917344   0.002215092  -0.048056213  -0.000197872   0.143741213   0.191960138
                         0.075743785   0.002180391  -0.028972272   0.000416953   0.110185370   0.000453694   0.062695661   0.083727327

    7    7.1  1.5  1.5   0.013587999   0.000391150  -0.029544654   0.000425191   0.193413568   0.000796388   0.015586551   0.020815165
                         0.037403034   0.001076699   0.156958163  -0.002258856   0.084355330   0.000347337  -0.035735010  -0.047722547

    8    1.1  1.5  0.5   0.190234679   0.005476171  -0.005295722   0.000076214   0.145111179   0.000597502   0.061966211   0.082753183
                         0.523649890   0.015073993   0.028133915  -0.000404886   0.063288743   0.000260593  -0.142068821  -0.189726727

    9    2.1  1.5  0.5  -0.017643479   0.612910297   0.001488980   0.103462907  -0.000113774   0.027631547  -0.332601463   0.249054509
                        -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000003   0.000000002  -0.000000001   0.000000005

   10    3.1  1.5  0.5  -0.187381276  -0.005394032  -0.376350606   0.005416233  -0.104199422  -0.000429046  -0.079338124  -0.105952620
                         0.068072996   0.001959576  -0.070841480   0.001019512   0.238912965   0.000983733  -0.034604942  -0.046213394

   11    4.1  1.5  0.5   0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000001  -0.000000000  -0.000000003  -0.000000001
                        -0.000374282   0.013002049   0.002332636   0.162084660  -0.001337682   0.324873581   0.121950020  -0.091317104

   12    5.1  1.5  0.5  -0.047980181  -0.001381177   0.076470656  -0.001100523  -0.096543677  -0.000397523   0.016394835   0.021894595
                        -0.132072746  -0.003801898  -0.406256027   0.005846614  -0.042106529  -0.000173374  -0.037588147  -0.050197335

   13    6.1  1.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000001   0.000000001   0.000000000   0.000000004   0.000000008
                         0.001654655  -0.057480439  -0.002613288  -0.181586070   0.000432349  -0.105001321   0.257033662  -0.192468766

   14    7.1  1.5  0.5   0.005398408  -0.187533320   0.003969752   0.275840899  -0.002269816   0.551254883  -0.132034401   0.098868362
                        -0.000000000   0.000000000   0.000000001   0.000000002   0.000000004   0.000000004  -0.000000004   0.000000002

   15    1.1  1.5 -0.5   0.016037884  -0.557134131   0.000411997   0.028627991   0.000651857  -0.158312095  -0.206988696   0.154994713
                        -0.000000000   0.000000000  -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000003

   16    2.1  1.5 -0.5   0.209279574   0.006024405   0.019138988  -0.000275438   0.025327480   0.000104286  -0.099570908  -0.132972621
                         0.576073860   0.016583090  -0.101677295   0.001463282   0.011046317   0.000045486   0.228284434   0.304863929

   17    3.1  1.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000002  -0.000000001   0.000000003   0.000000001
                        -0.005738947   0.199363175  -0.005511350  -0.382959911  -0.001073224   0.260647126  -0.115592541   0.086556571

   18    4.1  1.5 -0.5   0.012220615   0.000351787  -0.159287326   0.002292379   0.129875362   0.000534767  -0.083701649  -0.111779913
                        -0.004439579  -0.000127799  -0.029983078   0.000431500  -0.297783872  -0.001226139  -0.036508183  -0.048755086

   19    5.1  1.5 -0.5  -0.004045007   0.140517999  -0.005949290  -0.413390518  -0.000433686   0.105326357  -0.054764457   0.041008041
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000003   0.000000002

   20    6.1  1.5 -0.5  -0.054025815  -0.001555208   0.178452171  -0.002568186  -0.041976588  -0.000172842  -0.176417700  -0.235598157
                         0.019626822   0.000564985   0.033590528  -0.000483417   0.096245745   0.000396297  -0.076948171  -0.102760947

   21    7.1  1.5 -0.5  -0.064033666  -0.001843298   0.051026168  -0.000734340   0.505288282   0.002080545  -0.039527141  -0.052786777
                        -0.176262406  -0.005073959  -0.271080306   0.003901240   0.220376265   0.000907413   0.090623166   0.121023300

   22    1.1  1.5 -1.5  -0.099352821  -0.002860010  -0.112406816   0.001617697   0.248681096   0.001023954  -0.024602937  -0.032856154
                        -0.273483750  -0.007872612   0.597169536  -0.008594137   0.108459693   0.000446587   0.056406708   0.075328711

   23    2.1  1.5 -1.5   0.005332541  -0.185245191  -0.001526605  -0.106077118   0.001158904  -0.281455587  -0.223310131   0.167216330
                        -0.000000000   0.000000000  -0.000000001  -0.000000001  -0.000000002  -0.000000002   0.000000005   0.000000006

   24    3.1  1.5 -1.5  -0.187136462  -0.005386984  -0.194153577   0.002794154   0.180945065   0.000745050  -0.072798595  -0.097219356
                         0.067984058   0.001957016  -0.036546045   0.000525950  -0.414878710  -0.001708281  -0.031752593  -0.042404205

   25    4.1  1.5 -1.5  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000003  -0.000000002   0.000000004  -0.000000002
                         0.002076423  -0.072132084  -0.001519895  -0.105610746   0.000019042  -0.004624318  -0.307181762   0.230020042

   26    5.1  1.5 -1.5   0.006525924   0.000187858   0.024317485  -0.000349964   0.131586851   0.000541814  -0.111925243  -0.149471303
                         0.017963599   0.000517107  -0.129188447   0.001859208   0.057390245   0.000236309   0.256609001   0.342690154

   27    6.1  1.5 -1.5   0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000002  -0.000000001   0.000000003  -0.000000002
                         0.006385639  -0.221828366   0.002253993   0.156620373   0.000494966  -0.120209049  -0.209425308   0.156819266

   28    7.1  1.5 -1.5  -0.001145547   0.039794732  -0.002298525  -0.159714594  -0.000868836   0.211008602   0.052064504  -0.038986300
                        -0.000000000  -0.000000000   0.000000001   0.000000000   0.000000001   0.000000001  -0.000000002  -0.000000002

   29    1.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000001   0.000000019  -0.001780303  -0.123705568   0.000227407  -0.055228807  -0.042107026   0.031530062

   30    2.1  0.5  0.5   0.000000002  -0.000000068   0.001642806   0.114151547   0.000247087  -0.060008408  -0.052481761   0.039298743
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001

   31    3.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000001   0.000000000  -0.000000001
                         0.000000005  -0.000000177   0.000048426   0.003364909  -0.000400318   0.097222461  -0.087272384   0.065350225

   32    4.1  0.5  0.5   0.000000001  -0.000000029   0.000376226   0.026142261  -0.000449274   0.109112008  -0.020600111   0.015425520
                         0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001

   33    5.1  0.5  0.5   0.000000095   0.000000003   0.070476140  -0.001014254  -0.001532203  -0.000006309  -0.004603442  -0.006147698
                        -0.000000034  -0.000000001   0.013265912  -0.000190916   0.003513104   0.000014465  -0.002007886  -0.002681442

   34    6.1  0.5  0.5  -0.000000008  -0.000000000  -0.007080986   0.000101906  -0.013384090  -0.000055110  -0.029520491  -0.039423332
                        -0.000000021  -0.000000001   0.037618262  -0.000541382  -0.005837333  -0.000024035   0.067681098   0.090385162

   35    7.1  0.5  0.5   0.000000012   0.000000000  -0.007728409   0.000111223   0.087659973   0.000360943   0.012036018   0.016073580
                         0.000000034   0.000000001   0.041057742  -0.000590880   0.038231992   0.000157422  -0.027594764  -0.036851605

   36    1.1  0.5 -0.5  -0.000000018  -0.000000001  -0.121570598   0.001749578   0.022078930   0.000090911  -0.028900590  -0.038595481
                         0.000000007   0.000000000  -0.022883558   0.000329327  -0.050623531  -0.000208445  -0.012605582  -0.016834207

   37    2.1  0.5 -0.5   0.000000023   0.000000001  -0.021116217   0.000303893   0.055004584   0.000226483   0.015711466   0.020981981
                         0.000000064   0.000000002   0.112181465  -0.001614454   0.023989682   0.000098778  -0.036021397  -0.048105007

   38    3.1  0.5 -0.5   0.000000167   0.000000005   0.003306836  -0.000047590  -0.038866817  -0.000160037  -0.059900298  -0.079994242
                        -0.000000061  -0.000000002   0.000622454  -0.000008958   0.089115529   0.000366937  -0.026126735  -0.034891120

   39    4.1  0.5 -0.5   0.000000010   0.000000000  -0.004835901   0.000069596  -0.100013661  -0.000411811   0.006167055   0.008235836
                         0.000000027   0.000000001   0.025691086  -0.000369732  -0.043619926  -0.000179607  -0.014139098  -0.018882150

   40    5.1  0.5 -0.5  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000001   0.000000001  -0.000000001  -0.000000001
                        -0.000000003   0.000000101  -0.001032066  -0.071713811   0.000015781  -0.003832695   0.006707035  -0.005022279

   41    6.1  0.5 -0.5   0.000000001  -0.000000023  -0.000550890  -0.038278898   0.000060123  -0.014601655  -0.098608705   0.073838949
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000001   0.000000001

   42    7.1  0.5 -0.5  -0.000000001   0.000000036  -0.000601257  -0.041778780  -0.000393779   0.095634492   0.040204487  -0.030105427
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000001


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5   0.000501503   0.059921652  -0.001297083   0.088741486  -0.224115408  -0.031663378  -0.057418786   0.435595628
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.083097275  -0.000695458   0.327416966   0.004785674  -0.003487540   0.024684972  -0.105999829  -0.013972556
                        -0.430367785   0.003601865   0.310028221   0.004531499  -0.016860765   0.119341573  -0.006618082  -0.000872373

    3    3.1  1.5  1.5   0.000000002   0.000000000  -0.000000004  -0.000000011  -0.000000007   0.000000008  -0.000000001  -0.000000001
                         0.000974874   0.116482631   0.004383478  -0.299900837  -0.335830799  -0.047446706   0.009591369  -0.072762877

    4    4.1  1.5  1.5   0.316064893  -0.002645229   0.102818570   0.001502839  -0.033259175   0.235410562  -0.021938028  -0.002891799
                         0.061027177  -0.000510755  -0.108585420  -0.001587127   0.006879436  -0.048693037   0.351374716   0.046317065

    5    5.1  1.5  1.5   0.001192845   0.142526474  -0.004510236   0.308573177   0.317909716   0.044914787  -0.014530350   0.110231423
                         0.000000005  -0.000000001  -0.000000004  -0.000000011  -0.000000007   0.000000008  -0.000000001  -0.000000001

    6    6.1  1.5  1.5   0.292700255  -0.002449686   0.004595606   0.000067171  -0.055698356   0.394236513   0.010145190   0.001337306
                         0.056515831  -0.000472998  -0.004853359  -0.000070936   0.011520823  -0.081545085  -0.162492465  -0.021419222

    7    7.1  1.5  1.5  -0.029169955   0.000244129  -0.062179765  -0.000908849   0.006213027  -0.043976181  -0.334582549  -0.044103572
                         0.151073652  -0.001264375  -0.058877471  -0.000860577   0.030037382  -0.212606511  -0.020889610  -0.002753600

    8    1.1  1.5  0.5   0.003037263  -0.000025423   0.215368258   0.003147917  -0.007835784   0.055462123  -0.063708035  -0.008397789
                        -0.015730245   0.000131649   0.203930294   0.002980729  -0.037882715   0.268136273  -0.003977602  -0.000524314

    9    2.1  1.5  0.5   0.000620804   0.074176832  -0.001498396   0.102514298   0.102331342   0.014457533   0.053818937  -0.408286139
                        -0.000000004   0.000000002  -0.000000006  -0.000000005   0.000000000   0.000000001  -0.000000001   0.000000001

   10    3.1  1.5  0.5  -0.195265940   0.001634230   0.178248116   0.002605346   0.021172561  -0.149860732   0.021335963   0.002812438
                        -0.037702792   0.000315544  -0.188245628  -0.002751491  -0.004379397   0.030997651  -0.341731616  -0.045045938

   11    4.1  1.5  0.5  -0.000000001   0.000000002  -0.000000010  -0.000000009   0.000000000   0.000000002  -0.000000001   0.000000002
                        -0.003051598  -0.364619507   0.005139393  -0.351617314   0.254683813   0.035982130   0.020050690  -0.152110346

   12    5.1  1.5  0.5  -0.055917613   0.000467989  -0.232832018  -0.003403184  -0.009266060   0.065585762  -0.017358141  -0.002288091
                         0.289602026  -0.002423759  -0.220466571  -0.003222429  -0.044797539   0.317079830  -0.001083756  -0.000142858

   13    6.1  1.5  0.5  -0.000000005  -0.000000001   0.000000011   0.000000007  -0.000000003   0.000000001   0.000000002  -0.000000003
                         0.003804330   0.454559398  -0.002752775   0.188333971  -0.148284770  -0.020949907   0.053969314  -0.409426941

   14    7.1  1.5  0.5   0.001773763   0.211937922  -0.005226682   0.357589142  -0.340716742  -0.048136999   0.008973835  -0.068078145
                         0.000000000   0.000000004  -0.000000013  -0.000000010   0.000000003   0.000000000  -0.000000002   0.000000003

   15    1.1  1.5 -0.5   0.000134081   0.016020786   0.004335219  -0.296599142  -0.273812176  -0.038684617   0.008414141  -0.063832084
                        -0.000000003   0.000000001   0.000000004   0.000000010   0.000000006  -0.000000007   0.000000001   0.000000000

   16    2.1  1.5 -0.5  -0.014062642   0.000117698   0.074438265   0.001088028  -0.002928452   0.020727764   0.407492686   0.053714347
                         0.072831617  -0.000609545   0.070484935   0.001030236  -0.014157840   0.100210097   0.025441744   0.003353648

   17    3.1  1.5 -0.5  -0.000000000  -0.000000002  -0.000000012  -0.000000009   0.000000002   0.000000000  -0.000000002   0.000000003
                         0.001664415   0.198872541   0.003789265  -0.259246615   0.153032981   0.021620741  -0.045133649   0.342397022

   18    4.1  1.5 -0.5  -0.358007043   0.002996256  -0.241758695  -0.003533644  -0.035236250   0.249404424   0.009478528   0.001249427
                        -0.069125550   0.000578532   0.255318368   0.003731852   0.007288372  -0.051587576  -0.151814739  -0.020011724

   19    5.1  1.5 -0.5  -0.002468526  -0.294951034  -0.004686759   0.320649742  -0.323791771  -0.045745812   0.002292546  -0.017391941
                        -0.000000001  -0.000000002  -0.000000012  -0.000000009   0.000000002   0.000000000  -0.000000002   0.000000003

   20    6.1  1.5 -0.5   0.446315853  -0.003735339   0.129491279   0.001892696   0.020515632  -0.145210948   0.025512833   0.003363019
                         0.086176599  -0.000721231  -0.136754135  -0.001998868  -0.004243517   0.030035875  -0.408631271  -0.053864431

   21    7.1  1.5 -0.5  -0.040179761   0.000336274   0.259654665   0.003795237   0.009750408  -0.069014006   0.067945844   0.008956395
                         0.208094377  -0.001741596   0.245864697   0.003593658   0.047139158  -0.333653960   0.004242191   0.000559193

   22    1.1  1.5 -1.5   0.011360109  -0.000095076  -0.064437475  -0.000941845  -0.006413587   0.045395781   0.434749102   0.057307200
                        -0.058834959   0.000492408  -0.061015270  -0.000891825  -0.031007022   0.219469677   0.027143493   0.003577966

   23    2.1  1.5 -1.5  -0.003668391  -0.438316766  -0.006590687   0.450909489   0.121867793   0.017217675  -0.013999762   0.106206227
                        -0.000000005  -0.000000003  -0.000000009  -0.000000014  -0.000000005   0.000000007  -0.000000001   0.000000001

   24    3.1  1.5 -1.5  -0.114370190   0.000957194   0.206200414   0.003013910  -0.046463173   0.328869300  -0.004534111  -0.000597671
                        -0.022083092   0.000184822  -0.217765703  -0.003182958   0.009610593  -0.068024328   0.072621471   0.009572729

   25    4.1  1.5 -1.5   0.000000003  -0.000000003  -0.000000002   0.000000004   0.000000006  -0.000000006  -0.000000000   0.000000002
                         0.002694087   0.321902676  -0.002185749   0.149540803   0.240393728   0.033963206  -0.046407252   0.352058898

   26    5.1  1.5 -1.5   0.027020556  -0.000226138  -0.224062912  -0.003275001   0.009097739  -0.064394316   0.110017203   0.014502112
                        -0.139941721   0.001171213  -0.212163184  -0.003101064   0.043983738  -0.311319707   0.006868908   0.000905436

   27    6.1  1.5 -1.5   0.000000002  -0.000000003  -0.000000002   0.000000003   0.000000004  -0.000000004  -0.000000000   0.000000001
                         0.002494932   0.298106488  -0.000097693   0.006683912   0.402581704   0.056877378   0.021460928  -0.162808863

   28    7.1  1.5 -1.5   0.001287728   0.153864013   0.001251639  -0.085632235  -0.217106962  -0.030673214  -0.044189448   0.335234035
                         0.000000002   0.000000001   0.000000003   0.000000005   0.000000002  -0.000000002   0.000000001  -0.000000000

   29    1.1  0.5  0.5   0.000000001   0.000000000  -0.000000002  -0.000000003  -0.000000001   0.000000001  -0.000000000   0.000000000
                        -0.000130428  -0.015584053   0.001221433  -0.083565724  -0.002836631  -0.000400764   0.003733625  -0.028324355

   30    2.1  0.5  0.5  -0.000174319  -0.020828499   0.000793833  -0.054311010  -0.053303131  -0.007530751  -0.005787292   0.043904092
                        -0.000000001   0.000000000   0.000000001   0.000000002   0.000000001  -0.000000001   0.000000000  -0.000000000

   31    3.1  0.5  0.5   0.000000001  -0.000000001   0.000000002   0.000000001  -0.000000001   0.000000001   0.000000000  -0.000000001
                        -0.000027206  -0.003250544  -0.000339260   0.023210792  -0.057897248  -0.008179815   0.008107979  -0.061509489

   32    4.1  0.5  0.5  -0.000753634  -0.090047696   0.000712189  -0.048725195   0.068771660   0.009716169  -0.003222514   0.024446931
                        -0.000000000  -0.000000000   0.000000002   0.000000001  -0.000000001   0.000000000   0.000000000  -0.000000001

   33    5.1  0.5  0.5  -0.124702474   0.001043668   0.030543360   0.000446434   0.007054234  -0.049930317  -0.003484299  -0.000459289
                        -0.024078093   0.000201516  -0.032256465  -0.000471475  -0.001459119   0.010327740   0.055806973   0.007356292

   34    6.1  0.5  0.5  -0.012726588   0.000106513   0.028991502   0.000423752  -0.001216088   0.008607535  -0.065415027  -0.008622795
                         0.065912073  -0.000551635   0.027451796   0.000401247  -0.005879270   0.041613850  -0.004084177  -0.000538363

   35    7.1  0.5  0.5  -0.016899008   0.000141431  -0.030816017  -0.000450421   0.001437609  -0.010175479  -0.057957365  -0.007639749
                         0.087521383  -0.000732490  -0.029179414  -0.000426498   0.006950234  -0.049194203  -0.003618559  -0.000476987

   36    1.1  0.5 -0.5   0.015301433  -0.000128062   0.057456614   0.000839809  -0.000392456   0.002777830  -0.001764990  -0.000232655
                         0.002954467  -0.000024726  -0.060679219  -0.000886915   0.000081178  -0.000574574   0.028269310   0.003726369

   37    2.1  0.5 -0.5  -0.003948723   0.000033047   0.039436620   0.000576424  -0.001525395   0.010796835   0.043818770   0.005776046
                         0.020450769  -0.000171158   0.037342186   0.000545809  -0.007374644   0.052198201   0.002735818   0.000360627

   38    3.1  0.5 -0.5   0.003191595  -0.000026712  -0.015958858  -0.000233261  -0.008010254   0.056697085  -0.003832873  -0.000505237
                         0.000616248  -0.000005157   0.016853952   0.000246347   0.001656866  -0.011727398   0.061389953   0.008092222

   39    4.1  0.5 -0.5  -0.017071486   0.000142876   0.035380616   0.000517141   0.001968062  -0.013930069   0.024399422   0.003216251
                         0.088414659  -0.000739966   0.033501592   0.000489673   0.009514760  -0.067346079   0.001523375   0.000200806

   40    5.1  0.5 -0.5   0.000000000   0.000000001   0.000000001   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.001062945  -0.127005754  -0.000649302   0.044422701  -0.050987241  -0.007203558  -0.007370616   0.055915638

   41    6.1  0.5 -0.5   0.000561824   0.067129483  -0.000583579   0.039926285   0.042494731   0.006003723  -0.008639585   0.065542400
                        -0.000000001   0.000000001   0.000000000  -0.000000001  -0.000000001   0.000000001  -0.000000000  -0.000000000

   42    7.1  0.5 -0.5   0.000746019   0.089137921   0.000620306  -0.042438957  -0.050235545  -0.007097357  -0.007654625   0.058070217
                         0.000000001   0.000000001   0.000000001   0.000000002   0.000000001  -0.000000001   0.000000000  -0.000000000


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5  -0.091527987   0.017383037  -0.004237412  -0.143878510  -0.119062093  -0.000306731   0.007495590  -0.000053524
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.055807664  -0.293847569  -0.006009251   0.000176980   0.000028562  -0.011086699   0.000584481   0.081851435
                         0.001941087   0.010220524  -0.004349800   0.000128107  -0.000006251   0.002426465   0.000262648   0.036781232

    3    3.1  1.5  1.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000002
                         0.268348139  -0.050964801  -0.007690618  -0.261129862   0.035383856   0.000091157   0.076042918  -0.000543004

    4    4.1  1.5  1.5   0.002395351   0.012612392   0.070665446  -0.002081190  -0.000010273   0.003987756   0.000150625   0.021093596
                         0.068868107   0.362615534  -0.097624339   0.002875165  -0.000046940   0.018220352  -0.000335193  -0.046940816

    5    5.1  1.5  1.5  -0.277141340   0.052634809   0.007356700   0.249791880   0.032425858   0.000083536  -0.054028179   0.000385802
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001

    6    6.1  1.5  1.5  -0.001122330  -0.005909475  -0.235888757   0.006947234   0.000017700  -0.006870286   0.000129105   0.018079836
                        -0.032267822  -0.169901774   0.325880404  -0.009597607   0.000080870  -0.031390845  -0.000287302  -0.040234120

    7    7.1  1.5  1.5  -0.051667664  -0.272048969   0.340135049  -0.010017425   0.000087885  -0.034113783  -0.000244246  -0.034204602
                         0.001797090   0.009462330   0.246206993  -0.007251120  -0.000019235   0.007466236  -0.000109757  -0.015370377

    8    1.1  1.5  0.5  -0.063942347  -0.336679625  -0.301587264   0.008882142   0.000024766  -0.009613256  -0.000375384  -0.052569245
                         0.002224025   0.011710297  -0.218304150   0.006429345  -0.000005420   0.002103983  -0.000168686  -0.023622819

    9    2.1  1.5  0.5  -0.121928458   0.023156708   0.012513616   0.424891556  -0.024917547  -0.000064193   0.055469106  -0.000396092
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001

   10    3.1  1.5  0.5   0.001694379   0.008921521   0.160091607  -0.004714909   0.000042260  -0.016403795   0.000029245   0.004095486
                         0.048714652   0.256500293  -0.221166613   0.006513648   0.000193089  -0.074950152  -0.000065080  -0.009113926

   11    4.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000001
                         0.350379769  -0.066544285  -0.002564107  -0.087062546  -0.031238012  -0.000080476  -0.056198503   0.000401300

   12    5.1  1.5  0.5  -0.054352735  -0.286186839   0.196213621  -0.005778750  -0.000196661   0.076336978  -0.000072217  -0.010113415
                         0.001890482   0.009954070   0.142029367  -0.004182952   0.000043042  -0.016707320  -0.000032452  -0.004544622

   13    6.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001
                         0.292283466  -0.055510609  -0.002138934  -0.072626107   0.043497242   0.000112059  -0.044200646   0.000315626

   14    7.1  1.5  0.5   0.049622929  -0.009424409  -0.005092792  -0.172922404  -0.051018660  -0.000131436  -0.053291947   0.000380545
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001

   15    1.1  1.5 -0.5  -0.336883216   0.063981013   0.010964895   0.372305761  -0.009840804  -0.000025352   0.057633003  -0.000411543
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001

   16    2.1  1.5 -0.5   0.023142714   0.121854771   0.344184526  -0.010136687  -0.000062709   0.024341379   0.000361290   0.050595472
                        -0.000804943  -0.004238319   0.249138208  -0.007337448   0.000013725  -0.005327421   0.000162352   0.022735873

   17    3.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000
                        -0.256655399   0.048744110  -0.008041018  -0.273027459   0.076724245   0.000197659  -0.009991829   0.000071349

   18    4.1  1.5 -0.5   0.002313126   0.012179446  -0.051049748   0.001503482   0.000017206  -0.006678749  -0.000164487  -0.023034841
                         0.066504070   0.350168021   0.070525246  -0.002077061   0.000078615  -0.030515696   0.000366041   0.051260782

   19    5.1  1.5 -0.5  -0.286359896   0.054385602  -0.007133795  -0.242223299   0.078143897   0.000201317   0.011087595  -0.000079174
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000

   20    6.1  1.5 -0.5   0.001929588   0.010159978  -0.042584838   0.001254180  -0.000023958   0.009299796  -0.000129371  -0.018117117
                         0.055477062   0.292106829   0.058830970  -0.001732649  -0.000109468   0.042491456   0.000287894   0.040317083

   21    7.1  1.5 -0.5  -0.009418714  -0.049592939  -0.140076250   0.004125430  -0.000128397   0.049838957  -0.000347109  -0.048609603
                         0.000327599   0.001724928  -0.101394291   0.002986195   0.000028101  -0.010907890  -0.000155980  -0.021843491

   22    1.1  1.5 -1.5  -0.017372532  -0.091472674   0.116549167  -0.003432526   0.000299639  -0.116309023  -0.000048821  -0.006837011
                         0.000604247   0.003181577   0.084364195  -0.002484637  -0.000065580   0.025455711  -0.000021939  -0.003072319

   23    2.1  1.5 -1.5   0.294025259  -0.055841411  -0.000218480  -0.007418346   0.011349124   0.000029238   0.089735815  -0.000640782
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000002

   24    3.1  1.5 -1.5  -0.001771572  -0.009327969   0.153115365  -0.004509449   0.000019489  -0.007565138  -0.000222570  -0.031168740
                        -0.050934001  -0.268185967  -0.211528934   0.006229805   0.000089049  -0.034565676   0.000495294   0.069361625

   25    4.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001
                         0.362834808  -0.068909752   0.003549356   0.120516045   0.018651634   0.000048051   0.051462414  -0.000367481

   26    5.1  1.5 -1.5  -0.052603000  -0.276973853  -0.202344572   0.005959314  -0.000081605   0.031676076   0.000351904   0.049281148
                         0.001829623   0.009633627  -0.146467259   0.004313654   0.000017860  -0.006932713   0.000158135   0.022145261

   27    6.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001
                        -0.170004513   0.032287335  -0.011848127  -0.402295344  -0.032133875  -0.000082784   0.044109691  -0.000314977

   28    7.1  1.5 -1.5   0.272213476  -0.051698907   0.012366388   0.419892528   0.034921267   0.000089965  -0.037499377   0.000267774
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001

   29    1.1  0.5  0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000010
                        -0.000000233   0.000000044   0.000000013   0.000000433  -0.595144343  -0.001533228  -0.438464238   0.003130968

   30    2.1  0.5  0.5  -0.000000671   0.000000127   0.000000007   0.000000222   0.613695582   0.001581020  -0.414598085   0.002960544
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000001  -0.000000008

   31    3.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000002
                        -0.000000237   0.000000045   0.000000016   0.000000545   0.039582694   0.000101974  -0.111777850   0.000798179

   32    4.1  0.5  0.5  -0.000000080   0.000000015  -0.000000001  -0.000000036   0.145452583   0.000374719   0.199273529  -0.001422965
                         0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000004

   33    5.1  0.5  0.5   0.000000004   0.000000021   0.000000220  -0.000000006   0.000184066  -0.071447683  -0.000270395  -0.037866180
                         0.000000114   0.000000598  -0.000000303   0.000000009   0.000841009  -0.326449743   0.000601721   0.084265832

   34    6.1  0.5  0.5  -0.000000044  -0.000000234   0.000000013  -0.000000000  -0.000416605   0.161711337  -0.003211724  -0.449773992
                         0.000000002   0.000000008   0.000000010  -0.000000000   0.000091178  -0.035392585  -0.001443250  -0.202113033

   35    7.1  0.5  0.5  -0.000000010  -0.000000052   0.000000148  -0.000000004  -0.000665769   0.258428070   0.003534881   0.495029374
                         0.000000000   0.000000002   0.000000107  -0.000000003   0.000145713  -0.056560273   0.001588466   0.222449252

   36    1.1  0.5 -0.5   0.000000002   0.000000008  -0.000000254   0.000000007  -0.000327806   0.127243036   0.001283341   0.179719269
                         0.000000044   0.000000233   0.000000351  -0.000000010  -0.001497775   0.581382834  -0.002855871  -0.399939836

   37    2.1  0.5 -0.5  -0.000000127  -0.000000670  -0.000000180   0.000000005  -0.001544461   0.599505112   0.002700422   0.378170614
                         0.000000004   0.000000023  -0.000000130   0.000000004   0.000338026  -0.131209327   0.001213485   0.169936926

   38    3.1  0.5 -0.5   0.000000002   0.000000008  -0.000000320   0.000000009   0.000021803  -0.008462859   0.000327162   0.045815900
                         0.000000045   0.000000237   0.000000442  -0.000000013   0.000099616  -0.038667424  -0.000728048  -0.101956810

   39    4.1  0.5 -0.5  -0.000000015  -0.000000080   0.000000029  -0.000000001  -0.000366054   0.142089286  -0.001297938  -0.181764932
                         0.000000001   0.000000003   0.000000021  -0.000000001   0.000080115  -0.031098050  -0.000583254  -0.081678937

   40    5.1  0.5 -0.5   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000002
                         0.000000599  -0.000000114   0.000000011   0.000000374  -0.334176908  -0.000860916  -0.092382779   0.000659683

   41    6.1  0.5 -0.5   0.000000234  -0.000000044   0.000000000   0.000000016  -0.165539094  -0.000426466  -0.493098694   0.003521100
                        -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000002  -0.000000010

   42    7.1  0.5 -0.5   0.000000052  -0.000000010   0.000000005   0.000000183  -0.264545142  -0.000681528   0.542713323  -0.003875385
                        -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000001   0.000000011


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.054086825   0.000000000   0.000000000   0.024475710  -0.006338034  -0.000096959   0.000002335  -0.068054526
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000000   0.015437411   0.002746831   0.000000000  -0.000941248   0.061527958   0.017568053   0.000000603
                         0.000000000   0.000520775  -0.074609683  -0.000000001  -0.000004391   0.000287032  -0.012880049  -0.000000442

    3    3.1  1.5  1.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000
                         0.047867981   0.000000000  -0.000000000   0.036838081  -0.054653157  -0.000836078   0.000000028  -0.000817877

    4    4.1  1.5  1.5  -0.000000000  -0.001851178   0.064499789   0.000000001  -0.000001953   0.000127661  -0.019024801  -0.000000653
                         0.000000000   0.054874699   0.002374625   0.000000000   0.000418632  -0.027365333  -0.025949336  -0.000000890

    5    5.1  1.5  1.5   0.077326633  -0.000000000  -0.000000000   0.028000304   0.054313299   0.000830878   0.000000171  -0.004998367
                         0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000

    6    6.1  1.5  1.5  -0.000000000  -0.000704653   0.064819323   0.000000001  -0.000001754   0.000114640   0.025674984   0.000000881
                         0.000000000   0.020888114   0.002386389   0.000000000   0.000375931  -0.024574066   0.035020013   0.000001202

    7    7.1  1.5  1.5  -0.000000000  -0.026916119  -0.000781723  -0.000000000   0.000405218  -0.026488465   0.039830086   0.000001367
                        -0.000000000  -0.000908005   0.021233233   0.000000000   0.000001890  -0.000123571  -0.029201497  -0.000001002

    8    1.1  1.5  0.5   0.000000000   0.009358093   0.000381182  -0.000000000  -0.000780191   0.050999921   0.001453021   0.000000050
                         0.000000000   0.000315692  -0.010353709  -0.000000000  -0.000003640   0.000237918  -0.001065285  -0.000000037

    9    2.1  1.5  0.5  -0.058028501   0.000000000  -0.000000000   0.017260751   0.023277273   0.000356093  -0.000001727   0.050320425
                        -0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   10    3.1  1.5  0.5   0.000000000   0.002106354  -0.028108580  -0.000000000  -0.000002014   0.000131624   0.012524183   0.000000430
                        -0.000000000  -0.062438918  -0.001034846  -0.000000000   0.000431628  -0.028214854   0.017082661   0.000000586

   11    4.1  1.5  0.5  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.021235307  -0.000000000   0.000000001  -0.081224856  -0.028232239  -0.000431894  -0.000001594   0.046461456

   12    5.1  1.5  0.5  -0.000000000   0.019511237  -0.002332105  -0.000000000   0.000347127  -0.022691185  -0.023916323  -0.000000821
                        -0.000000000   0.000658205   0.063344851   0.000000000   0.000001619  -0.000105856   0.017534294   0.000000602

   13    6.1  1.5  0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.046471762  -0.000000000  -0.000000001   0.087939695   0.020436224   0.000312631  -0.000001097   0.031958742

   14    7.1  1.5  0.5  -0.106867915   0.000000000  -0.000000000   0.026393029   0.026990707   0.000412901   0.000000896  -0.026105390
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   15    1.1  1.5 -0.5  -0.009363417   0.000000000  -0.000000000   0.010360724  -0.051000476  -0.000780199  -0.000000062   0.001801694
                        -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000  -0.000000000  -0.000000000

   16    2.1  1.5 -0.5  -0.000000000  -0.057995510  -0.000635042   0.000000000  -0.000356089   0.023277020  -0.040582156  -0.000001393
                        -0.000000000  -0.001956457   0.017249065   0.000000000  -0.000001661   0.000108589   0.029752878   0.000001021

   17    3.1  1.5 -0.5   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.062474436   0.000000000  -0.000000000   0.028127623  -0.028215161  -0.000431632   0.000000727  -0.021181890

   18    4.1  1.5 -0.5   0.000000000  -0.000715958  -0.081169865  -0.000000001   0.000002015  -0.000131704   0.027471192   0.000000943
                        -0.000000000   0.021223234  -0.002988351  -0.000000000  -0.000431889   0.028231932   0.037469995   0.000001286

   19    5.1  1.5 -0.5  -0.019522336  -0.000000000   0.000000000  -0.063387766   0.022691432   0.000347131   0.000001018  -0.029655387
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   20    6.1  1.5 -0.5  -0.000000000   0.001566817   0.087880158   0.000000001  -0.000001458   0.000095335   0.018896195   0.000000648
                        -0.000000000  -0.046445341   0.003235397   0.000000000   0.000312628  -0.020436001   0.025773921   0.000000884

   21    7.1  1.5 -0.5  -0.000000000  -0.106807158  -0.000971028  -0.000000000  -0.000412896   0.026990414   0.021053340   0.000000723
                        -0.000000000  -0.003603101   0.026375160   0.000000000  -0.000001926   0.000125912  -0.015435293  -0.000000530

   22    1.1  1.5 -1.5   0.000000000  -0.054056075   0.000900488   0.000000000  -0.000096958   0.006337965  -0.054884263  -0.000001883
                        -0.000000000  -0.001823562  -0.024459139   0.000000000  -0.000000452   0.000029567   0.040238493   0.000001381

   23    2.1  1.5 -1.5   0.015446193  -0.000000000   0.000000001  -0.074660230   0.061528628   0.000941258   0.000000747  -0.021783759
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000000   0.000000000

   24    3.1  1.5 -1.5   0.000000000  -0.001613891  -0.036813140  -0.000000000  -0.000003901   0.000254958   0.000483585   0.000000017
                         0.000000000   0.047840767  -0.001355313  -0.000000000   0.000836069  -0.054652563   0.000659597   0.000000023

   25    4.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.054905914   0.000000000  -0.000000001   0.064543486   0.027365631   0.000418636   0.000001104  -0.032176251

   26    5.1  1.5 -1.5  -0.000000000  -0.077282670   0.001030162   0.000000000   0.000830869  -0.054312708  -0.004031057  -0.000000138
                         0.000000000  -0.002607103  -0.027981347  -0.000000000   0.000003876  -0.000253373   0.002955376   0.000000101

   27    6.1  1.5 -1.5   0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.020899996   0.000000000  -0.000000001   0.064863237   0.024574333   0.000375935  -0.000001490   0.043423566

   28    7.1  1.5 -1.5  -0.026931430   0.000000000  -0.000000000   0.021247618  -0.026488754  -0.000405222   0.000001695  -0.049387885
                        -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000

   29    1.1  0.5  0.5   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000007   0.000000003  -0.000000000  -0.000000001
                        -0.039887151   0.000000000  -0.000000000   0.046271457   0.551110461   0.008430824   0.000011564  -0.337019795

   30    2.1  0.5  0.5  -0.036567045  -0.000000000  -0.000000001   0.018680507   0.548802235   0.008395513  -0.000011801   0.343874315
                         0.000000000  -0.000000000   0.000000001  -0.000000000  -0.000000006  -0.000000003   0.000000000   0.000000001

   31    3.1  0.5  0.5  -0.000000001  -0.000000000  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000001  -0.000000001
                         0.728024701  -0.000000000   0.000000001   0.077454410  -0.027589439  -0.000422062   0.000005207  -0.151801707

   32    4.1  0.5  0.5   0.454030640   0.000000000  -0.000000004   0.532001158   0.143130296   0.002189592   0.000005814  -0.169388809
                         0.000000000  -0.000000001   0.000000001   0.000000000  -0.000000002  -0.000000001  -0.000000001  -0.000000001

   33    5.1  0.5  0.5  -0.000000002  -0.003516177   0.646789920   0.000000006   0.000008094  -0.000529054   0.360836564   0.000012382
                         0.000000000   0.104230507   0.023812224   0.000000001  -0.001734891   0.113407285   0.492171736   0.000016889

   34    6.1  0.5  0.5   0.000000000   0.384242927   0.013348722   0.000000000   0.005342461  -0.349228862  -0.285901594  -0.000009809
                         0.000000001   0.012962296  -0.362579277  -0.000000005   0.000024925  -0.001629178   0.209609249   0.000007192

   35    7.1  0.5  0.5   0.000000000   0.254490472   0.012774439   0.000000001  -0.007184599   0.469646510  -0.360759614  -0.000012380
                         0.000000001   0.008585143  -0.346980549  -0.000000004  -0.000033519   0.002190934   0.264491539   0.000009076

   36    1.1  0.5 -0.5   0.000000000   0.001344813  -0.046240130  -0.000000000   0.000039333  -0.002570942   0.199269163   0.000006838
                        -0.000000000  -0.039864474  -0.001702377  -0.000000000  -0.008430732   0.551104465   0.271797982   0.000009326

   37    2.1  0.5 -0.5  -0.000000000   0.036546256   0.000687276   0.000000001   0.008395422  -0.548796263   0.277325979   0.000009517
                         0.000000000   0.001232875  -0.018667860  -0.000000001   0.000039168  -0.002560173  -0.203322025  -0.000006977

   38    3.1  0.5 -0.5  -0.000000000  -0.024545687  -0.077401971   0.000000001  -0.000001969   0.000128705   0.089755555   0.000003080
                         0.000000000   0.727610799  -0.002849633  -0.000000000   0.000422057  -0.027589139   0.122424256   0.000004199

   39    4.1  0.5 -0.5  -0.000000000  -0.453772511   0.019572900   0.000000001   0.002189568  -0.143128739  -0.136607811  -0.000004689
                         0.000000001  -0.015307852  -0.531640982  -0.000000004   0.000010215  -0.000667706   0.100154255   0.000003437

   40    5.1  0.5 -0.5   0.000000001   0.000000002  -0.000000001  -0.000000001  -0.000000002  -0.000000001  -0.000000000  -0.000000000
                        -0.104289799   0.000000000  -0.000000006   0.647228107  -0.113408519  -0.001734910  -0.000020941   0.610275384

   41    6.1  0.5 -0.5   0.384461504  -0.000000000   0.000000005  -0.362824917  -0.349232662  -0.005342519  -0.000012163   0.354507770
                         0.000000001   0.000000001   0.000000000  -0.000000001   0.000000004   0.000000002  -0.000000001  -0.000000001

   42    7.1  0.5 -0.5   0.254635239  -0.000000000   0.000000004  -0.347215622   0.469651621   0.007184677  -0.000015350   0.447329044
                         0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000005  -0.000000002   0.000000000   0.000000000


   Nr   State  S   Sz       41            42

    1    1.1  1.5  1.5   0.002313441   0.000000000
                        -0.000000000  -0.000000000

    2    2.1  1.5  1.5  -0.000000000   0.002769542
                         0.000000000   0.000422751

    3    3.1  1.5  1.5   0.000000001   0.000000001
                        -0.030244194  -0.000000002

    4    4.1  1.5  1.5   0.000000001   0.006855862
                         0.000000003  -0.044914360

    5    5.1  1.5  1.5   0.030549024   0.000000002
                         0.000000001   0.000000001

    6    6.1  1.5  1.5   0.000000000   0.004957372
                         0.000000002  -0.032476909

    7    7.1  1.5  1.5  -0.000000000   0.003009963
                         0.000000000   0.000459450

    8    1.1  1.5  0.5  -0.000000002   0.022612918
                         0.000000000   0.003451703

    9    2.1  1.5  0.5  -0.021595570  -0.000000001
                        -0.000000001  -0.000000001

   10    3.1  1.5  0.5  -0.000000001  -0.007781056
                        -0.000000004   0.050975518

   11    4.1  1.5  0.5  -0.000000002  -0.000000001
                         0.031677065   0.000000002

   12    5.1  1.5  0.5  -0.000000004   0.049467330
                         0.000000001   0.007550841

   13    6.1  1.5  0.5   0.000000002   0.000000001
                        -0.052908087  -0.000000004

   14    7.1  1.5  0.5  -0.056978138  -0.000000004
                        -0.000000003  -0.000000001

   15    1.1  1.5 -0.5  -0.022874840  -0.000000002
                        -0.000000001  -0.000000001

   16    2.1  1.5 -0.5   0.000000002  -0.021348296
                        -0.000000000  -0.003258668

   17    3.1  1.5 -0.5  -0.000000002  -0.000000001
                         0.051565960   0.000000004

   18    4.1  1.5 -0.5   0.000000000   0.004779917
                         0.000000003  -0.031314355

   19    5.1  1.5 -0.5  -0.050040303  -0.000000004
                        -0.000000002  -0.000000001

   20    6.1  1.5 -0.5  -0.000000001  -0.007983576
                        -0.000000004   0.052302277

   21    7.1  1.5 -0.5   0.000000004  -0.056325725
                        -0.000000001  -0.008597727

   22    1.1  1.5 -1.5   0.000000000  -0.002286951
                        -0.000000000  -0.000349087

   23    2.1  1.5 -1.5   0.002801621   0.000000000
                         0.000000000   0.000000000

   24    3.1  1.5 -1.5   0.000000000   0.004563703
                         0.000000002  -0.029897891

   25    4.1  1.5 -1.5  -0.000000002  -0.000000001
                         0.045434596   0.000000003

   26    5.1  1.5 -1.5   0.000000002  -0.030199231
                        -0.000000000  -0.004609701

   27    6.1  1.5 -1.5  -0.000000002  -0.000000001
                         0.032853084   0.000000002

   28    7.1  1.5 -1.5   0.003044827   0.000000000
                         0.000000000   0.000000000

   29    1.1  0.5  0.5   0.000000003   0.000000002
                        -0.057064002  -0.000000006

   30    2.1  0.5  0.5   0.033295982   0.000000002
                         0.000000002   0.000000001

   31    3.1  0.5  0.5  -0.000000029  -0.000000015
                         0.630036203   0.000000044

   32    4.1  0.5  0.5  -0.609599419  -0.000000044
                        -0.000000029  -0.000000015

   33    5.1  0.5  0.5   0.000000003   0.028447730
                         0.000000016  -0.186367751

   34    6.1  0.5  0.5   0.000000029  -0.411347781
                        -0.000000005  -0.062789356

   35    7.1  0.5  0.5   0.000000001  -0.012901442
                        -0.000000000  -0.001969315

   36    1.1  0.5 -0.5   0.000000001   0.008610683
                         0.000000006  -0.056410606

   37    2.1  0.5 -0.5   0.000000002  -0.032914735
                        -0.000000000  -0.005024203

   38    3.1  0.5 -0.5  -0.000000009  -0.095069434
                        -0.000000046   0.622822142

   39    4.1  0.5 -0.5  -0.000000046   0.602619363
                         0.000000008   0.091985621

   40    5.1  0.5 -0.5  -0.000000010  -0.000000005
                         0.188526422   0.000000015

   41    6.1  0.5 -0.5  -0.416112365  -0.000000028
                        -0.000000019  -0.000000010

   42    7.1  0.5 -0.5  -0.013050877  -0.000000001
                         0.000000000  -0.000000000


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   0.009%   0.003%   5.126%   1.481%   0.000%   8.787%   0.016%   0.007%   8.466%
    2    2.1  1.5  1.5   0.220%   0.000%   1.307%   0.001%   0.002%   7.664%   0.031%  17.509%   3.432%   0.003%
    3    3.1  1.5  1.5   0.000%  26.156%   0.001%   1.109%   1.689%   0.000%   2.788%   0.005%   0.003%   3.964%
    4    4.1  1.5  1.5   0.624%   0.000%   1.457%   0.001%   0.007%  30.752%   0.006%   3.189%   0.520%   0.000%
    5    5.1  1.5  1.5   0.000%  35.446%   0.000%   0.006%   0.119%   0.000%   0.021%   0.000%   0.000%   0.037%
    6    6.1  1.5  1.5   0.014%   0.000%  21.370%   0.014%   0.003%  13.733%   0.001%   0.766%   4.921%   0.004%
    7    7.1  1.5  1.5   0.189%   0.000%  17.900%   0.012%   0.007%  28.911%   0.000%   0.036%   0.158%   0.000%
    8    1.1  1.5  0.5   3.116%   0.000%   1.706%   0.001%   0.001%   2.951%   0.015%   8.678%  31.040%   0.026%
    9    2.1  1.5  0.5   0.000%   1.060%   0.000%   0.241%   0.126%   0.000%   2.231%   0.004%   0.031%  37.566%
   10    3.1  1.5  0.5   0.129%   0.000%   4.303%   0.003%   0.000%   0.284%   0.048%  26.970%   3.975%   0.003%
   11    4.1  1.5  0.5   0.000%  14.853%   0.007%  10.820%   3.279%   0.001%   5.886%   0.010%   0.000%   0.017%
   12    5.1  1.5  0.5   0.363%   0.000%  27.268%   0.018%   0.001%   5.174%   0.002%   1.000%   1.975%   0.002%
   13    6.1  1.5  0.5   0.000%   3.578%   0.001%   2.101%   2.591%   0.001%  21.963%   0.039%   0.000%   0.330%
   14    7.1  1.5  0.5   0.000%  14.245%   0.003%   5.222%   1.225%   0.000%   0.001%   0.000%   0.003%   3.517%
   15    1.1  1.5 -0.5   0.000%   3.116%   0.001%   1.706%   2.951%   0.001%   8.678%   0.015%   0.026%  31.040%
   16    2.1  1.5 -0.5   1.060%   0.000%   0.241%   0.000%   0.000%   0.126%   0.004%   2.231%  37.566%   0.031%
   17    3.1  1.5 -0.5   0.000%   0.129%   0.003%   4.303%   0.284%   0.000%  26.970%   0.048%   0.003%   3.975%
   18    4.1  1.5 -0.5  14.853%   0.000%  10.820%   0.007%   0.001%   3.279%   0.010%   5.886%   0.017%   0.000%
   19    5.1  1.5 -0.5   0.000%   0.363%   0.018%  27.268%   5.174%   0.001%   1.000%   0.002%   0.002%   1.975%
   20    6.1  1.5 -0.5   3.578%   0.000%   2.101%   0.001%   0.001%   2.591%   0.039%  21.963%   0.330%   0.000%
   21    7.1  1.5 -0.5  14.245%   0.000%   5.222%   0.003%   0.000%   1.225%   0.000%   0.001%   3.517%   0.003%
   22    1.1  1.5 -1.5   0.009%   0.000%   5.126%   0.003%   0.000%   1.481%   0.016%   8.787%   8.466%   0.007%
   23    2.1  1.5 -1.5   0.000%   0.220%   0.001%   1.307%   7.664%   0.002%  17.509%   0.031%   0.003%   3.432%
   24    3.1  1.5 -1.5  26.156%   0.000%   1.109%   0.001%   0.000%   1.689%   0.005%   2.788%   3.964%   0.003%
   25    4.1  1.5 -1.5   0.000%   0.624%   0.001%   1.457%  30.752%   0.007%   3.189%   0.006%   0.000%   0.520%
   26    5.1  1.5 -1.5  35.446%   0.000%   0.006%   0.000%   0.000%   0.119%   0.000%   0.021%   0.037%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.014%   0.014%  21.370%  13.733%   0.003%   0.766%   0.001%   0.004%   4.921%
   28    7.1  1.5 -1.5   0.000%   0.189%   0.012%  17.900%  28.911%   0.007%   0.036%   0.000%   0.000%   0.158%
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

    1    1.1  1.5  1.5   0.008%  36.925%   0.000%   7.361%   0.675%   0.379%   0.000%   0.359%   0.000%   0.788%
    2    2.1  1.5  1.5   1.125%   0.000%   7.922%   0.000%   2.796%   4.987%  19.212%   0.001%  20.332%   0.004%
    3    3.1  1.5  1.5   0.001%   3.903%   0.000%  20.487%   1.125%   0.631%   0.000%   1.357%   0.002%   8.994%
    4    4.1  1.5  1.5   1.115%   0.000%   0.002%   0.000%   5.291%   9.436%  10.362%   0.001%   2.236%   0.000%
    5    5.1  1.5  1.5   0.000%   1.728%   0.000%   2.061%  13.978%   7.838%   0.000%   2.031%   0.002%   9.522%
    6    6.1  1.5  1.5   2.453%   0.001%   1.445%   0.000%   2.459%   4.386%   8.887%   0.001%   0.004%   0.000%
    7    7.1  1.5  1.5   2.551%   0.001%   4.452%   0.000%   0.152%   0.271%   2.367%   0.000%   0.733%   0.000%
    8    1.1  1.5  0.5   0.082%   0.000%   2.506%   0.000%   2.402%   4.284%   0.026%   0.000%   8.797%   0.002%
    9    2.1  1.5  0.5   0.000%   1.070%   0.000%   0.076%  11.062%   6.203%   0.000%   0.550%   0.000%   1.051%
   10    3.1  1.5  0.5  14.666%   0.003%   6.794%   0.000%   0.749%   1.336%   3.955%   0.000%   6.721%   0.001%
   11    4.1  1.5  0.5   0.001%   2.627%   0.000%  10.554%   1.487%   0.834%   0.001%  13.295%   0.003%  12.363%
   12    5.1  1.5  0.5  17.089%   0.004%   1.109%   0.000%   0.168%   0.300%   8.700%   0.001%  10.282%   0.002%
   13    6.1  1.5  0.5   0.001%   3.297%   0.000%   1.103%   6.607%   3.704%   0.001%  20.662%   0.001%   3.547%
   14    7.1  1.5  0.5   0.002%   7.609%   0.001%  30.388%   1.743%   0.977%   0.000%   4.492%   0.003%  12.787%
   15    1.1  1.5 -0.5   0.000%   0.082%   0.000%   2.506%   4.284%   2.402%   0.000%   0.026%   0.002%   8.797%
   16    2.1  1.5 -0.5   1.070%   0.000%   0.076%   0.000%   6.203%  11.062%   0.550%   0.000%   1.051%   0.000%
   17    3.1  1.5 -0.5   0.003%  14.666%   0.000%   6.794%   1.336%   0.749%   0.000%   3.955%   0.001%   6.721%
   18    4.1  1.5 -0.5   2.627%   0.001%  10.554%   0.000%   0.834%   1.487%  13.295%   0.001%  12.363%   0.003%
   19    5.1  1.5 -0.5   0.004%  17.089%   0.000%   1.109%   0.300%   0.168%   0.001%   8.700%   0.002%  10.282%
   20    6.1  1.5 -0.5   3.297%   0.001%   1.103%   0.000%   3.704%   6.607%  20.662%   0.001%   3.547%   0.001%
   21    7.1  1.5 -0.5   7.609%   0.002%  30.388%   0.001%   0.977%   1.743%   4.492%   0.000%  12.787%   0.003%
   22    1.1  1.5 -1.5  36.925%   0.008%   7.361%   0.000%   0.379%   0.675%   0.359%   0.000%   0.788%   0.000%
   23    2.1  1.5 -1.5   0.000%   1.125%   0.000%   7.922%   4.987%   2.796%   0.001%  19.212%   0.004%  20.332%
   24    3.1  1.5 -1.5   3.903%   0.001%  20.487%   0.000%   0.631%   1.125%   1.357%   0.000%   8.994%   0.002%
   25    4.1  1.5 -1.5   0.000%   1.115%   0.000%   0.002%   9.436%   5.291%   0.001%  10.362%   0.000%   2.236%
   26    5.1  1.5 -1.5   1.728%   0.000%   2.061%   0.000%   7.838%  13.978%   2.031%   0.000%   9.522%   0.002%
   27    6.1  1.5 -1.5   0.001%   2.453%   0.000%   1.445%   4.386%   2.459%   0.001%   8.887%   0.000%   0.004%
   28    7.1  1.5 -1.5   0.001%   2.551%   0.000%   4.452%   0.271%   0.152%   0.000%   2.367%   0.000%   0.733%
   29    1.1  0.5  0.5   0.000%   1.530%   0.000%   0.305%   0.177%   0.099%   0.000%   0.024%   0.000%   0.698%
   30    2.1  0.5  0.5   0.000%   1.303%   0.000%   0.360%   0.275%   0.154%   0.000%   0.043%   0.000%   0.295%
   31    3.1  0.5  0.5   0.000%   0.001%   0.000%   0.945%   0.762%   0.427%   0.000%   0.001%   0.000%   0.054%
   32    4.1  0.5  0.5   0.000%   0.068%   0.000%   1.191%   0.042%   0.024%   0.000%   0.811%   0.000%   0.237%
   33    5.1  0.5  0.5   0.514%   0.000%   0.001%   0.000%   0.003%   0.004%   1.613%   0.000%   0.197%   0.000%
   34    6.1  0.5  0.5   0.147%   0.000%   0.021%   0.000%   0.545%   0.972%   0.451%   0.000%   0.159%   0.000%
   35    7.1  0.5  0.5   0.175%   0.000%   0.915%   0.000%   0.091%   0.162%   0.795%   0.000%   0.180%   0.000%
   36    1.1  0.5 -0.5   1.530%   0.000%   0.305%   0.000%   0.099%   0.177%   0.024%   0.000%   0.698%   0.000%
   37    2.1  0.5 -0.5   1.303%   0.000%   0.360%   0.000%   0.154%   0.275%   0.043%   0.000%   0.295%   0.000%
   38    3.1  0.5 -0.5   0.001%   0.000%   0.945%   0.000%   0.427%   0.762%   0.001%   0.000%   0.054%   0.000%
   39    4.1  0.5 -0.5   0.068%   0.000%   1.191%   0.000%   0.024%   0.042%   0.811%   0.000%   0.237%   0.000%
   40    5.1  0.5 -0.5   0.000%   0.514%   0.000%   0.001%   0.004%   0.003%   0.000%   1.613%   0.000%   0.197%
   41    6.1  0.5 -0.5   0.000%   0.147%   0.000%   0.021%   0.972%   0.545%   0.000%   0.451%   0.000%   0.159%
   42    7.1  0.5 -0.5   0.000%   0.175%   0.000%   0.915%   0.162%   0.091%   0.000%   0.795%   0.000%   0.180%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   5.023%   0.100%   0.330%  18.974%   0.838%   0.030%   0.002%   2.070%   1.418%   0.000%
    2    2.1  1.5  1.5   0.030%   1.485%   1.128%   0.020%   0.312%   8.645%   0.006%   0.000%   0.000%   0.013%
    3    3.1  1.5  1.5  11.278%   0.225%   0.009%   0.529%   7.201%   0.260%   0.006%   6.819%   0.125%   0.000%
    4    4.1  1.5  1.5   0.115%   5.779%  12.395%   0.215%   0.475%  13.165%   1.452%   0.001%   0.000%   0.035%
    5    5.1  1.5  1.5  10.107%   0.202%   0.021%   1.215%   7.681%   0.277%   0.005%   6.240%   0.105%   0.000%
    6    6.1  1.5  1.5   0.324%  16.207%   2.651%   0.046%   0.104%   2.890%  16.184%   0.014%   0.000%   0.103%
    7    7.1  1.5  1.5   0.094%   4.714%  11.238%   0.195%   0.267%   7.410%  17.631%   0.015%   0.000%   0.122%
    8    1.1  1.5  0.5   0.150%   7.497%   0.407%   0.007%   0.409%  11.349%  13.861%   0.012%   0.000%   0.010%
    9    2.1  1.5  0.5   1.047%   0.021%   0.290%  16.670%   1.487%   0.054%   0.016%  18.053%   0.062%   0.000%
   10    3.1  1.5  0.5   0.047%   2.342%  11.724%   0.204%   0.238%   6.587%   7.454%   0.006%   0.000%   0.589%
   11    4.1  1.5  0.5   6.486%   0.129%   0.040%   2.314%  12.277%   0.443%   0.001%   0.758%   0.098%   0.000%
   12    5.1  1.5  0.5   0.209%  10.484%   0.030%   0.001%   0.296%   8.200%   5.867%   0.005%   0.000%   0.611%
   13    6.1  1.5  0.5   2.199%   0.044%   0.291%  16.763%   8.543%   0.308%   0.000%   0.527%   0.189%   0.000%
   14    7.1  1.5  0.5  11.609%   0.232%   0.008%   0.463%   0.246%   0.009%   0.003%   2.990%   0.260%   0.000%
   15    1.1  1.5 -0.5   7.497%   0.150%   0.007%   0.407%  11.349%   0.409%   0.012%  13.861%   0.010%   0.000%
   16    2.1  1.5 -0.5   0.021%   1.047%  16.670%   0.290%   0.054%   1.487%  18.053%   0.016%   0.000%   0.062%
   17    3.1  1.5 -0.5   2.342%   0.047%   0.204%  11.724%   6.587%   0.238%   0.006%   7.454%   0.589%   0.000%
   18    4.1  1.5 -0.5   0.129%   6.486%   2.314%   0.040%   0.443%  12.277%   0.758%   0.001%   0.000%   0.098%
   19    5.1  1.5 -0.5  10.484%   0.209%   0.001%   0.030%   8.200%   0.296%   0.005%   5.867%   0.611%   0.000%
   20    6.1  1.5 -0.5   0.044%   2.199%  16.763%   0.291%   0.308%   8.543%   0.527%   0.000%   0.000%   0.189%
   21    7.1  1.5 -0.5   0.232%  11.609%   0.463%   0.008%   0.009%   0.246%   2.990%   0.003%   0.000%   0.260%
   22    1.1  1.5 -1.5   0.100%   5.023%  18.974%   0.330%   0.030%   0.838%   2.070%   0.002%   0.000%   1.418%
   23    2.1  1.5 -1.5   1.485%   0.030%   0.020%   1.128%   8.645%   0.312%   0.000%   0.006%   0.013%   0.000%
   24    3.1  1.5 -1.5   0.225%  11.278%   0.529%   0.009%   0.260%   7.201%   6.819%   0.006%   0.000%   0.125%
   25    4.1  1.5 -1.5   5.779%   0.115%   0.215%  12.395%  13.165%   0.475%   0.001%   1.452%   0.035%   0.000%
   26    5.1  1.5 -1.5   0.202%  10.107%   1.215%   0.021%   0.277%   7.681%   6.240%   0.005%   0.000%   0.105%
   27    6.1  1.5 -1.5  16.207%   0.324%   0.046%   2.651%   2.890%   0.104%   0.014%  16.184%   0.103%   0.000%
   28    7.1  1.5 -1.5   4.714%   0.094%   0.195%  11.238%   7.410%   0.267%   0.015%  17.631%   0.122%   0.000%
   29    1.1  0.5  0.5   0.001%   0.000%   0.001%   0.080%   0.000%   0.000%   0.000%   0.000%  35.420%   0.000%
   30    2.1  0.5  0.5   0.284%   0.006%   0.003%   0.193%   0.000%   0.000%   0.000%   0.000%  37.662%   0.000%
   31    3.1  0.5  0.5   0.335%   0.007%   0.007%   0.378%   0.000%   0.000%   0.000%   0.000%   0.157%   0.000%
   32    4.1  0.5  0.5   0.473%   0.009%   0.001%   0.060%   0.000%   0.000%   0.000%   0.000%   2.116%   0.000%
   33    5.1  0.5  0.5   0.005%   0.260%   0.313%   0.005%   0.000%   0.000%   0.000%   0.000%   0.000%  11.167%
   34    6.1  0.5  0.5   0.004%   0.181%   0.430%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   2.740%
   35    7.1  0.5  0.5   0.005%   0.252%   0.337%   0.006%   0.000%   0.000%   0.000%   0.000%   0.000%   6.998%
   36    1.1  0.5 -0.5   0.000%   0.001%   0.080%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%  35.420%
   37    2.1  0.5 -0.5   0.006%   0.284%   0.193%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%  37.662%
   38    3.1  0.5 -0.5   0.007%   0.335%   0.378%   0.007%   0.000%   0.000%   0.000%   0.000%   0.000%   0.157%
   39    4.1  0.5 -0.5   0.009%   0.473%   0.060%   0.001%   0.000%   0.000%   0.000%   0.000%   0.000%   2.116%
   40    5.1  0.5 -0.5   0.260%   0.005%   0.005%   0.313%   0.000%   0.000%   0.000%   0.000%  11.167%   0.000%
   41    6.1  0.5 -0.5   0.181%   0.004%   0.007%   0.430%   0.000%   0.000%   0.000%   0.000%   2.740%   0.000%
   42    7.1  0.5 -0.5   0.252%   0.005%   0.006%   0.337%   0.000%   0.000%   0.000%   0.000%   6.998%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.006%   0.000%   0.293%   0.000%   0.000%   0.060%   0.004%   0.000%   0.000%   0.463%
    2    2.1  1.5  1.5   0.000%   0.805%   0.000%   0.024%   0.557%   0.000%   0.000%   0.379%   0.047%   0.000%
    3    3.1  1.5  1.5   0.578%   0.000%   0.229%   0.000%   0.000%   0.136%   0.299%   0.000%   0.000%   0.000%
    4    4.1  1.5  1.5   0.000%   0.265%   0.000%   0.301%   0.417%   0.000%   0.000%   0.075%   0.104%   0.000%
    5    5.1  1.5  1.5   0.292%   0.000%   0.598%   0.000%   0.000%   0.078%   0.295%   0.000%   0.000%   0.002%
    6    6.1  1.5  1.5   0.000%   0.195%   0.000%   0.044%   0.421%   0.000%   0.000%   0.060%   0.189%   0.000%
    7    7.1  1.5  1.5   0.000%   0.141%   0.000%   0.073%   0.045%   0.000%   0.000%   0.070%   0.244%   0.000%
    8    1.1  1.5  0.5   0.000%   0.332%   0.000%   0.009%   0.011%   0.000%   0.000%   0.260%   0.000%   0.000%
    9    2.1  1.5  0.5   0.308%   0.000%   0.337%   0.000%   0.000%   0.030%   0.054%   0.000%   0.000%   0.253%
   10    3.1  1.5  0.5   0.000%   0.010%   0.000%   0.390%   0.079%   0.000%   0.000%   0.080%   0.045%   0.000%
   11    4.1  1.5  0.5   0.316%   0.000%   0.045%   0.000%   0.000%   0.660%   0.080%   0.000%   0.000%   0.216%
   12    5.1  1.5  0.5   0.000%   0.012%   0.000%   0.038%   0.402%   0.000%   0.000%   0.051%   0.088%   0.000%
   13    6.1  1.5  0.5   0.195%   0.000%   0.216%   0.000%   0.000%   0.773%   0.042%   0.000%   0.000%   0.102%
   14    7.1  1.5  0.5   0.284%   0.000%   1.142%   0.000%   0.000%   0.070%   0.073%   0.000%   0.000%   0.068%
   15    1.1  1.5 -0.5   0.332%   0.000%   0.009%   0.000%   0.000%   0.011%   0.260%   0.000%   0.000%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.308%   0.000%   0.337%   0.030%   0.000%   0.000%   0.054%   0.253%   0.000%
   17    3.1  1.5 -0.5   0.010%   0.000%   0.390%   0.000%   0.000%   0.079%   0.080%   0.000%   0.000%   0.045%
   18    4.1  1.5 -0.5   0.000%   0.316%   0.000%   0.045%   0.660%   0.000%   0.000%   0.080%   0.216%   0.000%
   19    5.1  1.5 -0.5   0.012%   0.000%   0.038%   0.000%   0.000%   0.402%   0.051%   0.000%   0.000%   0.088%
   20    6.1  1.5 -0.5   0.000%   0.195%   0.000%   0.216%   0.773%   0.000%   0.000%   0.042%   0.102%   0.000%
   21    7.1  1.5 -0.5   0.000%   0.284%   0.000%   1.142%   0.070%   0.000%   0.000%   0.073%   0.068%   0.000%
   22    1.1  1.5 -1.5   0.000%   0.006%   0.000%   0.293%   0.060%   0.000%   0.000%   0.004%   0.463%   0.000%
   23    2.1  1.5 -1.5   0.805%   0.000%   0.024%   0.000%   0.000%   0.557%   0.379%   0.000%   0.000%   0.047%
   24    3.1  1.5 -1.5   0.000%   0.578%   0.000%   0.229%   0.136%   0.000%   0.000%   0.299%   0.000%   0.000%
   25    4.1  1.5 -1.5   0.265%   0.000%   0.301%   0.000%   0.000%   0.417%   0.075%   0.000%   0.000%   0.104%
   26    5.1  1.5 -1.5   0.000%   0.292%   0.000%   0.598%   0.078%   0.000%   0.000%   0.295%   0.002%   0.000%
   27    6.1  1.5 -1.5   0.195%   0.000%   0.044%   0.000%   0.000%   0.421%   0.060%   0.000%   0.000%   0.189%
   28    7.1  1.5 -1.5   0.141%   0.000%   0.073%   0.000%   0.000%   0.045%   0.070%   0.000%   0.000%   0.244%
   29    1.1  0.5  0.5  19.225%   0.001%   0.159%   0.000%   0.000%   0.214%  30.372%   0.007%   0.000%  11.358%
   30    2.1  0.5  0.5  17.189%   0.001%   0.134%   0.000%   0.000%   0.035%  30.118%   0.007%   0.000%  11.825%
   31    3.1  0.5  0.5   1.249%   0.000%  53.002%   0.000%   0.000%   0.600%   0.076%   0.000%   0.000%   2.304%
   32    4.1  0.5  0.5   3.971%   0.000%  20.614%   0.000%   0.000%  28.303%   2.049%   0.000%   0.000%   2.869%
   33    5.1  0.5  0.5   0.000%   0.853%   0.000%   1.088%  41.890%   0.000%   0.000%   1.286%  37.244%   0.000%
   34    6.1  0.5  0.5   0.001%  24.315%   0.000%  14.781%  13.164%   0.000%   0.003%  12.196%  12.568%   0.000%
   35    7.1  0.5  0.5   0.002%  29.454%   0.000%   6.484%  12.056%   0.000%   0.005%  22.057%  20.010%   0.000%
   36    1.1  0.5 -0.5   0.001%  19.225%   0.000%   0.159%   0.214%   0.000%   0.007%  30.372%  11.358%   0.000%
   37    2.1  0.5 -0.5   0.001%  17.189%   0.000%   0.134%   0.035%   0.000%   0.007%  30.118%  11.825%   0.000%
   38    3.1  0.5 -0.5   0.000%   1.249%   0.000%  53.002%   0.600%   0.000%   0.000%   0.076%   2.304%   0.000%
   39    4.1  0.5 -0.5   0.000%   3.971%   0.000%  20.614%  28.303%   0.000%   0.000%   2.049%   2.869%   0.000%
   40    5.1  0.5 -0.5   0.853%   0.000%   1.088%   0.000%   0.000%  41.890%   1.286%   0.000%   0.000%  37.244%
   41    6.1  0.5 -0.5  24.315%   0.001%  14.781%   0.000%   0.000%  13.164%  12.196%   0.003%   0.000%  12.568%
   42    7.1  0.5 -0.5  29.454%   0.002%   6.484%   0.000%   0.000%  12.056%  22.057%   0.005%   0.000%  20.010%

   Nr   State  S   Sz      41       42

    1    1.1  1.5  1.5   0.001%   0.000%
    2    2.1  1.5  1.5   0.000%   0.001%
    3    3.1  1.5  1.5   0.091%   0.000%
    4    4.1  1.5  1.5   0.000%   0.206%
    5    5.1  1.5  1.5   0.093%   0.000%
    6    6.1  1.5  1.5   0.000%   0.108%
    7    7.1  1.5  1.5   0.000%   0.001%
    8    1.1  1.5  0.5   0.000%   0.052%
    9    2.1  1.5  0.5   0.047%   0.000%
   10    3.1  1.5  0.5   0.000%   0.266%
   11    4.1  1.5  0.5   0.100%   0.000%
   12    5.1  1.5  0.5   0.000%   0.250%
   13    6.1  1.5  0.5   0.280%   0.000%
   14    7.1  1.5  0.5   0.325%   0.000%
   15    1.1  1.5 -0.5   0.052%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.047%
   17    3.1  1.5 -0.5   0.266%   0.000%
   18    4.1  1.5 -0.5   0.000%   0.100%
   19    5.1  1.5 -0.5   0.250%   0.000%
   20    6.1  1.5 -0.5   0.000%   0.280%
   21    7.1  1.5 -0.5   0.000%   0.325%
   22    1.1  1.5 -1.5   0.000%   0.001%
   23    2.1  1.5 -1.5   0.001%   0.000%
   24    3.1  1.5 -1.5   0.000%   0.091%
   25    4.1  1.5 -1.5   0.206%   0.000%
   26    5.1  1.5 -1.5   0.000%   0.093%
   27    6.1  1.5 -1.5   0.108%   0.000%
   28    7.1  1.5 -1.5   0.001%   0.000%
   29    1.1  0.5  0.5   0.326%   0.000%
   30    2.1  0.5  0.5   0.111%   0.000%
   31    3.1  0.5  0.5  39.695%   0.000%
   32    4.1  0.5  0.5  37.161%   0.000%
   33    5.1  0.5  0.5   0.000%   3.554%
   34    6.1  0.5  0.5   0.000%  17.315%
   35    7.1  0.5  0.5   0.000%   0.017%
   36    1.1  0.5 -0.5   0.000%   0.326%
   37    2.1  0.5 -0.5   0.000%   0.111%
   38    3.1  0.5 -0.5   0.000%  39.695%
   39    4.1  0.5 -0.5   0.000%  37.161%
   40    5.1  0.5 -0.5   3.554%   0.000%
   41    6.1  0.5 -0.5  17.315%   0.000%
   42    7.1  0.5 -0.5   0.017%   0.000%


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
 CPU TIMES  *       672.54    552.75     83.80     31.71      2.32      1.56
 REAL TIME  *       730.22 SEC
 DISK USED  *       174.50 MB (local),        5.24 GB (total)
 SF USED    *       768.50 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.986142918982

              CI              CI           MULTI
   -109.93913592   -109.96463563   -109.35136819
 **********************************************************************************************************************************
 Molpro calculation terminated
