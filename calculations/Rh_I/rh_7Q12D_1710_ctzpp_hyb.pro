
 Working directory              : /wrk/irikura/molpro.1Sz0mI6sWd/
 Global scratch directory       : /wrk/irikura/molpro.1Sz0mI6sWd/
 Wavefunction directory         : /home/irikura/wfu/
 Main file repository           : /wrk/irikura/molpro.1Sz0mI6sWd/

 id        : nistki

 Nodes            nprocs
 pn112695.nist.gov   12
 GA implementation: MPI file
 GA implementation (serial work in mppx): MPI file

 Using customized tuning parameters: mindgm=1; mindgv=20; mindgc=4; mindgr=1; noblas=0; minvec=7
 default implementation of scratch files=sf  


 Variables initialized (1040), CPU time= 0.01 sec
 ***,Rh atom, (17/10) active space/core
                                                                                 ! Hybrid SO-CI
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
 
                                                                                 ! replace with opt-MRCI+Q energies
 HLSDIAG(1)=-110.016507
 HLSDIAG(2)=-110.016507
 HLSDIAG(3)=-110.016507
 HLSDIAG(4)=-110.016507
 HLSDIAG(5)=-110.016507
 HLSDIAG(6)=-110.016507
 HLSDIAG(7)=-110.016507
 HLSDIAG(8)=-109.991822
 HLSDIAG(9)=-109.991822
 HLSDIAG(10)=-109.991822
 HLSDIAG(11)=-109.991822
 HLSDIAG(12)=-109.991822
 HLSDIAG(13)=-109.991822
 HLSDIAG(14)=-109.991822
 HLSDIAG(15)=-109.995136
 HLSDIAG(16)=-109.995136
 HLSDIAG(17)=-109.995136
 HLSDIAG(18)=-109.995136
 HLSDIAG(19)=-109.995136
 
 table, hlsdiag
 
                                                                                 !compute and diagonalize SO matrix
 {ci;hlsmat,ecp,5103.2,5101.2;print,vls=0,hls=0}
 
 Commands initialized (846), CPU time= 0.01 sec, 717 directives.
 Default parameters read. Elapsed time= 0.11 sec

 Checking input...
 Passed
1


                                         ***  PROGRAM SYSTEM MOLPRO  ***
                                       Copyright, TTI GmbH Stuttgart, 2015
                                    Version 2023.2 linked Fri Sep 22 03:27:09 2023


 **********************************************************************************************************************************
 LABEL *   Rh atom, (17/10) active space/core                                                                                                                            
  (32 PROC) 64 bit mpp version                                                           DATE: 16-Feb-24          TIME: 12:33:50  
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

     14.156 MB (compressed) written to integral file ( 15.8%)

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
 CPU TIMES  *         0.69      0.48
 REAL TIME  *         1.25 SEC
 DISK USED  *        29.20 MB (local),      405.52 MB (total)
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
 *** IN SYMMETRY 1 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.129D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  4 SYMMETRY CONTAMINATION OF 0.114D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  5 SYMMETRY CONTAMINATION OF 0.336D+00 HAS BEEN REMOVED
 *** IN SYMMETRY 1 ORBITAL  6 SYMMETRY CONTAMINATION OF 0.342D+00 HAS BEEN REMOVED

 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 2 4 6 3 5 1 1 2 6   4 5 3 1 6 4 2 5 3 2   6 4 5 3 1 711 91514  1310 812 2 4 6 5 3 1
                                        715141310 911 812 2   4 6 3 5 1
 *** IN SYMMETRY 2 ORBITAL  2 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 *** IN SYMMETRY 2 ORBITAL  3 SYMMETRY CONTAMINATION OF 0.309D-03 HAS BEEN REMOVED
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 1 2 3 1 2 3 3   1 2 9 7 4 5 6 810 3   1 2 6 5 4 7 9 810 1   2 3 810 6 7 9 4 5 1
                                        2 3

 Wavefunction dump at record             2140.2

 Convergence thresholds  0.10E-04 (gradient)  0.10E-05 (energy)

 Weight factors for state symmetry  1:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
 Weight factors for state symmetry  2:    0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263   0.05263
                                          0.05263   0.05263   0.05263   0.05263
 
 Number of orbital rotations:  453  ( 0 closed/active, 0 closed/virtual, 0 active/active, 453 active/virtual )
 Total number of variables:    3617
 
 Second-order MCSCF: L-BFGS accelerated
 
 ITER  MIC  NCI  NEG     ENERGY(VAR)    ENERGY(PROJ) ENERGY CHANGE       GRAD(0)  GRAD(ORB)   GRAD(CI)      STEP      TIME
   1    4    8    0   -109.34700541    -109.35824586   -0.01124045    0.16041531 0.00001816 0.00000000  0.10E+00      0.31
   2    3    6    0   -109.35802045    -109.35803011   -0.00000966    0.00513691 0.00001038 0.00000000  0.34E-02      0.52
   3   20   40    0   -109.35803011    -109.35803011   -0.00000000    0.00000492 0.00000025 0.00000000  0.37E-05      1.64

 CONVERGENCE REACHED!  Final gradient:    0.00000014 ( 0.14E-06)
                       Final energy:   -109.35803011
 
 Results for state 1.1 Quartet
 =============================
 !MCSCF STATE 1.1 Quartet Energy              -109.380835325967
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272176
 One electron energy                          -193.47641982
 Two electron energy                            84.09558449
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 1.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Quartet
 =============================
 !MCSCF STATE 2.1 Quartet Energy              -109.380835325815
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272181
 One electron energy                          -193.47641988
 Two electron energy                            84.09558455
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 2.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Quartet
 =============================
 !MCSCF STATE 3.1 Quartet Energy              -109.380835324980
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272176
 One electron energy                          -193.47641981
 Two electron energy                            84.09558449
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 3.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Quartet
 =============================
 !MCSCF STATE 4.1 Quartet Energy              -109.380835323396
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272184
 One electron energy                          -193.47641993
 Two electron energy                            84.09558461
 Virial ratio                                    3.66895000
 
 !MCSCF STATE 4.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Quartet
 =============================
 !MCSCF STATE 5.1 Quartet Energy              -109.380835322646
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272198
 One electron energy                          -193.47642012
 Two electron energy                            84.09558480
 Virial ratio                                    3.66894999
 
 !MCSCF STATE 5.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Quartet
 =============================
 !MCSCF STATE 6.1 Quartet Energy              -109.380835322064
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272191
 One electron energy                          -193.47642003
 Two electron energy                            84.09558471
 Virial ratio                                    3.66894999
 
 !MCSCF STATE 6.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Quartet
 =============================
 !MCSCF STATE 7.1 Quartet Energy              -109.380835321404
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.98272202
 One electron energy                          -193.47642018
 Two electron energy                            84.09558486
 Virial ratio                                    3.66894998
 
 !MCSCF STATE 7.1 Quartet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 1.1 Doublet
 =============================
 !MCSCF STATE 1.1 Doublet Energy              -109.352898890913
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751365
 One electron energy                          -193.44995939
 Two electron energy                            84.09706050
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 1.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 2.1 Doublet
 =============================
 !MCSCF STATE 2.1 Doublet Energy              -109.352898890093
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751371
 One electron energy                          -193.44995947
 Two electron energy                            84.09706058
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 2.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 3.1 Doublet
 =============================
 !MCSCF STATE 3.1 Doublet Energy              -109.352898889912
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751367
 One electron energy                          -193.44995941
 Two electron energy                            84.09706052
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 3.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 4.1 Doublet
 =============================
 !MCSCF STATE 4.1 Doublet Energy              -109.352898887280
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751374
 One electron energy                          -193.44995954
 Two electron energy                            84.09706065
 Virial ratio                                    3.66925886
 
 !MCSCF STATE 4.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 5.1 Doublet
 =============================
 !MCSCF STATE 5.1 Doublet Energy              -109.352898885263
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751382
 One electron energy                          -193.44995962
 Two electron energy                            84.09706074
 Virial ratio                                    3.66925885
 
 !MCSCF STATE 5.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 6.1 Doublet
 =============================
 !MCSCF STATE 6.1 Doublet Energy              -109.352898884941
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751388
 One electron energy                          -193.44995972
 Two electron energy                            84.09706083
 Virial ratio                                    3.66925885
 
 !MCSCF STATE 6.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 7.1 Doublet
 =============================
 !MCSCF STATE 7.1 Doublet Energy              -109.352898883167
 Nuclear energy                                  0.00000000
 Kinetic energy                                 40.96751395
 One electron energy                          -193.44995980
 Two electron energy                            84.09706092
 Virial ratio                                    3.66925884
 
 !MCSCF STATE 7.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 8.1 Doublet
 =============================
 !MCSCF STATE 8.1 Doublet Energy              -109.333286538576
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330024
 One electron energy                          -193.59161726
 Two electron energy                            84.25833072
 Virial ratio                                    3.66320335
 
 !MCSCF STATE 8.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 9.1 Doublet
 =============================
 !MCSCF STATE 9.1 Doublet Energy              -109.333286538524
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330022
 One electron energy                          -193.59161725
 Two electron energy                            84.25833071
 Virial ratio                                    3.66320335
 
 !MCSCF STATE 9.1 Doublet Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 10.1 Doublet
 ==============================
 !MCSCF STATE 10.1 Doublet Energy             -109.333286537629
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330032
 One electron energy                          -193.59161737
 Two electron energy                            84.25833083
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 10.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 11.1 Doublet
 ==============================
 !MCSCF STATE 11.1 Doublet Energy             -109.333286536972
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330032
 One electron energy                          -193.59161740
 Two electron energy                            84.25833086
 Virial ratio                                    3.66320334
 
 !MCSCF STATE 11.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 Results for state 12.1 Doublet
 ==============================
 !MCSCF STATE 12.1 Doublet Energy             -109.333286536094
 Nuclear energy                                  0.00000000
 Kinetic energy                                 41.05330041
 One electron energy                          -193.59161752
 Two electron energy                            84.25833098
 Virial ratio                                    3.66320333
 
 !MCSCF STATE 12.1 Doublet Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                            0.00000000     0.00000000     0.00000000
 
 State-averaged charge density matrix saved on record 2140.2 (density set 1)
 
 No non-zero expectation values
 
 Expectation values for two-electron operators:
 
 ? Warning
 ? Transition properties are only calculated between states of the same symmetry
 ? The problem occurs in mu_properties_expec2

 !MCSCF expec      <1.1 Quartet|LXLX|1.1 Quartet>     0.598725318216
 !MCSCF expec      <2.1 Quartet|LXLX|2.1 Quartet>     2.752222919999
 !MCSCF expec      <3.1 Quartet|LXLX|3.1 Quartet>     6.043109207531
 !MCSCF expec      <4.1 Quartet|LXLX|4.1 Quartet>     7.247814840139
 !MCSCF expec      <5.1 Quartet|LXLX|5.1 Quartet>     4.000000000003
 !MCSCF expec      <6.1 Quartet|LXLX|6.1 Quartet>     3.956995617471
 !MCSCF expec      <7.1 Quartet|LXLX|7.1 Quartet>     3.401275674888
 !MCSCF expec      <1.1 Doublet|LXLX|1.1 Doublet>     0.267582948145
 !MCSCF expec      <2.1 Doublet|LXLX|2.1 Doublet>     3.526153816715
 !MCSCF expec      <3.1 Doublet|LXLX|3.1 Doublet>     5.964590852893
 !MCSCF expec      <4.1 Doublet|LXLX|4.1 Doublet>     6.473920150619
 !MCSCF expec      <5.1 Doublet|LXLX|5.1 Doublet>     4.035452112047
 !MCSCF expec      <6.1 Doublet|LXLX|6.1 Doublet>     4.000000021515
 !MCSCF expec      <7.1 Doublet|LXLX|7.1 Doublet>     3.732438072076
 !MCSCF expec      <8.1 Doublet|LXLX|8.1 Doublet>     2.824587821400
 !MCSCF expec      <9.1 Doublet|LXLX|9.1 Doublet>     1.000000000058
 !MCSCF expec    <10.1 Doublet|LXLX|10.1 Doublet>     3.999999867955
 !MCSCF expec    <11.1 Doublet|LXLX|11.1 Doublet>     1.000000030113
 !MCSCF expec    <12.1 Doublet|LXLX|12.1 Doublet>     1.175433239323
 
 !MCSCF expec      <1.1 Quartet|LYLY|1.1 Quartet>     8.464078982692
 !MCSCF expec      <2.1 Quartet|LYLY|2.1 Quartet>     8.568622628229
 !MCSCF expec      <3.1 Quartet|LYLY|3.1 Quartet>     3.739098446025
 !MCSCF expec      <4.1 Quartet|LYLY|4.1 Quartet>     1.431356750757
 !MCSCF expec      <5.1 Quartet|LYLY|5.1 Quartet>     3.999999999990
 !MCSCF expec      <6.1 Quartet|LYLY|6.1 Quartet>     0.260874751183
 !MCSCF expec      <7.1 Quartet|LYLY|7.1 Quartet>     1.535922402170
 !MCSCF expec      <1.1 Doublet|LYLY|1.1 Doublet>     7.801468656621
 !MCSCF expec      <2.1 Doublet|LYLY|2.1 Doublet>     8.089861319863
 !MCSCF expec      <3.1 Doublet|LYLY|3.1 Doublet>     3.758769236738
 !MCSCF expec      <4.1 Doublet|LYLY|4.1 Doublet>     1.910088152078
 !MCSCF expec      <5.1 Doublet|LYLY|5.1 Doublet>     0.241221605314
 !MCSCF expec      <6.1 Doublet|LYLY|6.1 Doublet>     3.999999608348
 !MCSCF expec      <7.1 Doublet|LYLY|7.1 Doublet>     2.198588781572
 !MCSCF expec      <8.1 Doublet|LYLY|8.1 Doublet>     0.009719654729
 !MCSCF expec      <9.1 Doublet|LYLY|9.1 Doublet>     1.000000000025
 !MCSCF expec    <10.1 Doublet|LYLY|10.1 Doublet>     1.000000127270
 !MCSCF expec    <11.1 Doublet|LYLY|11.1 Doublet>     3.999999966958
 !MCSCF expec    <12.1 Doublet|LYLY|12.1 Doublet>     3.990278068312
 
 !MCSCF expec      <1.1 Quartet|LZLZ|1.1 Quartet>     2.937195699092
 !MCSCF expec      <2.1 Quartet|LZLZ|2.1 Quartet>     0.679154451772
 !MCSCF expec      <3.1 Quartet|LZLZ|3.1 Quartet>     2.217792346444
 !MCSCF expec      <4.1 Quartet|LZLZ|4.1 Quartet>     3.320828409104
 !MCSCF expec      <5.1 Quartet|LZLZ|5.1 Quartet>     4.000000000007
 !MCSCF expec      <6.1 Quartet|LZLZ|6.1 Quartet>     7.782129631346
 !MCSCF expec      <7.1 Quartet|LZLZ|7.1 Quartet>     7.062801922943
 !MCSCF expec      <1.1 Doublet|LZLZ|1.1 Doublet>     3.930948395234
 !MCSCF expec      <2.1 Doublet|LZLZ|2.1 Doublet>     0.383984863422
 !MCSCF expec      <3.1 Doublet|LZLZ|3.1 Doublet>     2.276639910369
 !MCSCF expec      <4.1 Doublet|LZLZ|4.1 Doublet>     3.615991697303
 !MCSCF expec      <5.1 Doublet|LZLZ|5.1 Doublet>     7.723326282639
 !MCSCF expec      <6.1 Doublet|LZLZ|6.1 Doublet>     4.000000370137
 !MCSCF expec      <7.1 Doublet|LZLZ|7.1 Doublet>     6.068973146352
 !MCSCF expec      <8.1 Doublet|LZLZ|8.1 Doublet>     3.165692523871
 !MCSCF expec      <9.1 Doublet|LZLZ|9.1 Doublet>     3.999999999917
 !MCSCF expec    <10.1 Doublet|LZLZ|10.1 Doublet>     1.000000004775
 !MCSCF expec    <11.1 Doublet|LZLZ|11.1 Doublet>     1.000000002929
 !MCSCF expec    <12.1 Doublet|LZLZ|12.1 Doublet>     0.834288692365
 
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
 
 EXTRA SYMMETRY OF MOS IN SYMMETRY 1:   1 5 4 3 2 6 1 1 4 2   6 3 5 1 2 4 6 5 3 2   6 4 5 3 111 7 812 9  14151310 6 2 4 3 5 1
                                       11 7 8121415 91310 6   2 4 3 5 1
 EXTRA SYMMETRY OF MOS IN SYMMETRY 2:   1 2 3 3 2 1 3 2 1 3   2 1 6 4 510 9 7 8 3   2 1 5 6 410 8 9 7 3   2 1 5 6 810 4 7 9 3
                                        2 1
 
  NATURAL ORBITALS (STATE AVERAGED)
  =================================

  Orbital  Occupation    Energy    Cen Mu Typ  Coefficients
    1.1     1.99984    -3.72320     1  1  s    1.00208
    2.1     1.60118    -0.30725     1  1  d2+  1.00394
    3.1     1.60118    -0.30725     1  1  d1+  1.00394
    4.1     1.60118    -0.30725     1  1  d2-  1.00394
    5.1     1.60118    -0.30725     1  1  d0   1.00394
    6.1     1.60118    -0.30725     1  1  d1-  1.00394
    7.1     0.99496    -0.10138     1  2  s    0.89695
    1.2     1.99977    -2.35363     1  1  px   1.00013
    2.2     1.99977    -2.35363     1  1  py   1.00013
    3.2     1.99977    -2.35363     1  1  pz   1.00013
 
 Natural orbital dump (state averaged) at molpro section 2140.2 (Orbital set 2)
 
 Transform the CI vectors
 
 CI Coefficients of symmetry 1 (Quartet)
 =======================================
 
 2a22a2a 222     -0.00000079     -0.00000000     -0.00000067     -0.00000000      0.99999998     -0.00000278      0.00000318
 222aa2a 222      0.00001618     -0.41205413     -0.00000073      0.91115934      0.00000000     -0.00000000      0.00000000
 2a222aa 222      0.12885980      0.00000538      0.00000042      0.00000014     -0.00000272     -0.00006872      0.88509608
 222a2aa 222     -0.00000995     -0.00000000      0.22843008      0.00000018      0.00000255      0.86476563      0.00006848
 22aa22a 222      0.82477567      0.00003443     -0.00000518      0.00000092      0.00000175      0.00003826     -0.34604201
 22a22aa 222     -0.00003443      0.81496571     -0.00000030      0.36855244      0.00000000      0.00000000     -0.00000000
 2aa222a 222      0.00001016      0.00000000      0.78019821      0.00000063     -0.00000069     -0.43736793     -0.00003580
 22a2a2a 222     -0.00000012     -0.00000000     -0.58233187     -0.00000047     -0.00000108     -0.24675826     -0.00001887
 2222aaa 222     -0.55058169     -0.00002298      0.00000275     -0.00000061      0.00000056      0.00001759     -0.31122309
 2a2a22a 222      0.00001722     -0.40748281      0.00000015     -0.18427616     -0.00000000     -0.00000000      0.00000000
 
 Energy:       -109.38083533   -109.38083533   -109.38083532   -109.38083532   -109.38083532   -109.38083532   -109.38083532
 
 
 CI Coefficients of symmetry 1 (Doublet)
 =======================================

 State:                1               2               3               4               5               6               7
 2a22a2b 222      0.00000977     -0.00000143     -0.00001205     -0.00000122     -0.00042844      0.81442190     -0.00001251
 222aa2b 222      0.00000728     -0.25233446      0.00000087      0.77434523      0.00000061      0.00000072     -0.00000029
 2a222ab 222      0.00650897      0.00000130     -0.00000958      0.00000063     -0.00001327      0.00001110      0.72841208
 222a2ab 222     -0.00005865      0.00000043      0.17888802     -0.00000061      0.70613416      0.00037412      0.00001574
 22aa22b 222      0.70365472      0.00003550      0.00025651      0.00000488     -0.00000234     -0.00001133     -0.18840533
 22a22ab 222     -0.00003680      0.69259546     -0.00000032      0.22569482     -0.00000015      0.00000155     -0.00000110
 2aa222b 222     -0.00023300      0.00000032      0.63898951     -0.00000034     -0.34974117     -0.00017453      0.00000412
 222ba2a 222     -0.00000364      0.12616724     -0.00000043     -0.38717260     -0.00000030     -0.00000036      0.00000014
 222ab2a 222     -0.00000364      0.12616722     -0.00000043     -0.38717263     -0.00000030     -0.00000036      0.00000014
 220222a 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000001      0.00000000
 22a2a2b 222      0.00016838     -0.00000043     -0.47220188      0.00000055     -0.20576368     -0.00011524     -0.00001146
 222202a 222     -0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000     -0.00000000
 2b22a2a 222     -0.00000488      0.00000071      0.00000603      0.00000061      0.00021422     -0.40721092      0.00000626
 202222a 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 222022a 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22b2a 222     -0.00000488      0.00000071      0.00000603      0.00000061      0.00021422     -0.40721098      0.00000626
 22a22ba 222      0.00001840     -0.34629770      0.00000016     -0.11284740      0.00000008     -0.00000078      0.00000055
 2ba222a 222      0.00011650     -0.00000016     -0.31949471      0.00000017      0.17487057      0.00008726     -0.00000206
 22ab22a 222     -0.35182733     -0.00001775     -0.00012825     -0.00000244      0.00000117      0.00000567      0.09420266
 22b22aa 222      0.00001840     -0.34629776      0.00000016     -0.11284743      0.00000008     -0.00000078      0.00000055
 22ba22a 222     -0.35182738     -0.00001775     -0.00012825     -0.00000244      0.00000117      0.00000567      0.09420267
 2a222ba 222     -0.00325450     -0.00000065      0.00000479     -0.00000032      0.00000664     -0.00000555     -0.36420604
 222a2ba 222      0.00002932     -0.00000022     -0.08944403      0.00000031     -0.35306707     -0.00018706     -0.00000787
 2ab222a 222      0.00011650     -0.00000016     -0.31949480      0.00000017      0.17487061      0.00008726     -0.00000206
 2b222aa 222     -0.00325448     -0.00000065      0.00000479     -0.00000032      0.00000664     -0.00000555     -0.36420604
 222b2aa 222      0.00002932     -0.00000022     -0.08944399      0.00000031     -0.35306709     -0.00018706     -0.00000787
 222220a 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000
 2222aab 222     -0.41001317     -0.00002124     -0.00014256     -0.00000318      0.00000901      0.00000013     -0.31177313
 2a2a22b 222      0.00001840     -0.34629766      0.00000016     -0.11284735      0.00000008     -0.00000078      0.00000055
 2222baa 222      0.20500658      0.00001062      0.00007128      0.00000159     -0.00000451     -0.00000007      0.15588657
 22a2b2a 222     -0.00008419      0.00000022      0.23610092     -0.00000027      0.10288184      0.00005762      0.00000573
 2222aba 222      0.20500659      0.00001062      0.00007128      0.00000159     -0.00000451     -0.00000007      0.15588656
 22b2a2a 222     -0.00008419      0.00000022      0.23610096     -0.00000027      0.10288184      0.00005762      0.00000573
 22a2220 222     -0.00000000     -0.00000000      0.00000001     -0.00000000     -0.00000000     -0.00000000     -0.00000000
 22222a0 222     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000
 222a220 222      0.00000000     -0.00000000      0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000000
 2222a20 222      0.00000000     -0.00000000     -0.00000000     -0.00000000     -0.00000000      0.00000001     -0.00000000
 2a22220 222      0.00000000     -0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000     -0.00000000
 2a2b22a 222     -0.00000920      0.17314883     -0.00000008      0.05642368     -0.00000004      0.00000039     -0.00000028
 2b2a22a 222     -0.00000920      0.17314883     -0.00000008      0.05642367     -0.00000004      0.00000039     -0.00000028
 222a022 222     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2022a22 222      0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000      0.00000000     -0.00000000
 2220a22 222      0.00000000      0.00000000      0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a22022 222     -0.00000000     -0.00000000     -0.00000000      0.00000000      0.00000000     -0.00000000      0.00000000
 2a02222 222      0.00000025     -0.00000004     -0.00000030     -0.00000003     -0.00001080      0.02052139     -0.00000032
 2a22202 222      0.00000025     -0.00000004     -0.00000030     -0.00000003     -0.00001080      0.02052139     -0.00000032
 
 Energy:       -109.35289889   -109.35289889   -109.35289889   -109.35289889   -109.35289889   -109.35289888   -109.35289888

 State:                8               9              10              11              12
 2a22a2b 222      0.00000003     -0.00000000     -0.00000000      0.00000000     -0.00000002
 222aa2b 222      0.00000000      0.00000001      0.00000000     -0.00000000     -0.00000000
 2a222ab 222      0.00000000     -0.00000000     -0.00000001     -0.00000000      0.00000000
 222a2ab 222     -0.00000000     -0.00000000     -0.00000000     -0.00000001     -0.00000000
 22aa22b 222     -0.00000000     -0.00000000      0.00000002     -0.00000000     -0.00000000
 22a22ab 222     -0.00000000      0.00000003     -0.00000000     -0.00000000      0.00000000
 2aa222b 222     -0.00000000      0.00000000      0.00000000      0.00000005      0.00000000
 222ba2a 222     -0.00000311     -0.51886885      0.00000228      0.00000150     -0.00000002
 222ab2a 222      0.00000311      0.51886884     -0.00000228     -0.00000150      0.00000002
 220222a 222      0.51823809     -0.00000310     -0.00000833      0.00000763      0.02557719
 22a2a2b 222      0.00000000     -0.00000000     -0.00000000     -0.00000003     -0.00000000
 222202a 222      0.23696856     -0.00000144      0.00003074     -0.00003758      0.46159595
 2b22a2a 222     -0.46159593      0.00000275      0.00002737     -0.00003051      0.23696854
 202222a 222     -0.23696849      0.00000144     -0.00003074      0.00003758     -0.46159593
 222022a 222     -0.23696854      0.00000144     -0.00003074      0.00003758     -0.46159591
 2a22b2a 222      0.46159591     -0.00000275     -0.00002737      0.00003051     -0.23696852
 22a22ba 222     -0.00000269     -0.44935364      0.00000198      0.00000130     -0.00000002
 2ba222a 222      0.00000864     -0.00000130     -0.00008582     -0.44935363     -0.00004102
 22ab22a 222     -0.00000893     -0.00000198     -0.44935361      0.00008581      0.00003452
 22b22aa 222      0.00000269      0.44935361     -0.00000198     -0.00000130      0.00000002
 22ba22a 222      0.00000893      0.00000198      0.44935360     -0.00008581     -0.00003452
 2a222ba 222      0.00000893      0.00000198      0.44935358     -0.00008581     -0.00003452
 222a2ba 222     -0.00000864      0.00000130      0.00008582      0.44935358      0.00004102
 2ab222a 222     -0.00000864      0.00000130      0.00008582      0.44935358      0.00004102
 2b222aa 222     -0.00000893     -0.00000198     -0.44935357      0.00008581      0.00003452
 222b2aa 222      0.00000864     -0.00000130     -0.00008582     -0.44935357     -0.00004102
 222220a 222     -0.28126956      0.00000166      0.00003908     -0.00004522      0.43601871
 2222aab 222      0.00000000      0.00000000     -0.00000003      0.00000000     -0.00000000
 2a2a22b 222     -0.00000000     -0.00000003      0.00000000     -0.00000000      0.00000000
 2222baa 222      0.00000516      0.00000114      0.25943447     -0.00004954     -0.00001993
 22a2b2a 222     -0.00000499      0.00000075      0.00004955      0.25943445      0.00002368
 2222aba 222     -0.00000516     -0.00000114     -0.25943444      0.00004954      0.00001993
 22b2a2a 222      0.00000499     -0.00000075     -0.00004955     -0.25943442     -0.00002368
 22a2220 222      0.00000390     -0.00000059     -0.00003870     -0.20263822     -0.00001850
 22222a0 222      0.00000403      0.00000089      0.20263817     -0.00003870     -0.00001557
 222a220 222      0.00000121      0.20263816     -0.00000089     -0.00000059      0.00000001
 2222a20 222      0.09254529     -0.00000056      0.00001201     -0.00001468      0.18027093
 2a22220 222      0.18027087     -0.00000108     -0.00001069      0.00001192     -0.09254529
 2a2b22a 222     -0.00000000     -0.00000001     -0.00000000      0.00000000     -0.00000000
 2b2a22a 222      0.00000000      0.00000004      0.00000000     -0.00000000      0.00000000
 222a022 222     -0.00000040     -0.06718510      0.00000030      0.00000019     -0.00000000
 2022a22 222     -0.03068359      0.00000019     -0.00000398      0.00000487     -0.05976920
 2220a22 222     -0.03068359      0.00000019     -0.00000398      0.00000487     -0.05976919
 2a22022 222     -0.05976919      0.00000036      0.00000354     -0.00000395      0.03068358
 2a02222 222     -0.05761942      0.00000035      0.00000016      0.00000007     -0.01287405
 2a22202 222     -0.02312206      0.00000014      0.00000463     -0.00000540      0.05432414
 
 Energy:       -109.33328654   -109.33328654   -109.33328654   -109.33328654   -109.33328654
 


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
 CPU TIMES  *         2.41      1.73      0.48
 REAL TIME  *         3.13 SEC
 DISK USED  *        32.69 MB (local),      447.41 MB (total)
 SF USED    *        12.16 MB
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

 Number of blocks in overlap matrix:    84   Smallest eigenvalue:  0.19D+00
 Number of N-2 electron functions:     608
 Number of N-1 electron functions:    1200

 Number of internal configurations:                   56
 Number of singly external configurations:         52056
 Number of doubly external configurations:       1149936
 Total number of contracted configurations:      1202048
 Total number of uncontracted configurations:   13328522

 Diagonal Coupling coefficients finished.               Storage:    409053 words, CPU-Time:      0.04 seconds.
 Energy denominators for pairs finished in 1 passes.    Storage:    413743 words, CPU-time:      0.03 seconds.

  ITER. STATE  ROOT     SQ.NORM     CORR.ENERGY   TOTAL ENERGY   ENERGY CHANGE       DEN1      VAR(S)    VAR(P)      TIME
    1     1     1     1.00000000     0.00000000  -109.38083533     0.00000000    -0.71436744  0.25D-01  0.12D+00     0.17
    1     2     2     1.00000000     0.00000000  -109.38083533    -0.00000000    -0.71425852  0.25D-01  0.12D+00     0.17
    1     3     3     1.00000000     0.00000000  -109.38083532     0.00000000    -0.71431707  0.25D-01  0.12D+00     0.17
    1     4     4     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71456151  0.25D-01  0.12D+00     0.17
    1     5     5     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71466148  0.25D-01  0.12D+00     0.17
    1     6     6     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71432806  0.25D-01  0.12D+00     0.17
    1     7     7     1.00000000     0.00000000  -109.38083532    -0.00000000    -0.71420949  0.25D-01  0.12D+00     0.17
    2     1     1     1.09342967    -0.56783657  -109.94867189    -0.56783657    -0.01563528  0.99D-03  0.21D-02    11.81
    2     2     2     1.09344930    -0.56783309  -109.94866842    -0.56783309    -0.01564057  0.99D-03  0.21D-02    11.81
    2     3     3     1.09337953    -0.56783024  -109.94866556    -0.56783024    -0.01563798  0.99D-03  0.21D-02    11.81
    2     4     4     1.09345581    -0.56782455  -109.94865987    -0.56782455    -0.01565081  0.99D-03  0.21D-02    11.81
    2     5     5     1.09341915    -0.56780586  -109.94864118    -0.56780586    -0.01566681  0.99D-03  0.21D-02    11.81
    2     6     6     1.09343300    -0.56778613  -109.94862145    -0.56778613    -0.01570619  0.99D-03  0.21D-02    11.81
    2     7     7     1.09345109    -0.56777786  -109.94861318    -0.56777786    -0.01571005  0.99D-03  0.21D-02    11.81
    3     1     1     1.08864387    -0.58264549  -109.96348082    -0.01480893    -0.00018846  0.13D-04  0.24D-04    23.42
    3     2     2     1.08864055    -0.58264531  -109.96348063    -0.01481222    -0.00018857  0.13D-04  0.24D-04    23.42
    3     3     3     1.08865600    -0.58264517  -109.96348050    -0.01481493    -0.00018951  0.13D-04  0.25D-04    23.42
    3     4     4     1.08865290    -0.58264483  -109.96348016    -0.01482028    -0.00018989  0.13D-04  0.25D-04    23.42
    3     5     5     1.08863090    -0.58264480  -109.96348012    -0.01483894    -0.00018861  0.13D-04  0.24D-04    23.42
    3     6     6     1.08862252    -0.58264388  -109.96347920    -0.01485775    -0.00018936  0.13D-04  0.24D-04    23.42
    3     7     7     1.08860991    -0.58264330  -109.96347862    -0.01486544    -0.00018962  0.13D-04  0.25D-04    23.42
    4     1     1     1.08920577    -0.58283790  -109.96367323    -0.00019241    -0.00000851  0.24D-05  0.91D-06    34.98
    4     2     2     1.08920417    -0.58283788  -109.96367320    -0.00019257    -0.00000853  0.24D-05  0.92D-06    34.98
    4     3     3     1.08920299    -0.58283785  -109.96367317    -0.00019267    -0.00000851  0.24D-05  0.89D-06    34.98
    4     4     4     1.08920232    -0.58283783  -109.96367315    -0.00019300    -0.00000853  0.24D-05  0.90D-06    34.98
    4     5     5     1.08919897    -0.58283774  -109.96367307    -0.00019295    -0.00000857  0.24D-05  0.90D-06    34.98
    4     6     6     1.08919649    -0.58283769  -109.96367301    -0.00019381    -0.00000861  0.25D-05  0.90D-06    34.98
    4     7     7     1.08919291    -0.58283759  -109.96367291    -0.00019429    -0.00000869  0.25D-05  0.92D-06    34.98
    5     1     1     1.08940539    -0.58284679  -109.96368212    -0.00000889    -0.00000047  0.82D-07  0.72D-07    46.54
    5     2     2     1.08940550    -0.58284679  -109.96368212    -0.00000891    -0.00000047  0.82D-07  0.72D-07    46.54
    5     3     3     1.08940556    -0.58284679  -109.96368211    -0.00000894    -0.00000048  0.86D-07  0.69D-07    46.54
    5     4     4     1.08940554    -0.58284679  -109.96368211    -0.00000896    -0.00000048  0.85D-07  0.70D-07    46.54
    5     5     5     1.08940546    -0.58284678  -109.96368211    -0.00000904    -0.00000048  0.88D-07  0.70D-07    46.54
    5     6     6     1.08940494    -0.58284678  -109.96368210    -0.00000909    -0.00000048  0.88D-07  0.70D-07    46.54
    5     7     7     1.08940462    -0.58284677  -109.96368209    -0.00000918    -0.00000049  0.88D-07  0.72D-07    46.54
    6     1     1     1.08945733    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.59D-08  0.41D-08    58.22
    6     2     2     1.08945737    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.60D-08  0.42D-08    58.22
    6     3     3     1.08945728    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.59D-08  0.41D-08    58.22
    6     4     4     1.08945741    -0.58284730  -109.96368263    -0.00000051    -0.00000003  0.60D-08  0.43D-08    58.22
    6     5     5     1.08945740    -0.58284730  -109.96368262    -0.00000052    -0.00000003  0.60D-08  0.43D-08    58.22
    6     6     6     1.08945731    -0.58284730  -109.96368262    -0.00000052    -0.00000003  0.60D-08  0.42D-08    58.22
    6     7     7     1.08945727    -0.58284730  -109.96368262    -0.00000053    -0.00000003  0.60D-08  0.43D-08    58.22
    7     1     1     1.08946140    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.25D-09  0.30D-09    69.91
    7     2     2     1.08946141    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.25D-09  0.30D-09    69.91
    7     3     3     1.08946138    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.26D-09  0.30D-09    69.91
    7     4     4     1.08946145    -0.58284733  -109.96368266    -0.00000003    -0.00000000  0.25D-09  0.31D-09    69.91
    7     5     5     1.08946145    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.24D-09  0.31D-09    69.91
    7     6     6     1.08946141    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.25D-09  0.30D-09    69.91
    7     7     7     1.08946137    -0.58284733  -109.96368265    -0.00000003    -0.00000000  0.25D-09  0.31D-09    69.91


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.1%   0.4%
 P   0.3%   8.6%  65.2%

 Initialization:   0.2%
 Other:           25.3%

 Total CPU:       69.9 seconds
 =====================================



 Wavefunction saved on  5103.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22/2/222           0.0000000   0.0000000  -0.0000000   0.0000000   0.9580629  -0.0000000   0.0000000
 222//2/222           0.0000000  -0.3458011   0.0000000   0.8934798  -0.0000000   0.0000000   0.0000000
 2/222//222           0.0589782   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.8548862
 222/2//222          -0.0000000   0.0000000   0.1945433   0.0000000  -0.0000000   0.8345428   0.0000000
 22//22/222           0.8129957   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.2708255
 22/22//222           0.0000000   0.7991535   0.0000000   0.3092943  -0.0000000   0.0000000  -0.0000000
 2//222/222           0.0000000   0.0000000   0.7594065   0.0000000  -0.0000000  -0.3970005   0.0000000
 22/2/2/222          -0.0000000   0.0000000  -0.5507625   0.0000000  -0.0000000  -0.2526136   0.0000000
 2222///222          -0.5034325   0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.3372059
 2/2/22/222           0.0000000  -0.3995747   0.0000000  -0.1546463  -0.0000000   0.0000000  -0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.955320   -0.000000    0.000000    0.000000   -0.000000   -0.000000   -0.072448
 2           0.000000    0.956591   -0.000000    0.053092    0.000000    0.000000   -0.000000
 3          -0.000000   -0.000000    0.957654    0.000000   -0.000000   -0.027976    0.000000
 4           0.000000   -0.053092   -0.000000    0.956591   -0.000000    0.000000   -0.000000
 5           0.000000   -0.000000    0.000000    0.000000    0.958063   -0.000000   -0.000000
 6          -0.000000   -0.000000    0.027976    0.000000    0.000000    0.957654   -0.000000
 7           0.072448    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.955320

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.958063    0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000
 2           0.000000    0.958063    0.000000    0.000000   -0.000000    0.000000   -0.000000
 3           0.000000    0.000000    0.958063   -0.000000    0.000000    0.000000    0.000000
 4           0.000000    0.000000   -0.000000    0.958063    0.000000   -0.000000   -0.000000
 5          -0.000000   -0.000000    0.000000    0.000000    0.958063    0.000000    0.000000
 6          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.958063    0.000000
 7           0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.958063


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95531973 (fixed)   0.95806302 (relaxed)   0.95806289 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.50257969
 Singles      0.01453476   -0.07379997   -0.07551485
 Pairs        0.07492667    0.03849380   -0.00475279
 Total        1.08946170   -0.03530616   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083533
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487303
 One electron energy                 -193.11888691
 Two electron energy                   83.15520425
 Virial quotient                       -2.65325177
 Correlation energy                    -0.58284733
 !MRCI STATE 1.1 Energy              -109.963682656062

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582517 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582500 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582517 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137389 (Pople, fixed reference)
 Cluster corrected energies          -110.01137372 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137389 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Coefficient of reference function:   C(0) = 0.95659070 (fixed)   0.95806301 (relaxed)   0.95806288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724682
 Singles      0.01453478   -0.07379996   -0.07551486
 Pairs        0.07492666    0.00000000   -0.04008565
 Total        1.08946171   -0.07379996   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083533
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487317
 One electron energy                 -193.11888690
 Two electron energy                   83.15520424
 Virial quotient                       -2.65325176
 Correlation energy                    -0.58284733
 !MRCI STATE 2.1 Energy              -109.963682655955

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582517 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582500 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582517 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137390 (Pople, fixed reference)
 Cluster corrected energies          -110.01137373 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137390 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Coefficient of reference function:   C(0) = 0.95765436 (fixed)   0.95806303 (relaxed)   0.95806290 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.46724682
 Singles      0.01453476   -0.07379999   -0.07551485
 Pairs        0.07492664   -0.00000000   -0.04008566
 Total        1.08946168   -0.07379999   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487274
 One electron energy                 -193.11888652
 Two electron energy                   83.15520386
 Virial quotient                       -2.65325179
 Correlation energy                    -0.58284733
 !MRCI STATE 3.1 Energy              -109.963682655715

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582515 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582498 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582515 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137388 (Pople, fixed reference)
 Cluster corrected energies          -110.01137371 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137388 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Coefficient of reference function:   C(0) = 0.95659069 (fixed)   0.95806299 (relaxed)   0.95806286 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724683
 Singles      0.01453480   -0.07379994   -0.07551485
 Pairs        0.07492668   -0.00000000   -0.04008565
 Total        1.08946175   -0.07379994   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487509
 One electron energy                 -193.11888985
 Two electron energy                   83.15520720
 Virial quotient                       -2.65325164
 Correlation energy                    -0.58284733
 !MRCI STATE 4.1 Energy              -109.963682655038

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

 Coefficient of reference function:   C(0) = 0.95806287 (fixed)   0.95806300 (relaxed)   0.95806287 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.46724682
 Singles      0.01453482   -0.07379995   -0.07551486
 Pairs        0.07492665   -0.00000000   -0.04008565
 Total        1.08946175   -0.07379995   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487517
 One electron energy                 -193.11889002
 Two electron energy                   83.15520737
 Virial quotient                       -2.65325163
 Correlation energy                    -0.58284733
 !MRCI STATE 5.1 Energy              -109.963682654732

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582519 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582502 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582519 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137392 (Pople, fixed reference)
 Cluster corrected energies          -110.01137375 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137392 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Coefficient of reference function:   C(0) = 0.95765435 (fixed)   0.95806301 (relaxed)   0.95806288 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027    0.00000000   -0.46724684
 Singles      0.01453477   -0.07379995   -0.07551485
 Pairs        0.07492666   -0.00000000   -0.04008564
 Total        1.08946171   -0.07379995   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487359
 One electron energy                 -193.11888776
 Two electron energy                   83.15520510
 Virial quotient                       -2.65325173
 Correlation energy                    -0.58284733
 !MRCI STATE 6.1 Energy              -109.963682654510

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

 Coefficient of reference function:   C(0) = 0.95531974 (fixed)   0.95806303 (relaxed)   0.95806290 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000027   -0.00000000   -0.00133798
 Singles      0.01453479   -0.07379999   -0.07551486
 Pairs        0.07492661   -0.50758983   -0.50599449
 Total        1.08946167   -0.58138981   -0.58284733
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.38083532
 Nuclear energy                         0.00000000
 Kinetic energy                        41.44487338
 One electron energy                 -193.11888761
 Two electron energy                   83.15520496
 Virial quotient                       -2.65325175
 Correlation energy                    -0.58284733
 !MRCI STATE 7.1 Energy              -109.963682654095

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -110.01582515 (Davidson, fixed reference)
 Cluster corrected energies          -110.01582498 (Davidson, relaxed reference)
 Cluster corrected energies          -110.01582515 (Davidson, rotated reference)

 Cluster corrected energies          -110.01137388 (Pople, fixed reference)
 Cluster corrected energies          -110.01137371 (Pople, relaxed reference)
 Cluster corrected energies          -110.01137388 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       5       66.13       700     1000      520     2140     5103   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI   

 PROGRAMS   *        TOTAL        CI     MULTI       INT
 CPU TIMES  *        75.46     73.04      1.73      0.48
 REAL TIME  *        83.73 SEC
 DISK USED  *        98.30 MB (local),        1.21 GB (total)
 SF USED    *       659.12 MB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(1)     =      -110.01582517  AU                              
 SETTING HLSDIAG(2)     =      -110.01582517  AU                              
 SETTING HLSDIAG(3)     =      -110.01582515  AU                              
 SETTING HLSDIAG(4)     =      -110.01582520  AU                              
 SETTING HLSDIAG(5)     =      -110.01582519  AU                              
 SETTING HLSDIAG(6)     =      -110.01582517  AU                              
 SETTING HLSDIAG(7)     =      -110.01582515  AU                              


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
     6      -109.35289888
     7      -109.35289888
     8      -109.33328654
     9      -109.33328654
    10      -109.33328654
    11      -109.33328654
    12      -109.33328654

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
    1     1     1     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68793656  0.28D-01  0.10D+00     0.75
    1     2     2     1.00000000     0.00000000  -109.35289889     0.00000000    -0.68788550  0.28D-01  0.10D+00     0.75
    1     3     3     1.00000000     0.00000000  -109.35289889    -0.00000000    -0.68657958  0.28D-01  0.10D+00     0.75
    1     4     4     1.00000000     0.00000000  -109.35289889    -0.00000000    -0.68699178  0.28D-01  0.10D+00     0.75
    1     5     5     1.00000000     0.00000000  -109.35289889    -0.00000000    -0.68769570  0.28D-01  0.10D+00     0.75
    1     6     6     1.00000000     0.00000000  -109.35289888     0.00000000    -0.68774443  0.28D-01  0.10D+00     0.75
    1     7     7     1.00000000     0.00000000  -109.35289888     0.00000000    -0.68690963  0.28D-01  0.10D+00     0.75
    1     8     8     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69281496  0.31D-01  0.11D+00     0.75
    1     9     9     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69333736  0.31D-01  0.11D+00     0.75
    1    10    10     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69247197  0.31D-01  0.11D+00     0.75
    1    11    11     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69237576  0.31D-01  0.11D+00     0.75
    1    12    12     1.00000000     0.00000000  -109.33328654     0.00000000    -0.69221773  0.31D-01  0.11D+00     0.75
    2     1     1     1.08991085    -0.56828507  -109.92118397    -0.56828507    -0.01645139  0.15D-02  0.22D-02    99.47
    2     2     2     1.08989781    -0.56820486  -109.92110375    -0.56820486    -0.01650905  0.15D-02  0.22D-02    99.47
    2     3     3     1.08990570    -0.56810286  -109.92100175    -0.56810286    -0.01657152  0.15D-02  0.22D-02    99.47
    2     4     4     1.08999212    -0.56797530  -109.92087418    -0.56797530    -0.01675907  0.16D-02  0.23D-02    99.47
    2     5     5     1.08976380    -0.56796999  -109.92086887    -0.56796999    -0.01663095  0.15D-02  0.23D-02    99.47
    2     6     6     1.08982007    -0.56794956  -109.92084845    -0.56794956    -0.01666141  0.15D-02  0.23D-02    99.47
    2     7     7     1.08990220    -0.56784913  -109.92074801    -0.56784913    -0.01678819  0.16D-02  0.23D-02    99.47
    2     8     8     1.09324949    -0.57129939  -109.90458593    -0.57129939    -0.01635335  0.22D-02  0.20D-02    99.47
    2     9     9     1.09324596    -0.57121257  -109.90449911    -0.57121257    -0.01643381  0.22D-02  0.20D-02    99.47
    2    10    10     1.09327244    -0.57098309  -109.90426963    -0.57098309    -0.01661082  0.22D-02  0.20D-02    99.47
    2    11    11     1.09315421    -0.57096553  -109.90425207    -0.57096553    -0.01657943  0.22D-02  0.20D-02    99.47
    2    12    12     1.09316924    -0.57096160  -109.90424813    -0.57096160    -0.01659292  0.22D-02  0.20D-02    99.47
    3     1     1     1.08698162    -0.58506162  -109.93796051    -0.01677654    -0.00083496  0.26D-04  0.17D-03   200.39
    3     2     2     1.08696334    -0.58503392  -109.93793281    -0.01682906    -0.00085645  0.26D-04  0.18D-03   200.39
    3     3     3     1.08695670    -0.58502862  -109.93792751    -0.01692576    -0.00087086  0.24D-04  0.18D-03   200.39
    3     4     4     1.08693975    -0.58502216  -109.93792105    -0.01704686    -0.00086162  0.26D-04  0.18D-03   200.39
    3     5     5     1.08688877    -0.58499792  -109.93789681    -0.01702793    -0.00087755  0.26D-04  0.18D-03   200.39
    3     6     6     1.08688697    -0.58499695  -109.93789583    -0.01704739    -0.00087998  0.25D-04  0.18D-03   200.39
    3     7     7     1.08687087    -0.58499355  -109.93789243    -0.01714442    -0.00087733  0.26D-04  0.18D-03   200.39
    3     8     8     1.08887570    -0.58738957  -109.92067611    -0.01609019    -0.00083435  0.83D-04  0.14D-03   200.39
    3     9     9     1.08887368    -0.58737951  -109.92066605    -0.01616694    -0.00083470  0.81D-04  0.14D-03   200.39
    3    10    10     1.08882295    -0.58734331  -109.92062985    -0.01636022    -0.00084723  0.81D-04  0.15D-03   200.39
    3    11    11     1.08878928    -0.58733648  -109.92062301    -0.01637095    -0.00085458  0.82D-04  0.15D-03   200.39
    3    12    12     1.08878484    -0.58733342  -109.92061995    -0.01637182    -0.00085537  0.82D-04  0.15D-03   200.39
    4     1     1     1.08990474    -0.58622397  -109.93912286    -0.00116235    -0.00018315  0.81D-05  0.38D-04   301.31
    4     2     2     1.08985736    -0.58621416  -109.93911305    -0.00118024    -0.00018946  0.83D-05  0.39D-04   301.31
    4     3     3     1.08985989    -0.58621339  -109.93911228    -0.00118477    -0.00019204  0.79D-05  0.40D-04   301.31
    4     4     4     1.08986184    -0.58621277  -109.93911166    -0.00119061    -0.00019356  0.79D-05  0.41D-04   301.31
    4     5     5     1.08986422    -0.58621237  -109.93911125    -0.00121444    -0.00019399  0.79D-05  0.41D-04   301.31
    4     6     6     1.08982621    -0.58621015  -109.93910904    -0.00121320    -0.00019584  0.77D-05  0.42D-04   301.31
    4     7     7     1.08983646    -0.58620728  -109.93910616    -0.00121373    -0.00020129  0.76D-05  0.44D-04   301.31
    4     8     8     1.09089142    -0.58841008  -109.92169662    -0.00102051    -0.00021431  0.90D-05  0.43D-04   301.31
    4     9     9     1.09088540    -0.58840578  -109.92169232    -0.00102627    -0.00021641  0.92D-05  0.43D-04   301.31
    4    10    10     1.09087403    -0.58839830  -109.92168484    -0.00105499    -0.00022242  0.97D-05  0.45D-04   301.31
    4    11    11     1.09087234    -0.58839704  -109.92168358    -0.00106057    -0.00022328  0.97D-05  0.45D-04   301.31
    4    12    12     1.09087371    -0.58839634  -109.92168287    -0.00106292    -0.00022200  0.97D-05  0.44D-04   301.31
    5     1     1     1.09092658    -0.58642196  -109.93932085    -0.00019799    -0.00004569  0.94D-06  0.11D-04   401.33
    5     2     2     1.09091777    -0.58642140  -109.93932029    -0.00020724    -0.00004500  0.96D-06  0.11D-04   401.33
    5     3     3     1.09091421    -0.58642054  -109.93931943    -0.00020715    -0.00004565  0.10D-05  0.11D-04   401.33
    5     4     4     1.09090331    -0.58641899  -109.93931788    -0.00020622    -0.00004731  0.11D-05  0.11D-04   401.33
    5     5     5     1.09090413    -0.58641852  -109.93931741    -0.00020615    -0.00004812  0.11D-05  0.12D-04   401.33
    5     6     6     1.09090390    -0.58641769  -109.93931658    -0.00020754    -0.00004901  0.11D-05  0.12D-04   401.33
    5     7     7     1.09089320    -0.58641566  -109.93931455    -0.00020839    -0.00005039  0.13D-05  0.12D-04   401.33
    5     8     8     1.09230800    -0.58867358  -109.92196012    -0.00026350    -0.00006109  0.18D-05  0.14D-04   401.33
    5     9     9     1.09230620    -0.58867258  -109.92195912    -0.00026681    -0.00006244  0.18D-05  0.14D-04   401.33
    5    10    10     1.09230456    -0.58867007  -109.92195661    -0.00027177    -0.00006294  0.19D-05  0.14D-04   401.33
    5    11    11     1.09229480    -0.58866961  -109.92195615    -0.00027257    -0.00006359  0.18D-05  0.14D-04   401.33
    5    12    12     1.09229259    -0.58866883  -109.92195536    -0.00027249    -0.00006421  0.19D-05  0.14D-04   401.33
    6     1     1     1.09095335    -0.58646900  -109.93936789    -0.00004703    -0.00001195  0.66D-06  0.26D-05   499.81
    6     2     2     1.09094940    -0.58646893  -109.93936782    -0.00004754    -0.00001192  0.65D-06  0.26D-05   499.81
    6     3     3     1.09095614    -0.58646864  -109.93936753    -0.00004810    -0.00001224  0.64D-06  0.27D-05   499.81
    6     4     4     1.09095107    -0.58646739  -109.93936628    -0.00004840    -0.00001337  0.61D-06  0.32D-05   499.81
    6     5     5     1.09095224    -0.58646739  -109.93936627    -0.00004887    -0.00001328  0.62D-06  0.32D-05   499.81
    6     6     6     1.09094734    -0.58646714  -109.93936602    -0.00004945    -0.00001333  0.64D-06  0.31D-05   499.81
    6     7     7     1.09094237    -0.58646661  -109.93936549    -0.00005094    -0.00001366  0.62D-06  0.32D-05   499.81
    6     8     8     1.09233440    -0.58873470  -109.92202124    -0.00006112    -0.00001878  0.25D-05  0.36D-05   499.81
    6     9     9     1.09232447    -0.58873359  -109.92202013    -0.00006101    -0.00001926  0.25D-05  0.36D-05   499.81
    6    10    10     1.09233738    -0.58873331  -109.92201985    -0.00006324    -0.00002012  0.24D-05  0.42D-05   499.81
    6    11    11     1.09232225    -0.58873301  -109.92201954    -0.00006339    -0.00001977  0.25D-05  0.38D-05   499.81
    6    12    12     1.09232106    -0.58873269  -109.92201923    -0.00006386    -0.00001989  0.26D-05  0.38D-05   499.81
    7     1     1     1.09100766    -0.58648221  -109.93938110    -0.00001322    -0.00000384  0.45D-07  0.94D-06   598.87
    7     2     2     1.09100636    -0.58648220  -109.93938109    -0.00001326    -0.00000391  0.42D-07  0.97D-06   598.87
    7     3     3     1.09100569    -0.58648194  -109.93938083    -0.00001330    -0.00000409  0.37D-07  0.10D-05   598.87
    7     4     4     1.09099830    -0.58648118  -109.93938007    -0.00001379    -0.00000463  0.32D-07  0.12D-05   598.87
    7     5     5     1.09099690    -0.58648117  -109.93938006    -0.00001378    -0.00000469  0.29D-07  0.13D-05   598.87
    7     6     6     1.09099495    -0.58648110  -109.93937999    -0.00001396    -0.00000479  0.30D-07  0.13D-05   598.87
    7     7     7     1.09099173    -0.58648084  -109.93937972    -0.00001423    -0.00000498  0.28D-07  0.13D-05   598.87
    7     8     8     1.09234803    -0.58875422  -109.92204076    -0.00001952    -0.00000586  0.12D-06  0.13D-05   598.87
    7     9     9     1.09233979    -0.58875399  -109.92204053    -0.00002040    -0.00000590  0.14D-06  0.13D-05   598.87
    7    10    10     1.09233703    -0.58875359  -109.92204012    -0.00002027    -0.00000632  0.13D-06  0.15D-05   598.87
    7    11    11     1.09233593    -0.58875354  -109.92204007    -0.00002053    -0.00000630  0.14D-06  0.14D-05   598.87
    7    12    12     1.09234218    -0.58875343  -109.92203997    -0.00002074    -0.00000644  0.12D-06  0.15D-05   598.87
    8     1     1     1.09108127    -0.58648602  -109.93938492    -0.00000381    -0.00000127  0.39D-07  0.32D-06   696.81
    8     2     2     1.09107967    -0.58648601  -109.93938490    -0.00000381    -0.00000129  0.40D-07  0.32D-06   696.81
    8     3     3     1.09107794    -0.58648589  -109.93938478    -0.00000395    -0.00000136  0.42D-07  0.34D-06   696.81
    8     4     4     1.09107206    -0.58648560  -109.93938448    -0.00000441    -0.00000157  0.49D-07  0.40D-06   696.81
    8     5     5     1.09106888    -0.58648556  -109.93938445    -0.00000439    -0.00000157  0.47D-07  0.40D-06   696.81
    8     6     6     1.09106763    -0.58648551  -109.93938439    -0.00000440    -0.00000162  0.50D-07  0.41D-06   696.81
    8     7     7     1.09106613    -0.58648545  -109.93938433    -0.00000461    -0.00000165  0.54D-07  0.41D-06   696.81
    8     8     8     1.09243058    -0.58876023  -109.92204677    -0.00000601    -0.00000230  0.52D-07  0.57D-06   696.81
    8     9     9     1.09242797    -0.58876020  -109.92204673    -0.00000621    -0.00000235  0.49D-07  0.57D-06   696.81
    8    10    10     1.09242266    -0.58875991  -109.92204645    -0.00000633    -0.00000254  0.52D-07  0.63D-06   696.81
    8    11    11     1.09242225    -0.58875990  -109.92204644    -0.00000636    -0.00000256  0.54D-07  0.64D-06   696.81
    8    12    12     1.09242314    -0.58875978  -109.92204632    -0.00000635    -0.00000260  0.56D-07  0.65D-06   696.81
    9     1     1     1.09111837    -0.58648728  -109.93938617    -0.00000126    -0.00000043  0.52D-08  0.11D-06   795.70
    9     2     2     1.09111727    -0.58648728  -109.93938617    -0.00000127    -0.00000043  0.52D-08  0.11D-06   795.70
    9     3     3     1.09111646    -0.58648723  -109.93938612    -0.00000134    -0.00000046  0.49D-08  0.12D-06   795.70
    9     4     4     1.09111137    -0.58648708  -109.93938597    -0.00000148    -0.00000058  0.32D-08  0.16D-06   795.70
    9     5     5     1.09111031    -0.58648708  -109.93938597    -0.00000152    -0.00000058  0.36D-08  0.16D-06   795.70
    9     6     6     1.09110968    -0.58648706  -109.93938595    -0.00000156    -0.00000058  0.38D-08  0.16D-06   795.70
    9     7     7     1.09110821    -0.58648704  -109.93938592    -0.00000159    -0.00000060  0.34D-08  0.17D-06   795.70
    9     8     8     1.09247715    -0.58876240  -109.92204894    -0.00000217    -0.00000082  0.57D-07  0.18D-06   795.70
    9     9     9     1.09247526    -0.58876238  -109.92204892    -0.00000219    -0.00000082  0.60D-07  0.18D-06   795.70
    9    10    10     1.09247234    -0.58876227  -109.92204881    -0.00000236    -0.00000090  0.63D-07  0.19D-06   795.70
    9    11    11     1.09247212    -0.58876226  -109.92204880    -0.00000236    -0.00000090  0.63D-07  0.20D-06   795.70
    9    12    12     1.09247278    -0.58876219  -109.92204873    -0.00000241    -0.00000098  0.54D-07  0.23D-06   795.70
   10     1     1     1.09113398    -0.58648770  -109.93938659    -0.00000042    -0.00000017  0.90D-09  0.46D-07   896.15
   10     2     2     1.09113346    -0.58648770  -109.93938659    -0.00000042    -0.00000017  0.95D-09  0.46D-07   896.15
   10     3     3     1.09113265    -0.58648767  -109.93938656    -0.00000044    -0.00000019  0.99D-09  0.53D-07   896.15
   10     4     4     1.09112934    -0.58648761  -109.93938650    -0.00000053    -0.00000023  0.17D-08  0.65D-07   896.15
   10     5     5     1.09112816    -0.58648760  -109.93938648    -0.00000052    -0.00000024  0.15D-08  0.74D-07   896.15
   10     6     6     1.09112811    -0.58648760  -109.93938648    -0.00000053    -0.00000024  0.15D-08  0.73D-07   896.15
   10     7     7     1.09112718    -0.58648759  -109.93938647    -0.00000054    -0.00000025  0.18D-08  0.75D-07   896.15
   10     8     8     1.09249827    -0.58876319  -109.92204973    -0.00000080    -0.00000033  0.49D-08  0.84D-07   896.15
   10     9     9     1.09249949    -0.58876319  -109.92204973    -0.00000080    -0.00000033  0.58D-08  0.87D-07   896.15
   10    10    10     1.09249619    -0.58876314  -109.92204968    -0.00000087    -0.00000037  0.52D-08  0.99D-07   896.15
   10    11    11     1.09249599    -0.58876313  -109.92204967    -0.00000087    -0.00000037  0.54D-08  0.10D-06   896.15
   10    12    12     1.09249539    -0.58876308  -109.92204961    -0.00000088    -0.00000041  0.92D-08  0.11D-06   896.15
   11     1     1     1.09114398    -0.58648785  -109.93938675    -0.00000016    -0.00000006  0.85D-09  0.18D-07   994.17
   11     2     2     1.09114388    -0.58648786  -109.93938675    -0.00000016    -0.00000006  0.90D-09  0.18D-07   994.17
   11     3     3     1.09114304    -0.58648784  -109.93938673    -0.00000017    -0.00000007  0.87D-09  0.21D-07   994.17
   11     4     4     1.09114052    -0.58648781  -109.93938670    -0.00000021    -0.00000010  0.59D-09  0.29D-07   994.17
   11     5     5     1.09113972    -0.58648781  -109.93938670    -0.00000021    -0.00000010  0.72D-09  0.29D-07   994.17
   11     6     6     1.09113976    -0.58648781  -109.93938669    -0.00000021    -0.00000010  0.74D-09  0.31D-07   994.17
   11     7     7     1.09113945    -0.58648781  -109.93938669    -0.00000022    -0.00000010  0.72D-09  0.31D-07   994.17
   11     8     8     1.09251298    -0.58876349  -109.92205003    -0.00000030    -0.00000014  0.17D-08  0.35D-07   994.17
   11     9     9     1.09251368    -0.58876349  -109.92205003    -0.00000030    -0.00000014  0.18D-08  0.36D-07   994.17
   11    10    10     1.09251116    -0.58876347  -109.92205000    -0.00000033    -0.00000016  0.19D-08  0.43D-07   994.17
   11    11    11     1.09251093    -0.58876346  -109.92205000    -0.00000033    -0.00000016  0.20D-08  0.44D-07   994.17
   11    12    12     1.09251046    -0.58876343  -109.92204997    -0.00000036    -0.00000018  0.21D-08  0.49D-07   994.17
   12     1     1     1.09115037    -0.58648791  -109.93938680    -0.00000006    -0.00000002  0.96D-10  0.70D-08  1095.96
   12     2     2     1.09115052    -0.58648791  -109.93938680    -0.00000006    -0.00000002  0.10D-09  0.68D-08  1095.96
   12     3     3     1.09114978    -0.58648791  -109.93938680    -0.00000006    -0.00000003  0.11D-09  0.79D-08  1095.96
   12     4     4     1.09114775    -0.58648789  -109.93938678    -0.00000008    -0.00000004  0.23D-09  0.11D-07  1095.96
   12     5     5     1.09114735    -0.58648789  -109.93938678    -0.00000008    -0.00000004  0.20D-09  0.12D-07  1095.96
   12     6     6     1.09114712    -0.58648789  -109.93938678    -0.00000009    -0.00000004  0.23D-09  0.12D-07  1095.96
   12     7     7     1.09114723    -0.58648789  -109.93938678    -0.00000009    -0.00000004  0.21D-09  0.12D-07  1095.96
   12     8     8     1.09252336    -0.58876362  -109.92205016    -0.00000012    -0.00000006  0.19D-08  0.14D-07  1095.96
   12     9     9     1.09252366    -0.58876362  -109.92205015    -0.00000012    -0.00000006  0.16D-08  0.15D-07  1095.96
   12    10    10     1.09252173    -0.58876361  -109.92205014    -0.00000014    -0.00000007  0.18D-08  0.17D-07  1095.96
   12    11    11     1.09252145    -0.58876360  -109.92205014    -0.00000014    -0.00000007  0.17D-08  0.18D-07  1095.96
   12    12    12     1.09252098    -0.58876359  -109.92205012    -0.00000015    -0.00000008  0.13D-08  0.22D-07  1095.96
   13     1     1     1.09115233    -0.58648792  -109.93938682    -0.00000001    -0.00000002  0.53D-10  0.57D-08  1173.25
   13     2     2     1.09115264    -0.58648792  -109.93938681    -0.00000001    -0.00000002  0.49D-10  0.49D-08  1173.25
   13     3     3     1.09115212    -0.58648792  -109.93938681    -0.00000002    -0.00000002  0.56D-10  0.58D-08  1173.25
   13     4     4     1.09115225    -0.58648793  -109.93938681    -0.00000003    -0.00000002  0.59D-10  0.55D-08  1173.25
   13     5     5     1.09115040    -0.58648792  -109.93938680    -0.00000002    -0.00000002  0.94D-10  0.69D-08  1173.25
   13     6     6     1.09115052    -0.58648792  -109.93938680    -0.00000003    -0.00000002  0.10D-09  0.68D-08  1173.25
   13     7     7     1.09114978    -0.58648791  -109.93938680    -0.00000002    -0.00000003  0.11D-09  0.79D-08  1173.25
   13     8     8     1.09253853    -0.58876369  -109.92205023    -0.00000007    -0.00000002  0.14D-08  0.40D-08  1173.25
   13     9     9     1.09253815    -0.58876369  -109.92205023    -0.00000008    -0.00000002  0.15D-08  0.45D-08  1173.25
   13    10    10     1.09253869    -0.58876369  -109.92205023    -0.00000009    -0.00000002  0.13D-08  0.47D-08  1173.25
   13    11    11     1.09252985    -0.58876367  -109.92205021    -0.00000007    -0.00000002  0.52D-09  0.61D-08  1173.25
   13    12    12     1.09252995    -0.58876367  -109.92205021    -0.00000008    -0.00000002  0.71D-09  0.64D-08  1173.25


 =====================================
 Analysis of CPU times by interactions
 =====================================

       I      S      P

 I   0.0%
 S   0.0%   0.1%
 P   0.2%   3.5%  85.5%

 Initialization:   0.0%
 Other:           10.7%

 Total CPU:     1173.2 seconds
 =====================================



 Wavefunction saved on  5101.2

 Reference coefficients greater than 0.0500000
 =============================================
 2/22/2\222          -0.0000000   0.9547749  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.0000002   0.0000000  -0.0000001
 222//2\222          -0.0000000  -0.0000000  -0.1286218  -0.0000000  -0.0000000   0.9460725   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000001  -0.0000000
 2/222/\222           0.0195405   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000   0.8537548   0.0000000   0.0000005
                     -0.0000000  -0.0000000   0.0000000
 222/2/\222           0.0000000  -0.0000000   0.0000000   0.8524660   0.0507928  -0.0000000   0.0000000   0.0000005   0.0000000
                      0.0000000  -0.0000000   0.0000000
 22/22/\222           0.0000000   0.0000000   0.8461939  -0.0000000   0.0000000   0.1150428  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0000003  -0.0000000
 22//22\222           0.8217592  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000  -0.2323568  -0.0000000   0.0000005
                     -0.0000000  -0.0000000  -0.0000000
 2//222\222           0.0000000  -0.0000000   0.0000000  -0.2622953   0.8126976   0.0000000   0.0000000   0.0000002   0.0000000
                     -0.0000000  -0.0000000   0.0000000
 222/\2/222           0.0000000   0.0000000   0.0000011   0.0000000  -0.0000000   0.0000003  -0.0000000   0.0000000   0.0000000
                     -0.0000000   0.6889548  -0.0000000
 22/22\/222          -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000023   0.0000000  -0.0000000  -0.0000000
                      0.0000000  -0.5966542   0.0000000
 2/222\/222          -0.0000010   0.0000000   0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000009  -0.0000000   0.5966218
                      0.0000000  -0.0000000   0.0000000
 22/\22/222           0.0000019   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000029  -0.0000000  -0.5966212
                     -0.0000000   0.0000000  -0.0000000
 222/2\/222          -0.0000000   0.0000000  -0.0000000   0.0000006  -0.0000006   0.0000000  -0.0000000   0.5966209  -0.0000000
                     -0.0000000  -0.0000000   0.0000000
 2/\222/222           0.0000000   0.0000000  -0.0000000  -0.0000031  -0.0000023   0.0000000   0.0000000   0.5966202   0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2/22\2/222           0.0000000  -0.0000003  -0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.4193860  -0.0000000   0.5465858
 22/2/2\222           0.0000000  -0.0000000   0.0000000  -0.3407320  -0.4985374  -0.0000000   0.0000000   0.0000007  -0.0000000
                      0.0000000   0.0000000   0.0000000
 2222//\222          -0.4857214   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000  -0.3587625   0.0000000   0.0000007
                      0.0000000  -0.0000000   0.0000000
 220222/222          -0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0635828   0.0000000   0.4830041
 222220/222           0.0000000   0.0000001  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.4500586   0.0000000  -0.1864329
 2/2/22\222          -0.0000000   0.0000000  -0.4230931  -0.0000000   0.0000000  -0.0575217   0.0000000  -0.0000000   0.0000000
                     -0.0000000  -0.0000007  -0.0000000
 222022/222          -0.0000000  -0.0000009   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.3864760  -0.0000000  -0.2965699
 222202/222           0.0000000   0.0000017  -0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000
                      0.3864760   0.0000000   0.2965669
 202222/222          -0.0000000  -0.0000004   0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000
                     -0.3864755  -0.0000000  -0.2965687
 2222/\/222          -0.0000004  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000051   0.0000000  -0.3444595
                     -0.0000000   0.0000000  -0.0000000
 22/2\2/222           0.0000000   0.0000000  -0.0000000   0.0000007  -0.0000010   0.0000000  -0.0000000   0.3444592   0.0000000
                      0.0000000  -0.0000000  -0.0000000
 22/2220222          -0.0000000   0.0000000  -0.0000000  -0.0000044  -0.0000088   0.0000000  -0.0000000  -0.2631066  -0.0000000
                      0.0000000  -0.0000000   0.0000000
 22222/0222           0.0000059  -0.0000000  -0.0000000   0.0000000   0.0000000  -0.0000000   0.0000160   0.0000000   0.2631024
                      0.0000000   0.0000000   0.0000000
 222/220222          -0.0000000  -0.0000000  -0.0000029  -0.0000000   0.0000000  -0.0000063   0.0000000   0.0000000  -0.0000000
                      0.0000000   0.2629490   0.0000000
 2222/20222           0.0000000  -0.0000054   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000
                      0.2087250  -0.0000000   0.1600557
 2/22220222          -0.0000000   0.0000007   0.0000000   0.0000000  -0.0000000   0.0000000  -0.0000000  -0.0000000  -0.0000000
                     -0.1601635   0.0000000   0.2086010
 222/022222           0.0000000   0.0000000  -0.0000001  -0.0000000   0.0000000   0.0000001  -0.0000000   0.0000000  -0.0000000
                      0.0000000  -0.0656025  -0.0000000
 2/02222222           0.0000000   0.0201116  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0018904  -0.0000000  -0.0575529
 2/22202222          -0.0000000   0.0201116   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000  -0.0000000
                      0.0560831  -0.0000000  -0.0130682
 2220/22222          -0.0000000  -0.0000002   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0520483  -0.0000000  -0.0399359
 2022/22222           0.0000000   0.0000000   0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                     -0.0520482  -0.0000000  -0.0399358
 2/22022222          -0.0000000  -0.0000001   0.0000000  -0.0000000  -0.0000000   0.0000000   0.0000000   0.0000000   0.0000000
                      0.0399378  -0.0000000  -0.0520458
 2/22\/2222           0.0116575   0.0000000  -0.0000000  -0.0000000  -0.0000000   0.0000000  -0.0288940   0.0000000  -0.0516712
                     -0.0000000  -0.0000000  -0.0000000
 222/\/2222          -0.0000000   0.0000000  -0.0000000  -0.0293020   0.0105918   0.0000000  -0.0000000  -0.0516711   0.0000000
                      0.0000000  -0.0000000  -0.0000000
 2/2/2\2222          -0.0000000   0.0000000   0.0000000  -0.0263716  -0.0385844  -0.0000000  -0.0000000   0.0516708  -0.0000000
                     -0.0000000   0.0000000   0.0000000

 Coefficients of fixed reference functions:
 ==========================================

 State      Coefficients
 1           0.957225    0.000000    0.000000   -0.000000   -0.000000    0.000000    0.013353    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 2          -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957318   -0.000000    0.000000    0.000000    0.000000
             0.000000   -0.000000
 3          -0.000000    0.941891   -0.000000    0.171170    0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000
            -0.000000    0.000000
 4          -0.000000    0.000000    0.179483   -0.000000    0.940342   -0.000000   -0.000000   -0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 5           0.000000    0.000000    0.940343   -0.000000   -0.179483   -0.000000    0.000000    0.000000    0.000000   -0.000000
            -0.000000   -0.000000
 6           0.000000   -0.171170    0.000000    0.941892   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.000000
             0.000000   -0.000000
 7          -0.013353   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.957226   -0.000000   -0.000000   -0.000001
            -0.000000   -0.000000
 8          -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.954038    0.000000
 9           0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954038
             0.000000    0.000000
 10         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.170904   -0.000000    0.000000
             0.000000   -0.938606
 11         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.954054   -0.000000
            -0.000000   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.938622   -0.000000    0.000000
             0.000000   -0.170908

 Coefficients of rotated reference functions:
 ============================================

 State      Coefficients
 1           0.957318    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000
             0.000000   -0.000000
 2           0.000000    0.957318   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000
             0.000000    0.000000
 3          -0.000000   -0.000000    0.957318    0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 4          -0.000000   -0.000000    0.000000    0.957318    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000
             0.000000   -0.000000
 5           0.000000   -0.000000   -0.000000    0.000000    0.957319    0.000000   -0.000000   -0.000000   -0.000000    0.000000
            -0.000000   -0.000000
 6          -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.957319    0.000000    0.000000    0.000000   -0.000000
             0.000000   -0.000000
 7           0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000    0.957319   -0.000000   -0.000001    0.000000
            -0.000000    0.000000
 8           0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000000    0.954038   -0.000000   -0.000000
            -0.000000    0.000000
 9          -0.000000    0.000000    0.000000   -0.000000   -0.000000    0.000000   -0.000001   -0.000000    0.954038   -0.000000
            -0.000000    0.000000
 10          0.000000    0.000000   -0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000    0.954039
             0.000000    0.000000
 11          0.000000    0.000000    0.000000    0.000000   -0.000000    0.000000   -0.000000   -0.000000   -0.000000    0.000000
             0.954054   -0.000000
 12         -0.000000    0.000000   -0.000000   -0.000000   -0.000000   -0.000000    0.000000    0.000000    0.000000    0.000000
            -0.000000    0.954055

 Energy contributions of internal configurations for state 8
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    36       0.00486953    -1.62051028       2212220222                      

 Energy contributions of internal configurations for state 9
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    57       0.00486894    -1.62041217       2222210222                      

 Energy contributions of internal configurations for state 10
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    52       0.00306361    -1.01974652       2222120222                      

 Energy contributions of internal configurations for state 11
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    45       0.00484711    -1.61674905       2221220222                      

 Energy contributions of internal configurations for state 12
 ===========================================================

   NUMBER        NORM          ECORR1        OCCUPATION

    25       0.00304960    -1.01739481       2122220222                      


 RESULTS FOR STATE 1.1
 =====================

 Coefficient of reference function:   C(0) = 0.95722501 (fixed)   0.95732039 (relaxed)   0.95731814 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852594
 Singles      0.01502583   -0.07525511   -0.07704412
 Pairs        0.07612693    0.00000000   -0.04091787
 Total        1.09115746   -0.07525511   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46010963
 One electron energy                 -193.07058739
 Two electron energy                   83.13120057
 Virial quotient                       -2.65169069
 Correlation energy                    -0.58648792
 !MRCI STATE 1.1 Energy              -109.939386815635

 Properties without orbital relaxation:

 !MRCI STATE 1.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284956 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284656 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284956 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954721 (Pople, fixed reference)
 Cluster corrected energies          -109.98954419 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954721 (Pople, rotated reference)



 RESULTS FOR STATE 2.1
 =====================

 Maximum overlap with reference state  6

 Coefficient of reference function:   C(0) = 0.95731800 (fixed)   0.95732025 (relaxed)   0.95731800 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852611
 Singles      0.01502582   -0.07525515   -0.07704406
 Pairs        0.07612724    0.00000037   -0.04091775
 Total        1.09115777   -0.07525477   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289888
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46011001
 One electron energy                 -193.07058724
 Two electron energy                   83.13120042
 Virial quotient                       -2.65169067
 Correlation energy                    -0.58648793
 !MRCI STATE 2.1 Energy              -109.939386814924

 Properties without orbital relaxation:

 !MRCI STATE 2.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284974 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284674 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284974 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954739 (Pople, fixed reference)
 Cluster corrected energies          -109.98954437 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954739 (Pople, rotated reference)



 RESULTS FOR STATE 3.1
 =====================

 Maximum overlap with reference state  2

 Coefficient of reference function:   C(0) = 0.94189124 (fixed)   0.95732048 (relaxed)   0.95731823 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852603
 Singles      0.01502585   -0.07525511   -0.07704415
 Pairs        0.07612670   -0.00000000   -0.04091775
 Total        1.09115725   -0.07525511   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46011119
 One electron energy                 -193.07058930
 Two electron energy                   83.13120248
 Virial quotient                       -2.65169059
 Correlation energy                    -0.58648792
 !MRCI STATE 3.1 Energy              -109.939386814405

 Properties without orbital relaxation:

 !MRCI STATE 3.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284944 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284643 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284944 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954708 (Pople, fixed reference)
 Cluster corrected energies          -109.98954406 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954708 (Pople, rotated reference)



 RESULTS FOR STATE 4.1
 =====================

 Maximum overlap with reference state  5

 Coefficient of reference function:   C(0) = 0.94034241 (fixed)   0.95732042 (relaxed)   0.95731817 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852599
 Singles      0.01502583   -0.07525510   -0.07704413
 Pairs        0.07612684   -0.00000000   -0.04091781
 Total        1.09115737   -0.07525510   -0.58648793
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46010920
 One electron energy                 -193.07058761
 Two electron energy                   83.13120079
 Virial quotient                       -2.65169072
 Correlation energy                    -0.58648793
 !MRCI STATE 4.1 Energy              -109.939386813058

 Properties without orbital relaxation:

 !MRCI STATE 4.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284951 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284651 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284951 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954716 (Pople, fixed reference)
 Cluster corrected energies          -109.98954413 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954716 (Pople, rotated reference)



 RESULTS FOR STATE 5.1
 =====================

 Maximum overlap with reference state  3

 Coefficient of reference function:   C(0) = 0.94034322 (fixed)   0.95732123 (relaxed)   0.95731899 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852507
 Singles      0.01502676   -0.07525695   -0.07704493
 Pairs        0.07612407   -0.00000000   -0.04091792
 Total        1.09115552   -0.07525695   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46013452
 One electron energy                 -193.07060051
 Two electron energy                   83.13121371
 Virial quotient                       -2.65168910
 Correlation energy                    -0.58648791
 !MRCI STATE 5.1 Energy              -109.939386803411

 Properties without orbital relaxation:

 !MRCI STATE 5.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284842 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284541 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284842 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954605 (Pople, fixed reference)
 Cluster corrected energies          -109.98954303 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954605 (Pople, rotated reference)



 RESULTS FOR STATE 6.1
 =====================

 Maximum overlap with reference state  4

 Coefficient of reference function:   C(0) = 0.94189193 (fixed)   0.95732118 (relaxed)   0.95731894 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852497
 Singles      0.01502676   -0.07525701   -0.07704491
 Pairs        0.07612419    0.00000000   -0.04091803
 Total        1.09115564   -0.07525701   -0.58648792
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289889
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46012978
 One electron energy                 -193.07059589
 Two electron energy                   83.13120909
 Virial quotient                       -2.65168940
 Correlation energy                    -0.58648792
 !MRCI STATE 6.1 Energy              -109.939386802788

 Properties without orbital relaxation:

 !MRCI STATE 6.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284848 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284548 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284848 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954612 (Pople, fixed reference)
 Cluster corrected energies          -109.98954310 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954612 (Pople, rotated reference)



 RESULTS FOR STATE 7.1
 =====================

 Coefficient of reference function:   C(0) = 0.95722613 (fixed)   0.95732151 (relaxed)   0.95731926 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00000470   -0.00000000   -0.46852511
 Singles      0.01502690   -0.07525719   -0.07704508
 Pairs        0.07612331    0.00000000   -0.04091772
 Total        1.09115491   -0.07525719   -0.58648791
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.35289888
 Nuclear energy                         0.00000000
 Kinetic energy                        41.46014461
 One electron energy                 -193.07060832
 Two electron energy                   83.13122152
 Virial quotient                       -2.65168845
 Correlation energy                    -0.58648791
 !MRCI STATE 7.1 Energy              -109.939386795310

 Properties without orbital relaxation:

 !MRCI STATE 7.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.99284805 (Davidson, fixed reference)
 Cluster corrected energies          -109.99284504 (Davidson, relaxed reference)
 Cluster corrected energies          -109.99284805 (Davidson, rotated reference)

 Cluster corrected energies          -109.98954568 (Pople, fixed reference)
 Cluster corrected energies          -109.98954266 (Pople, relaxed reference)
 Cluster corrected energies          -109.98954568 (Pople, rotated reference)



 RESULTS FOR STATE 8.1
 =====================

 Maximum overlap with reference state 11

 Coefficient of reference function:   C(0) = 0.95403761 (fixed)   0.95671288 (relaxed)   0.95403761 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561617    0.00000000   -0.47272687
 Singles      0.01637543   -0.07269737   -0.07494300
 Pairs        0.07668281   -0.00000000   -0.04109382
 Total        1.09867441   -0.07269737   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48334900
 One electron energy                 -193.23636655
 Two electron energy                   83.31431632
 Virial quotient                       -2.64978727
 Correlation energy                    -0.58876370
 !MRCI STATE 8.1 Energy              -109.922050232087

 Properties without orbital relaxation:

 !MRCI STATE 8.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014614 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653356 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014614 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687881 (Pople, fixed reference)
 Cluster corrected energies          -109.97322330 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687881 (Pople, rotated reference)



 RESULTS FOR STATE 9.1
 =====================

 Maximum overlap with reference state 10

 Coefficient of reference function:   C(0) = 0.95403810 (fixed)   0.95671304 (relaxed)   0.95403810 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561549    0.00000000   -0.47272697
 Singles      0.01637533   -0.07269740   -0.07494304
 Pairs        0.07668246   -0.00000000   -0.04109368
 Total        1.09867329   -0.07269740   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48334922
 One electron energy                 -193.23636156
 Two electron energy                   83.31431133
 Virial quotient                       -2.64978726
 Correlation energy                    -0.58876369
 !MRCI STATE 9.1 Energy              -109.922050230334

 Properties without orbital relaxation:

 !MRCI STATE 9.1 Dipole moment          0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014548 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653333 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014548 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687814 (Pople, fixed reference)
 Cluster corrected energies          -109.97322308 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687814 (Pople, rotated reference)



 RESULTS FOR STATE 10.1
 ======================

 Maximum overlap with reference state 12

 Coefficient of reference function:   C(0) = 0.93860600 (fixed)   0.95671281 (relaxed)   0.95403850 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00561414   -0.00000000   -0.93484632
 Singles      0.01637547   -0.07269756   -0.07494309
 Pairs        0.07668275    0.50771827    0.42102572
 Total        1.09867235    0.43502071   -0.58876369
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48333633
 One electron energy                 -193.23633294
 Two electron energy                   83.31428271
 Virial quotient                       -2.64978808
 Correlation energy                    -0.58876369
 !MRCI STATE 10.1 Energy             -109.922050229266

 Properties without orbital relaxation:

 !MRCI STATE 10.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98014493 (Davidson, fixed reference)
 Cluster corrected energies          -109.97653365 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98014493 (Davidson, rotated reference)

 Cluster corrected energies          -109.97687758 (Pople, fixed reference)
 Cluster corrected energies          -109.97322340 (Pople, relaxed reference)
 Cluster corrected energies          -109.97687758 (Pople, rotated reference)



 RESULTS FOR STATE 11.1
 ======================

 Maximum overlap with reference state  9

 Coefficient of reference function:   C(0) = 0.95405371 (fixed)   0.95671668 (relaxed)   0.95405371 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00559022    0.00000000   -0.47273047
 Singles      0.01637265   -0.07269565   -0.07494299
 Pairs        0.07667446    0.00000000   -0.04109021
 Total        1.09863733   -0.07269565   -0.58876367
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48327251
 One electron energy                 -193.23612967
 Two electron energy                   83.31407946
 Virial quotient                       -2.64979216
 Correlation energy                    -0.58876367
 !MRCI STATE 11.1 Energy             -109.922050207020

 Properties without orbital relaxation:

 !MRCI STATE 11.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98012428 (Davidson, fixed reference)
 Cluster corrected energies          -109.97652842 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98012428 (Davidson, rotated reference)

 Cluster corrected energies          -109.97685659 (Pople, fixed reference)
 Cluster corrected energies          -109.97321813 (Pople, relaxed reference)
 Cluster corrected energies          -109.97685659 (Pople, rotated reference)



 RESULTS FOR STATE 12.1
 ======================

 Maximum overlap with reference state  8

 Coefficient of reference function:   C(0) = 0.93862221 (fixed)   0.95671663 (relaxed)   0.95405513 (rotated)

 Energy contributions of configuration classes

 CLASS          SQ.NORM        ECORR1        ECORR2
 +++++++++++++++++++++++++++++++++++++++++++++++++++
 Internals    0.00558712   -0.00000000   -0.55687828
 Singles      0.01637213   -0.07269547   -0.07494294
 Pairs        0.07667480    0.09244775    0.04305755
 Total        1.09863405    0.01975227   -0.58876367
 +++++++++++++++++++++++++++++++++++++++++++++++++++


 Reference energy                    -109.33328654
 Nuclear energy                         0.00000000
 Kinetic energy                        41.48326466
 One electron energy                 -193.23609860
 Two electron energy                   83.31404839
 Virial quotient                       -2.64979266
 Correlation energy                    -0.58876367
 !MRCI STATE 12.1 Energy             -109.922050205224

 Properties without orbital relaxation:

 !MRCI STATE 12.1 Dipole moment         0.00000000     0.00000000     0.00000000
 Dipole moment /Debye                   0.00000000     0.00000000     0.00000000

 Cluster corrected energies          -109.98012235 (Davidson, fixed reference)
 Cluster corrected energies          -109.97652848 (Davidson, relaxed reference)
 Cluster corrected energies          -109.98012235 (Davidson, rotated reference)

 Cluster corrected energies          -109.97685462 (Pople, fixed reference)
 Cluster corrected energies          -109.97321819 (Pople, relaxed reference)
 Cluster corrected energies          -109.97685462 (Pople, rotated reference)



 **********************************************************************************************************************************
 DATASETS  * FILE   NREC   LENGTH (MB)   RECORD NAMES
              1      21       32.08       500      610      700      900      950      970     1000      129      960     1100   
                                          VAR    BASINP    GEOM    SYMINP    ZMAT    AOBASIS   BASIS     P2S    ABASIS      S 
                                         1400     1410     1420     1200     1210     1080     1700     1600     1650     1380   
                                           T        V       ECP      H0       H01     AOSYM    OPER      SMH    MOLCAS    JKOP   
                                         1700(1)
                                         OPER   

              2       6      285.28       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI     MULTI       INT
 CPU TIMES  *      1271.42   1195.96     73.04      1.73      0.48
 REAL TIME  *      1343.47 SEC
 DISK USED  *       317.45 MB (local),        3.77 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************
 SETTING HLSDIAG(8)     =      -109.99284956  AU                              
 SETTING HLSDIAG(9)     =      -109.99284974  AU                              
 SETTING HLSDIAG(10)    =      -109.99284944  AU                              
 SETTING HLSDIAG(11)    =      -109.99284951  AU                              
 SETTING HLSDIAG(12)    =      -109.99284842  AU                              
 SETTING HLSDIAG(13)    =      -109.99284848  AU                              
 SETTING HLSDIAG(14)    =      -109.99284805  AU                              
 SETTING HLSDIAG(15)    =      -109.98014614  AU                              
 SETTING HLSDIAG(16)    =      -109.98014548  AU                              
 SETTING HLSDIAG(17)    =      -109.98014493  AU                              
 SETTING HLSDIAG(18)    =      -109.98012428  AU                              
 SETTING HLSDIAG(19)    =      -109.98012235  AU                              


         HLSDIAG
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -110.0158252
    -109.9928496
    -109.9928497
    -109.9928494
    -109.9928495
    -109.9928484
    -109.9928485
    -109.9928480
    -109.9801461
    -109.9801455
    -109.9801449
    -109.9801243
    -109.9801224
                                                  
 SETTING HLSDIAG(1)     =      -110.01650700                                  
 SETTING HLSDIAG(2)     =      -110.01650700                                  
 SETTING HLSDIAG(3)     =      -110.01650700                                  
 SETTING HLSDIAG(4)     =      -110.01650700                                  
 SETTING HLSDIAG(5)     =      -110.01650700                                  
 SETTING HLSDIAG(6)     =      -110.01650700                                  
 SETTING HLSDIAG(7)     =      -110.01650700                                  
 SETTING HLSDIAG(8)     =      -109.99182200                                  
 SETTING HLSDIAG(9)     =      -109.99182200                                  
 SETTING HLSDIAG(10)    =      -109.99182200                                  
 SETTING HLSDIAG(11)    =      -109.99182200                                  
 SETTING HLSDIAG(12)    =      -109.99182200                                  
 SETTING HLSDIAG(13)    =      -109.99182200                                  
 SETTING HLSDIAG(14)    =      -109.99182200                                  
 SETTING HLSDIAG(15)    =      -109.99513600                                  
 SETTING HLSDIAG(16)    =      -109.99513600                                  
 SETTING HLSDIAG(17)    =      -109.99513600                                  
 SETTING HLSDIAG(18)    =      -109.99513600                                  
 SETTING HLSDIAG(19)    =      -109.99513600                                  


        HLSDIAG
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
    -110.016507
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

 Wavefunction restored from record  5103.2  Symmetry=1  S= 1.5  NSTATE=   7

 Original energies:   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683   -109.963683
 Replaced energies:   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507   -110.016507

 Wavefunction restored from record  5101.2  Symmetry=1  S= 0.5  NSTATE=  12

 Original energies:   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.939387   -109.922050
                      -109.922050   -109.922050   -109.922050   -109.922050
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

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -777.82      -0.00
                            0.00       0.00     746.77      -0.00       0.00    -602.64       0.00      -0.00      -0.00       0.00

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     777.82       0.00       0.00
                           -0.00       0.00      -0.00       0.00     371.46      -0.00       0.00       0.00      -0.00    -517.52

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00
                         -746.77       0.00      -0.00      -0.00      -0.00       0.00     274.42      -0.00     517.52      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -334.58      -0.00      -0.00
                            0.00      -0.00       0.00      -0.00    -959.78      -0.00      -0.00      -0.00      -0.00    -495.47

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     578.67
                           -0.00    -371.46       0.00     959.78      -0.00      -0.00       0.00    -187.79       0.00      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                          602.64       0.00      -0.00       0.00       0.00      -0.00   -1285.21       0.00      92.88      -0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -362.92       0.00
                           -0.00      -0.00    -274.42       0.00      -0.00    1285.21       0.00      -0.00       0.00      -0.00

    8   1.1  1.5  0.5      -0.00     777.82       0.00    -334.58       0.00      -0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00       0.00     187.79      -0.00       0.00       0.00       0.00     248.92

    9   2.1  1.5  0.5    -777.82       0.00      -0.00      -0.00       0.00       0.00    -362.92       0.00       0.00       0.00
                            0.00       0.00    -517.52       0.00      -0.00     -92.88      -0.00      -0.00       0.00      -0.00

   10   3.1  1.5  0.5      -0.00       0.00       0.00      -0.00     578.67       0.00       0.00       0.00       0.00       0.00
                           -0.00     517.52       0.00     495.47       0.00       0.00       0.00    -248.92       0.00      -0.00

   11   4.1  1.5  0.5     334.58       0.00       0.00       0.00       0.00      -0.00    -184.31       0.00       0.00       0.00
                           -0.00      -0.00    -495.47      -0.00       0.00    -600.58       0.00       0.00      -0.00       0.00

   12   5.1  1.5  0.5      -0.00      -0.00    -578.67      -0.00      -0.00     134.90       0.00       0.00       0.00       0.00
                         -187.79       0.00      -0.00      -0.00       0.00      -0.00    -563.73      -0.00    -123.82       0.00

   13   6.1  1.5  0.5       0.00      -0.00      -0.00       0.00    -134.90       0.00      -0.00       0.00       0.00       0.00
                            0.00      92.88      -0.00     600.58       0.00      -0.00      -0.00     200.88       0.00      -0.00

   14   7.1  1.5  0.5       0.00     362.92      -0.00     184.31      -0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00     563.73       0.00      -0.00      -0.00      -0.00     -91.47

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     898.15       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -898.15       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -597.58

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     597.58       0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     386.34       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -572.12

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00    -668.19
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -216.84       0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     107.25      -0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     419.07      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

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

   29   1.1  0.5  0.5       0.00    -522.39       0.00     235.46       0.00       0.00      -0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00    -111.08      -0.00      -0.00      -0.00       0.00     347.47

   30   2.1  0.5  0.5       0.00      -0.00     397.59      -0.00       0.00     -92.68      -0.00       0.00       0.00       0.00
                          129.02      -0.00       0.00       0.00       0.00      -0.00     387.32      -0.00    -170.15       0.00

   31   3.1  0.5  0.5     466.50      -0.00      -0.00      -0.00      -0.00      -0.00     271.93       0.00       0.00       0.00
                            0.00       0.00     424.85      -0.00       0.00     157.81       0.00       0.00      -0.00       0.00

   32   4.1  0.5  0.5       0.00       0.00      -0.00       0.00      24.28      -0.00      -0.00       0.00       0.00       0.00
                           -0.00    -122.88      -0.00    -464.15      -0.00       0.00       0.00     214.38      -0.00      -0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00    -407.52       0.00       0.00       0.00       0.00       0.00
                           -0.00    -339.71      -0.00    -265.93      -0.00      -0.00      -0.00    -383.72       0.00      -0.00

   34   6.1  0.5  0.5    -347.60      -0.00       0.00      -0.00       0.00      -0.00      65.32       0.00       0.00       0.00
                           -0.00      -0.00     248.64       0.00       0.00     386.57      -0.00      -0.00       0.00       0.00

   35   7.1  0.5  0.5      -0.00    -273.66       0.00    -115.93      -0.00      -0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00      -0.00    -392.85       0.00       0.00       0.00       0.00    -109.84

   36   8.1  0.5  0.5       0.00       0.00      -0.00       0.00     526.21       0.00      -0.00       0.00       0.00       0.00
                            0.00    -570.06       0.00     343.62      -0.00      -0.00      -0.00    -638.57      -0.00      -0.00

   37   9.1  0.5  0.5      -0.00    -190.20      -0.00    -637.86       0.00       0.00      -0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00     526.21      -0.00       0.00      -0.00      -0.00     698.60

   38  10.1  0.5  0.5       0.00      -0.00     487.17      -0.00       0.00    -208.18       0.00       0.00       0.00       0.00
                         -682.46      -0.00      -0.00      -0.00       0.00       0.00      15.09      -0.00     736.66       0.00

   39  11.1  0.5  0.5     220.41       0.00       0.00       0.00      -0.00       0.00    -628.09       0.00       0.00       0.00
                           -0.00       0.00     419.96      -0.00      -0.00    -516.45      -0.00       0.00       0.00      -0.00

   40  12.1  0.5  0.5      -0.00      -0.00     225.81      -0.00      -0.00     666.12       0.00       0.00       0.00       0.00
                          102.68      -0.00      -0.00       0.00       0.00       0.00    -546.65       0.00     288.84       0.00

   41   1.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -301.60       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   42   2.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     229.55
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      74.49      -0.00       0.00

   43   3.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     269.33      -0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00     245.29

   44   4.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     -70.95      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -196.13      -0.00

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -200.69      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     143.55

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -158.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -329.12       0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -109.81      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     281.27
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -394.02      -0.00      -0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00     127.26       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00     242.46

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     130.37
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      59.28      -0.00      -0.00


   Nr   State  S   Sz       11         12         13         14         15         16         17         18         19         20

    1   1.1  1.5  1.5     334.58      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     187.79      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    2   2.1  1.5  1.5       0.00      -0.00      -0.00     362.92       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00     -92.88      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00    -578.67      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          495.47       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    4   4.1  1.5  1.5       0.00      -0.00       0.00     184.31       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00    -600.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    5   5.1  1.5  1.5       0.00      -0.00    -134.90      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00    -563.73       0.00       0.00       0.00       0.00       0.00       0.00

    6   6.1  1.5  1.5      -0.00     134.90       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          600.58       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5    -184.31       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     563.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -898.15      -0.00     386.34      -0.00       0.00
                           -0.00       0.00    -200.88       0.00      -0.00      -0.00       0.00       0.00     216.84      -0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00     898.15       0.00       0.00       0.00      -0.00      -0.00
                            0.00     123.82      -0.00       0.00       0.00      -0.00    -597.58       0.00      -0.00    -107.25

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00       0.00       0.00    -668.19      -0.00
                           -0.00      -0.00       0.00      91.47      -0.00     597.58      -0.00     572.12       0.00       0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00    -386.34      -0.00      -0.00       0.00      -0.00       0.00
                           -0.00    -319.93      -0.00      -0.00      -0.00      -0.00    -572.12       0.00       0.00    -693.49

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00     668.19       0.00      -0.00    -155.76
                          319.93      -0.00      -0.00       0.00    -216.84       0.00      -0.00      -0.00      -0.00      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     155.76       0.00
                            0.00       0.00      -0.00    -428.40       0.00     107.25      -0.00     693.49       0.00       0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00      -0.00    -419.07       0.00    -212.83       0.00      -0.00
                            0.00      -0.00     428.40       0.00      -0.00       0.00      -0.00      -0.00     650.94       0.00

   15   1.1  1.5 -0.5    -386.34       0.00      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     216.84      -0.00       0.00      -0.00      -0.00    -248.92       0.00      -0.00     200.88

   16   2.1  1.5 -0.5      -0.00       0.00       0.00    -419.07       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00    -107.25      -0.00       0.00      -0.00       0.00      -0.00    -123.82       0.00

   17   3.1  1.5 -0.5      -0.00     668.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          572.12       0.00       0.00       0.00     248.92      -0.00       0.00       0.00       0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00      -0.00    -212.83       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00    -693.49       0.00      -0.00       0.00      -0.00       0.00     319.93       0.00

   19   5.1  1.5 -0.5      -0.00      -0.00     155.76       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00    -650.94       0.00     123.82      -0.00    -319.93       0.00       0.00

   20   6.1  1.5 -0.5       0.00    -155.76       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          693.49       0.00      -0.00      -0.00    -200.88      -0.00       0.00      -0.00      -0.00       0.00

   21   7.1  1.5 -0.5     212.83      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     650.94       0.00      -0.00       0.00       0.00      91.47      -0.00       0.00    -428.40

   22   1.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00     777.82       0.00    -334.58       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      -0.00       0.00       0.00     187.79      -0.00

   23   2.1  1.5 -1.5       0.00       0.00       0.00       0.00    -777.82       0.00      -0.00      -0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00       0.00    -517.52       0.00      -0.00     -92.88

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00     578.67       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00     517.52       0.00     495.47       0.00       0.00

   25   4.1  1.5 -1.5       0.00       0.00       0.00       0.00     334.58       0.00       0.00       0.00       0.00      -0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -495.47      -0.00       0.00    -600.58

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00      -0.00      -0.00    -578.67      -0.00      -0.00     134.90
                           -0.00      -0.00      -0.00      -0.00    -187.79       0.00      -0.00      -0.00       0.00      -0.00

   27   6.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00       0.00    -134.90       0.00
                           -0.00      -0.00      -0.00      -0.00       0.00      92.88      -0.00     600.58       0.00      -0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00     362.92      -0.00     184.31      -0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     563.73       0.00

   29   1.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    -301.60       0.00     135.95       0.00       0.00
                            0.00      -0.00    -302.82       0.00       0.00       0.00      -0.00       0.00      64.13       0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     229.55      -0.00       0.00     -53.51
                          439.62      -0.00       0.00      -0.00     -74.49       0.00      -0.00      -0.00      -0.00       0.00

   31   3.1  0.5  0.5       0.00       0.00       0.00       0.00     269.33      -0.00      -0.00      -0.00      -0.00      -0.00
                           -0.00      63.50       0.00       0.00      -0.00      -0.00    -245.29       0.00      -0.00     -91.11

   32   4.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00      14.02      -0.00
                           -0.00      -0.00      -0.00    -559.04       0.00      70.95       0.00     267.98       0.00      -0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -235.28       0.00
                            0.00       0.00      -0.00     223.21       0.00     196.13       0.00     153.54       0.00       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00       0.00    -200.69      -0.00       0.00      -0.00       0.00      -0.00
                           -0.00    -467.10       0.00      -0.00       0.00       0.00    -143.55      -0.00      -0.00    -223.19

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -158.00       0.00     -66.93      -0.00      -0.00
                           -0.00       0.00     575.37       0.00       0.00      -0.00       0.00       0.00     226.81      -0.00

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00     303.81       0.00
                            0.00      -0.00      -0.00    -427.72      -0.00     329.12      -0.00    -198.39       0.00       0.00

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00    -109.81      -0.00    -368.27       0.00       0.00
                            0.00      -0.00     320.43       0.00      -0.00       0.00      -0.00       0.00    -303.81       0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00      -0.00     281.27      -0.00       0.00    -120.19
                         -111.52       0.00       0.00       0.00     394.02       0.00       0.00       0.00      -0.00      -0.00

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00     127.26       0.00       0.00       0.00      -0.00       0.00
                            0.00    -607.65      -0.00       0.00       0.00      -0.00    -242.46       0.00       0.00     298.17

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00      -0.00      -0.00     130.37      -0.00      -0.00     384.58
                          628.71       0.00       0.00      -0.00     -59.28       0.00       0.00      -0.00      -0.00      -0.00

   41   1.1  0.5 -0.5     135.95       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -64.13      -0.00      -0.00      -0.00       0.00     347.47       0.00      -0.00    -302.82

   42   2.1  0.5 -0.5      -0.00       0.00     -53.51      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00     223.62      -0.00    -170.15       0.00     439.62      -0.00       0.00

   43   3.1  0.5 -0.5      -0.00      -0.00      -0.00     157.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      91.11       0.00       0.00      -0.00       0.00      -0.00      63.50       0.00

   44   4.1  0.5 -0.5       0.00      14.02      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -267.98      -0.00       0.00       0.00     214.38      -0.00      -0.00      -0.00      -0.00      -0.00

   45   5.1  0.5 -0.5       0.00    -235.28       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -153.54      -0.00      -0.00      -0.00    -383.72       0.00      -0.00       0.00       0.00      -0.00

   46   6.1  0.5 -0.5      -0.00       0.00      -0.00      37.72       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     223.19      -0.00      -0.00       0.00       0.00      -0.00    -467.10       0.00

   47   7.1  0.5 -0.5     -66.93      -0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -226.81       0.00       0.00       0.00       0.00    -109.84      -0.00       0.00     575.37

   48   8.1  0.5 -0.5       0.00     303.81       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          198.39      -0.00      -0.00      -0.00    -638.57      -0.00      -0.00       0.00      -0.00      -0.00

   49   9.1  0.5 -0.5    -368.27       0.00       0.00      -0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     303.81      -0.00       0.00      -0.00      -0.00     698.60       0.00      -0.00     320.43

   50  10.1  0.5 -0.5      -0.00       0.00    -120.19       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       8.71      -0.00     736.66       0.00    -111.52       0.00       0.00

   51  11.1  0.5 -0.5       0.00      -0.00       0.00    -362.63       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00    -298.17      -0.00       0.00       0.00      -0.00       0.00    -607.65      -0.00

   52  12.1  0.5 -0.5      -0.00      -0.00     384.58       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00    -315.61       0.00     288.84       0.00     628.71       0.00       0.00


   Nr   State  S   Sz       21         22         23         24         25         26         27         28         29         30

    1   1.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -129.02

    2   2.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -522.39      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    3   3.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     397.59
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00

    4   4.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     235.46      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00

    5   5.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     111.08      -0.00

    6   6.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     -92.68
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    7   7.1  1.5  1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00      -0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -387.32

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

    9   2.1  1.5  0.5     419.07       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00     170.15

   10   3.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    -347.47      -0.00

   11   4.1  1.5  0.5     212.83       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00    -439.62

   12   5.1  1.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -650.94       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00     302.82      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00      -0.00       0.00

   15   1.1  1.5 -0.5       0.00      -0.00    -777.82      -0.00     334.58      -0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00     187.79      -0.00       0.00      -0.00      74.49

   16   2.1  1.5 -0.5       0.00     777.82       0.00       0.00       0.00      -0.00      -0.00     362.92    -301.60      -0.00
                           -0.00       0.00      -0.00    -517.52       0.00      -0.00     -92.88      -0.00      -0.00      -0.00

   17   3.1  1.5 -0.5       0.00       0.00      -0.00       0.00       0.00    -578.67      -0.00      -0.00       0.00     229.55
                          -91.47      -0.00     517.52      -0.00     495.47       0.00       0.00       0.00       0.00       0.00

   18   4.1  1.5 -0.5       0.00    -334.58      -0.00      -0.00       0.00      -0.00       0.00     184.31     135.95      -0.00
                            0.00      -0.00      -0.00    -495.47       0.00       0.00    -600.58       0.00      -0.00       0.00

   19   5.1  1.5 -0.5       0.00       0.00       0.00     578.67       0.00      -0.00    -134.90      -0.00       0.00       0.00
                           -0.00    -187.79       0.00      -0.00      -0.00      -0.00      -0.00    -563.73     -64.13       0.00

   20   6.1  1.5 -0.5       0.00      -0.00       0.00       0.00      -0.00     134.90       0.00       0.00       0.00     -53.51
                          428.40       0.00      92.88      -0.00     600.58       0.00       0.00      -0.00      -0.00      -0.00

   21   7.1  1.5 -0.5       0.00      -0.00    -362.92       0.00    -184.31       0.00      -0.00       0.00      -0.00      -0.00
                           -0.00      -0.00       0.00      -0.00      -0.00     563.73       0.00       0.00      -0.00     223.62

   22   1.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00    -746.77       0.00      -0.00     602.64      -0.00       0.00       0.00

   23   2.1  1.5 -1.5    -362.92       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00      -0.00    -371.46       0.00      -0.00       0.00       0.00

   24   3.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00     746.77      -0.00       0.00       0.00       0.00      -0.00    -274.42       0.00       0.00

   25   4.1  1.5 -1.5    -184.31       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00     959.78       0.00       0.00       0.00       0.00

   26   5.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -563.73       0.00     371.46      -0.00    -959.78       0.00       0.00      -0.00       0.00       0.00

   27   6.1  1.5 -1.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -602.64      -0.00       0.00      -0.00      -0.00       0.00    1285.21       0.00       0.00

   28   7.1  1.5 -1.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00     274.42      -0.00       0.00   -1285.21      -0.00       0.00       0.00

   29   1.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   30   2.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    5417.73
                         -223.62      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   31   3.1  0.5  0.5     157.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      90.43

   32   4.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     341.56       0.00

   33   5.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00    -560.46       0.00

   34   6.1  0.5  0.5      37.72       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00    -665.16

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00      -0.00

   36   8.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     434.93       0.00

   37   9.1  0.5  0.5      -0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -8.71      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00

   39  11.1  0.5  0.5    -362.63       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00     427.48

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          315.61      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00      -0.00

   41   1.1  0.5 -0.5       0.00       0.00    -522.39       0.00     235.46       0.00       0.00      -0.00      -0.00       0.00
                            0.00       0.00       0.00      -0.00       0.00     111.08       0.00       0.00       0.00     182.65

   42   2.1  0.5 -0.5       0.00       0.00      -0.00     397.59      -0.00       0.00     -92.68      -0.00      -0.00       0.00
                           -0.00    -129.02       0.00      -0.00      -0.00      -0.00       0.00    -387.32    -182.65      -0.00

   43   3.1  0.5 -0.5       0.00     466.50      -0.00      -0.00      -0.00      -0.00      -0.00     271.93    -745.69       0.00
                            0.00      -0.00      -0.00    -424.85       0.00      -0.00    -157.81      -0.00      -0.00       0.00

   44   4.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00      24.28      -0.00      -0.00       0.00     -39.93
                         -559.04       0.00     122.88       0.00     464.15       0.00      -0.00      -0.00       0.00      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    -407.52       0.00       0.00      -0.00     670.09
                          223.21       0.00     339.71       0.00     265.93       0.00       0.00       0.00      -0.00      -0.00

   46   6.1  0.5 -0.5       0.00    -347.60      -0.00       0.00      -0.00       0.00      -0.00      65.32     575.90       0.00
                           -0.00       0.00       0.00    -248.64      -0.00      -0.00    -386.57       0.00      -0.00       0.00

   47   7.1  0.5 -0.5       0.00      -0.00    -273.66       0.00    -115.93      -0.00      -0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00     392.85      -0.00      -0.00      -0.00     645.95

   48   8.1  0.5 -0.5       0.00       0.00       0.00      -0.00       0.00     526.21       0.00      -0.00      -0.00     427.46
                         -427.72      -0.00     570.06      -0.00    -343.62       0.00       0.00       0.00       0.00      -0.00

   49   9.1  0.5 -0.5       0.00      -0.00    -190.20      -0.00    -637.86       0.00       0.00      -0.00       0.00       0.00
                            0.00      -0.00       0.00      -0.00       0.00    -526.21       0.00      -0.00       0.00     427.46

   50  10.1  0.5 -0.5       0.00       0.00      -0.00     487.17      -0.00       0.00    -208.18       0.00      -0.00       0.00
                            0.00     682.46       0.00       0.00       0.00      -0.00      -0.00     -15.09    -554.37       0.00

   51  11.1  0.5 -0.5       0.00     220.41       0.00       0.00       0.00      -0.00       0.00    -628.09     202.32      -0.00
                            0.00       0.00      -0.00    -419.96       0.00       0.00     516.45       0.00      -0.00       0.00

   52  12.1  0.5 -0.5       0.00      -0.00      -0.00     225.81      -0.00      -0.00     666.12       0.00      -0.00       0.00
                           -0.00    -102.68       0.00       0.00      -0.00      -0.00      -0.00     546.65     103.74       0.00


   Nr   State  S   Sz       31         32         33         34         35         36         37         38         39         40

    1   1.1  1.5  1.5     466.50       0.00       0.00    -347.60      -0.00       0.00      -0.00       0.00     220.41      -0.00
                           -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     682.46       0.00    -102.68

    2   2.1  1.5  1.5      -0.00       0.00       0.00      -0.00    -273.66       0.00    -190.20      -0.00       0.00      -0.00
                           -0.00     122.88     339.71       0.00      -0.00     570.06       0.00       0.00      -0.00       0.00

    3   3.1  1.5  1.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     487.17       0.00     225.81
                         -424.85       0.00       0.00    -248.64       0.00      -0.00      -0.00       0.00    -419.96       0.00

    4   4.1  1.5  1.5      -0.00       0.00       0.00      -0.00    -115.93       0.00    -637.86      -0.00       0.00      -0.00
                            0.00     464.15     265.93      -0.00       0.00    -343.62       0.00       0.00       0.00      -0.00

    5   5.1  1.5  1.5      -0.00      24.28    -407.52       0.00      -0.00     526.21       0.00       0.00      -0.00      -0.00
                           -0.00       0.00       0.00      -0.00     392.85       0.00    -526.21      -0.00       0.00      -0.00

    6   6.1  1.5  1.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -208.18       0.00     666.12
                         -157.81      -0.00       0.00    -386.57      -0.00       0.00       0.00      -0.00     516.45      -0.00

    7   7.1  1.5  1.5     271.93      -0.00       0.00      65.32       0.00      -0.00      -0.00       0.00    -628.09       0.00
                           -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00     -15.09       0.00     546.65

    8   1.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -214.38     383.72       0.00      -0.00     638.57       0.00       0.00      -0.00      -0.00

    9   2.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00    -736.66      -0.00    -288.84

   10   3.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00     109.84       0.00    -698.60      -0.00       0.00      -0.00

   11   4.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     111.52      -0.00    -628.71

   12   5.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -63.50       0.00      -0.00     467.10      -0.00       0.00       0.00      -0.00     607.65      -0.00

   13   6.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00       0.00      -0.00    -575.37       0.00    -320.43      -0.00       0.00      -0.00

   14   7.1  1.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     559.04    -223.21       0.00      -0.00     427.72      -0.00      -0.00      -0.00       0.00

   15   1.1  1.5 -0.5     269.33       0.00       0.00    -200.69      -0.00       0.00      -0.00       0.00     127.26      -0.00
                            0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -394.02      -0.00      59.28

   16   2.1  1.5 -0.5      -0.00       0.00       0.00      -0.00    -158.00       0.00    -109.81      -0.00       0.00      -0.00
                            0.00     -70.95    -196.13      -0.00       0.00    -329.12      -0.00      -0.00       0.00      -0.00

   17   3.1  1.5 -0.5      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     281.27       0.00     130.37
                          245.29      -0.00      -0.00     143.55      -0.00       0.00       0.00      -0.00     242.46      -0.00

   18   4.1  1.5 -0.5      -0.00       0.00       0.00      -0.00     -66.93       0.00    -368.27      -0.00       0.00      -0.00
                           -0.00    -267.98    -153.54       0.00      -0.00     198.39      -0.00      -0.00      -0.00       0.00

   19   5.1  1.5 -0.5      -0.00      14.02    -235.28       0.00      -0.00     303.81       0.00       0.00      -0.00      -0.00
                            0.00      -0.00      -0.00       0.00    -226.81      -0.00     303.81       0.00      -0.00       0.00

   20   6.1  1.5 -0.5      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -120.19       0.00     384.58
                           91.11       0.00      -0.00     223.19       0.00      -0.00      -0.00       0.00    -298.17       0.00

   21   7.1  1.5 -0.5     157.00      -0.00       0.00      37.72       0.00      -0.00      -0.00       0.00    -362.63       0.00
                            0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00       8.71      -0.00    -315.61

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
                           -0.00    -341.56     560.46      -0.00      -0.00    -434.93       0.00      -0.00       0.00       0.00

   30   2.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          -90.43      -0.00      -0.00     665.16       0.00      -0.00      -0.00      -0.00    -427.48       0.00

   31   3.1  0.5  0.5    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00      -0.00       0.00       0.00      -0.00      -0.00     485.90       0.00     300.27

   32   4.1  0.5  0.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00       0.00    -781.20      -0.00     305.10       0.00      -0.00       0.00

   33   5.1  0.5  0.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00       0.00      -0.00     292.39       0.00     446.40       0.00      -0.00       0.00

   34   6.1  0.5  0.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00    -196.56      -0.00     383.09

   35   7.1  0.5  0.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                           -0.00     781.20    -292.39      -0.00       0.00    -321.24       0.00       0.00       0.00      -0.00

   36   8.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00      -0.00     321.24      -0.00     -49.22      -0.00      -0.00      -0.00

   37   9.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00       0.00
                            0.00    -305.10    -446.40      -0.00      -0.00      49.22      -0.00      -0.00      -0.00      -0.00

   38  10.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                         -485.90      -0.00      -0.00     196.56      -0.00       0.00       0.00       0.00     -59.91      -0.00

   39  11.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                           -0.00       0.00       0.00       0.00      -0.00       0.00       0.00      59.91       0.00     -78.03

   40  12.1  0.5  0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                         -300.27      -0.00      -0.00    -383.09       0.00       0.00       0.00       0.00      78.03      -0.00

   41   1.1  0.5 -0.5     745.69      -0.00       0.00    -575.90      -0.00       0.00      -0.00       0.00    -202.32       0.00
                            0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     554.37       0.00    -103.74

   42   2.1  0.5 -0.5      -0.00      39.93    -670.09      -0.00      -0.00    -427.46      -0.00      -0.00       0.00      -0.00
                           -0.00       0.00       0.00      -0.00    -645.95       0.00    -427.46      -0.00      -0.00      -0.00

   43   3.1  0.5 -0.5       0.00      -0.00      -0.00       0.00    -481.94      -0.00     270.51       0.00      -0.00       0.00
                            0.00    -373.62    -644.80       0.00       0.00     385.68      -0.00       0.00      -0.00       0.00

   44   4.1  0.5 -0.5       0.00      -0.00      -0.00       0.00      -0.00      -0.00      -0.00      99.93      -0.00    -564.30
                          373.62       0.00      -0.00     695.51      -0.00       0.00      -0.00      -0.00     355.97       0.00

   45   5.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00       0.00    -418.61      -0.00     -89.52
                          644.80       0.00      -0.00     295.74       0.00      -0.00      -0.00       0.00    -407.03       0.00

   46   6.1  0.5 -0.5      -0.00      -0.00      -0.00       0.00     -81.03      -0.00     468.17       0.00       0.00       0.00
                           -0.00    -695.51    -295.74      -0.00       0.00    -378.96       0.00      -0.00       0.00      -0.00

   47   7.1  0.5 -0.5     481.94       0.00       0.00      81.03      -0.00       0.00       0.00      -0.00     501.45       0.00
                           -0.00       0.00      -0.00      -0.00      -0.00      -0.00      -0.00      13.25       0.00     439.77

   48   8.1  0.5 -0.5       0.00       0.00      -0.00       0.00      -0.00       0.00      -0.00     -97.61       0.00     -12.84
                         -385.68      -0.00       0.00     378.96       0.00      -0.00      -0.00       0.00      49.21       0.00

   49   9.1  0.5 -0.5    -270.51       0.00      -0.00    -468.17      -0.00       0.00       0.00      -0.00     -49.20      -0.00
                            0.00       0.00       0.00      -0.00       0.00       0.00       0.00      37.67      -0.00      90.91

   50  10.1  0.5 -0.5      -0.00     -99.93     418.61      -0.00       0.00      97.61       0.00      -0.00       0.00       0.00
                           -0.00       0.00      -0.00       0.00     -13.25      -0.00     -37.67      -0.00      -0.00       0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00      -0.00    -501.45      -0.00      49.20      -0.00       0.00       0.00
                            0.00    -355.97     407.03      -0.00      -0.00     -49.21       0.00       0.00      -0.00      -0.00

   52  12.1  0.5 -0.5      -0.00     564.30      89.52      -0.00      -0.00      12.84       0.00      -0.00      -0.00       0.00
                           -0.00      -0.00      -0.00       0.00    -439.77      -0.00     -90.91      -0.00       0.00       0.00


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

    8   1.1  1.5  0.5       0.00       0.00     269.33       0.00       0.00    -200.69      -0.00       0.00      -0.00       0.00
                            0.00     -74.49      -0.00       0.00       0.00       0.00       0.00      -0.00      -0.00     394.02

    9   2.1  1.5  0.5    -301.60      -0.00      -0.00       0.00       0.00      -0.00    -158.00       0.00    -109.81      -0.00
                            0.00       0.00      -0.00      70.95     196.13       0.00      -0.00     329.12       0.00       0.00

   10   3.1  1.5  0.5       0.00     229.55      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     281.27
                           -0.00      -0.00    -245.29       0.00       0.00    -143.55       0.00      -0.00      -0.00       0.00

   11   4.1  1.5  0.5     135.95      -0.00      -0.00       0.00       0.00      -0.00     -66.93       0.00    -368.27      -0.00
                            0.00      -0.00       0.00     267.98     153.54      -0.00       0.00    -198.39       0.00       0.00

   12   5.1  1.5  0.5       0.00       0.00      -0.00      14.02    -235.28       0.00      -0.00     303.81       0.00       0.00
                           64.13      -0.00      -0.00       0.00       0.00      -0.00     226.81       0.00    -303.81      -0.00

   13   6.1  1.5  0.5       0.00     -53.51      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -120.19
                            0.00       0.00     -91.11      -0.00       0.00    -223.19      -0.00       0.00       0.00      -0.00

   14   7.1  1.5  0.5      -0.00      -0.00     157.00      -0.00       0.00      37.72       0.00      -0.00      -0.00       0.00
                            0.00    -223.62      -0.00      -0.00       0.00       0.00      -0.00       0.00      -0.00      -8.71

   15   1.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      -0.00    -214.38     383.72       0.00      -0.00     638.57       0.00       0.00

   16   2.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     170.15       0.00       0.00      -0.00      -0.00      -0.00       0.00       0.00    -736.66

   17   3.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                         -347.47      -0.00      -0.00       0.00       0.00      -0.00     109.84       0.00    -698.60      -0.00

   18   4.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00    -439.62       0.00       0.00      -0.00       0.00       0.00      -0.00      -0.00     111.52

   19   5.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     -63.50       0.00      -0.00     467.10      -0.00       0.00       0.00      -0.00

   20   6.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                          302.82      -0.00      -0.00       0.00       0.00      -0.00    -575.37       0.00    -320.43      -0.00

   21   7.1  1.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00       0.00      -0.00     559.04    -223.21       0.00      -0.00     427.72      -0.00      -0.00

   22   1.1  1.5 -1.5       0.00       0.00     466.50       0.00       0.00    -347.60      -0.00       0.00      -0.00       0.00
                           -0.00     129.02       0.00      -0.00      -0.00      -0.00      -0.00       0.00       0.00    -682.46

   23   2.1  1.5 -1.5    -522.39      -0.00      -0.00       0.00       0.00      -0.00    -273.66       0.00    -190.20      -0.00
                           -0.00      -0.00       0.00    -122.88    -339.71      -0.00       0.00    -570.06      -0.00      -0.00

   24   3.1  1.5 -1.5       0.00     397.59      -0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     487.17
                            0.00       0.00     424.85      -0.00      -0.00     248.64      -0.00       0.00       0.00      -0.00

   25   4.1  1.5 -1.5     235.46      -0.00      -0.00       0.00       0.00      -0.00    -115.93       0.00    -637.86      -0.00
                           -0.00       0.00      -0.00    -464.15    -265.93       0.00      -0.00     343.62      -0.00      -0.00

   26   5.1  1.5 -1.5       0.00       0.00      -0.00      24.28    -407.52       0.00      -0.00     526.21       0.00       0.00
                         -111.08       0.00       0.00      -0.00      -0.00       0.00    -392.85      -0.00     526.21       0.00

   27   6.1  1.5 -1.5       0.00     -92.68      -0.00      -0.00       0.00      -0.00      -0.00       0.00       0.00    -208.18
                           -0.00      -0.00     157.81       0.00      -0.00     386.57       0.00      -0.00      -0.00       0.00

   28   7.1  1.5 -1.5      -0.00      -0.00     271.93      -0.00       0.00      65.32       0.00      -0.00      -0.00       0.00
                           -0.00     387.32       0.00       0.00      -0.00      -0.00       0.00      -0.00       0.00      15.09

   29   1.1  0.5  0.5      -0.00      -0.00    -745.69       0.00      -0.00     575.90       0.00      -0.00       0.00      -0.00
                           -0.00     182.65       0.00      -0.00       0.00       0.00       0.00      -0.00      -0.00     554.37

   30   2.1  0.5  0.5       0.00       0.00       0.00     -39.93     670.09       0.00       0.00     427.46       0.00       0.00
                         -182.65       0.00      -0.00       0.00       0.00      -0.00    -645.95       0.00    -427.46      -0.00

   31   3.1  0.5  0.5     745.69      -0.00       0.00       0.00       0.00      -0.00     481.94       0.00    -270.51      -0.00
                           -0.00       0.00      -0.00    -373.62    -644.80       0.00       0.00     385.68      -0.00       0.00

   32   4.1  0.5  0.5      -0.00      39.93      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00     -99.93
                            0.00      -0.00     373.62      -0.00      -0.00     695.51      -0.00       0.00      -0.00      -0.00

   33   5.1  0.5  0.5       0.00    -670.09      -0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     418.61
                           -0.00      -0.00     644.80       0.00       0.00     295.74       0.00      -0.00      -0.00       0.00

   34   6.1  0.5  0.5    -575.90      -0.00       0.00       0.00       0.00       0.00      81.03       0.00    -468.17      -0.00
                           -0.00       0.00      -0.00    -695.51    -295.74       0.00       0.00    -378.96       0.00      -0.00

   35   7.1  0.5  0.5      -0.00      -0.00    -481.94      -0.00      -0.00     -81.03      -0.00      -0.00      -0.00       0.00
                           -0.00     645.95      -0.00       0.00      -0.00      -0.00       0.00      -0.00      -0.00      13.25

   36   8.1  0.5  0.5       0.00    -427.46      -0.00      -0.00       0.00      -0.00       0.00       0.00       0.00      97.61
                            0.00      -0.00    -385.68      -0.00       0.00     378.96       0.00       0.00      -0.00       0.00

   37   9.1  0.5  0.5      -0.00      -0.00     270.51      -0.00       0.00     468.17       0.00      -0.00       0.00       0.00
                            0.00     427.46       0.00       0.00       0.00      -0.00       0.00       0.00      -0.00      37.67

   38  10.1  0.5  0.5       0.00      -0.00       0.00      99.93    -418.61       0.00      -0.00     -97.61      -0.00      -0.00
                         -554.37       0.00      -0.00       0.00      -0.00       0.00     -13.25      -0.00     -37.67       0.00

   39  11.1  0.5  0.5    -202.32       0.00      -0.00      -0.00      -0.00       0.00     501.45       0.00     -49.20       0.00
                           -0.00       0.00       0.00    -355.97     407.03      -0.00      -0.00     -49.21       0.00       0.00

   40  12.1  0.5  0.5       0.00      -0.00       0.00    -564.30     -89.52       0.00       0.00     -12.84      -0.00       0.00
                          103.74       0.00      -0.00      -0.00      -0.00       0.00    -439.77      -0.00     -90.91      -0.00

   41   1.1  0.5 -0.5    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00      -0.00       0.00     341.56    -560.46       0.00       0.00     434.93      -0.00       0.00

   42   2.1  0.5 -0.5       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00      90.43       0.00       0.00    -665.16      -0.00       0.00       0.00       0.00

   43   3.1  0.5 -0.5       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                           -0.00     -90.43       0.00       0.00       0.00      -0.00      -0.00       0.00       0.00    -485.90

   44   4.1  0.5 -0.5       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00       0.00
                         -341.56      -0.00      -0.00      -0.00       0.00      -0.00     781.20       0.00    -305.10      -0.00

   45   5.1  0.5 -0.5       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00       0.00
                          560.46      -0.00      -0.00      -0.00      -0.00       0.00    -292.39      -0.00    -446.40      -0.00

   46   6.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00       0.00
                           -0.00     665.16       0.00       0.00      -0.00       0.00      -0.00      -0.00      -0.00     196.56

   47   7.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00    5417.73       0.00       0.00       0.00
                           -0.00       0.00       0.00    -781.20     292.39       0.00      -0.00     321.24      -0.00      -0.00

   48   8.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00       0.00
                         -434.93      -0.00      -0.00      -0.00       0.00       0.00    -321.24       0.00      49.22       0.00

   49   9.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39       0.00
                            0.00      -0.00      -0.00     305.10     446.40       0.00       0.00     -49.22       0.00       0.00

   50  10.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00    4690.39
                           -0.00      -0.00     485.90       0.00       0.00    -196.56       0.00      -0.00      -0.00      -0.00

   51  11.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00    -427.48       0.00      -0.00      -0.00      -0.00       0.00      -0.00      -0.00     -59.91

   52  12.1  0.5 -0.5       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00       0.00
                            0.00       0.00     300.27       0.00       0.00     383.09      -0.00      -0.00      -0.00      -0.00


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

    8   1.1  1.5  0.5     127.26      -0.00
                            0.00     -59.28

    9   2.1  1.5  0.5       0.00      -0.00
                           -0.00       0.00

   10   3.1  1.5  0.5       0.00     130.37
                         -242.46       0.00

   11   4.1  1.5  0.5       0.00      -0.00
                            0.00      -0.00

   12   5.1  1.5  0.5      -0.00      -0.00
                            0.00      -0.00

   13   6.1  1.5  0.5       0.00     384.58
                          298.17      -0.00

   14   7.1  1.5  0.5    -362.63       0.00
                            0.00     315.61

   15   1.1  1.5 -0.5       0.00       0.00
                           -0.00      -0.00

   16   2.1  1.5 -0.5       0.00       0.00
                           -0.00    -288.84

   17   3.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   18   4.1  1.5 -0.5       0.00       0.00
                           -0.00    -628.71

   19   5.1  1.5 -0.5       0.00       0.00
                          607.65      -0.00

   20   6.1  1.5 -0.5       0.00       0.00
                            0.00      -0.00

   21   7.1  1.5 -0.5       0.00       0.00
                           -0.00       0.00

   22   1.1  1.5 -1.5     220.41      -0.00
                           -0.00     102.68

   23   2.1  1.5 -1.5       0.00      -0.00
                            0.00      -0.00

   24   3.1  1.5 -1.5       0.00     225.81
                          419.96      -0.00

   25   4.1  1.5 -1.5       0.00      -0.00
                           -0.00       0.00

   26   5.1  1.5 -1.5      -0.00      -0.00
                           -0.00       0.00

   27   6.1  1.5 -1.5       0.00     666.12
                         -516.45       0.00

   28   7.1  1.5 -1.5    -628.09       0.00
                           -0.00    -546.65

   29   1.1  0.5  0.5     202.32      -0.00
                            0.00    -103.74

   30   2.1  0.5  0.5      -0.00       0.00
                           -0.00      -0.00

   31   3.1  0.5  0.5       0.00      -0.00
                           -0.00       0.00

   32   4.1  0.5  0.5       0.00     564.30
                          355.97       0.00

   33   5.1  0.5  0.5       0.00      89.52
                         -407.03       0.00

   34   6.1  0.5  0.5      -0.00      -0.00
                            0.00      -0.00

   35   7.1  0.5  0.5    -501.45      -0.00
                            0.00     439.77

   36   8.1  0.5  0.5      -0.00      12.84
                           49.21       0.00

   37   9.1  0.5  0.5      49.20       0.00
                           -0.00      90.91

   38  10.1  0.5  0.5      -0.00      -0.00
                           -0.00       0.00

   39  11.1  0.5  0.5       0.00      -0.00
                            0.00      -0.00

   40  12.1  0.5  0.5       0.00       0.00
                            0.00      -0.00

   41   1.1  0.5 -0.5       0.00       0.00
                           -0.00      -0.00

   42   2.1  0.5 -0.5       0.00       0.00
                          427.48      -0.00

   43   3.1  0.5 -0.5       0.00       0.00
                           -0.00    -300.27

   44   4.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   45   5.1  0.5 -0.5       0.00       0.00
                            0.00      -0.00

   46   6.1  0.5 -0.5       0.00       0.00
                            0.00    -383.09

   47   7.1  0.5 -0.5       0.00       0.00
                           -0.00       0.00

   48   8.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   49   9.1  0.5 -0.5       0.00       0.00
                            0.00       0.00

   50  10.1  0.5 -0.5       0.00       0.00
                           59.91       0.00

   51  11.1  0.5 -0.5    4690.39       0.00
                           -0.00      78.03

   52  12.1  0.5 -0.5       0.00    4690.39
                          -78.03       0.00


 No symmetry adaption


 Spin-orbit eigenstates   (energies)
 ======================

     Nr         E             E-E0         E-E0           E-E(1)      E-E(1)      E-E(1)
              (au)            (au)        (cm-1)           (au)       (cm-1)        (eV)
     1  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     2  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     3  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     4  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     5  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     6  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     7  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     8  -110.02354076    -0.00703376    -1543.73      0.00000000        0.00      0.0000
     9  -110.02354076    -0.00703376    -1543.73      0.00000001        0.00      0.0000
    10  -110.02354076    -0.00703376    -1543.73      0.00000001        0.00      0.0000
    11  -110.01725398    -0.00074698     -163.94      0.00628679     1379.79      0.1711
    12  -110.01725398    -0.00074698     -163.94      0.00628679     1379.79      0.1711
    13  -110.01725397    -0.00074697     -163.94      0.00628679     1379.79      0.1711
    14  -110.01725397    -0.00074697     -163.94      0.00628679     1379.79      0.1711
    15  -110.01725397    -0.00074697     -163.94      0.00628679     1379.79      0.1711
    16  -110.01725397    -0.00074697     -163.94      0.00628679     1379.79      0.1711
    17  -110.01725397    -0.00074697     -163.94      0.00628680     1379.79      0.1711
    18  -110.01725397    -0.00074697     -163.94      0.00628680     1379.79      0.1711
    19  -110.01246376     0.00404324      887.39      0.01107700     2431.12      0.3014
    20  -110.01246376     0.00404324      887.39      0.01107700     2431.12      0.3014
    21  -110.01246371     0.00404329      887.40      0.01107705     2431.13      0.3014
    22  -110.01246371     0.00404329      887.40      0.01107705     2431.13      0.3014
    23  -110.01246369     0.00404331      887.40      0.01107707     2431.14      0.3014
    24  -110.01246369     0.00404331      887.40      0.01107707     2431.14      0.3014
    25  -110.01019781     0.00630919     1384.71      0.01334295     2928.44      0.3631
    26  -110.01019781     0.00630919     1384.71      0.01334295     2928.44      0.3631
    27  -110.01019758     0.00630942     1384.76      0.01334318     2928.49      0.3631
    28  -110.01019758     0.00630942     1384.76      0.01334318     2928.49      0.3631
    29  -109.99723276     0.01927424     4230.21      0.02630801     5773.94      0.7159
    30  -109.99723276     0.01927424     4230.21      0.02630801     5773.94      0.7159
    31  -109.99723270     0.01927430     4230.22      0.02630806     5773.95      0.7159
    32  -109.99723270     0.01927430     4230.22      0.02630806     5773.95      0.7159
    33  -109.99723259     0.01927441     4230.24      0.02630817     5773.98      0.7159
    34  -109.99723259     0.01927441     4230.24      0.02630817     5773.98      0.7159
    35  -109.99566291     0.02084409     4574.75      0.02787785     6118.48      0.7586
    36  -109.99566291     0.02084409     4574.75      0.02787785     6118.48      0.7586
    37  -109.99566290     0.02084410     4574.75      0.02787786     6118.48      0.7586
    38  -109.99566290     0.02084410     4574.75      0.02787786     6118.48      0.7586
    39  -109.99566290     0.02084410     4574.75      0.02787787     6118.48      0.7586
    40  -109.99566290     0.02084410     4574.75      0.02787787     6118.48      0.7586
    41  -109.99566288     0.02084412     4574.75      0.02787788     6118.49      0.7586
    42  -109.99566288     0.02084412     4574.75      0.02787788     6118.49      0.7586
    43  -109.99139442     0.02511258     5511.57      0.03214635     7055.31      0.8747
    44  -109.99139442     0.02511258     5511.57      0.03214635     7055.31      0.8747
    45  -109.99139426     0.02511274     5511.61      0.03214650     7055.34      0.8748
    46  -109.99139426     0.02511274     5511.61      0.03214650     7055.34      0.8748
    47  -109.98262927     0.03387773     7435.30      0.04091150     8979.04      1.1133
    48  -109.98262927     0.03387773     7435.30      0.04091150     8979.04      1.1133
    49  -109.98262919     0.03387781     7435.32      0.04091158     8979.05      1.1133
    50  -109.98262919     0.03387781     7435.32      0.04091158     8979.05      1.1133
    51  -109.98262897     0.03387803     7435.37      0.04091180     8979.10      1.1133
    52  -109.98262897     0.03387803     7435.37      0.04091180     8979.10      1.1133


 Eigenvectors of spin-orbit matrix
 =================================

  Basis states          Eigenvectors (columnwise)

   Nr   State  S   Sz        1             2             3             4             5             6             7             8

    1    1.1  1.5  1.5  -0.000546194   0.019215345   0.001374806   0.159081133  -0.000026840  -0.180456339   0.003220470   0.437104109
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5  -0.001069885  -0.000030411  -0.098149305   0.000848223  -0.468983223   0.000069761   0.037006669  -0.000272653
                        -0.001527086  -0.000043407  -0.053734660   0.000464384  -0.083779453   0.000012466  -0.106021950   0.000781145

    3    3.1  1.5  1.5   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.000555429  -0.019540239   0.003019197   0.349356425  -0.000018986  -0.127659188   0.002968848   0.402952198

    4    4.1  1.5  1.5  -0.003616960  -0.000102812  -0.316647088   0.002736518   0.064889867  -0.000009651  -0.108181610   0.000797054
                        -0.005162622  -0.000146746  -0.173357550   0.001498185   0.011591958  -0.000001724   0.309933941  -0.002283514

    5    5.1  1.5  1.5   0.074297073   0.002111884  -0.196912403   0.001701751   0.043291783  -0.000006441   0.325325334  -0.002396914
                        -0.052052918  -0.001479597   0.359671322  -0.003108340  -0.242340126   0.000036046   0.113553931  -0.000836635

    6    6.1  1.5  1.5   0.000000000  -0.000000001   0.000000000   0.000000000  -0.000000001  -0.000000000  -0.000000001  -0.000000000
                        -0.015472600   0.544333308  -0.000268249  -0.031039533  -0.000002634  -0.017698944  -0.001831812  -0.248626037

    7    7.1  1.5  1.5  -0.017615199   0.619710949  -0.000115749  -0.013393510   0.000012475   0.083869719  -0.001375218  -0.186653899
                        -0.000000000   0.000000001  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    8    1.1  1.5  0.5  -0.091634241  -0.002604691   0.126153180  -0.001090238   0.471170302  -0.000070086  -0.020209745   0.000148897
                        -0.130792973  -0.003717772   0.069066186  -0.000596881   0.084170154  -0.000012525   0.057899755  -0.000426593

    9    2.1  1.5  0.5  -0.008861366   0.311746992  -0.001807884  -0.209193330  -0.000017855  -0.120038539   0.000752451   0.102127752
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000001   0.000000000   0.000000001   0.000000000

   10    3.1  1.5  0.5  -0.154790993  -0.004399913  -0.009859689   0.000085209  -0.082798534   0.000012320  -0.127137413   0.000936718
                         0.108447379   0.003082602   0.018009260  -0.000155640   0.463492208  -0.000068944  -0.044376965   0.000326955

   11    4.1  1.5  0.5   0.006004285  -0.211233565  -0.001420131  -0.164325725   0.000057883   0.389138651  -0.002040062  -0.276891038
                         0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000002  -0.000000001  -0.000000002  -0.000000000

   12    5.1  1.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000002   0.000000001   0.000000002   0.000000000
                        -0.008951020   0.314901073   0.003392561   0.392559001   0.000023495   0.157927727   0.002038105   0.276625544

   13    6.1  1.5  0.5   0.071088836   0.002020691  -0.085737234   0.000740956  -0.014976628   0.000002230   0.316759069  -0.002333799
                        -0.049805209  -0.001415706   0.156603768  -0.001353397   0.083836588  -0.000012473   0.110563907  -0.000814608

   14    7.1  1.5  0.5   0.005768026   0.000163955   0.449489927  -0.003884568   0.054634254  -0.000008127   0.037111876  -0.000273431
                         0.008232919   0.000234019   0.246086182  -0.002126718   0.009759901  -0.000001453  -0.106323336   0.000783363

   15    1.1  1.5 -0.5   0.004539410  -0.159698578   0.001242934   0.143821980   0.000071198   0.478629360   0.000451830   0.061325530
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000005  -0.000000002  -0.000000003  -0.000000001

   16    2.1  1.5 -0.5  -0.178878856  -0.005084607   0.183493534  -0.001585782   0.118167822  -0.000017578   0.033656105  -0.000247970
                        -0.255320469  -0.007257450   0.100458809  -0.000868182   0.021109575  -0.000003142  -0.096422749   0.000710417

   17    3.1  1.5 -0.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000005  -0.000000002  -0.000000004  -0.000000001
                         0.005372305  -0.189000226  -0.000177437  -0.020531602  -0.000070038  -0.470829707  -0.000992138  -0.134659749

   18    4.1  1.5 -0.5   0.121204756   0.003445229   0.144137996  -0.001245664  -0.383074208   0.000056984  -0.091249185   0.000672304
                         0.173000075   0.004917503   0.078912489  -0.000681975  -0.068432620   0.000010184   0.261423510  -0.001926099

   19    5.1  1.5 -0.5  -0.257903659  -0.007330876  -0.188514665   0.001629175  -0.027772640   0.000004132  -0.261172806   0.001924255
                         0.180688651   0.005136050   0.344332386  -0.002975779   0.155466569  -0.000023124  -0.091161667   0.000671655

   20    6.1  1.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001   0.000000000   0.000000000   0.000000000
                        -0.002467269   0.086799662  -0.001542951  -0.178537428  -0.000012666  -0.085163832   0.002471882   0.335500642

   21    7.1  1.5 -0.5  -0.000285738   0.010052418   0.004428634   0.512444732   0.000008255   0.055499180  -0.000829712  -0.112614128
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001  -0.000000000

   22    1.1  1.5 -1.5   0.011025668   0.000313403   0.139537713  -0.001205908  -0.177644032   0.000026427  -0.144047234   0.001061305
                         0.015737349   0.000447332   0.076393933  -0.000660209  -0.031734448   0.000004724   0.412686819  -0.003040569

   23    2.1  1.5 -1.5  -0.000053000   0.001864576   0.000967023   0.111895928   0.000070867   0.476407653   0.000827360   0.112294955
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000005  -0.000000002  -0.000000004  -0.000000001

   24    3.1  1.5 -1.5  -0.016003435  -0.000454896   0.167767924  -0.001449879  -0.022449718   0.000003342   0.380442681  -0.002803002
                         0.011212091   0.000318702  -0.306437326   0.002648283   0.125669687  -0.000018696   0.132792503  -0.000978383

   25    4.1  1.5 -1.5  -0.000179178   0.006303576   0.003119790   0.360996148  -0.000009807  -0.065917100  -0.002418621  -0.328271705
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000003   0.000000001   0.000000001   0.000000000

   26    5.1  1.5 -1.5  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000004  -0.000000001  -0.000000002  -0.000000000
                         0.002578616  -0.090716929   0.003543690   0.410046285  -0.000036621  -0.246176559  -0.002538731  -0.344573770

   27    6.1  1.5 -1.5   0.445808425   0.012672043  -0.014905804   0.000128818  -0.003112477   0.000000462  -0.234737406   0.001729484
                        -0.312335714  -0.008878100   0.027226267  -0.000235294   0.017423141  -0.000002590  -0.081934462   0.000603672

   28    7.1  1.5 -1.5   0.355587025   0.010107513  -0.011748091   0.000101529   0.082562659  -0.000012282   0.061511610  -0.000453203
                         0.507542636   0.014426830  -0.006431830   0.000055585   0.014749048  -0.000002195  -0.176227134   0.001298395

   29    1.1  0.5  0.5  -0.000000046  -0.000000001   0.000000003  -0.000000000  -0.000000065   0.000000000   0.000000029  -0.000000000
                        -0.000000066  -0.000000002   0.000000002  -0.000000000  -0.000000012   0.000000000  -0.000000083   0.000000001

   30    2.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000
                        -0.000000000   0.000000003  -0.000000001  -0.000000094  -0.000000000  -0.000000032   0.000000000   0.000000040

   31    3.1  0.5  0.5   0.000000004  -0.000000142  -0.000000001  -0.000000079   0.000000000   0.000000018  -0.000000000  -0.000000000
                        -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.000000072  -0.000000002  -0.000000084   0.000000001   0.000000037  -0.000000000   0.000000138  -0.000000001
                         0.000000051   0.000000001   0.000000153  -0.000000001  -0.000000206   0.000000000   0.000000048  -0.000000000

   33    5.1  0.5  0.5  -0.000000019  -0.000000001  -0.000000073   0.000000001   0.000000009  -0.000000000   0.000000050  -0.000000000
                         0.000000013   0.000000000   0.000000134  -0.000000001  -0.000000049   0.000000000   0.000000018  -0.000000000

   34    6.1  0.5  0.5  -0.000000002   0.000000077   0.000000001   0.000000101   0.000000000   0.000000103   0.000000001   0.000000129
                        -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   35    7.1  0.5  0.5   0.000000024   0.000000001   0.000000134  -0.000000001   0.000000239  -0.000000000   0.000000049  -0.000000000
                         0.000000034   0.000000001   0.000000073  -0.000000001   0.000000043  -0.000000000  -0.000000139   0.000000001

   36    8.1  0.5  0.5  -0.000000015  -0.000000000  -0.000000035   0.000000000   0.000000011  -0.000000000   0.000000031  -0.000000000
                         0.000000010   0.000000000   0.000000063  -0.000000001  -0.000000059   0.000000000   0.000000011  -0.000000000

   37    9.1  0.5  0.5  -0.000000044  -0.000000001   0.000000030  -0.000000000  -0.000000073   0.000000000   0.000000039  -0.000000000
                        -0.000000062  -0.000000002   0.000000016  -0.000000000  -0.000000013   0.000000000  -0.000000112   0.000000001

   38   10.1  0.5  0.5   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000
                         0.000000002  -0.000000078  -0.000000000  -0.000000004   0.000000000   0.000000044  -0.000000000  -0.000000018

   39   11.1  0.5  0.5   0.000000003  -0.000000113   0.000000000   0.000000021   0.000000000   0.000000031   0.000000001   0.000000150
                         0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   40   12.1  0.5  0.5  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000012  -0.000000437   0.000000000   0.000000045   0.000000000   0.000000364  -0.000000002  -0.000000290

   41    1.1  0.5 -0.5  -0.000000002   0.000000080  -0.000000000  -0.000000003   0.000000000   0.000000066   0.000000001   0.000000088
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   42    2.1  0.5 -0.5   0.000000002   0.000000000  -0.000000045   0.000000000  -0.000000006   0.000000000   0.000000038  -0.000000000
                        -0.000000002  -0.000000000   0.000000083  -0.000000001   0.000000031  -0.000000000   0.000000013  -0.000000000

   43    3.1  0.5 -0.5  -0.000000081  -0.000000002  -0.000000069   0.000000001   0.000000018  -0.000000000   0.000000000  -0.000000000
                        -0.000000116  -0.000000003  -0.000000038   0.000000000   0.000000003  -0.000000000  -0.000000000   0.000000000

   44    4.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                        -0.000000003   0.000000088   0.000000002   0.000000175  -0.000000000  -0.000000209  -0.000000001  -0.000000146

   45    5.1  0.5 -0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000001   0.000000023   0.000000001   0.000000153  -0.000000000  -0.000000050  -0.000000000  -0.000000053

   46    6.1  0.5 -0.5   0.000000044   0.000000001   0.000000088  -0.000000001   0.000000101  -0.000000000  -0.000000043   0.000000000
                         0.000000063   0.000000002   0.000000048  -0.000000000   0.000000018  -0.000000000   0.000000122  -0.000000001

   47    7.1  0.5 -0.5   0.000000001  -0.000000042  -0.000000001  -0.000000152  -0.000000000  -0.000000243   0.000000001   0.000000148
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   48    8.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000
                        -0.000000001   0.000000018   0.000000001   0.000000072  -0.000000000  -0.000000060  -0.000000000  -0.000000033

   49    9.1  0.5 -0.5  -0.000000002   0.000000076  -0.000000000  -0.000000034   0.000000000   0.000000074   0.000000001   0.000000119
                        -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   50   10.1  0.5 -0.5  -0.000000064  -0.000000002  -0.000000002   0.000000000   0.000000008  -0.000000000  -0.000000017   0.000000000
                         0.000000045   0.000000001   0.000000004  -0.000000000  -0.000000044   0.000000000  -0.000000006   0.000000000

   51   11.1  0.5 -0.5  -0.000000065  -0.000000002   0.000000018  -0.000000000   0.000000030  -0.000000000  -0.000000050   0.000000000
                        -0.000000093  -0.000000003   0.000000010  -0.000000000   0.000000005  -0.000000000   0.000000142  -0.000000001

   52   12.1  0.5 -0.5  -0.000000358  -0.000000010   0.000000021  -0.000000000   0.000000064  -0.000000000  -0.000000274   0.000000002
                         0.000000250   0.000000007  -0.000000039   0.000000000  -0.000000358   0.000000000  -0.000000096   0.000000001


   Nr   State  S   Sz        9            10            11            12            13            14            15            16

    1    1.1  1.5  1.5   0.303760728  -0.003497253   0.008287013   0.349735292   0.003764666   0.085418315   0.270675696  -0.035789085
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.000065323   0.005673779   0.033552262  -0.000795013  -0.232428677   0.010243937   0.052157800   0.394473706
                        -0.000441690  -0.038363837   0.049268933  -0.001167403   0.463491468  -0.020427275  -0.006511351  -0.049244669

    3    3.1  1.5  1.5  -0.000000000   0.000000000  -0.000000018   0.000000002   0.000000054  -0.000000021  -0.000000013  -0.000000003
                        -0.090120304   0.001037572   0.011329220   0.478125584   0.000106069   0.002408050  -0.220140226   0.029107222

    4    4.1  1.5  1.5  -0.000530360  -0.046065467  -0.023616693   0.000559607   0.040876399  -0.001801575   0.029087462   0.219990656
                         0.003586084   0.311476331  -0.034679266   0.000821738  -0.081512591   0.003592341  -0.003631113  -0.027462880

    5    5.1  1.5  1.5   0.000428494   0.037217660   0.009105746  -0.000215753  -0.286172794   0.012612153  -0.006307799  -0.047707498
                         0.000063372   0.005504267  -0.006201043   0.000146941  -0.143508032   0.006324930  -0.050529669  -0.382159714

    6    6.1  1.5  1.5  -0.000000000   0.000000000  -0.000000006  -0.000000007   0.000000070  -0.000000011  -0.000000001   0.000000041
                        -0.323917615   0.003729322   0.004862879   0.205226994   0.006958370   0.157883937   0.055849995  -0.007384559

    7    7.1  1.5  1.5  -0.076196461   0.000877264   0.005915514   0.249651849  -0.005037695  -0.114304326   0.009738934  -0.001287692
                        -0.000000000  -0.000000000   0.000000002  -0.000000008   0.000000050  -0.000000002   0.000000006   0.000000047

    8    1.1  1.5  0.5  -0.000515384  -0.044764717   0.125672586  -0.002977821  -0.105858866   0.004665591  -0.044114344  -0.333640144
                         0.003484824   0.302681184   0.184540461  -0.004372706   0.211095688  -0.009303358   0.005506959   0.041650483

    9    2.1  1.5  0.5   0.542929780  -0.006250849  -0.003164497  -0.133551151   0.003599127   0.081662235   0.238087698  -0.031480260
                        -0.000000000  -0.000000000  -0.000000009   0.000000004   0.000000009  -0.000000009  -0.000000008  -0.000000018

   10    3.1  1.5  0.5   0.004091316   0.355359327   0.104766381  -0.002482448  -0.147310096   0.006492283   0.000622907   0.004710642
                         0.000605081   0.052555498  -0.071346207   0.001690553  -0.073872105   0.003255803   0.004989312   0.037734652

   11    4.1  1.5  0.5   0.269962329  -0.003108125   0.006072558   0.256280071  -0.011917785  -0.270411140  -0.216377746   0.028609746
                        -0.000000000   0.000000000   0.000000007  -0.000000016   0.000000082  -0.000000001   0.000000012   0.000000085

   12    5.1  1.5  0.5  -0.000000000   0.000000000   0.000000001   0.000000014  -0.000000102   0.000000010  -0.000000006  -0.000000079
                         0.048149685  -0.000554356  -0.005519637  -0.232943514  -0.014232841  -0.322939011  -0.317027607   0.041917798

   13    6.1  1.5  0.5   0.003425630   0.297539762  -0.306232910   0.007256203   0.377485821  -0.016636523   0.005567733   0.042110500
                         0.000506630   0.044004333   0.208545503  -0.004941514   0.189299086  -0.008343107   0.044601576   0.337325038

   14    7.1  1.5  0.5  -0.000100903  -0.008764167  -0.227322096   0.005386423   0.136886810  -0.006033088   0.024298650   0.183772421
                         0.000682269   0.059259806  -0.333804885   0.007909532  -0.272969200   0.012030299  -0.003033209  -0.022941544

   15    1.1  1.5 -0.5  -0.305973495   0.003522729   0.005290366   0.223268404  -0.010407699  -0.236151413   0.336229844  -0.044456742
                         0.000000000  -0.000000000  -0.000000004  -0.000000003   0.000000183  -0.000000012   0.000000021   0.000000120

   16    2.1  1.5 -0.5  -0.000914515  -0.079432039   0.075172832  -0.001781229  -0.036606497   0.001613362   0.031237792   0.236253908
                         0.006183590   0.537087793   0.110385485  -0.002615581   0.072997843  -0.003217262  -0.003899633  -0.029493094

   17    3.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000001   0.000000003   0.000000085  -0.000000001   0.000000016   0.000000059
                        -0.359224625   0.004135818   0.003003418   0.126752814   0.007262919   0.164794879   0.038027545  -0.005028046

   18    4.1  1.5 -0.5  -0.000454727  -0.039496192  -0.144254075   0.003418107   0.121216392  -0.005342424  -0.028389379  -0.214711171
                         0.003074681   0.267057504  -0.211825958   0.005019214  -0.241720440   0.010653268   0.003544114   0.026803766

   19    5.1  1.5 -0.5   0.000548391   0.047631588   0.192537324  -0.004562205  -0.288675093   0.012722687   0.005192643   0.039271769
                         0.000081104   0.007044425  -0.131118494   0.003106876  -0.144762897   0.006380204   0.041594930   0.314585809

   20    6.1  1.5 -0.5  -0.000000000  -0.000000000   0.000000015   0.000000000  -0.000000297   0.000000027  -0.000000026  -0.000000170
                        -0.300776148   0.003462891  -0.008779011  -0.370499423  -0.018611323  -0.422291001   0.339943339  -0.044947750

   21    7.1  1.5 -0.5  -0.059904383   0.000689690  -0.009569444  -0.403857693   0.013458315   0.305368930  -0.185198858   0.024487236
                         0.000000000  -0.000000000  -0.000000008   0.000000001  -0.000000190  -0.000000002  -0.000000039  -0.000000148

   22    1.1  1.5 -1.5   0.000511657   0.044440985   0.196857857  -0.004664567   0.038290216  -0.001687576  -0.035513432  -0.268590906
                        -0.003459622  -0.300492227   0.289070509  -0.006849555  -0.076355406   0.003365234   0.004433371   0.033529939

   23    2.1  1.5 -1.5  -0.038781127   0.000446494  -0.001412401  -0.059608573   0.022851954   0.518504995   0.397535588  -0.052562666
                         0.000000000  -0.000000000  -0.000000007   0.000000020  -0.000000179   0.000000006  -0.000000025  -0.000000156

   24    3.1  1.5 -1.5   0.001026407   0.089150600   0.395190331  -0.009364054  -0.002152566   0.000094791  -0.003605659  -0.027269848
                         0.000151799   0.013184835  -0.269125762   0.006376969  -0.001079426   0.000047596  -0.028883033  -0.218444672

   25    4.1  1.5 -1.5   0.314864307  -0.003625090   0.000994190   0.041957117  -0.004018779  -0.091187623   0.221698214  -0.029313229
                        -0.000000000  -0.000000000   0.000000001   0.000000010   0.000000100   0.000000001   0.000000023   0.000000062

   26    5.1  1.5 -1.5  -0.000000000   0.000000000   0.000000010   0.000000003  -0.000000242   0.000000021  -0.000000023  -0.000000146
                         0.037622483  -0.000433155  -0.000261039  -0.011016695  -0.014109257  -0.320139695   0.385126021  -0.050921859

   27    6.1  1.5 -1.5   0.003689194   0.320432224   0.169628492  -0.004019365  -0.141132411   0.006220053   0.000914802   0.006918413
                         0.000545610   0.047389990  -0.115517505   0.002737207  -0.070774148   0.003119271   0.007327677   0.055419829

   28    7.1  1.5 -1.5  -0.000128346  -0.011147740   0.140523209  -0.003329707  -0.051238854   0.002258277  -0.001277779  -0.009663922
                         0.000867824   0.075376577   0.206347459  -0.004889412   0.102176606  -0.004503172   0.000159467   0.001206418

   29    1.1  0.5  0.5  -0.000000000  -0.000000004  -0.006621261   0.000156893  -0.051346130   0.002263004   0.006598413   0.049904360
                         0.000000000   0.000000027  -0.009722804   0.000230386   0.102390522  -0.004512599  -0.000823761  -0.006229874

   30    2.1  0.5  0.5   0.000000000   0.000000000   0.000000003  -0.000000003   0.000000007   0.000000002   0.000000004   0.000000014
                         0.000000112  -0.000000001  -0.002956915  -0.124790355   0.001637492   0.037154129   0.039943941  -0.005281440

   31    3.1  0.5  0.5   0.000000044  -0.000000001  -0.000022658  -0.000956185   0.000099992   0.002269176  -0.073347311   0.009698075
                        -0.000000000   0.000000000   0.000000003   0.000000001  -0.000000015   0.000000004   0.000000001  -0.000000005

   32    4.1  0.5  0.5   0.000000002   0.000000183   0.040299809  -0.000954910   0.028445727  -0.001253634   0.001336740   0.010110045
                         0.000000000   0.000000027  -0.027444290   0.000650297   0.014264776  -0.000628702   0.010708111   0.080986254

   33    5.1  0.5  0.5  -0.000000000  -0.000000013  -0.025071355   0.000594065  -0.106026247   0.004672816  -0.000258396  -0.001954608
                        -0.000000000  -0.000000002   0.017073661  -0.000404559  -0.053169345   0.002343363  -0.002070230  -0.015657274

   34    6.1  0.5  0.5  -0.000000017   0.000000000   0.002780473   0.117343750   0.002517542   0.057122400   0.044051121  -0.005824496
                        -0.000000000   0.000000000   0.000000002   0.000000002  -0.000000022   0.000000004   0.000000001  -0.000000012

   35    7.1  0.5  0.5   0.000000001   0.000000056   0.023868172  -0.000565559   0.018369284  -0.000809607   0.016411783   0.124123581
                        -0.000000004  -0.000000378   0.035048564  -0.000830474  -0.036630637   0.001614348  -0.002048765  -0.015495155

   36    8.1  0.5  0.5   0.000000000   0.000000018  -0.000000001   0.000000000  -0.000000070   0.000000003   0.000000003   0.000000022
                         0.000000000   0.000000003   0.000000001  -0.000000000  -0.000000035   0.000000002   0.000000024   0.000000179

   37    9.1  0.5  0.5  -0.000000000  -0.000000002   0.000000111  -0.000000003  -0.000000053   0.000000002   0.000000010   0.000000072
                         0.000000000   0.000000016   0.000000163  -0.000000004   0.000000106  -0.000000005  -0.000000001  -0.000000009

   38   10.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000
                         0.000000109  -0.000000001  -0.000000005  -0.000000212  -0.000000001  -0.000000015   0.000000032  -0.000000004

   39   11.1  0.5  0.5   0.000000066  -0.000000001  -0.000000001  -0.000000063  -0.000000005  -0.000000121   0.000000125  -0.000000017
                         0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000

   40   12.1  0.5  0.5  -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000
                        -0.000000188   0.000000002  -0.000000006  -0.000000237  -0.000000012  -0.000000281  -0.000000246   0.000000032

   41    1.1  0.5 -0.5   0.000000027  -0.000000000   0.000278735   0.011763248   0.005048241   0.114543633   0.050291715  -0.006649634
                        -0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000049   0.000000002  -0.000000007  -0.000000038

   42    2.1  0.5 -0.5  -0.000000001  -0.000000110  -0.103144328   0.002444009  -0.033212064   0.001463750   0.000654252   0.004948050
                        -0.000000000  -0.000000016   0.070241584  -0.001664381  -0.016654973   0.000734040   0.005240759   0.039636287

   43    3.1  0.5 -0.5   0.000000000   0.000000007  -0.000538214   0.000012751   0.001017192  -0.000044836   0.009623379   0.072782378
                        -0.000000001  -0.000000044  -0.000790326   0.000018729  -0.002028418   0.000089376  -0.001201344  -0.009085894

   44    4.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000000   0.000000002   0.000000034  -0.000000000   0.000000007   0.000000022
                         0.000000185  -0.000000002  -0.001155309  -0.048757190   0.001402450   0.031822056  -0.081614866   0.010791224

   45    5.1  0.5 -0.5  -0.000000000   0.000000000   0.000000001   0.000000004  -0.000000062   0.000000004  -0.000000007  -0.000000044
                        -0.000000013   0.000000000   0.000718736   0.030332865  -0.005227481  -0.118610895   0.015778805  -0.002086294

   46    6.1  0.5 -0.5  -0.000000000  -0.000000003   0.066050068  -0.001565065   0.025606084  -0.001128551  -0.005779633  -0.043711832
                         0.000000000   0.000000017   0.096989403  -0.002298173  -0.051061698   0.002250421   0.000721521   0.005456830

   47    7.1  0.5 -0.5  -0.000000382   0.000000004  -0.001004760  -0.042403909  -0.001805985  -0.040978460   0.125087022  -0.016539168
                        -0.000000000  -0.000000000  -0.000000003   0.000000002   0.000000048  -0.000000005   0.000000004   0.000000024

   48    8.1  0.5 -0.5  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.000000018  -0.000000000   0.000000000   0.000000001  -0.000000003  -0.000000078  -0.000000180   0.000000024

   49    9.1  0.5 -0.5   0.000000016  -0.000000000  -0.000000005  -0.000000197   0.000000005   0.000000119   0.000000072  -0.000000010
                        -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000

   50   10.1  0.5 -0.5  -0.000000001  -0.000000108  -0.000000175   0.000000004   0.000000014  -0.000000001   0.000000001   0.000000004
                        -0.000000000  -0.000000016   0.000000119  -0.000000003   0.000000007  -0.000000000   0.000000004   0.000000032

   51   11.1  0.5 -0.5   0.000000000   0.000000010  -0.000000036   0.000000001  -0.000000054   0.000000002  -0.000000016  -0.000000124
                        -0.000000001  -0.000000066  -0.000000052   0.000000001   0.000000108  -0.000000005   0.000000002   0.000000016

   52   12.1  0.5 -0.5   0.000000002   0.000000186  -0.000000196   0.000000005   0.000000251  -0.000000011  -0.000000004  -0.000000030
                         0.000000000   0.000000028   0.000000133  -0.000000003   0.000000126  -0.000000006  -0.000000032  -0.000000244


   Nr   State  S   Sz       17            18            19            20            21            22            23            24

    1    1.1  1.5  1.5  -0.058811697  -0.303554402  -0.000521048   0.033507387   0.035219164  -0.016015811  -0.001945557   0.450646545
                        -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000

    2    2.1  1.5  1.5   0.019231490  -0.003725967  -0.034699963  -0.000539593   0.022426428   0.049316246  -0.139646859  -0.000602892
                         0.039924988  -0.007735226  -0.072500071  -0.001127391  -0.119914597  -0.263695132   0.350035445   0.001511194

    3    3.1  1.5  1.5   0.000000008  -0.000000016   0.000000004  -0.000000003  -0.000000002   0.000000002   0.000000000   0.000000000
                         0.050958151   0.263018656  -0.005256582   0.338039432  -0.032789690   0.014911014   0.001372108  -0.317819638

    4    4.1  1.5  1.5   0.208581378  -0.040411270   0.062523738   0.000972258   0.028033410   0.061646133   0.082026575   0.000354129
                         0.433019889  -0.083894780   0.130633447   0.002031374  -0.149895262  -0.329623355  -0.205605845  -0.000887652

    5    5.1  1.5  1.5  -0.131502420   0.025477763  -0.147995342  -0.002301356   0.096508998   0.212225654   0.318086958   0.001373262
                         0.063343407  -0.012272372   0.070833484   0.001101477   0.018049111   0.039690423   0.126900985   0.000547864

    6    6.1  1.5  1.5   0.000000008  -0.000000018   0.000000002   0.000000000  -0.000000032   0.000000025  -0.000000000   0.000000003
                         0.037851581   0.195369551  -0.002104137   0.135312565  -0.337929467   0.153672445  -0.000390357   0.090417465

    7    7.1  1.5  1.5  -0.055233007  -0.285083121  -0.000684718   0.044032627   0.376836269  -0.171365201  -0.000187605   0.043454990
                         0.000000005  -0.000000011  -0.000000001   0.000000002  -0.000000035   0.000000026  -0.000000001   0.000000003

    8    1.1  1.5  0.5   0.075056015  -0.014541617  -0.129203336  -0.002009142   0.022084265   0.048563822  -0.054233599  -0.000234141
                         0.155818084  -0.030188761  -0.269949896  -0.004197776  -0.118085051  -0.259671915   0.135940627   0.000586891

    9    2.1  1.5  0.5  -0.034914634  -0.180210617   0.000050560  -0.003251303  -0.252531193   0.114837827   0.001285270  -0.297705481
                         0.000000002  -0.000000004  -0.000000000  -0.000000001   0.000000021  -0.000000016   0.000000000  -0.000000002

   10    3.1  1.5  0.5   0.350548849  -0.067916555  -0.184120557  -0.002863111   0.126211184   0.277541486  -0.200165215  -0.000864166
                        -0.168855887   0.032714724   0.088123722   0.001370344   0.023604016   0.051905789  -0.079856039  -0.000344760

   11    4.1  1.5  0.5  -0.048588548  -0.250787981  -0.006453769   0.415027845   0.117442634  -0.053406699   0.000342990  -0.079446414
                         0.000000008  -0.000000018  -0.000000005   0.000000004  -0.000000011   0.000000007  -0.000000000   0.000000001

   12    5.1  1.5  0.5  -0.000000011   0.000000024  -0.000000004   0.000000003   0.000000010  -0.000000008  -0.000000000  -0.000000001
                        -0.023124911  -0.119358376   0.005774066  -0.371317682   0.076000616  -0.034561059   0.001017895  -0.235773259

   13    6.1  1.5  0.5  -0.079902110   0.015480489   0.377120428   0.005864299   0.095433472   0.209860539   0.076604097   0.000330720
                         0.038488042  -0.007456810  -0.180497262  -0.002806775   0.017847965   0.039248100   0.030561250   0.000131940

   14    7.1  1.5  0.5   0.134905859  -0.026137118   0.155143261   0.002412513   0.007110554   0.015636274  -0.109831165  -0.000474170
                         0.280067759  -0.054261286   0.324147263   0.005040555  -0.038020274  -0.083607515   0.275300149   0.001188542

   15    1.1  1.5 -0.5  -0.033508505  -0.172952827   0.004653813  -0.299276542  -0.264174087   0.120132402  -0.000631873   0.146359616
                         0.000000007  -0.000000002   0.000000004  -0.000000004   0.000000025  -0.000000018   0.000000001  -0.000000002

   16    2.1  1.5 -0.5  -0.078205666   0.015151836   0.001403650   0.000021828  -0.021110947  -0.046423476  -0.110314848  -0.000476257
                        -0.162356831   0.031455581   0.002932702   0.000045606   0.112880708   0.248227445   0.276512546   0.001193775

   17    3.1  1.5 -0.5  -0.000000001   0.000000012  -0.000000002   0.000000000   0.000000028  -0.000000022   0.000000000  -0.000000003
                        -0.075385089  -0.389097424   0.003174153  -0.204122928   0.282353480  -0.128399426   0.000930399  -0.215506613

   18    4.1  1.5 -0.5  -0.108834003   0.021085873  -0.179175359  -0.002786218   0.009817897   0.021589790  -0.029438892  -0.000127096
                        -0.225941963   0.043774798  -0.374358522  -0.005821350  -0.052496518  -0.115441125   0.073790815   0.000318573

   19    5.1  1.5 -0.5  -0.107533319   0.020833890   0.334931597   0.005208254  -0.033972053  -0.074705379   0.218989128   0.000945433
                         0.051797750  -0.010035464  -0.160304855  -0.002492777  -0.006353456  -0.013971397   0.087365848   0.000377181

   20    6.1  1.5 -0.5  -0.000000012   0.000000004   0.000000005  -0.000000004   0.000000018  -0.000000013   0.000000001  -0.000000002
                         0.017182828   0.088688649  -0.006501384   0.418089798   0.213499085  -0.097088091  -0.000356067   0.082475316

   21    7.1  1.5 -0.5  -0.060228200  -0.310865792  -0.005588150   0.359361766  -0.085057096   0.038679468  -0.001279637   0.296400163
                         0.000000000  -0.000000020  -0.000000004   0.000000002   0.000000011  -0.000000009  -0.000000000  -0.000000001

   22    1.1  1.5 -1.5   0.131732932  -0.025522401   0.014465771   0.000224946  -0.002944228  -0.006474429  -0.166987204  -0.000720927
                         0.273480730  -0.052985118   0.030223938   0.000469989   0.015742863   0.034618944   0.418566103   0.001807057

   23    2.1  1.5 -1.5   0.008585834   0.044315403  -0.001249869   0.080376288   0.268267059  -0.121993669   0.001627017  -0.376863447
                        -0.000000013   0.000000021  -0.000000001   0.000000002  -0.000000027   0.000000021  -0.000000000   0.000000003

   24    3.1  1.5 -1.5  -0.236960925   0.045909640   0.304914341   0.004741478  -0.014656894  -0.032230874  -0.295194824  -0.001274431
                         0.114141726  -0.022114206  -0.145938007  -0.002269370  -0.002741132  -0.006027814  -0.117768156  -0.000508435

   25    4.1  1.5 -1.5   0.093120379   0.480637509   0.002252058  -0.144825120   0.335338339  -0.152494136  -0.000955685   0.221364230
                        -0.000000005   0.000000026   0.000000002  -0.000000000  -0.000000030   0.000000023  -0.000000000   0.000000003

   26    5.1  1.5 -1.5  -0.000000011   0.000000005   0.000000002  -0.000000001  -0.000000018   0.000000014  -0.000000000   0.000000002
                        -0.028279454  -0.145963261  -0.002551370   0.164073166  -0.215905205   0.098182264   0.001478514  -0.342466310

   27    6.1  1.5 -1.5  -0.176013936   0.034101562   0.122053045   0.001897948  -0.151053489  -0.332170323   0.083980862   0.000362568
                         0.084784172  -0.016426372  -0.058416988  -0.000908397  -0.028250023  -0.062122469   0.033504220   0.000144647

   28    7.1  1.5 -1.5   0.123716995  -0.023969359   0.019009718   0.000295606  -0.031502529  -0.069274809  -0.016102256  -0.000069517
                         0.256839427  -0.049760978   0.039717790   0.000617621   0.168444717   0.370414059   0.040361535   0.000174250

   29    1.1  0.5  0.5  -0.026646230   0.005162534   0.006234803   0.000096953  -0.000232528  -0.000511334  -0.017633108  -0.000076127
                        -0.055318216   0.010717540   0.013026632   0.000202567   0.001243332   0.002734118   0.044198725   0.000190817

   30    2.1  0.5  0.5   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000004   0.000000003  -0.000000000   0.000000000
                         0.006537723   0.033744207   0.000326592  -0.021002444  -0.037526484   0.017065060  -0.000079809   0.018485982

   31    3.1  0.5  0.5   0.022736929   0.117355826  -0.000246144   0.015828997  -0.019587263   0.008907251   0.000181570  -0.042056789
                        -0.000000002   0.000000004  -0.000000000   0.000000000   0.000000002  -0.000000001   0.000000000  -0.000000000

   32    4.1  0.5  0.5  -0.086655012   0.016788842  -0.041383805  -0.000643526   0.007635026   0.016789610  -0.004618006  -0.000019937
                         0.041740860  -0.008087016   0.019807104   0.000308005   0.001427903   0.003139992  -0.001842356  -0.000007954

   33    5.1  0.5  0.5  -0.059329508   0.011494713   0.013450722   0.000209162   0.017190569   0.037802482   0.020244988   0.000087403
                         0.028578436  -0.005536884  -0.006437780  -0.000100109   0.003214980   0.007069817   0.008076750   0.000034869

   34    6.1  0.5  0.5   0.005203033   0.026855267  -0.000297035   0.019101691  -0.034273061   0.015585575  -0.000114213   0.026454971
                        -0.000000003   0.000000006  -0.000000000  -0.000000000   0.000000003  -0.000000003   0.000000000  -0.000000000

   35    7.1  0.5  0.5   0.008166136  -0.001582135  -0.020240574  -0.000314746   0.000617952   0.001358890  -0.005467317  -0.000023604
                         0.016953090  -0.003284547  -0.042289473  -0.000657610  -0.003304202  -0.007266020   0.013704244   0.000059165

   36    8.1  0.5  0.5  -0.000000121   0.000000023   0.042194612   0.000656135   0.028479061   0.062626150  -0.155742176  -0.000672379
                         0.000000058  -0.000000011  -0.020195173  -0.000314040   0.005326154   0.011712339  -0.062133437  -0.000268246

   37    9.1  0.5  0.5   0.000000028  -0.000000005   0.014077357   0.000218906   0.014059640   0.030917481  -0.000727965  -0.000003143
                         0.000000058  -0.000000011   0.029412408   0.000457368  -0.075177203  -0.165316510   0.001824696   0.000007878

   38   10.1  0.5  0.5  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000004  -0.000000003   0.000000000  -0.000000000
                        -0.000000027  -0.000000141  -0.000624641   0.040169251   0.052388078  -0.023823326  -0.000751220   0.174003956

   39   11.1  0.5  0.5   0.000000045   0.000000230  -0.002529937   0.162694711   0.084108292  -0.038248003  -0.000060366   0.013982390
                        -0.000000000   0.000000000  -0.000000002   0.000000002  -0.000000007   0.000000005  -0.000000000   0.000000001

   40   12.1  0.5  0.5   0.000000000   0.000000000  -0.000000002   0.000000001   0.000000008  -0.000000006   0.000000000  -0.000000001
                         0.000000020   0.000000102   0.002570662  -0.165313700   0.080360163  -0.036543550  -0.000038775   0.008981474

   41    1.1  0.5 -0.5  -0.011896110  -0.061401357   0.000224573  -0.014441811  -0.002781521   0.001264889   0.000205442  -0.047586277
                        -0.000000002   0.000000001   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000   0.000000000

   42    2.1  0.5 -0.5  -0.030401108   0.005890019  -0.018944377  -0.000294589  -0.016774229  -0.036886941   0.017170009   0.000074127
                         0.014643911  -0.002837163   0.009067152   0.000140996  -0.003137116  -0.006898593   0.006849986   0.000029573

   43    3.1  0.5 -0.5  -0.050928690   0.009867101   0.006833677   0.000106265   0.001637444   0.003600778   0.015584155   0.000067281
                        -0.105729175   0.020484342   0.014277885   0.000222024  -0.008755449  -0.019253448  -0.039062868  -0.000168644

   44    4.1  0.5 -0.5  -0.000000001   0.000000007   0.000000001  -0.000000000  -0.000000002   0.000000001   0.000000000   0.000000000
                        -0.018635049  -0.096184149  -0.000713438   0.045879632  -0.017080707   0.007767402  -0.000021465   0.004971947

   45    5.1  0.5 -0.5  -0.000000004   0.000000005  -0.000000000   0.000000000  -0.000000003   0.000000003  -0.000000000   0.000000000
                        -0.012758743  -0.065853759   0.000231884  -0.014911973  -0.038457899   0.017488618   0.000094102  -0.021796638

   46    6.1  0.5 -0.5  -0.011654335   0.002257948   0.008246561   0.000128236   0.002865139   0.006300508  -0.009802897  -0.000042322
                        -0.024194666   0.004687560   0.017229882   0.000267928  -0.015319959  -0.033688965   0.024571705   0.000106083

   47    7.1  0.5 -0.5   0.003645737   0.018817360  -0.000729051   0.046883690   0.007391997  -0.003361490   0.000063699  -0.014754588
                         0.000000001   0.000000002  -0.000000001   0.000000000  -0.000000001   0.000000000  -0.000000000   0.000000000

   48    8.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000001   0.000000001  -0.000000007   0.000000005  -0.000000000   0.000000001
                        -0.000000026  -0.000000134   0.000727416  -0.046778524  -0.063711958   0.028972829  -0.000723913   0.167678828

   49    9.1  0.5 -0.5   0.000000013   0.000000065   0.000507056  -0.032607694   0.168182755  -0.076480620   0.000008482  -0.001964548
                         0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000016   0.000000012  -0.000000000   0.000000002

   50   10.1  0.5 -0.5   0.000000127  -0.000000025   0.036232994   0.000563431   0.023417319   0.051495258   0.161617033   0.000697742
                        -0.000000061   0.000000012  -0.017341824  -0.000269669   0.004379506   0.009630638   0.064477214   0.000278365

   51   11.1  0.5 -0.5  -0.000000100   0.000000019   0.070238379   0.001092223  -0.007031233  -0.015461850  -0.005181178  -0.000022368
                        -0.000000207   0.000000040   0.146751964   0.002282023   0.037596163   0.082674882   0.012987017   0.000056068

   52   12.1  0.5 -0.5  -0.000000092   0.000000018  -0.149114314  -0.002318757   0.035920758   0.078990629   0.008342105   0.000036014
                         0.000000044  -0.000000009   0.071369046   0.001109805   0.006717900   0.014772822   0.003328087   0.000014368


   Nr   State  S   Sz       25            26            27            28            29            30            31            32

    1    1.1  1.5  1.5   0.000000000   0.190394871   0.002255781  -0.266078483  -0.005252216  -0.084560832  -0.015435000   0.001320143
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.070264148  -0.000000000  -0.163791476  -0.001388604  -0.071240851   0.004424889  -0.004204155  -0.049154630
                         0.057559373   0.000000000  -0.035907457  -0.000304419   0.028573456  -0.001774746   0.000005035   0.000058848

    3    3.1  1.5  1.5   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000
                        -0.000000000  -0.120501184  -0.002186752   0.257936203   0.003735756   0.060145792   0.011678531  -0.000998856

    4    4.1  1.5  1.5   0.128509020   0.000000001   0.275392582   0.002334745   0.033035123  -0.002051867  -0.006262799  -0.073224108
                         0.105272726  -0.000000000   0.060373393   0.000511838  -0.013249810   0.000822968   0.000007500   0.000087666

    5    5.1  1.5  1.5  -0.077400662   0.000000000  -0.069263934  -0.000587211   0.022669893  -0.001408065  -0.000005177  -0.000060516
                         0.094484903   0.000000001   0.315946691   0.002678558   0.056521771  -0.003510663  -0.004323170  -0.050546130

    6    6.1  1.5  1.5   0.000000001  -0.000000002   0.000000001  -0.000000002   0.000000000  -0.000000001   0.000000006   0.000000001
                        -0.000000000   0.447975622   0.000607917  -0.071706352  -0.001459578  -0.023499247   0.068223251  -0.005835079

    7    7.1  1.5  1.5   0.000000000  -0.423027655  -0.000251390   0.029652583  -0.000046665  -0.000751309  -0.079115413   0.006766677
                         0.000000001  -0.000000002   0.000000001  -0.000000002   0.000000000  -0.000000001   0.000000007   0.000000001

    8    1.1  1.5  0.5   0.045501390  -0.000000000  -0.350245538  -0.002969339  -0.031038450   0.001927850  -0.004527935  -0.052940228
                         0.037274082   0.000000000  -0.076783157  -0.000650958   0.012448978  -0.000773227   0.000005422   0.000063381

    9    2.1  1.5  0.5  -0.000000000   0.036049876  -0.003804677   0.448776989   0.003192445   0.051398456   0.057749357  -0.004939256
                        -0.000000001   0.000000002  -0.000000000   0.000000002  -0.000000000   0.000000001  -0.000000004  -0.000000001

   10    3.1  1.5  0.5  -0.194902724   0.000000001  -0.053932575  -0.000457233  -0.017110252   0.001062747  -0.000005560  -0.000064988
                         0.237922574   0.000000001   0.246012863   0.002085668  -0.042660185   0.002649696  -0.004642734  -0.054282452

   11    4.1  1.5  0.5  -0.000000000   0.360795695  -0.000362219   0.042725156   0.001124717   0.018107975  -0.023945346   0.002048026
                        -0.000000001   0.000000002  -0.000000000   0.000000002  -0.000000000  -0.000000000   0.000000002   0.000000000

   12    5.1  1.5  0.5   0.000000001  -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000000
                        -0.000000000   0.323459101   0.001035300  -0.122117825   0.002822590   0.045443772  -0.010685103   0.000913888

   13    6.1  1.5  0.5  -0.089396234   0.000000000  -0.024734379  -0.000209695   0.003966572  -0.000246371  -0.000004792  -0.000056015
                         0.109128193   0.000000001   0.112825605   0.000956522   0.009889664  -0.000614264  -0.004001661  -0.046787081

   14    7.1  1.5  0.5   0.030475837  -0.000000000  -0.234586772  -0.001988798  -0.053015752   0.003292898  -0.000984688  -0.011512887
                         0.024965365   0.000000000  -0.051427673  -0.000435997   0.021263689  -0.001320724   0.000001179   0.000013782

   15    1.1  1.5 -0.5  -0.000000000  -0.058819501  -0.003039855   0.358563230  -0.002077134  -0.033441927   0.052940266  -0.004527938
                        -0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000005  -0.000000001

   16    2.1  1.5 -0.5   0.027887343   0.000000001   0.438366583   0.003716419  -0.047704441   0.002963003   0.004939252   0.057749316
                         0.022844905  -0.000000000   0.096101638   0.000814738   0.019133416  -0.001188409  -0.000005915  -0.000069140

   17    3.1  1.5 -0.5   0.000000001  -0.000000003   0.000000001  -0.000000002  -0.000000000   0.000000001  -0.000000005  -0.000000001
                        -0.000000000   0.307561738  -0.002135198   0.251855219   0.002854876   0.045963595  -0.054282491   0.004642737

   18    4.1  1.5 -0.5   0.279103118   0.000000001   0.041734049   0.000353817  -0.016806552   0.001043883  -0.002048024  -0.023945329
                         0.228637230  -0.000000000   0.009149214   0.000077566   0.006740813  -0.000418683   0.000002452   0.000028668

   19    5.1  1.5 -0.5   0.204976928  -0.000000000  -0.026150458  -0.000221701   0.016916745  -0.001050728   0.000001095   0.000012792
                        -0.250220401  -0.000000001   0.119285024   0.001011283   0.042177721  -0.002619730   0.000913888   0.010685095

   20    6.1  1.5 -0.5   0.000000001  -0.000000001   0.000000000  -0.000000001   0.000000000   0.000000001  -0.000000004  -0.000000000
                        -0.000000000   0.141069660  -0.000979238   0.115505007  -0.000661830  -0.010655475  -0.046787115   0.004001664

   21    7.1  1.5 -0.5  -0.000000000  -0.039396016  -0.002036028   0.240157780  -0.003547885  -0.057121050   0.011512895  -0.000984689
                        -0.000000000   0.000000001  -0.000000000   0.000000001  -0.000000000   0.000000000  -0.000000002  -0.000000000

   22    1.1  1.5 -1.5  -0.147285022   0.000000000   0.259906186   0.002203453  -0.078483432   0.004874738   0.001320142   0.015434989
                        -0.120653757   0.000000000   0.056978364   0.000483056   0.031478330  -0.001955172  -0.000001581  -0.000018480

   23    2.1  1.5 -1.5   0.000000000   0.090830237   0.001421581  -0.167681225   0.004767533   0.076757418  -0.049154665   0.004204158
                         0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000001   0.000000005   0.000000001

   24    3.1  1.5 -1.5   0.076361935   0.000000000  -0.055234766  -0.000468274  -0.022389670   0.001390660   0.000001196   0.000013983
                        -0.093216899   0.000000000   0.251952785   0.002136025  -0.055823105   0.003467267   0.000998855   0.011678523

   25    4.1  1.5 -1.5  -0.000000000   0.166123193  -0.002390191   0.281932653  -0.002210755  -0.035593213  -0.073224161   0.006262803
                        -0.000000001   0.000000002  -0.000000000   0.000000002   0.000000000  -0.000000001   0.000000006   0.000000001

   26    5.1  1.5 -1.5  -0.000000001   0.000000002  -0.000000000   0.000000002   0.000000000  -0.000000001   0.000000003   0.000000001
                         0.000000000  -0.122140326   0.002742169  -0.323449848   0.003782512   0.060898560   0.050546167  -0.004323173

   27    6.1  1.5 -1.5  -0.283883392   0.000000001   0.015355285   0.000130181   0.008747749  -0.000543338   0.000006987   0.000081678
                         0.346543472   0.000000001  -0.070042959  -0.000593815   0.021810353  -0.001354678   0.005835075   0.068223202

   28    7.1  1.5 -1.5   0.327244307   0.000000001  -0.028964724  -0.000245559  -0.000697312   0.000043312   0.006766672   0.079115357
                         0.268073796  -0.000000001  -0.006349841  -0.000053834   0.000279681  -0.000017371  -0.000008103  -0.000094719

   29    1.1  0.5  0.5  -0.000001051  -0.000000000   0.000000680   0.000000006  -0.254760319   0.015823593   0.003842720   0.044928745
                        -0.000000861  -0.000000000   0.000000149   0.000000001   0.102179901  -0.006346566  -0.000004601  -0.000053794

   30    2.1  0.5  0.5   0.000000000  -0.000000000   0.000000000   0.000000000   0.000000001  -0.000000004   0.000000021   0.000000003
                         0.000000000  -0.000003739  -0.000000008   0.000000902  -0.008163090  -0.131425997   0.230920224  -0.019750419

   31    3.1  0.5  0.5  -0.000000000  -0.000002734   0.000000003  -0.000000394   0.014526373   0.233875029   0.146959938  -0.012569366
                        -0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001   0.000000002  -0.000000009  -0.000000002

   32    4.1  0.5  0.5  -0.000001104  -0.000000000  -0.000000672  -0.000000006  -0.013643706   0.000847435  -0.000010545  -0.000123255
                         0.000001348   0.000000000   0.000003065   0.000000026  -0.034017214   0.002112867  -0.008805378  -0.102951717

   33    5.1  0.5  0.5  -0.000002708   0.000000000   0.000000036   0.000000000   0.038277161  -0.002377458  -0.000026479  -0.000309526
                         0.000003305  -0.000000000  -0.000000163  -0.000000001   0.095434626  -0.005927607  -0.022112278  -0.258534864

   34    6.1  0.5  0.5   0.000000000  -0.000004160   0.000000007  -0.000000779  -0.010781425  -0.173581267   0.202849961  -0.017349593
                         0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000004  -0.000000020  -0.000000004

   35    7.1  0.5  0.5  -0.000000867   0.000000000  -0.000003732  -0.000000032  -0.086308059   0.005360739  -0.003635650  -0.042507732
                        -0.000000710   0.000000000  -0.000000818  -0.000000007   0.034616650  -0.002150098   0.000004353   0.000050891

   36    8.1  0.5  0.5  -0.026207652  -0.000000000   0.053991582   0.000457734   0.233721354  -0.014516828   0.000020109   0.000235043
                         0.031992326  -0.000000000  -0.246282017  -0.002087949   0.582726418  -0.036194120   0.016792002   0.196330687

   37    9.1  0.5  0.5   0.152925854   0.000000001   0.158123552   0.001340553   0.063626219  -0.003951930   0.056497261   0.660561155
                         0.125274643  -0.000000000   0.034664896   0.000293884  -0.025519350   0.001585053  -0.000067655  -0.000790840

   38   10.1  0.5  0.5  -0.000000000   0.000000001  -0.000000000   0.000000000   0.000000000  -0.000000002   0.000000013   0.000000002
                         0.000000000   0.073913465   0.002073488  -0.244576302   0.037534297   0.604303266   0.267202085  -0.022853580

   39   11.1  0.5  0.5   0.000000000  -0.239046776  -0.000765154   0.090253059   0.000822271   0.013238544   0.343427249  -0.029373052
                         0.000000000  -0.000000001   0.000000000  -0.000000001   0.000000001   0.000000004  -0.000000028  -0.000000004

   40   12.1  0.5  0.5  -0.000000001   0.000000002  -0.000000000   0.000000001   0.000000003  -0.000000006   0.000000028   0.000000006
                         0.000000000  -0.244595305   0.000626606  -0.073910615   0.000503769   0.008110727   0.312189403  -0.026701309

   41    1.1  0.5 -0.5   0.000000000  -0.000001358  -0.000000006   0.000000696   0.017048901   0.274487799   0.044928777  -0.003842723
                         0.000000000   0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001   0.000000000

   42    2.1  0.5 -0.5   0.000002370   0.000000000  -0.000000193  -0.000000002   0.048924194  -0.003038765   0.000023651   0.000276462
                        -0.000002893  -0.000000000   0.000000881   0.000000007   0.121980391  -0.007576407   0.019750405   0.230920058

   43    3.1  0.5 -0.5   0.000002115  -0.000000000   0.000000385   0.000000003   0.217066393  -0.013482360  -0.012569357  -0.146959833
                         0.000001733  -0.000000000   0.000000084   0.000000001  -0.087061530   0.005407538   0.000015051   0.000175947

   44    4.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000002   0.000000010   0.000000002
                         0.000000000  -0.000001742   0.000000027  -0.000003138  -0.002276478  -0.036651351   0.102951791  -0.008805384

   45    5.1  0.5 -0.5   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000001  -0.000000004   0.000000020   0.000000003
                        -0.000000000  -0.000004273  -0.000000001   0.000000167   0.006386613   0.102824651   0.258535050  -0.022112294

   46    6.1  0.5 -0.5   0.000003218   0.000000000   0.000000761   0.000000006  -0.161105956   0.010006562  -0.017349580  -0.202849816
                         0.000002636  -0.000000000   0.000000167   0.000000001   0.064616773  -0.004013458   0.000020776   0.000242854

   47    7.1  0.5 -0.5  -0.000000000  -0.000001121   0.000000032  -0.000003821   0.005775849   0.092991363  -0.042507763   0.003635653
                        -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001  -0.000000000   0.000000004   0.000000000

   48    8.1  0.5 -0.5   0.000000000  -0.000000001   0.000000000  -0.000000001  -0.000000000   0.000000004  -0.000000026  -0.000000004
                        -0.000000000  -0.041356377  -0.002137534   0.252130766   0.038996828   0.627850101  -0.196330827   0.016792014

   49    9.1  0.5 -0.5  -0.000000000   0.197686755  -0.001372388   0.161878698  -0.004257950  -0.068553140   0.660561629  -0.056497302
                        -0.000000001   0.000000002  -0.000000000   0.000000001  -0.000000003   0.000000011  -0.000000058  -0.000000010

   50   10.1  0.5 -0.5  -0.046839168  -0.000000000   0.052373860   0.000444019  -0.224955895   0.013972390   0.000027365   0.000319911
                         0.057177729  -0.000000000  -0.238902797  -0.002025389  -0.560871896   0.034836701   0.022853563   0.267201893

   51   11.1  0.5 -0.5   0.184920999   0.000000000  -0.088159434  -0.000747405   0.012287086  -0.000763174  -0.029373031  -0.343427003
                         0.151484604  -0.000000000  -0.019326898  -0.000163851  -0.004928140   0.000306096   0.000035172   0.000411161

   52   12.1  0.5 -0.5   0.155000721  -0.000000000   0.015827306   0.000134182  -0.003019277   0.000187529   0.000031976   0.000373760
                        -0.189213212  -0.000000001  -0.072196090  -0.000612070  -0.007527805   0.000467565   0.026701290   0.312189179


   Nr   State  S   Sz       33            34            35            36            37            38            39            40

    1    1.1  1.5  1.5   0.000225216   0.007007490   0.000000000  -0.020372394  -0.015571427  -0.054575087   0.000888161  -0.071533642
                        -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.013950099  -0.000448348   0.003415547  -0.000000004  -0.012950461   0.003695032  -0.095839640  -0.001189938
                        -0.000109147   0.000003509   0.006239585  -0.000000004   0.045229380  -0.012904940  -0.057962055  -0.000719619

    3    3.1  1.5  1.5  -0.000000003  -0.000000001   0.000000027   0.000000018   0.000000009  -0.000000013   0.000000013   0.000000005
                         0.002055472   0.063954906  -0.000000001  -0.103923377  -0.007005213  -0.024551988  -0.000386896   0.031161926

    4    4.1  1.5  1.5  -0.028157353   0.000904960   0.010464701  -0.000000006   0.003965570  -0.001131461  -0.002227768  -0.000027662
                         0.000220305  -0.000007082   0.019117137   0.000000003  -0.013849743   0.003951618  -0.001347304  -0.000016729

    5    5.1  1.5  1.5  -0.000244851   0.000007871  -0.050295523  -0.000000006  -0.069125994   0.019723117  -0.014199378  -0.000176308
                        -0.031294490   0.001005786   0.027531714  -0.000000018  -0.019792713   0.005647282   0.023478535   0.000291514

    6    6.1  1.5  1.5  -0.000000001  -0.000000000   0.000000013   0.000000011  -0.000000001   0.000000000  -0.000000003   0.000000001
                         0.000863193   0.026857798  -0.000000002  -0.052709822   0.000626219   0.002194760   0.000277779  -0.022372969

    7    7.1  1.5  1.5   0.000237905   0.007402277   0.000000002  -0.008127443  -0.014630162  -0.051276071   0.000096870  -0.007801412
                         0.000000001   0.000000000   0.000000001   0.000000003  -0.000000005   0.000000007  -0.000000010  -0.000000001

    8    1.1  1.5  0.5   0.056014827  -0.001800283   0.007409221  -0.000000009  -0.022807576   0.006507483   0.031461016   0.000390623
                        -0.000438265   0.000014089   0.013535316   0.000000002   0.079655382  -0.022727376   0.019027035   0.000236251

    9    2.1  1.5  0.5  -0.000012544  -0.000390282  -0.000000000   0.041436854   0.000422487   0.001480707   0.000600717  -0.048383163
                         0.000000000  -0.000000000   0.000000012   0.000000007   0.000000006  -0.000000009   0.000000010   0.000000003

   10    3.1  1.5  0.5  -0.000312997   0.000010061   0.000007430   0.000000002   0.007935760  -0.002264238   0.022790038   0.000282955
                        -0.040004290   0.001285713  -0.000004069   0.000000002   0.002272229  -0.000648316  -0.037683079  -0.000467870

   11    4.1  1.5  0.5   0.002525476   0.078578830   0.000000003  -0.014023977  -0.015757182  -0.055226032  -0.000545502   0.043936796
                         0.000000004   0.000000001  -0.000000001   0.000000003  -0.000000011   0.000000014  -0.000000020  -0.000000003

   12    5.1  1.5  0.5   0.000000003   0.000000001  -0.000000010  -0.000000011   0.000000007  -0.000000007   0.000000013   0.000000000
                        -0.002291645  -0.071303321   0.000000004   0.047488097   0.000042601   0.000149381  -0.001030059   0.082963200

   13    6.1  1.5  0.5   0.000619293  -0.000019908   0.086521559   0.000000009   0.035095231  -0.010013415  -0.005199559  -0.000064552
                         0.079152056  -0.002543899  -0.047361800   0.000000024   0.010048746  -0.002867125   0.008597403   0.000106740

   14    7.1  1.5  0.5  -0.069146950   0.002222341   0.024425570  -0.000000008   0.022811308  -0.006508543   0.008138782   0.000101045
                         0.000541012  -0.000017391   0.044621165   0.000000007  -0.079668385   0.022731093   0.004922201   0.000061091

   15    1.1  1.5 -0.5  -0.001800338  -0.056016542   0.000000003   0.015430532  -0.023640663  -0.082856294   0.000456510  -0.036767153
                        -0.000000003  -0.000000001   0.000000009   0.000000008  -0.000000003   0.000000003  -0.000000008  -0.000000006

   16    2.1  1.5 -0.5  -0.000390270   0.000012543  -0.019896568   0.000000010  -0.000407597   0.000116291  -0.041400628  -0.000514028
                         0.000003054  -0.000000098  -0.036347482  -0.000000006   0.001423502  -0.000406167  -0.025038340  -0.000310864

   17    3.1  1.5 -0.5   0.000000002   0.000000000  -0.000000003  -0.000000002  -0.000000001   0.000000002  -0.000000003  -0.000000006
                        -0.001285753  -0.040005515  -0.000000000   0.000008471  -0.002355225  -0.008254654   0.000546778  -0.044038623

   18    4.1  1.5 -0.5   0.078576425  -0.002525399   0.006733832   0.000000001   0.015201897  -0.004337416   0.037595949   0.000466787
                        -0.000614789   0.000019763   0.012301522   0.000000004  -0.053092532   0.015148452   0.022737341   0.000282281

   19    5.1  1.5 -0.5   0.000557866  -0.000017933  -0.041655496  -0.000000002   0.000143612  -0.000040953   0.042933543   0.000533045
                         0.071301139  -0.002291575   0.022802171  -0.000000011   0.000041112  -0.000011733  -0.070990164  -0.000881410

   20    6.1  1.5 -0.5  -0.000000004  -0.000000001  -0.000000026  -0.000000019  -0.000000002   0.000000004   0.000000002   0.000000007
                         0.002543977   0.079154479   0.000000004   0.098636303  -0.010415800  -0.036505514  -0.000124742   0.010047425

   21    7.1  1.5 -0.5   0.002222409   0.069149067  -0.000000002   0.050869017   0.023644528   0.082869822   0.000118077  -0.009511458
                         0.000000003   0.000000001   0.000000011   0.000000006   0.000000007  -0.000000011   0.000000016   0.000000013

   22    1.1  1.5 -1.5  -0.007007276   0.000225209  -0.009782128  -0.000000000  -0.015022701   0.004286294   0.061210091   0.000759984
                         0.000054825  -0.000001762  -0.017870210   0.000000000   0.052466738  -0.014969870   0.037018735   0.000459624

   23    2.1  1.5 -1.5   0.000448362   0.013950526  -0.000000005  -0.007113254   0.013423514   0.047046905   0.001390613  -0.112003734
                         0.000000001   0.000000000  -0.000000001  -0.000000006   0.000000015  -0.000000019   0.000000028   0.000000007

   24    3.1  1.5 -1.5   0.000500373  -0.000016085  -0.091159263  -0.000000012   0.023603491  -0.006734589  -0.016126334  -0.000200208
                         0.063952949  -0.002055409   0.049900472  -0.000000024   0.006758356  -0.001928293   0.026664714   0.000331067

   25    4.1  1.5 -1.5  -0.000904988  -0.028158215  -0.000000001  -0.021793919  -0.004110413  -0.014406287   0.000032327  -0.002603494
                        -0.000000001  -0.000000000  -0.000000007  -0.000000006   0.000000002  -0.000000001   0.000000001  -0.000000008

   26    5.1  1.5 -1.5  -0.000000002  -0.000000000  -0.000000018  -0.000000014   0.000000000   0.000000001   0.000000006   0.000000006
                         0.001005817   0.031295448   0.000000004   0.057337901  -0.020515680  -0.071903787   0.000340683  -0.027438366

   27    6.1  1.5 -1.5   0.000210131  -0.000006755  -0.046235877  -0.000000005  -0.002109972   0.000602027   0.011578034   0.000143748
                         0.026856976  -0.000863167   0.025309466  -0.000000013  -0.000604144   0.000172376  -0.019144160  -0.000237693

   28    7.1  1.5 -1.5  -0.007402050   0.000237898  -0.003902518  -0.000000002  -0.014114598   0.004027190   0.006675533   0.000082885
                         0.000057914  -0.000001862  -0.007129213  -0.000000001   0.049295168  -0.014064970   0.004037238   0.000050139

   29    1.1  0.5  0.5  -0.086680099   0.002785845  -0.031404850   0.000000016   0.060635497  -0.017300551   0.548952222   0.006815743
                         0.000678192  -0.000021800  -0.057371035   0.000000021  -0.211768988   0.060422356   0.331996257   0.004121877

   30    2.1  0.5  0.5   0.000000007   0.000000002   0.000000092   0.000000045   0.000000078  -0.000000107   0.000000134   0.000000031
                        -0.003819450  -0.118840113   0.000000012  -0.446658617  -0.128263046  -0.449538661  -0.001815916   0.146264754

   31    3.1  0.5  0.5   0.002966140   0.092289876   0.000000011   0.359105500  -0.076548926  -0.268290414   0.005433994  -0.437662495
                         0.000000005   0.000000001   0.000000123   0.000000090   0.000000021  -0.000000037   0.000000025   0.000000020

   32    4.1  0.5  0.5  -0.002115276   0.000067997   0.177868708   0.000000021  -0.305197195   0.087079199  -0.080117655  -0.000994773
                        -0.270354384   0.008689025  -0.097365122   0.000000039  -0.087386536   0.024933222   0.132473837   0.001644817

   33    5.1  0.5  0.5   0.000665740  -0.000021401   0.231636081   0.000000012   0.585811402  -0.167144595  -0.102118437  -0.001267711
                         0.085088489  -0.002734693  -0.126797368   0.000000100   0.167734333  -0.047858127   0.168851675   0.002096418

   34    6.1  0.5  0.5   0.003731315   0.116097914   0.000000019   0.584268217   0.054592474   0.191337129  -0.005070401   0.408378230
                         0.000000004   0.000000001   0.000000131   0.000000104  -0.000000001  -0.000000010  -0.000000016   0.000000015

   35    7.1  0.5  0.5   0.273150853  -0.008778902   0.203969299  -0.000000111  -0.068230134   0.019467543   0.285165853   0.003540633
                        -0.002137156   0.000068701   0.372615528   0.000000050   0.238293761  -0.067990181   0.172463008   0.002141258

   36    8.1  0.5  0.5  -0.001256441   0.000040392  -0.000000491   0.000000000  -0.000000471   0.000000134   0.000000197   0.000000002
                        -0.160586172   0.005161144   0.000000269   0.000000000  -0.000000135   0.000000038  -0.000000325  -0.000000004

   37    9.1  0.5  0.5   0.126843665  -0.004076675  -0.000001156   0.000000000   0.000000264  -0.000000075   0.000001425   0.000000018
                        -0.000992434   0.000031901  -0.000002112  -0.000000000  -0.000000922   0.000000263   0.000000862   0.000000011

   38   10.1  0.5  0.5   0.000000005   0.000000001   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000
                        -0.004748214  -0.147738158  -0.000000000  -0.000000757   0.000000227   0.000000797   0.000000009  -0.000000717

   39   11.1  0.5  0.5  -0.018768313  -0.583965988  -0.000000000  -0.000000791  -0.000000058  -0.000000204   0.000000021  -0.000001700
                        -0.000000030  -0.000000007  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

   40   12.1  0.5  0.5  -0.000000029  -0.000000006  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000
                         0.019330003   0.601442772   0.000000000   0.000001552   0.000000744   0.000002608  -0.000000066   0.000005331

   41    1.1  0.5 -0.5  -0.002785931  -0.086682753   0.000000026   0.065404130  -0.062850379  -0.220278840  -0.007965188   0.641537261
                        -0.000000003  -0.000000001   0.000000004   0.000000024  -0.000000064   0.000000085  -0.000000136  -0.000000062

   42    2.1  0.5 -0.5  -0.000929787   0.000029890  -0.391798967  -0.000000055   0.432172020  -0.123308000  -0.075692189  -0.000939624
                        -0.118836476   0.003819333   0.214470250  -0.000000075   0.123743097  -0.035306462   0.125156185   0.001553917

   43    3.1  0.5 -0.5  -0.092287051   0.002966049   0.172430273  -0.000000113  -0.073851363   0.021071385   0.374500160   0.004649787
                         0.000722062  -0.000023212   0.314999304   0.000000050   0.257925806  -0.073591676   0.226490816   0.002812076

   44    4.1  0.5 -0.5  -0.000000013  -0.000000003   0.000000044   0.000000038  -0.000000002  -0.000000008   0.000000015   0.000000068
                         0.008689291   0.270362659  -0.000000000  -0.202773875  -0.090578433  -0.317461390   0.001922238  -0.154816523

   45    5.1  0.5 -0.5   0.000000004   0.000000001   0.000000094   0.000000094  -0.000000062   0.000000074  -0.000000140  -0.000000049
                        -0.002734777  -0.085091093  -0.000000038  -0.264069774   0.173861197   0.609351956   0.002449910  -0.197329835

   46    6.1  0.5 -0.5  -0.116094361   0.003731201   0.280545731  -0.000000124   0.052668737  -0.015027488  -0.349442143  -0.004338662
                         0.000908332  -0.000029198   0.512507016   0.000000047  -0.183945376   0.052483454  -0.211336149  -0.002623924

   47    7.1  0.5 -0.5   0.008779171   0.273159213  -0.000000009  -0.424789131   0.070722345   0.247869458  -0.004137761   0.333261238
                         0.000000014   0.000000003  -0.000000122  -0.000000078  -0.000000043   0.000000060  -0.000000044   0.000000037

   48    8.1  0.5 -0.5  -0.000000011  -0.000000003   0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000
                         0.005161302   0.160591087  -0.000000000   0.000000560  -0.000000140  -0.000000490  -0.000000005   0.000000380

   49    9.1  0.5 -0.5   0.004076800   0.126847548  -0.000000000   0.000002408  -0.000000274  -0.000000959  -0.000000021   0.000001665
                         0.000000004  -0.000000000   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000

   50   10.1  0.5 -0.5  -0.001155880   0.000037154  -0.000000664  -0.000000000  -0.000000767   0.000000219   0.000000371   0.000000005
                        -0.147733636   0.004748069   0.000000364  -0.000000000  -0.000000219   0.000000063  -0.000000613  -0.000000008

   51   11.1  0.5 -0.5   0.583948115  -0.018767738  -0.000000380   0.000000000  -0.000000056   0.000000016   0.000001455   0.000000018
                        -0.004568861   0.000146870  -0.000000694   0.000000000   0.000000196  -0.000000056   0.000000880   0.000000011

   52   12.1  0.5 -0.5   0.004705595  -0.000151264   0.000001362   0.000000000  -0.000002507   0.000000715  -0.000002759  -0.000000034
                         0.601424364  -0.019329411  -0.000000745   0.000000000  -0.000000718   0.000000205   0.000004562   0.000000057


   Nr   State  S   Sz       41            42            43            44            45            46            47            48

    1    1.1  1.5  1.5  -0.044625410   0.000000000   0.078054008  -0.019895978   0.119784925   0.006627211   0.069854115   0.000000000
                         0.000000000   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000003   0.010866794  -0.002881905  -0.011306016   0.004107421  -0.074240454  -0.000000001  -0.066876228
                        -0.000000006   0.022512115  -0.008903590  -0.034929716  -0.000628215   0.011354799  -0.000000001   0.052179791

    3    3.1  1.5  1.5  -0.000000003   0.000000001  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000   0.000000000
                         0.010641255  -0.000000004  -0.048257543   0.012300855  -0.115281814  -0.006378072  -0.049994295   0.000000000

    4    4.1  1.5  1.5   0.000000007   0.043551346  -0.005860008  -0.022989426  -0.006676979   0.120684470  -0.000000001   0.005672380
                         0.000000008   0.090222885  -0.018104380  -0.071025380   0.001021219  -0.018458238  -0.000000001  -0.004425842

    5    5.1  1.5  1.5   0.000000007   0.014330452   0.013670248   0.053629818  -0.001179124   0.021312320   0.000000001   0.022961054
                        -0.000000002  -0.006917432  -0.004424773  -0.017358848  -0.007709398   0.139345155  -0.000000001   0.029428034

    6    6.1  1.5  1.5  -0.000000007   0.000000002  -0.000000001   0.000000001   0.000000001   0.000000000   0.000000000  -0.000000002
                         0.025570887  -0.000000002   0.190728852  -0.048616812   0.037492196   0.002074290   0.043615620  -0.000000000

    7    7.1  1.5  1.5  -0.052526067  -0.000000000  -0.180592861   0.046033147  -0.018629801  -0.001030711  -0.026013089   0.000000001
                        -0.000000006   0.000000002  -0.000000001   0.000000001   0.000000001   0.000000000   0.000000000  -0.000000002

    8    1.1  1.5  0.5  -0.000000002   0.001362504  -0.001615921  -0.006339428   0.008685802  -0.156993375  -0.000000001  -0.037811377
                        -0.000000006   0.002822633  -0.004992357  -0.019585540  -0.001328461   0.024011549  -0.000000001   0.029502109

    9    2.1  1.5  0.5  -0.009622583   0.000000002   0.021149657  -0.005391051  -0.197340911  -0.010918066  -0.026214144  -0.000000000
                         0.000000001  -0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000000   0.000000001

   10    3.1  1.5  0.5   0.000000005   0.065063291   0.032685058   0.128226911  -0.000894776   0.016172826   0.000000001  -0.036155204
                        -0.000000003  -0.031406593  -0.010579468  -0.041504362  -0.005850266   0.105741885  -0.000000001  -0.046338316

   11    4.1  1.5  0.5  -0.060005505  -0.000000001   0.154886201  -0.039480515  -0.014096885  -0.000779923  -0.024761975   0.000000001
                        -0.000000010   0.000000004   0.000000001  -0.000000001  -0.000000001  -0.000000000  -0.000000000  -0.000000001

   12    5.1  1.5  0.5   0.000000011  -0.000000004  -0.000000001   0.000000000   0.000000001   0.000000000  -0.000000000   0.000000000
                        -0.027305889   0.000000001   0.136811628  -0.034873304   0.058081489   0.003213412  -0.043394723  -0.000000000

   13    6.1  1.5  0.5  -0.000000008  -0.060812454   0.014991495   0.058813205  -0.000410405   0.007417951   0.000000000  -0.004247872
                         0.000000003   0.029354679  -0.004852433  -0.019036601  -0.002683328   0.048500377  -0.000000001  -0.005444286

   14    7.1  1.5  0.5   0.000000006   0.027271135  -0.001082388  -0.004246324   0.005817887  -0.105156639  -0.000000000  -0.042622340
                         0.000000012   0.056496078  -0.003344019  -0.013118935  -0.000889824   0.016083314  -0.000000000   0.033255835

   15    1.1  1.5 -0.5  -0.003134274  -0.000000007  -0.020585959   0.005247364  -0.158818998  -0.008786806   0.047959093  -0.000000001
                         0.000000004   0.000000001   0.000000001  -0.000000000  -0.000000001  -0.000000000  -0.000000000   0.000000001

   16    2.1  1.5 -0.5  -0.000000000  -0.004183054  -0.001660170  -0.006513020  -0.010792563   0.195072478   0.000000001  -0.020667464
                        -0.000000002  -0.008665805  -0.005129061  -0.020121843   0.001650682  -0.029835605   0.000000001   0.016125670

   17    3.1  1.5 -0.5   0.000000008  -0.000000001  -0.000000002   0.000000001   0.000000001   0.000000000  -0.000000000   0.000000001
                        -0.072246840   0.000000006   0.134776677  -0.034354595  -0.106971522  -0.005918297  -0.058774470   0.000000000

   18    4.1  1.5 -0.5  -0.000000003  -0.026085137  -0.012157991  -0.047697072  -0.000770958   0.013934841  -0.000000001  -0.019522562
                         0.000000003  -0.054039117  -0.037561874  -0.147359169   0.000117915  -0.002131283  -0.000000000   0.015232367

   19    5.1  1.5 -0.5   0.000000001  -0.024590843  -0.033178560  -0.130162969  -0.000485830   0.008781231  -0.000000000   0.026694329
                         0.000000004   0.011870214   0.010739204   0.042131022  -0.003176474   0.057413843   0.000000000   0.034212787

   20    6.1  1.5 -0.5  -0.000000008  -0.000000001  -0.000000001   0.000000000   0.000000001   0.000000000   0.000000000   0.000000001
                         0.067526674  -0.000000009   0.061817354  -0.015757253  -0.049064372  -0.002714531  -0.006905408   0.000000001

   21    7.1  1.5 -0.5  -0.062733736   0.000000013  -0.013789044   0.003514829  -0.106379471  -0.005885541   0.054061210   0.000000000
                        -0.000000012   0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000000  -0.000000000   0.000000000

   22    1.1  1.5 -1.5  -0.000000000   0.019399212   0.006126949   0.024036664  -0.006551031   0.118407998  -0.000000000  -0.055073607
                         0.000000000   0.040188279   0.018929090   0.074260804   0.001001956  -0.018110059  -0.000000000   0.042970865

   23    2.1  1.5 -1.5   0.024997650   0.000000004   0.036713909  -0.009358381   0.075103771   0.004155185  -0.084824292   0.000000001
                         0.000000010  -0.000000005  -0.000000000   0.000000000   0.000000000   0.000000000   0.000000000  -0.000000001

   24    3.1  1.5 -1.5  -0.000000004  -0.009583187  -0.011703068  -0.045912363  -0.000964289   0.017429243  -0.000000000  -0.030754066
                         0.000000002   0.004625887   0.003788037   0.014860868  -0.006304756   0.113956650  -0.000000000  -0.039415948

   25    4.1  1.5 -1.5   0.100184274  -0.000000010   0.074653321  -0.019029142  -0.122087869  -0.006754623   0.007194718   0.000000000
                         0.000000016  -0.000000003   0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000001

   26    5.1  1.5 -1.5  -0.000000004  -0.000000001   0.000000001  -0.000000001  -0.000000001  -0.000000000   0.000000000  -0.000000001
                         0.015912659  -0.000000007  -0.056369202   0.014368518   0.140965553   0.007799048  -0.037325851  -0.000000000

   27    6.1  1.5 -1.5  -0.000000001  -0.023028356   0.046254172   0.181459968   0.000313608  -0.005668374  -0.000000001   0.026830215
                         0.000000003   0.011115984  -0.014971506  -0.058734785   0.002050446  -0.037061223   0.000000001   0.034386944

   28    7.1  1.5 -1.5   0.000000002   0.022833730  -0.014175868  -0.055613416   0.001018863  -0.018415651   0.000000001   0.020508952
                        -0.000000001   0.047303366  -0.043796066  -0.171816558  -0.000155831   0.002816604   0.000000001  -0.016001991

   29    1.1  0.5  0.5   0.000000008   0.125446654  -0.000000114  -0.000000448   0.000000095  -0.000001716  -0.000000000   0.379384644
                         0.000000058   0.259880911  -0.000000353  -0.000001385  -0.000000015   0.000000262   0.000000001  -0.296012681

   30    2.1  0.5  0.5   0.000000037  -0.000000017  -0.000000000   0.000000000  -0.000000000  -0.000000000  -0.000000001   0.000000012
                        -0.334993455  -0.000000018   0.000005001  -0.000001275   0.000001689   0.000000093  -0.412362697   0.000000005

   31    3.1  0.5  0.5  -0.391516667   0.000000018   0.000006032  -0.000001537  -0.000003110  -0.000000172   0.335587326   0.000000000
                        -0.000000033   0.000000010  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000001  -0.000000005

   32    4.1  0.5  0.5   0.000000063   0.553380110  -0.000001313  -0.000005149   0.000000033  -0.000000597  -0.000000005   0.084473170
                        -0.000000051  -0.267121253   0.000000425   0.000001667   0.000000216  -0.000003903   0.000000002   0.108265038

   33    5.1  0.5  0.5  -0.000000050   0.183334007  -0.000001451  -0.000005691  -0.000000034   0.000000612  -0.000000006  -0.004747533
                        -0.000000010  -0.088496872   0.000000470   0.000001842  -0.000000221   0.000004000   0.000000010  -0.006084674

   34    6.1  0.5  0.5  -0.062471470   0.000000018   0.000004055  -0.000001034  -0.000002701  -0.000000149  -0.467537946   0.000000002
                        -0.000000058   0.000000020  -0.000000000   0.000000000  -0.000000000   0.000000000   0.000000002  -0.000000011

   35    7.1  0.5  0.5  -0.000000031  -0.191319850   0.000000170   0.000000668  -0.000000214   0.000003869   0.000000005   0.164829985
                        -0.000000042  -0.396346598   0.000000526   0.000002062   0.000000033  -0.000000592  -0.000000000  -0.128607646

   36    8.1  0.5  0.5   0.000000000  -0.000000868  -0.017998355  -0.070609434  -0.004789405   0.086567118  -0.000000002   0.193200467
                         0.000000000   0.000000419   0.005825689   0.022854790  -0.031314300   0.565996981   0.000000003   0.247615373

   37    9.1  0.5  0.5  -0.000000000   0.000000028   0.034862867   0.136770679   0.019279068  -0.348463630   0.000000006   0.111796298
                        -0.000000000   0.000000057   0.107708140   0.422550326  -0.002948661   0.053296210   0.000000005  -0.087228415

   38   10.1  0.5  0.5  -0.000000000  -0.000000000  -0.000000002   0.000000001   0.000000001   0.000000000   0.000000000  -0.000000002
                         0.000001299   0.000000000  -0.146112244   0.037244033  -0.557699879  -0.030855256  -0.223949119  -0.000000001

   39   11.1  0.5  0.5  -0.000000462   0.000000000   0.518338617  -0.132124589   0.220059411   0.012174989   0.054487484  -0.000000003
                        -0.000000000   0.000000000   0.000000003  -0.000000002  -0.000000002  -0.000000000  -0.000000000   0.000000004

   40   12.1  0.5  0.5   0.000000000  -0.000000000  -0.000000005   0.000000003   0.000000004   0.000000000   0.000000001  -0.000000003
                        -0.000001072   0.000000000   0.541237205  -0.137961443  -0.150548917  -0.008329256   0.046789298   0.000000001

   41    1.1  0.5 -0.5   0.288573995  -0.000000056   0.000001456  -0.000000371   0.000001736   0.000000096   0.481202884   0.000000001
                         0.000000004   0.000000018  -0.000000000  -0.000000000   0.000000000   0.000000000  -0.000000000   0.000000000

   42    2.1  0.5 -0.5  -0.000000023   0.301684842   0.000001213   0.000004758   0.000000014  -0.000000255   0.000000007  -0.253665535
                        -0.000000007  -0.145625791  -0.000000393  -0.000001540   0.000000092  -0.000001670  -0.000000011  -0.325110428

   43    3.1  0.5 -0.5   0.000000017   0.170197121   0.000000473   0.000001857   0.000000170  -0.000003074   0.000000003  -0.264580039
                         0.000000012   0.352587919   0.000001463   0.000005738  -0.000000026   0.000000470   0.000000004   0.206437052

   44    4.1  0.5 -0.5  -0.000000116   0.000000019   0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000002   0.000000005
                         0.614478079  -0.000000079   0.000005412  -0.000001380  -0.000003948  -0.000000218  -0.137320919  -0.000000002

   45    5.1  0.5 -0.5  -0.000000037   0.000000031  -0.000000000  -0.000000000   0.000000000  -0.000000000  -0.000000001   0.000000011
                         0.203575672   0.000000041   0.000005981  -0.000001525   0.000004047   0.000000224   0.007717663   0.000000004

   46    6.1  0.5 -0.5   0.000000026   0.027157165   0.000000318   0.000001249   0.000000148  -0.000002670   0.000000008   0.368611086
                         0.000000007   0.056259869   0.000000983   0.000003858  -0.000000023   0.000000408   0.000000007  -0.287606672

   47    7.1  0.5 -0.5  -0.440106704   0.000000051  -0.000002168   0.000000553  -0.000003914  -0.000000217   0.209066618  -0.000000004
                        -0.000000082   0.000000010   0.000000000  -0.000000000  -0.000000000   0.000000000   0.000000001   0.000000003

   48    8.1  0.5 -0.5  -0.000000000  -0.000000000   0.000000003  -0.000000001  -0.000000002  -0.000000000  -0.000000000   0.000000004
                        -0.000000963  -0.000000000   0.074216128  -0.018917702   0.572578770   0.031678444  -0.314069727   0.000000002

   49    9.1  0.5 -0.5   0.000000063   0.000000000  -0.444133985   0.113209818   0.352515798   0.019503258   0.141799890  -0.000000002
                        -0.000000000   0.000000000  -0.000000006   0.000000003   0.000000004   0.000000000  -0.000000001   0.000000007

   50   10.1  0.5 -0.5   0.000000000  -0.000001169  -0.035434078  -0.139011603  -0.004664949   0.084317606  -0.000000001  -0.137762639
                        -0.000000000   0.000000564   0.011469267   0.044995137  -0.030500575   0.551289122   0.000000002  -0.176563482

   51   11.1  0.5 -0.5   0.000000000   0.000000201   0.040687654   0.159621929  -0.012035037   0.217529830  -0.000000005  -0.042958418
                         0.000000000   0.000000416   0.125703707   0.493148823   0.001840714  -0.033270370  -0.000000001   0.033518058

   52   12.1  0.5 -0.5   0.000000000   0.000000965   0.131256905   0.514934603  -0.001259285   0.022761214  -0.000000003   0.028782506
                        -0.000000000  -0.000000466  -0.042485109  -0.166673531  -0.008233511   0.148818357   0.000000001   0.036889100


   Nr   State  S   Sz       49            50            51            52

    1    1.1  1.5  1.5   0.042672047  -0.000000000  -0.002690896   0.000000000
                        -0.000000000   0.000000000  -0.000000000   0.000000000

    2    2.1  1.5  1.5   0.000000002   0.008437343  -0.000000001  -0.006879033
                         0.000000001   0.017226570  -0.000000000  -0.007981217

    3    3.1  1.5  1.5   0.000000000   0.000000000   0.000000004  -0.000000000
                        -0.023997440   0.000000000  -0.063151571   0.000000006

    4    4.1  1.5  1.5   0.000000002   0.032473122   0.000000002   0.022665522
                         0.000000002   0.066300553   0.000000003   0.026297078

    5    5.1  1.5  1.5  -0.000000001  -0.055613660  -0.000000003  -0.027405163
                         0.000000001   0.027238825   0.000000002   0.023620583

    6    6.1  1.5  1.5  -0.000000000  -0.000000001   0.000000002   0.000000000
                        -0.049746222   0.000000003  -0.031316919   0.000000003

    7    7.1  1.5  1.5   0.070963835  -0.000000003   0.000770386  -0.000000001
                        -0.000000000  -0.000000001  -0.000000000   0.000000001

    8    1.1  1.5  0.5   0.000000002   0.018160407  -0.000000003  -0.031727036
                         0.000000001   0.037078204  -0.000000003  -0.036810462

    9    2.1  1.5  0.5  -0.068318994   0.000000002  -0.006735121   0.000000001
                         0.000000000   0.000000001  -0.000000000  -0.000000000

   10    3.1  1.5  0.5  -0.000000002  -0.025658898  -0.000000004  -0.031597039
                         0.000000002   0.012567384   0.000000003   0.027233573

   11    4.1  1.5  0.5   0.023062892  -0.000000000  -0.072262408   0.000000007
                        -0.000000000  -0.000000001  -0.000000004   0.000000001

   12    5.1  1.5  0.5   0.000000000  -0.000000000  -0.000000004   0.000000000
                        -0.012976024  -0.000000001   0.066976172  -0.000000006

   13    6.1  1.5  0.5  -0.000000000  -0.047552610   0.000000004   0.052837388
                         0.000000002   0.023290631  -0.000000005  -0.045540686

   14    7.1  1.5  0.5   0.000000000  -0.007010061   0.000000004   0.042236243
                         0.000000001  -0.014312479   0.000000005   0.049003495

   15    1.1  1.5 -0.5  -0.041286724   0.000000002   0.048596449  -0.000000004
                         0.000000000   0.000000001   0.000000003  -0.000000001

   16    2.1  1.5 -0.5  -0.000000001  -0.030050840  -0.000000000  -0.004397141
                        -0.000000001  -0.061354967  -0.000000001  -0.005101667

   17    3.1  1.5 -0.5   0.000000000   0.000000001  -0.000000002  -0.000000000
                         0.028571283  -0.000000002   0.041713791  -0.000000004

   18    4.1  1.5 -0.5   0.000000001   0.010144460  -0.000000005  -0.047177768
                        -0.000000000   0.020712000  -0.000000005  -0.054736769

   19    5.1  1.5 -0.5   0.000000001  -0.011653326   0.000000005   0.050732592
                        -0.000000000   0.005707643  -0.000000004  -0.043726557

   20    6.1  1.5 -0.5   0.000000000   0.000000001   0.000000004  -0.000000001
                         0.052950016  -0.000000001  -0.069754882   0.000000006

   21    7.1  1.5 -0.5   0.015937001   0.000000001  -0.064693452   0.000000006
                         0.000000000  -0.000000000  -0.000000004   0.000000000

   22    1.1  1.5 -1.5   0.000000000  -0.018769757  -0.000000000   0.001756798
                         0.000000000  -0.038322315   0.000000000   0.002038279

   23    2.1  1.5 -1.5   0.019181853  -0.000000002  -0.010536647   0.000000001
                        -0.000000000  -0.000000001  -0.000000001   0.000000001

   24    3.1  1.5 -1.5   0.000000001   0.021551286   0.000000004   0.047835563
                         0.000000000  -0.010555531  -0.000000004  -0.041229599

   25    4.1  1.5 -1.5   0.073825923  -0.000000003   0.034716886  -0.000000004
                        -0.000000000  -0.000000001   0.000000002   0.000000000

   26    5.1  1.5 -1.5  -0.000000000  -0.000000000   0.000000002   0.000000000
                        -0.061926026   0.000000002  -0.036179758   0.000000004

   27    6.1  1.5 -1.5   0.000000002   0.044675391   0.000000003   0.023721697
                        -0.000000002  -0.021881408  -0.000000002  -0.020445794

   28    7.1  1.5 -1.5  -0.000000002  -0.031214202   0.000000000  -0.000502960
                        -0.000000002  -0.063730208  -0.000000001  -0.000583546

   29    1.1  0.5  0.5   0.000000000   0.130348348  -0.000000009  -0.095787622
                        -0.000000001   0.266132938  -0.000000009  -0.111135082

   30    2.1  0.5  0.5   0.000000003   0.000000011   0.000000012  -0.000000006
                         0.363509796  -0.000000017  -0.196766553   0.000000015

   31    3.1  0.5  0.5   0.419876900  -0.000000009   0.227998444  -0.000000025
                        -0.000000001  -0.000000002   0.000000014   0.000000001

   32    4.1  0.5  0.5   0.000000011   0.097483342   0.000000041   0.421915140
                        -0.000000005  -0.047746034  -0.000000037  -0.363649786

   33    5.1  0.5  0.5   0.000000010   0.514941336  -0.000000001  -0.083198320
                        -0.000000016  -0.252211365   0.000000008   0.071708854

   34    6.1  0.5  0.5   0.231179541  -0.000000019   0.262418335  -0.000000028
                        -0.000000002  -0.000000007   0.000000014   0.000000003

   35    7.1  0.5  0.5  -0.000000006  -0.031642237   0.000000037   0.352796110
                         0.000000002  -0.064604131   0.000000036   0.409322447

   36    8.1  0.5  0.5   0.000000003  -0.009182110  -0.000000004  -0.057139859
                        -0.000000005   0.004497275   0.000000006   0.049248998

   37    9.1  0.5  0.5  -0.000000010  -0.121218004  -0.000000005  -0.059767822
                        -0.000000009  -0.247491468  -0.000000010  -0.069344051

   38   10.1  0.5  0.5  -0.000000000  -0.000000002  -0.000000002   0.000000001
                        -0.227935733   0.000000002   0.048232217  -0.000000003

   39   11.1  0.5  0.5  -0.184546978   0.000000004   0.259652952  -0.000000023
                         0.000000001   0.000000005   0.000000015  -0.000000003

   40   12.1  0.5  0.5  -0.000000001  -0.000000000   0.000000017  -0.000000000
                        -0.109546558   0.000000007  -0.300428850   0.000000030

   41    1.1  0.5 -0.5   0.296340063   0.000000001  -0.146718353   0.000000012
                         0.000000000  -0.000000001  -0.000000007   0.000000001

   42    2.1  0.5 -0.5  -0.000000010  -0.326455794   0.000000007   0.149045203
                         0.000000018   0.159893672  -0.000000015  -0.128462460

   43    3.1  0.5 -0.5  -0.000000006  -0.184687347  -0.000000016  -0.148852742
                        -0.000000007  -0.377077174  -0.000000019  -0.172702494

   44    4.1  0.5 -0.5   0.000000001  -0.000000000  -0.000000032   0.000000001
                         0.108548080  -0.000000012   0.557004086  -0.000000055

   45    5.1  0.5 -0.5   0.000000003   0.000000010   0.000000006  -0.000000005
                         0.573389181  -0.000000016  -0.109836788   0.000000006

   46    6.1  0.5 -0.5  -0.000000014  -0.101686793  -0.000000016  -0.171324364
                        -0.000000014  -0.207614490  -0.000000023  -0.198774608

   47    7.1  0.5 -0.5  -0.071936950   0.000000001   0.540379460  -0.000000051
                         0.000000001   0.000000006   0.000000031  -0.000000004

   48    8.1  0.5 -0.5   0.000000001   0.000000003   0.000000005  -0.000000002
                        -0.010224316  -0.000000005  -0.075434921   0.000000007

   49    9.1  0.5 -0.5  -0.275582712   0.000000012  -0.091546654   0.000000011
                         0.000000002   0.000000005  -0.000000005  -0.000000003

   50   10.1  0.5 -0.5   0.000000001   0.204701335  -0.000000002  -0.036534566
                        -0.000000003  -0.100259971   0.000000003   0.031489240

   51   11.1  0.5 -0.5   0.000000006   0.081174962  -0.000000018  -0.169518937
                         0.000000001   0.165735369  -0.000000016  -0.196679906

   52   12.1  0.5 -0.5   0.000000006   0.098380041   0.000000022   0.227566518
                        -0.000000004  -0.048185225  -0.000000020  -0.196140189


 Composition of spin-orbit eigenvectors
 ======================================

   Nr   State  S   Sz       1        2        3        4        5        6        7        8        9       10

    1    1.1  1.5  1.5   0.000%   0.037%   0.000%   2.531%   0.000%   3.256%   0.001%  19.106%   9.227%   0.001%
    2    2.1  1.5  1.5   0.000%   0.000%   1.252%   0.000%  22.696%   0.000%   1.261%   0.000%   0.000%   0.150%
    3    3.1  1.5  1.5   0.000%   0.038%   0.001%  12.205%   0.000%   1.630%   0.001%  16.237%   0.812%   0.000%
    4    4.1  1.5  1.5   0.004%   0.000%  13.032%   0.001%   0.435%   0.000%  10.776%   0.001%   0.001%   9.914%
    5    5.1  1.5  1.5   0.823%   0.001%  16.814%   0.001%   6.060%   0.000%  11.873%   0.001%   0.000%   0.142%
    6    6.1  1.5  1.5   0.024%  29.630%   0.000%   0.096%   0.000%   0.031%   0.000%   6.181%  10.492%   0.001%
    7    7.1  1.5  1.5   0.031%  38.404%   0.000%   0.018%   0.000%   0.703%   0.000%   3.484%   0.581%   0.000%
    8    1.1  1.5  0.5   2.550%   0.002%   2.068%   0.000%  22.909%   0.000%   0.376%   0.000%   0.001%   9.362%
    9    2.1  1.5  0.5   0.008%   9.719%   0.000%   4.376%   0.000%   1.441%   0.000%   1.043%  29.477%   0.004%
   10    3.1  1.5  0.5   3.572%   0.003%   0.042%   0.000%  22.168%   0.000%   1.813%   0.000%   0.002%  12.904%
   11    4.1  1.5  0.5   0.004%   4.462%   0.000%   2.700%   0.000%  15.143%   0.000%   7.667%   7.288%   0.001%
   12    5.1  1.5  0.5   0.008%   9.916%   0.001%  15.410%   0.000%   2.494%   0.000%   7.652%   0.232%   0.000%
   13    6.1  1.5  0.5   0.753%   0.001%   3.188%   0.000%   0.725%   0.000%  11.256%   0.001%   0.001%   9.047%
   14    7.1  1.5  0.5   0.010%   0.000%  26.260%   0.002%   0.308%   0.000%   1.268%   0.000%   0.000%   0.359%
   15    1.1  1.5 -0.5   0.002%   2.550%   0.000%   2.068%   0.000%  22.909%   0.000%   0.376%   9.362%   0.001%
   16    2.1  1.5 -0.5   9.719%   0.008%   4.376%   0.000%   1.441%   0.000%   1.043%   0.000%   0.004%  29.477%
   17    3.1  1.5 -0.5   0.003%   3.572%   0.000%   0.042%   0.000%  22.168%   0.000%   1.813%  12.904%   0.002%
   18    4.1  1.5 -0.5   4.462%   0.004%   2.700%   0.000%  15.143%   0.000%   7.667%   0.000%   0.001%   7.288%
   19    5.1  1.5 -0.5   9.916%   0.008%  15.410%   0.001%   2.494%   0.000%   7.652%   0.000%   0.000%   0.232%
   20    6.1  1.5 -0.5   0.001%   0.753%   0.000%   3.188%   0.000%   0.725%   0.001%  11.256%   9.047%   0.001%
   21    7.1  1.5 -0.5   0.000%   0.010%   0.002%  26.260%   0.000%   0.308%   0.000%   1.268%   0.359%   0.000%
   22    1.1  1.5 -1.5   0.037%   0.000%   2.531%   0.000%   3.256%   0.000%  19.106%   0.001%   0.001%   9.227%
   23    2.1  1.5 -1.5   0.000%   0.000%   0.000%   1.252%   0.000%  22.696%   0.000%   1.261%   0.150%   0.000%
   24    3.1  1.5 -1.5   0.038%   0.000%  12.205%   0.001%   1.630%   0.000%  16.237%   0.001%   0.000%   0.812%
   25    4.1  1.5 -1.5   0.000%   0.004%   0.001%  13.032%   0.000%   0.435%   0.001%  10.776%   9.914%   0.001%
   26    5.1  1.5 -1.5   0.001%   0.823%   0.001%  16.814%   0.000%   6.060%   0.001%  11.873%   0.142%   0.000%
   27    6.1  1.5 -1.5  29.630%   0.024%   0.096%   0.000%   0.031%   0.000%   6.181%   0.000%   0.001%  10.492%
   28    7.1  1.5 -1.5  38.404%   0.031%   0.018%   0.000%   0.703%   0.000%   3.484%   0.000%   0.000%   0.581%
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

    1    1.1  1.5  1.5   0.007%  12.231%   0.001%   0.730%   7.327%   0.128%   0.346%   9.215%   0.000%   0.112%
    2    2.1  1.5  1.5   0.355%   0.000%  26.885%   0.052%   0.276%  15.803%   0.196%   0.007%   0.646%   0.000%
    3    3.1  1.5  1.5   0.013%  22.860%   0.000%   0.001%   4.846%   0.085%   0.260%   6.918%   0.003%  11.427%
    4    4.1  1.5  1.5   0.176%   0.000%   0.832%   0.002%   0.086%   4.915%  23.101%   0.867%   2.097%   0.001%
    5    5.1  1.5  1.5   0.012%   0.000%  10.249%   0.020%   0.259%  14.832%   2.131%   0.080%   2.692%   0.001%
    6    6.1  1.5  1.5   0.002%   4.212%   0.005%   2.493%   0.312%   0.005%   0.143%   3.817%   0.000%   1.831%
    7    7.1  1.5  1.5   0.003%   6.233%   0.003%   1.307%   0.009%   0.000%   0.305%   8.127%   0.000%   0.194%
    8    1.1  1.5  0.5   4.985%   0.003%   5.577%   0.011%   0.198%  11.305%   2.991%   0.112%   8.957%   0.002%
    9    2.1  1.5  0.5   0.001%   1.784%   0.001%   0.667%   5.669%   0.099%   0.122%   3.248%   0.000%   0.001%
   10    3.1  1.5  0.5   1.607%   0.001%   2.716%   0.005%   0.003%   0.145%  15.140%   0.568%   4.167%   0.001%
   11    4.1  1.5  0.5   0.004%   6.568%   0.014%   7.312%   4.682%   0.082%   0.236%   6.289%   0.004%  17.225%
   12    5.1  1.5  0.5   0.003%   5.426%   0.020%  10.429%  10.051%   0.176%   0.053%   1.425%   0.003%  13.788%
   13    6.1  1.5  0.5  13.727%   0.008%  17.833%   0.035%   0.202%  11.556%   0.787%   0.030%  17.480%   0.004%
   14    7.1  1.5  0.5  16.310%   0.009%   9.325%   0.018%   0.060%   3.430%   9.664%   0.363%  12.914%   0.003%
   15    1.1  1.5 -0.5   0.003%   4.985%   0.011%   5.577%  11.305%   0.198%   0.112%   2.991%   0.002%   8.957%
   16    2.1  1.5 -0.5   1.784%   0.001%   0.667%   0.001%   0.099%   5.669%   3.248%   0.122%   0.001%   0.000%
   17    3.1  1.5 -0.5   0.001%   1.607%   0.005%   2.716%   0.145%   0.003%   0.568%  15.140%   0.001%   4.167%
   18    4.1  1.5 -0.5   6.568%   0.004%   7.312%   0.014%   0.082%   4.682%   6.289%   0.236%  17.225%   0.004%
   19    5.1  1.5 -0.5   5.426%   0.003%  10.429%   0.020%   0.176%  10.051%   1.425%   0.053%  13.788%   0.003%
   20    6.1  1.5 -0.5   0.008%  13.727%   0.035%  17.833%  11.556%   0.202%   0.030%   0.787%   0.004%  17.480%
   21    7.1  1.5 -0.5   0.009%  16.310%   0.018%   9.325%   3.430%   0.060%   0.363%   9.664%   0.003%  12.914%
   22    1.1  1.5 -1.5  12.231%   0.007%   0.730%   0.001%   0.128%   7.327%   9.215%   0.346%   0.112%   0.000%
   23    2.1  1.5 -1.5   0.000%   0.355%   0.052%  26.885%  15.803%   0.276%   0.007%   0.196%   0.000%   0.646%
   24    3.1  1.5 -1.5  22.860%   0.013%   0.001%   0.000%   0.085%   4.846%   6.918%   0.260%  11.427%   0.003%
   25    4.1  1.5 -1.5   0.000%   0.176%   0.002%   0.832%   4.915%   0.086%   0.867%  23.101%   0.001%   2.097%
   26    5.1  1.5 -1.5   0.000%   0.012%   0.020%  10.249%  14.832%   0.259%   0.080%   2.131%   0.001%   2.692%
   27    6.1  1.5 -1.5   4.212%   0.002%   2.493%   0.005%   0.005%   0.312%   3.817%   0.143%   1.831%   0.000%
   28    7.1  1.5 -1.5   6.233%   0.003%   1.307%   0.003%   0.000%   0.009%   8.127%   0.305%   0.194%   0.000%
   29    1.1  0.5  0.5   0.014%   0.000%   1.312%   0.003%   0.004%   0.253%   0.377%   0.014%   0.021%   0.000%
   30    2.1  0.5  0.5   0.001%   1.557%   0.000%   0.138%   0.160%   0.003%   0.004%   0.114%   0.000%   0.044%
   31    3.1  0.5  0.5   0.000%   0.000%   0.000%   0.001%   0.538%   0.009%   0.052%   1.377%   0.000%   0.025%
   32    4.1  0.5  0.5   0.238%   0.000%   0.101%   0.000%   0.012%   0.666%   0.925%   0.035%   0.210%   0.000%
   33    5.1  0.5  0.5   0.092%   0.000%   1.407%   0.003%   0.000%   0.025%   0.434%   0.016%   0.022%   0.000%
   34    6.1  0.5  0.5   0.001%   1.377%   0.001%   0.326%   0.194%   0.003%   0.003%   0.072%   0.000%   0.036%
   35    7.1  0.5  0.5   0.180%   0.000%   0.168%   0.000%   0.027%   1.565%   0.035%   0.001%   0.220%   0.000%
   36    8.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.219%   0.000%
   37    9.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.106%   0.000%
   38   10.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%
   39   11.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.647%
   40   12.1  0.5  0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.001%   2.733%
   41    1.1  0.5 -0.5   0.000%   0.014%   0.003%   1.312%   0.253%   0.004%   0.014%   0.377%   0.000%   0.021%
   42    2.1  0.5 -0.5   1.557%   0.001%   0.138%   0.000%   0.003%   0.160%   0.114%   0.004%   0.044%   0.000%
   43    3.1  0.5 -0.5   0.000%   0.000%   0.001%   0.000%   0.009%   0.538%   1.377%   0.052%   0.025%   0.000%
   44    4.1  0.5 -0.5   0.000%   0.238%   0.000%   0.101%   0.666%   0.012%   0.035%   0.925%   0.000%   0.210%
   45    5.1  0.5 -0.5   0.000%   0.092%   0.003%   1.407%   0.025%   0.000%   0.016%   0.434%   0.000%   0.022%
   46    6.1  0.5 -0.5   1.377%   0.001%   0.326%   0.001%   0.003%   0.194%   0.072%   0.003%   0.036%   0.000%
   47    7.1  0.5 -0.5   0.000%   0.180%   0.000%   0.168%   1.565%   0.027%   0.001%   0.035%   0.000%   0.220%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.219%
   49    9.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.106%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.161%   0.000%
   51   11.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.647%   0.001%
   52   12.1  0.5 -0.5   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%   2.733%   0.001%

   Nr   State  S   Sz      21       22       23       24       25       26       27       28       29       30

    1    1.1  1.5  1.5   0.124%   0.026%   0.000%  20.308%   0.000%   3.625%   0.001%   7.080%   0.003%   0.715%
    2    2.1  1.5  1.5   1.488%   7.197%  14.203%   0.000%   0.825%   0.000%   2.812%   0.000%   0.589%   0.002%
    3    3.1  1.5  1.5   0.108%   0.022%   0.000%  10.101%   0.000%   1.452%   0.000%   6.653%   0.001%   0.362%
    4    4.1  1.5  1.5   2.325%  11.245%   4.900%   0.000%   2.760%   0.000%   7.949%   0.001%   0.127%   0.000%
    5    5.1  1.5  1.5   0.964%   4.662%  11.728%   0.000%   1.492%   0.000%  10.462%   0.001%   0.371%   0.001%
    6    6.1  1.5  1.5  11.420%   2.362%   0.000%   0.818%   0.000%  20.068%   0.000%   0.514%   0.000%   0.055%
    7    7.1  1.5  1.5  14.201%   2.937%   0.000%   0.189%   0.000%  17.895%   0.000%   0.088%   0.000%   0.000%
    8    1.1  1.5  0.5   1.443%   6.979%   2.142%   0.000%   0.346%   0.000%  12.857%   0.001%   0.112%   0.000%
    9    2.1  1.5  0.5   6.377%   1.319%   0.000%   8.863%   0.000%   0.130%   0.001%  20.140%   0.001%   0.264%
   10    3.1  1.5  0.5   1.649%   7.972%   4.644%   0.000%   9.459%   0.000%   6.343%   0.000%   0.211%   0.001%
   11    4.1  1.5  0.5   1.379%   0.285%   0.000%   0.631%   0.000%  13.017%   0.000%   0.183%   0.000%   0.033%
   12    5.1  1.5  0.5   0.578%   0.119%   0.000%   5.559%   0.000%  10.463%   0.000%   1.491%   0.001%   0.207%
   13    6.1  1.5  0.5   0.943%   4.558%   0.680%   0.000%   1.990%   0.000%   1.334%   0.000%   0.011%   0.000%
   14    7.1  1.5  0.5   0.150%   0.723%   8.785%   0.000%   0.155%   0.000%   5.768%   0.000%   0.326%   0.001%
   15    1.1  1.5 -0.5   6.979%   1.443%   0.000%   2.142%   0.000%   0.346%   0.001%  12.857%   0.000%   0.112%
   16    2.1  1.5 -0.5   1.319%   6.377%   8.863%   0.000%   0.130%   0.000%  20.140%   0.001%   0.264%   0.001%
   17    3.1  1.5 -0.5   7.972%   1.649%   0.000%   4.644%   0.000%   9.459%   0.000%   6.343%   0.001%   0.211%
   18    4.1  1.5 -0.5   0.285%   1.379%   0.631%   0.000%  13.017%   0.000%   0.183%   0.000%   0.033%   0.000%
   19    5.1  1.5 -0.5   0.119%   0.578%   5.559%   0.000%  10.463%   0.000%   1.491%   0.000%   0.207%   0.001%
   20    6.1  1.5 -0.5   4.558%   0.943%   0.000%   0.680%   0.000%   1.990%   0.000%   1.334%   0.000%   0.011%
   21    7.1  1.5 -0.5   0.723%   0.150%   0.000%   8.785%   0.000%   0.155%   0.000%   5.768%   0.001%   0.326%
   22    1.1  1.5 -1.5   0.026%   0.124%  20.308%   0.000%   3.625%   0.000%   7.080%   0.001%   0.715%   0.003%
   23    2.1  1.5 -1.5   7.197%   1.488%   0.000%  14.203%   0.000%   0.825%   0.000%   2.812%   0.002%   0.589%
   24    3.1  1.5 -1.5   0.022%   0.108%  10.101%   0.000%   1.452%   0.000%   6.653%   0.000%   0.362%   0.001%
   25    4.1  1.5 -1.5  11.245%   2.325%   0.000%   4.900%   0.000%   2.760%   0.001%   7.949%   0.000%   0.127%
   26    5.1  1.5 -1.5   4.662%   0.964%   0.000%  11.728%   0.000%   1.492%   0.001%  10.462%   0.001%   0.371%
   27    6.1  1.5 -1.5   2.362%  11.420%   0.818%   0.000%  20.068%   0.000%   0.514%   0.000%   0.055%   0.000%
   28    7.1  1.5 -1.5   2.937%  14.201%   0.189%   0.000%  17.895%   0.000%   0.088%   0.000%   0.000%   0.000%
   29    1.1  0.5  0.5   0.000%   0.001%   0.226%   0.000%   0.000%   0.000%   0.000%   0.000%   7.534%   0.029%
   30    2.1  0.5  0.5   0.141%   0.029%   0.000%   0.034%   0.000%   0.000%   0.000%   0.000%   0.007%   1.727%
   31    3.1  0.5  0.5   0.038%   0.008%   0.000%   0.177%   0.000%   0.000%   0.000%   0.000%   0.021%   5.470%
   32    4.1  0.5  0.5   0.006%   0.029%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.134%   0.001%
   33    5.1  0.5  0.5   0.031%   0.148%   0.048%   0.000%   0.000%   0.000%   0.000%   0.000%   1.057%   0.004%
   34    6.1  0.5  0.5   0.117%   0.024%   0.000%   0.070%   0.000%   0.000%   0.000%   0.000%   0.012%   3.013%
   35    7.1  0.5  0.5   0.001%   0.005%   0.022%   0.000%   0.000%   0.000%   0.000%   0.000%   0.865%   0.003%
   36    8.1  0.5  0.5   0.084%   0.406%   2.812%   0.000%   0.171%   0.000%   6.357%   0.000%  39.420%   0.152%
   37    9.1  0.5  0.5   0.585%   2.829%   0.000%   0.000%   3.908%   0.000%   2.620%   0.000%   0.470%   0.002%
   38   10.1  0.5  0.5   0.274%   0.057%   0.000%   3.028%   0.000%   0.546%   0.000%   5.982%   0.141%  36.518%
   39   11.1  0.5  0.5   0.707%   0.146%   0.000%   0.020%   0.000%   5.714%   0.000%   0.815%   0.000%   0.018%
   40   12.1  0.5  0.5   0.646%   0.134%   0.000%   0.008%   0.000%   5.983%   0.000%   0.546%   0.000%   0.007%
   41    1.1  0.5 -0.5   0.001%   0.000%   0.000%   0.226%   0.000%   0.000%   0.000%   0.000%   0.029%   7.534%
   42    2.1  0.5 -0.5   0.029%   0.141%   0.034%   0.000%   0.000%   0.000%   0.000%   0.000%   1.727%   0.007%
   43    3.1  0.5 -0.5   0.008%   0.038%   0.177%   0.000%   0.000%   0.000%   0.000%   0.000%   5.470%   0.021%
   44    4.1  0.5 -0.5   0.029%   0.006%   0.000%   0.002%   0.000%   0.000%   0.000%   0.000%   0.001%   0.134%
   45    5.1  0.5 -0.5   0.148%   0.031%   0.000%   0.048%   0.000%   0.000%   0.000%   0.000%   0.004%   1.057%
   46    6.1  0.5 -0.5   0.024%   0.117%   0.070%   0.000%   0.000%   0.000%   0.000%   0.000%   3.013%   0.012%
   47    7.1  0.5 -0.5   0.005%   0.001%   0.000%   0.022%   0.000%   0.000%   0.000%   0.000%   0.003%   0.865%
   48    8.1  0.5 -0.5   0.406%   0.084%   0.000%   2.812%   0.000%   0.171%   0.000%   6.357%   0.152%  39.420%
   49    9.1  0.5 -0.5   2.829%   0.585%   0.000%   0.000%   0.000%   3.908%   0.000%   2.620%   0.002%   0.470%
   50   10.1  0.5 -0.5   0.057%   0.274%   3.028%   0.000%   0.546%   0.000%   5.982%   0.000%  36.518%   0.141%
   51   11.1  0.5 -0.5   0.146%   0.707%   0.020%   0.000%   5.714%   0.000%   0.815%   0.000%   0.018%   0.000%
   52   12.1  0.5 -0.5   0.134%   0.646%   0.008%   0.000%   5.983%   0.000%   0.546%   0.000%   0.007%   0.000%

   Nr   State  S   Sz      31       32       33       34       35       36       37       38       39       40

    1    1.1  1.5  1.5   0.024%   0.000%   0.000%   0.005%   0.000%   0.042%   0.024%   0.298%   0.000%   0.512%
    2    2.1  1.5  1.5   0.002%   0.242%   0.019%   0.000%   0.005%   0.000%   0.221%   0.018%   1.254%   0.000%
    3    3.1  1.5  1.5   0.014%   0.000%   0.000%   0.409%   0.000%   1.080%   0.005%   0.060%   0.000%   0.097%
    4    4.1  1.5  1.5   0.004%   0.536%   0.079%   0.000%   0.047%   0.000%   0.021%   0.002%   0.001%   0.000%
    5    5.1  1.5  1.5   0.002%   0.255%   0.098%   0.000%   0.329%   0.000%   0.517%   0.042%   0.075%   0.000%
    6    6.1  1.5  1.5   0.465%   0.003%   0.000%   0.072%   0.000%   0.278%   0.000%   0.000%   0.000%   0.050%
    7    7.1  1.5  1.5   0.626%   0.005%   0.000%   0.005%   0.000%   0.007%   0.021%   0.263%   0.000%   0.006%
    8    1.1  1.5  0.5   0.002%   0.280%   0.314%   0.000%   0.024%   0.000%   0.687%   0.056%   0.135%   0.000%
    9    2.1  1.5  0.5   0.333%   0.002%   0.000%   0.000%   0.000%   0.172%   0.000%   0.000%   0.000%   0.234%
   10    3.1  1.5  0.5   0.002%   0.295%   0.160%   0.000%   0.000%   0.000%   0.007%   0.001%   0.194%   0.000%
   11    4.1  1.5  0.5   0.057%   0.000%   0.001%   0.617%   0.000%   0.020%   0.025%   0.305%   0.000%   0.193%
   12    5.1  1.5  0.5   0.011%   0.000%   0.001%   0.508%   0.000%   0.226%   0.000%   0.000%   0.000%   0.688%
   13    6.1  1.5  0.5   0.002%   0.219%   0.627%   0.001%   0.973%   0.000%   0.133%   0.011%   0.010%   0.000%
   14    7.1  1.5  0.5   0.000%   0.013%   0.478%   0.000%   0.259%   0.000%   0.687%   0.056%   0.009%   0.000%
   15    1.1  1.5 -0.5   0.280%   0.002%   0.000%   0.314%   0.000%   0.024%   0.056%   0.687%   0.000%   0.135%
   16    2.1  1.5 -0.5   0.002%   0.333%   0.000%   0.000%   0.172%   0.000%   0.000%   0.000%   0.234%   0.000%
   17    3.1  1.5 -0.5   0.295%   0.002%   0.000%   0.160%   0.000%   0.000%   0.001%   0.007%   0.000%   0.194%
   18    4.1  1.5 -0.5   0.000%   0.057%   0.617%   0.001%   0.020%   0.000%   0.305%   0.025%   0.193%   0.000%
   19    5.1  1.5 -0.5   0.000%   0.011%   0.508%   0.001%   0.226%   0.000%   0.000%   0.000%   0.688%   0.000%
   20    6.1  1.5 -0.5   0.219%   0.002%   0.001%   0.627%   0.000%   0.973%   0.011%   0.133%   0.000%   0.010%
   21    7.1  1.5 -0.5   0.013%   0.000%   0.000%   0.478%   0.000%   0.259%   0.056%   0.687%   0.000%   0.009%
   22    1.1  1.5 -1.5   0.000%   0.024%   0.005%   0.000%   0.042%   0.000%   0.298%   0.024%   0.512%   0.000%
   23    2.1  1.5 -1.5   0.242%   0.002%   0.000%   0.019%   0.000%   0.005%   0.018%   0.221%   0.000%   1.254%
   24    3.1  1.5 -1.5   0.000%   0.014%   0.409%   0.000%   1.080%   0.000%   0.060%   0.005%   0.097%   0.000%
   25    4.1  1.5 -1.5   0.536%   0.004%   0.000%   0.079%   0.000%   0.047%   0.002%   0.021%   0.000%   0.001%
   26    5.1  1.5 -1.5   0.255%   0.002%   0.000%   0.098%   0.000%   0.329%   0.042%   0.517%   0.000%   0.075%
   27    6.1  1.5 -1.5   0.003%   0.465%   0.072%   0.000%   0.278%   0.000%   0.000%   0.000%   0.050%   0.000%
   28    7.1  1.5 -1.5   0.005%   0.626%   0.005%   0.000%   0.007%   0.000%   0.263%   0.021%   0.006%   0.000%
   29    1.1  0.5  0.5   0.001%   0.202%   0.751%   0.001%   0.428%   0.000%   4.852%   0.395%  41.157%   0.006%
   30    2.1  0.5  0.5   5.332%   0.039%   0.001%   1.412%   0.000%  19.950%   1.645%  20.209%   0.000%   2.139%
   31    3.1  0.5  0.5   2.160%   0.016%   0.001%   0.852%   0.000%  12.896%   0.586%   7.198%   0.003%  19.155%
   32    4.1  0.5  0.5   0.008%   1.060%   7.310%   0.008%   4.112%   0.000%  10.078%   0.820%   2.397%   0.000%
   33    5.1  0.5  0.5   0.049%   6.684%   0.724%   0.001%   6.973%   0.000%  37.131%   3.023%   3.894%   0.001%
   34    6.1  0.5  0.5   4.115%   0.030%   0.001%   1.348%   0.000%  34.137%   0.298%   3.661%   0.003%  16.677%
   35    7.1  0.5  0.5   0.001%   0.181%   7.462%   0.008%  18.045%   0.000%   6.144%   0.500%  11.106%   0.002%
   36    8.1  0.5  0.5   0.028%   3.855%   2.579%   0.003%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   37    9.1  0.5  0.5   0.319%  43.634%   1.609%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   38   10.1  0.5  0.5   7.140%   0.052%   0.002%   2.183%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   39   11.1  0.5  0.5  11.794%   0.086%   0.035%  34.102%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   40   12.1  0.5  0.5   9.746%   0.071%   0.037%  36.173%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   41    1.1  0.5 -0.5   0.202%   0.001%   0.001%   0.751%   0.000%   0.428%   0.395%   4.852%   0.006%  41.157%
   42    2.1  0.5 -0.5   0.039%   5.332%   1.412%   0.001%  19.950%   0.000%  20.209%   1.645%   2.139%   0.000%
   43    3.1  0.5 -0.5   0.016%   2.160%   0.852%   0.001%  12.896%   0.000%   7.198%   0.586%  19.155%   0.003%
   44    4.1  0.5 -0.5   1.060%   0.008%   0.008%   7.310%   0.000%   4.112%   0.820%  10.078%   0.000%   2.397%
   45    5.1  0.5 -0.5   6.684%   0.049%   0.001%   0.724%   0.000%   6.973%   3.023%  37.131%   0.001%   3.894%
   46    6.1  0.5 -0.5   0.030%   4.115%   1.348%   0.001%  34.137%   0.000%   3.661%   0.298%  16.677%   0.003%
   47    7.1  0.5 -0.5   0.181%   0.001%   0.008%   7.462%   0.000%  18.045%   0.500%   6.144%   0.002%  11.106%
   48    8.1  0.5 -0.5   3.855%   0.028%   0.003%   2.579%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   49    9.1  0.5 -0.5  43.634%   0.319%   0.002%   1.609%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   50   10.1  0.5 -0.5   0.052%   7.140%   2.183%   0.002%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   51   11.1  0.5 -0.5   0.086%  11.794%  34.102%   0.035%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%
   52   12.1  0.5 -0.5   0.071%   9.746%  36.173%   0.037%   0.000%   0.000%   0.000%   0.000%   0.000%   0.000%

   Nr   State  S   Sz      41       42       43       44       45       46       47       48       49       50

    1    1.1  1.5  1.5   0.199%   0.000%   0.609%   0.040%   1.435%   0.004%   0.488%   0.000%   0.182%   0.000%
    2    2.1  1.5  1.5   0.000%   0.062%   0.009%   0.135%   0.002%   0.564%   0.000%   0.720%   0.000%   0.037%
    3    3.1  1.5  1.5   0.011%   0.000%   0.233%   0.015%   1.329%   0.004%   0.250%   0.000%   0.058%   0.000%
    4    4.1  1.5  1.5   0.000%   1.004%   0.036%   0.557%   0.005%   1.491%   0.000%   0.005%   0.000%   0.545%
    5    5.1  1.5  1.5   0.000%   0.025%   0.021%   0.318%   0.006%   1.987%   0.000%   0.139%   0.000%   0.383%
    6    6.1  1.5  1.5   0.065%   0.000%   3.638%   0.236%   0.141%   0.000%   0.190%   0.000%   0.247%   0.000%
    7    7.1  1.5  1.5   0.276%   0.000%   3.261%   0.212%   0.035%   0.000%   0.068%   0.000%   0.504%   0.000%
    8    1.1  1.5  0.5   0.000%   0.001%   0.003%   0.042%   0.008%   2.522%   0.000%   0.230%   0.000%   0.170%
    9    2.1  1.5  0.5   0.009%   0.000%   0.045%   0.003%   3.894%   0.012%   0.069%   0.000%   0.467%   0.000%
   10    3.1  1.5  0.5   0.000%   0.522%   0.118%   1.816%   0.004%   1.144%   0.000%   0.345%   0.000%   0.082%
   11    4.1  1.5  0.5   0.360%   0.000%   2.399%   0.156%   0.020%   0.000%   0.061%   0.000%   0.053%   0.000%
   12    5.1  1.5  0.5   0.075%   0.000%   1.872%   0.122%   0.337%   0.001%   0.188%   0.000%   0.017%   0.000%
   13    6.1  1.5  0.5   0.000%   0.456%   0.025%   0.382%   0.001%   0.241%   0.000%   0.005%   0.000%   0.280%
   14    7.1  1.5  0.5   0.000%   0.394%   0.001%   0.019%   0.003%   1.132%   0.000%   0.292%   0.000%   0.025%
   15    1.1  1.5 -0.5   0.001%   0.000%   0.042%   0.003%   2.522%   0.008%   0.230%   0.000%   0.170%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.009%   0.003%   0.045%   0.012%   3.894%   0.000%   0.069%   0.000%   0.467%
   17    3.1  1.5 -0.5   0.522%   0.000%   1.816%   0.118%   1.144%   0.004%   0.345%   0.000%   0.082%   0.000%
   18    4.1  1.5 -0.5   0.000%   0.360%   0.156%   2.399%   0.000%   0.020%   0.000%   0.061%   0.000%   0.053%
   19    5.1  1.5 -0.5   0.000%   0.075%   0.122%   1.872%   0.001%   0.337%   0.000%   0.188%   0.000%   0.017%
   20    6.1  1.5 -0.5   0.456%   0.000%   0.382%   0.025%   0.241%   0.001%   0.005%   0.000%   0.280%   0.000%
   21    7.1  1.5 -0.5   0.394%   0.000%   0.019%   0.001%   1.132%   0.003%   0.292%   0.000%   0.025%   0.000%
   22    1.1  1.5 -1.5   0.000%   0.199%   0.040%   0.609%   0.004%   1.435%   0.000%   0.488%   0.000%   0.182%
   23    2.1  1.5 -1.5   0.062%   0.000%   0.135%   0.009%   0.564%   0.002%   0.720%   0.000%   0.037%   0.000%
   24    3.1  1.5 -1.5   0.000%   0.011%   0.015%   0.233%   0.004%   1.329%   0.000%   0.250%   0.000%   0.058%
   25    4.1  1.5 -1.5   1.004%   0.000%   0.557%   0.036%   1.491%   0.005%   0.005%   0.000%   0.545%   0.000%
   26    5.1  1.5 -1.5   0.025%   0.000%   0.318%   0.021%   1.987%   0.006%   0.139%   0.000%   0.383%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.065%   0.236%   3.638%   0.000%   0.141%   0.000%   0.190%   0.000%   0.247%
   28    7.1  1.5 -1.5   0.000%   0.276%   0.212%   3.261%   0.000%   0.035%   0.000%   0.068%   0.000%   0.504%
   29    1.1  0.5  0.5   0.000%   8.327%   0.000%   0.000%   0.000%   0.000%   0.000%  23.156%   0.000%   8.782%
   30    2.1  0.5  0.5  11.222%   0.000%   0.000%   0.000%   0.000%   0.000%  17.004%   0.000%  13.214%   0.000%
   31    3.1  0.5  0.5  15.329%   0.000%   0.000%   0.000%   0.000%   0.000%  11.262%   0.000%  17.630%   0.000%
   32    4.1  0.5  0.5   0.000%  37.758%   0.000%   0.000%   0.000%   0.000%   0.000%   1.886%   0.000%   1.178%
   33    5.1  0.5  0.5   0.000%   4.144%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%  32.878%
   34    6.1  0.5  0.5   0.390%   0.000%   0.000%   0.000%   0.000%   0.000%  21.859%   0.000%   5.344%   0.000%
   35    7.1  0.5  0.5   0.000%  19.369%   0.000%   0.000%   0.000%   0.000%   0.000%   4.371%   0.000%   0.517%
   36    8.1  0.5  0.5   0.000%   0.000%   0.036%   0.551%   0.100%  32.785%   0.000%   9.864%   0.000%   0.010%
   37    9.1  0.5  0.5   0.000%   0.000%   1.282%  19.725%   0.038%  12.427%   0.000%   2.011%   0.000%   7.595%
   38   10.1  0.5  0.5   0.000%   0.000%   2.135%   0.139%  31.103%   0.095%   5.015%   0.000%   5.195%   0.000%
   39   11.1  0.5  0.5   0.000%   0.000%  26.867%   1.746%   4.843%   0.015%   0.297%   0.000%   3.406%   0.000%
   40   12.1  0.5  0.5   0.000%   0.000%  29.294%   1.903%   2.266%   0.007%   0.219%   0.000%   1.200%   0.000%
   41    1.1  0.5 -0.5   8.327%   0.000%   0.000%   0.000%   0.000%   0.000%  23.156%   0.000%   8.782%   0.000%
   42    2.1  0.5 -0.5   0.000%  11.222%   0.000%   0.000%   0.000%   0.000%   0.000%  17.004%   0.000%  13.214%
   43    3.1  0.5 -0.5   0.000%  15.329%   0.000%   0.000%   0.000%   0.000%   0.000%  11.262%   0.000%  17.630%
   44    4.1  0.5 -0.5  37.758%   0.000%   0.000%   0.000%   0.000%   0.000%   1.886%   0.000%   1.178%   0.000%
   45    5.1  0.5 -0.5   4.144%   0.000%   0.000%   0.000%   0.000%   0.000%   0.006%   0.000%  32.878%   0.000%
   46    6.1  0.5 -0.5   0.000%   0.390%   0.000%   0.000%   0.000%   0.000%   0.000%  21.859%   0.000%   5.344%
   47    7.1  0.5 -0.5  19.369%   0.000%   0.000%   0.000%   0.000%   0.000%   4.371%   0.000%   0.517%   0.000%
   48    8.1  0.5 -0.5   0.000%   0.000%   0.551%   0.036%  32.785%   0.100%   9.864%   0.000%   0.010%   0.000%
   49    9.1  0.5 -0.5   0.000%   0.000%  19.725%   1.282%  12.427%   0.038%   2.011%   0.000%   7.595%   0.000%
   50   10.1  0.5 -0.5   0.000%   0.000%   0.139%   2.135%   0.095%  31.103%   0.000%   5.015%   0.000%   5.195%
   51   11.1  0.5 -0.5   0.000%   0.000%   1.746%  26.867%   0.015%   4.843%   0.000%   0.297%   0.000%   3.406%
   52   12.1  0.5 -0.5   0.000%   0.000%   1.903%  29.294%   0.007%   2.266%   0.000%   0.219%   0.000%   1.200%

   Nr   State  S   Sz      51       52

    1    1.1  1.5  1.5   0.001%   0.000%
    2    2.1  1.5  1.5   0.000%   0.011%
    3    3.1  1.5  1.5   0.399%   0.000%
    4    4.1  1.5  1.5   0.000%   0.121%
    5    5.1  1.5  1.5   0.000%   0.131%
    6    6.1  1.5  1.5   0.098%   0.000%
    7    7.1  1.5  1.5   0.000%   0.000%
    8    1.1  1.5  0.5   0.000%   0.236%
    9    2.1  1.5  0.5   0.005%   0.000%
   10    3.1  1.5  0.5   0.000%   0.174%
   11    4.1  1.5  0.5   0.522%   0.000%
   12    5.1  1.5  0.5   0.449%   0.000%
   13    6.1  1.5  0.5   0.000%   0.487%
   14    7.1  1.5  0.5   0.000%   0.419%
   15    1.1  1.5 -0.5   0.236%   0.000%
   16    2.1  1.5 -0.5   0.000%   0.005%
   17    3.1  1.5 -0.5   0.174%   0.000%
   18    4.1  1.5 -0.5   0.000%   0.522%
   19    5.1  1.5 -0.5   0.000%   0.449%
   20    6.1  1.5 -0.5   0.487%   0.000%
   21    7.1  1.5 -0.5   0.419%   0.000%
   22    1.1  1.5 -1.5   0.000%   0.001%
   23    2.1  1.5 -1.5   0.011%   0.000%
   24    3.1  1.5 -1.5   0.000%   0.399%
   25    4.1  1.5 -1.5   0.121%   0.000%
   26    5.1  1.5 -1.5   0.131%   0.000%
   27    6.1  1.5 -1.5   0.000%   0.098%
   28    7.1  1.5 -1.5   0.000%   0.000%
   29    1.1  0.5  0.5   0.000%   2.153%
   30    2.1  0.5  0.5   3.872%   0.000%
   31    3.1  0.5  0.5   5.198%   0.000%
   32    4.1  0.5  0.5   0.000%  31.025%
   33    5.1  0.5  0.5   0.000%   1.206%
   34    6.1  0.5  0.5   6.886%   0.000%
   35    7.1  0.5  0.5   0.000%  29.201%
   36    8.1  0.5  0.5   0.000%   0.569%
   37    9.1  0.5  0.5   0.000%   0.838%
   38   10.1  0.5  0.5   0.233%   0.000%
   39   11.1  0.5  0.5   6.742%   0.000%
   40   12.1  0.5  0.5   9.026%   0.000%
   41    1.1  0.5 -0.5   2.153%   0.000%
   42    2.1  0.5 -0.5   0.000%   3.872%
   43    3.1  0.5 -0.5   0.000%   5.198%
   44    4.1  0.5 -0.5  31.025%   0.000%
   45    5.1  0.5 -0.5   1.206%   0.000%
   46    6.1  0.5 -0.5   0.000%   6.886%
   47    7.1  0.5 -0.5  29.201%   0.000%
   48    8.1  0.5 -0.5   0.569%   0.000%
   49    9.1  0.5 -0.5   0.838%   0.000%
   50   10.1  0.5 -0.5   0.000%   0.233%
   51   11.1  0.5 -0.5   0.000%   6.742%
   52   12.1  0.5 -0.5   0.000%   9.026%


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

              2       6      285.28       700     1000      520     2140     5103     5101   
                                         GEOM     BASIS   MCVARS    MCSCF    MRCI     MRCI   

 PROGRAMS   *        TOTAL        CI        CI        CI     MULTI       INT
 CPU TIMES  *      5856.80   4585.37   1195.96     73.04      1.73      0.48
 REAL TIME  *      6074.40 SEC
 DISK USED  *       317.45 MB (local),        3.77 GB (total)
 SF USED    *         2.13 GB
 GA USED    *         0.00 MB       (max)       0.00 MB       (current)
 **********************************************************************************************************************************

 CI/cc-pWCVTZ-PP energy=   -109.982628965670

              CI              CI           MULTI
   -109.92205021   -109.96368265   -109.33328654
 **********************************************************************************************************************************
 Molpro calculation terminated with 1 warning(s)
